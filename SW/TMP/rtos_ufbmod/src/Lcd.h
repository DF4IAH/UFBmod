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

/* XPAR_IIC_0_DEVICE_ID  :=  XPAR_BOOT_PLL_BOOT_PLL_AXI_IIC_0_DEVICE_ID */
#define IIC_PLL_BASE_ADDRESS		XPAR_IIC_0_BASEADDR
#define IIC_PLL_ONCHIP_ADDRESS 		0x70U

/* XPAR_IIC_1_DEVICE_ID  :=  XPAR_AXI_BOARD_IIC_0_DEVICE_ID */
#define IIC_BOARD_BASE_ADDRESS		XPAR_IIC_1_BASEADDR
#define IIC_DAC_ONCHIP_ADDRESS 		0x1cU
#define IIC_DAC_BROADCAST_ADDRESS	0x2aU
#define IIC_LCD_ONCHIP_ADDRESS 		0x3eU

#define LED_RGB_MASK				0x00ffffffUL
#define LED_RGB_BLACK				0x00000000UL
#define LED_RGB_RED_DIMMED			0x00000010UL
#define LED_RGB_RED_BRIGHT			0x00000080UL
#define LED_RGB_YELLOW_DIMMED		0x00000808UL
#define LED_RGB_YELLOW_BRIGHT		0x00004040UL
#define LED_RGB_GREEN_DIMMED		0x00001000UL
#define LED_RGB_GREEN_BRIGHT		0x00008000UL
#define LED_RGB_CYAN_DIMMED			0x00080800UL
#define LED_RGB_CYAN_BRIGHT			0x00404000UL
#define LED_RGB_BLUE_DIMMED			0x00100000UL
#define LED_RGB_BLUE_BRIGHT			0x00800000UL
#define LED_RGB_PURPLE_DIMMED		0x00080008UL
#define LED_RGB_PURPLE_BRIGHT		0x00400040UL
#define LED_RGB_WHITE_DIMMED		0x00050505UL
#define LED_RGB_WHITE_BRIGHT		0x002b2b2bUL
#define LED_RGB_WHITE_FLASH			0x00ffffffUL

#define LED_LCDDISP_MASK			0xff000000UL
#define LED_LCDDISP_OFF				0x00000000UL
#define LED_LCDDISP_005				0x10000000UL
#define LED_LCDDISP_010				0x20000000UL
#define LED_LCDDISP_020				0x40000000UL
#define LED_LCDDISP_040				0x80000000UL
#define LED_LCDDISP_060				0xc0000000UL
#define LED_LCDDISP_080				0xe0000000UL
#define LED_LCDDISP_100				0xff000000UL


enum LCD_FSM_STATES {
	LCD_FSM_NOP = 0,
	LCD_FSM_INIT,
	LCD_FSM_SHOW
};

enum LCD_CM_MODES {
	LCD_CM_TOP,
	LCD_CM_UFBMOD,
	LCD_CM_HF1,
	LCD_CM_HF1_V01,
	LCD_CM_HF2,
};



/************************** Function Prototypes ******************************/

u32 lcdTextWrite(u8 row, u8 col, u8 strLen, const char* strBuf);


#ifdef __cplusplus
}
#endif

#endif /* LCD_H */
