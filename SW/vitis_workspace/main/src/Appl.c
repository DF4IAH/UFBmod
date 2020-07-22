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

#include "externals.h"
#include "Lcd.h"


//#define TIMER_ID					1
//#define TIMER_CHECK_THRESHOLD		9



/*-----------------------------------------------------------*/
/* Prototypes 												 */

static void taskDefault(void* pvParameters);
static void taskEth(void* pvParameters);
//static void vTimerCallback(TimerHandle_t pxTimer);

/*-----------------------------------------------------------*/
static TaskHandle_t thDflt;
static TaskHandle_t thEth;
//static QueueHandle_t qhTodo = NULL;
//static TimerHandle_t thTodo = NULL;


/*-----------------------------------------------------------*/
/* Instances 												 */

static XGpio gpio_Rotenc;																		/* ROTENC 	    */
static XGpio gpio_PWM_Lights;																	/* PWM Lights   */


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
			configMINIMAL_STACK_SIZE,		/* The stack allocated to the task. */
			//(unsigned short) 500,	 		/* The stack allocated to the task. */
			NULL, 							/* The task parameter is not used, so set to NULL. */
			tskIDLE_PRIORITY,				/* The task runs at the idle priority. */
			&thDflt
	);

	xTaskCreate(
			taskEth, 						/* The function that implements the task. */
			(const char*) "tskNet",			/* Text name for the task, provided to assist debugging only. */
			configMINIMAL_STACK_SIZE,		/* The stack allocated to the task. */
			//(unsigned short) 500,	 		/* The stack allocated to the task. */
			NULL,							/* The task parameter is not used, so set to NULL. */
			tskIDLE_PRIORITY + 1U,			/* The task runs at that priority. */
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
/* TASKS 													 */

static void taskDefault(void* pvParameters)
{
#if 0
	/* Delay loop calibration for EUI48 read-out */
	{
		owTestDelay();

		/* Blocking loop */
		while (1)
			;
	}
#endif

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
			vTaskDelay(pdMS_TO_TICKS(10));

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

			xil_printf(".\r\n");
		}
	}
#endif

#if 1
	/* Onewire EUI48 */
	{
		u8 errCode = owreadEUI48();
		if (errCode == XST_SUCCESS) {
			xil_printf("EUI48 address: %02X:%02X:%02X:%02X:%02X:%02X\r\n",
					owEUI48[0],
					owEUI48[1],
					owEUI48[2],
					owEUI48[3],
					owEUI48[4],
					owEUI48[5]);

		} else {
			xil_printf("EUI48 read has failed with code: %d !\r\n", errCode);
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
	while (1) {
		vTaskDelay(pdMS_TO_TICKS(1000));
	}

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
