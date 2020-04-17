-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Apr 15 16:51:14 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_labtools_fmeter_0_0/msys_labtools_fmeter_0_0_stub.vhdl
-- Design      : msys_labtools_fmeter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys_labtools_fmeter_0_0 is
  Port ( 
    refclk : in STD_LOGIC;
    fin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    F0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    update : out STD_LOGIC
  );

end msys_labtools_fmeter_0_0;

architecture stub of msys_labtools_fmeter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "refclk,fin[3:0],F0[31:0],F1[31:0],F2[31:0],F3[31:0],update";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "labtools_fmeter,Vivado 2019.2.1";
begin
end;