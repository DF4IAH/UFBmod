-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Apr 15 16:48:00 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_SC0712_0_0/msys_SC0712_0_0_stub.vhdl
-- Design      : msys_SC0712_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys_SC0712_0_0 is
  Port ( 
    mcs_clk_out : out STD_LOGIC;
    mcs_clk_in : in STD_LOGIC;
    reset_out : out STD_LOGIC;
    GPIO1_O : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO1_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ext_sda : inout STD_LOGIC;
    ext_scl_o : out STD_LOGIC;
    mon_GPIO1_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mon_GPIO1_I : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sda_i : out STD_LOGIC;
    sda_o : in STD_LOGIC;
    sda_t : in STD_LOGIC;
    scl_i : out STD_LOGIC;
    scl_o : in STD_LOGIC;
    scl_t : in STD_LOGIC
  );

end msys_SC0712_0_0;

architecture stub of msys_SC0712_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mcs_clk_out,mcs_clk_in,reset_out,GPIO1_O[31:0],GPIO1_I[31:0],ext_sda,ext_scl_o,mon_GPIO1_O[31:0],mon_GPIO1_I[31:0],sda_i,sda_o,sda_t,scl_i,scl_o,scl_t";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SC0712,Vivado 2019.2.1";
begin
end;
