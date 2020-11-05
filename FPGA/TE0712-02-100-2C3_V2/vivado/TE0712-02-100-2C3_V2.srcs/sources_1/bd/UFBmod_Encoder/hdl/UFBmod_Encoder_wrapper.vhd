--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Wed Nov  4 19:27:47 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target UFBmod_Encoder_wrapper.bd
--Design      : UFBmod_Encoder_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_Encoder_wrapper is
  port (
    clk_100MHz : in STD_LOGIC;
    dds_tx09_inc : out STD_LOGIC_VECTOR ( 25 downto 0 );
    dds_tx09_ptt : out STD_LOGIC;
    decoder_rx09_chAll_active : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chAll_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 );
    encoder_pull_FIFO_dump : in STD_LOGIC;
    encoder_pull_data_len : in STD_LOGIC_VECTOR ( 6 downto 0 );
    encoder_pull_do_start : in STD_LOGIC;
    pulldata_tx09_byteData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pulldata_tx09_en : out STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
end UFBmod_Encoder_wrapper;

architecture STRUCTURE of UFBmod_Encoder_wrapper is
  component UFBmod_Encoder is
  port (
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC;
    encoder_pull_FIFO_dump : in STD_LOGIC;
    encoder_pull_do_start : in STD_LOGIC;
    encoder_pull_data_len : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pulldata_tx09_byteData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pulldata_tx09_en : out STD_LOGIC;
    dds_tx09_ptt : out STD_LOGIC;
    dds_tx09_inc : out STD_LOGIC_VECTOR ( 25 downto 0 );
    decoder_rx09_chAll_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chAll_active : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_Encoder;
begin
UFBmod_Encoder_i: component UFBmod_Encoder
     port map (
      clk_100MHz => clk_100MHz,
      dds_tx09_inc(25 downto 0) => dds_tx09_inc(25 downto 0),
      dds_tx09_ptt => dds_tx09_ptt,
      decoder_rx09_chAll_active(7 downto 0) => decoder_rx09_chAll_active(7 downto 0),
      decoder_rx09_chAll_sql_open(7 downto 0) => decoder_rx09_chAll_sql_open(7 downto 0),
      encoder_pull_FIFO_dump => encoder_pull_FIFO_dump,
      encoder_pull_data_len(6 downto 0) => encoder_pull_data_len(6 downto 0),
      encoder_pull_do_start => encoder_pull_do_start,
      pulldata_tx09_byteData(7 downto 0) => pulldata_tx09_byteData(7 downto 0),
      pulldata_tx09_en => pulldata_tx09_en,
      reset_100MHz => reset_100MHz
    );
end STRUCTURE;
