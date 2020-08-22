#ifndef TRX_H
#define TRX_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

/* FreeRTOS includes */
#include "FreeRTOS.h"

#include "xparameters.h"


/***************************** Definitions ***********************************/

/* XPAR_IIC_0_DEVICE_ID  :=  XPAR_BOOT_PLL_BOOT_PLL_AXI_IIC_0_DEVICE_ID */
#define IIC_PLL_BASE_ADDRESS		XPAR_IIC_0_BASEADDR
#define IIC_PLL_ONCHIP_ADDRESS 		0x70U



/************************** Function Prototypes ******************************/




#ifdef __cplusplus
}
#endif

#endif /* TRX_H */
