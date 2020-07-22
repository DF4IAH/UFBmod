#ifndef EXTERNALS_H
#define EXTERNALS_H

#ifdef __cplusplus
extern "C" {
#endif

#include "xparameters.h"
#include "xemaclite.h"


#ifndef IP_ADDR_SIZE
#define IP_ADDR_SIZE				4				/* IP Address size in Bytes */
#endif


#ifndef EUI48_SIZE
#define EUI48_SIZE					6				/* EUI48 size in Bytes */
#endif



/************************** Global Variables *********************************/

extern u8  owEUI48[EUI48_SIZE];

extern u8  emacLiteLocalMacAddr[XEL_MAC_ADDR_SIZE];
extern u8  emacLiteLocalIpAddr[IP_ADDR_SIZE];

extern u32 emacLiteRxFrameLength;
extern u8  emacLiteRxFrame[XEL_MAX_FRAME_SIZE];

extern u8  emacLiteTxFrame[XEL_MAX_FRAME_SIZE];

extern XEmacLite emacLiteInstance;					/* Instance of the EmacLite */


/************************** Global Functions *********************************/

extern u8 owreadEUI48(void);
extern u8 owTestDelay(void);

extern void emacLitePhyDelay(unsigned int seconds);
extern u32 emacLitePhyDetect(XEmacLite* instancePtr);
extern int emacLiteEnablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress);
extern int emacLiteDisablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress);
extern void ethProcessRecvFrame(XEmacLite* instancePtr);



#ifdef __cplusplus
}
#endif

#endif /* EXTERNALS_H */
