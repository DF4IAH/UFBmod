/***************************** Include Files *********************************/
#include "xgpio.h"


//#define OW_TEST_DELAYLOOP																		/* Initial set-up of delay loop */

#ifdef OW_TEST_DELAYLOOP
#include "FreeRTOS.h"
#include "task.h"
#endif


#define EUI48_SIZE					6															/* EUI48 size in Bytes */


/************************** Static Forward Declarations **********************/

static void ow_waitQuarts(u8 quarts);
static void ow_send(u8 bit);
static u8   ow_checkSak(void);
static void ow_dropSak(void);
static u8 ow_readDataBit(void);
static u8 ow_readDataByte(void);


/************************** Global Variable Definitions **********************/

//XEmacLite emacLiteInstance;																	/* Instance of the EmacLite driver */

u8 owEUI48[EUI48_SIZE];

/************************** Static Eth.c Variable Definitions ****************/

static XGpio gpio_OnewireEUI48;																	/* EUI48 device */

#ifdef OW_TEST_DELAYLOOP
static XGpio ow_gpio_PWM_Lights;																/* Local instance - PWM Lights */
#endif


/*****************************************************************************/


/************************** Functions ****************************************/

/* Onewire Delay: one quart equals to 25 us = 2500 cycles */
static void ow_waitQuarts(u8 quarts)
{
	const u8 loopCtr = quarts * (u8)10U;

	for (u8 loopIdx = loopCtr; loopIdx; --loopIdx)
		;
}

static void ow_send(u8 bit)
{
	switch (bit)
	{
	default:
	case 0:
		XGpio_DiscreteSet(&gpio_OnewireEUI48, 1U, 0x00000001UL);
		ow_waitQuarts(2);
		XGpio_DiscreteClear(&gpio_OnewireEUI48, 1U, 0x00000001UL);
		ow_waitQuarts(2);
		break;

	case 1:
		XGpio_DiscreteClear(&gpio_OnewireEUI48, 1U, 0x00000001UL);
		ow_waitQuarts(2);
		XGpio_DiscreteSet(&gpio_OnewireEUI48, 1U, 0x00000001UL);
		ow_waitQuarts(2);
		break;
	}
}

static u8 ow_checkSak(void)
{
	u8 ow_sak1, ow_sak2;

	XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xffffffffUL);  // ow-bit: input
	ow_waitQuarts(1);	/* 25 us */
	ow_sak1 = XGpio_DiscreteRead(&gpio_OnewireEUI48, 1U) & 0x00000001UL;
	ow_waitQuarts(2);	/* 50 us */
	ow_sak2 = XGpio_DiscreteRead(&gpio_OnewireEUI48, 1U) & 0x00000001UL;
	ow_waitQuarts(1);	/* 25 us */

	/* Check SAK response */
	if (ow_sak1 || !ow_sak2) {
		/* No response */
		return 0xffU;
	}

	XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xfffffffeUL);  // ow-bit: output
	return 0U;
}

static void ow_dropSak(void)
{
	XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xffffffffUL);  // ow-bit: input
	ow_waitQuarts(4);	/* 100 us */
	XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xfffffffeUL);  // ow-bit: output
}

static u8 ow_readDataBit(void)
{
	u8 ow_bit1, ow_bit2;

	ow_waitQuarts(1);	/* 25 us */
	ow_bit1 = XGpio_DiscreteRead(&gpio_OnewireEUI48, 1U) & 0x00000001UL;
	ow_waitQuarts(2);	/* 50 us */
	ow_bit2 = XGpio_DiscreteRead(&gpio_OnewireEUI48, 1U) & 0x00000001UL;
	ow_waitQuarts(1);	/* 25 us */

	if (!ow_bit1 && ow_bit2) {
		return 1U;
	} else {
		return 0U;
	}
}

static u8 ow_readDataByte(void)
{
	u8 byte = 0U;

	XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xffffffffUL);  // ow-bit: input

	for (u8 idx = 0U; idx < 8U; idx++) {
		byte <<= 1;
		byte |= (ow_readDataBit() ?  1U : 0U);

		if (idx < 7U) {
			/* MAK */
			XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xfffffffeUL);  // ow-bit: output
			ow_send(1U);
			XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xffffffffUL);  // ow-bit: input

		} else {
			/* No-MAK */
			XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xfffffffeUL);  // ow-bit: output
			ow_send(0U);
			XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xffffffffUL);  // ow-bit: input
		}
	}

	if (ow_checkSak()) {
		return 0U;
	}

	return byte;
}

u8 owreadEUI48(void)
{
	int statusOnewireEUI48 = XGpio_Initialize(&gpio_OnewireEUI48, XPAR_AXI_ONEWIRE_GPIO_0_DEVICE_ID);
	if (statusOnewireEUI48 != XST_SUCCESS) {
		xil_printf("GPIO Onewire EUI-48 Initialization Failed\r\n");
		return 1U;
	}
	XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, ~0x00000001UL);  // 1 bit output

	/* Initial Low to High transition after POR/BOR */
	{
		XGpio_DiscreteClear(&gpio_OnewireEUI48, 1U, 0x00000001UL);
		ow_waitQuarts(1);	/* 25 us */
	}

	/* Standby Pulse */
	{
		XGpio_DiscreteSet(&gpio_OnewireEUI48, 1U, 0x00000001UL);
		ow_waitQuarts(8);	/* 200 us */
	}

	/* Start Header */
	{
		XGpio_DiscreteClear(&gpio_OnewireEUI48, 1U, 0x00000001UL);
		ow_waitQuarts(2);	/* 50 us */

		ow_send(0);
		ow_send(1);
		ow_send(0);
		ow_send(1);
		ow_send(0);
		ow_send(1);
		ow_send(0);
		ow_send(1);

		/* MAK */
		ow_send(1);

		/* NoSAK */
		ow_dropSak();


		/* Chip Address */
		{
			ow_send(1);
			ow_send(0);
			ow_send(1);
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);

			/* MAK */
			ow_send(1);

			/* SAK */
			if (ow_checkSak()) {
				return 2U;
			}
		}


		/* READ Command starting from pointer @ 0x00fa */
		{
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(1);
			ow_send(1);

			/* MAK */
			ow_send(1);

			/* SAK */
			if (ow_checkSak()) {
				return 3U;
			}


			/* MSB of 0x00fa */
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);
			ow_send(0);

			/* MAK */
			ow_send(1);

			/* SAK */
			if (ow_checkSak()) {
				return 4U;
			}


			/* LSB of 0x00fa */
			ow_send(1);
			ow_send(1);
			ow_send(1);
			ow_send(1);
			ow_send(1);
			ow_send(0);
			ow_send(1);
			ow_send(0);

			/* MAK */
			ow_send(1);

			/* SAK */
			if (ow_checkSak()) {
				return 5U;
			}


			/* Get Data */
			for (u8 pos = 0U; pos < EUI48_SIZE; pos++) {
				owEUI48[pos] = ow_readDataByte();
			}

			/* No-MAK */
			ow_send(0);

			/* NoSAK */
			ow_dropSak();
		}
	}

	/* Disable bus */
	XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0xffffffffUL);  // ow-bit: input

	return XST_SUCCESS;
}

u8 owTestDelay(void)
{
#ifdef OW_TEST_DELAYLOOP
	/* Set-up local instance of PWM Lights */
	{
		int statusPwmLights = XGpio_Initialize(&ow_gpio_PWM_Lights, XPAR_PWM_LIGHTS_AXI_PWM_GPIO_0_DEVICE_ID);
		if (statusPwmLights != XST_SUCCESS) {
			xil_printf("OneWire local instance of GPIO PWM Lights Initialization Failed\r\n");
			return 1U;
		}
		XGpio_SetDataDirection(&ow_gpio_PWM_Lights, 1U, 0x00000000UL);  // 32 bit output
		XGpio_SetDataDirection(&ow_gpio_PWM_Lights, 2U, 0xffffffffUL);  // 32 bit input

		/* PWM Light: Red off, Green off, Blue off */
		XGpio_DiscreteWrite(&ow_gpio_PWM_Lights, 1U, 0x00000000UL);
	}

	/* Speed-Test */
	while (1) {
		/* Emulating Write Access */
		for (u8 cnt = 8; cnt; cnt--) {
			/* PWM Light: Red on, Green off, Blue on */
			XGpio_DiscreteWrite(&ow_gpio_PWM_Lights, 1U, 0x00ff00ffUL);

			ow_waitQuarts(2);

			/* PWM Light: Red on, Green off, Blue off */
			XGpio_DiscreteWrite(&ow_gpio_PWM_Lights, 1U, 0x000000ffUL);

			ow_waitQuarts(2);

			/* End of one bit WRITE */
		}

		/* Emulating Read Access */
		for (u8 cnt = 8; cnt; cnt--) {
			/* PWM Light: Red off, Green on, Blue off */
			XGpio_DiscreteWrite(&ow_gpio_PWM_Lights, 1U, 0x0000ff00UL);

			ow_waitQuarts(1);

			/* PWM Light: Red off, Green on, Blue on */
			XGpio_DiscreteWrite(&ow_gpio_PWM_Lights, 1U, 0x00ffff00UL);

			ow_waitQuarts(2);

			/* PWM Light: Red off, Green on, Blue off */
			XGpio_DiscreteWrite(&ow_gpio_PWM_Lights, 1U, 0x0000ff00UL);

			ow_waitQuarts(1);

			/* End of one bit WRITE */
		}

		/* PWM Light: Red off, Green off, Blue off */
		XGpio_DiscreteWrite(&ow_gpio_PWM_Lights, 1U, 0x00000000UL);

		//vTaskDelay(pdMS_TO_TICKS(10));
	}

#endif

	return XST_SUCCESS;
}