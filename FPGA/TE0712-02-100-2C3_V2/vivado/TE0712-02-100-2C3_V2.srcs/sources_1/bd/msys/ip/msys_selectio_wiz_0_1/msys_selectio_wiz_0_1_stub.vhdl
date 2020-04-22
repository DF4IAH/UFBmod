-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Apr 22 23:43:50 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_selectio_wiz_0_1/msys_selectio_wiz_0_1_stub.vhdl
-- Design      : msys_selectio_wiz_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys_selectio_wiz_0_1 is
  Port ( 
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_from_device : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_to_pins_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out_to_pins_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_to_pins_p : out STD_LOGIC;
    clk_to_pins_n : out STD_LOGIC;
    delay_locked : out STD_LOGIC;
    ref_clock : in STD_LOGIC;
    bitslip : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );

end msys_selectio_wiz_0_1;

architecture stub of msys_selectio_wiz_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in_from_pins_p[1:0],data_in_from_pins_n[1:0],data_in_to_device[15:0],data_out_from_device[15:0],data_out_to_pins_p[1:0],data_out_to_pins_n[1:0],clk_to_pins_p,clk_to_pins_n,delay_locked,ref_clock,bitslip[1:0],clk_in_p,clk_in_n,clk_div_out,clk_reset,io_reset";
begin
end;
