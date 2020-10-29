--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Thu Oct 29 00:54:25 2020
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
    S11_AXI_spi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S11_AXI_spi_arready : out STD_LOGIC;
    S11_AXI_spi_arvalid : in STD_LOGIC;
    S11_AXI_spi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S11_AXI_spi_awready : out STD_LOGIC;
    S11_AXI_spi_awvalid : in STD_LOGIC;
    S11_AXI_spi_bready : in STD_LOGIC;
    S11_AXI_spi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_spi_bvalid : out STD_LOGIC;
    S11_AXI_spi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_spi_rready : in STD_LOGIC;
    S11_AXI_spi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_spi_rvalid : out STD_LOGIC;
    S11_AXI_spi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_spi_wready : out STD_LOGIC;
    S11_AXI_spi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_spi_wvalid : in STD_LOGIC;
    S12_AXI_gpio_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S12_AXI_gpio_arready : out STD_LOGIC;
    S12_AXI_gpio_arvalid : in STD_LOGIC;
    S12_AXI_gpio_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S12_AXI_gpio_awready : out STD_LOGIC;
    S12_AXI_gpio_awvalid : in STD_LOGIC;
    S12_AXI_gpio_bready : in STD_LOGIC;
    S12_AXI_gpio_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S12_AXI_gpio_bvalid : out STD_LOGIC;
    S12_AXI_gpio_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S12_AXI_gpio_rready : in STD_LOGIC;
    S12_AXI_gpio_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S12_AXI_gpio_rvalid : out STD_LOGIC;
    S12_AXI_gpio_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S12_AXI_gpio_wready : out STD_LOGIC;
    S12_AXI_gpio_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S12_AXI_gpio_wvalid : in STD_LOGIC;
    S13_AXI_dds_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S13_AXI_dds_arready : out STD_LOGIC;
    S13_AXI_dds_arvalid : in STD_LOGIC;
    S13_AXI_dds_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S13_AXI_dds_awready : out STD_LOGIC;
    S13_AXI_dds_awvalid : in STD_LOGIC;
    S13_AXI_dds_bready : in STD_LOGIC;
    S13_AXI_dds_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S13_AXI_dds_bvalid : out STD_LOGIC;
    S13_AXI_dds_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S13_AXI_dds_rready : in STD_LOGIC;
    S13_AXI_dds_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S13_AXI_dds_rvalid : out STD_LOGIC;
    S13_AXI_dds_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S13_AXI_dds_wready : out STD_LOGIC;
    S13_AXI_dds_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S13_AXI_dds_wvalid : in STD_LOGIC;
    S19_AXI_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S19_AXI_arready : out STD_LOGIC;
    S19_AXI_arvalid : in STD_LOGIC;
    S19_AXI_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S19_AXI_awready : out STD_LOGIC;
    S19_AXI_awvalid : in STD_LOGIC;
    S19_AXI_bready : in STD_LOGIC;
    S19_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S19_AXI_bvalid : out STD_LOGIC;
    S19_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S19_AXI_rready : in STD_LOGIC;
    S19_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S19_AXI_rvalid : out STD_LOGIC;
    S19_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S19_AXI_wready : out STD_LOGIC;
    S19_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S19_AXI_wvalid : in STD_LOGIC;
    S20_AXI1_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S20_AXI1_arready : out STD_LOGIC;
    S20_AXI1_arvalid : in STD_LOGIC;
    S20_AXI1_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S20_AXI1_awready : out STD_LOGIC;
    S20_AXI1_awvalid : in STD_LOGIC;
    S20_AXI1_bready : in STD_LOGIC;
    S20_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S20_AXI1_bvalid : out STD_LOGIC;
    S20_AXI1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S20_AXI1_rready : in STD_LOGIC;
    S20_AXI1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S20_AXI1_rvalid : out STD_LOGIC;
    S20_AXI1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S20_AXI1_wready : out STD_LOGIC;
    S20_AXI1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S20_AXI1_wvalid : in STD_LOGIC;
    Status_LVDS_rx09_synced : in STD_LOGIC;
    Status_LVDS_rx24_synced : in STD_LOGIC;
    TRX_PLL_clk_25MHz_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : out STD_LOGIC;
    TRX_clk_26MHz : in STD_LOGIC;
    TRX_clk_trx_26MHz_vio : out STD_LOGIC;
    TRX_clk_trx_pll_25MHz_vio : out STD_LOGIC;
    TRX_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_decoder_rx09_squelch_lvl : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_encoder_tx09_pull_FIFO_dump : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_encoder_tx09_pull_data_len : out STD_LOGIC_VECTOR ( 6 downto 0 );
    TRX_encoder_tx09_pull_do_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_fft09_data_tready_out : out STD_LOGIC;
    TRX_ip2intc_irpt : out STD_LOGIC;
    TRX_post_fft_mem_a_rx09_EoT : out STD_LOGIC;
    TRX_post_fft_rx09_mem_a_addr : out STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_post_fft_rx09_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_pulldata_tx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_pushdata_rx09_irpt : out STD_LOGIC;
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
    TRX_spi_io0_io : inout STD_LOGIC;
    TRX_spi_io1_io : inout STD_LOGIC;
    TRX_spi_sck_io : inout STD_LOGIC;
    TRX_spi_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_tx_DDS0_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_inc : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    dds_tx09_ptt_in : in STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    microblaze_0_Clk_100MHz : in STD_LOGIC;
    mig_7series_0_mmcm_locked : in STD_LOGIC;
    mig_7series_0_ui_addn_clk_0_200MHz : in STD_LOGIC;
    mig_7series_0_ui_clk_sync_rst : in STD_LOGIC;
    post_fft_rx09_mem_b_addr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC;
    pulldata_dds_inc : in STD_LOGIC_VECTOR ( 25 downto 0 );
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
    premem_rx09_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    RF09_quarterfrm : in STD_LOGIC_VECTOR ( 1 downto 0 );
    post_fft_rx09_mem_b_addr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dds_tx09_ptt_in : in STD_LOGIC;
    Status_LVDS_rx09_synced : in STD_LOGIC;
    Status_LVDS_rx24_synced : in STD_LOGIC;
    RF09_framectr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    FFT_window_coef_rom_rx09 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pulldata_tx09_en : in STD_LOGIC;
    pulldata_dds_inc : in STD_LOGIC_VECTOR ( 25 downto 0 );
    TRX_ip2intc_irpt : out STD_LOGIC;
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
    TRX_post_fft_rx09_mem_b_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_clk_trx_26MHz_vio : out STD_LOGIC;
    TRX_clk_trx_pll_25MHz_vio : out STD_LOGIC;
    TRX_tx_re_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_tx_im_out : out STD_LOGIC_VECTOR ( 20 downto 8 );
    TRX_post_fft_rx09_mem_a_addr : out STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_post_fft_mem_a_rx09_EoT : out STD_LOGIC;
    TRX_pushdata_rx09_irpt : out STD_LOGIC;
    TRX_encoder_tx09_pull_data_len : out STD_LOGIC_VECTOR ( 6 downto 0 );
    TRX_pulldata_tx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_encoder_tx09_pull_do_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_encoder_tx09_pull_FIFO_dump : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    TRX_TX_RF09_PULLDATA_FIFO_empty : out STD_LOGIC;
    TRX_decoder_rx09_squelch_lvl : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS0_gpio_inc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_tx_DDS0_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_tx_DDS1_gpio_ampt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S11_AXI_spi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S11_AXI_spi_arready : out STD_LOGIC;
    S11_AXI_spi_arvalid : in STD_LOGIC;
    S11_AXI_spi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S11_AXI_spi_awready : out STD_LOGIC;
    S11_AXI_spi_awvalid : in STD_LOGIC;
    S11_AXI_spi_bready : in STD_LOGIC;
    S11_AXI_spi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_spi_bvalid : out STD_LOGIC;
    S11_AXI_spi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_spi_rready : in STD_LOGIC;
    S11_AXI_spi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S11_AXI_spi_rvalid : out STD_LOGIC;
    S11_AXI_spi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S11_AXI_spi_wready : out STD_LOGIC;
    S11_AXI_spi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S11_AXI_spi_wvalid : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    S13_AXI_dds_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S13_AXI_dds_arready : out STD_LOGIC;
    S13_AXI_dds_arvalid : in STD_LOGIC;
    S13_AXI_dds_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S13_AXI_dds_awready : out STD_LOGIC;
    S13_AXI_dds_awvalid : in STD_LOGIC;
    S13_AXI_dds_bready : in STD_LOGIC;
    S13_AXI_dds_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S13_AXI_dds_bvalid : out STD_LOGIC;
    S13_AXI_dds_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S13_AXI_dds_rready : in STD_LOGIC;
    S13_AXI_dds_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S13_AXI_dds_rvalid : out STD_LOGIC;
    S13_AXI_dds_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S13_AXI_dds_wready : out STD_LOGIC;
    S13_AXI_dds_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S13_AXI_dds_wvalid : in STD_LOGIC;
    S12_AXI_gpio_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S12_AXI_gpio_arready : out STD_LOGIC;
    S12_AXI_gpio_arvalid : in STD_LOGIC;
    S12_AXI_gpio_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S12_AXI_gpio_awready : out STD_LOGIC;
    S12_AXI_gpio_awvalid : in STD_LOGIC;
    S12_AXI_gpio_bready : in STD_LOGIC;
    S12_AXI_gpio_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S12_AXI_gpio_bvalid : out STD_LOGIC;
    S12_AXI_gpio_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S12_AXI_gpio_rready : in STD_LOGIC;
    S12_AXI_gpio_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S12_AXI_gpio_rvalid : out STD_LOGIC;
    S12_AXI_gpio_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S12_AXI_gpio_wready : out STD_LOGIC;
    S12_AXI_gpio_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S12_AXI_gpio_wvalid : in STD_LOGIC;
    S19_AXI_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S19_AXI_arready : out STD_LOGIC;
    S19_AXI_arvalid : in STD_LOGIC;
    S19_AXI_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S19_AXI_awready : out STD_LOGIC;
    S19_AXI_awvalid : in STD_LOGIC;
    S19_AXI_bready : in STD_LOGIC;
    S19_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S19_AXI_bvalid : out STD_LOGIC;
    S19_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S19_AXI_rready : in STD_LOGIC;
    S19_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S19_AXI_rvalid : out STD_LOGIC;
    S19_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S19_AXI_wready : out STD_LOGIC;
    S19_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S19_AXI_wvalid : in STD_LOGIC;
    S20_AXI1_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S20_AXI1_arready : out STD_LOGIC;
    S20_AXI1_arvalid : in STD_LOGIC;
    S20_AXI1_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S20_AXI1_awready : out STD_LOGIC;
    S20_AXI1_awvalid : in STD_LOGIC;
    S20_AXI1_bready : in STD_LOGIC;
    S20_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S20_AXI1_bvalid : out STD_LOGIC;
    S20_AXI1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S20_AXI1_rready : in STD_LOGIC;
    S20_AXI1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S20_AXI1_rvalid : out STD_LOGIC;
    S20_AXI1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S20_AXI1_wready : out STD_LOGIC;
    S20_AXI1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S20_AXI1_wvalid : in STD_LOGIC;
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
    TRX_tx_clk_clk_p : out STD_LOGIC
  );
  end component UFBmod_TRX;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal TRX_spi_io0_i : STD_LOGIC;
  signal TRX_spi_io0_o : STD_LOGIC;
  signal TRX_spi_io0_t : STD_LOGIC;
  signal TRX_spi_io1_i : STD_LOGIC;
  signal TRX_spi_io1_o : STD_LOGIC;
  signal TRX_spi_io1_t : STD_LOGIC;
  signal TRX_spi_sck_i : STD_LOGIC;
  signal TRX_spi_sck_o : STD_LOGIC;
  signal TRX_spi_sck_t : STD_LOGIC;
  signal TRX_spi_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_spi_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_spi_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_spi_ss_t : STD_LOGIC;
begin
TRX_spi_io0_iobuf: component IOBUF
     port map (
      I => TRX_spi_io0_o,
      IO => TRX_spi_io0_io,
      O => TRX_spi_io0_i,
      T => TRX_spi_io0_t
    );
TRX_spi_io1_iobuf: component IOBUF
     port map (
      I => TRX_spi_io1_o,
      IO => TRX_spi_io1_io,
      O => TRX_spi_io1_i,
      T => TRX_spi_io1_t
    );
TRX_spi_sck_iobuf: component IOBUF
     port map (
      I => TRX_spi_sck_o,
      IO => TRX_spi_sck_io,
      O => TRX_spi_sck_i,
      T => TRX_spi_sck_t
    );
TRX_spi_ss_iobuf_0: component IOBUF
     port map (
      I => TRX_spi_ss_o_0(0),
      IO => TRX_spi_ss_io(0),
      O => TRX_spi_ss_i_0(0),
      T => TRX_spi_ss_t
    );
UFBmod_TRX_i: component UFBmod_TRX
     port map (
      FFT_window_coef_rom_rx09(9 downto 0) => FFT_window_coef_rom_rx09(9 downto 0),
      RF09_framectr(29 downto 0) => RF09_framectr(29 downto 0),
      RF09_quarterfrm(1 downto 0) => RF09_quarterfrm(1 downto 0),
      S11_AXI_spi_araddr(6 downto 0) => S11_AXI_spi_araddr(6 downto 0),
      S11_AXI_spi_arready => S11_AXI_spi_arready,
      S11_AXI_spi_arvalid => S11_AXI_spi_arvalid,
      S11_AXI_spi_awaddr(6 downto 0) => S11_AXI_spi_awaddr(6 downto 0),
      S11_AXI_spi_awready => S11_AXI_spi_awready,
      S11_AXI_spi_awvalid => S11_AXI_spi_awvalid,
      S11_AXI_spi_bready => S11_AXI_spi_bready,
      S11_AXI_spi_bresp(1 downto 0) => S11_AXI_spi_bresp(1 downto 0),
      S11_AXI_spi_bvalid => S11_AXI_spi_bvalid,
      S11_AXI_spi_rdata(31 downto 0) => S11_AXI_spi_rdata(31 downto 0),
      S11_AXI_spi_rready => S11_AXI_spi_rready,
      S11_AXI_spi_rresp(1 downto 0) => S11_AXI_spi_rresp(1 downto 0),
      S11_AXI_spi_rvalid => S11_AXI_spi_rvalid,
      S11_AXI_spi_wdata(31 downto 0) => S11_AXI_spi_wdata(31 downto 0),
      S11_AXI_spi_wready => S11_AXI_spi_wready,
      S11_AXI_spi_wstrb(3 downto 0) => S11_AXI_spi_wstrb(3 downto 0),
      S11_AXI_spi_wvalid => S11_AXI_spi_wvalid,
      S12_AXI_gpio_araddr(8 downto 0) => S12_AXI_gpio_araddr(8 downto 0),
      S12_AXI_gpio_arready => S12_AXI_gpio_arready,
      S12_AXI_gpio_arvalid => S12_AXI_gpio_arvalid,
      S12_AXI_gpio_awaddr(8 downto 0) => S12_AXI_gpio_awaddr(8 downto 0),
      S12_AXI_gpio_awready => S12_AXI_gpio_awready,
      S12_AXI_gpio_awvalid => S12_AXI_gpio_awvalid,
      S12_AXI_gpio_bready => S12_AXI_gpio_bready,
      S12_AXI_gpio_bresp(1 downto 0) => S12_AXI_gpio_bresp(1 downto 0),
      S12_AXI_gpio_bvalid => S12_AXI_gpio_bvalid,
      S12_AXI_gpio_rdata(31 downto 0) => S12_AXI_gpio_rdata(31 downto 0),
      S12_AXI_gpio_rready => S12_AXI_gpio_rready,
      S12_AXI_gpio_rresp(1 downto 0) => S12_AXI_gpio_rresp(1 downto 0),
      S12_AXI_gpio_rvalid => S12_AXI_gpio_rvalid,
      S12_AXI_gpio_wdata(31 downto 0) => S12_AXI_gpio_wdata(31 downto 0),
      S12_AXI_gpio_wready => S12_AXI_gpio_wready,
      S12_AXI_gpio_wstrb(3 downto 0) => S12_AXI_gpio_wstrb(3 downto 0),
      S12_AXI_gpio_wvalid => S12_AXI_gpio_wvalid,
      S13_AXI_dds_araddr(8 downto 0) => S13_AXI_dds_araddr(8 downto 0),
      S13_AXI_dds_arready => S13_AXI_dds_arready,
      S13_AXI_dds_arvalid => S13_AXI_dds_arvalid,
      S13_AXI_dds_awaddr(8 downto 0) => S13_AXI_dds_awaddr(8 downto 0),
      S13_AXI_dds_awready => S13_AXI_dds_awready,
      S13_AXI_dds_awvalid => S13_AXI_dds_awvalid,
      S13_AXI_dds_bready => S13_AXI_dds_bready,
      S13_AXI_dds_bresp(1 downto 0) => S13_AXI_dds_bresp(1 downto 0),
      S13_AXI_dds_bvalid => S13_AXI_dds_bvalid,
      S13_AXI_dds_rdata(31 downto 0) => S13_AXI_dds_rdata(31 downto 0),
      S13_AXI_dds_rready => S13_AXI_dds_rready,
      S13_AXI_dds_rresp(1 downto 0) => S13_AXI_dds_rresp(1 downto 0),
      S13_AXI_dds_rvalid => S13_AXI_dds_rvalid,
      S13_AXI_dds_wdata(31 downto 0) => S13_AXI_dds_wdata(31 downto 0),
      S13_AXI_dds_wready => S13_AXI_dds_wready,
      S13_AXI_dds_wstrb(3 downto 0) => S13_AXI_dds_wstrb(3 downto 0),
      S13_AXI_dds_wvalid => S13_AXI_dds_wvalid,
      S19_AXI_araddr(8 downto 0) => S19_AXI_araddr(8 downto 0),
      S19_AXI_arready => S19_AXI_arready,
      S19_AXI_arvalid => S19_AXI_arvalid,
      S19_AXI_awaddr(8 downto 0) => S19_AXI_awaddr(8 downto 0),
      S19_AXI_awready => S19_AXI_awready,
      S19_AXI_awvalid => S19_AXI_awvalid,
      S19_AXI_bready => S19_AXI_bready,
      S19_AXI_bresp(1 downto 0) => S19_AXI_bresp(1 downto 0),
      S19_AXI_bvalid => S19_AXI_bvalid,
      S19_AXI_rdata(31 downto 0) => S19_AXI_rdata(31 downto 0),
      S19_AXI_rready => S19_AXI_rready,
      S19_AXI_rresp(1 downto 0) => S19_AXI_rresp(1 downto 0),
      S19_AXI_rvalid => S19_AXI_rvalid,
      S19_AXI_wdata(31 downto 0) => S19_AXI_wdata(31 downto 0),
      S19_AXI_wready => S19_AXI_wready,
      S19_AXI_wstrb(3 downto 0) => S19_AXI_wstrb(3 downto 0),
      S19_AXI_wvalid => S19_AXI_wvalid,
      S20_AXI1_araddr(8 downto 0) => S20_AXI1_araddr(8 downto 0),
      S20_AXI1_arready => S20_AXI1_arready,
      S20_AXI1_arvalid => S20_AXI1_arvalid,
      S20_AXI1_awaddr(8 downto 0) => S20_AXI1_awaddr(8 downto 0),
      S20_AXI1_awready => S20_AXI1_awready,
      S20_AXI1_awvalid => S20_AXI1_awvalid,
      S20_AXI1_bready => S20_AXI1_bready,
      S20_AXI1_bresp(1 downto 0) => S20_AXI1_bresp(1 downto 0),
      S20_AXI1_bvalid => S20_AXI1_bvalid,
      S20_AXI1_rdata(31 downto 0) => S20_AXI1_rdata(31 downto 0),
      S20_AXI1_rready => S20_AXI1_rready,
      S20_AXI1_rresp(1 downto 0) => S20_AXI1_rresp(1 downto 0),
      S20_AXI1_rvalid => S20_AXI1_rvalid,
      S20_AXI1_wdata(31 downto 0) => S20_AXI1_wdata(31 downto 0),
      S20_AXI1_wready => S20_AXI1_wready,
      S20_AXI1_wstrb(3 downto 0) => S20_AXI1_wstrb(3 downto 0),
      S20_AXI1_wvalid => S20_AXI1_wvalid,
      Status_LVDS_rx09_synced => Status_LVDS_rx09_synced,
      Status_LVDS_rx24_synced => Status_LVDS_rx24_synced,
      TRX_PLL_clk_25MHz_n(0) => TRX_PLL_clk_25MHz_n(0),
      TRX_PLL_clk_25MHz_p(0) => TRX_PLL_clk_25MHz_p(0),
      TRX_TX_RF09_PULLDATA_FIFO_empty => TRX_TX_RF09_PULLDATA_FIFO_empty,
      TRX_clk_26MHz => TRX_clk_26MHz,
      TRX_clk_trx_26MHz_vio => TRX_clk_trx_26MHz_vio,
      TRX_clk_trx_pll_25MHz_vio => TRX_clk_trx_pll_25MHz_vio,
      TRX_data_count(11 downto 0) => TRX_data_count(11 downto 0),
      TRX_decoder_rx09_squelch_lvl(15 downto 0) => TRX_decoder_rx09_squelch_lvl(15 downto 0),
      TRX_encoder_tx09_pull_FIFO_dump(0) => TRX_encoder_tx09_pull_FIFO_dump(0),
      TRX_encoder_tx09_pull_data_len(6 downto 0) => TRX_encoder_tx09_pull_data_len(6 downto 0),
      TRX_encoder_tx09_pull_do_start(0) => TRX_encoder_tx09_pull_do_start(0),
      TRX_fft09_data_tready_out => TRX_fft09_data_tready_out,
      TRX_ip2intc_irpt => TRX_ip2intc_irpt,
      TRX_post_fft_mem_a_rx09_EoT => TRX_post_fft_mem_a_rx09_EoT,
      TRX_post_fft_rx09_mem_a_addr(41 downto 0) => TRX_post_fft_rx09_mem_a_addr(41 downto 0),
      TRX_post_fft_rx09_mem_b_dout(15 downto 0) => TRX_post_fft_rx09_mem_b_dout(15 downto 0),
      TRX_pulldata_tx09_byteData(7 downto 0) => TRX_pulldata_tx09_byteData(7 downto 0),
      TRX_pushdata_rx09_irpt => TRX_pushdata_rx09_irpt,
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
      TRX_spi_io0_i => TRX_spi_io0_i,
      TRX_spi_io0_o => TRX_spi_io0_o,
      TRX_spi_io0_t => TRX_spi_io0_t,
      TRX_spi_io1_i => TRX_spi_io1_i,
      TRX_spi_io1_o => TRX_spi_io1_o,
      TRX_spi_io1_t => TRX_spi_io1_t,
      TRX_spi_sck_i => TRX_spi_sck_i,
      TRX_spi_sck_o => TRX_spi_sck_o,
      TRX_spi_sck_t => TRX_spi_sck_t,
      TRX_spi_ss_i(0) => TRX_spi_ss_i_0(0),
      TRX_spi_ss_o(0) => TRX_spi_ss_o_0(0),
      TRX_spi_ss_t => TRX_spi_ss_t,
      TRX_tx_DDS0_gpio_ampt(15 downto 0) => TRX_tx_DDS0_gpio_ampt(15 downto 0),
      TRX_tx_DDS0_gpio_inc(31 downto 0) => TRX_tx_DDS0_gpio_inc(31 downto 0),
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
      dds_tx09_ptt_in => dds_tx09_ptt_in,
      fft09_config_tdata_in(7 downto 0) => fft09_config_tdata_in(7 downto 0),
      fft09_config_tvalid_in => fft09_config_tvalid_in,
      fft09_data_tlast_in => fft09_data_tlast_in,
      fft09_data_tvalid_in => fft09_data_tvalid_in,
      microblaze_0_Clk_100MHz => microblaze_0_Clk_100MHz,
      mig_7series_0_mmcm_locked => mig_7series_0_mmcm_locked,
      mig_7series_0_ui_addn_clk_0_200MHz => mig_7series_0_ui_addn_clk_0_200MHz,
      mig_7series_0_ui_clk_sync_rst => mig_7series_0_ui_clk_sync_rst,
      post_fft_rx09_mem_b_addr_in(9 downto 0) => post_fft_rx09_mem_b_addr_in(9 downto 0),
      premem_rx09_addra_in(10 downto 0) => premem_rx09_addra_in(10 downto 0),
      premem_rx09_addrb_in(10 downto 0) => premem_rx09_addrb_in(10 downto 0),
      premem_rx09_dina_in(25 downto 0) => premem_rx09_dina_in(25 downto 0),
      premem_rx09_wea_in => premem_rx09_wea_in,
      pulldata_dds_inc(25 downto 0) => pulldata_dds_inc(25 downto 0),
      pulldata_tx09_en => pulldata_tx09_en,
      rst_mig_7series_0_100M_peripheral_aresetn => rst_mig_7series_0_100M_peripheral_aresetn,
      rst_mig_7series_0_100M_peripheral_reset => rst_mig_7series_0_100M_peripheral_reset
    );
end STRUCTURE;
