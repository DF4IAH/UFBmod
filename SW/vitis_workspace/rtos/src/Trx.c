/***************************** Include Files *********************************/

/* FreeRTOS includes */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"

/* Xilinx includes */
#include "xparameters.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xiic.h"

#include "externals.h"

#include "Trx.h"


/*-----------------------------------------------------------*/

void taskTrx(void* pvParameters)
{
	vTaskDelay(pdMS_TO_TICKS(1000));

	/* Init I2C to PLL chip */
	{
		/* Check for PLL chip */
		if (XIic_CheckIsBusBusy(IIC_PLL_BASE_ADDRESS)) {
			u8 val = 0U;
			if (XST_SUCCESS == iicRead(IIC_PLL_BASE_ADDRESS, IIC_PLL_ONCHIP_ADDRESS, 0x00U, &val)) {
				xil_printf("\r\nTaskTrx: Read version of PLL chip: 0x%02X\r\n", val);
			}
		} else {
			xil_printf("\r\nTaskTrx: *** I2C bus locked!\r\n");
		}

	}

	/* Check version of TRX chip */
	{

	}

	while (1) {


		vTaskDelay(pdMS_TO_TICKS(1000));
	}
}
