-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Sat Apr 18 16:52:24 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_selectio_wiz_0_0/msys_selectio_wiz_0_0_stub.vhdl
-- Design      : msys_selectio_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys_selectio_wiz_0_0 is
  Port ( 
    data_in_from_pins : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );

end msys_selectio_wiz_0_0;

architecture stub of msys_selectio_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in_from_pins[2:0],data_in_to_device[2:0],clk_in,io_reset";
begin
end;
