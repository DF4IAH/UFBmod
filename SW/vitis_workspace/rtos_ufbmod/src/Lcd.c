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
#include "xiic.h"
#include "xgpio.h"

#include "Lcd.h"


/************************** Constant Definitions *****************************/

/*
 * The page size determines how much data should be written at a time.
 */
#define PAGE_SIZE	8


/************************** Variable Definitions *****************************/

extern XGpio gpio_PWM_Lights;

u8 WriteBuffer[PAGE_SIZE];	  	/* Write buffer for writing a page */
u8 sr_readBuffer[PAGE_SIZE];	  	/* Read buffer for reading a page */


/*-----------------------------------------------------------*/

unsigned int iicRead(UINTPTR baseAddr, u8 iicChipAddr, u8 iicRegister, u8* getValue)
{
	Xil_AssertNonvoid(getValue);

	/* Read the number of bytes at the specified address from the Si5338 */
	unsigned int byteCount;
	byteCount = XIic_Send(baseAddr, iicChipAddr, &iicRegister, 1U, XIIC_REPEATED_START);
	if (!byteCount) {
		return XST_FAILURE;
	}
	byteCount = XIic_Recv(baseAddr, iicChipAddr, sr_readBuffer, 1U, XIIC_STOP);
	if (!byteCount) {
		return XST_FAILURE;
	}

	/* Data enters target variable */
	*getValue = sr_readBuffer[0];
	return XST_SUCCESS;
}

unsigned int iicReadAndModify(UINTPTR baseAddr, u8 iicChipAddr, u8 iicRegister, u8 setValue, u8 readMask)
{
	/* Short-cut for unmodified entries */
	if (!setValue && !readMask) {
		return XST_SUCCESS;
	}

	/* Read the number of bytes at the specified address from the Si5338 */
	u8 accu = 0U;
	if (iicRead(baseAddr, iicChipAddr, iicRegister, &accu) == XST_FAILURE) {
		return XST_FAILURE;
	}

	/* Mask current data */
	accu &= (~readMask);

	/* Overlay with new data */
	accu |= (setValue & readMask);

	/* Prepare write buffer */
	WriteBuffer[0] = iicRegister;
	WriteBuffer[1] = accu;

	/* Write register */
	unsigned int byteCount = XIic_Send(baseAddr, iicChipAddr, WriteBuffer, 2U, XIIC_STOP);
	if (!byteCount) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

u8 lcdTextWrite(u8 row, u8 col, u8 strLen, const char* strBuf)
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


unsigned int lcdInit(void)
{
	/* Pull and release reset line of the LCD */
	{
		const u32 pwmLights_gpio2_prev  	= XGpio_DiscreteRead(&gpio_PWM_Lights, 2U);
		const u32 pwmLights_gpio2_lcd_rstn  = pwmLights_gpio2_prev & ~0x01UL;
		const u32 pwmLights_gpio2_lcd_actv  = pwmLights_gpio2_prev |  0x01UL;

#ifdef LOGGING
		xil_printf("LCD reset: rstn --> actv\r\n");
#endif

		XGpio_DiscreteWrite(&gpio_PWM_Lights, 2U, pwmLights_gpio2_lcd_rstn);
		vTaskDelay(pdMS_TO_TICKS(10));

		XGpio_DiscreteWrite(&gpio_PWM_Lights, 2U, pwmLights_gpio2_lcd_actv);
		vTaskDelay(pdMS_TO_TICKS(50));
	}

#ifdef LOGGING
	xil_printf("IIC LCD Addr = 0x%02x --> ", IIC_LCD_ONCHIP_ADDRESS);
#endif

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
				0x80U, 0x77U,			/* 							Contrast: LSB 36 of [0..63] */
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

#ifdef LOGGING
		xil_printf(".\r\n");
#endif
	}
	return XST_SUCCESS;
}