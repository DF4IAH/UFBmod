-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Tue Apr 21 20:17:28 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top msys_labtools_fmeter_0_0 -prefix
--               msys_labtools_fmeter_0_0_ msys_labtools_fmeter_0_0_stub.vhdl
-- Design      : msys_labtools_fmeter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys_labtools_fmeter_0_0 is
  Port ( 
    refclk : in STD_LOGIC;
    fin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    F0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    F4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    update : out STD_LOGIC
  );

end msys_labtools_fmeter_0_0;

architecture stub of msys_labtools_fmeter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "refclk,fin[4:0],F0[31:0],F1[31:0],F2[31:0],F3[31:0],F4[31:0],update";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "labtools_fmeter,Vivado 2019.2.1";
begin
end;
