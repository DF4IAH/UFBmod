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
static XGpio gpio_TRX_DDS;
static XGpio gpio_TRX_AMPT;

static XSpi_Config* spiConfigPtr;	/* Pointer to Configuration data */
static XSpi  spiInstance;

/*
 * The buffer used for Transmission/Reception of the SPI data frames.
 */
static u8 buffer[BUFFER_SIZE];


/*-----------------------------------------------------------*/

/* DAC pull voltage - value: 0x7f30 (0x82a0) */
static u32 DacValueSet(u16 val) /* DAC pull voltage */
{
	u32 ByteCount;
	u8 iicData[3] = { 0 };

	/* Write DAC data */
	xil_printf("TaskTrx: I2C write DAC Addr = 0x%02x --> ", IIC_DAC_ONCHIP_ADDRESS);

	u16 StatusReg = XIic_ReadReg(IIC_BOARD_BASE_ADDRESS, XIIC_SR_REG_OFFSET);
	if(!(StatusReg & XIIC_SR_BUS_BUSY_MASK)) {
		iicData[0]	= 0x01U;  						// command: DAC_latch & CODE register
		iicData[1]	= (u8) ((val >> 8) & 0xffU);  	// MSB
		iicData[2]	= (u8) ( val       & 0xffU);	// LSB
		ByteCount 	= 3;
		ByteCount = XIic_Send(IIC_BOARD_BASE_ADDRESS, IIC_DAC_ONCHIP_ADDRESS, (u8*) &iicData, ByteCount, XIIC_STOP);
		xil_printf("written data cnt = %d\r\n", ByteCount);
	}

	return XST_SUCCESS;
}


/* Get correction values for power setting */
static u32 CalcCorectionRF09Get(int pwr, float* cor, u8* dcoI, u8* dcoQ)
{
	if ((pwr < -22) || (+11 < pwr)) {
		return XST_FAILURE;
	}
	if (!cor || !dcoI || !dcoQ) {
		return XST_FAILURE;
	}

	switch (pwr)
	{
	case +11:
	case +10:
	case  +9:
	case  +8:
		*cor = 1.200f;
		*dcoI = 0x1eU;
		*dcoQ = 0x26U;
		break;

	case  +7:
	case  +6:
	case  +5:
	case  +4:
	case  +3:
		*cor = 1.125f;
		*dcoI = 0x1eU;
		*dcoQ = 0x25U;
		break;

	case  +2:
	case  +1:
	case   0:
	case  -1:
	case  -2:
		*cor = 1.076f;
		*dcoI = 0x1eU;
		*dcoQ = 0x25U;
		break;

	case  -3:
	case  -4:
	case  -5:
	case  -6:
	case  -7:
		*cor = 1.067f;
		*dcoI = 0x1fU;
		*dcoQ = 0x23U;
		break;

	case  -8:
	case  -9:
	case -10:
	case -11:
	case -12:
		*cor = 1.052f;
		*dcoI = 0x19U;
		*dcoQ = 0x24U;
		break;

	case -13:
	case -14:
	case -15:
	case -16:
	case -17:
		*cor = 1.037f;
		*dcoI = 0x17U;
		*dcoQ = 0x1fU;
		break;

	case -18:
	case -19:
	case -20:
	case -21:
	case -22:
		*cor = 1.032f;
		*dcoI = 0x0eU;
		*dcoQ = 0x20U;
		break;

	default:
		*cor = 1.000f;
		*dcoI = 0x1eU;
		*dcoQ = 0x26U;
	}

	return XST_SUCCESS;
}

static u32 CalcCorectionRF24Get(int pwr, float* cor, u8* dcoI, u8* dcoQ)  // TODO: need values
{
	if ((pwr < -22) || (+14 < pwr)) {
		return XST_FAILURE;
	}
	if (!cor || !dcoI || !dcoQ) {
		return XST_FAILURE;
	}

	switch (pwr)
	{
	case +14:
	case +13:
	case +12:
		*cor = -1.150f;
		*dcoI = 0x2aU;
		*dcoQ = 0x17U;
		break;

	case +11:
	case +10:
	case  +9:
	case  +8:
		*cor = -1.100f;
		*dcoI = 0x2bU;
		*dcoQ = 0x16U;
		break;

	case  +7:
	case  +6:
	case  +5:
	case  +4:
	case  +3:
		*cor = -1.080f;
		*dcoI = 0x2cU;
		*dcoQ = 0x17U;
		break;

	case  +2:
	case  +1:
	case   0:
	case  -1:
	case  -2:
		*cor = -1.052f;
		*dcoI = 0x2dU;
		*dcoQ = 0x15U;
		break;

	case  -3:
	case  -4:
	case  -5:
	case  -6:
	case  -7:
		*cor = -1.029f;
		*dcoI = 0x2dU;
		*dcoQ = 0x17U;
		break;

	case  -8:
	case  -9:
	case -10:
	case -11:
	case -12:
		*cor = -1.007f;
		*dcoI = 0x2eU;
		*dcoQ = 0x19U;
		break;

	case -13:
	case -14:
	case -15:
	case -16:
	case -17:
		*cor = -1.004f;
		*dcoI = 0x37U;
		*dcoQ = 0x16U;
		break;

	case -18:
	case -19:
	case -20:
	case -21:
	case -22:
		*cor = -1.000f;
		*dcoI = 0x3fU;
		*dcoQ = 0x14U;
		break;

	default:
		*cor = 1.000f;
		*dcoI = 0x2aU;
		*dcoQ = 0x17U;
	}

	return XST_SUCCESS;
}


/* FPGA DDS channel 0/1 setting frequency and amplitude */
static u32 DdsFreqAmpSet(u8 doSetCh1, float freqHz, u8 ampl, float factIq)
{
	u8 sign = 0U;
	/* Parameter checks */
	if (doSetCh1 > 1) {
		return XST_FAILURE;
	}
	if (freqHz > 200E+3) {
		return XST_FAILURE;
	}
	if (factIq < 0.0f) {
		/* Symmetry for negative values */
		factIq = -1 / factIq;
	}

	float factI = 1.0f, factQ = 1.0f;
	if (factIq <= 1.0f) {
		factQ = factIq;
	} else {
		factI = 1 / factIq;
	}

	/* Turn direction reversed */
	if (freqHz < 0.0f) {
		freqHz = -freqHz;
		sign = 1U;
	}

	/* Frequency */
	float calc = freqHz * (1UL << 24);
	calc /= 4E+6;
	calc += 0.5f;
	u32 regDds = (u32) calc;
	if (sign) {
		regDds = ~regDds;
	}
	regDds &= 0x00ffffffUL;

	/* Amplitude */
	u32 regAmpt;
	regAmpt  =  (u32) (ampl * factI);
	regAmpt |= ((u32) (ampl * factQ)) << 8;

	if (doSetCh1 == 0) {
		/* DDS0 */
		XGpio_DiscreteWrite(&gpio_TRX_DDS, 1U, regDds);
		XGpio_DiscreteWrite(&gpio_TRX_AMPT, 1U, regAmpt);

	} else {
		/* DDS1 */
		XGpio_DiscreteWrite(&gpio_TRX_DDS, 2U, regDds);
		XGpio_DiscreteWrite(&gpio_TRX_AMPT, 2U, regAmpt);
	}

	int factIq_d	= (int)   factIq;
	int factIq_f	= (int) ((factIq - factIq_d) * 1000.0f);
	int factI_d		= (int)   factI;
	int factI_f		= (int) ((factI - factI_d) * 1000.0f);
	int factQ_d		= (int)   factQ;
	int factQ_f		= (int) ((factQ - factQ_d) * 1000.0f);
	xil_printf("TaskTrx: DdsFreqAmpSet done, Freq = %6d Hz, Ampl = 0x%02X, Fact-IQ = %d.%03d --> (factI = %d.%03d, factQ = %d.%03d)\r\n", (int)freqHz, ampl, factIq_d, factIq_f, factI_d, factI_f, factQ_d, factQ_f);

	return XST_SUCCESS;
}

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

static u32 TrxPllCfRF09Set(u8 cf)
{
	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Write the RF09_PLLCF.CF value */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x01U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0122
		writeBuf[1] = 0x22U;									// Reg-LSB
		writeBuf[2] = cf & 0x3f;

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxPllCfRF09Set done, set cf = 0x%02X\r\n", cf);

	return XST_SUCCESS;
}

static u32 TrxPllLockedCfRF09Get(u8* ls, u8* cf)
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

	xil_printf("TaskTrx: TrxPllLockedCfRF09Get done, ls = 0x%02X, cf = 0x%02X\r\n", *ls, *cf);

	return XST_SUCCESS;
}

static u32 TrxPllCfRF24Set(u8 cf)
{
	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Write the RF24_PLLCF.CF value */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x02U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0222
		writeBuf[1] = 0x22U;									// Reg-LSB
		writeBuf[2] = cf & 0x3f;

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxPllCfRF24Set done, set cf = 0x%02X\r\n", cf);

	return XST_SUCCESS;
}

static u32 TrxPllLockedCfRF24Get(u8* ls, u8* cf)
{
	if (!ls || !cf) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the STATE RF24_PLL.LS, RF24_PLLCF.CF */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x02U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0221
		writeBuf[1] = 0x21U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*ls = (readBuf[2] & 0x02U) ?  0x01U : 0x00U;
		*cf = readBuf[3];
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxPllLockedCfRF24Get done, ls = 0x%02X, cf = 0x%02X\r\n", *ls, *cf);

	return XST_SUCCESS;
}

static u32 TrxPllDcoIqRF09Set(u8 dcoI, u8 dcoQ)
{
	if (!dcoI || !dcoQ) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Write the RF09_TXCQ.DCOI and RF09_TXCQ.DCOQ values */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x01U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0125
		writeBuf[1] = 0x25U;									// Reg-LSB
		writeBuf[2] = dcoI & 0x3f;
		writeBuf[3] = dcoQ & 0x3f;

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxPllDcoIqRF09Set done, set dcoI = 0x%02X \tdcoQ = 0x%02X\r\n", dcoI, dcoQ);

	return XST_SUCCESS;
}

static u32 TrxPllDcoIqRF09Get(u8* dcoI, u8* dcoQ)
{
	if (!dcoI || !dcoQ) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the RF09_TXCQ.DCOI and RF09_TXCQ.DCOQ values */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x01U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0125
		writeBuf[1] = 0x25U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*dcoI = readBuf[2] & 0x3f;
		*dcoQ = readBuf[3] & 0x3f;
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxPllDcoIqRF09Get done, get dcoI = 0x%02X \tdcoQ = 0x%02X\r\n", *dcoI, *dcoQ);

	return XST_SUCCESS;
}

static u32 TrxPllDcoIqRF24Set(u8 dcoI, u8 dcoQ)
{
	if (!dcoI || !dcoQ) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Write the RF24_TXCQ.DCOI and RF24_TXCQ.DCOQ values */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x02U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0225
		writeBuf[1] = 0x25U;									// Reg-LSB
		writeBuf[2] = dcoI & 0x3f;
		writeBuf[3] = dcoQ & 0x3f;

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxPllDcoIqRF24Set done, set dcoI = 0x%02X \tdcoQ = 0x%02X\r\n", dcoI, dcoQ);

	return XST_SUCCESS;
}

static u32 TrxPllDcoIqRF24Get(u8* dcoI, u8* dcoQ)
{
	if (!dcoI || !dcoQ) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the RF24_TXCQ.DCOI and RF24_TXCQ.DCOQ values */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x02U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0225
		writeBuf[1] = 0x25U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*dcoI = readBuf[2] & 0x3f;
		*dcoQ = readBuf[3] & 0x3f;
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxPllDcoIqRF24Get done, get dcoI = 0x%02X \tdcoQ = 0x%02X\r\n", *dcoI, *dcoQ);

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

static u32 TrxCmdRF09Set(u8 cmd)
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

	xil_printf("TaskTrx: TrxCmdRF09Set done, cmd = 0x%02X\r\n", cmd);

	return XST_SUCCESS;
}

static u32 TrxStateRF09Get(u8* state)
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

	xil_printf("TaskTrx: TrxStateRF09Get done, state = 0x%02X\r\n", *state);

	return XST_SUCCESS;
}

static u32 TrxCmdRF24Set(u8 cmd)
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
		writeBuf[0] = 0x02U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0203
		writeBuf[1] = 0x03U;									// Reg-LSB
		writeBuf[2] = (u8) (cmd & 0x07U);						// CMD

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxCmdRF24Set done, cmd = 0x%02X\r\n", cmd);

	return XST_SUCCESS;
}

static u32 TrxStateRF24Get(u8* state)
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
		writeBuf[0] = 0x02U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0202
		writeBuf[1] = 0x02U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*state = readBuf[2] & 0x07U;
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxStateRF24Get done, state = 0x%02X\r\n", *state);

	return XST_SUCCESS;
}

static u32 TrxRssiRF09Get(s8* rssi)
{
	if (!rssi) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the RSSI of RF09 */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x01U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x010D
		writeBuf[1] = 0x0dU;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*rssi = readBuf[2];
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxRssiRF09Get done, rssi = %i dBm\r\n", *rssi);

	return XST_SUCCESS;
}

static u32 TrxRssiRF24Get(s8* rssi)
{
	if (!rssi) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* Read the RSSI of RF24 */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x02U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x020D
		writeBuf[1] = 0x0dU;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		*rssi = readBuf[2];
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxRssiRF24Get done, rssi = %i dBm\r\n", *rssi);

	return XST_SUCCESS;
}

static u32 TrxOperationModeRFSet(u8 chpm)
{
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
		writeBuf[2] = (readBuf[2] & 0x00U) 	|  0x08U;			// RF_CFG		IRQMM=#08, IRQP=#00, DRV=#00 #01 (p19)
		writeBuf[3] = (readBuf[3] & 0x00U) 	|  0x01U;			// RF_CLKO		DRV=#00#08, OS=#00#01 26MHz (p21)
		writeBuf[4] = (readBuf[4] & 0x1fU) 	|  0x00U;			// RF_BMDVC		BMHR, BMVTH (p79)
		writeBuf[5] = (readBuf[5] & 0x00U) 	|  0x00U;			// RF_XOC		FS=00, TRIM=00 (p69)
		writeBuf[6] = (readBuf[6] & 0x00U) 	|  0x38U;			// RF_IQIFC0	EXTLB=#00#80, DRV=#00#10#20#30, CMV=#00#04#08#0c, CMV1V2=#00#02, EEC=#00#01 (p27)  // XXX
		writeBuf[7] = (chpm  << 4) 			|  0x00U;			// RF_IQIFC1	CHPM, SKEWDRV=#00#01#02#03 (p32)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxOperationModeRFSet done\r\n");

	return XST_SUCCESS;
}

static u32 TrxOperationModeRF09BBC0Set(u8 ctx, s32 pwr)
{
	u8 pacur	= 0x03U;
	u8 txpwr  	= 0x01U;

	/* Parameters */
	{
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
		writeBuf[2] = ((readBuf[2] & 0x00U) | 0xc8U);			// RF09_TXCUTC	PARAMP=#c0 32us, LPFCUT=#00 80kHz #08 500kHz #0b 1000kHz (p48)
		writeBuf[3] = ((readBuf[3] & 0x00U) | 0x01U);			// RF09_TXDFE	RCUT=#00 fs/8 #20 0.1875*fs #40 fs/4 #60 0.375*fs #80 fs/2, DM=00 , SR=01 4MSPS (p48)
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
		writeBuf[4] = ((readBuf[4] & 0x80U) | (0x01U << 0));	// RF09_AGCC	AGCI=#40 00, AVGS=#30 00, RST=#08 00, FRZC=#02 00, EN=#01 01 (p59)
		writeBuf[5] = ((readBuf[5] & 0x00U) | (0x00U << 0));	// RF09_AGCS	TGT=#E0 00 [60], GCW=#1F 17 (p60)
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

	xil_printf("TaskTrx: TrxOperationModeRF09BB0Set done\r\n");

	return XST_SUCCESS;
}

static u32 TrxOperationModeRF24BBC1Set(u8 ctx, s32 pwr)
{
	u8 pacur	= 0x03U;
	u8 txpwr  	= 0x01U;

	/* Parameters */
	{
		if (ctx) {
			ctx = 0x01U;
		}

		/* Power calculations */
		if (pwr > 14) {
			pwr = 14;
		}

		if (pwr > 13) {
			pacur 	= 0x03U;
			txpwr 	= 0x1fU;

		} else if (pwr > 9) {
			pacur 	= (u8) ((~(12 - pwr)) & 0x03U);
			txpwr 	= 0x1fU;

		} else if (pwr > -22) {
			pacur	= 0x00U;
			txpwr	= (u8) (pwr + 22);
		} else {
			pacur	= 0x00U;
			txpwr	= 0x00U;
		}
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0212 ff.: RF24_TXCUTC, RF24_TXDFE, RF24_PAC */
	{
		const u8 frameLen = 5;
		u8 readBuf[5]  = { 0 };
		u8 writeBuf[5] = { 0 };
#if 0
		writeBuf[0] = 0x02U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0212
		writeBuf[1] = 0x12U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
#endif

		writeBuf[0] = 0x02U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0212
		writeBuf[1] = 0x12U;									// Reg-LSB
		writeBuf[2] = ((readBuf[2] & 0x00U) | 0xc8U);			// RF09_TXCUTC	PARAMP=#c0 32us, LPFCUT=#00 80kHz #08 500kHz #0b 1000kHz (p48)
		writeBuf[3] = ((readBuf[3] & 0x00U) | 0x01U);			// RF09_TXDFE	RCUT=#00 fs/8 #20 0.1875*fs #40 fs/4 #60 0.375*fs #80 fs/2, DM=00 , SR=01 4MSPS (p48)
		writeBuf[4] = ((pacur & 0x03U) << 5) | (txpwr & 0x1fU);	// RF09_PAC		PACUR, TXPWR (p49)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* 0x0209 ff.: RF24_RXBWC, RF24_RXDFE, RF24_AGCC, RF24_AGCS, RF24_RSSI, RF24_EDC, RF24_EDD, RF24_EDV  */
	{
		const u8 frameLen = 9;
		u8 readBuf[9]  = { 0 };
		u8 writeBuf[9] = { 0 };
		writeBuf[0] = 0x02U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0209
		writeBuf[1] = 0x09U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		writeBuf[0] = 0x02U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0209
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

	/* 0x0201: RF24_AUXS */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x02U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0201
		writeBuf[1] = 0x01U;									// Reg-LSB
		writeBuf[2] = 0x22U;									// RF09_AUXS	EXTLNABYP=00, AGCMAP=20, AVEXT=00, AVEN=00, PAVC=02  (p72)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* 0x0216: RF24_PADFE */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x02U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0216
		writeBuf[1] = 0x16U;									// Reg-LSB
		writeBuf[2] = 0x40U;									// RF09_PADFE	PADFE=40  (p73)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* 0x0401 ff.: BBC1_PC */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
#if 0
		writeBuf[0] = 0x04U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0401
		writeBuf[1] = 0x01U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
#endif

		writeBuf[0] = 0x04U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0401
		writeBuf[1] = 0x01U;									// Reg-LSB
		writeBuf[2] = 0x55U | (ctx << 7);						// BBC0_PC	FCSFE=40, TXAFCS=10, FCST=00, BBEN=04, PT=01 (p84)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxOperationModeRF24BB1Set done\r\n");

	return XST_SUCCESS;
}

static u32 TrxCtxBBC0Set(u8 ctx)
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

	xil_printf("TaskTrx: TrxCtxBBC0Set done, ctx = %d\r\n", ctx);

	return XST_SUCCESS;
}

static u32 TrxCtxBBC1Set(u8 ctx)
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

	/* 0x0401 ff.: BBC1_PC */
	{
		const u8 frameLen = 3;
		u8 readBuf[3]  = { 0 };
		u8 writeBuf[3] = { 0 };
		writeBuf[0] = 0x04U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0401
		writeBuf[1] = 0x01U;									// Reg-LSB

		/* Read the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		writeBuf[0] = 0x04U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0401
		writeBuf[1] = 0x01U;									// Reg-LSB
		writeBuf[2] = ((readBuf[2] & 0x7fU) | (ctx << 7));		// BBC0_PC	CTX (p84)

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxCtxBBC1Set done, ctx = %d\r\n", ctx);

	return XST_SUCCESS;
}

static u32 TrxDacCwRF09Set(u8 enable)
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
			writeBuf[2] = (0x80U | 0x7eU);						// RF09_TXDACI	ENTXDAC ID=80, TXDACID=7e  (p223)
			writeBuf[3] = (0x80U | 0x3fU);						// RF09_TXDACQ	ENTXDAC QD=80, TXDACQD=3f  (p223)
		} else {
			writeBuf[2] = (0x00U | 0x3fU);						// RF09_TXDACI	ENTXDAC ID=00, TXDACID=00  (p223)
			writeBuf[3] = (0x00U | 0x3fU);						// RF09_TXDACQ	ENTXDAC QD=00, TXDACQD=00  (p223)
		}

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxDacCwRF09Set done, enable = %d\r\n", (enable ?  1 : 0));

	return XST_SUCCESS;
}

static u32 TrxDacCwRF24Set(u8 enable)
{
	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0227 ff.: RF24_TXDACI, RF24_TXDACQ */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x02U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0227
		writeBuf[1] = 0x27U;									// Reg-LSB

		if (enable) {
			writeBuf[2] = (0x80U | 0x7eU);						// RF09_TXDACI	ENTXDAC ID=80, TXDACID=7e  (p223)
			writeBuf[3] = (0x80U | 0x3fU);						// RF09_TXDACQ	ENTXDAC QD=80, TXDACQD=3f  (p223)
		} else {
			writeBuf[2] = (0x00U | 0x3fU);						// RF09_TXDACI	ENTXDAC ID=00, TXDACID=00  (p223)
			writeBuf[3] = (0x00U | 0x3fU);						// RF09_TXDACQ	ENTXDAC QD=00, TXDACQD=00  (p223)
		}

		/* Write the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxDacCwRF24Set done, enable = %d\r\n", (enable ?  1 : 0));

	return XST_SUCCESS;
}


static u32 TrxFreqSet(u32 frequencyHz)
{
	u64 calc;

	if (((FREQ_SAWFILT_MIN - 1000000UL) <= frequencyHz) && (frequencyHz <= (FREQ_SAWFILT_MAX + 1000000UL))) {
		/*  Fine resolution channel scheme mode 2 - 0x0104 ff. */
		calc = frequencyHz - TRX_FRCS_MODE2_OFS;
		calc <<= 16;
		calc /= TRX_FRCS_MODE2_DIV;

		/* border values p64 */
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

		xil_printf("TaskTrx: RF09 - frequency set to %lu Hz\r\n", frequencyHz);

		return XST_SUCCESS;

	} else if ((FREQ_MODE3_MIN <= frequencyHz) && (frequencyHz <= FREQ_MODE3_MAX)) {
		/*  Fine resolution channel scheme mode 3 - 0x0204 ff. */
		calc = frequencyHz - TRX_FRCS_MODE3_OFS;
		calc <<= 16;
		calc /= TRX_FRCS_MODE3_DIV;

		/* border values p64 */
		Xil_AssertNonvoid( 85700 <= calc);
		Xil_AssertNonvoid(calc   <= 296172);

		const u8 frameLen = 7;
		u8 readBuf[7]  = { 0 };
		u8 writeBuf[7] = { 0 };
		writeBuf[0] = 0x02U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0204
		writeBuf[1] = 0x04U;									// Reg-LSB
		writeBuf[2] = 0x06U;									// RF24_CS = 6x 25 kHz = 150 kHz  (p64 ff.)
		writeBuf[3] = (u8) ((calc >>  8) & 0xffULL);			// RF24_CCF0L	Middle
		writeBuf[4] = (u8) ((calc >> 16) & 0xffULL);			// RF24_CCF0H	Hi
		writeBuf[5] = (u8) ( calc        & 0xffULL);			// RF24_CNL 	Lo
		writeBuf[6] = (0x03U << 6) | ((u8) ((calc >> 24) & 0x01ULL));	// RF24_CNH 	Mode3

		/* Start the SPI driver so that the device is enabled */
		XSpi_Start(&spiInstance);

		/* Disable Global interrupt to use polled mode operation */
		XSpi_IntrGlobalDisable(&spiInstance);

		/* Transmit the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		/* Stop the SPI driver */
		XSpi_Stop(&spiInstance);

		xil_printf("TaskTrx: RF24 - frequency set to %lu Hz\r\n", frequencyHz);

		return XST_SUCCESS;
	}

	/* Out of band */
	return XST_FAILURE;
}

static u32 TrxTxFlBBC0Set(u16 txFlCount)
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

	xil_printf("TaskTrx: TrxTxFlBBC0Set done with BBC0_TXFL = %d\r\n", txFlCount);

	return XST_SUCCESS;
}

static u32 TrxTxFlBBC1Set(u16 txFlCount)
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

	/* 0x0406 ff.: BBC1_TXFLL, BBC1_TXFLH */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x04U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x0406
		writeBuf[1] = 0x06U;									// Reg-LSB
		writeBuf[2] = (u8)  (txFlCount        & 0xffU);			// BBC0_TXFLL
		writeBuf[3] = (u8) ((txFlCount >>  8) & 0x07U);			// BBC0_TXFLH

		/* Transmit the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxTxFlBBC1Set done with BBC0_TXFL = %d\r\n", txFlCount);

	return XST_SUCCESS;
}

static u32 TrxFbliBBC0Set(u16 level)
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

	xil_printf("TaskTrx: TrxFbliBBC0Set done, level = 0x%04X\r\n", level);

	return XST_SUCCESS;
}

static u32 TrxFblBBC0Get(u16* level)
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

	xil_printf("TaskTrx: TrxFblBBC0Get done, returned level = 0x%04X\r\n", *level);

	return XST_SUCCESS;
}


static u32 TrxFbliBBC1Set(u16 level)
{
	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0408 f.: BBC1_FBLIL, BBC1_FBLIH */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x04U | 0x80U;							// Reg-MSB with Write CMD starting @ 0x040a
		writeBuf[1] = 0x0aU;									// Reg-LSB
		writeBuf[2] = (u8)  (level        & 0xffU);				// BBC0_FBLL
		writeBuf[3] = (u8) ((level >>  8) & 0x07U);				// BBC0_FBLH

		/* Transmit the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxFbliBBC1Set done, level = 0x%04X\r\n", level);

	return XST_SUCCESS;
}

static u32 TrxFblBBC1Get(u16* level)
{
	if (!level) {
		return XST_FAILURE;
	}

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	/* 0x0408 f.: BBC1_FBLL, BBC1_FBLH */
	{
		const u8 frameLen = 4;
		u8 readBuf[4]  = { 0 };
		u8 writeBuf[4] = { 0 };
		writeBuf[0] = 0x04U | 0x00U;							// Reg-MSB with Read CMD starting @ 0x0408
		writeBuf[1] = 0x08U;									// Reg-LSB

		/* Transmit the data */
		XSpi_Transfer(&spiInstance, writeBuf, readBuf, frameLen);

		u16 word = (((u16) readBuf[3]) << 8) | ((u16) readBuf[2]);
		*level = word;
	}

	/* Stop the SPI driver */
	XSpi_Stop(&spiInstance);

	xil_printf("TaskTrx: TrxFblBBC1Get done, returned level = 0x%04X\r\n", *level);

	return XST_SUCCESS;
}

static u32 TrxTxFrameBufBBC0Set(u16 len, u8* txFrameBufTemplate)
{
	if (!len || len > 2047U) {
		return XST_FAILURE;
	}

	TrxTxFlBBC0Set(len);

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	for (u16 lenIdx = 0U; lenIdx < min((BUFFER_SIZE >> 1), (len - lenIdx)); lenIdx += min((BUFFER_SIZE >> 1), (len - lenIdx))) {
		u8 readBuf[BUFFER_SIZE]  = { 0 };
		u8 writeBuf[BUFFER_SIZE] = { 0 };
		writeBuf[0] = (u8) (((lenIdx >> 8) & 0x07U) | 0x28U | 0x80U);	// Reg-MSB with Write CMD @ BBC0_FBTXS
		writeBuf[1] = (u8) (  lenIdx       & 0xffU);					// Reg-LSB

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

static u32 TrxTxFrameBufBBC1Set(u16 len, u8* txFrameBufTemplate)
{
	if (!len || len > 2047U) {
		return XST_FAILURE;
	}

	TrxTxFlBBC1Set(len);

	/* Start the SPI driver so that the device is enabled */
	XSpi_Start(&spiInstance);

	/* Disable Global interrupt to use polled mode operation */
	XSpi_IntrGlobalDisable(&spiInstance);

	for (u16 lenIdx = 0U; lenIdx < min((BUFFER_SIZE >> 1), (len - lenIdx)); lenIdx += min((BUFFER_SIZE >> 1), (len - lenIdx))) {
		u8 readBuf[BUFFER_SIZE]  = { 0 };
		u8 writeBuf[BUFFER_SIZE] = { 0 };
		writeBuf[0] = (u8) (((lenIdx >> 8) & 0x07U) | 0x38U | 0x80U);	// Reg-MSB with Write CMD @ BBC1_FBTXS
		writeBuf[1] = (u8) (  lenIdx       & 0xffU);					// Reg-LSB

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

static u32 TrxLvdsSyncing(void)
{
	u8 state;

	/* Syncing I/Q line */
	TrxIqSyncGet(&state);
	while (1) {
		/* Enable LVDS TX stream from FPGA */
		{
			XGpio_DiscreteWrite(&gpio_TRX, 1U, 0x80000001UL);	// TRX:disable RESETN, RFX:Lo-Gain, TRX:enable  LVDS blankTX
			XGpio_DiscreteWrite(&gpio_TRX, 1U, 0x80000000UL);	// TRX:disable RESETN, RFX:Lo-Gain, TRX:disable LVDS blankTX
		}

		vTaskDelay(pdMS_TO_TICKS(10));

		TrxIqSyncGet(&state);
		if (state) {
			break;
		}
	}
#if 0
	while (1) {
		TrxIqSyncGet(&state);
	}
#endif

	return XST_SUCCESS;
}


/*-----------------------------------------------------------*/

static void TestRF09Tx(int pwr_dBm)
{
	/* Get correction values */
	float cor = 1.000f;
	u8 dcoI = 0U, dcoQ = 0U;
	CalcCorectionRF09Get(pwr_dBm, &cor, &dcoI, &dcoQ);

	/* I/Q mixer balance */
#if 0
	TrxPllDcoIqRF09Get(&dcoI, &dcoQ);	// Automatic: bad measurement values  0x1d, 0x39  - use correction table instead
#else
	TrxPllDcoIqRF09Set(dcoI, dcoQ);
#endif

#if 1
	/* Syncing I/Q TX line */
	TrxLvdsSyncing();
#endif

#if 1
	/* Set FPGA DDS0 */
	DdsFreqAmpSet(0U, +00.000E+3, 0xf3U, cor);  // ampl <= 0xf3
	DdsFreqAmpSet(1U, +00.000E+3, 0x00U, cor);
#else
	/* Set FPGA DDS0 & DDS1 */
	DdsFreqAmpSet(0U, +10.000E+3, 0x70U, cor);
	DdsFreqAmpSet(1U, -15.000E+3, 0x70U, cor);
#endif

	/* Test-Cycles */
	TrxTxFlBBC0Set(2047U);
	TrxDacCwRF09Set(DAC_CW_DISABLE);
	TrxCtxBBC0Set(CTX_ENABLE);

	/* RED on */
	u8 state;
	pwmLedSet(0x0000007fUL, 0x00ffffffUL);
	TrxCmdRF09Set(CMD_TX);
	while (1) {
		TrxStateRF09Get(&state);
		if (state == STATE_TX) {
			xil_printf("TestRF09Tx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}

#if 0
	/* Freq. sweep 868 .. 870 MHz */
	for (u32 frq = FREQ_SAWFILT_MIN; frq <= FREQ_SAWFILT_MAX; frq += 1000UL) {
		TrxFreqSet(frq);
		vTaskDelay(pdMS_TO_TICKS(25));
	}
#elif 0
	/* Sweep balance for Harmonic distortions */
	for (u8 idx = 0x10U; idx <= 0x30U; idx++) {
		TrxPllCfRF09Set(idx);
		vTaskDelay(pdMS_TO_TICKS(500));
	}
	TrxPllCfRF09Set(0x1f);
#elif 0
	for (u16 pv = 0x0000U; pv <= 0x8100U; pv += 0x0800U) {
		DacValueSet(pv);
		vTaskDelay(pdMS_TO_TICKS(250));
	}
	DacValueSet(0x82a0);
#elif 0
	dcoI = 0x1eU;
	dcoQ = 0x25U;
	for (u8 idx = 0x1eU; idx <= 0x1eU; idx++) {
		TrxPllDcoIqRF09Set(idx, dcoQ);
		vTaskDelay(pdMS_TO_TICKS(1000));
	}
	for (u8 idx = 0x25U; idx <= 0x25U; idx++) {
		TrxPllDcoIqRF09Set(dcoI, idx);
		vTaskDelay(pdMS_TO_TICKS(1000));
	}
	TrxPllDcoIqRF09Set(dcoI, dcoQ);
#elif 0
	for (float idx = 1.000f; idx <= 1.200f; idx += 0.001f) {
		/* Set DDS channel 0*/
		DdsFreqAmpSet(0U, 10.000E+3, 0xf0U, idx);
		vTaskDelay(pdMS_TO_TICKS(500));
	}
#endif

	vTaskDelay(pdMS_TO_TICKS(250));

	/* RED off */
	u32 irqs;
	TrxCmdRF09Set(CMD_TRXOFF);
	while (1) {
		TrxGetIrqs(&irqs);
		TrxStateRF09Get(&state);
		if (state == CMD_TRXOFF) {
			xil_printf("TestRF09Tx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}
	pwmLedSet(0x00000000UL, 0x00ffffffUL);
}

static void TestRF24Tx(int pwr_dBm)
{
	/* Get correction values */
	float cor = 1.000f;
	u8 dcoI = 0U, dcoQ = 0U;
	CalcCorectionRF24Get(pwr_dBm, &cor, &dcoI, &dcoQ);

	/* I/Q mixer balance */
#if 0
	TrxPllDcoIqRF24Get(&dcoI, &dcoQ);	// Automatic: bad measurement values  0x2b, 0x15  - use correction table instead
#else
	TrxPllDcoIqRF24Set(dcoI, dcoQ);
#endif

	/* Syncing I/Q TX line */
	TrxLvdsSyncing();

#if 1
	/* Set FPGA DDS0 */
	DdsFreqAmpSet(0U, +00.000E+3, 0xf3U, cor);  // ampl <= 0xf3
	DdsFreqAmpSet(1U,  00.000E+3, 0x00U, cor);
#else
	/* Set FPGA DDS0 & DDS1 */
	DdsFreqAmpSet(0U, +10.000E+3, 0x70U, cor);
	DdsFreqAmpSet(1U, +15.000E+3, 0x70U, cor);
#endif

	/* Test-Cycles */
	TrxTxFlBBC1Set(2047U);
	TrxDacCwRF24Set(DAC_CW_DISABLE);
	TrxCtxBBC1Set(CTX_ENABLE);

	/* RED on */
	u8 state;
	pwmLedSet(0x0000007fUL, 0x00ffffffUL);
	TrxCmdRF24Set(CMD_TX);
	while (1) {
		TrxStateRF24Get(&state);
		if (state == STATE_TX) {
			xil_printf("TestRF24Tx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}

#if 0
	/* Freq. sweep 2400 .. 2483.5 MHz */
	for (u32 frq = FREQ_MODE3_MIN; frq <= FREQ_MODE3_MAX; frq += 100000UL) {
		TrxFreqSet(frq);
		vTaskDelay(pdMS_TO_TICKS(100));
	}
#elif 0
	/* Sweep balance for Harmonic distortions */
	for (u8 idx = 0x10U; idx <= 0x30U; idx++) {
		TrxPllCfRF24Set(idx);
		vTaskDelay(pdMS_TO_TICKS(500));
	}
	TrxPllCfRF24Set(0x1f);
#elif 0
	for (u16 pv = 0x0000U; pv <= 0x8100U; pv += 0x0800U) {
		DacValueSet(pv);
		vTaskDelay(pdMS_TO_TICKS(250));
	}
	DacValueSet(0x82a0);
#elif 0
	dcoI = 0x3fU;
	dcoQ = 0x14U;
	for (u8 idx = 0x35U; idx <= 0x3fU; idx++) {
		TrxPllDcoIqRF24Set(idx, dcoQ);
		vTaskDelay(pdMS_TO_TICKS(100));
	}
	for (u8 idx = 0x02U; idx <= 0x19U; idx++) {
		TrxPllDcoIqRF24Set(dcoI, idx);
		vTaskDelay(pdMS_TO_TICKS(100));
	}
	TrxPllDcoIqRF24Set(dcoI, dcoQ);
#elif 0
	for (float idx = 1.000f; idx <= 1.110f; idx += 0.001f) {
		/* Set DDS channel 0*/
		DdsFreqAmpSet(0U, 10.000E+3, 0xf0U, -idx);
		vTaskDelay(pdMS_TO_TICKS(100));
	}
#endif

	vTaskDelay(pdMS_TO_TICKS(250));

	/* RED off */
	u32 irqs;
	TrxCmdRF24Set(CMD_TRXOFF);
	while (1) {
		TrxGetIrqs(&irqs);
		TrxStateRF24Get(&state);
		if (state == CMD_TRXOFF) {
			xil_printf("TestRF24Tx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}
	pwmLedSet(0x00000000UL, 0x00ffffffUL);
}

static void TestRF09Rx(void)
{
	/* Syncing I/Q TX line */
	TrxLvdsSyncing();

#if 1
	/* RFX1010 Gain setting: Hi */
	XGpio_DiscreteWrite(&gpio_TRX, 1U, 0xc0000000UL);	// TRX:disable RESETN, RFX:Lo-Gain, TRX:disable LVDS blankTX
#else
	/* RFX1010 Gain setting: Lo */
	XGpio_DiscreteWrite(&gpio_TRX, 1U, 0x80000000UL);	// TRX:disable RESETN, RFX:Lo-Gain, TRX:disable LVDS blankTX
#endif

	/* Stop FPGA DDS0/DDS1 */
	DdsFreqAmpSet(0U, 0.0f, 0x00U, 1.0f);		// XXX
	DdsFreqAmpSet(1U, 0.0f, 0x00U, 1.0f);

	/* GREEN on */
	u8 state;
	pwmLedSet(0x00007f00UL, 0x00ffffffUL);
	TrxCmdRF09Set(CMD_RX);
	while (1) {
		TrxStateRF09Get(&state);
		if (state == STATE_RX) {
			xil_printf("TestRF09Rx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}

#if 1
	while (1) {
		s8 rssi = 127;
		TrxRssiRF09Get(&rssi);
		vTaskDelay(pdMS_TO_TICKS(250));
	}
#else
	vTaskDelay(pdMS_TO_TICKS(1000));
#endif

	/* GREEN off */
	u32 irqs;
	TrxCmdRF09Set(CMD_TRXOFF);
	while (1) {
		TrxGetIrqs(&irqs);
		TrxStateRF09Get(&state);
		if (state == CMD_TRXOFF) {
			xil_printf("TestRF09Rx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}
	pwmLedSet(0x00000000UL, 0x00ffffffUL);
}

static void TestRF24Rx(void)
{
	/* Syncing I/Q TX line */
	TrxLvdsSyncing();

	/* Stop FPGA DDS0/DDS1 */
	DdsFreqAmpSet(0U, 0.0f, 0x00U, 1.0f);		// XXX
	DdsFreqAmpSet(1U, 0.0f, 0x00U, 1.0f);

	/* BLUE on */
	u8 state;
	pwmLedSet(0x007f0000UL, 0x00ffffffUL);
	TrxCmdRF24Set(CMD_RX);
	while (1) {
		TrxStateRF24Get(&state);
		if (state == STATE_RX) {
			xil_printf("TestRF24Rx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}

#if 1
	while (1) {
		s8 rssi = 127;
		TrxRssiRF24Get(&rssi);
		vTaskDelay(pdMS_TO_TICKS(250));
	}
#else
	vTaskDelay(pdMS_TO_TICKS(1000));
#endif

	/* BLUE off */
	u32 irqs;
	TrxCmdRF24Set(CMD_TRXOFF);
	while (1) {
		TrxGetIrqs(&irqs);
		TrxStateRF24Get(&state);
		if (state == CMD_TRXOFF) {
			xil_printf("TestRF24Rx: changed into state = 0x%02X\r\n", state);
			break;
		}
	}
	pwmLedSet(0x00000000UL, 0x00ffffffUL);
}

/*-----------------------------------------------------------*/

void taskTrx(void* pvParameters)
{
	vTaskDelay(pdMS_TO_TICKS(500));

	/* DAC pull voltage */
	DacValueSet(0x8178);

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
			xil_printf("TaskTrx: *** GPIO TRX Config Initialization Failed\r\n");
			return /*XST_FAILURE*/;
		}
		XGpio_SetDataDirection(&gpio_TRX, 1U, 0x00000000UL);  	// 32 bit output

		XGpio_DiscreteWrite(   &gpio_TRX, 1U, 0x00000001UL);	// TRX:enable  RESETN, RFX:Lo-Gain, TRX:enable LVDS blankTX
		vTaskDelay(pdMS_TO_TICKS(10));
		XGpio_DiscreteWrite(   &gpio_TRX, 1U, 0x80000001UL);	// TRX:disable RESETN, RFX:Lo-Gain, TRX:enable LVDS blankTX
	}

	/* Init TRX-DDS-GPIO */
	{
		int statusTrx = XGpio_Initialize(&gpio_TRX_DDS, XPAR_TRX_TRX_TX_DDS_UNIT_TRX_TX_DDS_INC_AXI_GPIO_0_DEVICE_ID);
		if (statusTrx != XST_SUCCESS) {
			xil_printf("TaskTrx: *** GPIO TRX DDS Initialization Failed\r\n");
			return /*XST_FAILURE*/;
		}
		XGpio_SetDataDirection(&gpio_TRX_DDS, 1U, 0x00000000UL);  	// 24 bit output
		XGpio_SetDataDirection(&gpio_TRX_DDS, 2U, 0x00000000UL);  	// 24 bit output

		statusTrx = XGpio_Initialize(&gpio_TRX_AMPT, XPAR_TRX_TRX_TX_DDS_UNIT_TRX_TX_DDS_AMPT_AXI_GPIO_0_DEVICE_ID);
		if (statusTrx != XST_SUCCESS) {
			xil_printf("TaskTrx: *** GPIO TRX AMPT Initialization Failed\r\n");
			return /*XST_FAILURE*/;
		}
		XGpio_SetDataDirection(&gpio_TRX_AMPT, 1U, 0x00000000UL);  	// 16 bit output
		XGpio_SetDataDirection(&gpio_TRX_AMPT, 2U, 0x00000000UL);  	// 16 bit output
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

#if 1
	/* TRX RF09 going Live */
	{
		u32 irqs;
		TrxGetIrqs(&irqs);
		TrxCmdRF09Set(CMD_TRXOFF);

		/* Values */										// XXX
		int pwr_dBm = +11;									// Max. +11 dBm @ TRX
		u32 freq_Hz = 869000000UL;  						// 868000000 ..  870000000 Hz		// RF09

		/* Set frequency */
		TrxFreqSet(freq_Hz);

		/* Set power and operation mode */
		TrxOperationModeRFSet(CHPM_RF_MODE_RF);  			// CHPM_RF_MODE_BBRF09 / CHPM_RF_MODE_BBRF
		TrxOperationModeRF09BBC0Set(CTX_DISABLE, pwr_dBm);  // CTX ContinuesWave, Power @ TRX pins

		/* Yellow */
		u8 state;
		pwmLedSet(0x00003f4fUL, 0x00ffffffUL);
		TrxCmdRF09Set(CMD_TXPREP);
		while (1) {
			TrxGetIrqs(&irqs);
			TrxStateRF09Get(&state);
			if (state == STATE_TXPREP) {
				xil_printf("TaskTrx: RF09 changed into state = 0x%02X\r\n", state);
				break;
			}
		}

#if 0
		/* Testing the Transmitter of the TRX */
		TestRF09Tx(pwr_dBm);
#else
		/* Testing the Receiver of the TRX */
		TestRF09Rx();
#endif

		while (1) {
			vTaskDelay(pdMS_TO_TICKS(1000));
		}
	}
#endif

#if 0
	/* TRX RF24 going Live */
	{
		u32 irqs;
		TrxGetIrqs(&irqs);
		TrxCmdRF24Set(CMD_TRXOFF);

		/* Values */										// XXX
		int pwr_dBm = +14;									// Max. +14 dBm @ TRX
		u32 freq_Hz = 2450000000UL;  						// 2400000000 .. 2500000000 Hz		// RF24

		/* Set frequency */
		TrxFreqSet(freq_Hz);

		/* Set power and operation mode */
		TrxOperationModeRFSet(CHPM_RF_MODE_RF);  			// CHPM_RF_MODE_BBRF09 / CHPM_RF_MODE_BBRF
		TrxOperationModeRF24BBC1Set(CTX_DISABLE, pwr_dBm);	// CTX ContinuesWave, Power @ TRX pins

		/* Yellow */
		u8 state;
		pwmLedSet(0x00003f4fUL, 0x00ffffffUL);
		TrxCmdRF24Set(CMD_TXPREP);
		while (1) {
			TrxGetIrqs(&irqs);
			TrxStateRF24Get(&state);
			if (state == STATE_TXPREP) {
				xil_printf("TaskTrx: RF24 changed into state = 0x%02X\r\n", state);
				break;
			}
		}

#if 0
		/* Testing the Transmitter of the TRX */
		TestRF24Tx(pwr_dBm);
#else
		/* Testing the Receiver of the TRX */
		TestRF24Rx();
#endif

		while (1) {
			vTaskDelay(pdMS_TO_TICKS(1000));
		}
	}
#endif
}
