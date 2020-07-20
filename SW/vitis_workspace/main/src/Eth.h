#ifndef ETH_H
#define ETH_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xemaclite.h"

/************************** Constant Definitions ****************************/

#define PHY_REG0_OFFSET				0 		/* Register 0 of PHY device */
#define PHY_REG1_OFFSET 			1 		/* Register 1 of PHY device */

#define PHY_REG0_RESET_MASK			0x8000  /* Reset Phy device */
#define PHY_REG0_LOOPBACK_MASK		0x4000  /* Loopback Enable in Phy */
#define PHY_REG0_SPD_100_MASK		0x2000  /* Speed of 100Mbps for Phy */

#define PHY_REG1_DETECT_MASK		0x1808	/* Mask to detect PHY device */

#define EMACLITE_PHY_DELAY_SEC		4U		/* Amount of time to delay waiting on PHY to reset */

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define EMAC_DEVICE_ID				XPAR_EMACLITE_0_DEVICE_ID


/***************** Macros (Inline Functions) Definitions *********************/

/**************************** Type Definitions ******************************/

/************************** Function Prototypes *****************************/

/*
 * Utility functions implemented in xemaclite_example_util.c
 */
void emacLitePhyDelay(unsigned int seconds);
u32 emacLitePhyDetect(XEmacLite* instancePtr);
int emacLiteEnablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress);
int emacLiteDisablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress);

/************************** Variable Definitions ****************************/
/*
 * Set up valid local MAC addresses. This loop back test uses the LocalAddress
 * both as a source and destination MAC address.
 */

extern XEmacLite emacLiteInstance;			/* Instance of the EmacLite */

/* Buffers used for Transmission and Reception of Packets. These are declared as global so that they are not a part of the stack */
extern u8 emacLiteTxFrame[XEL_MAX_FRAME_SIZE];
extern u8 emacLiteRxFrame[XEL_MAX_FRAME_SIZE];

extern volatile u32 emacLiteRecvFrameLength;	/* Indicates the length of the Received packet */
extern volatile int emacLiteTransmitComplete;	/* Flag to indicate that the Transmission is complete */


#ifdef __cplusplus
}
#endif

#endif /* ETH_H */
