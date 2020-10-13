-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
-- Date        : Mon Oct 12 01:10:44 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/msys_stub.vhdl
-- Design      : msys
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys is
  Port ( 
    BOARD_IIC_scl_i : in STD_LOGIC;
    BOARD_IIC_scl_o : out STD_LOGIC;
    BOARD_IIC_scl_t : out STD_LOGIC;
    BOARD_IIC_sda_i : in STD_LOGIC;
    BOARD_IIC_sda_o : out STD_LOGIC;
    BOARD_IIC_sda_t : out STD_LOGIC;
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
    ETH0_MDIO_MDC_mdio_i : in STD_LOGIC;
    ETH0_MDIO_MDC_mdio_o : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_t : out STD_LOGIC;
    EUI48_FSM_run : in STD_LOGIC;
    EUI48_FSM_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    EUI48_abort : in STD_LOGIC_VECTOR ( 7 downto 0 );
    EUI48_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    EUI48_state : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FFT_window_coef_rom_rx09 : in STD_LOGIC_VECTOR ( 9 downto 0 );
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
    RF09_framectr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    RF09_quarterfrm : in STD_LOGIC_VECTOR ( 1 downto 0 );
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
    TRX_PLL_clk_25MHz_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_clk_26MHz : in STD_LOGIC;
    TRX_int : in STD_LOGIC;
    TRX_resetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx09_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo_valid_o : out STD_LOGIC;
    TRX_rx24_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo_valid_o : out STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_spi_io0_i : in STD_LOGIC;
    TRX_spi_io0_o : out STD_LOGIC;
    TRX_spi_io0_t : out STD_LOGIC;
    TRX_spi_io1_i : in STD_LOGIC;
    TRX_spi_io1_o : out STD_LOGIC;
    TRX_spi_io1_t : out STD_LOGIC;
    TRX_spi_sck_i : in STD_LOGIC;
    TRX_spi_sck_o : out STD_LOGIC;
    TRX_spi_sck_t : out STD_LOGIC;
    TRX_spi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_t : out STD_LOGIC;
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC;
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
    decoder_rx09_active : in STD_LOGIC;
    decoder_rx09_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_sql_open : in STD_LOGIC;
    decoder_rx09_squelch_lvl : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    encoder_pull_FIFO_dump : out STD_LOGIC_VECTOR ( 0 to 0 );
    encoder_pull_data_len : out STD_LOGIC_VECTOR ( 6 downto 0 );
    encoder_pull_do_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tready_out : out STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    microblaze_0_Clk_100MHz_o : out STD_LOGIC;
    mig_7series_0_ui_clk_sync_rst : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    post_fft_rx09_mem_a_EoT : out STD_LOGIC;
    post_fft_rx09_mem_a_addr : out STD_LOGIC_VECTOR ( 41 downto 0 );
    post_fft_rx09_mem_b_addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    post_fft_rx09_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pulldata_tx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pulldata_tx09_en : in STD_LOGIC;
    pushdata_rx09_byteData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pushdata_rx09_en : in STD_LOGIC;
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
    reset : in STD_LOGIC;
    rotenc_dec_cnt_en : in STD_LOGIC;
    rotenc_dec_cnt_up_dwn : in STD_LOGIC
  );

end msys;

architecture stub of msys is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "BOARD_IIC_scl_i,BOARD_IIC_scl_o,BOARD_IIC_scl_t,BOARD_IIC_sda_i,BOARD_IIC_sda_o,BOARD_IIC_sda_t,BOARD_ROTENC_PUSH,CLK0_clk_n[0:0],CLK0_clk_p[0:0],CLK1B_clk[0:0],CLK2_mgt_clk0_clk_n,CLK2_mgt_clk0_clk_p,CLK3_sys_diff_clk_n,CLK3_sys_diff_clk_p,DDR3_SDRAM_addr[14:0],DDR3_SDRAM_ba[2:0],DDR3_SDRAM_cas_n,DDR3_SDRAM_ck_n[0:0],DDR3_SDRAM_ck_p[0:0],DDR3_SDRAM_cke[0:0],DDR3_SDRAM_cs_n[0:0],DDR3_SDRAM_dm[3:0],DDR3_SDRAM_dq[31:0],DDR3_SDRAM_dqs_n[3:0],DDR3_SDRAM_dqs_p[3:0],DDR3_SDRAM_odt[0:0],DDR3_SDRAM_ras_n,DDR3_SDRAM_reset_n,DDR3_SDRAM_we_n,DDR3_init_calib_complete,ETH0_DA_G[0:0],ETH0_DA_Y[0:0],ETH0_LINK_LED_g,ETH0_MDIO_MDC_mdc,ETH0_MDIO_MDC_mdio_i,ETH0_MDIO_MDC_mdio_o,ETH0_MDIO_MDC_mdio_t,EUI48_FSM_run,EUI48_FSM_start[0:0],EUI48_abort[7:0],EUI48_data[47:0],EUI48_state[7:0],FFT_window_coef_rom_rx09[9:0],FPGA_IO,LCD_BL[0:0],LCD_rstn[0:0],LED_RGB_blue[0:0],LED_RGB_green[0:0],LED_RGB_red[0:0],LVDS_rx09_synced,LVDS_rx24_synced,PLL_I2C_ext_scl_o,PLL_I2C_ext_sda,PLL_int,RF09_framectr[29:0],RF09_quarterfrm[1:0],RMII_PHY_M_0_crs_dv,RMII_PHY_M_0_rxd[1:0],RMII_PHY_M_0_tx_en,RMII_PHY_M_0_txd[1:0],SCOPE_FSM_FIFO_RdEmpty,SCOPE_FSM_FIFO_RdEn,SCOPE_FSM_FIFO_RdValid,SCOPE_FSM_FIFO_Rst,SCOPE_FSM_FIFO_WrEn,SCOPE_FSM_FIFO_WrFull,SCOPE_FSM_FIFO_rd_rst_busy,SCOPE_FSM_FIFO_wr_rst_busy,SCOPE_FSM_GPIO0_Out[31:0],SCOPE_FSM_GPIO1_In[31:0],SCOPE_FSM_Timebase_CE,SCOPE_FSM_TrigSrc[47:0],TRX_PLL_clk_25MHz_N[0:0],TRX_PLL_clk_25MHz_P[0:0],TRX_clk_26MHz,TRX_int,TRX_resetn[0:0],TRX_rfx_mode[0:0],TRX_rx09_fifo_o[31:0],TRX_rx09_fifo_valid_o,TRX_rx24_fifo_o[31:0],TRX_rx24_fifo_valid_o,TRX_rx_clk_64MHz_clk_n,TRX_rx_clk_64MHz_clk_p,TRX_rx_data_n[1:0],TRX_rx_data_p[1:0],TRX_spi_io0_i,TRX_spi_io0_o,TRX_spi_io0_t,TRX_spi_io1_i,TRX_spi_io1_o,TRX_spi_io1_t,TRX_spi_sck_i,TRX_spi_sck_o,TRX_spi_sck_t,TRX_spi_ss_i[0:0],TRX_spi_ss_o[0:0],TRX_spi_ss_t,TRX_tx_clk_clk_n,TRX_tx_clk_clk_p,TRX_tx_data_n[1:0],TRX_tx_data_p[1:0],UART0EXT_CTSn[0:0],UART0EXT_DCDn[0:0],UART0EXT_DSRn[0:0],UART0EXT_DTRn,UART0EXT_RIn[0:0],UART0EXT_RTSn,UART0_clk,UART0_rst_n[0:0],UART0_rxd,UART0_txd,ULI_SYSTEM_XIO,USER_dbg_out[13:0],dds_tx09_inc[25:0],dds_tx09_ptt,decoder_rx09_active,decoder_rx09_center_pos[7:0],decoder_rx09_noise[18:0],decoder_rx09_sql_open,decoder_rx09_squelch_lvl[18:0],decoder_rx09_strength[18:0],encoder_pull_FIFO_dump[0:0],encoder_pull_data_len[6:0],encoder_pull_do_start[0:0],fft09_config_tdata_in[7:0],fft09_config_tvalid_in,fft09_data_tlast_in,fft09_data_tready_out,fft09_data_tvalid_in,microblaze_0_Clk_100MHz_o,mig_7series_0_ui_clk_sync_rst,phy_rst_n,post_fft_rx09_mem_a_EoT,post_fft_rx09_mem_a_addr[41:0],post_fft_rx09_mem_b_addr[9:0],post_fft_rx09_mem_b_dout[15:0],premem_rx09_addra_in[10:0],premem_rx09_addrb_in[10:0],premem_rx09_dina_in[25:0],premem_rx09_wea_in[0:0],pulldata_tx09_byteData[7:0],pulldata_tx09_en,pushdata_rx09_byteData[7:0],pushdata_rx09_en,qspi_flash_io0_i,qspi_flash_io0_o,qspi_flash_io0_t,qspi_flash_io1_i,qspi_flash_io1_o,qspi_flash_io1_t,qspi_flash_io2_i,qspi_flash_io2_o,qspi_flash_io2_t,qspi_flash_io3_i,qspi_flash_io3_o,qspi_flash_io3_t,qspi_flash_ss_i,qspi_flash_ss_o,qspi_flash_ss_t,reset,rotenc_dec_cnt_en,rotenc_dec_cnt_up_dwn";
begin
end;
