-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Tue Apr 28 23:53:43 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top msys_TRX_rx_bitslip_c_shift_ram_0_0 -prefix
--               msys_TRX_rx_bitslip_c_shift_ram_0_0_ msys_TRX_rx_bitslip_c_shift_ram_0_0_stub.vhdl
-- Design      : msys_TRX_rx_bitslip_c_shift_ram_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys_TRX_rx_bitslip_c_shift_ram_0_0 is
  Port ( 
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end msys_TRX_rx_bitslip_c_shift_ram_0_0;

architecture stub of msys_TRX_rx_bitslip_c_shift_ram_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "D[1:0],CLK,Q[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_shift_ram_v12_0_14,Vivado 2019.2.1";
begin
end;
