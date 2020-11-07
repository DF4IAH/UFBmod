--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Fri Nov  6 23:03:02 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target UFBmod_TRX_wrapper.bd
--Design      : UFBmod_TRX_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_TRX_wrapper is
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
end UFBmod_TRX_wrapper;

architecture STRUCTURE of UFBmod_TRX_wrapper is
  component UFBmod_TRX is
  port (
    microblaze_0_Clk_100MHz : in STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_aresetn : in STD_LOGIC;
    TRX_clk_26MHz : in STD_LOGIC;
    mig_7series_0_ui_clk_sync_rst : in STD_LOGIC;
    mig_7series_0_ui_addn_clk_0_200MHz : in STD_LOGIC;
    mig_7series_0_mmcm_locked : in STD_LOGIC;
    rst_mig_7series_0_100M_peripheral_reset : in STD_LOGIC;
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC;
    TRX_rx_rf09_Pre_FFT_mem_addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    RF09_quarterfrm : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_rf09_ch00_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_dds_tx_rf09_ptt : in STD_LOGIC;
    Status_LVDS_rx09_synced : in STD_LOGIC;
    Status_LVDS_rx24_synced : in STD_LOGIC;
    RF09_framectr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    FFT_window_coef_rom_rx09 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pulldata_tx09_en : in STD_LOGIC;
    TRX_dds_tx_rf09_inc : in STD_LOGIC_VECTOR ( 25 downto 0 );
    TRX_resetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx_clkdiv_16MHz : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx24_32bits_CD100 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_32bits_CD100 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rd_data_count_CD100_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    TRX_rx09_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo_valid : out STD_LOGIC;
    TRX_rx24_fifo_valid : out STD_LOGIC;
    TRX_fft09_data_tready_out : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_frame_started : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_unexpected : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_tlast_missing : out STD_LOGIC;
    TRX_xfft_rx09_dly3449_event_data_in_channel_halt : out STD_LOGIC;
    TRX_rx_rf09_ch00_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_clk_trx_26MHz_vio : out STD_LOGIC;
    TRX_clk_trx_pll_25MHz_vio : out STD_LOGIC;
    TRX_tx_re_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_im_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_post_fft_rx09_mem_a_addr : out STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_post_fft_mem_a_rx09_EoT : out STD_LOGIC;
    TRX_encoder_tx09_pull_data_len : out STD_LOGIC_VECTOR ( 6 downto 0 );
    TRX_pulldata_tx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_encoder_tx09_pull_do_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_encoder_tx09_pull_FIFO_dump : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : out STD_LOGIC;
    TRX_decoder_rx09_squelch_lvl : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS1_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_PUSHDATA_ch00_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch00_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_rx_rf09_ch01_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch02_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch03_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch04_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch05_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch06_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch07_Post_FFT_mem_b_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_rx_rf09_ch01_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch02_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch06_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch07_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch03_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch04_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_rx_rf09_ch05_Post_FFT_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_PUSHDATA_ch01_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch01_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch00_req : in STD_LOGIC;
    TRX_PUSHDATA_ch01_req : in STD_LOGIC;
    TRX_PUSHDATA_ch00_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch01_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch02_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch03_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch04_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch05_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch06_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch07_grant : out STD_LOGIC;
    TRX_PUSHDATA_ch02_req : in STD_LOGIC;
    TRX_PUSHDATA_ch03_req : in STD_LOGIC;
    TRX_PUSHDATA_ch04_req : in STD_LOGIC;
    TRX_PUSHDATA_ch05_req : in STD_LOGIC;
    TRX_PUSHDATA_ch06_req : in STD_LOGIC;
    TRX_PUSHDATA_ch07_req : in STD_LOGIC;
    TRX_PUSHDATA_ch02_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch03_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch04_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch05_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch06_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch07_wr_en : in STD_LOGIC;
    TRX_PUSHDATA_ch02_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch03_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch04_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch05_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch06_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_PUSHDATA_ch07_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_CONFIG_GPIO1_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_CONFIG_GPIO2_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO2_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO1_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDS_GPIO1_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_TX_DDSAMPL_GPIO1_o : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_TX_DDSAMPL_GPIO2_o : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_RX_PUSHDATA_GPIO2_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_RX_PUSHDATA_GPIO1_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_LVDS_tx09_fifo_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC
  );
  end component UFBmod_TRX;
begin
UFBmod_TRX_i: component UFBmod_TRX
     port map (
      FFT_window_coef_rom_rx09(9 downto 0) => FFT_window_coef_rom_rx09(9 downto 0),
      RF09_framectr(29 downto 0) => RF09_framectr(29 downto 0),
      RF09_quarterfrm(1 downto 0) => RF09_quarterfrm(1 downto 0),
      Status_LVDS_rx09_synced => Status_LVDS_rx09_synced,
      Status_LVDS_rx24_synced => Status_LVDS_rx24_synced,
      TRX_CONFIG_GPIO1_o(31 downto 0) => TRX_CONFIG_GPIO1_o(31 downto 0),
      TRX_CONFIG_GPIO2_i(31 downto 0) => TRX_CONFIG_GPIO2_i(31 downto 0),
      TRX_LVDS_tx09_fifo_din(31 downto 0) => TRX_LVDS_tx09_fifo_din(31 downto 0),
      TRX_PLL_clk_25MHz_n(0) => TRX_PLL_clk_25MHz_n(0),
      TRX_PLL_clk_25MHz_p(0) => TRX_PLL_clk_25MHz_p(0),
      TRX_PUSHDATA_ch00_din(7 downto 0) => TRX_PUSHDATA_ch00_din(7 downto 0),
      TRX_PUSHDATA_ch00_grant => TRX_PUSHDATA_ch00_grant,
      TRX_PUSHDATA_ch00_req => TRX_PUSHDATA_ch00_req,
      TRX_PUSHDATA_ch00_wr_en => TRX_PUSHDATA_ch00_wr_en,
      TRX_PUSHDATA_ch01_din(7 downto 0) => TRX_PUSHDATA_ch01_din(7 downto 0),
      TRX_PUSHDATA_ch01_grant => TRX_PUSHDATA_ch01_grant,
      TRX_PUSHDATA_ch01_req => TRX_PUSHDATA_ch01_req,
      TRX_PUSHDATA_ch01_wr_en => TRX_PUSHDATA_ch01_wr_en,
      TRX_PUSHDATA_ch02_din(7 downto 0) => TRX_PUSHDATA_ch02_din(7 downto 0),
      TRX_PUSHDATA_ch02_grant => TRX_PUSHDATA_ch02_grant,
      TRX_PUSHDATA_ch02_req => TRX_PUSHDATA_ch02_req,
      TRX_PUSHDATA_ch02_wr_en => TRX_PUSHDATA_ch02_wr_en,
      TRX_PUSHDATA_ch03_din(7 downto 0) => TRX_PUSHDATA_ch03_din(7 downto 0),
      TRX_PUSHDATA_ch03_grant => TRX_PUSHDATA_ch03_grant,
      TRX_PUSHDATA_ch03_req => TRX_PUSHDATA_ch03_req,
      TRX_PUSHDATA_ch03_wr_en => TRX_PUSHDATA_ch03_wr_en,
      TRX_PUSHDATA_ch04_din(7 downto 0) => TRX_PUSHDATA_ch04_din(7 downto 0),
      TRX_PUSHDATA_ch04_grant => TRX_PUSHDATA_ch04_grant,
      TRX_PUSHDATA_ch04_req => TRX_PUSHDATA_ch04_req,
      TRX_PUSHDATA_ch04_wr_en => TRX_PUSHDATA_ch04_wr_en,
      TRX_PUSHDATA_ch05_din(7 downto 0) => TRX_PUSHDATA_ch05_din(7 downto 0),
      TRX_PUSHDATA_ch05_grant => TRX_PUSHDATA_ch05_grant,
      TRX_PUSHDATA_ch05_req => TRX_PUSHDATA_ch05_req,
      TRX_PUSHDATA_ch05_wr_en => TRX_PUSHDATA_ch05_wr_en,
      TRX_PUSHDATA_ch06_din(7 downto 0) => TRX_PUSHDATA_ch06_din(7 downto 0),
      TRX_PUSHDATA_ch06_grant => TRX_PUSHDATA_ch06_grant,
      TRX_PUSHDATA_ch06_req => TRX_PUSHDATA_ch06_req,
      TRX_PUSHDATA_ch06_wr_en => TRX_PUSHDATA_ch06_wr_en,
      TRX_PUSHDATA_ch07_din(7 downto 0) => TRX_PUSHDATA_ch07_din(7 downto 0),
      TRX_PUSHDATA_ch07_grant => TRX_PUSHDATA_ch07_grant,
      TRX_PUSHDATA_ch07_req => TRX_PUSHDATA_ch07_req,
      TRX_PUSHDATA_ch07_wr_en => TRX_PUSHDATA_ch07_wr_en,
      TRX_RX_PUSHDATA_GPIO1_i(31 downto 0) => TRX_RX_PUSHDATA_GPIO1_i(31 downto 0),
      TRX_RX_PUSHDATA_GPIO2_o(31 downto 0) => TRX_RX_PUSHDATA_GPIO2_o(31 downto 0),
      TRX_TX_DDSAMPL_GPIO1_o(15 downto 0) => TRX_TX_DDSAMPL_GPIO1_o(15 downto 0),
      TRX_TX_DDSAMPL_GPIO2_o(15 downto 0) => TRX_TX_DDSAMPL_GPIO2_o(15 downto 0),
      TRX_TX_DDS_GPIO1_i(31 downto 0) => TRX_TX_DDS_GPIO1_i(31 downto 0),
      TRX_TX_DDS_GPIO1_o(31 downto 0) => TRX_TX_DDS_GPIO1_o(31 downto 0),
      TRX_TX_DDS_GPIO2_o(31 downto 0) => TRX_TX_DDS_GPIO2_o(31 downto 0),
      TRX_TX_RF09_PULLDATA_FIFO_empty => TRX_TX_RF09_PULLDATA_FIFO_empty,
      TRX_clk_26MHz => TRX_clk_26MHz,
      TRX_clk_trx_26MHz_vio => TRX_clk_trx_26MHz_vio,
      TRX_clk_trx_pll_25MHz_vio => TRX_clk_trx_pll_25MHz_vio,
      TRX_data_count(11 downto 0) => TRX_data_count(11 downto 0),
      TRX_dds_tx_rf09_inc(25 downto 0) => TRX_dds_tx_rf09_inc(25 downto 0),
      TRX_dds_tx_rf09_ptt => TRX_dds_tx_rf09_ptt,
      TRX_decoder_rx09_squelch_lvl(15 downto 0) => TRX_decoder_rx09_squelch_lvl(15 downto 0),
      TRX_encoder_tx09_pull_FIFO_dump(0) => TRX_encoder_tx09_pull_FIFO_dump(0),
      TRX_encoder_tx09_pull_data_len(6 downto 0) => TRX_encoder_tx09_pull_data_len(6 downto 0),
      TRX_encoder_tx09_pull_do_start(0) => TRX_encoder_tx09_pull_do_start(0),
      TRX_fft09_data_tready_out => TRX_fft09_data_tready_out,
      TRX_post_fft_mem_a_rx09_EoT => TRX_post_fft_mem_a_rx09_EoT,
      TRX_post_fft_rx09_mem_a_addr(41 downto 0) => TRX_post_fft_rx09_mem_a_addr(41 downto 0),
      TRX_pulldata_tx09_byteData(7 downto 0) => TRX_pulldata_tx09_byteData(7 downto 0),
      TRX_rd_data_count_CD100_o(8 downto 0) => TRX_rd_data_count_CD100_o(8 downto 0),
      TRX_resetn(0) => TRX_resetn(0),
      TRX_rfx_mode(0) => TRX_rfx_mode(0),
      TRX_rx09_32bits_CD100(31 downto 0) => TRX_rx09_32bits_CD100(31 downto 0),
      TRX_rx09_fifo(31 downto 0) => TRX_rx09_fifo(31 downto 0),
      TRX_rx09_fifo_valid => TRX_rx09_fifo_valid,
      TRX_rx24_32bits_CD100(31 downto 0) => TRX_rx24_32bits_CD100(31 downto 0),
      TRX_rx24_fifo(31 downto 0) => TRX_rx24_fifo(31 downto 0),
      TRX_rx24_fifo_valid => TRX_rx24_fifo_valid,
      TRX_rx_clk_64MHz_clk_n => TRX_rx_clk_64MHz_clk_n,
      TRX_rx_clk_64MHz_clk_p => TRX_rx_clk_64MHz_clk_p,
      TRX_rx_clkdiv_16MHz(0) => TRX_rx_clkdiv_16MHz(0),
      TRX_rx_data_n(1 downto 0) => TRX_rx_data_n(1 downto 0),
      TRX_rx_data_p(1 downto 0) => TRX_rx_data_p(1 downto 0),
      TRX_rx_rf09_Pre_FFT_mem_addrb(10 downto 0) => TRX_rx_rf09_Pre_FFT_mem_addrb(10 downto 0),
      TRX_rx_rf09_ch00_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch00_Post_FFT_mem_b_addr(4 downto 0),
      TRX_rx_rf09_ch00_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_rf09_ch00_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch01_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch01_Post_FFT_mem_b_addr(4 downto 0),
      TRX_rx_rf09_ch01_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_rf09_ch01_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch02_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch02_Post_FFT_mem_b_addr(4 downto 0),
      TRX_rx_rf09_ch02_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_rf09_ch02_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch03_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch03_Post_FFT_mem_b_addr(4 downto 0),
      TRX_rx_rf09_ch03_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_rf09_ch03_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch04_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch04_Post_FFT_mem_b_addr(4 downto 0),
      TRX_rx_rf09_ch04_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_rf09_ch04_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch05_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch05_Post_FFT_mem_b_addr(4 downto 0),
      TRX_rx_rf09_ch05_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_rf09_ch05_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch06_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch06_Post_FFT_mem_b_addr(4 downto 0),
      TRX_rx_rf09_ch06_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_rf09_ch06_Post_FFT_mem_b_dout(15 downto 0),
      TRX_rx_rf09_ch07_Post_FFT_mem_b_addr(4 downto 0) => TRX_rx_rf09_ch07_Post_FFT_mem_b_addr(4 downto 0),
      TRX_rx_rf09_ch07_Post_FFT_mem_b_dout(15 downto 0) => TRX_rx_rf09_ch07_Post_FFT_mem_b_dout(15 downto 0),
      TRX_tx_DDS0_gpio_ampt(15 downto 0) => TRX_tx_DDS0_gpio_ampt(15 downto 0),
      TRX_tx_DDS1_gpio_ampt(15 downto 0) => TRX_tx_DDS1_gpio_ampt(15 downto 0),
      TRX_tx_clk_clk_n => TRX_tx_clk_clk_n,
      TRX_tx_clk_clk_p => TRX_tx_clk_clk_p,
      TRX_tx_data_n(1 downto 0) => TRX_tx_data_n(1 downto 0),
      TRX_tx_data_p(1 downto 0) => TRX_tx_data_p(1 downto 0),
      TRX_tx_im_out(20 downto 8) => TRX_tx_im_out(20 downto 8),
      TRX_tx_re_out(20 downto 8) => TRX_tx_re_out(20 downto 8),
      TRX_xfft_rx09_dly3449_event_data_in_channel_halt => TRX_xfft_rx09_dly3449_event_data_in_channel_halt,
      TRX_xfft_rx09_dly3449_event_frame_started => TRX_xfft_rx09_dly3449_event_frame_started,
      TRX_xfft_rx09_dly3449_event_tlast_missing => TRX_xfft_rx09_dly3449_event_tlast_missing,
      TRX_xfft_rx09_dly3449_event_tlast_unexpected => TRX_xfft_rx09_dly3449_event_tlast_unexpected,
      fft09_config_tdata_in(7 downto 0) => fft09_config_tdata_in(7 downto 0),
      fft09_config_tvalid_in => fft09_config_tvalid_in,
      fft09_data_tlast_in => fft09_data_tlast_in,
      fft09_data_tvalid_in => fft09_data_tvalid_in,
      microblaze_0_Clk_100MHz => microblaze_0_Clk_100MHz,
      mig_7series_0_mmcm_locked => mig_7series_0_mmcm_locked,
      mig_7series_0_ui_addn_clk_0_200MHz => mig_7series_0_ui_addn_clk_0_200MHz,
      mig_7series_0_ui_clk_sync_rst => mig_7series_0_ui_clk_sync_rst,
      premem_rx09_addra_in(10 downto 0) => premem_rx09_addra_in(10 downto 0),
      premem_rx09_dina_in(25 downto 0) => premem_rx09_dina_in(25 downto 0),
      premem_rx09_wea_in => premem_rx09_wea_in,
      pulldata_tx09_en => pulldata_tx09_en,
      rst_mig_7series_0_100M_peripheral_aresetn => rst_mig_7series_0_100M_peripheral_aresetn,
      rst_mig_7series_0_100M_peripheral_reset => rst_mig_7series_0_100M_peripheral_reset
    );
end STRUCTURE;
