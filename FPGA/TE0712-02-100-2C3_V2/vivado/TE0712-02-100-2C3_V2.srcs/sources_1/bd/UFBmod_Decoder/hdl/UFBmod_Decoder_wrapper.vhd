--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Thu Nov  5 20:09:46 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target UFBmod_Decoder_wrapper.bd
--Design      : UFBmod_Decoder_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_Decoder_wrapper is
  port (
    TRX_channel_rx_rf09_id : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_dds_tx_rf09_ptt : in STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_SoM_frameCtr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_decoder_rx_rf09_chXX_active : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_decoder_rx_rf09_chXX_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_decoder_rx_rf09_chXX_sql_open : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_decoder_rx_rf09_chXX_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_post_fft_rx_rf09_chXX_mem_b_addr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_post_fft_rx_rf09_chXX_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_post_fft_rx_rf09_mem_a_EoT : in STD_LOGIC;
    TRX_post_fft_rx_rf09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_pushdata_rx_rf09_chXX_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_pushdata_rx_rf09_chXX_grant : in STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_req : out STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_wr_en : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
end UFBmod_Decoder_wrapper;

architecture STRUCTURE of UFBmod_Decoder_wrapper is
  component UFBmod_Decoder is
  port (
    clk_100MHz : in STD_LOGIC;
    TRX_dds_tx_rf09_ptt : in STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_active : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_decoder_rx_rf09_chXX_sql_open : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_post_fft_rx_rf09_mem_a_EoT : in STD_LOGIC;
    TRX_post_fft_rx_rf09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_post_fft_rx_rf09_chXX_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_100MHz : in STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_decoder_rx_rf09_chXX_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_pushdata_rx_rf09_chXX_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_pushdata_rx_rf09_chXX_wr_en : out STD_LOGIC;
    TRX_post_fft_rx_rf09_chXX_mem_b_addr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_pushdata_rx_rf09_chXX_req : out STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_grant : in STD_LOGIC;
    TRX_channel_rx_rf09_id : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_decoder_rx_rf09_chXX_SoM_frameCtr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_Decoder;
begin
UFBmod_Decoder_i: component UFBmod_Decoder
     port map (
      TRX_channel_rx_rf09_id(2 downto 0) => TRX_channel_rx_rf09_id(2 downto 0),
      TRX_dds_tx_rf09_ptt => TRX_dds_tx_rf09_ptt,
      TRX_decoder_rx_rf09_chXX_SoM_frameCtr(31 downto 0) => TRX_decoder_rx_rf09_chXX_SoM_frameCtr(31 downto 0),
      TRX_decoder_rx_rf09_chXX_active => TRX_decoder_rx_rf09_chXX_active,
      TRX_decoder_rx_rf09_chXX_center_pos(7 downto 0) => TRX_decoder_rx_rf09_chXX_center_pos(7 downto 0),
      TRX_decoder_rx_rf09_chXX_noise(18 downto 0) => TRX_decoder_rx_rf09_chXX_noise(18 downto 0),
      TRX_decoder_rx_rf09_chXX_sql_open => TRX_decoder_rx_rf09_chXX_sql_open,
      TRX_decoder_rx_rf09_chXX_squelch_lvl(15 downto 0) => TRX_decoder_rx_rf09_chXX_squelch_lvl(15 downto 0),
      TRX_decoder_rx_rf09_chXX_strength(18 downto 0) => TRX_decoder_rx_rf09_chXX_strength(18 downto 0),
      TRX_post_fft_rx_rf09_chXX_mem_b_addr(4 downto 0) => TRX_post_fft_rx_rf09_chXX_mem_b_addr(4 downto 0),
      TRX_post_fft_rx_rf09_chXX_mem_b_dout(15 downto 0) => TRX_post_fft_rx_rf09_chXX_mem_b_dout(15 downto 0),
      TRX_post_fft_rx_rf09_mem_a_EoT => TRX_post_fft_rx_rf09_mem_a_EoT,
      TRX_post_fft_rx_rf09_mem_a_addr(41 downto 0) => TRX_post_fft_rx_rf09_mem_a_addr(41 downto 0),
      TRX_pushdata_rx_rf09_chXX_din(7 downto 0) => TRX_pushdata_rx_rf09_chXX_din(7 downto 0),
      TRX_pushdata_rx_rf09_chXX_grant => TRX_pushdata_rx_rf09_chXX_grant,
      TRX_pushdata_rx_rf09_chXX_req => TRX_pushdata_rx_rf09_chXX_req,
      TRX_pushdata_rx_rf09_chXX_wr_en => TRX_pushdata_rx_rf09_chXX_wr_en,
      clk_100MHz => clk_100MHz,
      reset_100MHz => reset_100MHz
    );
end STRUCTURE;
