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

#include "externals.h"
#include "Lcd.h"


/************************** Constant Definitions *****************************/

/*
 * The page size determines how much data should be written at a time.
 */
#define PAGE_SIZE	8


/************************** Variable Definitions *****************************/

extern XGpio gpio_Rotenc;
extern XGpio gpio_PWM_Lights;

static t_MsgLcd2Trx lcd_msgLcd2Trx = { 0 };
static t_MsgTrx2Lcd lcd_msgTrx2Lcd = { 0 };


const char Lcd_pointer = '>';
const char Lcd_active  = '#';
const char Lcd_blank   = ' ';

/* lcd_current_menu == LCD_CM_TOP */
const char Lcd_menu_top_msgs[][17] = {
		" == TOP ==      ",
		"  UFBmod        ",
		"  HF1-Labor     ",
		"  HF2-Labor     ",
};
const u8 Lcd_menu_top_upper_pos_max = 2;


/* lcd_current_menu == LCD_CM_UFBMOD */
const char Lcd_menu_ufbmod_msgs[][17] = {
		" == UFBmod ==   ",
		"  zurueck       ",
};
const u8 Lcd_menu_ufbmod_upper_pos_max = 0;


/* lcd_current_menu == LCD_CM_HF1 */
const char Lcd_menu_hf1_msgs[][17] = {
		" == HF1 ==      ",
		"  HF1: Vers. 1  ",
		"  HF1: Vers. 2  ",
		"  HF1: Vers. 3  ",
		"  HF1: Vers. 4  ",
		"  zurueck       ",
};
const u8 Lcd_menu_hf1_upper_pos_max = 4;

/* lcd_current_menu == LCD_CM_HF1_V01 */
const char Lcd_menu_hf1_v01_msgs[][17] = {
		" == HF1 V1 ==   ",
		"  AUS           ",
		"  868MHz -30dBm ",
		"  868MHz   0dBm ",
		"  2,4GHz -50dBm ",
		"  2,4GHz -30dBm ",
		"  zurueck       ",
};
const u8 Lcd_menu_hf1_v01_upper_pos_max = 5;


/* lcd_current_menu == LCD_CM_HF2 */
const char Lcd_menu_hf2_msgs[][17] = {
		" == HF2 ==      ",
		"  HF2: Vers. 1  ",
		"  HF2: Vers. 2  ",
		"  zurueck       ",
};
const u8 Lcd_menu_hf2_upper_pos_max = 2;


u8 sr_writeBuffer[PAGE_SIZE];	  	/* Write buffer for writing a page */
u8 sr_readBuffer[PAGE_SIZE];	  	/* Read buffer for reading a page */


/*-----------------------------------------------------------*/

u32 iicRead(UINTPTR baseAddr, u8 iicChipAddr, u8 iicRegister, u8* getValue)
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

u32 iicReadAndModify(UINTPTR baseAddr, u8 iicChipAddr, u8 iicRegister, u8 setValue, u8 readMask)
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

u32 lcdTextWrite(u8 row, u8 col, u8 strLen, const char* strBuf)
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


u32 lcdInit(void)
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

#ifdef LOGGING
		xil_printf(".\r\n");
#endif
	}
	return XST_SUCCESS;
}

u32 lcdWelcomeUFBmod(void)
{
	const u8 col 			= 0U;
	const u8 rowL1			= 0U;
	const char strBufL1[] 	= "* UFBmod  V2.x *";
	const u8 strLenL1		= 16;
	lcdTextWrite(rowL1, col, strLenL1, strBufL1);

	const u8 rowL2			= 1U;
	const char strBufL2[] 	= "* DF4IAH TX/RX *";
	const u8 strLenL2		= 16;
	lcdTextWrite(rowL2, col, strLenL2, strBufL2);

	return XST_SUCCESS;
}

u32 lcdWelcomeHF1HF2(void)
{
	const u8 col 			= 0U;
	const u8 rowL1			= 0U;
	const char strBufL1[] 	= "* UFBmod  V2.x *";
	const u8 strLenL1		= 16;
	lcdTextWrite(rowL1, col, strLenL1, strBufL1);

	const u8 rowL2			= 1U;
	const char strBufL2[] 	= "* HF1/HF2 Lab. *";
	const u8 strLenL2		= 16;
	lcdTextWrite(rowL2, col, strLenL2, strBufL2);

	return XST_SUCCESS;
}


void taskUI(void* pvParameters)
{
	static enum LCD_FSM_STATES lcd_fsm_state 	= LCD_FSM_INIT;

	static s32 gpio1_ctr_last;
	static s32 gpio1_ctr;
	static s32 gpio2_ctr_diff_last 				= 0;
	static s32 gpio2_ctr_diff					= 0;
	static u32 gpio2_push						= 0;

	/* Which menu is currently selected */
	static u8 lcd_current_menu					= 0;

	/* Being in the current menu */
	static u8 lcd_menu_current_was_dwn			= 0;
	static u8 lcd_menu_current_is_dwn			= 1;
	static u8 lcd_menu_current_upper_pos_max	= 0;
	static u8 lcd_menu_current_upper_pos		= 0;
	static u8 lcd_menu_current_active			= 0;
	static u8 lcd_menu_current_jump_do			= 0;
	static u8 lcd_menu_current_jump_there		= 0;
	const char* lcd_menu_current_msgs			= &(Lcd_menu_top_msgs[0][0]);

	static u8 lcd_menu_top_upper_pos;
	static u8 lcd_menu_top_active;

	static u8 lcd_menu_ufbmod_upper_pos;
	static u8 lcd_menu_ufbmod_active;

	static u8 lcd_menu_hf1_upper_pos;
	static u8 lcd_menu_hf1_active;

	static u8 lcd_menu_hf1_v01_upper_pos;
	static u8 lcd_menu_hf1_v01_active;

	static u8 lcd_menu_hf2_upper_pos;
	static u8 lcd_menu_hf2_active;

	/* Wait until all is up */
	vTaskDelay(pdMS_TO_TICKS(250));

	/* ROTENC counter and Push Button init */
	{
		int statusRotenc = XGpio_Initialize(&gpio_Rotenc, XPAR_ROTENC_DECODER_AXI_ROTENC_GPIO_0_DEVICE_ID);
		if (statusRotenc != XST_SUCCESS) {
#ifdef LOGGING
			xil_printf("GPIO Rotenc Initialization Failed\r\n");
#endif
			return;
		}
		XGpio_SetDataDirection(&gpio_Rotenc, 1U, 0xffffffffUL);  // 32 bit input
		XGpio_SetDataDirection(&gpio_Rotenc, 2U, 0x0000ffffUL);  // 16 bit output - 16 bit input

		/* Get current counter value to init with */
		gpio1_ctr_last = gpio1_ctr = XGpio_DiscreteRead(&gpio_Rotenc, 1U);
	}

	/* LCD init */
	{
		lcdInit();
		pwmLedSet(LED_LCDDISP_010, LED_LCDDISP_MASK);
		pwmLedSet(LED_RGB_BLACK, LED_RGB_MASK);
		lcdWelcomeHF1HF2();
		vTaskDelay(pdMS_TO_TICKS(3000));
	}

	while (1) {
		/* Read ROTENC counter and Push Button */
		gpio1_ctr  = XGpio_DiscreteRead(&gpio_Rotenc, 1U);
		gpio2_push = (0 == XGpio_DiscreteRead(&gpio_Rotenc, 2U));

		/* Calculate movement offset */
		gpio2_ctr_diff_last	= gpio2_ctr_diff;
		gpio2_ctr_diff 		= gpio1_ctr - gpio1_ctr_last;
		if (gpio2_ctr_diff >= 3) {
			/* Counting up */
			gpio1_ctr_last 				= gpio1_ctr;
			lcd_menu_current_was_dwn	= lcd_menu_current_is_dwn;
			lcd_menu_current_is_dwn 	= 1;

		} else if (gpio2_ctr_diff <= -3) {
			/* Counting down */
			gpio1_ctr_last 				= gpio1_ctr;
			lcd_menu_current_was_dwn 	= lcd_menu_current_is_dwn;
			lcd_menu_current_is_dwn 	= 0;
		} else {
			gpio2_ctr_diff = 0;
		}

		/* Better control */
		{
			/* Avoid multiple changes */
			if (gpio2_ctr_diff_last) {
				gpio2_ctr_diff = 0;
			}

			/* Avoid movement when pressing */
			if (gpio2_push) {
				gpio2_ctr_diff = 0;
			}
		}


		/* Has action happened? */
		if ((lcd_fsm_state == LCD_FSM_NOP) && (gpio2_ctr_diff || gpio2_push)) {
			lcd_fsm_state = LCD_FSM_SHOW;
		}


		/* LCD FSM (Finite State Machine) */
		switch (lcd_fsm_state) {
		case LCD_FSM_NOP: {
			vTaskDelay(pdMS_TO_TICKS(150));
		} break;

		case LCD_FSM_INIT: {
			lcd_menu_top_upper_pos		= 0;
			lcd_menu_top_active 		= 1;

			lcd_menu_ufbmod_upper_pos	= 0;
			lcd_menu_ufbmod_active		= 1;

			lcd_menu_hf1_upper_pos		= 0;
			lcd_menu_hf1_active			= 1;

			lcd_menu_hf1_v01_upper_pos	= 0;
			lcd_menu_hf1_v01_active		= 1;

			lcd_menu_hf2_upper_pos		= 0;
			lcd_menu_hf2_active			= 1;

			/* Showing the TOP menu */
			{
				lcdTextWrite(0,  0, 16, Lcd_menu_top_msgs[0]);
				lcdTextWrite(1,  0, 16, Lcd_menu_top_msgs[1]);

				lcdTextWrite(lcd_menu_top_upper_pos + (lcd_menu_current_is_dwn ?  1 : 0), 	14,  1, &Lcd_pointer);		// 14 --> 0
				lcdTextWrite(lcd_menu_top_active, 											15,  1, &Lcd_active);
			}

			lcd_fsm_state = LCD_FSM_NOP;
		} break;

		case LCD_FSM_SHOW: {
			switch (lcd_current_menu) {
			default:
			case LCD_CM_TOP:
				/* Show TOP menu */
				lcd_menu_current_upper_pos_max 	= Lcd_menu_top_upper_pos_max;
				lcd_menu_current_upper_pos		= lcd_menu_top_upper_pos;
				lcd_menu_current_active 		= lcd_menu_top_active;
				lcd_menu_current_msgs			= &(Lcd_menu_top_msgs[0][0]);
				break;

			case LCD_CM_UFBMOD:
				/* Show UFBmod menu */
				lcd_menu_current_upper_pos_max 	= Lcd_menu_ufbmod_upper_pos_max;
				lcd_menu_current_upper_pos		= lcd_menu_ufbmod_upper_pos;
				lcd_menu_current_active 		= lcd_menu_ufbmod_active;
				lcd_menu_current_msgs			= &(Lcd_menu_ufbmod_msgs[0][0]);
				break;

			case LCD_CM_HF1:
				/* Show HF1 menu */
				lcd_menu_current_upper_pos_max 	= Lcd_menu_hf1_upper_pos_max;
				lcd_menu_current_upper_pos		= lcd_menu_hf1_upper_pos;
				lcd_menu_current_active 		= lcd_menu_hf1_active;
				lcd_menu_current_msgs			= &(Lcd_menu_hf1_msgs[0][0]);
				break;

			case LCD_CM_HF1_V01:
				/* Show HF1 Vers. 01 menu */
				lcd_menu_current_upper_pos_max 	= Lcd_menu_hf1_v01_upper_pos_max;
				lcd_menu_current_upper_pos		= lcd_menu_hf1_v01_upper_pos;
				lcd_menu_current_active 		= lcd_menu_hf1_v01_active;
				lcd_menu_current_msgs			= &(Lcd_menu_hf1_v01_msgs[0][0]);
				break;

			case LCD_CM_HF2:
				/* Show HF2 menu */
				lcd_menu_current_upper_pos_max 	= Lcd_menu_hf2_upper_pos_max;
				lcd_menu_current_upper_pos		= lcd_menu_hf2_upper_pos;
				lcd_menu_current_active 		= lcd_menu_hf2_active;
				lcd_menu_current_msgs			= &(Lcd_menu_hf2_msgs[0][0]);
				break;
			}


			/* Determine new states */
			{
				if (!gpio2_push && (!lcd_menu_current_was_dwn && !lcd_menu_current_is_dwn)) {
					/* Moving one line up */
					if (lcd_menu_current_upper_pos > 0) {
						/* within range */
						--lcd_menu_current_upper_pos;
					}

				} else if (!gpio2_push && (lcd_menu_current_was_dwn && lcd_menu_current_is_dwn)) {
					/* Moving one line down */
					if (lcd_menu_current_upper_pos < lcd_menu_current_upper_pos_max) {
						/* within range */
						++lcd_menu_current_upper_pos;
					}

				} else if (gpio2_push) {
					u8 lcd_menu_current_active_last = lcd_menu_current_active;
					lcd_menu_current_active = lcd_menu_current_upper_pos + (lcd_menu_current_is_dwn ?  1 : 0);

					if (lcd_menu_current_active_last == lcd_menu_current_active) {
						/* LED reaction */
						{
							/* Second time pressed - light blip */
							pwmLedSet(LED_LCDDISP_100, LED_LCDDISP_MASK);
							vTaskDelay(pdMS_TO_TICKS(25));
							pwmLedSet(LED_LCDDISP_010, LED_LCDDISP_MASK);

							/* Top most line: show LED red */
							if (!lcd_menu_current_active) {
								/* Title can not be selected */
								pwmLedSet(LED_RGB_RED_BRIGHT, LED_RGB_MASK);
								vTaskDelay(pdMS_TO_TICKS(250));
								pwmLedSet(LED_RGB_BLACK, LED_RGB_MASK);
							}
						}

						/* Enter into sub-menu */
						if (lcd_current_menu == LCD_CM_TOP) {
							/* Top menu */

							if (lcd_menu_current_active >= 1) {
								lcd_menu_current_jump_there = lcd_menu_current_active;
								lcd_menu_current_jump_do 	= 1;
							}

							/* Correct position when cursor in up line for re-entering with cursor in down line */
							if (!lcd_menu_current_is_dwn) {
								--lcd_menu_current_upper_pos;
							}

						} else if (lcd_current_menu == LCD_CM_UFBMOD) {
							/* UFBmod menu */

							if (lcd_menu_current_active == (Lcd_menu_ufbmod_upper_pos_max + 1)) {
								/* Go to TOP menu */
								lcd_menu_current_jump_there = LCD_CM_TOP;
								lcd_menu_current_jump_do 	= 1;
							}

							/* Correct position when cursor in up line for re-entering with cursor in down line */
							if (!lcd_menu_current_is_dwn) {
								--lcd_menu_current_upper_pos;
							}

						} else if (lcd_current_menu == LCD_CM_HF1) {
							/* HF1 menu */

							if (lcd_menu_current_active == 1) {
								/* Go to HF1 V01 menu */
								lcd_menu_current_jump_there = LCD_CM_HF1_V01;
								lcd_menu_current_jump_do 	= 1;

							} else if (lcd_menu_current_active == (Lcd_menu_hf1_upper_pos_max + 1)) {
								/* Go to TOP menu */
								lcd_menu_current_jump_there = LCD_CM_TOP;
								lcd_menu_current_jump_do 	= 1;
							}

							/* Correct position when cursor in up line for re-entering with cursor in down line */
							if (!lcd_menu_current_is_dwn) {
								--lcd_menu_current_upper_pos;
							}

						} else if (lcd_current_menu == LCD_CM_HF1_V01) {
							/* HF1 Vers. 01 menu */

							if (lcd_menu_current_active == 1) {
								/* Select: OFF */
								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_OFF;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								/* LED off */
								pwmLedSet(LED_RGB_BLACK, LED_RGB_MASK);

							} else if (lcd_menu_current_active == 2) {
								/* Select: 868 MHz, -30 dBm */
								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_OFF;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_MODE_CW_SET;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_FREQ_SET;
								lcd_msgLcd2Trx.par = 868000000UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_PWR_SET;
								lcd_msgLcd2Trx.par = (u32) -32L;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_ON;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								/* LED dimmed yellow */
								pwmLedSet(LED_RGB_YELLOW_DIMMED, LED_RGB_MASK);

							} else if (lcd_menu_current_active == 3) {
								/* Select: 868 MHz,   0 dBm */
								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_OFF;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_MODE_CW_SET;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_FREQ_SET;
								lcd_msgLcd2Trx.par = 868000000UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_PWR_SET;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_ON;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								/* LED bright yellow */
								pwmLedSet(LED_RGB_YELLOW_BRIGHT, LED_RGB_MASK);

							} else if (lcd_menu_current_active == 4) {
								/* Select: 2.4 GHz, -30 dBm */
								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_OFF;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_MODE_CW_SET;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_FREQ_SET;
								lcd_msgLcd2Trx.par = 2400000000UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_PWR_SET;
								lcd_msgLcd2Trx.par = (u32) -32L;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_ON;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								/* LED dimmed blue */
								pwmLedSet(LED_RGB_BLUE_DIMMED, LED_RGB_MASK);

							} else if (lcd_menu_current_active == 5) {
								/* Select: 2.4 GHz,   0 dBm */
								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_OFF;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_MODE_CW_SET;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_FREQ_SET;
								lcd_msgLcd2Trx.par = 2400000000UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_PWR_SET;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_ON;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								/* LED bright blue */
								pwmLedSet(LED_RGB_BLUE_BRIGHT, LED_RGB_MASK);

							} else if (lcd_menu_current_active == (Lcd_menu_hf1_v01_upper_pos_max + 1)) {
								/* Turn off */
								lcd_msgLcd2Trx.cmd = MsgLcd2Trx_cmd_TX_OFF;
								lcd_msgLcd2Trx.par = 0UL;
								if (xQueueSend(qhLcd2Trx, (void*) &lcd_msgLcd2Trx, pdMS_TO_TICKS(25)) != pdPASS) {
									/* Failed to post the message */
								}

								/* LED off */
								pwmLedSet(LED_RGB_BLACK, LED_RGB_MASK);

								/* Go to HF1 menu */
								lcd_menu_current_jump_there = LCD_CM_HF1;
								lcd_menu_current_jump_do 	= 1;
							}

							/* Correct position when cursor in up line for re-entering with cursor in down line */
							if (!lcd_menu_current_is_dwn) {
								--lcd_menu_current_upper_pos;
							}

						} else if (lcd_current_menu == LCD_CM_HF2) {
							/* HF2 menu */

							if (lcd_menu_current_active == (Lcd_menu_hf2_upper_pos_max + 1)) {
								/* Go to TOP menu */
								lcd_menu_current_jump_there = LCD_CM_TOP;
								lcd_menu_current_jump_do 	= 1;
							}

							/* Correct position when cursor in up line for re-entering with cursor in down line */
							if (!lcd_menu_current_is_dwn) {
								--lcd_menu_current_upper_pos;
							}
						}

						/* Delay until un-pressed */
						do {
							gpio2_push = (0 == XGpio_DiscreteRead(&gpio_Rotenc, 2U));

							if (!gpio2_push) {
								break;
							}

							vTaskDelay(pdMS_TO_TICKS(25));
						} while(1);
					}
				}
			}


			/* Print message lines */
			{
				lcdTextWrite( 0, 0, 16, (17 * (lcd_menu_current_upper_pos    ) + lcd_menu_current_msgs));
				lcdTextWrite( 1, 0, 16, (17 * (lcd_menu_current_upper_pos + 1) + lcd_menu_current_msgs));
			}

			/* Show pointer */
			{
				/* Show active and blanked pointer */
				lcdTextWrite((!lcd_menu_current_is_dwn ?  0 : 1), 14, 1, &Lcd_pointer);	// 14 --> 0
				lcdTextWrite((!lcd_menu_current_is_dwn ?  1 : 0), 14, 1, &Lcd_blank);
			}

			/* Show active */
			{
				if (lcd_menu_current_active == lcd_menu_current_upper_pos) {
					/* Show in upper line */
					lcdTextWrite(0, 15, 1, &Lcd_active);

					/* Blank in the other line*/
					lcdTextWrite(1, 15, 1, &Lcd_blank);
				}

				if (lcd_menu_current_active == (lcd_menu_current_upper_pos + 1)) {
					/* Show in lower line */
					lcdTextWrite(1, 15, 1, &Lcd_active);

					/* Blank in the other line*/
					lcdTextWrite(0, 15, 1, &Lcd_blank);
				}
			}

			/* Delay when pressed */
			if (gpio2_push) {
				vTaskDelay(pdMS_TO_TICKS(250));
			}


			/* Write back current state */
			switch (lcd_current_menu) {
			default:
			case LCD_CM_TOP:
				/* Push top menu */
				lcd_menu_top_upper_pos 			= lcd_menu_current_upper_pos;
				lcd_menu_top_active				= lcd_menu_current_active;
				break;

			case LCD_CM_UFBMOD:
				/* Push UFBmod menu */
				lcd_menu_ufbmod_upper_pos 		= lcd_menu_current_upper_pos;
				lcd_menu_ufbmod_active			= lcd_menu_current_active;
				break;

			case LCD_CM_HF1:
				/* Push HF1 menu */
				lcd_menu_hf1_upper_pos 			= lcd_menu_current_upper_pos;
				lcd_menu_hf1_active				= lcd_menu_current_active;
				break;

			case LCD_CM_HF1_V01:
				/* Push HF1 Vers. 01 menu */
				lcd_menu_hf1_v01_upper_pos 		= lcd_menu_current_upper_pos;
				lcd_menu_hf1_v01_active			= lcd_menu_current_active;
				break;

			case LCD_CM_HF2:
				/* Push HF2 menu */
				lcd_menu_hf2_upper_pos 			= lcd_menu_current_upper_pos;
				lcd_menu_hf2_active				= lcd_menu_current_active;
				break;
			}


			/* Prepare for new menu hierarchy position */
			if (lcd_menu_current_jump_do) {
				lcd_current_menu 			= lcd_menu_current_jump_there;
				lcd_menu_current_jump_do	= 0;

				lcd_menu_current_was_dwn	= 0;	// Show the cursor always in the second line ...
				lcd_menu_current_is_dwn		= 1;	// ... without down movement

				lcd_fsm_state 				= LCD_FSM_SHOW;

			} else {
				lcd_fsm_state 				= LCD_FSM_NOP;
			}
		} break;

		default:
			lcd_fsm_state = LCD_FSM_INIT;
		}
	}
}
