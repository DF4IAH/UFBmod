--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Wed Oct 28 23:33:21 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target msys_wrapper.bd
--Design      : top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    BOARD_IIC_scl_io                                    : inout STD_LOGIC;
    BOARD_IIC_sda_io                                    : inout STD_LOGIC;
    BOARD_ROTENC_I                                      : in    STD_LOGIC;
    BOARD_ROTENC_Q                                      : in    STD_LOGIC;
    BOARD_ROTENC_PUSH                                   : in    STD_LOGIC;
    CLK0_clk_n                                          : in    STD_LOGIC;
    CLK0_clk_p                                          : in    STD_LOGIC;
    CLK1B_clk                                           : in    STD_LOGIC;
    CLK2_mgt_clk0_clk_n                                 : in    STD_LOGIC;
    CLK2_mgt_clk0_clk_p                                 : in    STD_LOGIC;
    CLK3_sys_diff_clk_n                                 : in    STD_LOGIC;
    CLK3_sys_diff_clk_p                                 : in    STD_LOGIC;
    DDR3_SDRAM_addr                                     : out   STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR3_SDRAM_ba                                       : out   STD_LOGIC_VECTOR (  2 downto 0 );
    DDR3_SDRAM_cas_n                                    : out   STD_LOGIC;
    DDR3_SDRAM_ck_n                                     : out   STD_LOGIC_VECTOR (  0 downto 0 );
    DDR3_SDRAM_ck_p                                     : out   STD_LOGIC_VECTOR (  0 downto 0 );
    DDR3_SDRAM_cke                                      : out   STD_LOGIC_VECTOR (  0 downto 0 );
    DDR3_SDRAM_cs_n                                     : out   STD_LOGIC_VECTOR (  0 downto 0 );
    DDR3_SDRAM_dm                                       : out   STD_LOGIC_VECTOR (  3 downto 0 );
    DDR3_SDRAM_dq                                       : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR3_SDRAM_dqs_n                                    : inout STD_LOGIC_VECTOR (  3 downto 0 );
    DDR3_SDRAM_dqs_p                                    : inout STD_LOGIC_VECTOR (  3 downto 0 );
    DDR3_SDRAM_odt                                      : out   STD_LOGIC_VECTOR (  0 downto 0 );
    DDR3_SDRAM_ras_n                                    : out   STD_LOGIC;
    DDR3_SDRAM_reset_n                                  : out   STD_LOGIC;
    DDR3_SDRAM_we_n                                     : out   STD_LOGIC;
    DDR3_init_calib_complete                            : out   STD_LOGIC;
    ETH0_DA_G                                           : out   STD_LOGIC;
    ETH0_DA_Y                                           : out   STD_LOGIC;
    ETH0_LINK_LED                                       : in    STD_LOGIC;
    ETH0_MDIO_MDC_mdc                                   : out   STD_LOGIC;
    ETH0_MDIO_MDC_mdio_io                               : inout STD_LOGIC;
    EUI48_onewire_io                                    : inout STD_LOGIC;
    FPGA_IO                                             : in    STD_LOGIC;
    LCD_BL                                              : out   STD_LOGIC;
    LCD_rstn                                            : out   STD_LOGIC;
    LED_RGB_blue                                        : out   STD_LOGIC;
    LED_RGB_green                                       : out   STD_LOGIC;
    LED_RGB_red                                         : out   STD_LOGIC;
    PLL_I2C_ext_scl_o                                   : out   STD_LOGIC;
    PLL_I2C_ext_sda                                     : inout STD_LOGIC;
    PLL_int                                             : in    STD_LOGIC;
    RMII_PHY_M_0_crs_dv                                 : in    STD_LOGIC;
    RMII_PHY_M_0_rxd                                    : in    STD_LOGIC_VECTOR (  1 downto 0 );
    RMII_PHY_M_0_tx_en                                  : out   STD_LOGIC;
    RMII_PHY_M_0_txd                                    : out   STD_LOGIC_VECTOR (  1 downto 0 );
    TRX_clk_26MHz                                       : in    STD_LOGIC;
    TRX_PLL_clk_25MHz_p                                 : out   STD_LOGIC;
    TRX_PLL_clk_25MHz_n                                 : out   STD_LOGIC;
    TRX_int                                             : in    STD_LOGIC;
    TRX_resetn                                          : out   STD_LOGIC;
    TRX_rfx_mode                                        : out   STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p                              : in    STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n                              : in    STD_LOGIC;
    TRX_rx_data_p                                       : in    STD_LOGIC_VECTOR (  1 downto 0 );
    TRX_rx_data_n                                       : in    STD_LOGIC_VECTOR (  1 downto 0 );
    TRX_spi_io0_io                                      : inout STD_LOGIC;
    TRX_spi_io1_io                                      : inout STD_LOGIC;
    TRX_spi_sck_io                                      : inout STD_LOGIC;
    TRX_spi_ss_io                                       : inout STD_LOGIC;
    TRX_tx_clk_clk_p                                    : out   STD_LOGIC;
    TRX_tx_clk_clk_n                                    : out   STD_LOGIC;
    TRX_tx_data_p                                       : out   STD_LOGIC_VECTOR (  1 downto 0 );
    TRX_tx_data_n                                       : out   STD_LOGIC_VECTOR (  1 downto 0 );
    UART0EXT_CTSn                                       : out   STD_LOGIC;
    UART0EXT_DCDn                                       : out   STD_LOGIC;
    UART0EXT_DSRn                                       : out   STD_LOGIC;
    UART0EXT_DTRn                                       : in    STD_LOGIC;
    UART0EXT_RIn                                        : out   STD_LOGIC;
    UART0EXT_RTSn                                       : in    STD_LOGIC;
    UART0_clk                                           : out   STD_LOGIC;
    UART0_rst_n                                         : out   STD_LOGIC;
    UART0_rxd                                           : in    STD_LOGIC;
    UART0_txd                                           : out   STD_LOGIC;
    ULI_SYSTEM_XIO                                      : in    STD_LOGIC;
    USER_dbg_out                                        : out   STD_LOGIC_VECTOR ( 13 downto 0 );
    phy_rst_n                                           : out   STD_LOGIC;
    qspi_flash_io0_io                                   : inout STD_LOGIC;
    qspi_flash_io1_io                                   : inout STD_LOGIC;
    qspi_flash_io2_io                                   : inout STD_LOGIC;
    qspi_flash_io3_io                                   : inout STD_LOGIC;
    qspi_flash_ss_io                                    : inout STD_LOGIC;
    reset                                               : in    STD_LOGIC
  );
end top;

architecture STRUCTURE of top is
  component msys_wrapper is
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
    TRX_data_count : in STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_int : in STD_LOGIC;
    TRX_rd_data_count_CD100 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    TRX_rx09_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx_clkdiv_16MHz_in : in STD_LOGIC;
    TRX_tx_DDS0_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_inc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_tx_DDS1_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
    USER_dbg_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
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
    mig_7series_0_ui_clk_sync_rst : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    qspi_flash_io0_io : inout STD_LOGIC;
    qspi_flash_io1_io : inout STD_LOGIC;
    qspi_flash_io2_io : inout STD_LOGIC;
    qspi_flash_io3_io : inout STD_LOGIC;
    qspi_flash_ss_io : inout STD_LOGIC;
    reset : in STD_LOGIC;
    rotenc_dec_cnt_en : in STD_LOGIC;
    rotenc_dec_cnt_up_dwn : in STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys_wrapper;
  component IOBUF is
  port (
    I                                                   : in    STD_LOGIC;
    O                                                   : out   STD_LOGIC;
    T                                                   : in    STD_LOGIC;
    IO                                                  : inout STD_LOGIC
  );
  end component IOBUF;
  component rotenc_decoder is
  port (
    clk                                                 : in    STD_LOGIC;
    reset                                               : in    STD_LOGIC;
    rotenc_I                                            : in    STD_LOGIC;
    rotenc_Q                                            : in    STD_LOGIC;
    cnt_up_dwn                                          : out   STD_LOGIC;
    cnt_en                                              : out   STD_LOGIC
  );
  end component rotenc_decoder;
  component auto_LVDS_rotate is
  port (
    reset                                               : in    STD_LOGIC;
    clk                                                 : in    STD_LOGIC;
    LVDS09                                              : in    STD_LOGIC_VECTOR ( 31 downto 0 );
    LVDS09_valid                                        : in    STD_LOGIC;
    LVDS24                                              : in    STD_LOGIC_VECTOR ( 31 downto 0 );
    LVDS24_valid                                        : in    STD_LOGIC;
    rot09q                                              : out   STD_LOGIC_VECTOR ( 31 downto 0 );
    rot09vld                                            : out   STD_LOGIC;
    rot24q                                              : out   STD_LOGIC_VECTOR ( 31 downto 0 );
    rot24vld                                            : out   STD_LOGIC;
    LVDS_rx09_synced                                    : out   STD_LOGIC;
    LVDS_rx24_synced                                    : out   STD_LOGIC
  );
  end component auto_LVDS_rotate;
  component FFT_controller is
  port (
    -- All Clock Domain AXI 100 MHz
    reset                                               : in    STD_LOGIC;
    clk                                                 : in    STD_LOGIC;

    rx09_bs_32bits                                      : in    STD_LOGIC_VECTOR ( 31 downto 0 );
    rx09_bs_32bits_vld                                  : in    STD_LOGIC;

  --rx24_bs_32bits                                      : in    STD_LOGIC_VECTOR ( 31 downto 0 );
  --rx24_bs_32bits_vld                                  : in    STD_LOGIC;

    PreMem09_addra                                      : out   STD_LOGIC_VECTOR ( 10 downto 0 );  -- (a)  2x FFT frame of 1024 points = 2048 addresses
    PreMem09_wea                                        : out   STD_LOGIC;
    PreMem09_dina                                       : out   STD_LOGIC_VECTOR ( 25 downto 0 );  -- (b)  29..17: I-data, 13..01: Q-data
    PreMem09_addrb                                      : out   STD_LOGIC_VECTOR ( 10 downto 0 );  -- see above (a)

    FFT_window_coef_rom_rx09                            : out   STD_LOGIC_VECTOR (  9 downto 0 );

    RF09_quarterfrm                                     : out   STD_LOGIC_VECTOR (  1 downto 0 );  -- subframes of  64 us
    RF09_framectr                                       : out   STD_LOGIC_VECTOR ( 29 downto 0 );  -- frames    of 256 us

  --PreMem24_addra                                      : out   STD_LOGIC_VECTOR ( 10 downto 0 );  -- (a)  2x FFT frame of 1024 points = 2048 addresses
  --PreMem24_wea                                        : out   STD_LOGIC;
  --PreMem24_dina                                       : out   STD_LOGIC_VECTOR ( 25 downto 0 );  -- see above (b)
  --PreMem24_addrb                                      : out   STD_LOGIC_VECTOR ( 10 downto 0 );  -- see above (a)

  --FFT_window_coef_rom_rx24                            : out   STD_LOGIC_VECTOR (  9 downto 0 );

  --RF24_quarterfrm                                     : out   STD_LOGIC_VECTOR (  1 downto 0 );  -- subframes of  64 us
  --RF24_framectr                                       : out   STD_LOGIC_VECTOR ( 29 downto 0 );  -- frames    of 256 us

    XFFT09_s_data_tlast                                 : out   STD_LOGIC;
    XFFT09_s_data_tready                                : in    STD_LOGIC;
    XFFT09_s_data_tvalid                                : out   STD_LOGIC;
    XFFT09_s_conf_tdata                                 : out   STD_LOGIC_VECTOR (  7 downto 0 );
    XFFT09_s_conf_tvalid                                : out   STD_LOGIC

  --XFFT24_aresetn                                      : out   STD_LOGIC;
  --XFFT24_s_data_tlast                                 : out   STD_LOGIC;
  --XFFT24_s_data_tready                                : in    STD_LOGIC;
  --XFFT24_s_data_tvalid                                : out   STD_LOGIC;
  --XFFT24_s_conf_tdata                                 : out   STD_LOGIC_VECTOR (  7 downto 0 );
  --XFFT24_s_conf_tvalid                                : out   STD_LOGIC
  );
  end component FFT_controller;
  component EUI48_FSM is 
  port (
    reset                                               : in    STD_LOGIC;
    clk                                                 : in    STD_LOGIC;
    EUI48_onewire_tri_i                                 : in    STD_LOGIC;
    EUI48_onewire_tri_o                                 : out   STD_LOGIC;
    EUI48_onewire_tri_t                                 : out   STD_LOGIC;
    EUI48_FSM_start                                     : in    STD_LOGIC;
    EUI48_FSM_run                                       : out   STD_LOGIC;
    EUI48_data                                          : out   STD_LOGIC_VECTOR ( 47 downto 0 );
    EUI48_state                                         : out   STD_LOGIC_VECTOR (  7 downto 0 );
    EUI48_abort                                         : out   STD_LOGIC_VECTOR (  7 downto 0 )
  );
  end component EUI48_FSM;
  component UFBmod_TRX_wrapper is
  port (
    FFT_window_coef_rom_rx09 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    RF09_framectr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    RF09_quarterfrm : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Status_LVDS_rx09_synced : in STD_LOGIC;
    Status_LVDS_rx24_synced : in STD_LOGIC;
    TRX_CONFIG_GPIO1_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_CONFIG_GPIO2_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_LVDS_tx09_fifo_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_PLL_clk_25MHz_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PUSHDATA_ch00_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch00_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch00_req : in STD_LOGIC;
    TRX_PUSHDATA_ch00_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch01_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch01_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch01_req : in STD_LOGIC;
    TRX_PUSHDATA_ch01_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch02_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch02_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch02_req : in STD_LOGIC;
    TRX_PUSHDATA_ch02_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch03_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch03_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch03_req : in STD_LOGIC;
    TRX_PUSHDATA_ch03_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch04_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch04_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch04_req : in STD_LOGIC;
    TRX_PUSHDATA_ch04_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch05_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch05_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch05_req : in STD_LOGIC;
    TRX_PUSHDATA_ch05_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch06_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch06_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch06_req : in STD_LOGIC;
    TRX_PUSHDATA_ch06_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch07_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch07_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch07_req : in STD_LOGIC;
    TRX_PUSHDATA_ch07_wr_en : in STD_LOGIC;
    TRX_RX_PUSHDATA_GPIO1_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_RX_PUSHDATA_GPIO2_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDSAMPL_GPIO1_o : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDSAMPL_GPIO2_o : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDS_GPIO1_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO1_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO2_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : out STD_LOGIC;
    TRX_clk_26MHz : in STD_LOGIC;
    TRX_clk_trx_26MHz_vio : out STD_LOGIC;
    TRX_clk_trx_pll_25MHz_vio : out STD_LOGIC;
    TRX_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_dds_tx_rf09_inc : in STD_LOGIC_VECTOR ( 25 downto 0 );
    TRX_dds_tx_rf09_ptt : in STD_LOGIC;
    TRX_decoder_rx09_squelch_lvl : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_encoder_tx09_pull_FIFO_dump : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_encoder_tx09_pull_data_len : out STD_LOGIC_VECTOR ( 6 downto 0 );
    TRX_encoder_tx09_pull_do_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_fft09_data_tready_out : out STD_LOGIC;
    TRX_post_fft_mem_a_rx09_EoT : out STD_LOGIC;
    TRX_post_fft_rx09_mem_a_addr : out STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_pulldata_tx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_rd_data_count_CD100_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    TRX_resetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx09_32bits_CD100 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo_valid : out STD_LOGIC;
    TRX_rx24_32bits_CD100 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo_valid : out STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    TRX_rx_clkdiv_16MHz : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_rf09_Pre_FFT_mem_addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    TRX_rx_rf09_ch00_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch00_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch01_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch01_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch02_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch02_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch03_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch03_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch04_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch04_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch05_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch05_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch06_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch06_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch07_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch07_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS1_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC;
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_im_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_re_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_xfft_rx09_dly3449_event_data_in_channel_halt : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_frame_started : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_missing : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_unexpected : out STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    microblaze_0_Clk_100MHz : in STD_LOGIC;
    mig_7series_0_mmcm_locked : in STD_LOGIC;
    mig_7series_0_ui_addn_clk_0_200MHz : in STD_LOGIC;
    mig_7series_0_ui_clk_sync_rst : in STD_LOGIC;
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC;
    pulldata_tx09_en : in STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_aresetn : in STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_reset : in STD_LOGIC
  );
  end component UFBmod_TRX_wrapper;
  component UFBmod_Decoder_wrapper is
  port (
    clk_100MHz                                          : in    STD_LOGIC;
    reset_100MHz                                        : in    STD_LOGIC;
    TRX_dds_tx_rf09_ptt                                 : in    STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_SoM_frameCtr               : out   STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_decoder_rx_rf09_chXX_active                     : out   STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_center_pos                 : out   STD_LOGIC_VECTOR (  7 downto 0 );
    TRX_decoder_rx_rf09_chXX_noise                      : out   STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_decoder_rx_rf09_chXX_sql_open                   : out   STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_squelch_lvl                : in    STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_decoder_rx_rf09_chXX_strength                   : out   STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_post_fft_rx_rf09_chXX_mem_b_dout                : in    STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_post_fft_rx_rf09_mem_a_EoT                      : in    STD_LOGIC;
    TRX_post_fft_rx_rf09_mem_a_addr                     : in    STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_post_fft_rx_rf09_chXX_mem_b_addr                : out   STD_LOGIC_VECTOR (  4 downto 0 );
    TRX_pushdata_rx_rf09_chXX_din                       : out   STD_LOGIC_VECTOR (  7 downto 0 );
    TRX_pushdata_rx_rf09_chXX_grant                     : in    STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_req                       : out   STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_wr_en                     : out   STD_LOGIC
  );
  end component UFBmod_Decoder_wrapper;
  component UFBmod_Encoder_wrapper is
  port (
    clk_100MHz                                          : in    STD_LOGIC;
    reset_100MHz                                        : in    STD_LOGIC;
    decoder_rx09_chAll_sql_open                         : in    STD_LOGIC_VECTOR(  7 downto 0 );
    decoder_rx09_chAll_active                           : in    STD_LOGIC_VECTOR(  7 downto 0 );
    encoder_pull_FIFO_dump                              : in    STD_LOGIC;
    encoder_pull_do_start                               : in    STD_LOGIC;
    encoder_pull_data_len                               : in    STD_LOGIC_VECTOR(  6 downto 0 );
    pulldata_tx09_en                                    : out   STD_LOGIC;
    pulldata_tx09_byteData                              : in    STD_LOGIC_VECTOR(  7 downto 0 );
    TRX_dds_tx_rf09_inc                                 : out   STD_LOGIC_VECTOR ( 25 downto 0 );
    TRX_dds_tx_rf09_ptt                                 : out   STD_LOGIC
  );
 end component UFBmod_Encoder_wrapper;
  component SCOPE_FSM is
  Port (
    reset                                               : in    STD_LOGIC;
    clk                                                 : in    STD_LOGIC;
    SCOPE_FSM_GPIO0_Out                                 : in    STD_LOGIC_VECTOR ( 31 downto 0 );
    SCOPE_FSM_GPIO1_In                                  : out   STD_LOGIC_VECTOR ( 31 downto 0 );
    SCOPE_FSM_TrigSrc                                   : in    STD_LOGIC_VECTOR ( 47 downto 0 );
    SCOPE_FSM_Timebase_CE                               : out   STD_LOGIC;
    SCOPE_FSM_FIFO_Rst                                  : out   STD_LOGIC;
    SCOPE_FSM_FIFO_wr_rst_busy                          : in    STD_LOGIC;
    SCOPE_FSM_FIFO_rd_rst_busy                          : in    STD_LOGIC;
    SCOPE_FSM_FIFO_WrFull                               : in    STD_LOGIC;
    SCOPE_FSM_FIFO_RdEmpty                              : in    STD_LOGIC;
    SCOPE_FSM_FIFO_WrEn                                 : out   STD_LOGIC;
    SCOPE_FSM_FIFO_RdEn                                 : out   STD_LOGIC;
    SCOPE_FSM_FIFO_RdValid                              : in    STD_LOGIC
  );
  end component SCOPE_FSM;
  
  signal BOARD_IIC_scl_i : STD_LOGIC;
  signal BOARD_IIC_scl_o : STD_LOGIC;
  signal BOARD_IIC_scl_t : STD_LOGIC;
  signal BOARD_IIC_sda_i : STD_LOGIC;
  signal BOARD_IIC_sda_o : STD_LOGIC;
  signal BOARD_IIC_sda_t : STD_LOGIC;
  
  signal ETH0_LINK_LED_g : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_i : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_o : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_t : STD_LOGIC;
  
  signal top_EUI48_FSM_start : STD_LOGIC;
  signal top_EUI48_FSM_run : STD_LOGIC;
  signal top_EUI48_abort : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_EUI48_data : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal top_EUI48_onewire_tri_i : STD_LOGIC;
  signal top_EUI48_onewire_tri_o : STD_LOGIC;
  signal top_EUI48_onewire_tri_t : STD_LOGIC;
  signal top_EUI48_state : STD_LOGIC_VECTOR ( 7 downto 0 );
  
  signal top_FFT_window_coef_rom_rx09 : STD_LOGIC_VECTOR ( 9 downto 0 );
  
  signal top_LVDS_rx_rf09_synced : STD_LOGIC;
  signal top_LVDS_rx_rf24_synced : STD_LOGIC;
  
  signal top_RF09_framectr : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal top_RF09_quarterfrm : STD_LOGIC_VECTOR ( 1 downto 0 );
  
  signal top_SCOPE_FSM_GPIO0_Out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_SCOPE_FSM_GPIO1_In : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_SCOPE_FSM_TrigSrc : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal top_SCOPE_FSM_Timebase_CE : STD_LOGIC;
  signal top_SCOPE_FSM_FIFO_Rst : STD_LOGIC;
  signal top_SCOPE_FSM_FIFO_WrFull : STD_LOGIC;
  signal top_SCOPE_FSM_FIFO_RdEmpty : STD_LOGIC;
  signal top_SCOPE_FSM_FIFO_WrEn : STD_LOGIC;
  signal top_SCOPE_FSM_FIFO_RdEn : STD_LOGIC;
  signal top_SCOPE_FSM_FIFO_RdValid : STD_LOGIC;
  signal top_SCOPE_FSM_FIFO_rd_rst_busy : STD_LOGIC;
  signal top_SCOPE_FSM_FIFO_wr_rst_busy : STD_LOGIC;
  
  signal top_TRX_CONFIG_GPIO1_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_CONFIG_GPIO2_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  
  signal top_TRX_LVDS_tx09_fifo_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  
  signal top_TRX_RX_PUSHDATA_GPIO1_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_RX_PUSHDATA_GPIO2_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  
  signal top_TRX_TX_DDSAMPL_GPIO1_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_TRX_TX_DDSAMPL_GPIO2_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  
  signal top_TRX_clk_trx_26MHz_vio : STD_LOGIC;
  signal top_TRX_clk_trx_pll_25MHz_vio : STD_LOGIC;
  
  signal top_TRX_data_count : STD_LOGIC_VECTOR ( 11 downto 0 );
  
  signal top_TRX_dds_tx_rf09_inc : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal top_TRX_dds_tx_rf09_ptt : STD_LOGIC;
  
  signal top_TRX_decoder_rx_rf09_chAll_active       : STD_LOGIC_VECTOR (  7 downto 0 );
  signal top_TRX_decoder_rx_rf09_chAll_sql_open     : STD_LOGIC_VECTOR (  7 downto 0 );
  signal top_TRX_decoder_rx_rf09_chAll_squelch_lvl  : STD_LOGIC_VECTOR ( 15 downto 0 );
  
  signal top_TRX_decoder_rx_rf09_chXX_SoM_frameCtr  : STD_LOGIC_VECTOR ( 31 downto 0 );
    
  signal top_TRX_decoder_rx_rf09_ch00_center_pos : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch00_noise : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch00_strength : STD_LOGIC_VECTOR ( 18 downto 0 );
  
  signal top_TRX_decoder_rx_rf09_ch01_center_pos : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch01_noise : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch01_strength : STD_LOGIC_VECTOR ( 18 downto 0 );
  
  signal top_TRX_decoder_rx_rf09_ch02_center_pos : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch02_noise : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch02_strength : STD_LOGIC_VECTOR ( 18 downto 0 );
  
  signal top_TRX_decoder_rx_rf09_ch03_center_pos : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch03_noise : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch03_strength : STD_LOGIC_VECTOR ( 18 downto 0 );
  
  signal top_TRX_decoder_rx_rf09_ch04_center_pos : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch04_noise : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch04_strength : STD_LOGIC_VECTOR ( 18 downto 0 );
  
  signal top_TRX_decoder_rx_rf09_ch05_center_pos : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch05_noise : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch05_strength : STD_LOGIC_VECTOR ( 18 downto 0 );
  
  signal top_TRX_decoder_rx_rf09_ch06_center_pos : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch06_noise : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch06_strength : STD_LOGIC_VECTOR ( 18 downto 0 );
  
  signal top_TRX_decoder_rx_rf09_ch07_center_pos : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch07_noise : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal top_TRX_decoder_rx_rf09_ch07_strength : STD_LOGIC_VECTOR ( 18 downto 0 );
  
  signal top_TRX_encoder_tx_rf09_pull_FIFO_dump : STD_LOGIC;
  signal top_TRX_encoder_tx_rf09_pull_data_len : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal top_TRX_encoder_tx_rf09_pull_do_start : STD_LOGIC;
  
  signal top_TRX_fft_rx_rf09_config_tdata_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_fft_rx_rf09_config_tvalid_in : STD_LOGIC;
  signal top_TRX_fft_rx_rf09_data_tlast_in : STD_LOGIC;
  signal top_TRX_fft_rx_rf09_data_tready_out : STD_LOGIC;
  signal top_TRX_fft_rx_rf09_data_tvalid_in : STD_LOGIC;
  signal top_TRX_fft_rx_rf09_premem_subframe_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  
  signal top_TRX_post_fft_rx_rf09_ch00_mem_b_addr : STD_LOGIC_VECTOR (  4 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch00_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch01_mem_b_addr : STD_LOGIC_VECTOR (  4 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch01_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch02_mem_b_addr : STD_LOGIC_VECTOR (  4 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch02_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch03_mem_b_addr : STD_LOGIC_VECTOR (  4 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch03_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch04_mem_b_addr : STD_LOGIC_VECTOR (  4 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch04_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch05_mem_b_addr : STD_LOGIC_VECTOR (  4 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch05_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch06_mem_b_addr : STD_LOGIC_VECTOR (  4 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch06_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch07_mem_b_addr : STD_LOGIC_VECTOR (  4 downto 0 );
  signal top_TRX_post_fft_rx_rf09_ch07_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  
  signal top_TRX_post_fft_rx_rf09_mem_a_EoT : STD_LOGIC;
  signal top_TRX_post_fft_rx_rf09_mem_a_addr : STD_LOGIC_VECTOR ( 41 downto 0 );
  
  signal top_TRX_pulldata_tx_rf09_byteData : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_TRX_pulldata_tx_rf09_en : STD_LOGIC;
  signal top_TRX_pulldata_tx_rf09_FIFO_empty : STD_LOGIC;
  
  signal top_TRX_pushdata_rx_rf09_ch00_req : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch00_grant : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch00_wr_en : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch00_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  
  signal top_TRX_pushdata_rx_rf09_ch01_req : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch01_grant : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch01_wr_en : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch01_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  
  signal top_TRX_pushdata_rx_rf09_ch02_req : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch02_grant : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch02_wr_en : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch02_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  
  signal top_TRX_pushdata_rx_rf09_ch03_req : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch03_grant : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch03_wr_en : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch03_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  
  signal top_TRX_pushdata_rx_rf09_ch04_req : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch04_grant : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch04_wr_en : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch04_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  
  signal top_TRX_pushdata_rx_rf09_ch05_req : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch05_grant : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch05_wr_en : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch05_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  
  signal top_TRX_pushdata_rx_rf09_ch06_req : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch06_grant : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch06_wr_en : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch06_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  
  signal top_TRX_pushdata_rx_rf09_ch07_req : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch07_grant : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch07_wr_en : STD_LOGIC;
  signal top_TRX_pushdata_rx_rf09_ch07_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  
  signal top_TRX_pre_fft_rx_rf09_mem_a_addr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal top_TRX_pre_fft_rx_rf09_mem_a_din  : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal top_TRX_pre_fft_rx_rf09_mem_a_we   : STD_LOGIC;
  signal top_TRX_pre_fft_rx_rf09_mem_b_addr : STD_LOGIC_VECTOR ( 10 downto 0 );
--signal top_TRX_pre_fft_rx_rf09_mem_b_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  
  signal top_TRX_rd_data_count_CD100 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal top_TRX_rot09vld : STD_LOGIC;
  signal top_TRX_rot24vld : STD_LOGIC;
  
  signal top_TRX_rx_clkdiv_16MHz : STD_LOGIC;
  
  signal top_TRX_rx_rf09_32bits_CD100 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_rx_rf09_bs : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_rx_rf09_fifo : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_rx_rf09_fifo_valid : STD_LOGIC;
  
  signal top_TRX_rx_rf24_32bits_CD100 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_rx_rf24_bs : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_rx_rf24_fifo : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_rx_rf24_fifo_valid : STD_LOGIC;
  
  signal top_TRX_tx_DDS0_gpio_ampt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal top_TRX_TX_DDS_GPIO1_o    : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_TX_DDS_GPIO1_i    : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_TX_DDS_GPIO2_o    : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal top_TRX_tx_DDS1_gpio_ampt : STD_LOGIC_VECTOR ( 15 downto 0 );
  
  signal top_TRX_tx_im : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal top_TRX_tx_re : STD_LOGIC_VECTOR ( 12 downto 0 );
  
--signal top_TRX_xfft_rx09_dly3449_event_data_in_channel_halt : STD_LOGIC;
--signal top_TRX_xfft_rx09_dly3449_event_frame_started : STD_LOGIC;
--signal top_TRX_xfft_rx09_dly3449_event_tlast_missing : STD_LOGIC;
--signal top_TRX_xfft_rx09_dly3449_event_tlast_unexpected : STD_LOGIC;
  
  signal top_microblaze_0_Clk_100MHz : STD_LOGIC;
  
  signal top_mig_7series_0_mmcm_locked : STD_LOgiC;
  signal top_mig_7series_0_ui_addn_clk_0_200MHz : STD_LOGIC;
  signal top_mig_7series_0_ui_clk_sync_rst : STD_LOGIC;
  
  signal top_postmem_rx_addra_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal top_postmem_rx_wea_in : STD_LOGIC;
  
  signal top_premem_rx09_quarterfrm_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  
  signal top_rotenc_dec_cnt_en : STD_LOGIC;
  signal top_rotenc_dec_cnt_up_dwn : STD_LOGIC;
  
  signal top_rst_mig_7series_0_100M_peripheral_aresetn : STD_LOGIC;
  signal top_rst_mig_7series_0_100M_peripheral_reset : STD_LOGIC;
  
begin

ETH0_LINK_LED_0: component IBUF
     port map (
      I                                                     => ETH0_LINK_LED,
      O                                                     => ETH0_LINK_LED_g
    );
    
EUI_onewire_iobuf_0: component IOBUF
     port map (
      I                                                     => top_EUI48_onewire_tri_o,
      IO                                                    => EUI48_onewire_io,
      O                                                     => top_EUI48_onewire_tri_i,
      T                                                     => top_EUI48_onewire_tri_t
    );
    
rotenc_decoder_i: component rotenc_decoder
     port map (
      reset                                                 => top_mig_7series_0_ui_clk_sync_rst,
      clk                                                   => top_microblaze_0_Clk_100MHz,
      rotenc_I                                              => BOARD_ROTENC_I,
      rotenc_Q                                              => BOARD_ROTENC_Q,
      cnt_up_dwn                                            => top_rotenc_dec_cnt_up_dwn,
      cnt_en                                                => top_rotenc_dec_cnt_en
    );
    
auto_LVDS_rotate_i: component auto_LVDS_rotate
    port map (
      reset                                                 => top_mig_7series_0_ui_clk_sync_rst,
      clk                                                   => top_microblaze_0_Clk_100MHz,
      LVDS09                                                => top_TRX_rx_rf09_fifo,
      LVDS09_valid                                          => top_TRX_rx_rf09_fifo_valid,
      LVDS24                                                => top_TRX_rx_rf24_fifo,
      LVDS24_valid                                          => top_TRX_rx_rf24_fifo_valid,
      rot09q                                                => top_TRX_rx_rf09_bs,
      rot09vld                                              => top_TRX_rot09vld,
      rot24q                                                => top_TRX_rx_rf24_bs,
      rot24vld                                              => top_TRX_rot24vld,
      LVDS_rx09_synced                                      => top_LVDS_rx_rf09_synced,
      LVDS_rx24_synced                                      => top_LVDS_rx_rf24_synced
    );
    
FFT_controller_i: component FFT_controller
    port map (
      reset                                                 => top_mig_7series_0_ui_clk_sync_rst,
      clk                                                   => top_microblaze_0_Clk_100MHz,
      rx09_bs_32bits                                        => top_TRX_rx_rf09_bs,
      rx09_bs_32bits_vld                                    => top_TRX_rot09vld,
    --rx24_bs_32bits                                        => top_TRX_rx_rf24_bs,
    --rx24_bs_32bits_vld                                    => top_TRX_rot24vld,
      PreMem09_addra                                        => top_TRX_pre_fft_rx_rf09_mem_a_addr,
      PreMem09_wea                                          => top_TRX_pre_fft_rx_rf09_mem_a_we,
      PreMem09_dina                                         => top_TRX_pre_fft_rx_rf09_mem_a_din,
      PreMem09_addrb                                        => top_TRX_pre_fft_rx_rf09_mem_b_addr,
      
      FFT_window_coef_rom_rx09                              => top_FFT_window_coef_rom_rx09,
      
      RF09_quarterfrm                                       => top_RF09_quarterfrm,
      RF09_framectr                                         => top_RF09_framectr,

    --PreMem24_addra                                        => top_premem_rx24_addra_in,
    --PreMem24_wea                                          => top_premem_rx24_wea_in,
    --PreMem24_dina                                         => top_premem_rx24_dina_in,
    --PreMem24_addrb                                        => top_premem_rx24_addrb_in,
      
    --FFT_window_coef_rom_rx24                              => top_FFT_window_coef_rom_rx24,
      
    --RF24_quarterfrm                                       => top_RF24_quarterfrm,
    --RF24_framectr                                         => top_RF24_framectr,

      XFFT09_s_data_tlast                                   => top_TRX_fft_rx_rf09_data_tlast_in,
      XFFT09_s_data_tready                                  => top_TRX_fft_rx_rf09_data_tready_out,
      XFFT09_s_data_tvalid                                  => top_TRX_fft_rx_rf09_data_tvalid_in,
      XFFT09_s_conf_tdata                                   => top_TRX_fft_rx_rf09_config_tdata_in,
      XFFT09_s_conf_tvalid                                  => top_TRX_fft_rx_rf09_config_tvalid_in
    --XFFT24_aresetn                                        => top_TRX_fft24_aresetn_in,
    --XFFT24_s_data_tlast                                   => top_TRX_fft24_data_tlast_in,
    --XFFT24_s_data_tready                                  => top_TRX_fft24_data_tready_out,
    --XFFT24_s_data_tvalid                                  => top_TRX_fft24_data_tvalid_in,
    --XFFT24_s_conf_tdata                                   => top_TRX_fft24_config_tdata_in,
    --XFFT24_s_conf_tvalid                                  => top_TRX_fft24_config_tvalid_in
    );
    
EUI48_FSM_i: component EUI48_FSM
    port map (
      reset                                                 => top_mig_7series_0_ui_clk_sync_rst,
      clk                                                   => top_microblaze_0_Clk_100MHz,
      EUI48_onewire_tri_i                                   => top_EUI48_onewire_tri_i,
      EUI48_onewire_tri_o                                   => top_EUI48_onewire_tri_o,
      EUI48_onewire_tri_t                                   => top_EUI48_onewire_tri_t,
      EUI48_FSM_start                                       => top_EUI48_FSM_start,
      EUI48_FSM_run                                         => top_EUI48_FSM_run,
      EUI48_data                                            => top_EUI48_data(47 downto 0),
      EUI48_state                                           => top_EUI48_state,
      EUI48_abort                                           => top_EUI48_abort
    );
    
UFBmod_TRX_bd: component UFBmod_TRX_wrapper
    port map (
      FFT_window_coef_rom_rx09                              => top_FFT_window_coef_rom_rx09,
      RF09_framectr                                         => top_RF09_framectr,
      RF09_quarterfrm                                       => top_RF09_quarterfrm,
      Status_LVDS_rx09_synced                               => top_LVDS_rx_rf09_synced,
      Status_LVDS_rx24_synced                               => top_LVDS_rx_rf24_synced,
      TRX_CONFIG_GPIO1_o                                    => top_TRX_CONFIG_GPIO1_o,
      TRX_CONFIG_GPIO2_i                                    => top_TRX_CONFIG_GPIO2_i,
      TRX_LVDS_tx09_fifo_din                                => top_TRX_LVDS_tx09_fifo_din,
      TRX_PLL_clk_25MHz_n(0)                                => TRX_PLL_clk_25MHz_n,
      TRX_PLL_clk_25MHz_p(0)                                => TRX_PLL_clk_25MHz_p,
      TRX_PUSHDATA_ch00_req                                 => top_TRX_pushdata_rx_rf09_ch00_req,
      TRX_PUSHDATA_ch00_grant                               => top_TRX_pushdata_rx_rf09_ch00_grant,
      TRX_PUSHDATA_ch00_wr_en                               => top_TRX_pushdata_rx_rf09_ch00_wr_en,
      TRX_PUSHDATA_ch00_din(7 downto 0)                     => top_TRX_pushdata_rx_rf09_ch00_din(7 downto 0),
      TRX_PUSHDATA_ch01_req                                 => top_TRX_pushdata_rx_rf09_ch01_req,
      TRX_PUSHDATA_ch01_grant                               => top_TRX_pushdata_rx_rf09_ch01_grant,
      TRX_PUSHDATA_ch01_wr_en                               => top_TRX_pushdata_rx_rf09_ch01_wr_en,
      TRX_PUSHDATA_ch01_din(7 downto 0)                     => top_TRX_pushdata_rx_rf09_ch01_din(7 downto 0),
      TRX_PUSHDATA_ch02_req                                 => top_TRX_PUSHDATA_rx_rf09_ch02_req,
      TRX_PUSHDATA_ch02_grant                               => top_TRX_pushdata_rx_rf09_ch02_grant,
      TRX_PUSHDATA_ch02_wr_en                               => top_TRX_PUSHDATA_rx_rf09_ch02_wr_en,
      TRX_PUSHDATA_ch02_din(7 downto 0)                     => top_TRX_PUSHDATA_rx_rf09_ch02_din(7 downto 0),
      TRX_PUSHDATA_ch03_req                                 => top_TRX_PUSHDATA_rx_rf09_ch03_req,
      TRX_PUSHDATA_ch03_grant                               => top_TRX_pushdata_rx_rf09_ch03_grant,
      TRX_PUSHDATA_ch03_wr_en                               => top_TRX_PUSHDATA_rx_rf09_ch03_wr_en,
      TRX_PUSHDATA_ch03_din(7 downto 0)                     => top_TRX_PUSHDATA_rx_rf09_ch03_din(7 downto 0),
      TRX_PUSHDATA_ch04_req                                 => top_TRX_PUSHDATA_rx_rf09_ch04_req,
      TRX_PUSHDATA_ch04_grant                               => top_TRX_pushdata_rx_rf09_ch04_grant,
      TRX_PUSHDATA_ch04_wr_en                               => top_TRX_PUSHDATA_rx_rf09_ch04_wr_en,
      TRX_PUSHDATA_ch04_din(7 downto 0)                     => top_TRX_PUSHDATA_rx_rf09_ch04_din(7 downto 0),
      TRX_PUSHDATA_ch05_req                                 => top_TRX_PUSHDATA_rx_rf09_ch05_req,
      TRX_PUSHDATA_ch05_grant                               => top_TRX_pushdata_rx_rf09_ch05_grant,
      TRX_PUSHDATA_ch05_wr_en                               => top_TRX_PUSHDATA_rx_rf09_ch05_wr_en,
      TRX_PUSHDATA_ch05_din(7 downto 0)                     => top_TRX_PUSHDATA_rx_rf09_ch05_din(7 downto 0),
      TRX_PUSHDATA_ch06_req                                 => top_TRX_PUSHDATA_rx_rf09_ch06_req,
      TRX_PUSHDATA_ch06_grant                               => top_TRX_pushdata_rx_rf09_ch06_grant,
      TRX_PUSHDATA_ch06_wr_en                               => top_TRX_PUSHDATA_rx_rf09_ch06_wr_en,
      TRX_PUSHDATA_ch06_din(7 downto 0)                     => top_TRX_PUSHDATA_rx_rf09_ch06_din(7 downto 0),
      TRX_PUSHDATA_ch07_req                                 => top_TRX_PUSHDATA_rx_rf09_ch07_req,
      TRX_PUSHDATA_ch07_grant                               => top_TRX_pushdata_rx_rf09_ch07_grant,
      TRX_PUSHDATA_ch07_wr_en                               => top_TRX_PUSHDATA_rx_rf09_ch07_wr_en,
      TRX_PUSHDATA_ch07_din(7 downto 0)                     => top_TRX_PUSHDATA_rx_rf09_ch07_din(7 downto 0),
      TRX_RX_PUSHDATA_GPIO1_i                               => top_TRX_RX_PUSHDATA_GPIO1_i,      
      TRX_RX_PUSHDATA_GPIO2_o                               => top_TRX_RX_PUSHDATA_GPIO2_o,      
      TRX_TX_RF09_PULLDATA_FIFO_empty                       => top_TRX_pulldata_tx_rf09_FIFO_empty,
      TRX_clk_26MHz                                         => TRX_clk_26MHz,
      TRX_clk_trx_26MHz_vio                                 => top_TRX_clk_trx_26MHz_vio,
      TRX_clk_trx_pll_25MHz_vio                             => top_TRX_clk_trx_pll_25MHz_vio,
      TRX_data_count                                        => top_TRX_data_count,
      TRX_decoder_rx09_squelch_lvl                          => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_encoder_tx09_pull_FIFO_dump(0)                    => top_TRX_encoder_tx_rf09_pull_FIFO_dump,
      TRX_encoder_tx09_pull_data_len                        => top_TRX_encoder_tx_rf09_pull_data_len,
      TRX_encoder_tx09_pull_do_start(0)                     => top_TRX_encoder_tx_rf09_pull_do_start,
      TRX_fft09_data_tready_out                             => top_TRX_fft_rx_rf09_data_tready_out,
      TRX_post_fft_mem_a_rx09_EoT                           => top_TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx09_mem_a_addr                          => top_TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_pulldata_tx09_byteData                            => top_TRX_pulldata_tx_rf09_byteData,
      TRX_rd_data_count_CD100_o                             => top_TRX_rd_data_count_CD100,
      TRX_resetn(0)                                         => TRX_resetn,
      TRX_rx_clk_64MHz_clk_n                                => TRX_rx_clk_64MHz_clk_n,
      TRX_rx_clk_64MHz_clk_p                                => TRX_rx_clk_64MHz_clk_p,
      TRX_rx_rf09_ch00_Post_FFT_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch00_mem_b_addr,
      TRX_rx_rf09_ch00_Post_FFT_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch00_mem_b_dout,
      TRX_rx_rf09_ch01_Post_FFT_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch01_mem_b_addr,
      TRX_rx_rf09_ch01_Post_FFT_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch01_mem_b_dout,
      TRX_rx_rf09_ch02_Post_FFT_mem_b_addr                  => (others => '0'),  -- top_TRX_post_fft_rx_rf09_ch02_mem_b_addr
      TRX_rx_rf09_ch02_Post_FFT_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch02_mem_b_dout,
      TRX_rx_rf09_ch03_Post_FFT_mem_b_addr                  => (others => '0'),  -- top_TRX_post_fft_rx_rf09_ch03_mem_b_addr
      TRX_rx_rf09_ch03_Post_FFT_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch03_mem_b_dout,
      TRX_rx_rf09_ch04_Post_FFT_mem_b_addr                  => (others => '0'),  -- top_TRX_post_fft_rx_rf09_ch04_mem_b_addr
      TRX_rx_rf09_ch04_Post_FFT_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch04_mem_b_dout,
      TRX_rx_rf09_ch05_Post_FFT_mem_b_addr                  => (others => '0'),  -- top_TRX_post_fft_rx_rf09_ch05_mem_b_addr
      TRX_rx_rf09_ch05_Post_FFT_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch05_mem_b_dout,
      TRX_rx_rf09_ch06_Post_FFT_mem_b_addr                  => (others => '0'),  -- top_TRX_post_fft_rx_rf09_ch06_mem_b_addr
      TRX_rx_rf09_ch06_Post_FFT_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch06_mem_b_dout,
      TRX_rx_rf09_ch07_Post_FFT_mem_b_addr                  => (others => '0'),  -- top_TRX_post_fft_rx_rf09_ch07_mem_b_addr
      TRX_rx_rf09_ch07_Post_FFT_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch07_mem_b_dout,
      TRX_rfx_mode(0)                                       => TRX_rfx_mode,
      TRX_rx09_32bits_CD100                                 => top_TRX_rx_rf09_32bits_CD100,
      TRX_rx09_fifo                                         => top_TRX_rx_rf09_fifo,
      TRX_rx09_fifo_valid                                   => top_TRX_rx_rf09_fifo_valid,
      TRX_rx24_32bits_CD100                                 => top_TRX_rx_rf24_32bits_CD100,
      TRX_rx24_fifo                                         => top_TRX_rx_rf24_fifo,
      TRX_rx24_fifo_valid                                   => top_TRX_rx_rf24_fifo_valid,
      TRX_rx_clkdiv_16MHz(0)                                => top_TRX_rx_clkdiv_16MHz,
      TRX_rx_data_n                                         => TRX_rx_data_n,
      TRX_rx_data_p                                         => TRX_rx_data_p,
      TRX_TX_DDS_GPIO1_i                                    => top_TRX_TX_DDS_GPIO1_i,              -- 31: FIFO empty (< 3 entries)
      TRX_TX_DDS_GPIO1_o                                    => top_TRX_TX_DDS_GPIO1_o,              -- 30: push strobe, 07..00: push data
      TRX_TX_DDS_GPIO2_o                                    => top_TRX_TX_DDS_GPIO2_o,              -- 31..00: DDS0 increment
      TRX_TX_DDSAMPL_GPIO1_o                                => top_TRX_TX_DDSAMPL_GPIO1_o,          -- 15..00: DDS0 amplitude
      TRX_TX_DDSAMPL_GPIO2_o                                => top_TRX_TX_DDSAMPL_GPIO2_o,          -- 15..00: DDS1 amplitude
      TRX_tx_DDS0_gpio_ampt                                 => top_TRX_tx_DDS0_gpio_ampt,
      TRX_tx_DDS1_gpio_ampt                                 => top_TRX_tx_DDS1_gpio_ampt,
      TRX_tx_clk_clk_n                                      => TRX_tx_clk_clk_n,
      TRX_tx_clk_clk_p                                      => TRX_tx_clk_clk_p,
      TRX_tx_data_n(1 downto 0)                             => TRX_tx_data_n(1 downto 0),
      TRX_tx_data_p(1 downto 0)                             => TRX_tx_data_p(1 downto 0),
      TRX_tx_im_out                                         => top_TRX_tx_im,
      TRX_tx_re_out                                         => top_TRX_tx_re,
    --TRX_xfft_rx09_dly3449_event_data_in_channel_halt      => top_TRX_xfft_rx09_dly3449_event_data_in_channel_halt,
    --TRX_xfft_rx09_dly3449_event_frame_started             => top_TRX_xfft_rx09_dly3449_event_frame_started,
    --TRX_xfft_rx09_dly3449_event_tlast_missing             => top_TRX_xfft_rx09_dly3449_event_tlast_missing,
    --TRX_xfft_rx09_dly3449_event_tlast_unexpected          => top_TRX_xfft_rx09_dly3449_event_tlast_unexpected,
      fft09_config_tdata_in                                 => top_TRX_fft_rx_rf09_config_tdata_in,
      fft09_config_tvalid_in                                => top_TRX_fft_rx_rf09_config_tvalid_in,
      fft09_data_tlast_in                                   => top_TRX_fft_rx_rf09_data_tlast_in,
      fft09_data_tvalid_in                                  => top_TRX_fft_rx_rf09_data_tvalid_in,
      microblaze_0_Clk_100MHz                               => top_microblaze_0_Clk_100MHz,
      mig_7series_0_mmcm_locked                             => top_mig_7series_0_mmcm_locked,
      mig_7series_0_ui_addn_clk_0_200MHz                    => top_mig_7series_0_ui_addn_clk_0_200MHz,
      mig_7series_0_ui_clk_sync_rst                         => top_mig_7series_0_ui_clk_sync_rst,
      premem_rx09_addra_in                                  => top_TRX_pre_fft_rx_rf09_mem_a_addr,
      TRX_rx_rf09_Pre_FFT_mem_addrb                         => top_TRX_pre_fft_rx_rf09_mem_b_addr,
      premem_rx09_dina_in                                   => top_TRX_pre_fft_rx_rf09_mem_a_din,
      premem_rx09_wea_in                                    => top_TRX_pre_fft_rx_rf09_mem_a_we,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt,
      TRX_dds_tx_rf09_inc                                   => top_TRX_dds_tx_rf09_inc,
      pulldata_tx09_en                                      => top_TRX_pulldata_tx_rf09_en,
      rst_mig_7series_0_100M_peripheral_aresetn             => top_rst_mig_7series_0_100M_peripheral_aresetn,
      rst_mig_7series_0_100M_peripheral_reset               => top_rst_mig_7series_0_100M_peripheral_reset
    );
    
UFBmod_Decoder_rx09_ch00_bd: component UFBmod_Decoder_wrapper
    port map (
      reset_100MHz                                          => top_mig_7series_0_ui_clk_sync_rst,
      clk_100MHz                                            => top_microblaze_0_Clk_100MHz,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt,
      TRX_post_fft_rx_rf09_mem_a_EoT                        => top_TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr                       => top_TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch00_mem_b_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch00_mem_b_dout,
      TRX_decoder_rx_rf09_chXX_SoM_frameCtr                 => top_TRX_decoder_rx_rf09_chXX_SoM_frameCtr,
      TRX_decoder_rx_rf09_chXX_squelch_lvl                  => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_decoder_rx_rf09_chXX_sql_open                     => top_TRX_decoder_rx_rf09_chAll_sql_open(0),
      TRX_decoder_rx_rf09_chXX_active                       => top_TRX_decoder_rx_rf09_chAll_active(0),
      TRX_decoder_rx_rf09_chXX_center_pos                   => top_TRX_decoder_rx_rf09_ch00_center_pos,
      TRX_decoder_rx_rf09_chXX_strength                     => top_TRX_decoder_rx_rf09_ch00_strength,
      TRX_decoder_rx_rf09_chXX_noise                        => top_TRX_decoder_rx_rf09_ch00_noise,
      TRX_pushdata_rx_rf09_chXX_req                         => top_TRX_pushdata_rx_rf09_ch00_req,
      TRX_pushdata_rx_rf09_chXX_grant                       => top_TRX_pushdata_rx_rf09_ch00_grant,
      TRX_pushdata_rx_rf09_chXX_wr_en                       => top_TRX_pushdata_rx_rf09_ch00_wr_en,
      TRX_pushdata_rx_rf09_chXX_din                         => top_TRX_pushdata_rx_rf09_ch00_din
    );
UFBmod_Decoder_rx09_ch01_bd: component UFBmod_Decoder_wrapper
    port map (
      reset_100MHz                                          => top_mig_7series_0_ui_clk_sync_rst,
      clk_100MHz                                            => top_microblaze_0_Clk_100MHz,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt,
      TRX_post_fft_rx_rf09_mem_a_EoT                        => top_TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr                       => top_TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch01_mem_b_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch01_mem_b_dout,
      TRX_decoder_rx_rf09_chXX_active                       => top_TRX_decoder_rx_rf09_chAll_active(1),
      TRX_decoder_rx_rf09_chXX_center_pos                   => top_TRX_decoder_rx_rf09_ch01_center_pos,
      TRX_decoder_rx_rf09_chXX_noise                        => top_TRX_decoder_rx_rf09_ch01_noise,
      TRX_decoder_rx_rf09_chXX_sql_open                     => top_TRX_decoder_rx_rf09_chAll_sql_open(1),
      TRX_decoder_rx_rf09_chXX_squelch_lvl                  => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_decoder_rx_rf09_chXX_strength                     => top_TRX_decoder_rx_rf09_ch01_strength,
      TRX_pushdata_rx_rf09_chXX_req                         => top_TRX_pushdata_rx_rf09_ch01_req,
      TRX_pushdata_rx_rf09_chXX_grant                       => top_TRX_pushdata_rx_rf09_ch01_grant,
      TRX_pushdata_rx_rf09_chXX_wr_en                       => top_TRX_pushdata_rx_rf09_ch01_wr_en,
      TRX_pushdata_rx_rf09_chXX_din                         => top_TRX_pushdata_rx_rf09_ch01_din
    );
UFBmod_Decoder_rx09_ch02_bd: component UFBmod_Decoder_wrapper
    port map (
      reset_100MHz                                          => top_mig_7series_0_ui_clk_sync_rst,
      clk_100MHz                                            => top_microblaze_0_Clk_100MHz,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt,
      TRX_post_fft_rx_rf09_mem_a_EoT                        => top_TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr                       => top_TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch02_mem_b_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch02_mem_b_dout,
      TRX_decoder_rx_rf09_chXX_active                       => top_TRX_decoder_rx_rf09_chAll_active(2),
      TRX_decoder_rx_rf09_chXX_center_pos                   => top_TRX_decoder_rx_rf09_ch02_center_pos,
      TRX_decoder_rx_rf09_chXX_noise                        => top_TRX_decoder_rx_rf09_ch02_noise,
      TRX_decoder_rx_rf09_chXX_sql_open                     => top_TRX_decoder_rx_rf09_chAll_sql_open(2),
      TRX_decoder_rx_rf09_chXX_squelch_lvl                  => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_decoder_rx_rf09_chXX_strength                     => top_TRX_decoder_rx_rf09_ch02_strength,
      TRX_pushdata_rx_rf09_chXX_req                         => top_TRX_pushdata_rx_rf09_ch02_req,
      TRX_pushdata_rx_rf09_chXX_grant                       => top_TRX_pushdata_rx_rf09_ch02_grant,
      TRX_pushdata_rx_rf09_chXX_wr_en                       => top_TRX_pushdata_rx_rf09_ch02_wr_en,
      TRX_pushdata_rx_rf09_chXX_din                         => top_TRX_pushdata_rx_rf09_ch02_din
    );
UFBmod_Decoder_rx09_ch03_bd: component UFBmod_Decoder_wrapper
    port map (
      reset_100MHz                                          => top_mig_7series_0_ui_clk_sync_rst,
      clk_100MHz                                            => top_microblaze_0_Clk_100MHz,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt,
      TRX_post_fft_rx_rf09_mem_a_EoT                        => top_TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr                       => top_TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch03_mem_b_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch03_mem_b_dout,
      TRX_decoder_rx_rf09_chXX_active                       => top_TRX_decoder_rx_rf09_chAll_active(3),
      TRX_decoder_rx_rf09_chXX_center_pos                   => top_TRX_decoder_rx_rf09_ch03_center_pos,
      TRX_decoder_rx_rf09_chXX_noise                        => top_TRX_decoder_rx_rf09_ch03_noise,
      TRX_decoder_rx_rf09_chXX_sql_open                     => top_TRX_decoder_rx_rf09_chAll_sql_open(3),
      TRX_decoder_rx_rf09_chXX_squelch_lvl                  => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_decoder_rx_rf09_chXX_strength                     => top_TRX_decoder_rx_rf09_ch03_strength,
      TRX_pushdata_rx_rf09_chXX_req                         => top_TRX_pushdata_rx_rf09_ch03_req,
      TRX_pushdata_rx_rf09_chXX_grant                       => top_TRX_pushdata_rx_rf09_ch03_grant,
      TRX_pushdata_rx_rf09_chXX_wr_en                       => top_TRX_pushdata_rx_rf09_ch03_wr_en,
      TRX_pushdata_rx_rf09_chXX_din                         => top_TRX_pushdata_rx_rf09_ch03_din
    );
UFBmod_Decoder_rx09_ch04_bd: component UFBmod_Decoder_wrapper
    port map (
      reset_100MHz                                          => top_mig_7series_0_ui_clk_sync_rst,
      clk_100MHz                                            => top_microblaze_0_Clk_100MHz,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt,
      TRX_post_fft_rx_rf09_mem_a_EoT                        => top_TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr                       => top_TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch04_mem_b_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch04_mem_b_dout,
      TRX_decoder_rx_rf09_chXX_active                       => top_TRX_decoder_rx_rf09_chAll_active(4),
      TRX_decoder_rx_rf09_chXX_center_pos                   => top_TRX_decoder_rx_rf09_ch04_center_pos,
      TRX_decoder_rx_rf09_chXX_noise                        => top_TRX_decoder_rx_rf09_ch04_noise,
      TRX_decoder_rx_rf09_chXX_sql_open                     => top_TRX_decoder_rx_rf09_chAll_sql_open(4),
      TRX_decoder_rx_rf09_chXX_squelch_lvl                  => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_decoder_rx_rf09_chXX_strength                     => top_TRX_decoder_rx_rf09_ch04_strength,
      TRX_pushdata_rx_rf09_chXX_req                         => top_TRX_pushdata_rx_rf09_ch04_req,
      TRX_pushdata_rx_rf09_chXX_grant                       => top_TRX_pushdata_rx_rf09_ch04_grant,
      TRX_pushdata_rx_rf09_chXX_wr_en                       => top_TRX_pushdata_rx_rf09_ch04_wr_en,
      TRX_pushdata_rx_rf09_chXX_din                         => top_TRX_pushdata_rx_rf09_ch04_din
    );
UFBmod_Decoder_rx09_ch05_bd: component UFBmod_Decoder_wrapper
    port map (
      reset_100MHz                                          => top_mig_7series_0_ui_clk_sync_rst,
      clk_100MHz                                            => top_microblaze_0_Clk_100MHz,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt,
      TRX_post_fft_rx_rf09_mem_a_EoT                        => top_TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr                       => top_TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch05_mem_b_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch05_mem_b_dout,
      TRX_decoder_rx_rf09_chXX_active                       => top_TRX_decoder_rx_rf09_chAll_active(5),
      TRX_decoder_rx_rf09_chXX_center_pos                   => top_TRX_decoder_rx_rf09_ch05_center_pos,
      TRX_decoder_rx_rf09_chXX_noise                        => top_TRX_decoder_rx_rf09_ch05_noise,
      TRX_decoder_rx_rf09_chXX_sql_open                     => top_TRX_decoder_rx_rf09_chAll_sql_open(5),
      TRX_decoder_rx_rf09_chXX_squelch_lvl                  => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_decoder_rx_rf09_chXX_strength                     => top_TRX_decoder_rx_rf09_ch05_strength,
      TRX_pushdata_rx_rf09_chXX_req                         => top_TRX_pushdata_rx_rf09_ch05_req,
      TRX_pushdata_rx_rf09_chXX_grant                       => top_TRX_pushdata_rx_rf09_ch05_grant,
      TRX_pushdata_rx_rf09_chXX_wr_en                       => top_TRX_pushdata_rx_rf09_ch05_wr_en,
      TRX_pushdata_rx_rf09_chXX_din                         => top_TRX_pushdata_rx_rf09_ch05_din
    );
UFBmod_Decoder_rx09_ch06_bd: component UFBmod_Decoder_wrapper
    port map (
      reset_100MHz                                          => top_mig_7series_0_ui_clk_sync_rst,
      clk_100MHz                                            => top_microblaze_0_Clk_100MHz,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt,
      TRX_post_fft_rx_rf09_mem_a_EoT                        => top_TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr                       => top_TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch06_mem_b_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch06_mem_b_dout,
      TRX_decoder_rx_rf09_chXX_active                       => top_TRX_decoder_rx_rf09_chAll_active(6),
      TRX_decoder_rx_rf09_chXX_center_pos                   => top_TRX_decoder_rx_rf09_ch06_center_pos,
      TRX_decoder_rx_rf09_chXX_noise                        => top_TRX_decoder_rx_rf09_ch06_noise,
      TRX_decoder_rx_rf09_chXX_sql_open                     => top_TRX_decoder_rx_rf09_chAll_sql_open(6),
      TRX_decoder_rx_rf09_chXX_squelch_lvl                  => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_decoder_rx_rf09_chXX_strength                     => top_TRX_decoder_rx_rf09_ch06_strength,
      TRX_pushdata_rx_rf09_chXX_req                         => top_TRX_pushdata_rx_rf09_ch06_req,
      TRX_pushdata_rx_rf09_chXX_grant                       => top_TRX_pushdata_rx_rf09_ch06_grant,
      TRX_pushdata_rx_rf09_chXX_wr_en                       => top_TRX_pushdata_rx_rf09_ch06_wr_en,
      TRX_pushdata_rx_rf09_chXX_din                         => top_TRX_pushdata_rx_rf09_ch06_din
    );
UFBmod_Decoder_rx09_ch07_bd: component UFBmod_Decoder_wrapper
    port map (
      reset_100MHz                                          => top_mig_7series_0_ui_clk_sync_rst,
      clk_100MHz                                            => top_microblaze_0_Clk_100MHz,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt,
      TRX_post_fft_rx_rf09_mem_a_EoT                        => top_TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr                       => top_TRX_post_fft_rx_rf09_mem_a_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_addr                  => top_TRX_post_fft_rx_rf09_ch07_mem_b_addr,
      TRX_post_fft_rx_rf09_chXX_mem_b_dout                  => top_TRX_post_fft_rx_rf09_ch07_mem_b_dout,
      TRX_decoder_rx_rf09_chXX_active                       => top_TRX_decoder_rx_rf09_chAll_active(7),
      TRX_decoder_rx_rf09_chXX_center_pos                   => top_TRX_decoder_rx_rf09_ch07_center_pos,
      TRX_decoder_rx_rf09_chXX_noise                        => top_TRX_decoder_rx_rf09_ch07_noise,
      TRX_decoder_rx_rf09_chXX_sql_open                     => top_TRX_decoder_rx_rf09_chAll_sql_open(7),
      TRX_decoder_rx_rf09_chXX_squelch_lvl                  => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_decoder_rx_rf09_chXX_strength                     => top_TRX_decoder_rx_rf09_ch07_strength,
      TRX_pushdata_rx_rf09_chXX_req                         => top_TRX_pushdata_rx_rf09_ch07_req,
      TRX_pushdata_rx_rf09_chXX_grant                       => top_TRX_pushdata_rx_rf09_ch07_grant,
      TRX_pushdata_rx_rf09_chXX_wr_en                       => top_TRX_pushdata_rx_rf09_ch07_wr_en,
      TRX_pushdata_rx_rf09_chXX_din                         => top_TRX_pushdata_rx_rf09_ch07_din
    );
    
UFBmod_Encoder_bd: component UFBmod_Encoder_wrapper
    port map (
      reset_100MHz                                          => top_mig_7series_0_ui_clk_sync_rst,
      clk_100MHz                                            => top_microblaze_0_Clk_100MHz,
      decoder_rx09_chAll_sql_open                           => top_TRX_decoder_rx_rf09_chAll_sql_open,
      decoder_rx09_chAll_active                             => top_TRX_decoder_rx_rf09_chAll_active,
      encoder_pull_FIFO_dump                                => top_TRX_encoder_tx_rf09_pull_FIFO_dump,
      encoder_pull_do_start                                 => top_TRX_encoder_tx_rf09_pull_do_start,
      encoder_pull_data_len                                 => top_TRX_encoder_tx_rf09_pull_data_len,
      pulldata_tx09_en                                      => top_TRX_pulldata_tx_rf09_en,
      pulldata_tx09_byteData                                => top_TRX_pulldata_tx_rf09_byteData,
      TRX_dds_tx_rf09_inc                                   => top_TRX_dds_tx_rf09_inc,
      TRX_dds_tx_rf09_ptt                                   => top_TRX_dds_tx_rf09_ptt
    );
    
SCOPE_FSM_i: component SCOPE_FSM
    port map (
      reset                                                 => top_mig_7series_0_ui_clk_sync_rst,
      clk                                                   => top_microblaze_0_Clk_100MHz,
      SCOPE_FSM_GPIO0_Out                                   => top_SCOPE_FSM_GPIO0_Out,
      SCOPE_FSM_GPIO1_In                                    => top_SCOPE_FSM_GPIO1_In,
      SCOPE_FSM_TrigSrc                                     => top_SCOPE_FSM_TrigSrc,
      SCOPE_FSM_Timebase_CE                                 => top_SCOPE_FSM_Timebase_CE,
      SCOPE_FSM_FIFO_Rst                                    => top_SCOPE_FSM_FIFO_Rst,
      SCOPE_FSM_FIFO_wr_rst_busy                            => top_SCOPE_FSM_FIFO_wr_rst_busy,
      SCOPE_FSM_FIFO_rd_rst_busy                            => top_SCOPE_FSM_FIFO_rd_rst_busy,
      SCOPE_FSM_FIFO_WrFull                                 => top_SCOPE_FSM_FIFO_WrFull,
      SCOPE_FSM_FIFO_RdEmpty                                => top_SCOPE_FSM_FIFO_RdEmpty,
      SCOPE_FSM_FIFO_WrEn                                   => top_SCOPE_FSM_FIFO_WrEn,
      SCOPE_FSM_FIFO_RdEn                                   => top_SCOPE_FSM_FIFO_RdEn,
      SCOPE_FSM_FIFO_RdValid                                => top_SCOPE_FSM_FIFO_RdValid
    );
msys_bd: component msys_wrapper
    port map (
      BOARD_IIC_scl_io                                      => BOARD_IIC_scl_io,
      BOARD_IIC_sda_io                                      => BOARD_IIC_sda_io,
      BOARD_ROTENC_PUSH                                     => BOARD_ROTENC_PUSH,
      CLK0_clk_n(0)                                         => CLK0_clk_n,
      CLK0_clk_p(0)                                         => CLK0_clk_p,
      CLK1B_clk(0)                                          => CLK1B_clk,
      CLK2_mgt_clk0_clk_n                                   => CLK2_mgt_clk0_clk_n,
      CLK2_mgt_clk0_clk_p                                   => CLK2_mgt_clk0_clk_p,
      CLK3_sys_diff_clk_n                                   => CLK3_sys_diff_clk_n,
      CLK3_sys_diff_clk_p                                   => CLK3_sys_diff_clk_p,
      DDR3_SDRAM_addr                                       => DDR3_SDRAM_addr,
      DDR3_SDRAM_ba                                         => DDR3_SDRAM_ba,
      DDR3_SDRAM_cas_n                                      => DDR3_SDRAM_cas_n,
      DDR3_SDRAM_ck_n                                       => DDR3_SDRAM_ck_n,
      DDR3_SDRAM_ck_p                                       => DDR3_SDRAM_ck_p,
      DDR3_SDRAM_cke                                        => DDR3_SDRAM_cke,
      DDR3_SDRAM_cs_n                                       => DDR3_SDRAM_cs_n,
      DDR3_SDRAM_dm                                         => DDR3_SDRAM_dm,
      DDR3_SDRAM_dq                                         => DDR3_SDRAM_dq,
      DDR3_SDRAM_dqs_n                                      => DDR3_SDRAM_dqs_n,
      DDR3_SDRAM_dqs_p                                      => DDR3_SDRAM_dqs_p,
      DDR3_SDRAM_odt                                        => DDR3_SDRAM_odt,
      DDR3_SDRAM_ras_n                                      => DDR3_SDRAM_ras_n,
      DDR3_SDRAM_reset_n                                    => DDR3_SDRAM_reset_n,
      DDR3_SDRAM_we_n                                       => DDR3_SDRAM_we_n,
      DDR3_init_calib_complete                              => DDR3_init_calib_complete,
      ETH0_DA_G(0)                                          => ETH0_DA_G,
      ETH0_DA_Y(0)                                          => ETH0_DA_Y,
      ETH0_LINK_LED_g                                       => ETH0_LINK_LED_g,
      ETH0_MDIO_MDC_mdc                                     => ETH0_MDIO_MDC_mdc,
      ETH0_MDIO_MDC_mdio_io                                 => ETH0_MDIO_MDC_mdio_io,
      EUI48_FSM_run                                         => top_EUI48_FSM_run,
      EUI48_FSM_start(0)                                    => top_EUI48_FSM_start,
      EUI48_data                                            => top_EUI48_data,
      LCD_BL(0)                                             => LCD_BL,
      LCD_rstn(0)                                           => LCD_rstn,
      LED_RGB_blue(0)                                       => LED_RGB_blue,
      LED_RGB_green(0)                                      => LED_RGB_green,
      LED_RGB_red(0)                                        => LED_RGB_red,
      LVDS_rx09_synced                                      => top_LVDS_rx_rf09_synced,
      LVDS_rx24_synced                                      => top_LVDS_rx_rf24_synced,
      PLL_I2C_ext_scl_o                                     => PLL_I2C_ext_scl_o,
      PLL_I2C_ext_sda                                       => PLL_I2C_ext_sda,
      PLL_int                                               => PLL_int,
      RMII_PHY_M_0_crs_dv                                   => RMII_PHY_M_0_crs_dv,
      RMII_PHY_M_0_rxd                                      => RMII_PHY_M_0_rxd,
      RMII_PHY_M_0_tx_en                                    => RMII_PHY_M_0_tx_en,
      RMII_PHY_M_0_txd                                      => RMII_PHY_M_0_txd,
      SCOPE_FSM_FIFO_RdEmpty                                => top_SCOPE_FSM_FIFO_RdEmpty,
      SCOPE_FSM_FIFO_RdEn                                   => top_SCOPE_FSM_FIFO_RdEn,
      SCOPE_FSM_FIFO_RdValid                                => top_SCOPE_FSM_FIFO_RdValid,
      SCOPE_FSM_FIFO_Rst                                    => top_SCOPE_FSM_FIFO_Rst,
      SCOPE_FSM_FIFO_WrEn                                   => top_SCOPE_FSM_FIFO_WrEn,
      SCOPE_FSM_FIFO_WrFull                                 => top_SCOPE_FSM_FIFO_WrFull,
      SCOPE_FSM_FIFO_rd_rst_busy                            => top_SCOPE_FSM_FIFO_rd_rst_busy,
      SCOPE_FSM_FIFO_wr_rst_busy                            => top_SCOPE_FSM_FIFO_wr_rst_busy,
      SCOPE_FSM_GPIO0_Out                                   => top_SCOPE_FSM_GPIO0_Out,
      SCOPE_FSM_GPIO1_In                                    => top_SCOPE_FSM_GPIO1_In,
      SCOPE_FSM_Timebase_CE                                 => top_SCOPE_FSM_Timebase_CE,
      SCOPE_FSM_TrigSrc                                     => top_SCOPE_FSM_TrigSrc,
      TRX_CONFIG_GPIO1_o                                    => top_TRX_CONFIG_GPIO1_o,
      TRX_CONFIG_GPIO2_i                                    => top_TRX_CONFIG_GPIO2_i,
      TRX_CONFIG_SPI_io0_io                                 => TRX_spi_io0_io,
      TRX_CONFIG_SPI_io1_io                                 => TRX_spi_io1_io,
      TRX_CONFIG_SPI_sck_io                                 => TRX_spi_sck_io,
      TRX_CONFIG_SPI_ss_io(0)                               => TRX_spi_ss_io,
      TRX_RX_PUSHDATA_GPIO1_i                               => top_TRX_RX_PUSHDATA_GPIO1_i,      
      TRX_RX_PUSHDATA_GPIO2_o                               => top_TRX_RX_PUSHDATA_GPIO2_o,      
      TRX_TX_RF09_PULLDATA_FIFO_empty                       => top_TRX_pulldata_tx_rf09_FIFO_empty,
      TRX_clk_trx_26MHz_vio                                 => top_TRX_clk_trx_26MHz_vio,
      TRX_clk_trx_pll_25MHz_vio                             => top_TRX_clk_trx_pll_25MHz_vio,
      TRX_data_count                                        => top_TRX_data_count,
      TRX_decoder_rx09_ch00_squelch_lvl                     => top_TRX_decoder_rx_rf09_chAll_squelch_lvl,
      TRX_int                                               => TRX_int,
      TRX_rd_data_count_CD100                               => top_TRX_rd_data_count_CD100,
      TRX_rx09_32bits_CD100                                 => top_TRX_rx_rf09_32bits_CD100,
      TRX_rx24_32bits_CD100                                 => top_TRX_rx_rf24_32bits_CD100,
      TRX_rx_clkdiv_16MHz_in                                => top_TRX_rx_clkdiv_16MHz,
      TRX_LVDS_tx09_fifo_din                                => top_TRX_LVDS_tx09_fifo_din,
      TRX_TX_DDS_GPIO1_i                                    => top_TRX_TX_DDS_GPIO1_i,
      TRX_TX_DDS_GPIO1_o                                    => top_TRX_TX_DDS_GPIO1_o,
      TRX_TX_DDS_GPIO2_o                                    => top_TRX_TX_DDS_GPIO2_o,
      TRX_tx_DDS0_gpio_inc                                  => top_TRX_TX_DDS_GPIO1_o,
      TRX_tx_DDS0_gpio_ampt                                 => top_TRX_tx_DDS0_gpio_ampt,
      TRX_tx_DDS1_gpio_ampt                                 => top_TRX_tx_DDS1_gpio_ampt,
      TRX_TX_DDSAMPL_GPIO1_o                                => top_TRX_TX_DDSAMPL_GPIO1_o,
      TRX_TX_DDSAMPL_GPIO2_o                                => top_TRX_TX_DDSAMPL_GPIO2_o,
      TRX_tx_im                                             => top_TRX_tx_im,
      TRX_tx_re                                             => top_TRX_tx_re,
    --TRX_xfft_rx09_dly3449_event_data_in_channel_halt      => top_TRX_xfft_rx09_dly3449_event_data_in_channel_halt,
    --TRX_xfft_rx09_dly3449_event_frame_started             => top_TRX_xfft_rx09_dly3449_event_frame_started,
    --TRX_xfft_rx09_dly3449_event_tlast_missing             => top_TRX_xfft_rx09_dly3449_event_tlast_missing,
    --TRX_xfft_rx09_dly3449_event_tlast_unexpected          => top_TRX_xfft_rx09_dly3449_event_tlast_unexpected,
      UART0EXT_CTSn(0)                                      => UART0EXT_CTSn,
      UART0EXT_DCDn(0)                                      => UART0EXT_DCDn,
      UART0EXT_DSRn(0)                                      => UART0EXT_DSRn,
      UART0EXT_DTRn                                         => UART0EXT_DTRn,
      UART0EXT_RIn(0)                                       => UART0EXT_RIn,
      UART0EXT_RTSn                                         => UART0EXT_RTSn,
      UART0_clk                                             => UART0_clk,
      UART0_rst_n(0)                                        => UART0_rst_n,
      UART0_rxd                                             => UART0_rxd,
      UART0_txd                                             => UART0_txd,
      USER_dbg_out                                          => USER_dbg_out,
      dds_tx09_inc                                          => top_TRX_dds_tx_rf09_inc,
      dds_tx09_ptt                                          => top_TRX_dds_tx_rf09_ptt,
      decoder_rx09_chXX_sql_open                            => top_TRX_decoder_rx_rf09_chAll_sql_open,
      decoder_rx09_chXX_active                              => top_TRX_decoder_rx_rf09_chAll_active,
      decoder_rx09_ch00_center_pos                          => top_TRX_decoder_rx_rf09_ch00_center_pos,
      decoder_rx09_ch00_noise                               => top_TRX_decoder_rx_rf09_ch00_noise,
      decoder_rx09_ch00_strength                            => top_TRX_decoder_rx_rf09_ch00_strength,
      decoder_rx09_ch01_center_pos                          => top_TRX_decoder_rx_rf09_ch01_center_pos,
      decoder_rx09_ch01_noise                               => top_TRX_decoder_rx_rf09_ch01_noise,
      decoder_rx09_ch01_strength                            => top_TRX_decoder_rx_rf09_ch01_strength,
      decoder_rx09_ch02_center_pos                          => top_TRX_decoder_rx_rf09_ch02_center_pos,
      decoder_rx09_ch02_noise                               => top_TRX_decoder_rx_rf09_ch02_noise,
      decoder_rx09_ch02_strength                            => top_TRX_decoder_rx_rf09_ch02_strength,
      decoder_rx09_ch03_center_pos                          => top_TRX_decoder_rx_rf09_ch03_center_pos,
      decoder_rx09_ch03_noise                               => top_TRX_decoder_rx_rf09_ch03_noise,
      decoder_rx09_ch03_strength                            => top_TRX_decoder_rx_rf09_ch03_strength,
      decoder_rx09_ch04_center_pos                          => top_TRX_decoder_rx_rf09_ch04_center_pos,
      decoder_rx09_ch04_noise                               => top_TRX_decoder_rx_rf09_ch04_noise,
      decoder_rx09_ch04_strength                            => top_TRX_decoder_rx_rf09_ch04_strength,
      decoder_rx09_ch05_center_pos                          => top_TRX_decoder_rx_rf09_ch05_center_pos,
      decoder_rx09_ch05_noise                               => top_TRX_decoder_rx_rf09_ch05_noise,
      decoder_rx09_ch05_strength                            => top_TRX_decoder_rx_rf09_ch05_strength,
      decoder_rx09_ch06_center_pos                          => top_TRX_decoder_rx_rf09_ch06_center_pos,
      decoder_rx09_ch06_noise                               => top_TRX_decoder_rx_rf09_ch06_noise,
      decoder_rx09_ch06_strength                            => top_TRX_decoder_rx_rf09_ch06_strength,
      decoder_rx09_ch07_center_pos                          => top_TRX_decoder_rx_rf09_ch07_center_pos,
      decoder_rx09_ch07_noise                               => top_TRX_decoder_rx_rf09_ch07_noise,
      decoder_rx09_ch07_strength                            => top_TRX_decoder_rx_rf09_ch07_strength,
      microblaze_0_Clk_100MHz                               => top_microblaze_0_Clk_100MHz,
      mig_7series_0_mmcm_locked                             => top_mig_7series_0_mmcm_locked,
      mig_7series_0_ui_addn_clk_0_200MHz                    => top_mig_7series_0_ui_addn_clk_0_200MHz,
      mig_7series_0_ui_clk_sync_rst                         => top_mig_7series_0_ui_clk_sync_rst,
      phy_rst_n                                             => phy_rst_n,
      qspi_flash_io0_io                                     => qspi_flash_io0_io,
      qspi_flash_io1_io                                     => qspi_flash_io1_io,
      qspi_flash_io2_io                                     => qspi_flash_io2_io,
      qspi_flash_io3_io                                     => qspi_flash_io3_io,
      qspi_flash_ss_io                                      => qspi_flash_ss_io,
      reset                                                 => reset,
      rotenc_dec_cnt_en                                     => top_rotenc_dec_cnt_en,
      rotenc_dec_cnt_up_dwn                                 => top_rotenc_dec_cnt_up_dwn,
      rst_mig_7series_0_100M_peripheral_reset(0)            => top_rst_mig_7series_0_100M_peripheral_reset
    );

end STRUCTURE;
