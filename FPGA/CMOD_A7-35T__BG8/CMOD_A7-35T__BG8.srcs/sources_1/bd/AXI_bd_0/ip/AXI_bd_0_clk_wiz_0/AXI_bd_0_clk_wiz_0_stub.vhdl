-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Mar 24 12:51:05 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               Z:/nfs_ds_nfs/git/UFBmod/FPGA/CMOD_A7-35T__BG8/CMOD_A7-35T__BG8.srcs/sources_1/bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_0/AXI_bd_0_clk_wiz_0_stub.vhdl
-- Design      : AXI_bd_0_clk_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AXI_bd_0_clk_wiz_0 is
  Port ( 
    clk_100mhz : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end AXI_bd_0_clk_wiz_0;

architecture stub of AXI_bd_0_clk_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100mhz,reset,clk_in1";
begin
end;
