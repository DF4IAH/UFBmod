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

#include "Lcd.h"


/************************** Constant Definitions *****************************/

/*
 * The page size determines how much data should be written at a time.
 */
#define PAGE_SIZE	8


/************************** Variable Definitions *****************************/

u8 WriteBuffer[PAGE_SIZE];	  	/* Write buffer for writing a page */
u8 ReadBuffer[PAGE_SIZE];	  	/* Read buffer for reading a page */


/*-----------------------------------------------------------*/

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


unsigned int iicRead(UINTPTR baseAddr, u8 iicChipAddr, u8 iicRegister, u8* getValue)
{
	Xil_AssertNonvoid(getValue);

	/* Read the number of bytes at the specified address from the Si5338 */
	unsigned int byteCount;
	byteCount = XIic_Send(baseAddr, iicChipAddr, &iicRegister, 1U, XIIC_REPEATED_START);
	if (!byteCount) {
		return XST_FAILURE;
	}
	byteCount = XIic_Recv(baseAddr, iicChipAddr, ReadBuffer, 1U, XIIC_STOP);
	if (!byteCount) {
		return XST_FAILURE;
	}

	/* Data enters target variable */
	*getValue = ReadBuffer[0];
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