#ifndef TRX_H
#define TRX_H

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

#define SPI_TRX_BASE_ADDRESS  		XPAR_TRX_TRX_CONFIG_TRX_AXI_QUAD_SPI_0_BASEADDR


#define TRX_FRCS_MODE1_OFS			 377000000UL
#define TRX_FRCS_MODE1_DIV			   6500000UL

#define TRX_FRCS_MODE2_OFS			 754000000UL
#define TRX_FRCS_MODE2_DIV			  13000000UL

#define TRX_FRCS_MODE3_OFS			2366000000UL
#define TRX_FRCS_MODE3_DIV			  26000000UL


/* Most restrictive due to SAW filter */
#define FREQ_SAWFILT_MIN			 868000000UL
#define FREQ_SAWFILT_MAX			 870000000UL

/* EU-868 */
#define FREQ_SRD_868_MIN			 863000000UL
#define FREQ_SRD_868_MAX			 870000000UL

/* TRX boundaries */
#define FREQ_MODE2_MIN				 779000000UL
#define FREQ_MODE2_MAX				1020000000UL
#define FREQ_MODE3_MIN				2400000000UL
#define FREQ_MODE3_MAX				2483500000UL


#define STATE_TRXOFF				0x02
#define STATE_TXPREP				0x03
#define STATE_TX					0x04
#define STATE_RX					0x05
#define STATE_TRANSITION			0x06
#define STATE_RESET					0x07

#define CMD_NOP						0x00
#define CMD_SLEEP					0x01
#define CMD_TRXOFF					0x02
#define CMD_TXPREP					0x03
#define CMD_TX						0x04
#define CMD_RX						0x05
#define CMD_RESET					0x07

#define CHPM_RF_MODE_BBRF			0x00
#define CHPM_RF_MODE_RF				0x01
#define CHPM_RF_MODE_BBRF09			0x04
#define CHPM_RF_MODE_BBRF24			0x05

#define CTX_DISABLE					0
#define CTX_ENABLE					1

#define DAC_CW_DISABLE				0
#define DAC_CW_ENABLE				1



/************************** Function Prototypes ******************************/




#ifdef __cplusplus
}
#endif

#endif /* TRX_H */
