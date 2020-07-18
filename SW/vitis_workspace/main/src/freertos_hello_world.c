/*
    Copyright (C) 2017 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
    Copyright (c) 2012 - 2020 Xilinx, Inc. All Rights Reserved.
	SPDX-License-Identifier: MIT


    http://www.FreeRTOS.org
    http://aws.amazon.com/freertos


    1 tab == 4 spaces!
*/

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"

/* Xilinx includes. */
#include "xparameters.h"
#include "xgpio.h"
#include "xil_io.h"
#include "xiic.h"
#include "xil_printf.h"


#define TIMER_ID				1
#define DELAY_10_SECONDS		10000UL
#define DELAY_1_SECOND			1000UL
#define DELAY_1000_MILLISEC		1000UL
#define DELAY_100_MILLISEC		100UL
#define TIMER_CHECK_THRESHOLD	9


/* XPAR_IIC_1_DEVICE_ID  :=  XPAR_AXI_IIC_0_DEVICE_ID */
#define IIC_PLL_BASE_ADDRESS	XPAR_IIC_1_BASEADDR
#define IIC_PLL_ONCHIP_ADDRESS 	0x70

/* XPAR_IIC_0_DEVICE_ID  :=  XPAR_AXI_BOARD_IIC_0_DEVICE_ID */
#define IIC_BOARD_BASE_ADDRESS	XPAR_IIC_0_BASEADDR
#define IIC_DAC_ONCHIP_ADDRESS 	0x1C
#define IIC_LCD_ONCHIP_ADDRESS 	0x2A


/*-----------------------------------------------------------*/

/* The Tx and Rx tasks as described at the top of this file. */
static void prvTxTask( void *pvParameters );
static void prvRxTask( void *pvParameters );
static void vTimerCallback( TimerHandle_t pxTimer );
/*-----------------------------------------------------------*/

/* The queue used by the Tx and Rx tasks, as described at the top of this
file. */
static TaskHandle_t xTxTask;
static TaskHandle_t xRxTask;
static QueueHandle_t xQueue = NULL;
static TimerHandle_t xTimer = NULL;
char HWstring[15] = "Hello World";
long RxtaskCntr = 0;

/* The Instances of the GPIO Drivers */
XGpio Gpio_Rotenc;
XGpio Gpio_PWM_Lights;


int main( void )
{
	const TickType_t x10seconds = pdMS_TO_TICKS( DELAY_10_SECONDS );

	xil_printf( "Hello from Freertos example main\r\n" );

	/* Create the two tasks.  The Tx task is given a lower priority than the
	Rx task, so the Rx task will leave the Blocked state and pre-empt the Tx
	task as soon as the Tx task places an item in the queue. */
	xTaskCreate( 	prvTxTask, 					/* The function that implements the task. */
					( const char * ) "Tx", 		/* Text name for the task, provided to assist debugging only. */
					configMINIMAL_STACK_SIZE, 	/* The stack allocated to the task. */
					NULL, 						/* The task parameter is not used, so set to NULL. */
					tskIDLE_PRIORITY,			/* The task runs at the idle priority. */
					&xTxTask );

#if 0
	xTaskCreate( prvRxTask,
				 ( const char * ) "GB",
				 configMINIMAL_STACK_SIZE,
				 NULL,
				 tskIDLE_PRIORITY + 1,
				 &xRxTask );
#endif

	/* Create the queue used by the tasks.  The Rx task has a higher priority
	than the Tx task, so will preempt the Tx task and remove values from the
	queue as soon as the Tx task writes to the queue - therefore the queue can
	never have more than one item in it. */
	xQueue = xQueueCreate( 	1,						/* There is only one space in the queue. */
							sizeof( HWstring ) );	/* Each space in the queue is large enough to hold a uint32_t. */

	/* Check the queue was created. */
	configASSERT( xQueue );

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

	/* Start the tasks and timer running. */
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following line
	will never be reached.  If the following line does execute, then there was
	insufficient FreeRTOS heap memory available for the idle and/or timer tasks
	to be created.  See the memory management section on the FreeRTOS web site
	for more details. */
	for( ;; );
}


/*-----------------------------------------------------------*/
static void prvTxTask( void *pvParameters )
{
	const TickType_t ticks100ms  = pdMS_TO_TICKS(DELAY_100_MILLISEC);
	//const TickType_t ticks1000ms = pdMS_TO_TICKS(DELAY_1000_MILLISEC);
	//u8 loopIdx = 0U;

#if 1
	int statusRotenc = XGpio_Initialize(&Gpio_Rotenc, XPAR_ROTENC_DECODER_AXI_ROTENC_GPIO_0_DEVICE_ID);
	if (statusRotenc != XST_SUCCESS) {
		xil_printf("GPIO Rotenc Initialization Failed\r\n");
		return;
	}
	XGpio_SetDataDirection(&Gpio_Rotenc, 1U, 0xffffffffUL);  // 32 bit input
	XGpio_SetDataDirection(&Gpio_Rotenc, 2U, 0x0000ffffUL);  // 16 bit output - 16 bit input
#endif

#if 1
	int statusPwmLights = XGpio_Initialize(&Gpio_PWM_Lights, XPAR_PWM_LIGHTS_AXI_PWM_GPIO_0_DEVICE_ID);
	if (statusPwmLights != XST_SUCCESS) {
		xil_printf("GPIO PWM Lights Initialization Failed\r\n");
		return;
	}
	XGpio_SetDataDirection(&Gpio_PWM_Lights, 1U, 0x00000000UL);  // 32 bit output
	XGpio_SetDataDirection(&Gpio_PWM_Lights, 2U, 0xffffffffUL);  // 32 bit input
#endif

#if 1
	int ByteCount;
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

#endif

	for( ;; )
	{
		/* Delay */
		vTaskDelay(ticks100ms);

#if 1
		const u32 gpio1_ctr  = XGpio_DiscreteRead(&Gpio_Rotenc, 1U);
		const u32 gpio2_push = XGpio_DiscreteRead(&Gpio_Rotenc, 2U);
		xil_printf( "ROTENC decoder: ctr=%08lx, push=%d\r\n", gpio1_ctr, gpio2_push);
#endif

		{
#if 1
			u8  pwm_r_val 	= (u8) (0x03U & (gpio1_ctr >> 2));
			u8  pwm_g_val 	= (u8) (0x03U & (gpio1_ctr >> 4));
			u8  pwm_b_val 	= (u8) (0x03U & (gpio1_ctr >> 6));
			u8  pwm_bl_val	= (u8) (0x03U & (gpio1_ctr >> 8));

			if (!gpio2_push) {
				pwm_r_val = 0x20;
				pwm_g_val = 0x20;
				pwm_b_val = 0x20;
				pwm_bl_val = 0x20;
			}

			u32 pwm_bf    	= ((u32) pwm_bl_val << 24) | ((u32) pwm_b_val << 16) | ((u32) pwm_g_val << 8) | ((u32) pwm_r_val << 0);
#endif

#if 0
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
#endif

			XGpio_DiscreteWrite(&Gpio_PWM_Lights, 1U, pwm_bf);

#if 0
			++loopIdx;
			loopIdx &= 0x03U;
#endif
		}


		/* Send the next value on the queue.  The queue should always be
		empty at this point so a block time of 0 is used. */
#if 0
		xQueueSend( xQueue,			/* The queue being written to. */
					HWstring, /* The address of the data being sent. */
					0UL );			/* The block time. */
#endif
	}
}

/*-----------------------------------------------------------*/
static void prvRxTask( void *pvParameters )
{
char Recdstring[15] = "";

	for( ;; )
	{
		/* Block to wait for data arriving on the queue. */
		xQueueReceive( 	xQueue,				/* The queue being read. */
						Recdstring,	/* Data is read into this address. */
						portMAX_DELAY );	/* Wait without a timeout for data. */

		/* Print the received data. */
		xil_printf( "Rx task received string from Tx task: %s\r\n", Recdstring );
		RxtaskCntr++;
	}
}

/*-----------------------------------------------------------*/
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

	vTaskDelete( xRxTask );
	vTaskDelete( xTxTask );
}

