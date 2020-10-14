-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
-- Date        : Wed Oct 14 19:39:49 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/UFBmod_stub.vhdl
-- Design      : UFBmod
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UFBmod is
  Port ( 
    clk_100MHz : in STD_LOGIC;
    dds_tx09_ptt : in STD_LOGIC;
    decoder_rx09_ch00_active : out STD_LOGIC;
    decoder_rx09_ch00_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_sql_open : out STD_LOGIC;
    decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    post_fft_rx09_mem_a_EoT : in STD_LOGIC;
    post_fft_rx09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    post_fft_rx09_mem_b_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    post_fft_rx09_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pushdata_rx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pushdata_rx09_en : out STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );

end UFBmod;

architecture stub of UFBmod is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100MHz,dds_tx09_ptt,decoder_rx09_ch00_active,decoder_rx09_ch00_center_pos[7:0],decoder_rx09_ch00_noise[18:0],decoder_rx09_ch00_sql_open,decoder_rx09_ch00_squelch_lvl[18:0],decoder_rx09_ch00_strength[18:0],post_fft_rx09_mem_a_EoT,post_fft_rx09_mem_a_addr[41:0],post_fft_rx09_mem_b_addr[9:0],post_fft_rx09_mem_b_dout[15:0],pushdata_rx09_byteData[7:0],pushdata_rx09_en,reset_100MHz";
begin
end;
