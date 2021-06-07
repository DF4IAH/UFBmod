/***************************** Include Files *********************************/
#include "xgpio.h"


//#define OW_TEST_DELAYLOOP																		/* Initial set-up of delay loop */

#ifdef OW_TEST_DELAYLOOP
#include "FreeRTOS.h"
#include "task.h"
#endif


#define EUI48_SIZE					6															/* EUI48 size in Bytes */


/************************** Static Forward Declarations **********************/


/************************** Global Variable Definitions **********************/

//XEmacLite emacLiteInstance;																	/* Instance of the EmacLite driver */

volatile u8 owEUI48[EUI48_SIZE] = { 0 };


/************************** Static Eth.c Variable Definitions ****************/

static XGpio gpio_OnewireEUI48;																	/* EUI48 device */


/*****************************************************************************/


/************************** Functions ****************************************/

u8 owreadEUI48(void)
{
	int statusOnewireEUI48 = XGpio_Initialize(&gpio_OnewireEUI48, XPAR_EUI48_AXI_EUI48_GPIO_0_DEVICE_ID);
	if (statusOnewireEUI48 != XST_SUCCESS) {
		xil_printf("GPIO Onewire EUI-48 Initialization Failed\r\n");
		return 1U;
	}

	XGpio_SetDataDirection(&gpio_OnewireEUI48, 1U, 0x7fffffffUL);  //  1 bit output (Start), 1 bit input (Running), 14 bit input (DC), 16 bit input (MSB EUI-48)
	XGpio_SetDataDirection(&gpio_OnewireEUI48, 2U, 0xffffffffUL);  // 32 bit input (LSB EUI-48)

	/* Reset EUI48 unit */
	XGpio_DiscreteClear(&gpio_OnewireEUI48, 1U, 0x8000000UL);
	while (1) {
		u32 gpio1 = XGpio_DiscreteRead(&gpio_OnewireEUI48, 1);
		if ((gpio1 & 0x40000000UL) == 0UL) {
			// Ready for new read out
			break;
		}
	}

	/* Send run */
	XGpio_DiscreteSet(&gpio_OnewireEUI48, 1U, 0x80000000UL);

	/* Wait until ready */
	while (1) {
		u32 gpio1 = XGpio_DiscreteRead(&gpio_OnewireEUI48, 1);
		if ((gpio1 & 0x40000000UL) == 0UL) {
			// Ready for new read out
			break;
		}
	}

	/* Read out */
	{
		u32 gpio1 = XGpio_DiscreteRead(&gpio_OnewireEUI48, 1);
		u32 gpio2 = XGpio_DiscreteRead(&gpio_OnewireEUI48, 2);

		owEUI48[0] = (u8) (gpio1 >>  8);
		owEUI48[1] = (u8) (gpio1 >>  0);
		owEUI48[2] = (u8) (gpio2 >> 24);
		owEUI48[3] = (u8) (gpio2 >> 16);
		owEUI48[4] = (u8) (gpio2 >>  8);
		owEUI48[5] = (u8) (gpio2 >>  0);
	}

	return XST_SUCCESS;
}