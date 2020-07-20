/***************************** Include Files *********************************/
#include "stdio.h"

#include "Eth.h"


/************************** Variable Definitions ****************************/

/* Set up valid local MAC addresses. This loop back test uses the LocalAddress both as a source and destination MAC address */
XEmacLite emacLiteInstance;					/* Instance of the EmacLite */

/* Buffers used for Transmission and Reception of Packets. These are declared as global so that they are not a part of the stack */
u8 emacLiteTxFrame[XEL_MAX_FRAME_SIZE];
u8 emacLiteRxFrame[XEL_MAX_FRAME_SIZE];

volatile u32 emacLiteRecvFrameLength;		/* Indicates the length of the Received packet */
volatile int emacLiteTransmitComplete;		/* Flag to indicate that the Transmission is complete */

/******************************************************************************
* This function detects the PHY address by looking for successful MII status
* register contents (PHY register 1). It looks for a PHY that supports
* auto-negotiation and 10Mbps full-duplex and half-duplex. So, this code
* won't work for PHYs that don't support those features, but it's a bit more
* general purpose than matching a specific PHY manufacturer ID.
*
* Note also that on some (older) Xilinx ML4xx boards, PHY address 0 does not
* properly respond to this query. But, since the default is 0 and assuming
* no other address responds, then it seems to work OK.
*
* @param	instancePtr is the pointer to the instance of EmacLite driver.
*
* @return	The address of the PHY device detected (returns 0 if not detected).
*
* @note
*		The bit mask (0x1808) of the MII status register
*		(PHY Register 1) used in this function are:
* 		0x1000: 10Mbps full duplex support.
* 		0x0800: 10Mbps half duplex support.
*  		0x0008: Auto-negotiation support.
******************************************************************************/
u32 emacLitePhyDetect(XEmacLite* instancePtr)
{
	u16 phyData;
	int phyAddr;

	/* Verify all 32 MDIO ports */
	for (phyAddr = 31; phyAddr >= 0; phyAddr--) {
		XEmacLite_PhyRead(instancePtr, phyAddr, PHY_REG1_OFFSET, &phyData);

		if (phyData != 0xFFFFU) {
			if ((phyData & PHY_REG1_DETECT_MASK) == PHY_REG1_DETECT_MASK) {
				return phyAddr;	 /* Found a valid PHY device */
			}
		}
	}

	/*
	 * Unable to detect PHY device returning the default address of 0.
	 */
	return 0;
}

/******************************************************************************
* This function enables the MAC loopback on the PHY.
*
* @param	instancePtr is the pointer to the instance of EmacLite driver.
* @param	phyAddress is the address of the Phy device.
*
* @return
*		- XST_SUCCESS if the loop back is enabled.
*		- XST_FAILURE if the loop back was not enabled.
*
* @note		None.
******************************************************************************/
int emacLiteEnablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress)
{
	int status;
	u16 phyData = 0U;

	/* Set the speed and put the PHY in reset */
	phyData |= PHY_REG0_SPD_100_MASK;
	status = XEmacLite_PhyWrite(instancePtr, phyAddress, PHY_REG0_OFFSET, phyData | PHY_REG0_RESET_MASK);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Give sufficient delay for Phy Reset */
	emacLitePhyDelay(EMACLITE_PHY_DELAY_SEC);

	/* Set the PHY in loop back */
	XEmacLite_PhyWrite(instancePtr, phyAddress, PHY_REG0_OFFSET, phyData | PHY_REG0_LOOPBACK_MASK);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Give sufficient delay for Phy Loopback Enable */
	emacLitePhyDelay(1U);

	return XST_SUCCESS;
}

/******************************************************************************
* This function disables the MAC loopback on the PHY.
*
* @param	InstancePtr is the pointer to the instance of EmacLite driver.
* @param	PhyAddress is the address of the Phy device.
*
* @return
*		- XST_SUCCESS if the loop back was disabled.
*		- XST_FAILURE if the loop back was not disabled.
*
* @note		None.
******************************************************************************/
int emacLiteDisablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress)
{
	int status;
	u16 phyData;

	/* Disable loop back through PHY register using MDIO support */
	status = XEmacLite_PhyRead(instancePtr, phyAddress, PHY_REG0_OFFSET, &phyData);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	status = XEmacLite_PhyWrite(instancePtr, phyAddress, PHY_REG0_OFFSET, phyData & ~(PHY_REG0_LOOPBACK_MASK));
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/******************************************************************************
* For PPC we use a usleep call, for Microblaze we use an assembly loop that
* is roughly the same regardless of optimization level, although caches and
* memory access time can make the delay vary.  Just keep in mind that after
* resetting or updating the PHY modes, the PHY typically needs time to recover.
*
* @return   None
*
* @note     None
******************************************************************************/
void emacLitePhyDelay(unsigned int seconds)
{
#ifdef __MICROBLAZE__
	static int warningFlag = 0;

	/* If MB caches are disabled or do not exist, this delay loop could
	 * take minutes instead of seconds (e.g., 30x longer).  Print a warning
	 * message for the user (once).  If only MB had a built-in timer!
	 */
	if (((mfmsr() & 0x20) == 0) && (!warningFlag)) {
#ifdef STDOUT_BASEADDRESS
		xil_printf("Warning: This example will take ");
		xil_printf("minutes to complete without I-cache enabled\r\n");
#endif
		warningFlag = 1;
	}

#define ITERS_PER_SEC   (XPAR_CPU_CORE_CLOCK_FREQ_HZ / 6)
    asm volatile ("\n"
                  "1:               \n\t"
                  "addik r7, r0, %0 \n\t"
                  "2:               \n\t"
                  "addik r7, r7, -1 \n\t"
                  "bneid  r7, 2b    \n\t"
                  "or  r0, r0, r0   \n\t"
                  "bneid %1, 1b     \n\t"
                  "addik %1, %1, -1 \n\t"
                  :: "i"(ITERS_PER_SEC), "d" (seconds));

#else

	usleep(seconds * 1000000);

#endif
}
