-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Jul 30 19:31:35 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mcu_clk_wiz_0_0 -prefix
--               mcu_clk_wiz_0_0_ mcu_clk_wiz_0_0_stub.vhdl
-- Design      : mcu_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcu_clk_wiz_0_0 is
  Port ( 
    clk_32_lvds_in : out STD_LOGIC;
    clk_32_lvds_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end mcu_clk_wiz_0_0;

architecture stub of mcu_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_32_lvds_in,clk_32_lvds_out,reset,clk_in1_p,clk_in1_n";
begin
end;
