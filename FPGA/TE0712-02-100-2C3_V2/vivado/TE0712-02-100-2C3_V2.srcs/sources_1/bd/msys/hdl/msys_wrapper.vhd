--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Sun Feb 28 20:50:40 2021
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target msys_wrapper.bd
--Design      : msys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_wrapper is
  port (
    BOARD_IIC_scl_io : inout STD_LOGIC;
    BOARD_IIC_sda_io : inout STD_LOGIC;
    BOARD_ROTENC_PUSH : in STD_LOGIC;
    CLK0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK1B_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK2_mgt_clk0_clk_n : in STD_LOGIC;
    CLK2_mgt_clk0_clk_p : in STD_LOGIC;
    CLK3_sys_diff_clk_n : in STD_LOGIC;
    CLK3_sys_diff_clk_p : in STD_LOGIC;
    DDR3_SDRAM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR3_SDRAM_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_SDRAM_cas_n : out STD_LOGIC;
    DDR3_SDRAM_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_dm : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR3_SDRAM_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_ras_n : out STD_LOGIC;
    DDR3_SDRAM_reset_n : out STD_LOGIC;
    DDR3_SDRAM_we_n : out STD_LOGIC;
    DDR3_init_calib_complete : out STD_LOGIC;
    ETH0_DA_G : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_DA_Y : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_LINK_LED_g : in STD_LOGIC;
    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_io : inout STD_LOGIC;
    EUI48_FSM_run : in STD_LOGIC;
    EUI48_FSM_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    EUI48_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    LCD_BL : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_rstn : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_blue : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_green : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_red : out STD_LOGIC_VECTOR ( 0 to 0 );
    LVDS_mrk09ok : in STD_LOGIC;
    LVDS_mrk24ok : in STD_LOGIC;
    LVDS_rx09_synced : in STD_LOGIC;
    LVDS_rx24_synced : in STD_LOGIC;
    PLL_I2C_ext_scl_o : out STD_LOGIC;
    PLL_I2C_ext_sda : inout STD_LOGIC;
    PLL_int : in STD_LOGIC;
    RMII_PHY_M_0_crs_dv : in STD_LOGIC;
    RMII_PHY_M_0_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RMII_PHY_M_0_tx_en : out STD_LOGIC;
    RMII_PHY_M_0_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SCOPE_FSM_FIFO_RdEmpty : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdEn : in STD_LOGIC;
    SCOPE_FSM_FIFO_RdValid : out STD_LOGIC;
    SCOPE_FSM_FIFO_Rst : in STD_LOGIC;
    SCOPE_FSM_FIFO_WrEn : in STD_LOGIC;
    SCOPE_FSM_FIFO_WrFull : out STD_LOGIC;
    SCOPE_FSM_FIFO_rd_rst_busy : out STD_LOGIC;
    SCOPE_FSM_FIFO_wr_rst_busy : out STD_LOGIC;
    SCOPE_FSM_GPIO0_Out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SCOPE_FSM_GPIO1_In : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SCOPE_FSM_Timebase_CE : in STD_LOGIC;
    SCOPE_FSM_TrigSrc : out STD_LOGIC_VECTOR ( 47 downto 0 );
    TRX_CONFIG_GPIO1_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_CONFIG_GPIO2_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_CONFIG_SPI_io0_io : inout STD_LOGIC;
    TRX_CONFIG_SPI_io1_io : inout STD_LOGIC;
    TRX_CONFIG_SPI_sck_io : inout STD_LOGIC;
    TRX_CONFIG_SPI_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_LVDS_tx09_fifo_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_RX_PUSHDATA_GPIO1_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_RX_PUSHDATA_GPIO2_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDSAMPL_GPIO1_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDSAMPL_GPIO2_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDS_GPIO1_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO1_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO2_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : in STD_LOGIC;
    TRX_clk_trx_26MHz_vio : in STD_LOGIC;
    TRX_clk_trx_pll_25MHz_vio : in STD_LOGIC;
    TRX_decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_int : in STD_LOGIC;
    TRX_rx09_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx_clkdiv_16MHz_in : in STD_LOGIC;
    TRX_rx_rd_data_count : in STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_tx_DDS0_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_inc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_tx_DDS1_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_data_count : in STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_tx_im : in STD_LOGIC_VECTOR ( 12 downto 0 );
    TRX_tx_re : in STD_LOGIC_VECTOR ( 12 downto 0 );
    UART0EXT_CTSn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DCDn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DSRn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DTRn : in STD_LOGIC;
    UART0EXT_RIn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_RTSn : in STD_LOGIC;
    UART0_clk : out STD_LOGIC;
    UART0_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0_rxd : in STD_LOGIC;
    UART0_txd : out STD_LOGIC;
    USER_dbg_00_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_01_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_02_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_03_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_04_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_05_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_06_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_07_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_08_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_09_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_10_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_11_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_12_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_13_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    dds_tx09_inc : in STD_LOGIC_VECTOR ( 25 downto 0 );
    dds_tx09_ptt : in STD_LOGIC;
    decoder_rx09_ch00_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch01_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch01_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch01_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch02_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch02_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch02_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch03_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch03_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch03_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch04_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch04_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch04_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch05_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch05_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch05_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch06_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch06_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch06_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch07_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch07_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch07_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_chXX_active : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 );
    microblaze_0_Clk_100MHz : out STD_LOGIC;
    mig_7series_0_mmcm_locked : out STD_LOGIC;
    mig_7series_0_ui_addn_clk_0_200MHz : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    qspi_flash_io0_io : inout STD_LOGIC;
    qspi_flash_io1_io : inout STD_LOGIC;
    qspi_flash_io2_io : inout STD_LOGIC;
    qspi_flash_io3_io : inout STD_LOGIC;
    qspi_flash_ss_io : inout STD_LOGIC;
    reset : in STD_LOGIC;
    rotenc_dec_cnt_en : in STD_LOGIC;
    rotenc_dec_cnt_up_dwn : in STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst_mig_7series_0_100M_peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end msys_wrapper;

architecture STRUCTURE of msys_wrapper is
  component msys is
  port (
    PLL_I2C_ext_scl_o : out STD_LOGIC;
    PLL_I2C_ext_sda : inout STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    reset : in STD_LOGIC;
    UART0EXT_RTSn : in STD_LOGIC;
    UART0EXT_DTRn : in STD_LOGIC;
    UART0EXT_CTSn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DSRn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DCDn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_RIn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0_clk : out STD_LOGIC;
    DDR3_init_calib_complete : out STD_LOGIC;
    ETH0_DA_Y : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_DA_G : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_LINK_LED_g : in STD_LOGIC;
    LED_RGB_red : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_green : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_blue : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_BL : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_rstn : out STD_LOGIC_VECTOR ( 0 to 0 );
    microblaze_0_Clk_100MHz : out STD_LOGIC;
    rotenc_dec_cnt_up_dwn : in STD_LOGIC;
    rotenc_dec_cnt_en : in STD_LOGIC;
    BOARD_ROTENC_PUSH : in STD_LOGIC;
    PLL_int : in STD_LOGIC;
    TRX_int : in STD_LOGIC;
    CLK1B_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    EUI48_FSM_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    EUI48_FSM_run : in STD_LOGIC;
    EUI48_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    SCOPE_FSM_Timebase_CE : in STD_LOGIC;
    SCOPE_FSM_FIFO_Rst : in STD_LOGIC;
    SCOPE_FSM_FIFO_RdEn : in STD_LOGIC;
    SCOPE_FSM_FIFO_WrFull : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdValid : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdEmpty : out STD_LOGIC;
    SCOPE_FSM_TrigSrc : out STD_LOGIC_VECTOR ( 47 downto 0 );
    SCOPE_FSM_FIFO_WrEn : in STD_LOGIC;
    SCOPE_FSM_FIFO_rd_rst_busy : out STD_LOGIC;
    SCOPE_FSM_FIFO_wr_rst_busy : out STD_LOGIC;
    SCOPE_FSM_GPIO0_Out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SCOPE_FSM_GPIO1_In : in STD_LOGIC_VECTOR ( 31 downto 0 );
    LVDS_rx09_synced : in STD_LOGIC;
    LVDS_rx24_synced : in STD_LOGIC;
    decoder_rx09_ch00_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    dds_tx09_inc : in STD_LOGIC_VECTOR ( 25 downto 0 );
    dds_tx09_ptt : in STD_LOGIC;
    mig_7series_0_mmcm_locked : out STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx_clkdiv_16MHz_in : in STD_LOGIC;
    TRX_rx24_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx_rd_data_count : in STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_clk_trx_26MHz_vio : in STD_LOGIC;
    TRX_clk_trx_pll_25MHz_vio : in STD_LOGIC;
    TRX_tx_re : in STD_LOGIC_VECTOR ( 12 downto 0 );
    TRX_tx_im : in STD_LOGIC_VECTOR ( 12 downto 0 );
    TRX_tx_data_count : in STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : in STD_LOGIC;
    TRX_decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_inc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_tx_DDS0_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS1_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mig_7series_0_ui_addn_clk_0_200MHz : out STD_LOGIC;
    decoder_rx09_chXX_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_active : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch01_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch02_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch03_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch04_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch05_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch06_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch07_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch01_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch02_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch03_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch04_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch05_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch06_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch07_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch01_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch02_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch03_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch04_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch05_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch06_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch07_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_CONFIG_GPIO1_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_CONFIG_GPIO2_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO1_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO1_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO2_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDSAMPL_GPIO1_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDSAMPL_GPIO2_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_RX_PUSHDATA_GPIO1_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_RX_PUSHDATA_GPIO2_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_LVDS_tx09_fifo_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    LVDS_mrk09ok : in STD_LOGIC;
    LVDS_mrk24ok : in STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_02_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_00_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_04_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_05_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_06_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_07_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_08_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_09_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_10_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_11_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_12_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_13_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_01_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    USER_dbg_03_signal : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK3_sys_diff_clk_p : in STD_LOGIC;
    CLK3_sys_diff_clk_n : in STD_LOGIC;
    CLK0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    BOARD_IIC_scl_i : in STD_LOGIC;
    BOARD_IIC_scl_o : out STD_LOGIC;
    BOARD_IIC_scl_t : out STD_LOGIC;
    BOARD_IIC_sda_i : in STD_LOGIC;
    BOARD_IIC_sda_o : out STD_LOGIC;
    BOARD_IIC_sda_t : out STD_LOGIC;
    TRX_CONFIG_SPI_io0_i : in STD_LOGIC;
    TRX_CONFIG_SPI_io0_o : out STD_LOGIC;
    TRX_CONFIG_SPI_io0_t : out STD_LOGIC;
    TRX_CONFIG_SPI_io1_i : in STD_LOGIC;
    TRX_CONFIG_SPI_io1_o : out STD_LOGIC;
    TRX_CONFIG_SPI_io1_t : out STD_LOGIC;
    TRX_CONFIG_SPI_sck_i : in STD_LOGIC;
    TRX_CONFIG_SPI_sck_o : out STD_LOGIC;
    TRX_CONFIG_SPI_sck_t : out STD_LOGIC;
    TRX_CONFIG_SPI_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_CONFIG_SPI_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_CONFIG_SPI_ss_t : out STD_LOGIC;
    qspi_flash_io0_i : in STD_LOGIC;
    qspi_flash_io0_o : out STD_LOGIC;
    qspi_flash_io0_t : out STD_LOGIC;
    qspi_flash_io1_i : in STD_LOGIC;
    qspi_flash_io1_o : out STD_LOGIC;
    qspi_flash_io1_t : out STD_LOGIC;
    qspi_flash_io2_i : in STD_LOGIC;
    qspi_flash_io2_o : out STD_LOGIC;
    qspi_flash_io2_t : out STD_LOGIC;
    qspi_flash_io3_i : in STD_LOGIC;
    qspi_flash_io3_o : out STD_LOGIC;
    qspi_flash_io3_t : out STD_LOGIC;
    qspi_flash_ss_i : in STD_LOGIC;
    qspi_flash_ss_o : out STD_LOGIC;
    qspi_flash_ss_t : out STD_LOGIC;
    UART0_rxd : in STD_LOGIC;
    UART0_txd : out STD_LOGIC;
    CLK2_mgt_clk0_clk_p : in STD_LOGIC;
    CLK2_mgt_clk0_clk_n : in STD_LOGIC;
    DDR3_SDRAM_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR3_SDRAM_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR3_SDRAM_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_SDRAM_ras_n : out STD_LOGIC;
    DDR3_SDRAM_cas_n : out STD_LOGIC;
    DDR3_SDRAM_we_n : out STD_LOGIC;
    DDR3_SDRAM_reset_n : out STD_LOGIC;
    DDR3_SDRAM_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_dm : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_i : in STD_LOGIC;
    ETH0_MDIO_MDC_mdio_o : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_t : out STD_LOGIC;
    RMII_PHY_M_0_crs_dv : in STD_LOGIC;
    RMII_PHY_M_0_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RMII_PHY_M_0_tx_en : out STD_LOGIC;
    RMII_PHY_M_0_txd : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component msys;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal BOARD_IIC_scl_i : STD_LOGIC;
  signal BOARD_IIC_scl_o : STD_LOGIC;
  signal BOARD_IIC_scl_t : STD_LOGIC;
  signal BOARD_IIC_sda_i : STD_LOGIC;
  signal BOARD_IIC_sda_o : STD_LOGIC;
  signal BOARD_IIC_sda_t : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_i : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_o : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_t : STD_LOGIC;
  signal TRX_CONFIG_SPI_io0_i : STD_LOGIC;
  signal TRX_CONFIG_SPI_io0_o : STD_LOGIC;
  signal TRX_CONFIG_SPI_io0_t : STD_LOGIC;
  signal TRX_CONFIG_SPI_io1_i : STD_LOGIC;
  signal TRX_CONFIG_SPI_io1_o : STD_LOGIC;
  signal TRX_CONFIG_SPI_io1_t : STD_LOGIC;
  signal TRX_CONFIG_SPI_sck_i : STD_LOGIC;
  signal TRX_CONFIG_SPI_sck_o : STD_LOGIC;
  signal TRX_CONFIG_SPI_sck_t : STD_LOGIC;
  signal TRX_CONFIG_SPI_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_CONFIG_SPI_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_CONFIG_SPI_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_CONFIG_SPI_ss_t : STD_LOGIC;
  signal qspi_flash_io0_i : STD_LOGIC;
  signal qspi_flash_io0_o : STD_LOGIC;
  signal qspi_flash_io0_t : STD_LOGIC;
  signal qspi_flash_io1_i : STD_LOGIC;
  signal qspi_flash_io1_o : STD_LOGIC;
  signal qspi_flash_io1_t : STD_LOGIC;
  signal qspi_flash_io2_i : STD_LOGIC;
  signal qspi_flash_io2_o : STD_LOGIC;
  signal qspi_flash_io2_t : STD_LOGIC;
  signal qspi_flash_io3_i : STD_LOGIC;
  signal qspi_flash_io3_o : STD_LOGIC;
  signal qspi_flash_io3_t : STD_LOGIC;
  signal qspi_flash_ss_i : STD_LOGIC;
  signal qspi_flash_ss_o : STD_LOGIC;
  signal qspi_flash_ss_t : STD_LOGIC;
begin
BOARD_IIC_scl_iobuf: component IOBUF
     port map (
      I => BOARD_IIC_scl_o,
      IO => BOARD_IIC_scl_io,
      O => BOARD_IIC_scl_i,
      T => BOARD_IIC_scl_t
    );
BOARD_IIC_sda_iobuf: component IOBUF
     port map (
      I => BOARD_IIC_sda_o,
      IO => BOARD_IIC_sda_io,
      O => BOARD_IIC_sda_i,
      T => BOARD_IIC_sda_t
    );
ETH0_MDIO_MDC_mdio_iobuf: component IOBUF
     port map (
      I => ETH0_MDIO_MDC_mdio_o,
      IO => ETH0_MDIO_MDC_mdio_io,
      O => ETH0_MDIO_MDC_mdio_i,
      T => ETH0_MDIO_MDC_mdio_t
    );
TRX_CONFIG_SPI_io0_iobuf: component IOBUF
     port map (
      I => TRX_CONFIG_SPI_io0_o,
      IO => TRX_CONFIG_SPI_io0_io,
      O => TRX_CONFIG_SPI_io0_i,
      T => TRX_CONFIG_SPI_io0_t
    );
TRX_CONFIG_SPI_io1_iobuf: component IOBUF
     port map (
      I => TRX_CONFIG_SPI_io1_o,
      IO => TRX_CONFIG_SPI_io1_io,
      O => TRX_CONFIG_SPI_io1_i,
      T => TRX_CONFIG_SPI_io1_t
    );
TRX_CONFIG_SPI_sck_iobuf: component IOBUF
     port map (
      I => TRX_CONFIG_SPI_sck_o,
      IO => TRX_CONFIG_SPI_sck_io,
      O => TRX_CONFIG_SPI_sck_i,
      T => TRX_CONFIG_SPI_sck_t
    );
TRX_CONFIG_SPI_ss_iobuf_0: component IOBUF
     port map (
      I => TRX_CONFIG_SPI_ss_o_0(0),
      IO => TRX_CONFIG_SPI_ss_io(0),
      O => TRX_CONFIG_SPI_ss_i_0(0),
      T => TRX_CONFIG_SPI_ss_t
    );
msys_i: component msys
     port map (
      BOARD_IIC_scl_i => BOARD_IIC_scl_i,
      BOARD_IIC_scl_o => BOARD_IIC_scl_o,
      BOARD_IIC_scl_t => BOARD_IIC_scl_t,
      BOARD_IIC_sda_i => BOARD_IIC_sda_i,
      BOARD_IIC_sda_o => BOARD_IIC_sda_o,
      BOARD_IIC_sda_t => BOARD_IIC_sda_t,
      BOARD_ROTENC_PUSH => BOARD_ROTENC_PUSH,
      CLK0_clk_n(0) => CLK0_clk_n(0),
      CLK0_clk_p(0) => CLK0_clk_p(0),
      CLK1B_clk(0) => CLK1B_clk(0),
      CLK2_mgt_clk0_clk_n => CLK2_mgt_clk0_clk_n,
      CLK2_mgt_clk0_clk_p => CLK2_mgt_clk0_clk_p,
      CLK3_sys_diff_clk_n => CLK3_sys_diff_clk_n,
      CLK3_sys_diff_clk_p => CLK3_sys_diff_clk_p,
      DDR3_SDRAM_addr(14 downto 0) => DDR3_SDRAM_addr(14 downto 0),
      DDR3_SDRAM_ba(2 downto 0) => DDR3_SDRAM_ba(2 downto 0),
      DDR3_SDRAM_cas_n => DDR3_SDRAM_cas_n,
      DDR3_SDRAM_ck_n(0) => DDR3_SDRAM_ck_n(0),
      DDR3_SDRAM_ck_p(0) => DDR3_SDRAM_ck_p(0),
      DDR3_SDRAM_cke(0) => DDR3_SDRAM_cke(0),
      DDR3_SDRAM_cs_n(0) => DDR3_SDRAM_cs_n(0),
      DDR3_SDRAM_dm(3 downto 0) => DDR3_SDRAM_dm(3 downto 0),
      DDR3_SDRAM_dq(31 downto 0) => DDR3_SDRAM_dq(31 downto 0),
      DDR3_SDRAM_dqs_n(3 downto 0) => DDR3_SDRAM_dqs_n(3 downto 0),
      DDR3_SDRAM_dqs_p(3 downto 0) => DDR3_SDRAM_dqs_p(3 downto 0),
      DDR3_SDRAM_odt(0) => DDR3_SDRAM_odt(0),
      DDR3_SDRAM_ras_n => DDR3_SDRAM_ras_n,
      DDR3_SDRAM_reset_n => DDR3_SDRAM_reset_n,
      DDR3_SDRAM_we_n => DDR3_SDRAM_we_n,
      DDR3_init_calib_complete => DDR3_init_calib_complete,
      ETH0_DA_G(0) => ETH0_DA_G(0),
      ETH0_DA_Y(0) => ETH0_DA_Y(0),
      ETH0_LINK_LED_g => ETH0_LINK_LED_g,
      ETH0_MDIO_MDC_mdc => ETH0_MDIO_MDC_mdc,
      ETH0_MDIO_MDC_mdio_i => ETH0_MDIO_MDC_mdio_i,
      ETH0_MDIO_MDC_mdio_o => ETH0_MDIO_MDC_mdio_o,
      ETH0_MDIO_MDC_mdio_t => ETH0_MDIO_MDC_mdio_t,
      EUI48_FSM_run => EUI48_FSM_run,
      EUI48_FSM_start(0) => EUI48_FSM_start(0),
      EUI48_data(47 downto 0) => EUI48_data(47 downto 0),
      LCD_BL(0) => LCD_BL(0),
      LCD_rstn(0) => LCD_rstn(0),
      LED_RGB_blue(0) => LED_RGB_blue(0),
      LED_RGB_green(0) => LED_RGB_green(0),
      LED_RGB_red(0) => LED_RGB_red(0),
      LVDS_mrk09ok => LVDS_mrk09ok,
      LVDS_mrk24ok => LVDS_mrk24ok,
      LVDS_rx09_synced => LVDS_rx09_synced,
      LVDS_rx24_synced => LVDS_rx24_synced,
      PLL_I2C_ext_scl_o => PLL_I2C_ext_scl_o,
      PLL_I2C_ext_sda => PLL_I2C_ext_sda,
      PLL_int => PLL_int,
      RMII_PHY_M_0_crs_dv => RMII_PHY_M_0_crs_dv,
      RMII_PHY_M_0_rxd(1 downto 0) => RMII_PHY_M_0_rxd(1 downto 0),
      RMII_PHY_M_0_tx_en => RMII_PHY_M_0_tx_en,
      RMII_PHY_M_0_txd(1 downto 0) => RMII_PHY_M_0_txd(1 downto 0),
      SCOPE_FSM_FIFO_RdEmpty => SCOPE_FSM_FIFO_RdEmpty,
      SCOPE_FSM_FIFO_RdEn => SCOPE_FSM_FIFO_RdEn,
      SCOPE_FSM_FIFO_RdValid => SCOPE_FSM_FIFO_RdValid,
      SCOPE_FSM_FIFO_Rst => SCOPE_FSM_FIFO_Rst,
      SCOPE_FSM_FIFO_WrEn => SCOPE_FSM_FIFO_WrEn,
      SCOPE_FSM_FIFO_WrFull => SCOPE_FSM_FIFO_WrFull,
      SCOPE_FSM_FIFO_rd_rst_busy => SCOPE_FSM_FIFO_rd_rst_busy,
      SCOPE_FSM_FIFO_wr_rst_busy => SCOPE_FSM_FIFO_wr_rst_busy,
      SCOPE_FSM_GPIO0_Out(31 downto 0) => SCOPE_FSM_GPIO0_Out(31 downto 0),
      SCOPE_FSM_GPIO1_In(31 downto 0) => SCOPE_FSM_GPIO1_In(31 downto 0),
      SCOPE_FSM_Timebase_CE => SCOPE_FSM_Timebase_CE,
      SCOPE_FSM_TrigSrc(47 downto 0) => SCOPE_FSM_TrigSrc(47 downto 0),
      TRX_CONFIG_GPIO1_o(31 downto 0) => TRX_CONFIG_GPIO1_o(31 downto 0),
      TRX_CONFIG_GPIO2_i(31 downto 0) => TRX_CONFIG_GPIO2_i(31 downto 0),
      TRX_CONFIG_SPI_io0_i => TRX_CONFIG_SPI_io0_i,
      TRX_CONFIG_SPI_io0_o => TRX_CONFIG_SPI_io0_o,
      TRX_CONFIG_SPI_io0_t => TRX_CONFIG_SPI_io0_t,
      TRX_CONFIG_SPI_io1_i => TRX_CONFIG_SPI_io1_i,
      TRX_CONFIG_SPI_io1_o => TRX_CONFIG_SPI_io1_o,
      TRX_CONFIG_SPI_io1_t => TRX_CONFIG_SPI_io1_t,
      TRX_CONFIG_SPI_sck_i => TRX_CONFIG_SPI_sck_i,
      TRX_CONFIG_SPI_sck_o => TRX_CONFIG_SPI_sck_o,
      TRX_CONFIG_SPI_sck_t => TRX_CONFIG_SPI_sck_t,
      TRX_CONFIG_SPI_ss_i(0) => TRX_CONFIG_SPI_ss_i_0(0),
      TRX_CONFIG_SPI_ss_o(0) => TRX_CONFIG_SPI_ss_o_0(0),
      TRX_CONFIG_SPI_ss_t => TRX_CONFIG_SPI_ss_t,
      TRX_LVDS_tx09_fifo_din(31 downto 0) => TRX_LVDS_tx09_fifo_din(31 downto 0),
      TRX_RX_PUSHDATA_GPIO1_i(31 downto 0) => TRX_RX_PUSHDATA_GPIO1_i(31 downto 0),
      TRX_RX_PUSHDATA_GPIO2_o(31 downto 0) => TRX_RX_PUSHDATA_GPIO2_o(31 downto 0),
      TRX_TX_DDSAMPL_GPIO1_o(15 downto 0) => TRX_TX_DDSAMPL_GPIO1_o(15 downto 0),
      TRX_TX_DDSAMPL_GPIO2_o(15 downto 0) => TRX_TX_DDSAMPL_GPIO2_o(15 downto 0),
      TRX_TX_DDS_GPIO1_i(31 downto 0) => TRX_TX_DDS_GPIO1_i(31 downto 0),
      TRX_TX_DDS_GPIO1_o(31 downto 0) => TRX_TX_DDS_GPIO1_o(31 downto 0),
      TRX_TX_DDS_GPIO2_o(31 downto 0) => TRX_TX_DDS_GPIO2_o(31 downto 0),
      TRX_TX_RF09_PULLDATA_FIFO_empty => TRX_TX_RF09_PULLDATA_FIFO_empty,
      TRX_clk_trx_26MHz_vio => TRX_clk_trx_26MHz_vio,
      TRX_clk_trx_pll_25MHz_vio => TRX_clk_trx_pll_25MHz_vio,
      TRX_decoder_rx09_ch00_squelch_lvl(15 downto 0) => TRX_decoder_rx09_ch00_squelch_lvl(15 downto 0),
      TRX_int => TRX_int,
      TRX_rx09_32bits_CD100(31 downto 0) => TRX_rx09_32bits_CD100(31 downto 0),
      TRX_rx24_32bits_CD100(31 downto 0) => TRX_rx24_32bits_CD100(31 downto 0),
      TRX_rx_clkdiv_16MHz_in => TRX_rx_clkdiv_16MHz_in,
      TRX_rx_rd_data_count(3 downto 0) => TRX_rx_rd_data_count(3 downto 0),
      TRX_tx_DDS0_gpio_ampt(15 downto 0) => TRX_tx_DDS0_gpio_ampt(15 downto 0),
      TRX_tx_DDS0_gpio_inc(31 downto 0) => TRX_tx_DDS0_gpio_inc(31 downto 0),
      TRX_tx_DDS1_gpio_ampt(15 downto 0) => TRX_tx_DDS1_gpio_ampt(15 downto 0),
      TRX_tx_data_count(11 downto 0) => TRX_tx_data_count(11 downto 0),
      TRX_tx_im(12 downto 0) => TRX_tx_im(12 downto 0),
      TRX_tx_re(12 downto 0) => TRX_tx_re(12 downto 0),
      UART0EXT_CTSn(0) => UART0EXT_CTSn(0),
      UART0EXT_DCDn(0) => UART0EXT_DCDn(0),
      UART0EXT_DSRn(0) => UART0EXT_DSRn(0),
      UART0EXT_DTRn => UART0EXT_DTRn,
      UART0EXT_RIn(0) => UART0EXT_RIn(0),
      UART0EXT_RTSn => UART0EXT_RTSn,
      UART0_clk => UART0_clk,
      UART0_rst_n(0) => UART0_rst_n(0),
      UART0_rxd => UART0_rxd,
      UART0_txd => UART0_txd,
      USER_dbg_00_signal(0) => USER_dbg_00_signal(0),
      USER_dbg_01_signal(0) => USER_dbg_01_signal(0),
      USER_dbg_02_signal(0) => USER_dbg_02_signal(0),
      USER_dbg_03_signal(0) => USER_dbg_03_signal(0),
      USER_dbg_04_signal(0) => USER_dbg_04_signal(0),
      USER_dbg_05_signal(0) => USER_dbg_05_signal(0),
      USER_dbg_06_signal(0) => USER_dbg_06_signal(0),
      USER_dbg_07_signal(0) => USER_dbg_07_signal(0),
      USER_dbg_08_signal(0) => USER_dbg_08_signal(0),
      USER_dbg_09_signal(0) => USER_dbg_09_signal(0),
      USER_dbg_10_signal(0) => USER_dbg_10_signal(0),
      USER_dbg_11_signal(0) => USER_dbg_11_signal(0),
      USER_dbg_12_signal(0) => USER_dbg_12_signal(0),
      USER_dbg_13_signal(0) => USER_dbg_13_signal(0),
      dds_tx09_inc(25 downto 0) => dds_tx09_inc(25 downto 0),
      dds_tx09_ptt => dds_tx09_ptt,
      decoder_rx09_ch00_center_pos(7 downto 0) => decoder_rx09_ch00_center_pos(7 downto 0),
      decoder_rx09_ch00_noise(18 downto 0) => decoder_rx09_ch00_noise(18 downto 0),
      decoder_rx09_ch00_strength(18 downto 0) => decoder_rx09_ch00_strength(18 downto 0),
      decoder_rx09_ch01_center_pos(7 downto 0) => decoder_rx09_ch01_center_pos(7 downto 0),
      decoder_rx09_ch01_noise(18 downto 0) => decoder_rx09_ch01_noise(18 downto 0),
      decoder_rx09_ch01_strength(18 downto 0) => decoder_rx09_ch01_strength(18 downto 0),
      decoder_rx09_ch02_center_pos(7 downto 0) => decoder_rx09_ch02_center_pos(7 downto 0),
      decoder_rx09_ch02_noise(18 downto 0) => decoder_rx09_ch02_noise(18 downto 0),
      decoder_rx09_ch02_strength(18 downto 0) => decoder_rx09_ch02_strength(18 downto 0),
      decoder_rx09_ch03_center_pos(7 downto 0) => decoder_rx09_ch03_center_pos(7 downto 0),
      decoder_rx09_ch03_noise(18 downto 0) => decoder_rx09_ch03_noise(18 downto 0),
      decoder_rx09_ch03_strength(18 downto 0) => decoder_rx09_ch03_strength(18 downto 0),
      decoder_rx09_ch04_center_pos(7 downto 0) => decoder_rx09_ch04_center_pos(7 downto 0),
      decoder_rx09_ch04_noise(18 downto 0) => decoder_rx09_ch04_noise(18 downto 0),
      decoder_rx09_ch04_strength(18 downto 0) => decoder_rx09_ch04_strength(18 downto 0),
      decoder_rx09_ch05_center_pos(7 downto 0) => decoder_rx09_ch05_center_pos(7 downto 0),
      decoder_rx09_ch05_noise(18 downto 0) => decoder_rx09_ch05_noise(18 downto 0),
      decoder_rx09_ch05_strength(18 downto 0) => decoder_rx09_ch05_strength(18 downto 0),
      decoder_rx09_ch06_center_pos(7 downto 0) => decoder_rx09_ch06_center_pos(7 downto 0),
      decoder_rx09_ch06_noise(18 downto 0) => decoder_rx09_ch06_noise(18 downto 0),
      decoder_rx09_ch06_strength(18 downto 0) => decoder_rx09_ch06_strength(18 downto 0),
      decoder_rx09_ch07_center_pos(7 downto 0) => decoder_rx09_ch07_center_pos(7 downto 0),
      decoder_rx09_ch07_noise(18 downto 0) => decoder_rx09_ch07_noise(18 downto 0),
      decoder_rx09_ch07_strength(18 downto 0) => decoder_rx09_ch07_strength(18 downto 0),
      decoder_rx09_chXX_active(7 downto 0) => decoder_rx09_chXX_active(7 downto 0),
      decoder_rx09_chXX_sql_open(7 downto 0) => decoder_rx09_chXX_sql_open(7 downto 0),
      microblaze_0_Clk_100MHz => microblaze_0_Clk_100MHz,
      mig_7series_0_mmcm_locked => mig_7series_0_mmcm_locked,
      mig_7series_0_ui_addn_clk_0_200MHz => mig_7series_0_ui_addn_clk_0_200MHz,
      phy_rst_n => phy_rst_n,
      qspi_flash_io0_i => qspi_flash_io0_i,
      qspi_flash_io0_o => qspi_flash_io0_o,
      qspi_flash_io0_t => qspi_flash_io0_t,
      qspi_flash_io1_i => qspi_flash_io1_i,
      qspi_flash_io1_o => qspi_flash_io1_o,
      qspi_flash_io1_t => qspi_flash_io1_t,
      qspi_flash_io2_i => qspi_flash_io2_i,
      qspi_flash_io2_o => qspi_flash_io2_o,
      qspi_flash_io2_t => qspi_flash_io2_t,
      qspi_flash_io3_i => qspi_flash_io3_i,
      qspi_flash_io3_o => qspi_flash_io3_o,
      qspi_flash_io3_t => qspi_flash_io3_t,
      qspi_flash_ss_i => qspi_flash_ss_i,
      qspi_flash_ss_o => qspi_flash_ss_o,
      qspi_flash_ss_t => qspi_flash_ss_t,
      reset => reset,
      rotenc_dec_cnt_en => rotenc_dec_cnt_en,
      rotenc_dec_cnt_up_dwn => rotenc_dec_cnt_up_dwn,
      rst_mig_7series_0_100M_peripheral_aresetn(0) => rst_mig_7series_0_100M_peripheral_aresetn(0),
      rst_mig_7series_0_100M_peripheral_reset(0) => rst_mig_7series_0_100M_peripheral_reset(0)
    );
qspi_flash_io0_iobuf: component IOBUF
     port map (
      I => qspi_flash_io0_o,
      IO => qspi_flash_io0_io,
      O => qspi_flash_io0_i,
      T => qspi_flash_io0_t
    );
qspi_flash_io1_iobuf: component IOBUF
     port map (
      I => qspi_flash_io1_o,
      IO => qspi_flash_io1_io,
      O => qspi_flash_io1_i,
      T => qspi_flash_io1_t
    );
qspi_flash_io2_iobuf: component IOBUF
     port map (
      I => qspi_flash_io2_o,
      IO => qspi_flash_io2_io,
      O => qspi_flash_io2_i,
      T => qspi_flash_io2_t
    );
qspi_flash_io3_iobuf: component IOBUF
     port map (
      I => qspi_flash_io3_o,
      IO => qspi_flash_io3_io,
      O => qspi_flash_io3_i,
      T => qspi_flash_io3_t
    );
qspi_flash_ss_iobuf: component IOBUF
     port map (
      I => qspi_flash_ss_o,
      IO => qspi_flash_ss_io,
      O => qspi_flash_ss_i,
      T => qspi_flash_ss_t
    );
end STRUCTURE;
