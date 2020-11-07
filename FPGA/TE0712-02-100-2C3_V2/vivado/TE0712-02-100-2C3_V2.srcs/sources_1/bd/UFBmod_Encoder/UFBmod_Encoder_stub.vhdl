-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
-- Date        : Fri Nov  6 23:04:18 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Encoder/UFBmod_Encoder_stub.vhdl
-- Design      : UFBmod_Encoder
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UFBmod_Encoder is
  Port ( 
    TRX_dds_tx_rf09_inc : out STD_LOGIC_VECTOR ( 25 downto 0 );
    TRX_dds_tx_rf09_ptt : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    decoder_rx09_chAll_active : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chAll_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 );
    encoder_pull_FIFO_dump : in STD_LOGIC;
    encoder_pull_data_len : in STD_LOGIC_VECTOR ( 6 downto 0 );
    encoder_pull_do_start : in STD_LOGIC;
    pulldata_tx09_byteData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pulldata_tx09_en : out STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );

end UFBmod_Encoder;

architecture stub of UFBmod_Encoder is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "TRX_dds_tx_rf09_inc[25:0],TRX_dds_tx_rf09_ptt,clk_100MHz,decoder_rx09_chAll_active[7:0],decoder_rx09_chAll_sql_open[7:0],encoder_pull_FIFO_dump,encoder_pull_data_len[6:0],encoder_pull_do_start,pulldata_tx09_byteData[7:0],pulldata_tx09_en,reset_100MHz";
begin
end;
