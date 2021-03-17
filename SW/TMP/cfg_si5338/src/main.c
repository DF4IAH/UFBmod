/******************************************************************************
* Copyright (C) 2002 - 2020 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
* @file xgpio_low_level_example.c
*
* This file contains a design example using the General Purpose I/O (GPIO) low
* level driver and hardware device. It only uses a channel 1 of a GPIO device.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date	 Changes
* ----- ---- -------- -----------------------------------------------
* 1.00b jhl  04/29/02 First release
* 2.00a jhl  12/30/02 Addition of dual channel capability
* 2.00a sv   04/18/05 Minor changes to comply to Doxygen and coding guidelines
* 3.00a ktn  11/21/09 Removed the macros XGpio_mSetDataDirection,
*		      XGpio_mGetDataReg and XGpio_mSetDataReg. Users
*		      should use XGpio_WriteReg/XGpio_ReadReg to achieve the
*		      same functionality.
* 4.1   lks  11/18/15 Updated to use canonical xparameters and
*		      clean up of the comments and code for CR 900381
* 4.3   ms   01/23/17 Added xil_printf statement in main function to
*                     ensure that "Successfully ran" and "Failed" strings
*                     are available in all examples. This is a fix for
*                     CR-965028.
*4.5    sne  06/12/19 Fixed IAR compiler warning.
*
* </pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

#include <sleep.h>
#include "xparameters.h"
#include "xgpio_l.h"
#include "xiic.h"
#include "xil_io.h"

#include "Si5338-RevB-Registers.h"


/************************** Constant Definitions *****************************/

#define GPO_SDA 	0x00000001UL 	/* Bit banging interface: SDA */
#define GPO_SCL 	0x00000002UL 	/* Bit banging interface: SCL */
#define GPO_RESET 	0x80000000UL 	/* Reset line for the main processor system */


/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define GPIO_REG_BASEADDR	XPAR_CFG_SI5338_CFG_SI5338_AXI_GPIO_0_BASEADDR

#define GPO_CHANNEL	1
#define GPI_CHANNEL	2


/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define IIC_BASE_ADDRESS	XPAR_CFG_SI5338_CFG_SI5338_AXI_IIC_0_BASEADDR

/*
 * The following constant defines the address of the IIC Slave device on the
 * IIC bus. Note that since the address is only 7 bits, this constant is the
 * address divided by 2.
 */
#define SI5338_ADDRESS	0x70

/*
 * The page size determines how much data should be written at a time.
 */
#define PAGE_SIZE	8


/**************************** Type Definitions *******************************/

/*
 * The AddressType for the Si5338 is 8 bits.
 */
typedef u8 AddressType;


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/

static int IicLowLevelSi5338(void);
static unsigned int iicRead(UINTPTR baseAddr, u8 iicChipAddr, u8 iicRegister, u8* getValue);
static unsigned int iicReadAndModify(UINTPTR baseAddr, u8 iicChipAddr, u8 iicRegister, u8 setValue, u8 readMask);


/************************** Variable Definitions *****************************/

u8 sr_writeBuffer[PAGE_SIZE];	  	/* Write buffer for writing a page */
u8 sr_readBuffer[PAGE_SIZE];	  	/* Read buffer for reading a page */

u8 Si5338IicAddr;		  		/* Variable for storing Si5338 PLL I2C address */


/*****************************************************************************/
/**
* The purpose of this function is to illustrate how to use the GPIO low level
* driver to turn on and off an LED.
*
* @param	None
*
* @return	Always 0
*
* @note
* The main function is returning an integer to prevent compiler warnings.
*
******************************************************************************/
int main()
{
	int Status;

	/* Prepare GPO output settings */
	XGpio_WriteReg((GPIO_REG_BASEADDR),
		((GPO_CHANNEL - 1U) * XGPIO_CHAN_OFFSET) + XGPIO_DATA_OFFSET,
		(GPO_SCL | GPO_SDA));

	/*
	 * Set the output direction for the GPO output
	 */
	XGpio_WriteReg((GPIO_REG_BASEADDR),
			((GPO_CHANNEL - 1U) * XGPIO_CHAN_OFFSET) + XGPIO_TRI_OFFSET,
			0UL);

	/*
	 * Set the input direction for the GPI input
	 */
	XGpio_WriteReg((GPIO_REG_BASEADDR),
			((GPI_CHANNEL - 1U) * XGPIO_CHAN_OFFSET) + XGPIO_TRI_OFFSET,
			(~0UL));

	do {
		/* Delay 1 ms */
		usleep(1000UL);

		/* I2C data transport to the external Si5338 PLL */
		Status = IicLowLevelSi5338();
		if (Status != XST_SUCCESS) {
			break;
		}

#if 1
		{
#define QSPI_BUF_SIZE  256

			u8 qspi_readbuf[QSPI_BUF_SIZE] = { 0 };

			/* Register programming QSPI-device */
			volatile u32* qspi_addr_SRR	 		= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x40);
			volatile u32* qspi_addr_SPICR	 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x60);
			volatile u32* qspi_addr_SPISR	 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x64);
			volatile u32* qspi_addr_SPIDTR	 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x68);
			volatile u32* qspi_addr_SPIDRR	 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x6c);
			volatile u32* qspi_addr_SPISSR	 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x70);
			volatile u32* qspi_addr_TX_OCCU 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x74);
			volatile u32* qspi_addr_RX_OCCU 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x78);

			volatile u32* qspi_addr_DGIER	 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x1c);
			volatile u32* qspi_addr_IPISR	 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x20);
			volatile u32* qspi_addr_IPIER	 	= (u32*) (XPAR_CFG_SI5338_CFG_SI5338_AXI_QUAD_SPI_0_BASEADDR + 0x28);


			//volatile u32* gpio_addr_GPIO_DATA   = (u32*) (XPAR_GPIO_8_BASEADDR + 0x00);  // XPAR_PWM_LIGHTS_AXI_PWM_GPIO_0_DEVICE_ID

#if 1
			/* Reset */
			*qspi_addr_SRR		= 0x0000000aUL;
#endif

			/* Preparations: Master inhibit + FIFO reset (PG153 p106) */
			*qspi_addr_SPICR	= 0x000001e6UL;								// DBG_out <= "00010001";

			/* Preparations: Select de-assert */
			*qspi_addr_SPISSR 	= 0x00000001UL;								// DBG_out <= "00011100";

			/* Enable DTR empty interrupt */
			*qspi_addr_IPIER 	= 0x00000004UL;								// DBG_out <= "00011101";

			/* Enable global interrupt */
			*qspi_addr_DGIER 	= 0x80000000UL;								// DBG_out <= "00011110";

			/* Read command */
			*qspi_addr_SPIDTR	= 0x0000006cUL;								// DBG_out <= "00100001";	// Single: 0x13U // Quad: 0x6cU
			*qspi_addr_SPIDTR	= 0x00000000UL;								// DBG_out <= "00100010";
			*qspi_addr_SPIDTR	= 0x00000080UL;								// DBG_out <= "00100011";
			*qspi_addr_SPIDTR	= 0x00000000UL;								// DBG_out <= "00100100";
			*qspi_addr_SPIDTR	= 0x00000000UL;
			for (int ii = 0; ii < (QSPI_BUF_SIZE - 11); ii++) {				// DBG_out <= "00100101";	// Response buffer
				*qspi_addr_SPIDTR	= 0x00000000UL;							// DBG_out <= "00100110";
			}

			/* Issue chip select */
			*qspi_addr_SPISSR 		= 0x00000000UL;							// DBG_out <= "00101000";

			/* Enable master transaction */
			*qspi_addr_SPICR   	    = 0x00000086UL;							// DBG_out <= "00101001";

#if 0
			/* Wait until pspi_intr is going hi */							// DBG_out <= "00101010";
			while (0)														// DBG_out <= "00101011";
				;

#else
			/* SPI communication runs until TX buffer empty */
			while (!(*qspi_addr_SPISR & 0x00000004UL))
				;
#endif

			/* Deassert chip select */
			*qspi_addr_SPISSR	= 0x00000001UL;								// DBG_out <= "00101100";

			/* Disable master transaction */
			*qspi_addr_SPICR	= 0x00000186UL;								// DBG_out <= "00101101";

			/* Read SPIDRR */
			int dropCtr = 9;												// DBG_out <= "00101110";
			int idx 	= 0;
			while (!(*qspi_addr_SPISR & 0x00000001UL)) {					// DBG_out <= "00101111";
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

		/* Release the reset line of the main MB system */
		XGpio_WriteReg((GPIO_REG_BASEADDR),
			((GPO_CHANNEL - 1U) * XGPIO_CHAN_OFFSET) + XGPIO_DATA_OFFSET,
			(GPO_RESET | GPO_SCL | GPO_SDA));

	} while (0);

	/* Loop for ever */
	while (1) {
		mb_sleep();
	}
}


int IicLowLevelSi5338(void)
{
#if 0
	static u8 s_pad = 0U;
	static unsigned int status = 0U;

	/* Check read from PLL chip */
	for (u16 idx = 0000U; idx < NUM_REGS_MAX; ++idx) {
		u8 iicRegister 	= Reg_Store[idx].Reg_Addr;

		status = iicRead(IIC_BASE_ADDRESS, SI5338_ADDRESS, iicRegister, &s_pad);
		(void) status;

		asm volatile ("nop              \n\t");
	}

	asm volatile ("nop              \n\t");

	while (1)
		;
#endif

	/* Disable outputs */
	if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 230U, 0x10U, 0x10U) != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	/* Pause LOL*/
	if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 241U, 0x80U, 0x80U) != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	/* Register Map from Si5338 ClockBuilder tool */
	for (u16 idx = 0000U; idx < NUM_REGS_MAX; ++idx) {
		if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, Reg_Store[idx].Reg_Addr, Reg_Store[idx].Reg_Val, Reg_Store[idx].Reg_Mask) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}
	}

	/* Validate input clock status */
	while (1) {
		static u8 value = 0U;

		if (iicRead(IIC_BASE_ADDRESS, SI5338_ADDRESS, 218U, &value) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}
		value &= 0x05U;

		if (!value) {
			break;
		}

		/* Delay some time not hammering the I2C bus */
		usleep(1000UL);
	}

	/* Locking of PLL */
	if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 49U, 0x00U, 0x80U) != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 246U, 0x02U, 0x02U) != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	/* Wait 25 ms */
	usleep(25000UL);

	/* Restart LOL */
	if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 241U, 0x00U, 0x80U) != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	/* Set for non-preprogrammed device */
	if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 241U, 0x65U, 0xffU) != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	/* Wait until PLL locked  */
	while (1) {
		static u8 value = 0U;

		if (iicRead(IIC_BASE_ADDRESS, SI5338_ADDRESS, 218U, &value) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}
		value &= ~0xeaU;

		if (!value) {
			break;
		}

		/* Delay some time not hammering the I2C bus */
		usleep(1000UL);
	}

	/* Copy FCAL values */
	{
		static u8 value = 0U;

		if (iicRead(IIC_BASE_ADDRESS, SI5338_ADDRESS, 237U, &value) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}
		value &= 0x03;
		if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 47U, value, 0x03U) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}

		if (iicRead(IIC_BASE_ADDRESS, SI5338_ADDRESS, 236U, &value) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}
		if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 46U, value, 0xffU) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}

		if (iicRead(IIC_BASE_ADDRESS, SI5338_ADDRESS, 235U, &value) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}
		if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 45U, value, 0xffU) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}

		if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 47U, 0x14U, 0xfcU) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}

		if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 49U, 0x80U, 0x80U) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}
	}

	/* Down-spread */
	if (0) {
		if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 226U, 0x04U, 0x04U) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}

		/* Delay 1 ms */
		usleep(1000UL);

		if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 226U, 0x00U, 0x04U) != XST_SUCCESS)
		{
			return XST_FAILURE;
		}
	}

	/* Enable outputs */
	{
		if (iicReadAndModify(IIC_BASE_ADDRESS, SI5338_ADDRESS, 230U, 0x00U, 0x10U) != XST_SUCCESS)
		{
			return XST_FAILURE;
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
	sr_writeBuffer[0] = iicRegister;
	sr_writeBuffer[1] = accu;

	/* Write register */
	unsigned int byteCount = XIic_Send(baseAddr, iicChipAddr, sr_writeBuffer, 2U, XIIC_STOP);
	if (!byteCount) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
