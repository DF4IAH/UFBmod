#ifndef LCD_H
#define LCD_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

/* FreeRTOS includes */
#include "FreeRTOS.h"

#include "xparameters.h"


/***************************** Definitions ***********************************/

/* XPAR_IIC_1_DEVICE_ID  :=  XPAR_AXI_IIC_0_DEVICE_ID */
#define IIC_PLL_BASE_ADDRESS		XPAR_IIC_1_BASEADDR
#define IIC_PLL_ONCHIP_ADDRESS 		0x70U

/* XPAR_IIC_0_DEVICE_ID  :=  XPAR_AXI_BOARD_IIC_0_DEVICE_ID */
#define IIC_BOARD_BASE_ADDRESS		XPAR_IIC_0_BASEADDR
#define IIC_DAC_ONCHIP_ADDRESS 		0x1cU
#define IIC_DAC_BROADCAST_ADDRESS	0x2aU
#define IIC_LCD_ONCHIP_ADDRESS 		0x3eU



/************************** Function Prototypes ******************************/

u8 lcdTextWrite(u8 row, u8 col, u8 strLen, const char* strBuf);



#ifdef __cplusplus
}
#endif

#endif /* LCD_H */
