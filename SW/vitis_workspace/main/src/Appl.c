/*
    Copyright (C) 2017 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
    Copyright (c) 2012 - 2020 Xilinx, Inc. All Rights Reserved.
	SPDX-License-Identifier: MIT


    http://www.FreeRTOS.org
    http://aws.amazon.com/freertos


    1 tab == 4 spaces!
*/

/* FreeRTOS includes */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"

/* Xilinx includes */
#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xiic.h"
#include "xemaclite.h"


//#define TIMER_ID					1
//#define TIMER_CHECK_THRESHOLD		9


/* XPAR_IIC_1_DEVICE_ID  :=  XPAR_AXI_IIC_0_DEVICE_ID */
#define IIC_PLL_BASE_ADDRESS		XPAR_IIC_1_BASEADDR
#define IIC_PLL_ONCHIP_ADDRESS 		0x70U

/* XPAR_IIC_0_DEVICE_ID  :=  XPAR_AXI_BOARD_IIC_0_DEVICE_ID */
#define IIC_BOARD_BASE_ADDRESS		XPAR_IIC_0_BASEADDR
#define IIC_DAC_ONCHIP_ADDRESS 		0x1cU
#define IIC_DAC_BROADCAST_ADDRESS	0x2aU
#define IIC_LCD_ONCHIP_ADDRESS 		0x3eU

//#define EMAC_DEVICE_ID		  		XPAR_EMACLITE_0_DEVICE_ID

/* EMACLITE  begin */
#define BROADCAST_PACKET			1		/* Broadcast packet */
#define MAC_MATCHED_PACKET			2 		/* Dest MAC matched with local MAC */
#define IP_ADDR_SIZE				4		/* IP Address size in Bytes */
#define ARP_REQUEST 				0x0001	/* ARP Request bits in Rx packet */
#define ARP_REPLY 					0x0002 	/* ARP status bits indicating reply */
#define ARP_PACKET_SIZE 			0x3C    /* ARP packet len 60 Bytes */
#define ICMP_PACKET_SIZE 			0x4A    /* ICMP packet length 74 Bytes
 	 	 	 	 	 	 	 	 	 	 	 * including Src and Dest MAC Address */
#define BROADCAST_ADDR 				0xFFFF  /* Broadcast Address */
#define CORRECT_CKSUM_VALUE			0xFFFF  /* Correct checksum value */
#define IDENT_FIELD_VALUE			0x9263	/* Identification field (random num) */

/*
 * Definitions for the locations and length of some of the fields in a
 * IP packet. The lengths are defined in Half-Words (2 bytes).
 */
#define ETHER_PROTO_TYPE_LEN		1  		/* Ethernet protocol Type length  */
#define SRC_MAC_ADDR_LOC			3  		/* Source MAC address location */
#define MAC_ADDR_LEN 				3  		/* MAC address length */
#define ETHER_PROTO_TYPE_LOC		6  		/* Ethernet Proto type location */

#define ARP_HW_TYPE_LEN 			1  		/* Hardware Type length  */
#define ARP_PROTO_TYPE_LEN			1  		/* Protocol Type length  */
#define ARP_HW_ADD_LEN				1  		/* Hardware address length */
#define ARP_PROTO_ADD_LEN			1  		/* Protocol address length */
#define ARP_ZEROS_LEN				9  		/* Length to be filled with zeros */
#define ARP_REQ_STATUS_LOC 			10 		/* ARP request location */
#define ARP_REQ_SRC_IP_LOC 			14 		/* Src IP address location of ARP request */
#define ARP_REQ_DEST_IP_LOC_1 		19 		/* Destination IP's 1st half word location */
#define ARP_REQ_DEST_IP_LOC_2 		20 		/* Destination IP's 2nd half word location */

#define IP_VERSION_LEN 				1  		/* IP Version length  */
#define IP_PACKET_LEN 				1  		/* IP Packet length field  */
#define IP_FRAG_FIELD_LEN			1  		/* Fragment field len in ICMP packet */
#define IP_TTL_ICM_LEN 				1  		/* Time to live and ICM fields length */
#define IP_ADDR_LEN 				2  		/* Size of IP address in half-words */
#define IP_CSUM_LOC_BACK			5  		/* IP checksum location from end of frame */
#define IP_HDR_START_LOC 			7  		/* IP header start location */
#define IP_HDR_LEN 					10 		/* IP Header length */
#define IP_FRAG_FIELD_LOC 			10 		/* Fragment field location */

#define ICMP_TYPE_LEN 				1  		/* ICMP Type length */
#define ICMP_ECHO_FIELD_LEN 		2  		/* Echo field length in half-words */
#define ICMP_REQ_SRC_IP_LOC 		13 		/* Src IP address location of ICMP request */
#define ICMP_ECHO_FIELD_LOC 		17 		/* Echo field location */
#define ICMP_DATA_START_LOC 		17 		/* Data field start location */
#define ICMP_DATA_LEN 				18 		/* ICMP data length */
#define ICMP_DATA_LOC 				19 		/* ICMP data location including
				      	  	  	  	  	   	 * identifier number and sequence number */
#define ICMP_DATA_CSUM_LOC_BACK 	19 		/* Data checksum location from end of
									  	   	 * frame */
#define ICMP_DATA_FIELD_LEN 		20 		/* Data field length */
/* EMACLITE  end */


/*-----------------------------------------------------------*/
/* Prototypes 												 */

static void taskDefault(void* pvParameters);
static void taskEth(void* pvParameters);
//static void vTimerCallback(TimerHandle_t pxTimer);

static u16 ethCheckSumCalculation(u16* rxFramePtr, int startLoc, int length);
static void ethProcessRecvFrame(XEmacLite* instancePtr);

/*-----------------------------------------------------------*/
static TaskHandle_t thDflt;
static TaskHandle_t thEth;
//static QueueHandle_t qhTodo = NULL;
//static TimerHandle_t thTodo = NULL;


/*-----------------------------------------------------------*/
/* Instances 												 */

static XGpio gpio_Rotenc;																		/* ROTENC 	   */
static XGpio gpio_PWM_Lights;																	/* PWM Lights  */

static XEmacLite emacLiteInstance;																/* Instance of the EmacLite driver */
static u8 emacLiteLocalMacAddr[XEL_MAC_ADDR_SIZE] 	= { 0x00U, 0x0aU, 0x35U, 0x02U, 0x23U, 0x5fU };  	/* MAC address */
static u8 emacLiteLocalIpAddr[IP_ADDR_SIZE] 		= { 192U, 168U, 178U, 44U };				/* IP address  */
static u8 emacLiteRxFrame[XEL_MAX_FRAME_SIZE];
static u8 emacLiteTxFrame[XEL_MAX_FRAME_SIZE];
u32 emacLiteRxFrameLength 							= 0UL;										/* Variable used to indicate the length of the received frame */


/* Apps includes */
#include "Eth.h"


/*-----------------------------------------------------------*/
/* Functions 												 */

int main(void)
{
	xil_printf("\r\n\r\n*** UFBmod start-up ***\r\n" );

	xTaskCreate(
			taskDefault, 					/* The function that implements the task. */
			(const char*) "tskDflt", 		/* Text name for the task, provided to assist debugging only. */
			configMINIMAL_STACK_SIZE, 		/* The stack allocated to the task. */
			NULL, 							/* The task parameter is not used, so set to NULL. */
			tskIDLE_PRIORITY,				/* The task runs at the idle priority. */
			&thDflt
	);

	xTaskCreate(
			taskEth,
			(const char*) "tskNet",
			configMINIMAL_STACK_SIZE,
			NULL,
			tskIDLE_PRIORITY + 1U,
			&thEth
	);

#if 0
	xQueue = xQueueCreate(
		1,									/* Number of entries. */
		sizeof(HWstring)					/* Size of each entries. */
	);

	/* Check the queue was created. */
	configASSERT(xQueue);
#endif

#if 0
	/* Create a timer with a timer expiry of 10 seconds. The timer would expire
	 after 10 seconds and the timer call back would get called. In the timer call back
	 checks are done to ensure that the tasks have been running properly till then.
	 The tasks are deleted in the timer call back and a message is printed to convey that
	 the example has run successfully.
	 The timer expiry is set to 10 seconds and the timer set to not auto reload. */
	xTimer = xTimerCreate( (const char *) "Timer",
							x10seconds,
							pdFALSE,
							(void *) TIMER_ID,
							vTimerCallback);
	/* Check the timer was created. */
	configASSERT( xTimer );

	/* start the timer with a block time of 0 ticks. This means as soon
	   as the schedule starts the timer will start running and will expire after
	   10 seconds */
	xTimerStart( xTimer, 0 );
#endif

	/* Start the tasks and timer running. */
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following line
	will never be reached.  If the following line does execute, then there was
	insufficient FreeRTOS heap memory available for the idle and/or timer tasks
	to be created.  See the memory management section on the FreeRTOS web site
	for more details. */
	while (1)
		;
}


/*-----------------------------------------------------------*/

static u8 lcdTextWrite(u8 row, u8 col, u8 strLen, const char* strBuf)
{
    /* Sanity checks */
    if (row > 1 || col > 15) {
      return XST_FAILURE;
    }

    /* Write Text */
    for (u8 txtIdx = 0U; txtIdx < strLen; ++txtIdx) {
    	const u8 cursorPos = 0x7fU & (row * 40U + col++);
    	u32 ByteCount;
    	u8  iicData[2];

    	for (u8 rptIdx = 0U; rptIdx < 1U; rptIdx++) {
			/* Set Position */
			iicData[0] 	= 0x00U;
			iicData[1] 	= 0x80U | cursorPos;
			ByteCount 	= 2;
			ByteCount = XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_LCD_ONCHIP_ADDRESS, (u8*) &iicData, ByteCount, XIIC_STOP);

			/* Set Character */
			iicData[0] 	= 0x40U;
			iicData[1] 	= *(strBuf + txtIdx);
			ByteCount 	= 2;
			ByteCount = XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_LCD_ONCHIP_ADDRESS, (u8*) &iicData, ByteCount, XIIC_STOP);
    	}
    }
    return XST_SUCCESS;
}


/*****************************************************************************
* This function calculates the checksum and returns a 16 bit result.
*
* @param 	RxFramePtr is a 16 bit pointer for the data to which checksum is to be calculated.
* @param	StartLoc is the starting location of the data from which the checksum has to be calculated.
* @param	Length is the number of halfwords(16 bits) to which checksum is to be calculated.
*
* @return	It returns a 16 bit checksum value.
*
* @note		This can also be used for calculating checksum. The ones complement of this return value will give the final checksum.
******************************************************************************/
static u16 ethCheckSumCalculation(u16* rxFramePtr, int startLoc, int length)
{
	u32 sum = 0;
	u16 checkSum = 0;

	/* Add all the 16 bit data */
	int index = startLoc;
	while (index < (startLoc + length)) {
		sum += Xil_Ntohs(*(rxFramePtr + index));
		index++;
	}

	/* Add upper 16 bits to lower 16 bits */
	checkSum = sum;
	sum >>= 16;
	checkSum = sum + checkSum;
	return checkSum;
}


/******************************************************************************
* This function processes the received packet and generates the corresponding reply packets.
*
* @param	InstancePtr is a pointer to the instance of the EmacLite.
*
* @return	None.
*
* @note		This function assumes MAC does not strip padding or CRC.
******************************************************************************/
static void ethProcessRecvFrame(XEmacLite* instancePtr)
{
	u16* rxFramePtr;
	u16* txFramePtr;
	u16* tempPtr;
	u16  checkSum;
	u32  NextTxBuffBaseAddr;
	int  index;
	int  packetType = 0;

	txFramePtr = (u16*) emacLiteTxFrame;
	rxFramePtr = (u16*) emacLiteRxFrame;

	/* Determine the next expected Tx buffer address */
	NextTxBuffBaseAddr = XEmacLite_NextTransmitAddr(instancePtr);
	(void) NextTxBuffBaseAddr;		/* Used within the macro 'XEmacLite_NextTransmitAddr' @see xemaclite.h */

	/* Check the packet type */
	index = MAC_ADDR_LEN;
	tempPtr = (u16*) emacLiteLocalMacAddr;
	while (index--) {
		if (Xil_Ntohs((*(rxFramePtr + index)) == BROADCAST_ADDR) && (packetType != MAC_MATCHED_PACKET)) {
			packetType = BROADCAST_PACKET;

		} else if (Xil_Ntohs((*(rxFramePtr + index)) == *(tempPtr + index)) && (packetType != BROADCAST_PACKET)) {
			packetType = MAC_MATCHED_PACKET;

		} else {
			packetType = 0;
			break;
		}
	}

	/* Process broadcast packet */
	if (packetType == BROADCAST_PACKET) {
		/* Check for an ARP Packet if so generate a reply */
		if (Xil_Ntohs(*(rxFramePtr + ETHER_PROTO_TYPE_LOC)) == XEL_ETHER_PROTO_TYPE_ARP) {
			/* IP address of the local machine */
			tempPtr = (u16*) emacLiteLocalIpAddr;

			/* Check destination IP address of the packet with local IP address */
			if (
			  ((*(rxFramePtr + ARP_REQ_DEST_IP_LOC_1)) == *tempPtr++) &&
			  ((*(rxFramePtr + ARP_REQ_DEST_IP_LOC_2)) == *tempPtr++)) {
				/* Check ARP packet type(request/reply) */
				if (Xil_Ntohs(*(rxFramePtr + ARP_REQ_STATUS_LOC)) == ARP_REQUEST) {
					/* Add destination MAC address to the reply packet (i.e) source address of the received packet */
					index = SRC_MAC_ADDR_LOC;
					while (index < (SRC_MAC_ADDR_LOC + MAC_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Add source (local) MAC address to the reply packet */
					index = 0;
					tempPtr = (u16*) emacLiteLocalMacAddr;
					while (index < MAC_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add Ethernet proto type H/W type(10/3MBps), H/W address length and protocol address len (i.e)same as in the received packet */
					index = ETHER_PROTO_TYPE_LOC;
					while (index < (ETHER_PROTO_TYPE_LOC + ETHER_PROTO_TYPE_LEN + ARP_HW_TYPE_LEN + ARP_HW_ADD_LEN + ARP_PROTO_ADD_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Add ARP reply status to the reply packet */
					*txFramePtr++ = Xil_Htons(ARP_REPLY);

					/* Add local MAC Address to the reply packet */
					tempPtr = (u16*) emacLiteLocalMacAddr;
					index = 0;
					while (index < MAC_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add local IP Address to the reply packet */
					tempPtr = (u16*) emacLiteLocalIpAddr;
					index = 0;
					while (index < IP_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add Destination MAC Address to the reply packet from the received packet */
					index = SRC_MAC_ADDR_LOC;
					while (index < (SRC_MAC_ADDR_LOC + MAC_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Add Destination IP Address to the reply packet */
					index = ARP_REQ_SRC_IP_LOC;
					while (index < (ARP_REQ_SRC_IP_LOC + IP_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Fill zeros as per protocol. */
					index = 0;
					while (index < ARP_ZEROS_LEN) {
						*txFramePtr++ = 0x0000;
						index++;
					}

					/* Transmit the Reply Packet */
					XEmacLite_Send(instancePtr, (u8*) &emacLiteTxFrame, ARP_PACKET_SIZE);
				}
			}
		}
	}

	/* Process packets whose MAC address is matched */
	if (packetType == MAC_MATCHED_PACKET) {
		/* Check ICMP packet */
		if (Xil_Ntohs(*(rxFramePtr + ETHER_PROTO_TYPE_LOC)) == XEL_ETHER_PROTO_TYPE_IP) {
			/* Check the IP header checksum */
			checkSum = ethCheckSumCalculation(rxFramePtr, IP_HDR_START_LOC, IP_HDR_LEN);

			/* Check the Data field checksum */
			if (checkSum == CORRECT_CKSUM_VALUE) {
				checkSum = ethCheckSumCalculation(rxFramePtr, ICMP_DATA_START_LOC, ICMP_DATA_FIELD_LEN);
				if (checkSum == CORRECT_CKSUM_VALUE) {
					/* Add destination address to the reply packet (i.e)source address of the received packet */
					index = SRC_MAC_ADDR_LOC;
					while (index < (SRC_MAC_ADDR_LOC + MAC_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Add local MAC address to the reply packet */
					index = 0;
					tempPtr = (u16*) emacLiteLocalMacAddr;
					while (index < MAC_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add protocol type header length and, packet length(60 Bytes) to the reply packet */
					index = ETHER_PROTO_TYPE_LOC;
					while (index < (ETHER_PROTO_TYPE_LOC + ETHER_PROTO_TYPE_LEN + IP_VERSION_LEN + IP_PACKET_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Identification field a random number which is set to IDENT_FIELD_VALUE */
					*txFramePtr++ = IDENT_FIELD_VALUE;

					/* Add fragment type, time to live and ICM field. It is same as in the received packet */
					index = IP_FRAG_FIELD_LOC;
					while (index < (IP_FRAG_FIELD_LOC + IP_TTL_ICM_LEN + IP_FRAG_FIELD_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Checksum first set to 0 and added in this field later */
					*txFramePtr++ = 0x0000;

					/* Add Source IP address */
					index = 0;
					tempPtr = (u16*) emacLiteLocalIpAddr;
					while (index < IP_ADDR_LEN) {
						*txFramePtr++ = *tempPtr++;
						index++;
					}

					/* Add Destination IP address */
					index = ICMP_REQ_SRC_IP_LOC;
					while (index < (ICMP_REQ_SRC_IP_LOC + IP_ADDR_LEN)) {
						*txFramePtr++ = *(rxFramePtr + index);
						index++;
					}

					/* Calculate checksum, and add it in the appropriate field */
					checkSum = ethCheckSumCalculation((u16*) emacLiteTxFrame, IP_HDR_START_LOC, IP_HDR_LEN);
					checkSum = ~checkSum;
					*(txFramePtr - IP_CSUM_LOC_BACK) = Xil_Htons(checkSum);

					/* Echo reply status & checksum */
					index = ICMP_ECHO_FIELD_LOC;
					while (index < (ICMP_ECHO_FIELD_LOC + ICMP_ECHO_FIELD_LEN)) {
						*txFramePtr++ = 0x0000;
						index++;
					}

					/* Add data to buffer which was received from the packet */
					index = ICMP_DATA_LOC;
					while (index < (ICMP_DATA_LOC + ICMP_DATA_LEN)) {
						*txFramePtr++ = (*(rxFramePtr + index));
						index++;
					}

					/* Generate checksum for the data and add it in the appropriate field */
					checkSum = ethCheckSumCalculation((u16*) emacLiteTxFrame, ICMP_DATA_START_LOC, ICMP_DATA_FIELD_LEN);
					checkSum = ~checkSum;
					*(txFramePtr - ICMP_DATA_CSUM_LOC_BACK) = Xil_Htons(checkSum);

					/* Transmit the frame */
					XEmacLite_Send(instancePtr, (u8*) &emacLiteTxFrame, ICMP_PACKET_SIZE);
				}
			}
		}
	}
}


/*-----------------------------------------------------------*/
/* TASKS 													 */

static void taskDefault(void* pvParameters)
{
#if 1
	/* ROTENC counter and push button */
	{
		int statusRotenc = XGpio_Initialize(&gpio_Rotenc, XPAR_ROTENC_DECODER_AXI_ROTENC_GPIO_0_DEVICE_ID);
		if (statusRotenc != XST_SUCCESS) {
			xil_printf("GPIO Rotenc Initialization Failed\r\n");
			return;
		}
		XGpio_SetDataDirection(&gpio_Rotenc, 1U, 0xffffffffUL);  // 32 bit input
		XGpio_SetDataDirection(&gpio_Rotenc, 2U, 0x0000ffffUL);  // 16 bit output - 16 bit input
	}
#endif

#if 1
	/* PWM Lights */
	{
		int statusPwmLights = XGpio_Initialize(&gpio_PWM_Lights, XPAR_PWM_LIGHTS_AXI_PWM_GPIO_0_DEVICE_ID);
		if (statusPwmLights != XST_SUCCESS) {
			xil_printf("GPIO PWM Lights Initialization Failed\r\n");
			return;
		}
		XGpio_SetDataDirection(&gpio_PWM_Lights, 1U, 0x00000000UL);  // 32 bit output
		XGpio_SetDataDirection(&gpio_PWM_Lights, 2U, 0xffffffffUL);  // 32 bit input
	}
#endif

#if 0
	/* I2C address mapping list */
	{
		u32 ByteCount;
		u8 iicData;

		for (u8 iicChipAddr = 0; iicChipAddr <= 0x7fU; ++iicChipAddr) {
			xil_printf("IIC Test iicChipAddr = 0x%02x --> ", iicChipAddr);

			u16 StatusReg = XIic_ReadReg(IIC_BOARD_BASE_ADDRESS, XIIC_SR_REG_OFFSET);
			if(!(StatusReg & XIIC_SR_BUS_BUSY_MASK)) {
				ByteCount = XIic_Recv(IIC_BOARD_BASE_ADDRESS, iicChipAddr, &iicData, 1, XIIC_STOP);
				if (ByteCount) {
					xil_printf("found\r\n");
				} else {
					xil_printf("no\r\n");
				}
			}
		}
	}
#endif

#if 1
	/* DAC pull voltage */
	{
		u32 ByteCount;
		u8 iicData[3] = { 0 };

#if 1
		/* Write DAC data */
		xil_printf("IIC write DAC Addr = 0x%02x --> ", IIC_DAC_ONCHIP_ADDRESS);

		u16 StatusReg = XIic_ReadReg(IIC_BOARD_BASE_ADDRESS, XIIC_SR_REG_OFFSET);
		if(!(StatusReg & XIIC_SR_BUS_BUSY_MASK)) {
			iicData[0]	= 0x01U;  // command: DAC_latch & CODE register
			iicData[1]	= 0x7fU;  // MSB
			iicData[2]	= 0x30U;  // LSB
			ByteCount 	= 3;
			ByteCount = XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_DAC_ONCHIP_ADDRESS, (u8*) &iicData, ByteCount, XIIC_STOP);
			xil_printf("write: data cnt = %d\r\n", ByteCount);
		}
#endif

#if 0
		/* Read DAC data */
		xil_printf("IIC read DAC Addr = 0x%02x --> ", IIC_DAC_ONCHIP_ADDRESS);

		u16 StatusReg = XIic_ReadReg(IIC_BOARD_BASE_ADDRESS, XIIC_SR_REG_OFFSET);
		if(!(StatusReg & XIIC_SR_BUS_BUSY_MASK)) {
			iicData[0]	= 0x01;
			ByteCount 	= 1;
			ByteCount = XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_DAC_ONCHIP_ADDRESS, (u8*) &iicData, ByteCount, XIIC_REPEATED_START);

			iicData[0]	= 0x00U;
			iicData[1]	= 0x00U;
			ByteCount = XIic_Recv(IIC_BOARD_BASE_ADDRESS, IIC_DAC_ONCHIP_ADDRESS, (u8*) &iicData, 2, XIIC_STOP);
			if (ByteCount) {
				xil_printf("read: data cnt = %d, data[0] = 0x%02x, data[1] = 0x%02x\r\n", ByteCount, iicData[0], iicData[1]);
			} else {
				xil_printf("read: no data.\r\n");
			}
		}
#endif
	}
#endif

#if 1
	/* LCD */
	{
		/* Pull and release reset line of the LCD */
		{
			const u32 pwmLights_gpio2_prev  	= XGpio_DiscreteRead(&gpio_PWM_Lights, 2U);
			const u32 pwmLights_gpio2_lcd_rstn  = pwmLights_gpio2_prev & ~0x01UL;
			const u32 pwmLights_gpio2_lcd_actv  = pwmLights_gpio2_prev |  0x01UL;

			xil_printf("LCD reset: rstn --> actv\r\n");

			XGpio_DiscreteWrite(&gpio_PWM_Lights, 2U, pwmLights_gpio2_lcd_rstn);
			vTaskDelay(pdMS_TO_TICKS(2));

			XGpio_DiscreteWrite(&gpio_PWM_Lights, 2U, pwmLights_gpio2_lcd_actv);
			vTaskDelay(pdMS_TO_TICKS(50));
		}

		xil_printf("IIC LCD Addr = 0x%02x --> ", IIC_LCD_ONCHIP_ADDRESS);

		u16 StatusReg = XIic_ReadReg(IIC_BOARD_BASE_ADDRESS, XIIC_SR_REG_OFFSET);
		if(!(StatusReg & XIIC_SR_BUS_BUSY_MASK)) {
			const u8 iicData1[2] = { 0x00, 0x38 };
			XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_LCD_ONCHIP_ADDRESS, (u8*) &iicData1, sizeof(iicData1), XIIC_STOP);
			vTaskDelay(pdMS_TO_TICKS(50));

			const u8 iicData2[2] = { 0x00, 0x39 };
			XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_LCD_ONCHIP_ADDRESS, (u8*) &iicData2, sizeof(iicData2), XIIC_STOP);
			vTaskDelay(pdMS_TO_TICKS(10));

			const u8 iicData3[12] = {
					0x80U, 0x14U, 			/* Internal OSC frequency - 1/5 bias; Osc frequency: abt. 183 Hz */
					0x80U, 0x74U,			/* 							Contrast: LSB 36 of [0..63] */
					0x80U, 0x56U,			/* Icon: off; Booster: on; 	Contrast: MSB 36 of [0..63] */
					0x80U, 0x6cU,			/* Follower: on; amplification ratio: 4 of [0..7] */
					0x80U, 0x0cU,			/* Display: on; Cursor: off; Cursor position: off */
					0x00U, 0x01U,			/* Clear display */
			};
			XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_LCD_ONCHIP_ADDRESS, (u8*) &iicData3, sizeof(iicData3), XIIC_STOP);
			vTaskDelay(pdMS_TO_TICKS(10));

			const u8 col 			= 0U;
			const u8 rowL1			= 0U;
			const char strBufL1[] 	= "* UFBmod  V2.x *";
			const u8 strLenL1		= 16;
			lcdTextWrite(rowL1, col, strLenL1, strBufL1);

			const u8 rowL2			= 1U;
			//const char strBufL2[] = "*Demo by DF4IAH*";
			const char strBufL2[] 	= "Demo by HFT Labs";
			const u8 strLenL2		= 16;
			lcdTextWrite(rowL2, col, strLenL2, strBufL2);
		}
	}
#endif

	//u8 loopIdx = 0U;
	while (1) {
		/* Delay */
		vTaskDelay(pdMS_TO_TICKS(1000));

#if 1
		const u32 gpio1_ctr  = XGpio_DiscreteRead(&gpio_Rotenc, 1U);
		const u32 gpio2_push = XGpio_DiscreteRead(&gpio_Rotenc, 2U);
		xil_printf( "ROTENC decoder: ctr=%08lx, push=%d\r\n", gpio1_ctr, gpio2_push);
#endif

#if 0
		{
#if 1
			u8  pwm_r_val 	= (u8) (0x03U & (gpio1_ctr >> 2));
			u8  pwm_g_val 	= (u8) (0x03U & (gpio1_ctr >> 4));
			u8  pwm_b_val 	= (u8) (0x03U & (gpio1_ctr >> 6));
			u8  pwm_bl_val; //	= (u8) (0x03U & (gpio1_ctr >> 8));
			    pwm_bl_val  = 0x7f;

			if (!gpio2_push) {
				pwm_r_val  = 0x20;
				pwm_g_val  = 0x20;
				pwm_b_val  = 0x20;
				pwm_bl_val = 0xff;
			}

			u32 pwm_bf = ((u32) pwm_bl_val << 24) | ((u32) pwm_b_val << 16) | ((u32) pwm_g_val << 8) | ((u32) pwm_r_val << 0);
#else
			u32 pwm_bf;

			switch (loopIdx)
			{
			case 0:
				pwm_bf = 0x000000ffUL;
				break;

			case 1:
				pwm_bf = 0x0000ff00UL;
				break;

			case 2:
				pwm_bf = 0x00ff0000UL;
				break;

			default:
			case 3:
				pwm_bf = 0xff000000UL;
				break;
			}

			++loopIdx;
			loopIdx &= 0x03U;
#endif

			XGpio_DiscreteWrite(&gpio_PWM_Lights, 1U, pwm_bf);
		}
#endif


		/* Send the next value on the queue.  The queue should always be empty at this point so a block time of 0 is used. */
#if 0
		xQueueSend(xQueue,			/* The queue being written to. */
				   HWstring, 		/* The address of the data being sent. */
				   0UL				/* The block time. */
		);
#endif
	}
}


static void taskEth(void* pvParameters)
{
	XEmacLite* emacLiteInstPtr = &emacLiteInstance;

	/* Initialize the EmacLite device */
	XEmacLite_Config* emacLiteConfigPtr = XEmacLite_LookupConfig(EMAC_DEVICE_ID);
	if (emacLiteConfigPtr == NULL) {
		return;
	}

	int status = XEmacLite_CfgInitialize(emacLiteInstPtr, emacLiteConfigPtr, emacLiteConfigPtr->BaseAddress);
	if (status != XST_SUCCESS) {
		return;
	}

	/* Set the MAC address */
	XEmacLite_SetMacAddress(emacLiteInstPtr, emacLiteLocalMacAddr);		// TODO: read Onewire device for EUI48

	/* Empty any existing receive frames */
	XEmacLite_FlushReceive(emacLiteInstPtr);

	while (1) {
#if 0
		/* Block to wait for data arriving on the queue. */
		xQueueReceive( 	xQueue,				/* The queue being read. */
						Recdstring,	/* Data is read into this address. */
						portMAX_DELAY );	/* Wait without a timeout for data. */

		/* Print the received data. */
		xil_printf( "Rx task received string from Tx task: %s\r\n", Recdstring );
		RxtaskCntr++;
#endif

		/* Wait for a Receive packet */
		while (!emacLiteRxFrameLength) {
			vTaskDelay(pdMS_TO_TICKS(20UL));
			emacLiteRxFrameLength = XEmacLite_Recv(emacLiteInstPtr, (u8*) emacLiteRxFrame);
		}

		/* Process the Receive frame */
		ethProcessRecvFrame(emacLiteInstPtr);
		emacLiteRxFrameLength = 0UL;

#if 0
		/* Delay */
		vTaskDelay(pdMS_TO_TICKS(1000UL));
#endif
	}
}


/*-----------------------------------------------------------*/
/* TIMERS													 */

#if 0
static void vTimerCallback( TimerHandle_t pxTimer )
{
	long lTimerId;
	configASSERT( pxTimer );

	lTimerId = ( long ) pvTimerGetTimerID( pxTimer );

	if (lTimerId != TIMER_ID) {
		xil_printf("FreeRTOS Hello World Example FAILED");
	}

	/* If the RxtaskCntr is updated every time the Rx task is called. The
	 Rx task is called every time the Tx task sends a message. The Tx task
	 sends a message every 1 second.
	 The timer expires after 10 seconds. We expect the RxtaskCntr to at least
	 have a value of 9 (TIMER_CHECK_THRESHOLD) when the timer expires. */
	if (RxtaskCntr >= TIMER_CHECK_THRESHOLD) {
		xil_printf("Successfully ran FreeRTOS Hello World Example");
	} else {
		xil_printf("FreeRTOS Hello World Example FAILED");
	}

	vTaskDelete(thEth);
	vTaskDelete(thDflt);
}
#endif
