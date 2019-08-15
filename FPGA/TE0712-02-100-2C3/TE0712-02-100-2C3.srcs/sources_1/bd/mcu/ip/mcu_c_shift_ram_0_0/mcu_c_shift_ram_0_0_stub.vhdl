-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Thu Aug 15 19:11:14 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_shift_ram_0_0/mcu_c_shift_ram_0_0_stub.vhdl
-- Design      : mcu_c_shift_ram_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcu_c_shift_ram_0_0 is
  Port ( 
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SSET : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end mcu_c_shift_ram_0_0;

architecture stub of mcu_c_shift_ram_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "D[0:0],CLK,SSET,Q[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_shift_ram_v12_0_13,Vivado 2019.1.2";
begin
end;
