-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Sun Aug 25 22:05:46 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_stub.vhdl
-- Design      : clk_wiz_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_1 is
  Port ( 
    clk_in2_vctcxo : in STD_LOGIC;
    clk_in_sel : in STD_LOGIC;
    clk_177mhz778 : out STD_LOGIC;
    clk_050mhz : out STD_LOGIC;
    clk_025mhz : out STD_LOGIC;
    clk_012mhz : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_si5338 : in STD_LOGIC
  );

end clk_wiz_1;

architecture stub of clk_wiz_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in2_vctcxo,clk_in_sel,clk_177mhz778,clk_050mhz,clk_025mhz,clk_012mhz,reset,locked,clk_in1_si5338";
begin
end;
