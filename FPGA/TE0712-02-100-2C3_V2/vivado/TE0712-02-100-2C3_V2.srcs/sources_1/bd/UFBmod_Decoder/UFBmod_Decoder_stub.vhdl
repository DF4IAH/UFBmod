-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 11 17:04:15 2021
-- Host        : DESKTOP-I3NV8HO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/UFBmod_Decoder_stub.vhdl
-- Design      : UFBmod_Decoder
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UFBmod_Decoder is
  Port ( 
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

end UFBmod_Decoder;

architecture stub of UFBmod_Decoder is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "TRX_channel_rx_rf09_id[2:0],TRX_dds_tx_rf09_ptt,TRX_decoder_rx_rf09_chXX_SoM_frameCtr[31:0],TRX_decoder_rx_rf09_chXX_active,TRX_decoder_rx_rf09_chXX_center_pos[7:0],TRX_decoder_rx_rf09_chXX_noise[18:0],TRX_decoder_rx_rf09_chXX_sql_open,TRX_decoder_rx_rf09_chXX_squelch_lvl[15:0],TRX_decoder_rx_rf09_chXX_strength[18:0],TRX_post_fft_rx_rf09_chXX_mem_b_addr[4:0],TRX_post_fft_rx_rf09_chXX_mem_b_dout[15:0],TRX_post_fft_rx_rf09_mem_a_EoT,TRX_post_fft_rx_rf09_mem_a_addr[41:0],TRX_pushdata_rx_rf09_chXX_din[7:0],TRX_pushdata_rx_rf09_chXX_grant,TRX_pushdata_rx_rf09_chXX_req,TRX_pushdata_rx_rf09_chXX_wr_en,clk_100MHz,reset_100MHz";
begin
end;