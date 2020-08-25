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
#include "xgpio.h"
#include "xiic.h"
#include "xspi.h"		/* SPI device driver */
#include "xspi_l.h"

#include "externals.h"
#include "Lcd.h"		/* As long as I2C has no own module */

#include "Trx.h"


/************************** Constant Definitions *****************************/

/*
 *  This is the size of the buffer to be transmitted/received.
 */
#define BUFFER_SIZE			 16


/************************** Variable Definitions *****************************/

static XGpio gpio_TRX;

XSpi_Config* spiConfigPtr;	/* Pointer to Configuration data */
static XSpi  spiInstance;

/*
 * The buffer used for Transmission/Reception of the SPI data frames.
 */
u8 buffer[BUFFER_SIZE];


/*-----------------------------------------------------------*/

static u32 TrxGetIrqs(u32* irqs)
{
	u8 rf09_irqs = 0U, rf24_irqs = 0U, bbc0_irqs = 0U, bbc1_irqs = 0U;

	if (!irqs) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the IRQs: RF09_IRQS, RF24_IRQS, BBC0_IRQS, BBC1_IRQS */
	{
		const u8 frameLen = 6;
		u8 readBuf[6]  = { 0 };
		u8 writeBuf[6] = { 0 };
		writeBuf[0] = 0x00U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0000
		writeBuf[1] = 0x00U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		u32 irqWord;
		irqWord  = ((u32) readBuf[2])      ;
		irqWord |= ((u32) readBuf[3]) <<  8;
		irqWord |= ((u32) readBuf[4]) << 16;
		irqWord |= ((u32) readBuf[5]) << 24;
		*irqs = irqWord;

		rf09_irqs = readBuf[2];
		rf24_irqs = readBuf[3];
		bbc0_irqs = readBuf[4];
		bbc1_irqs = readBuf[5];
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxGetIrqs done, RF09_IRQS RF24_IRQS BBC0_IRQS BBC1_IRQS = 0x%02X 0x%02X 0x%02X 0x%02X\r\n", rf09_irqs, rf24_irqs, bbc0_irqs, bbc1_irqs);

	return XST_SUCCESS;
}

static u32 TrxBatteryGet(u8* state)
{
	if (!state) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the STATE RF_BMDVC.BMS */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x00U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0008
		writeBuf[1] = 0x08U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*state = (readBuf[2] & 0x20U) ?  0x01U : 0x00U;
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxBatteryGet done, state = 0x%02X\r\n", *state);

	return XST_SUCCESS;
}

static u32 TrxAVccGet(u8* state)
{
	if (!state) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the STATE RF09_AUXS.AVS */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x01U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0101
		writeBuf[1] = 0x01U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*state = (readBuf[2] & 0x04U) ?  0x01U : 0x00U;
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxAVccGet done, state = 0x%02X\r\n", *state);

	return XST_SUCCESS;
}

static u32 TrxPllLockedGet(u8* ls, u8* cf)
{
	if (!ls || !cf) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the STATE RF09_PLL.LS, RF09_PLLCF.CF */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x01U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0121
		writeBuf[1] = 0x21U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*ls = (readBuf[2] & 0x02U) ?  0x01U : 0x00U;
		*cf = readBuf[3];
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxPllLockedGet done, ls = 0x%02X, cf = 0x%02X\r\n", *ls, *cf);

	return XST_SUCCESS;
}

static u32 TrxIqSyncGet(u8* state)
{
	if (!state) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the STATE RF_IQIFC2.SYNC */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x00U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x000C
		writeBuf[1] = 0x0cU;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*state = (readBuf[2] & 0x80U) ?  0x01U : 0x00U;
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxIqSyncGet done, state = 0x%02X\r\n", *state);

	return XST_SUCCESS;
}

static u32 TrxStateGet(u8* state)
{
	if (!state) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the STATE */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x01U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0102
		writeBuf[1] = 0x02U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*state = readBuf[2] & 0x07U;
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxStateGet done, state = 0x%02X\r\n", *state);

	return XST_SUCCESS;
}

static u32 TrxCmdSet(u8 cmd)
{
	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Write the CMD */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x01U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0103
		writeBuf[1] = 0x03U;									// Reg-LSB
		writeBuf[2] = (u8) (cmd & 0x07U);						// CMD

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxCmdSet done, cmd = 0x%02X\r\n", cmd);

	return XST_SUCCESS;
}

static u32 TrxOperationModeSet(u8 chpm, u8 ctx, s32 pwr)
{
	u8 pacur	= 0x03U;
	u8 txpwr  	= 0x01U;

	/* Parameters */
	{
		switch (chpm)
		{
		case CHPM_RF_MODE_BBRF:
		case CHPM_RF_MODE_RF:
		case CHPM_RF_MODE_BBRF09:
		case CHPM_RF_MODE_BBRF24:
			break;

		default:
			chpm = CHPM_RF_MODE_BBRF;
		}

		if (ctx) {
			ctx = 0x01U;
		}

		/* Security - max. +18 dBm @ SAW-filter input <--> +15 dBm ANT */
		if (pwr > 11) {
			pwr = 11;
		}

		if (pwr > 14) {
			pacur 	= 0x03U;
			txpwr 	= 0x1fU;

		} else if (pwr > 10) {
			pacur 	= (u8) ((~(13 - pwr)) & 0x03U);
			txpwr 	= 0x1fU;

		} else if (pwr > -21) {
			pacur	= 0x00U;
			txpwr	= (u8) (pwr + 21);
		} else {
			pacur	= 0x00U;
			txpwr	= 0x00U;
		}
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0006 ff.: RF_CFG, RF_CLKO, RF_BMDVC, RF_XOC, RF_IQIFC0, RF_IQIFC01, RF_IQIFC02 */
	{
		const u8 frameLen = 8;
		u8 readBuf[8]  = { 0 };
		u8 writeBuf[8] = { 0 };
		writeBuf[0] = 0x00U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0006
		writeBuf[1] = 0x06U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		writeBuf[0] = 0x00U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0006
		writeBuf[1] = 0x06U;									// Reg-LSB
		writeBuf[2] = ((readBuf[2] & 0x00U) | (0x0aU << 0));	// RF_CFG		IRQMM=08, IRQP=00, DRV=01 (p19)
		writeBuf[3] = ((readBuf[3] & 0x00U) | (0x09U << 0));	// RF_CLKO		DRV=08, OS=01 26MHz (p21)
		writeBuf[4] = ((readBuf[4] & 0x1fU) | (0x00U << 0));	// RF_BMDVC		BMHR, BMVTH (p79)
		writeBuf[5] = ((readBuf[5] & 0x00U) | (0x00U << 0));	// RF_XOC		FS=00, TRIM=00 (p69)
		writeBuf[6] = ((readBuf[6] & 0x00U) | (0x12U << 0));	// RF_IQIFC0	EXTLB=00, DRV=10, CMV=00, CMV1V2=02, EEC=00 (p27)
		writeBuf[7] = ((readBuf[7] & 0x03U) | (chpm << 4));		// RF_IQIFC1	CHPM (p32)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* 0x0112 ff.: RF09_TXCUTC, RF09_TXDFE, RF09_PAC */
	{
		const u8 frameLen = 5;
		u8 readBuf[5]  = { 0 };
		u8 writeBuf[5] = { 0 };
#if 0
		writeBuf[0] = 0x01U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0112
		writeBuf[1] = 0x12U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
#endif

		writeBuf[0] = 0x01U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0112
		writeBuf[1] = 0x12U;									// Reg-LSB
		writeBuf[2] = ((readBuf[2] & 0x00U) | 0xc8U);			// RF09_TXCUTC	PARAMP=c0 32us, LPFCUT=08 500kHz (p48)
		writeBuf[3] = ((readBuf[3] & 0x00U) | 0x01U);			// RF09_TXDFE	RCUT=00, DM=00 , SR=01 4MSPS (p48)
		writeBuf[4] = ((pacur & 0x03U) << 5) | (txpwr & 0x1fU);	// RF09_PAC		PACUR, TXPWR (p49)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* 0x0109 ff.: RF09_RXBWC, RF09_RXDFE, RF09_AGCC, RF09_AGCS, RF09_RSSI, RF09_EDC, RF09_EDD, RF09_EDV  */
	{
		const u8 frameLen = 9;
		u8 readBuf[9]  = { 0 };
		u8 writeBuf[9] = { 0 };
		writeBuf[0] = 0x01U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0109
		writeBuf[1] = 0x09U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		writeBuf[0] = 0x01U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0109
		writeBuf[1] = 0x09U;									// Reg-LSB
		writeBuf[2] = ((readBuf[2] & 0x00U) | (0x0bU << 0));	// RF09_RXBWC	IFI=00, IFS=00, BW=0b (p57)
		writeBuf[3] = ((readBuf[3] & 0x00U) | (0x01U << 0));	// RF09_RXDFE	RCUT=00, SR=01 (p58)
		writeBuf[4] = ((readBuf[4] & 0x80U) | (0x01U << 0));	// RF09_AGCC	AGCI=00, AVGS=00, RST=00, FRZC=00, EN=01 (p59)
		writeBuf[5] = ((readBuf[5] & 0x1fU) | (0x60U << 0));	// RF09_AGCS	TGT=60 (p60)
		writeBuf[6] = ((readBuf[6] & 0x00U) | (0x00U << 0));	// RF09_RSSI	(p60)
		writeBuf[7] = ((readBuf[7] & 0x00U) | (0x00U << 0));	// RF09_EDC	EDM=00 (p60)
		writeBuf[8] = ((readBuf[8] & 0x00U) | (0x48U << 0));	// RF09_EDD	DF=40, DTB=08 (p61)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* 0x0101: RF09_AUXS */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x01U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0101
		writeBuf[1] = 0x01U;									// Reg-LSB
		writeBuf[2] = 0x22U;									// RF09_AUXS	EXTLNABYP=00, AGCMAP=20, AVEXT=00, AVEN=00, PAVC=02  (p72)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* 0x0116: RF09_PADFE */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x01U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0116
		writeBuf[1] = 0x16U;									// Reg-LSB
		writeBuf[2] = 0x40U;									// RF09_PADFE	PADFE=40  (p73)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* 0x0301 ff.: BBC0_PC */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
#if 0
		writeBuf[0] = 0x03U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0301
		writeBuf[1] = 0x01U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
#endif

		writeBuf[0] = 0x03U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0301
		writeBuf[1] = 0x01U;									// Reg-LSB
		writeBuf[2] = 0x55U | (ctx << 7);						// BBC0_PC	FCSFE=40, TXAFCS=10, FCST=00, BBEN=04, PT=01 (p84)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxOperationModeSet done\r\n");

	return XST_SUCCESS;
}

static u32 TrxCtxSet(u8 ctx)
{
	/* Parameters */
	{
		if (ctx) {
			ctx = 0x01U;
		}
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0301 ff.: BBC0_PC */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x03U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0301
		writeBuf[1] = 0x01U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		writeBuf[0] = 0x03U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0301
		writeBuf[1] = 0x01U;									// Reg-LSB
		writeBuf[2] = ((readBuf[2] & 0x7fU) | (ctx << 7));		// BBC0_PC	CTX (p84)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxCtxSet done, ctx = %d\r\n", ctx);

	return XST_SUCCESS;
}

static u32 TrxDacCwSet(u8 enable)
{
	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0127 ff.: RF09_TXDACI, RF09_TXDACQ */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x01U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0127
		writeBuf[1] = 0x27U;									// Reg-LSB

		if (enable) {
			writeBuf[2] = (0x80U | 0x7eU);							// RF09_TXDACI	ENTXDAC ID=80, TXDACID=7e  (p223)
			writeBuf[3] = (0x80U | 0x3fU);							// RF09_TXDACQ	ENTXDAC QD=80, TXDACQD=3f  (p223)
		} else {
			writeBuf[2] = (0x00U | 0x3fU);							// RF09_TXDACI	ENTXDAC ID=00, TXDACID=00  (p223)
			writeBuf[3] = (0x00U | 0x3fU);							// RF09_TXDACQ	ENTXDAC QD=00, TXDACQD=00  (p223)
		}

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxDacCwSet done, enable = %d\r\n", (enable ?  1 : 0));

	return XST_SUCCESS;
}


static u32 TrxFreqSet(u32 frequencyHz_mode2)
{
	u64 calc;

	if (((FREQ_SAWFILT_MIN - 1000000UL) <= frequencyHz_mode2) && (frequencyHz_mode2 <= (FREQ_SAWFILT_MAX + 1000000UL))) {
		/*  Fine resolution channel scheme mode 2 - 0x0104 ff. */
		calc = frequencyHz_mode2 - TRX_FRCS_MODE2_OFS;
		calc <<= 16;
		calc /= TRX_FRCS_MODE2_DIV;

		Xil_AssertNonvoid(126030 <= calc);
		Xil_AssertNonvoid(calc   <= 1340967);

		const u8 frameLen = 7;
		u8 readBuf[7]  = { 0 };
		u8 writeBuf[7] = { 0 };
		writeBuf[0] = 0x01U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0104
		writeBuf[1] = 0x04U;									// Reg-LSB
		writeBuf[2] = 0x06U;									// RF09_CS = 6x 25 kHz = 150 kHz  (p64 ff.)
		writeBuf[3] = (u8) ((calc >>  8) & 0xffULL);			// RF09_CCF0L	Middle
		writeBuf[4] = (u8) ((calc >> 16) & 0xffULL);			// RF09_CCF0H	Hi
		writeBuf[5] = (u8) ( calc        & 0xffULL);			// RF09_CNL 	Lo
		writeBuf[6] = (0x02U << 6) | ((u8) ((calc >> 24) & 0x01ULL));	// RF09_CNH 	Mode2

		/* Start the SPI driver so that the device is enabled */
		XSpi_Start(&spiInstance);

		/* Disable Global interrupt to use polled mode operation */
		XSpi_IntrGlobalDisable(&spiInstance);

		/* Transmit the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		/* Stop the SPI driver */
		XSpi_Stop(&spiInstance);

		xil_printf("TaskTrx: RF09 - frequency set to %ld Hz\r\n", frequencyHz_mode2);

		return XST_SUCCESS;
	}

	/* Out of band */
	return XST_FAILURE;
}

static u32 TrxTxFlSet(u16 txFlCount)
{
	/* Parameter */
	{
		if (!txFlCount) {
			txFlCount = 1U;

		} else if (txFlCount > 2047U) {
			txFlCount = 2047U;
		}
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0306 ff.: BBC0_TXFLL, BBC0_TXFLH */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x03U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0306
		writeBuf[1] = 0x06U;									// Reg-LSB
		writeBuf[2] = (u8)  (txFlCount        & 0xffU);			// BBC0_TXFLL
		writeBuf[3] = (u8) ((txFlCount >>  8) & 0x07U);			// BBC0_TXFLH

		/* Transmit the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxTxFlSet done with BBC0_TXFL = %d\r\n", txFlCount);

	return XST_SUCCESS;
}

static u32 TrxFblGet(u16* level)
{
	if (!level) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0308 f.: BBC0_FBLL, BBC0_FBLH */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x03U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0308
		writeBuf[1] = 0x08U;									// Reg-LSB

		/* Transmit the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		u16 word = (((u16) readBuf[3]) << 8) | ((u16) readBuf[2]);
		*level = word;
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxFblGet done, returned level = 0x%04X\r\n", *level);

	return XST_SUCCESS;
}

static u32 TrxFbliSet(u16 level)
{
	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0308 f.: BBC0_FBLIL, BBC0_FBLIH */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x03U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x030a
		writeBuf[1] = 0x0aU;									// Reg-LSB
		writeBuf[2] = (u8)  (level        & 0xffU);				// BBC0_FBLL
		writeBuf[3] = (u8) ((level >>  8) & 0x07U);				// BBC0_FBLH

		/* Transmit the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxFbliSet done, level = 0x%04X\r\n", level);

	return XST_SUCCESS;
}

static u32 TrxTxFrameBufSet(u16 len, u8* txFrameBufTemplate)
{
	if (!len || len > 2047U) {
		return XST_FAILURE;
	}

	TrxTxFlSet(len);

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	for (u16 lenIdx = 0U; lenIdx < min((BUFFER_SIZE >> 1), (len - lenIdx)); lenIdx += min((BUFFER_SIZE >> 1), (len - lenIdx))) {
		u8 readBuf[BUFFER_SIZE]  = { 0 };
		u8 writeBuf[BUFFER_SIZE] = { 0 };
		writeBuf[0] = (u8) (((lenIdx >> 8) & 0x07U) | 0x80U);	// Reg-MSB with Write CMD
		writeBuf[1] = (u8) (  lenIdx       & 0xffU);			// Reg-LSB

		for (u8 fillIdx = 0U; fillIdx < min((BUFFER_SIZE >> 1), (len - lenIdx)); ++fillIdx) {
			writeBuf[2 + fillIdx] = *(txFrameBufTemplate + lenIdx + fillIdx);
		}

		/* Transmit the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, 2U + (BUFFER_SIZE >> 1));
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	return XST_SUCCESS;
}


/*-----------------------------------------------------------*/

void taskTrx(void* pvParameters)
{
	vTaskDelay(pdMS_TO_TICKS(500));

	/* DAC pull voltage */
	{
		u32 ByteCount;
		u8 iicData[3] = { 0 };

		/* Write DAC data */
		xil_printf("TaskTrx: I2C write DAC Addr = 0x%02x --> ", IIC_DAC_ONCHIP_ADDRESS);

		u16 StatusReg = XIic_ReadReg(IIC_BOARD_BASE_ADDRESS, XIIC_SR_REG_OFFSET);
		if(!(StatusReg & XIIC_SR_BUS_BUSY_MASK)) {
			iicData[0]	= 0x01U;  // command: DAC_latch & CODE register
			iicData[1]	= 0x82U;  //0x7fU;  // MSB
			iicData[2]	= 0xa0U;  //0x30U;  // LSB
			ByteCount 	= 3;
			ByteCount = XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_DAC_ONCHIP_ADDRESS, (u8*) &iicData, ByteCount, XIIC_STOP);
			xil_printf("written data cnt = %d\r\n", ByteCount);
		}

#if 0
		/* Read DAC data */
		xil_printf("TaskTrx: I2C read DAC Addr = 0x%02x --> ", IIC_DAC_ONCHIP_ADDRESS);

		u16 StatusReg = XIic_ReadReg(IIC_BOARD_BASE_ADDRESS, XIIC_SR_REG_OFFSET);
		if(!(StatusReg & XIIC_SR_BUS_BUSY_MASK)) {
			iicData[0]	= 0x01;
			ByteCount 	= 1;
			ByteCount = XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_DAC_ONCHIP_ADDRESS, (u8*) &iicData, ByteCount, XIIC_REPEATED_START);

			iicData[0]	= 0x00U;
			iicData[1]	= 0x00U;
			ByteCount = XIic_Recv(IIC_BOARD_BASE_ADDRESS, IIC_DAC_ONCHIP_ADDRESS, (u8*) &iicData, 2, XIIC_STOP);
			if (ByteCount) {
				xil_printf("read: data cnt = %d, data[0] = 0x%02x, data[1] = 0x%02x\r\n", ByteCount, iicData[0], iicData[1]);
			} else {
				xil_printf("read: *** no data.\r\n");
			}
		}
#endif
	}

	/* Init I2C to PLL chip */
	{
		/* Check for PLL chip */
		u32 StatusReg = XIic_ReadReg(IIC_PLL_BASE_ADDRESS, XIIC_SR_REG_OFFSET);
		if (!(StatusReg & XIIC_SR_BUS_BUSY_MASK)) {
			u8 val = 0U;
			if (XST_SUCCESS == iicRead(IIC_PLL_BASE_ADDRESS, IIC_PLL_ONCHIP_ADDRESS, 0x00U, &val)) {
				xil_printf("TaskTrx: Read version of PLL chip: 0x%02X (0x00 = 'A', 0x01 = 'B')\r\n", val);

			} else {
				xil_printf("TaskTrx: *** I2C read operation failed\r\n");
				return /*XST_FAILURE*/;
			}
		} else {
			xil_printf("TaskTrx: *** I2C bus locked!\r\n");
			return /*XST_FAILURE*/;
		}
	}

	/* Init TRX-GPIO */
	{
		int statusTrx = XGpio_Initialize(&gpio_TRX, XPAR_TRX_TRX_CONFIG_AXI_TRX_GPIO_0_DEVICE_ID);
		if (statusTrx != XST_SUCCESS) {
			xil_printf("TaskTrx: *** GPIO TRX Initialization Failed\r\n");
			return /*XST_FAILURE*/;
		}
		XGpio_SetDataDirection(&gpio_TRX, 1U, 0x00000000UL);  	// 32 bit output

		XGpio_DiscreteWrite(   &gpio_TRX, 1U, 0x00000000UL);	// RFX1010_MODE Lo-Mode (Bit 1), Enable TRX_RESETN (Bit 0)
		vTaskDelay(pdMS_TO_TICKS(10));
		XGpio_DiscreteWrite(   &gpio_TRX, 1U, 0x00000001UL);	// RFX1010_MODE Lo-Mode (Bit 1), Disable TRX_RESETN (Bit 0)
		vTaskDelay(pdMS_TO_TICKS(10));
	}

	/* Init SPI */
	{
		/* Set up the device in loopback mode and enable master mode */
		spiConfigPtr = XSpi_LookupConfig(XPAR_TRX_TRX_CONFIG_TRX_AXI_QUAD_SPI_0_DEVICE_ID);
		if (spiConfigPtr == NULL) {
			return /*XST_DEVICE_NOT_FOUND*/;
		}

		int status = XSpi_CfgInitialize(&spiInstance, spiConfigPtr, spiConfigPtr->BaseAddress);
		if (status != XST_SUCCESS) {
			xil_printf("TaskTrx: *** SPI init error 1\r\n");
			return /*XST_FAILURE*/;
		}

		/* Set the SPI device as a master */
		status = XSpi_SetOptions(&spiInstance, XSP_MASTER_OPTION);
		if (status != XST_SUCCESS) {
			xil_printf("TaskTrx: *** SPI init error 2\r\n");
			return /*XST_FAILURE*/;
		}

		/* Set the one and only select line during access */
		XSpi_SetSlaveSelect(&spiInstance, 0x00000001UL);
	}

	/* Check version of TRX chip */
	{
		const u8 NumBytesToSend 	= 4U;
		u8 Trx_Reg_pn_vn[4] 		= { 0x00U, 0x0dU, 0x00U, 0x00U };

		/* Start the SPI driver so that the device is enabled */
		XSpi_Start(&spiInstance);

		/* Disable Global interrupt to use polled mode operation */
		XSpi_IntrGlobalDisable(&spiInstance);

		/* Prepare Receive buffer */
		for (u8 idx = 0; idx < BUFFER_SIZE; ++idx) {
			buffer[idx] = 0U;
		}

		/* Transmit the data */
		int status = XSpi_Transfer(&spiInstance, Trx_Reg_pn_vn, buffer, NumBytesToSend);

		/* Stop the SPI driver */
		XSpi_Stop(&spiInstance);

		if (status != XST_SUCCESS) {
			xil_printf("TaskTrx: *** SPI init error 3\r\n");
			return /*XST_FAILURE*/;
		}

		const u8 trx_pn = buffer[2];
		const u8 trx_vn = buffer[3];

		xil_printf("TaskTrx: Read TRX chip: PN = 0x%02X, VN = 0x%02X\r\n", trx_pn, trx_vn);
	}

#if 0
	/* Switch to VCTCXO */
	{

	}
#endif

	u8 txFrameBufTemplate[1024];
	for (u16 idx = 0U; idx < sizeof(txFrameBufTemplate); ++idx) {
		txFrameBufTemplate[idx] = 0xaaU;
	}

	u32 irqs;
	u8 state;
	u16 level;
	(void) irqs;
	(void) state;
	(void) level;

	TrxGetIrqs(&irqs);
	TrxCmdSet(CMD_TRXOFF);
	TrxFreqSet(869000000UL);
	TrxOperationModeSet(CHPM_RF_MODE_BBRF09, CTX_DISABLE, -20 /*+11*/);  // max. power @ TRX pins

	/* Yellow */
	pwmLedSet(0x00003f4fUL, 0x00ffffffUL);
	TrxCmdSet(CMD_TXPREP);
	while (1) {
		TrxGetIrqs(&irqs);
		TrxStateGet(&state);
		if (state == STATE_TXPREP) {
			xil_printf("TaskTrx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}

	//TrxBatteryGet(&state);  								// SUCCESS	state = 1
	//TrxAVccGet(&state);									// SUCESS	state = 1

	//u8 ls = 0U, cf = 0U;
	//TrxPllLockedGet(&ls, &cf);  							// SUCCESS	ls = 1, cf = 0x1b 868MHz - 0x1a 869 MHz - 0x1a 870 MHz  (max. 0x3f)

	TrxIqSyncGet(&state);	  								// FAIL		state = 0

	//TrxFbliSet(0U);
	//TrxTxFrameBufSet(sizeof(txFrameBufTemplate), txFrameBufTemplate);

	/* Test-Cycles */
	TrxTxFlSet(2047U);
	TrxDacCwSet(DAC_CW_ENABLE);
	TrxCtxSet(CTX_ENABLE);

	/* RED on */
	pwmLedSet(0x0000007fUL, 0x00ffffffUL);
	TrxCmdSet(CMD_TX);
	while (1) {
		TrxStateGet(&state);								// SUCCESS	state = 4
		if (state == STATE_TX) {
			xil_printf("TaskTrx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}

#if 0
	/* Freq. sweep 868 .. 870 MHz */
	for (u32 frq = FREQ_SAWFILT_MIN - 1000000UL; frq <= (FREQ_SAWFILT_MAX + 1000000UL); frq += 10000UL) {
		TrxFreqSet(frq);
		vTaskDelay(pdMS_TO_TICKS(100));
	}
#endif

#if 1
	/* Show I/Q Link state */
	while (1) {
		TrxIqSyncGet(&state);
		vTaskDelay(pdMS_TO_TICKS(250));
	}
#endif

	vTaskDelay(pdMS_TO_TICKS(250));

	/* RED off */
	TrxCmdSet(CMD_TRXOFF);
	while (1) {
		TrxGetIrqs(&irqs);
		TrxStateGet(&state);
		if (state == CMD_TRXOFF) {
			xil_printf("TaskTrx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}
	pwmLedSet(0x00000000UL, 0x00ffffffUL);

	while (1) {
		vTaskDelay(pdMS_TO_TICKS(1000));
	}
}
