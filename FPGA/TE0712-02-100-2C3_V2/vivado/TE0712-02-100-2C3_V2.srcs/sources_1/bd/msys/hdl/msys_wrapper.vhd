--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Thu Oct 29 00:46:11 2020
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
    EUI48_abort : in STD_LOGIC_VECTOR ( 7 downto 0 );
    EUI48_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    EUI48_state : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FPGA_IO : in STD_LOGIC;
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
    TRX_M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M11_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M11_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M11_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M11_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M11_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M11_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M11_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M11_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M11_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M12_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M12_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M12_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M12_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M12_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M12_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M12_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M12_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M12_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M13_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M13_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M13_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M13_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M13_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M13_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M13_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M13_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M13_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M19_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M19_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M19_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M19_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M19_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M19_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M19_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M19_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M19_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M20_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M20_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M20_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M20_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M20_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M20_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M20_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M20_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M20_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : in STD_LOGIC;
    TRX_clk_trx_26MHz_vio : in STD_LOGIC;
    TRX_clk_trx_pll_25MHz_vio : in STD_LOGIC;
    TRX_data_count : in STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_int : in STD_LOGIC;
    TRX_ip2intc_irpt : in STD_LOGIC;
    TRX_post_fft_rx09_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_pushdata_rx09_irpt : in STD_LOGIC;
    TRX_rd_data_count_CD100 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    TRX_rx09_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx_clkdiv_16MHz_in : in STD_LOGIC;
    TRX_tx_DDS0_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_inc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_tx_DDS1_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_im : in STD_LOGIC_VECTOR ( 12 downto 0 );
    TRX_tx_re : in STD_LOGIC_VECTOR ( 12 downto 0 );
    TRX_xfft_rx09_dly3449_event_data_in_channel_halt : in STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_frame_started : in STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_missing : in STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_unexpected : in STD_LOGIC;
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
    ULI_SYSTEM_XIO : in STD_LOGIC;
    USER_dbg_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dds_tx09_inc : in STD_LOGIC_VECTOR ( 25 downto 0 );
    dds_tx09_ptt : in STD_LOGIC;
    decoder_rx09_ch00_active : in STD_LOGIC;
    decoder_rx09_ch00_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_sql_open : in STD_LOGIC;
    decoder_rx09_ch00_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    microblaze_0_Clk_100MHz : out STD_LOGIC;
    mig_7series_0_mmcm_locked : out STD_LOGIC;
    mig_7series_0_ui_clk_sync_rst : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
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
    FPGA_IO : in STD_LOGIC;
    ULI_SYSTEM_XIO : in STD_LOGIC;
    CLK1B_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    EUI48_FSM_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    EUI48_FSM_run : in STD_LOGIC;
    EUI48_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    EUI48_state : in STD_LOGIC_VECTOR ( 7 downto 0 );
    EUI48_abort : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SCOPE_FSM_Timebase_CE : in STD_LOGIC;
    SCOPE_FSM_FIFO_Rst : in STD_LOGIC;
    SCOPE_FSM_FIFO_RdEn : in STD_LOGIC;
    SCOPE_FSM_FIFO_WrFull : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdValid : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdEmpty : out STD_LOGIC;
    SCOPE_FSM_TrigSrc : out STD_LOGIC_VECTOR ( 47 downto 0 );
    SCOPE_FSM_FIFO_WrEn : in STD_LOGIC;
    USER_dbg_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
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
    mig_7series_0_ui_clk_sync_rst : out STD_LOGIC;
    decoder_rx09_ch00_sql_open : in STD_LOGIC;
    decoder_rx09_ch00_active : in STD_LOGIC;
    mig_7series_0_mmcm_locked : out STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_ip2intc_irpt : in STD_LOGIC;
    TRX_rx_clkdiv_16MHz_in : in STD_LOGIC;
    TRX_rx24_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_32bits_CD100 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rd_data_count_CD100 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    TRX_xfft_rx09_dly3449_event_frame_started : in STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_unexpected : in STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_missing : in STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_data_in_channel_halt : in STD_LOGIC;
    TRX_post_fft_rx09_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_clk_trx_26MHz_vio : in STD_LOGIC;
    TRX_clk_trx_pll_25MHz_vio : in STD_LOGIC;
    TRX_tx_re : in STD_LOGIC_VECTOR ( 12 downto 0 );
    TRX_tx_im : in STD_LOGIC_VECTOR ( 12 downto 0 );
    TRX_pushdata_rx09_irpt : in STD_LOGIC;
    TRX_data_count : in STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : in STD_LOGIC;
    TRX_decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_inc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_tx_DDS0_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS1_gpio_ampt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_M12_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M12_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M12_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M12_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M12_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M12_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M12_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M12_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M12_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M12_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M12_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M13_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M13_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M13_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M13_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M13_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M13_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M13_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M13_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M13_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M13_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M11_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M11_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M11_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M11_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M11_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M11_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M11_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M11_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M19_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M19_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M19_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M19_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M19_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M19_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M19_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M19_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M19_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M19_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M20_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M20_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M20_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TRX_M20_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M20_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M20_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_M20_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_M20_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_M20_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_M20_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
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
    CLK0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK2_mgt_clk0_clk_p : in STD_LOGIC;
    CLK2_mgt_clk0_clk_n : in STD_LOGIC;
    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_i : in STD_LOGIC;
    ETH0_MDIO_MDC_mdio_o : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_t : out STD_LOGIC;
    BOARD_IIC_scl_i : in STD_LOGIC;
    BOARD_IIC_scl_o : out STD_LOGIC;
    BOARD_IIC_scl_t : out STD_LOGIC;
    BOARD_IIC_sda_i : in STD_LOGIC;
    BOARD_IIC_sda_o : out STD_LOGIC;
    BOARD_IIC_sda_t : out STD_LOGIC;
    RMII_PHY_M_0_crs_dv : in STD_LOGIC;
    RMII_PHY_M_0_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RMII_PHY_M_0_tx_en : out STD_LOGIC;
    RMII_PHY_M_0_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK3_sys_diff_clk_p : in STD_LOGIC;
    CLK3_sys_diff_clk_n : in STD_LOGIC
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
      EUI48_abort(7 downto 0) => EUI48_abort(7 downto 0),
      EUI48_data(47 downto 0) => EUI48_data(47 downto 0),
      EUI48_state(7 downto 0) => EUI48_state(7 downto 0),
      FPGA_IO => FPGA_IO,
      LCD_BL(0) => LCD_BL(0),
      LCD_rstn(0) => LCD_rstn(0),
      LED_RGB_blue(0) => LED_RGB_blue(0),
      LED_RGB_green(0) => LED_RGB_green(0),
      LED_RGB_red(0) => LED_RGB_red(0),
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
      TRX_M11_AXI_araddr(31 downto 0) => TRX_M11_AXI_araddr(31 downto 0),
      TRX_M11_AXI_arprot(2 downto 0) => TRX_M11_AXI_arprot(2 downto 0),
      TRX_M11_AXI_arready(0) => TRX_M11_AXI_arready(0),
      TRX_M11_AXI_arvalid(0) => TRX_M11_AXI_arvalid(0),
      TRX_M11_AXI_awaddr(31 downto 0) => TRX_M11_AXI_awaddr(31 downto 0),
      TRX_M11_AXI_awprot(2 downto 0) => TRX_M11_AXI_awprot(2 downto 0),
      TRX_M11_AXI_awready(0) => TRX_M11_AXI_awready(0),
      TRX_M11_AXI_awvalid(0) => TRX_M11_AXI_awvalid(0),
      TRX_M11_AXI_bready(0) => TRX_M11_AXI_bready(0),
      TRX_M11_AXI_bresp(1 downto 0) => TRX_M11_AXI_bresp(1 downto 0),
      TRX_M11_AXI_bvalid(0) => TRX_M11_AXI_bvalid(0),
      TRX_M11_AXI_rdata(31 downto 0) => TRX_M11_AXI_rdata(31 downto 0),
      TRX_M11_AXI_rready(0) => TRX_M11_AXI_rready(0),
      TRX_M11_AXI_rresp(1 downto 0) => TRX_M11_AXI_rresp(1 downto 0),
      TRX_M11_AXI_rvalid(0) => TRX_M11_AXI_rvalid(0),
      TRX_M11_AXI_wdata(31 downto 0) => TRX_M11_AXI_wdata(31 downto 0),
      TRX_M11_AXI_wready(0) => TRX_M11_AXI_wready(0),
      TRX_M11_AXI_wstrb(3 downto 0) => TRX_M11_AXI_wstrb(3 downto 0),
      TRX_M11_AXI_wvalid(0) => TRX_M11_AXI_wvalid(0),
      TRX_M12_AXI_araddr(31 downto 0) => TRX_M12_AXI_araddr(31 downto 0),
      TRX_M12_AXI_arprot(2 downto 0) => TRX_M12_AXI_arprot(2 downto 0),
      TRX_M12_AXI_arready(0) => TRX_M12_AXI_arready(0),
      TRX_M12_AXI_arvalid(0) => TRX_M12_AXI_arvalid(0),
      TRX_M12_AXI_awaddr(31 downto 0) => TRX_M12_AXI_awaddr(31 downto 0),
      TRX_M12_AXI_awprot(2 downto 0) => TRX_M12_AXI_awprot(2 downto 0),
      TRX_M12_AXI_awready(0) => TRX_M12_AXI_awready(0),
      TRX_M12_AXI_awvalid(0) => TRX_M12_AXI_awvalid(0),
      TRX_M12_AXI_bready(0) => TRX_M12_AXI_bready(0),
      TRX_M12_AXI_bresp(1 downto 0) => TRX_M12_AXI_bresp(1 downto 0),
      TRX_M12_AXI_bvalid(0) => TRX_M12_AXI_bvalid(0),
      TRX_M12_AXI_rdata(31 downto 0) => TRX_M12_AXI_rdata(31 downto 0),
      TRX_M12_AXI_rready(0) => TRX_M12_AXI_rready(0),
      TRX_M12_AXI_rresp(1 downto 0) => TRX_M12_AXI_rresp(1 downto 0),
      TRX_M12_AXI_rvalid(0) => TRX_M12_AXI_rvalid(0),
      TRX_M12_AXI_wdata(31 downto 0) => TRX_M12_AXI_wdata(31 downto 0),
      TRX_M12_AXI_wready(0) => TRX_M12_AXI_wready(0),
      TRX_M12_AXI_wstrb(3 downto 0) => TRX_M12_AXI_wstrb(3 downto 0),
      TRX_M12_AXI_wvalid(0) => TRX_M12_AXI_wvalid(0),
      TRX_M13_AXI_araddr(31 downto 0) => TRX_M13_AXI_araddr(31 downto 0),
      TRX_M13_AXI_arprot(2 downto 0) => TRX_M13_AXI_arprot(2 downto 0),
      TRX_M13_AXI_arready(0) => TRX_M13_AXI_arready(0),
      TRX_M13_AXI_arvalid(0) => TRX_M13_AXI_arvalid(0),
      TRX_M13_AXI_awaddr(31 downto 0) => TRX_M13_AXI_awaddr(31 downto 0),
      TRX_M13_AXI_awprot(2 downto 0) => TRX_M13_AXI_awprot(2 downto 0),
      TRX_M13_AXI_awready(0) => TRX_M13_AXI_awready(0),
      TRX_M13_AXI_awvalid(0) => TRX_M13_AXI_awvalid(0),
      TRX_M13_AXI_bready(0) => TRX_M13_AXI_bready(0),
      TRX_M13_AXI_bresp(1 downto 0) => TRX_M13_AXI_bresp(1 downto 0),
      TRX_M13_AXI_bvalid(0) => TRX_M13_AXI_bvalid(0),
      TRX_M13_AXI_rdata(31 downto 0) => TRX_M13_AXI_rdata(31 downto 0),
      TRX_M13_AXI_rready(0) => TRX_M13_AXI_rready(0),
      TRX_M13_AXI_rresp(1 downto 0) => TRX_M13_AXI_rresp(1 downto 0),
      TRX_M13_AXI_rvalid(0) => TRX_M13_AXI_rvalid(0),
      TRX_M13_AXI_wdata(31 downto 0) => TRX_M13_AXI_wdata(31 downto 0),
      TRX_M13_AXI_wready(0) => TRX_M13_AXI_wready(0),
      TRX_M13_AXI_wstrb(3 downto 0) => TRX_M13_AXI_wstrb(3 downto 0),
      TRX_M13_AXI_wvalid(0) => TRX_M13_AXI_wvalid(0),
      TRX_M19_AXI_araddr(31 downto 0) => TRX_M19_AXI_araddr(31 downto 0),
      TRX_M19_AXI_arprot(2 downto 0) => TRX_M19_AXI_arprot(2 downto 0),
      TRX_M19_AXI_arready(0) => TRX_M19_AXI_arready(0),
      TRX_M19_AXI_arvalid(0) => TRX_M19_AXI_arvalid(0),
      TRX_M19_AXI_awaddr(31 downto 0) => TRX_M19_AXI_awaddr(31 downto 0),
      TRX_M19_AXI_awprot(2 downto 0) => TRX_M19_AXI_awprot(2 downto 0),
      TRX_M19_AXI_awready(0) => TRX_M19_AXI_awready(0),
      TRX_M19_AXI_awvalid(0) => TRX_M19_AXI_awvalid(0),
      TRX_M19_AXI_bready(0) => TRX_M19_AXI_bready(0),
      TRX_M19_AXI_bresp(1 downto 0) => TRX_M19_AXI_bresp(1 downto 0),
      TRX_M19_AXI_bvalid(0) => TRX_M19_AXI_bvalid(0),
      TRX_M19_AXI_rdata(31 downto 0) => TRX_M19_AXI_rdata(31 downto 0),
      TRX_M19_AXI_rready(0) => TRX_M19_AXI_rready(0),
      TRX_M19_AXI_rresp(1 downto 0) => TRX_M19_AXI_rresp(1 downto 0),
      TRX_M19_AXI_rvalid(0) => TRX_M19_AXI_rvalid(0),
      TRX_M19_AXI_wdata(31 downto 0) => TRX_M19_AXI_wdata(31 downto 0),
      TRX_M19_AXI_wready(0) => TRX_M19_AXI_wready(0),
      TRX_M19_AXI_wstrb(3 downto 0) => TRX_M19_AXI_wstrb(3 downto 0),
      TRX_M19_AXI_wvalid(0) => TRX_M19_AXI_wvalid(0),
      TRX_M20_AXI_araddr(31 downto 0) => TRX_M20_AXI_araddr(31 downto 0),
      TRX_M20_AXI_arprot(2 downto 0) => TRX_M20_AXI_arprot(2 downto 0),
      TRX_M20_AXI_arready(0) => TRX_M20_AXI_arready(0),
      TRX_M20_AXI_arvalid(0) => TRX_M20_AXI_arvalid(0),
      TRX_M20_AXI_awaddr(31 downto 0) => TRX_M20_AXI_awaddr(31 downto 0),
      TRX_M20_AXI_awprot(2 downto 0) => TRX_M20_AXI_awprot(2 downto 0),
      TRX_M20_AXI_awready(0) => TRX_M20_AXI_awready(0),
      TRX_M20_AXI_awvalid(0) => TRX_M20_AXI_awvalid(0),
      TRX_M20_AXI_bready(0) => TRX_M20_AXI_bready(0),
      TRX_M20_AXI_bresp(1 downto 0) => TRX_M20_AXI_bresp(1 downto 0),
      TRX_M20_AXI_bvalid(0) => TRX_M20_AXI_bvalid(0),
      TRX_M20_AXI_rdata(31 downto 0) => TRX_M20_AXI_rdata(31 downto 0),
      TRX_M20_AXI_rready(0) => TRX_M20_AXI_rready(0),
      TRX_M20_AXI_rresp(1 downto 0) => TRX_M20_AXI_rresp(1 downto 0),
      TRX_M20_AXI_rvalid(0) => TRX_M20_AXI_rvalid(0),
      TRX_M20_AXI_wdata(31 downto 0) => TRX_M20_AXI_wdata(31 downto 0),
      TRX_M20_AXI_wready(0) => TRX_M20_AXI_wready(0),
      TRX_M20_AXI_wstrb(3 downto 0) => TRX_M20_AXI_wstrb(3 downto 0),
      TRX_M20_AXI_wvalid(0) => TRX_M20_AXI_wvalid(0),
      TRX_TX_RF09_PULLDATA_FIFO_empty => TRX_TX_RF09_PULLDATA_FIFO_empty,
      TRX_clk_trx_26MHz_vio => TRX_clk_trx_26MHz_vio,
      TRX_clk_trx_pll_25MHz_vio => TRX_clk_trx_pll_25MHz_vio,
      TRX_data_count(11 downto 0) => TRX_data_count(11 downto 0),
      TRX_decoder_rx09_ch00_squelch_lvl(15 downto 0) => TRX_decoder_rx09_ch00_squelch_lvl(15 downto 0),
      TRX_int => TRX_int,
      TRX_ip2intc_irpt => TRX_ip2intc_irpt,
      TRX_post_fft_rx09_mem_b_dout(15 downto 0) => TRX_post_fft_rx09_mem_b_dout(15 downto 0),
      TRX_pushdata_rx09_irpt => TRX_pushdata_rx09_irpt,
      TRX_rd_data_count_CD100(8 downto 0) => TRX_rd_data_count_CD100(8 downto 0),
      TRX_rx09_32bits_CD100(31 downto 0) => TRX_rx09_32bits_CD100(31 downto 0),
      TRX_rx24_32bits_CD100(31 downto 0) => TRX_rx24_32bits_CD100(31 downto 0),
      TRX_rx_clkdiv_16MHz_in => TRX_rx_clkdiv_16MHz_in,
      TRX_tx_DDS0_gpio_ampt(15 downto 0) => TRX_tx_DDS0_gpio_ampt(15 downto 0),
      TRX_tx_DDS0_gpio_inc(31 downto 0) => TRX_tx_DDS0_gpio_inc(31 downto 0),
      TRX_tx_DDS1_gpio_ampt(15 downto 0) => TRX_tx_DDS1_gpio_ampt(15 downto 0),
      TRX_tx_im(12 downto 0) => TRX_tx_im(12 downto 0),
      TRX_tx_re(12 downto 0) => TRX_tx_re(12 downto 0),
      TRX_xfft_rx09_dly3449_event_data_in_channel_halt => TRX_xfft_rx09_dly3449_event_data_in_channel_halt,
      TRX_xfft_rx09_dly3449_event_frame_started => TRX_xfft_rx09_dly3449_event_frame_started,
      TRX_xfft_rx09_dly3449_event_tlast_missing => TRX_xfft_rx09_dly3449_event_tlast_missing,
      TRX_xfft_rx09_dly3449_event_tlast_unexpected => TRX_xfft_rx09_dly3449_event_tlast_unexpected,
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
      ULI_SYSTEM_XIO => ULI_SYSTEM_XIO,
      USER_dbg_out(13 downto 0) => USER_dbg_out(13 downto 0),
      dds_tx09_inc(25 downto 0) => dds_tx09_inc(25 downto 0),
      dds_tx09_ptt => dds_tx09_ptt,
      decoder_rx09_ch00_active => decoder_rx09_ch00_active,
      decoder_rx09_ch00_center_pos(7 downto 0) => decoder_rx09_ch00_center_pos(7 downto 0),
      decoder_rx09_ch00_noise(18 downto 0) => decoder_rx09_ch00_noise(18 downto 0),
      decoder_rx09_ch00_sql_open => decoder_rx09_ch00_sql_open,
      decoder_rx09_ch00_strength(18 downto 0) => decoder_rx09_ch00_strength(18 downto 0),
      microblaze_0_Clk_100MHz => microblaze_0_Clk_100MHz,
      mig_7series_0_mmcm_locked => mig_7series_0_mmcm_locked,
      mig_7series_0_ui_clk_sync_rst => mig_7series_0_ui_clk_sync_rst,
      phy_rst_n => phy_rst_n,
      premem_rx09_dina_in(25 downto 0) => premem_rx09_dina_in(25 downto 0),
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
