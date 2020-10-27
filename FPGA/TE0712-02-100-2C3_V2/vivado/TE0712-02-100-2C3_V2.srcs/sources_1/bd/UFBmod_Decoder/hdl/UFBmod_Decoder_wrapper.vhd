--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Tue Oct 27 21:03:00 2020
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
    clk_100MHz : in STD_LOGIC;
    dds_tx09_ptt : in STD_LOGIC;
    decoder_rx09_chXX_FIFO_accepted : in STD_LOGIC;
    decoder_rx09_chXX_FIFO_handshake : out STD_LOGIC;
    decoder_rx09_chXX_active : out STD_LOGIC;
    decoder_rx09_chXX_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_msg_mem_b_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_msg_mem_b_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_chXX_sql_open : out STD_LOGIC;
    decoder_rx09_chXX_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_rx09_chXX_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    post_fft_rx09_mem_a_EoT : in STD_LOGIC;
    post_fft_rx09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    post_fft_rx09_mem_b_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    post_fft_rx09_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_100MHz : in STD_LOGIC
  );
end UFBmod_Decoder_wrapper;

architecture STRUCTURE of UFBmod_Decoder_wrapper is
  component UFBmod_Decoder is
  port (
    clk_100MHz : in STD_LOGIC;
    dds_tx09_ptt : in STD_LOGIC;
    decoder_rx09_chXX_active : out STD_LOGIC;
    decoder_rx09_chXX_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_chXX_sql_open : out STD_LOGIC;
    decoder_rx09_chXX_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    post_fft_rx09_mem_a_EoT : in STD_LOGIC;
    post_fft_rx09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    post_fft_rx09_mem_b_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    post_fft_rx09_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_100MHz : in STD_LOGIC;
    decoder_rx09_chXX_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_chXX_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_msg_mem_b_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_msg_mem_b_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_FIFO_handshake : out STD_LOGIC;
    decoder_rx09_chXX_FIFO_accepted : in STD_LOGIC
  );
  end component UFBmod_Decoder;
begin
UFBmod_Decoder_i: component UFBmod_Decoder
     port map (
      clk_100MHz => clk_100MHz,
      dds_tx09_ptt => dds_tx09_ptt,
      decoder_rx09_chXX_FIFO_accepted => decoder_rx09_chXX_FIFO_accepted,
      decoder_rx09_chXX_FIFO_handshake => decoder_rx09_chXX_FIFO_handshake,
      decoder_rx09_chXX_active => decoder_rx09_chXX_active,
      decoder_rx09_chXX_center_pos(7 downto 0) => decoder_rx09_chXX_center_pos(7 downto 0),
      decoder_rx09_chXX_msg_mem_b_addr(7 downto 0) => decoder_rx09_chXX_msg_mem_b_addr(7 downto 0),
      decoder_rx09_chXX_msg_mem_b_dout(7 downto 0) => decoder_rx09_chXX_msg_mem_b_dout(7 downto 0),
      decoder_rx09_chXX_noise(18 downto 0) => decoder_rx09_chXX_noise(18 downto 0),
      decoder_rx09_chXX_sql_open => decoder_rx09_chXX_sql_open,
      decoder_rx09_chXX_squelch_lvl(15 downto 0) => decoder_rx09_chXX_squelch_lvl(15 downto 0),
      decoder_rx09_chXX_strength(18 downto 0) => decoder_rx09_chXX_strength(18 downto 0),
      post_fft_rx09_mem_a_EoT => post_fft_rx09_mem_a_EoT,
      post_fft_rx09_mem_a_addr(41 downto 0) => post_fft_rx09_mem_a_addr(41 downto 0),
      post_fft_rx09_mem_b_addr(9 downto 0) => post_fft_rx09_mem_b_addr(9 downto 0),
      post_fft_rx09_mem_b_dout(15 downto 0) => post_fft_rx09_mem_b_dout(15 downto 0),
      reset_100MHz => reset_100MHz
    );
end STRUCTURE;
