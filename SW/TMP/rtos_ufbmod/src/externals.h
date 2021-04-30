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


#define min(a,b)	((a) > (b) ?  (b) : (a))


enum MsgLcd2Trx_cmd_ENUM {
	MsgLcd2Trx_cmd_NOP					= 0,
	MsgLcd2Trx_cmd_TX_OFF,
	MsgLcd2Trx_cmd_TX_ON,
	MsgLcd2Trx_cmd_TX_FREQ_SET,
	MsgLcd2Trx_cmd_TX_PWR_SET,
	MsgLcd2Trx_cmd_TX_MODE_CW_SET,

	MsgLcd2Trx_cmd_TX_UFBMOD_AUTO_EXEC	= 64,
};


typedef struct MsgLcd2Trx {
	u8		cmd;
	u32		par;
} t_MsgLcd2Trx;


typedef struct MsgTrx2Lcd {
	u8		status;
	u32		par;
} t_MsgTrx2Lcd;



/************************** Global Variables *********************************/

extern volatile u8 owEUI48[EUI48_SIZE];

extern u8  emacLiteLocalMacAddr[XEL_MAC_ADDR_SIZE];
extern u8  emacLiteLocalIpAddr[IP_ADDR_SIZE];

extern u32 emacLiteRxFrameLength;
extern u8  emacLiteRxFrame[XEL_MAX_FRAME_SIZE];

extern u8  emacLiteTxFrame[XEL_MAX_FRAME_SIZE];

extern XEmacLite emacLiteInstance;					/* Instance of the EmacLite */

extern QueueHandle_t qhLcd2Trx;
extern QueueHandle_t qhTrx2Lcd;


/************************** Global Functions *********************************/

extern u8 owreadEUI48(void);

extern u32 iicRead(UINTPTR baseAddr, u8 iicChipAddr, u8 iicRegister, u8* getValue);
extern u32 iicReadAndModify(UINTPTR baseAddr, u8 iicChipAddr, u8 iicRegister, u8 setValue, u8 readMask);

extern u32 lcdInit(void);
extern void pwmLedSet(u32 enableBF, u32 changeMsk);
extern u32 pwmLedGet(void);
extern u32 lcdWelcomeUFBmod(void);
extern u32 lcdWelcomeHF1HF2(void);
extern void taskUI(void* pvParameters);

extern void taskTrx(void* pvParameters);
extern void taskTrxRxMsg(void* pvParameters);

extern void emacLitePhyDelay(unsigned int seconds);
extern u32 emacLitePhyDetect(XEmacLite* instancePtr);
extern int emacLiteEnablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress);
extern int emacLiteDisablePhyLoopBack(XEmacLite* instancePtr, u32 phyAddress);
extern void ethProcessRecvFrame(XEmacLite* instancePtr);



#ifdef __cplusplus
}
#endif

#endif /* EXTERNALS_H */
