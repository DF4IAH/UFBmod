--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Tue Oct 20 01:12:10 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target UFBmod_wrapper.bd
--Design      : UFBmod_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_wrapper is
  port (
    clk_100MHz : in STD_LOGIC;
    dds_tx09_ptt : in STD_LOGIC;
    decoder_rx09_ch00_active : out STD_LOGIC;
    decoder_rx09_ch00_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_sql_open : out STD_LOGIC;
    decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_rx09_ch00_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    post_fft_rx09_mem_a_EoT : in STD_LOGIC;
    post_fft_rx09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    post_fft_rx09_mem_b_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    post_fft_rx09_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pushdata_rx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pushdata_rx09_en : out STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
end UFBmod_wrapper;

architecture STRUCTURE of UFBmod_wrapper is
  component UFBmod is
  port (
    reset_100MHz : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    post_fft_rx09_mem_a_EoT : in STD_LOGIC;
    post_fft_rx09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    post_fft_rx09_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    post_fft_rx09_mem_b_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pushdata_rx09_en : out STD_LOGIC;
    pushdata_rx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dds_tx09_ptt : in STD_LOGIC;
    decoder_rx09_ch00_sql_open : out STD_LOGIC;
    decoder_rx09_ch00_active : out STD_LOGIC;
    decoder_rx09_ch00_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_strength : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  end component UFBmod;
begin
UFBmod_i: component UFBmod
     port map (
      clk_100MHz => clk_100MHz,
      dds_tx09_ptt => dds_tx09_ptt,
      decoder_rx09_ch00_active => decoder_rx09_ch00_active,
      decoder_rx09_ch00_center_pos(7 downto 0) => decoder_rx09_ch00_center_pos(7 downto 0),
      decoder_rx09_ch00_noise(18 downto 0) => decoder_rx09_ch00_noise(18 downto 0),
      decoder_rx09_ch00_sql_open => decoder_rx09_ch00_sql_open,
      decoder_rx09_ch00_squelch_lvl(15 downto 0) => decoder_rx09_ch00_squelch_lvl(15 downto 0),
      decoder_rx09_ch00_strength(18 downto 0) => decoder_rx09_ch00_strength(18 downto 0),
      post_fft_rx09_mem_a_EoT => post_fft_rx09_mem_a_EoT,
      post_fft_rx09_mem_a_addr(41 downto 0) => post_fft_rx09_mem_a_addr(41 downto 0),
      post_fft_rx09_mem_b_addr(9 downto 0) => post_fft_rx09_mem_b_addr(9 downto 0),
      post_fft_rx09_mem_b_dout(15 downto 0) => post_fft_rx09_mem_b_dout(15 downto 0),
      pushdata_rx09_byteData(7 downto 0) => pushdata_rx09_byteData(7 downto 0),
      pushdata_rx09_en => pushdata_rx09_en,
      reset_100MHz => reset_100MHz
    );
end STRUCTURE;
