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
#include "xil_printf.h"
#include "xil_io.h"
#include "xgpio.h"
#include "xiic.h"

#include "xspi.h"				/* SPI device driver */
#include "xspi_l.h"

#include "externals.h"
#include "Lcd.h"


//#define TIMER_ID					1
//#define TIMER_CHECK_THRESHOLD		9


/*-----------------------------------------------------------*/
/* Constants 												 */

/* SCOPE */
#define SCOPE_BF_GPIO0_OUT_enable 		 	0
#define SCOPE_BF_GPIO0_OUT_start 			1
#define SCOPE_BF_GPIO0_OUT_pop	 		 	2
#define SCOPE_BF_GPIO0_OUT_trigLvl 		 	7
#define SCOPE_BF_GPIO0_OUT_trigSrc_LSB	 	8
#define SCOPE_BF_GPIO0_OUT_trigSrc_width	6

#define SCOPE_BF_GPIO1_IN_running 		 	0
#define SCOPE_BF_GPIO1_IN_readAvail 		1
#define SCOPE_BF_GPIO1_IN_readValid 		2


#define SCOPE_MASK_GPIO0_OUT_enable 		0x00000001UL
#define SCOPE_MASK_GPIO0_OUT_start 			0x00000002UL
#define SCOPE_MASK_GPIO0_OUT_pop	 		0x00000004UL
#define SCOPE_MASK_GPIO0_OUT_trigLvlHi 		0x00000080UL
#define SCOPE_MASK_GPIO0_OUT_trigSrc	 	0x00003f00UL

#define SCOPE_MASK_GPIO1_IN_running 		0x0000001UL
#define SCOPE_MASK_GPIO1_IN_readAvail 		0x0000002UL
#define SCOPE_MASK_GPIO1_IN_readValid 		0x0000004UL


enum SCOPE_TRIGSRC_48LINES_ENUM {
	SCOPE_TRIGSRC_RMII_25MHz_RefClk = 0,
	SCOPE_TRIGSRC_RMII_NC1,
	SCOPE_TRIGSRC_RMII_NC2,
	SCOPE_TRIGSRC_RMII_NC3,
	SCOPE_TRIGSRC_RMII_NC4,
	SCOPE_TRIGSRC_RMII_NC5,
	SCOPE_TRIGSRC_RMII_NC6,
	SCOPE_TRIGSRC_MII_COL,
	SCOPE_TRIGSRC_MII_CRS,
	SCOPE_TRIGSRC_MII_RX_DV,
	SCOPE_TRIGSRC_MII_RX_RXD0,
	SCOPE_TRIGSRC_MII_RX_RXD1,
	SCOPE_TRIGSRC_MII_RX_RXD2,
	SCOPE_TRIGSRC_MII_RX_RXD3,
	SCOPE_TRIGSRC_MII_RX_ER,
	SCOPE_TRIGSRC_MII_RX_CLK,
	SCOPE_TRIGSRC_MII_TX_EN,
	SCOPE_TRIGSRC_MII_TX_TXD0,
	SCOPE_TRIGSRC_MII_TX_TXD1,
	SCOPE_TRIGSRC_MII_TX_TXD2,
	SCOPE_TRIGSRC_MII_TX_TXD3,
	SCOPE_TRIGSRC_MII_TX_ER,
	SCOPE_TRIGSRC_MII_TX_CLK,
};


/************************** Variable Definitions *****************************/

static XSpi  		spiConfigInstance;


/*-----------------------------------------------------------*/
/* Prototypes 												 */

static void taskDefault(void* pvParameters);
static void taskEth(void* pvParameters);
//static void vTimerCallback(TimerHandle_t pxTimer);

/*-----------------------------------------------------------*/
static TaskHandle_t thDflt;
static TaskHandle_t thEth;
static TaskHandle_t thTrx;
static TaskHandle_t thTrxRxMsg;
//static QueueHandle_t qhTodo = NULL;
//static TimerHandle_t thTodo = NULL;


/*-----------------------------------------------------------*/
/* Instances 												 */

static XGpio gpio_Rotenc;																		/* ROTENC 	               */
       XGpio gpio_PWM_Lights;																	/* PWM Lights              */
static XGpio gpio_CLK1B_PS;																		/* CLK1B fine PS tuning    */
static XGpio gpio0_SCOPE;																		/* SCOPE unit for analysis */
static XGpio gpio1_SCOPE;																		/* GPIO2 and GPIO3         */


/* App includes */
#include "Eth.h"


/*-----------------------------------------------------------*/
/* Functions 												 */



int main(void)
{
#ifdef LOGGING
	xil_printf("\r\n\r\n*** UFBmod start-up ***\r\n" );
#endif

	xTaskCreate(
			taskDefault, 					/* The function that implements the task. */
			(const char*) "tskDflt", 		/* Text name for the task, provided to assist debugging only. */
			configMINIMAL_STACK_SIZE,		/* The stack allocated to the task. */
			NULL, 							/* The task parameter is not used, so set to NULL. */
			tskIDLE_PRIORITY,				/* The task runs at the idle priority. */
			&thDflt
	);

	xTaskCreate(
			taskEth, 						/* The function that implements the task. */
			(const char*) "tskNet",			/* Text name for the task, provided to assist debugging only. */
			configMINIMAL_STACK_SIZE,		/* The stack allocated to the task. */
			NULL,							/* The task parameter is not used, so set to NULL. */
			tskIDLE_PRIORITY + 2U,			/* The task runs at that priority. */
			&thEth
	);

	xTaskCreate(
			taskTrx, 						/* The function that implements the task. */
			(const char*) "tskTrx",			/* Text name for the task, provided to assist debugging only. */
			500,							/* The stack allocated to the task. */
			NULL,							/* The task parameter is not used, so set to NULL. */
			tskIDLE_PRIORITY + 1U,			/* The task runs at that priority. */
			&thTrx
	);

	xTaskCreate(
			taskTrxRxMsg, 					/* The function that implements the task. */
			(const char*) "tskTrxRxMsg",	/* Text name for the task, provided to assist debugging only. */
			500,							/* The stack allocated to the task. */
			NULL,							/* The task parameter is not used, so set to NULL. */
			tskIDLE_PRIORITY + 2U,			/* The task runs at that priority. */
			&thTrxRxMsg
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


void pwmLedSet(u32 enableBF, u32 changeMsk)
{
	u32 gpio1_leds  = XGpio_DiscreteRead(&gpio_PWM_Lights, 1U);

	// Read-and-Modify
	gpio1_leds &= (~changeMsk);
	gpio1_leds |= ( changeMsk & enableBF);

	XGpio_DiscreteWrite(&gpio_PWM_Lights, 1U, gpio1_leds);
}


static void clkwiz_print_DRP(void)
{
#ifdef LOGGING
	const UINTPTR ba = XPAR_CLK_WIZ_0_BASEADDR;

	u32 reg;
	xil_printf("Register dump 0x300 .. 0x35C:\r\n\r\n");

	reg = Xil_In32(ba + 0x300UL);
	xil_printf("PowerReg \t\t\t\t\t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x304UL);
	xil_printf("CLOCKOUT0 Reg1 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x308UL);
	xil_printf("CLOCKOUT0 Reg2 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x30cUL);
	xil_printf("CLOCKOUT1 Reg1 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x310UL);
	xil_printf("CLOCKOUT1 Reg2 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x314UL);
	xil_printf("CLOCKOUT2 Reg1 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x318UL);
	xil_printf("CLOCKOUT2 Reg2 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x31cUL);
	xil_printf("CLOCKOUT3 Reg1 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x320UL);
	xil_printf("CLOCKOUT3 Reg2 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x324UL);
	xil_printf("CLOCKOUT4 Reg1 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x328UL);
	xil_printf("CLOCKOUT4 Reg2 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x32cUL);
	xil_printf("CLOCKOUT5 Reg1 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x330UL);
	xil_printf("CLOCKOUT5 Reg2 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x334UL);
	xil_printf("CLOCKOUT6 Reg1 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x338UL);
	xil_printf("CLOCKOUT6 Reg2 \t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x33cUL);
	xil_printf("DIV_CLK Reg \t\t\t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x340UL);
	xil_printf("CLKFBOUT Reg1 \t\t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x344UL);
	xil_printf("CLKFBOUT Reg2 \t\t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x348UL);
	xil_printf("LOCK Reg1 \t\t\t\t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x34cUL);
	xil_printf("LOCK Reg2 \t\t\t\t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x350UL);
	xil_printf("LOCK Reg3 \t\t\t\t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x354UL);
	xil_printf("Filter Reg1 \t\t\t\t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x358UL);
	xil_printf("Filter Reg2 \t\t\t\t= 0x%08lx\r\n", reg);

	reg = Xil_In32(ba + 0x35cUL);
	xil_printf("Control Reg \t\t\t\t= 0x%08lx\r\n", reg);

	xil_printf("\r\ndone.\r\n");
#endif
}


/*-----------------------------------------------------------*/
/* TASKS 													 */

static void taskDefault(void* pvParameters)
{
#if 1
	/* Read EUI48 address from Onewire S-EEPROM as Ethernet MAC address */
#ifdef LOGGING
	{
		int statusEui48 = owreadEUI48();
		if (statusEui48 != XST_SUCCESS) {
			xil_printf("EUI48 readout Failed\r\n");
		} else {
			xil_printf("EUI48 readout: %02X:%02X:%02X:%02X:%02X:%02X\r\n",
					owEUI48[0], owEUI48[1], owEUI48[2], owEUI48[3], owEUI48[4], owEUI48[5]);
		}
	}
#endif
#endif

#if 1
	/* ROTENC counter and push button */
	{
		int statusRotenc = XGpio_Initialize(&gpio_Rotenc, XPAR_ROTENC_DECODER_AXI_ROTENC_GPIO_0_DEVICE_ID);
		if (statusRotenc != XST_SUCCESS) {
#ifdef LOGGING
			xil_printf("GPIO Rotenc Initialization Failed\r\n");
#endif
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
#ifdef LOGGING
			xil_printf("GPIO PWM Lights Initialization Failed\r\n");
#endif
			return;
		}
		XGpio_SetDataDirection(&gpio_PWM_Lights, 1U, 0x00000000UL);  // 32 bit output
		XGpio_SetDataDirection(&gpio_PWM_Lights, 2U, 0xffffffffUL);  // 32 bit input
	}
#endif


#if 1
	/* SCOPE unit for MII analysis */
	{
		int statusScope = XGpio_Initialize(&gpio0_SCOPE, XPAR_SCOPE_SCOPE_AXI_GPIO_0_DEVICE_ID);
		if (statusScope != XST_SUCCESS) {
#ifdef LOGGING
			xil_printf("GPIO SCOPE (GPIO0) Failed\r\n");
#endif
			return;
		}

		statusScope = XGpio_Initialize(&gpio1_SCOPE, XPAR_SCOPE_SCOPE_AXI_GPIO_1_DEVICE_ID);
		if (statusScope != XST_SUCCESS) {
#ifdef LOGGING
			xil_printf("GPIO SCOPE (GPIO1) Failed\r\n");
#endif
			return;
		}

		XGpio_SetDataDirection(&gpio0_SCOPE, 1U, 0x00000000UL);  // 32 bit input (CONTROL)
		XGpio_SetDataDirection(&gpio0_SCOPE, 2U, 0xffffffffUL);  // 32 bit input (STATUS)
		XGpio_SetDataDirection(&gpio1_SCOPE, 1U, 0xffffffffUL);  // 32 bit input (DATA MSB)
		XGpio_SetDataDirection(&gpio1_SCOPE, 2U, 0xffffffffUL);  // 32 bit input (DATA LSB)
	}
#endif


#if 0
	/* I2C address mapping list */
#ifdef LOGGING
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
#endif


#if 0
#define PHASE_000DEG
//#define PHASE_090DEG
//#define PHASE_180DEG
//#define PHASE_270DEG

	/* CLK1B ClockWizard pre-defined settings */
	{
		const UINTPTR ba = XPAR_CLK_WIZ_0_BASEADDR;
		u8 mode = 0U;

#if defined PHASE_000DEG
		mode = 0U;
#elif defined PHASE_090DEG
		mode = 1U;
#elif defined PHASE_180DEG
		mode = 2U;
#elif defined PHASE_270DEG
		mode = 3U;
#endif

#ifdef LOGGING
		xil_printf("\r\nClock Wizard - CLK1B -->\r\n");
#endif

#if 0
		/* Debugging */
		clkwiz_print_DRP();
#endif

		/* Turning off INT */
		microblaze_disable_interrupts();

		/* Init MMCM DRP registers */
		Xil_Out32(ba + 0x300UL, 0x0000ffffUL);		// Power Reg

		// phase variants
		if (mode == 0) {
			Xil_Out32(ba + 0x304UL, 0x00001187UL);	// CLKOUT0 Reg1
			Xil_Out32(ba + 0x308UL, 0x00000080UL);	// CLKOUT0 Reg2

			Xil_Out32(ba + 0x314UL, 0x00001187UL);	// CLKOUT2 Reg1
			Xil_Out32(ba + 0x318UL, 0x00000080UL);	// CLKOUT2 Reg2

		} else if (mode == 1) {
			Xil_Out32(ba + 0x304UL, 0x00005187UL);	// CLKOUT0 Reg1
			Xil_Out32(ba + 0x308UL, 0x00000083UL);	// CLKOUT0 Reg2

			Xil_Out32(ba + 0x314UL, 0x00005187UL);	// CLKOUT2 Reg1
			Xil_Out32(ba + 0x318UL, 0x00000083UL);	// CLKOUT2 Reg2

		} else if (mode == 2) {
			Xil_Out32(ba + 0x304UL, 0x00009187UL);	// CLKOUT0 Reg1
			Xil_Out32(ba + 0x308UL, 0x00000086UL);	// CLKOUT0 Reg2

			Xil_Out32(ba + 0x314UL, 0x00009187UL);	// CLKOUT2 Reg1
			Xil_Out32(ba + 0x318UL, 0x00000086UL);	// CLKOUT2 Reg2

		} else if (mode == 3) {
			Xil_Out32(ba + 0x304UL, 0x0000d187UL);	// CLKOUT0 Reg1
			Xil_Out32(ba + 0x308UL, 0x00000089UL);	// CLKOUT0 Reg2

			Xil_Out32(ba + 0x314UL, 0x0000d187UL);	// CLKOUT2 Reg1
			Xil_Out32(ba + 0x318UL, 0x00000089UL);	// CLKOUT2 Reg2
		}

		Xil_Out32(ba + 0x30cUL, 0x00001187UL);		// CLKOUT1 Reg1
		Xil_Out32(ba + 0x310UL, 0x00000080UL);		// CLKOUT1 Reg2

		Xil_Out32(ba + 0x31cUL, 0x00001187UL);		// CLKOUT3 Reg1
		Xil_Out32(ba + 0x320UL, 0x00000080UL);		// CLKOUT3 Reg2

		Xil_Out32(ba + 0x324UL, 0x00001041UL);		// CLKOUT4 Reg1
		Xil_Out32(ba + 0x328UL, 0x000000c0UL);		// CLKOUT4 Reg2
		Xil_Out32(ba + 0x32cUL, 0x00001041UL);		// CLKOUT5 Reg1
		Xil_Out32(ba + 0x330UL, 0x000000c0UL);		// CLKOUT5 Reg2
		Xil_Out32(ba + 0x334UL, 0x00001041UL);		// CLKOUT6 Reg1
		Xil_Out32(ba + 0x338UL, 0x000000c0UL);		// CLKOUT6 Reg2
		Xil_Out32(ba + 0x33cUL, 0x00001041UL);		// DIV_CLK Reg
		Xil_Out32(ba + 0x340UL, 0x00001187UL);		// CLKFBOUT Reg1
		Xil_Out32(ba + 0x344UL, 0x00000080UL);		// CLKFBOUT Reg2
		Xil_Out32(ba + 0x348UL, 0x000001eeUL);		// LOCK Reg1
		Xil_Out32(ba + 0x34cUL, 0x00007c01UL);		// LOCK Reg2
		Xil_Out32(ba + 0x350UL, 0x00007de9UL);		// LOCK Reg3
		Xil_Out32(ba + 0x354UL, 0x00000800UL);		// Filter Reg1
		Xil_Out32(ba + 0x358UL, 0x00009800UL);		// Filter Reg2

		Xil_Out32(ba + 0x35cUL, 0x00000003UL);		// Clock Configuration Register - Load and enable above settings
		//__asm volatile( "NOP" );

#if 0
		/* Return to default settings */
		Xil_Out32(ba + 0x35cUL, 0x00000001UL);		// Clock Configuration Register - Load and enable predefined settings
		//__asm volatile( "NOP" );
#endif

		/* Re-enable INT */
		microblaze_enable_interrupts();
		//__asm volatile( "NOP" );

#if 0
		clkwiz_print_DRP();
#endif

#ifdef LOGGING
		xil_printf("=====\r\n\r\n");
#endif
	}
#endif

#if 0
	/* CLK1B ClockWizard fine PS tuning */
	{
		/* Return to default settings */
		const UINTPTR ba = XPAR_CLK_WIZ_0_BASEADDR;
		Xil_Out32(ba + 0x35cUL, 0x00000001UL);		// Clock Configuration Register - Load and enable predefined settings

		int statusClk1b = XGpio_Initialize(&gpio_CLK1B_PS, XPAR_CLK1B_CW_0_CLK1B_AXI_GPIO_0_DEVICE_ID);
		if (statusClk1b != XST_SUCCESS) {
#ifdef LOGGING
			xil_printf("GPIO LK1B ClockWizard fine PS tuning Initialization Failed\r\n");
#endif
			return;
		}
		XGpio_SetDataDirection(&gpio_CLK1B_PS, 1U, ~0x00000003UL);  //  2 bit output
		XGpio_SetDataDirection(&gpio_CLK1B_PS, 2U,  0xffffffffUL);  // 16 bit input

		/* Turning off INT */
		//microblaze_disable_interrupts();

		// Shift phase to desired position (relative / absolute after FPGA reconfig)
		{
			const int desiredPhase	= -900;  // 0.1 � resolution
			const int stepPhase		=    5;  // 0.1 � resolution
			int       nowPhase 		=    0;

			while (((desiredPhase >= nowPhase ) ? (desiredPhase - nowPhase) : (nowPhase - desiredPhase)) >= stepPhase) {
				if (desiredPhase > nowPhase) {
					XGpio_DiscreteWrite(   &gpio_CLK1B_PS, 1U,  0x00000003UL);	// Up-Direction with trigger
					nowPhase += stepPhase;

				} else if (desiredPhase < nowPhase) {
					XGpio_DiscreteWrite(   &gpio_CLK1B_PS, 1U,  0x00000001UL);	// Down-Direction with trigger
					nowPhase -= stepPhase;
				}
				XGpio_DiscreteClear(&gpio_CLK1B_PS, 1U, 0x00000001UL);	// release

				//vTaskDelay(pdMS_TO_TICKS(10));
			}
		}

		// Preset direction
		XGpio_DiscreteWrite(&gpio_CLK1B_PS, 1U,  0x00000002UL);	// Up-Direction, no-trigger

		/* Re-enable INT */
		//microblaze_enable_interrupts();
	}
#endif

#if 0
	while (1) {
		/* Delay */
		vTaskDelay(pdMS_TO_TICKS(1000));
	}
#endif

#if 1
	/* LCD */
	lcdInit();
#endif

#if 1
	{
#define QSPI_BUF_SIZE  255

		u8 qspi_readbuf[QSPI_BUF_SIZE] = { 0 };



		/* Register programming QSPI-device */
		volatile u32* qspi_addr_SRR	 		= (u32*) (XPAR_SPI_0_BASEADDR + 0x40);
		volatile u32* qspi_addr_SPICR	 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x60);
		volatile u32* qspi_addr_SPISR	 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x64);
		volatile u32* qspi_addr_SPIDTR	 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x68);
		volatile u32* qspi_addr_SPIDRR	 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x6c);
		volatile u32* qspi_addr_SPISSR	 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x70);
		volatile u32* qspi_addr_TX_OCCU 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x74);
		volatile u32* qspi_addr_RX_OCCU 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x78);

		volatile u32* qspi_addr_DGIER	 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x1c);
		volatile u32* qspi_addr_IPISR	 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x20);
		volatile u32* qspi_addr_IPIER	 	= (u32*) (XPAR_SPI_0_BASEADDR + 0x28);

#if 0
		/* Reset */
		*qspi_addr_SRR		= 0x0000000aUL;
#endif

		/* Preparations: Master inhibit + FIFO reset (PG153 p106) */
		*qspi_addr_SPICR	= 0x0001e6UL;

		/* Preparations: Select de-assert */
		*qspi_addr_SPISSR 	= 0x01UL;

		/* Read command */
		*qspi_addr_SPIDTR	= 0x6cU;				// Single: 0x13U // Quad: 0x6cU
		*qspi_addr_SPIDTR	= 0x00U;
		*qspi_addr_SPIDTR	= 0x80U;
		*qspi_addr_SPIDTR	= 0x00U;
		*qspi_addr_SPIDTR	= 0x00U;
		for (int ii = 0; ii < QSPI_BUF_SIZE; ii++) {			// Response buffer
			*qspi_addr_SPIDTR	= 0x00U;
		}

		/* Issue chip select */
		*qspi_addr_SPISSR 	= 0x00UL;

		/* Enable master transaction */
		*qspi_addr_SPICR   &= ~0x00000100UL;

		/* SPI communication runs until TX buffer empty */
		while (!(*qspi_addr_SPISR & 0x0004UL))
			;

		/* Deassert chip select */
		*qspi_addr_SPISSR	= 0x01UL;

		/* Disable master transaction */
		*qspi_addr_SPICR   |=  0x00000100UL;

		/* Read SPIDRR */
		int dropCtr = 9;
		int idx 	= 0;
		while (!(*qspi_addr_SPISR & 0x01U)) {
			if (dropCtr) {
				--dropCtr;
				(void) *qspi_addr_SPIDRR;
			} else {
				qspi_readbuf[idx++] = *qspi_addr_SPIDRR;
			}
		}
		u8 len 	= idx;
		(void) len;
	}
#endif

	//u8 loopIdx = 0U;
	while (1) {
		/* Delay */
		vTaskDelay(pdMS_TO_TICKS(500));

#if 0
		/* CLK1B ClockWizard fine PS tuning */
		{
			static s32 ctr = 0L;
			static u8 dwnUp = 1U;

			/* Set and release bit */
			XGpio_DiscreteSet(  &gpio_CLK1B_PS, 1, 0x00000001UL);
			XGpio_DiscreteClear(&gpio_CLK1B_PS, 1, 0x00000001UL);

			/* Increment / Decrement */
			if (dwnUp) {
				++ctr;
			} else {
				--ctr;
			}

			/* Toggle direction */
			if (dwnUp && (ctr == 360)) {
				dwnUp = 0U;
				XGpio_DiscreteClear(&gpio_CLK1B_PS, 1, 0x00000002UL);

			} else if (!dwnUp && (ctr == -360)) {
				dwnUp = 1U;
				XGpio_DiscreteSet(  &gpio_CLK1B_PS, 1, 0x00000002UL);
			}

#ifdef LOGGING
			xil_printf( "CLK1B_PS: dwnUp=%d, ctr=%4ld\r\n", dwnUp, ctr);
#endif
		}
#endif

#if 0
		/* SCOPE Triggering and Readout */
#ifdef LOGGING
		{
			u32 gpio1, gpio3, gpio4;

			/* Prepare: turn off first */
			XGpio_DiscreteWrite(&gpio0_SCOPE, 1U, 0UL);

			/* Activate SCOPE Module */
			const u32 Enable = (SCOPE_MASK_GPIO0_OUT_enable);
			XGpio_DiscreteWrite(&gpio0_SCOPE, 1U, Enable);

			/* Print Header */
			xil_printf("\r\n===\r\nSCOPE -->\r\n\r\n");
			xil_printf("Trigger-Source lines:\r\n\r\n");
			xil_printf("00: RMII_25MHz_RefClk\r\n");
			xil_printf("07: MII_COL\r\n");
			xil_printf("08: MII_CRS\r\n");
			xil_printf("09: MII_RX_DV\r\n");
			xil_printf("13: MII_RX_RXD3 \t12: D2 \t\t11: D1 \t\t10: D0\r\n");
			xil_printf("14: MII_RX_ER\r\n");
			xil_printf("15: MII_RX_CLK\r\n");
			xil_printf("16: MII_TX_EN\r\n");
			xil_printf("20: MII_TX_TXD3 \t19: D2 \t\t18: D1 \t\t17: D0\r\n");
			xil_printf("21: MII_TX_ER\r\n");
			xil_printf("22: MII_TX_CLK\r\n");
			xil_printf("\r\n");
			xil_printf("(waiting for Trigger) ...");

			/* Start capturing and wait for Trigger */
			const u32 EnableStartTrigHigh_TrigSel = (
							(SCOPE_TRIGSRC_MII_CRS				<< SCOPE_BF_GPIO0_OUT_trigSrc_LSB)	|
						    SCOPE_MASK_GPIO0_OUT_trigLvlHi											|
						    SCOPE_MASK_GPIO0_OUT_start												|
							SCOPE_MASK_GPIO0_OUT_enable);
			XGpio_DiscreteWrite(&gpio0_SCOPE, 1U, EnableStartTrigHigh_TrigSel);

			/* Wait until triggered and data ready */
			while (1) {
				gpio1 = XGpio_DiscreteRead(&gpio0_SCOPE, 2U);
				if ((gpio1 & SCOPE_MASK_GPIO1_IN_running) == 0UL) {
					/* No more running */
					break;
				}
				vTaskDelay(pdMS_TO_TICKS(100));
			}

			/* Triggered */
			xil_printf(" *Trig*\r\n\r\n");
			xil_printf("Timebase \t\tInput - Vector\r\n\r\n");
			xil_printf("\t\t\t4444.4444.3333.3333.3322.2222.2222.1111.1111.1100.0000.0000\r\n");
			xil_printf("\t\t\t7654.3210.9876.5432.1098.7654.3210.9876.5432.1098.7654.3210\r\n\r\n");

			/* Data read-out */
			while (1) {
				gpio1 = XGpio_DiscreteRead(&gpio0_SCOPE, 2U);

				/* End when no more data is available */
				if ((gpio1 & SCOPE_MASK_GPIO1_IN_readAvail) == 0) {
					xil_printf("=====\r\n");
					break;
				}

				/* Request next Row */
				XGpio_DiscreteSet(&gpio0_SCOPE, 1U, SCOPE_MASK_GPIO0_OUT_pop);

				/* Wait until Data is ready to poll */
				while (1) {
					gpio1 = XGpio_DiscreteRead(&gpio0_SCOPE, 2U);

					/* Wait until data is valid */
					if ((gpio1 & SCOPE_MASK_GPIO1_IN_readValid) != 0UL) {
						/* Data ready */
						break;
					}
				}
				gpio3		= XGpio_DiscreteRead(&gpio1_SCOPE, 1U);
				gpio4		= XGpio_DiscreteRead(&gpio1_SCOPE, 2U);
				u16 time 	= (gpio3 & 0xffff0000UL) >> 16;

				xil_printf("Time = %6d x 10 ns \t%d%d%d%d.%d%d%d%d.%d%d%d%d.%d%d%d%d.%d%d%d%d.%d%d%d%d.%d%d%d%d.%d%d%d%d.%d%d%d%d.%d%d%d%d.%d%d%d%d.%d%d%d%d\r\n",
						time,

						((gpio3 >> 15) & 0x1UL), ((gpio3 >> 14) & 0x1UL), ((gpio3 >> 13) & 0x1UL), ((gpio3 >> 12) & 0x1UL),
						((gpio3 >> 11) & 0x1UL), ((gpio3 >> 10) & 0x1UL), ((gpio3 >>  9) & 0x1UL), ((gpio3 >>  8) & 0x1UL),
						((gpio3 >>  7) & 0x1UL), ((gpio3 >>  6) & 0x1UL), ((gpio3 >>  5) & 0x1UL), ((gpio3 >>  4) & 0x1UL),
						((gpio3 >>  3) & 0x1UL), ((gpio3 >>  2) & 0x1UL), ((gpio3 >>  1) & 0x1UL), ((gpio3 >>  0) & 0x1UL),

						((gpio4 >> 31) & 0x1UL), ((gpio4 >> 30) & 0x1UL), ((gpio4 >> 29) & 0x1UL), ((gpio4 >> 28) & 0x1UL),
						((gpio4 >> 27) & 0x1UL), ((gpio4 >> 26) & 0x1UL), ((gpio4 >> 25) & 0x1UL), ((gpio4 >> 24) & 0x1UL),
						((gpio4 >> 23) & 0x1UL), ((gpio4 >> 22) & 0x1UL), ((gpio4 >> 21) & 0x1UL), ((gpio4 >> 20) & 0x1UL),
						((gpio4 >> 19) & 0x1UL), ((gpio4 >> 18) & 0x1UL), ((gpio4 >> 17) & 0x1UL), ((gpio4 >> 16) & 0x1UL),
						((gpio4 >> 15) & 0x1UL), ((gpio4 >> 14) & 0x1UL), ((gpio4 >> 13) & 0x1UL), ((gpio4 >> 12) & 0x1UL),
						((gpio4 >> 11) & 0x1UL), ((gpio4 >> 10) & 0x1UL), ((gpio4 >>  9) & 0x1UL), ((gpio4 >>  8) & 0x1UL),
						((gpio4 >>  7) & 0x1UL), ((gpio4 >>  6) & 0x1UL), ((gpio4 >>  5) & 0x1UL), ((gpio4 >>  4) & 0x1UL),
						((gpio4 >>  3) & 0x1UL), ((gpio4 >>  2) & 0x1UL), ((gpio4 >>  1) & 0x1UL), ((gpio4 >>  0) & 0x1UL)
				);

				/* Release bit */
				XGpio_DiscreteClear(&gpio0_SCOPE, 1U, SCOPE_MASK_GPIO0_OUT_pop);
			}
		}

		/* Prepare: turn off module */
		XGpio_DiscreteWrite(&gpio0_SCOPE, 1U, 0UL);
		xil_printf("\r\n");
#endif
#endif

#if 0
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

			pwmLedSet(pwm_bf, 0xffffffffUL);
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
	vTaskDelay(pdMS_TO_TICKS(1000));

#if 0
	while (1) {
		vTaskDelay(pdMS_TO_TICKS(1000));
	}
#endif

	for (u8 i = 0; i < XEL_MAC_ADDR_SIZE; i++) {
		emacLiteLocalMacAddr[i] = owEUI48[i];
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
	XEmacLite_SetMacAddress(emacLiteInstPtr, emacLiteLocalMacAddr);

	/* Empty any existing receive frames */
	XEmacLite_FlushReceive(emacLiteInstPtr);

	while (1) {
#if 0
		/* Block to wait for data arriving on the queue. */
		xQueueReceive( 	xQueue,				/* The queue being read. */
						Recdstring,	/* Data is read into this address. */
						portMAX_DELAY );	/* Wait without a timeout for data. */

		/* Print the received data. */
#ifdef LOGGING
		xil_printf( "Rx task received string from Tx task: %s\r\n", Recdstring );
#endif
		RxtaskCntr++;
#endif

		/* Wait for a Receive packet */
		while (!emacLiteRxFrameLength) {
			vTaskDelay(pdMS_TO_TICKS(20UL));
			//pwmLedSet(0x00ff0000UL, 0x00ff0000UL);
			emacLiteRxFrameLength = XEmacLite_Recv(emacLiteInstPtr, (u8*) emacLiteRxFrame);
			//pwmLedSet(0x00000000UL, 0x00ff0000UL);
		}

		/* Process the Receive frame */
		//pwmLedSet(0x0000ff00UL, 0x0000ff00UL);
		ethProcessRecvFrame(emacLiteInstPtr);
		emacLiteRxFrameLength = 0UL;
		//pwmLedSet(0x00000000UL, 0x0000ff00UL);
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
#ifdef LOGGING
		xil_printf("FreeRTOS Hello World Example FAILED");
#endif
	}

	/* If the RxtaskCntr is updated every time the Rx task is called. The
	 Rx task is called every time the Tx task sends a message. The Tx task
	 sends a message every 1 second.
	 The timer expires after 10 seconds. We expect the RxtaskCntr to at least
	 have a value of 9 (TIMER_CHECK_THRESHOLD) when the timer expires. */
#ifdef LOGGING
	if (RxtaskCntr >= TIMER_CHECK_THRESHOLD) {
		xil_printf("Successfully ran FreeRTOS Hello World Example");
	} else {
		xil_printf("FreeRTOS Hello World Example FAILED");
	}
#endif

	vTaskDelete(thEth);
	vTaskDelete(thDflt);
}
#endif