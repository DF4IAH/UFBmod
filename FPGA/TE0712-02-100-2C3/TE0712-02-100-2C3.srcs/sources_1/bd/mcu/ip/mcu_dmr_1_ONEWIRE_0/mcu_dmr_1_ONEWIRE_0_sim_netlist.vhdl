-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Apr 12 12:23:58 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_dmr_1_ONEWIRE_0/mcu_dmr_1_ONEWIRE_0_sim_netlist.vhdl
-- Design      : mcu_dmr_1_ONEWIRE_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_dmr_1_ONEWIRE_0_dpram is
  port (
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    we : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_dmr_1_ONEWIRE_0_dpram : entity is "dpram";
end mcu_dmr_1_ONEWIRE_0_dpram;

architecture STRUCTURE of mcu_dmr_1_ONEWIRE_0_dpram is
  signal a_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal d_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dpra_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal qdpo_input : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal qdpo_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qdpo_int : signal is "true";
  signal qspo_input : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal qspo_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of qspo_int : signal is "true";
  signal we_reg : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \qdpo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qdpo_int_reg[0]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[10]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[11]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[12]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[13]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[14]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[15]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[16]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[17]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[18]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[19]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[1]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[20]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[21]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[22]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[23]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[24]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[25]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[26]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[27]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[28]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[29]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[2]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[30]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[31]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[3]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[4]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[5]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[6]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[7]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[8]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[9]\ : label is "no";
  attribute KEEP of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
  attribute KEEP of \qspo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[10]\ : label is "no";
  attribute KEEP of \qspo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[11]\ : label is "no";
  attribute KEEP of \qspo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[12]\ : label is "no";
  attribute KEEP of \qspo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[13]\ : label is "no";
  attribute KEEP of \qspo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[14]\ : label is "no";
  attribute KEEP of \qspo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[15]\ : label is "no";
  attribute KEEP of \qspo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[16]\ : label is "no";
  attribute KEEP of \qspo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[17]\ : label is "no";
  attribute KEEP of \qspo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[18]\ : label is "no";
  attribute KEEP of \qspo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[19]\ : label is "no";
  attribute KEEP of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute KEEP of \qspo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[20]\ : label is "no";
  attribute KEEP of \qspo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[21]\ : label is "no";
  attribute KEEP of \qspo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[22]\ : label is "no";
  attribute KEEP of \qspo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[23]\ : label is "no";
  attribute KEEP of \qspo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[24]\ : label is "no";
  attribute KEEP of \qspo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[25]\ : label is "no";
  attribute KEEP of \qspo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[26]\ : label is "no";
  attribute KEEP of \qspo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[27]\ : label is "no";
  attribute KEEP of \qspo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[28]\ : label is "no";
  attribute KEEP of \qspo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[29]\ : label is "no";
  attribute KEEP of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute KEEP of \qspo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[30]\ : label is "no";
  attribute KEEP of \qspo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[31]\ : label is "no";
  attribute KEEP of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute KEEP of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute KEEP of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute KEEP of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute KEEP of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
  attribute KEEP of \qspo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[8]\ : label is "no";
  attribute KEEP of \qspo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[9]\ : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_0_0 : label is "RAM16X1D";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_15_0_0 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_15_0_0 : label is 0;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_10_10 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_10_10 : label is 15;
  attribute ram_offset of ram_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_0_15_10_10 : label is 10;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_11_11 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_11_11 : label is 15;
  attribute ram_offset of ram_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_0_15_11_11 : label is 11;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_12_12 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_12_12 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_12_12 : label is 15;
  attribute ram_offset of ram_reg_0_15_12_12 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_0_15_12_12 : label is 12;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_13_13 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_13_13 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_13_13 : label is 15;
  attribute ram_offset of ram_reg_0_15_13_13 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_0_15_13_13 : label is 13;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_14_14 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_14_14 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_14_14 : label is 15;
  attribute ram_offset of ram_reg_0_15_14_14 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_0_15_14_14 : label is 14;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_15_15 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_15_15 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_15_15 : label is 15;
  attribute ram_offset of ram_reg_0_15_15_15 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_0_15_15_15 : label is 15;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_16_16 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_16_16 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_16_16 : label is 15;
  attribute ram_offset of ram_reg_0_15_16_16 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_16_16 : label is 16;
  attribute ram_slice_end of ram_reg_0_15_16_16 : label is 16;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_17_17 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_17_17 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_17_17 : label is 15;
  attribute ram_offset of ram_reg_0_15_17_17 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_17_17 : label is 17;
  attribute ram_slice_end of ram_reg_0_15_17_17 : label is 17;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_18_18 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_18_18 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_18_18 : label is 15;
  attribute ram_offset of ram_reg_0_15_18_18 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_18_18 : label is 18;
  attribute ram_slice_end of ram_reg_0_15_18_18 : label is 18;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_19_19 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_19_19 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_19_19 : label is 15;
  attribute ram_offset of ram_reg_0_15_19_19 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_19_19 : label is 19;
  attribute ram_slice_end of ram_reg_0_15_19_19 : label is 19;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_1_1 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_1_1 : label is 15;
  attribute ram_offset of ram_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_0_15_1_1 : label is 1;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_20_20 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_20_20 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_20_20 : label is 15;
  attribute ram_offset of ram_reg_0_15_20_20 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_20_20 : label is 20;
  attribute ram_slice_end of ram_reg_0_15_20_20 : label is 20;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_21_21 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_21_21 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_21_21 : label is 15;
  attribute ram_offset of ram_reg_0_15_21_21 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_21_21 : label is 21;
  attribute ram_slice_end of ram_reg_0_15_21_21 : label is 21;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_22_22 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_22_22 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_22_22 : label is 15;
  attribute ram_offset of ram_reg_0_15_22_22 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_22_22 : label is 22;
  attribute ram_slice_end of ram_reg_0_15_22_22 : label is 22;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_23_23 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_23_23 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_23_23 : label is 15;
  attribute ram_offset of ram_reg_0_15_23_23 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_23_23 : label is 23;
  attribute ram_slice_end of ram_reg_0_15_23_23 : label is 23;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_24_24 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_24_24 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_24_24 : label is 15;
  attribute ram_offset of ram_reg_0_15_24_24 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_24_24 : label is 24;
  attribute ram_slice_end of ram_reg_0_15_24_24 : label is 24;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_25_25 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_25_25 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_25_25 : label is 15;
  attribute ram_offset of ram_reg_0_15_25_25 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_25_25 : label is 25;
  attribute ram_slice_end of ram_reg_0_15_25_25 : label is 25;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_26_26 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_26_26 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_26_26 : label is 15;
  attribute ram_offset of ram_reg_0_15_26_26 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_26_26 : label is 26;
  attribute ram_slice_end of ram_reg_0_15_26_26 : label is 26;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_27_27 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_27_27 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_27_27 : label is 15;
  attribute ram_offset of ram_reg_0_15_27_27 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_27_27 : label is 27;
  attribute ram_slice_end of ram_reg_0_15_27_27 : label is 27;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_28_28 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_28_28 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_28_28 : label is 15;
  attribute ram_offset of ram_reg_0_15_28_28 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_28_28 : label is 28;
  attribute ram_slice_end of ram_reg_0_15_28_28 : label is 28;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_29_29 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_29_29 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_29_29 : label is 15;
  attribute ram_offset of ram_reg_0_15_29_29 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_29_29 : label is 29;
  attribute ram_slice_end of ram_reg_0_15_29_29 : label is 29;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_2_2 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_2_2 : label is 15;
  attribute ram_offset of ram_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_0_15_2_2 : label is 2;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_30_30 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_30_30 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_30_30 : label is 15;
  attribute ram_offset of ram_reg_0_15_30_30 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_30_30 : label is 30;
  attribute ram_slice_end of ram_reg_0_15_30_30 : label is 30;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_31_31 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_31_31 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_31_31 : label is 15;
  attribute ram_offset of ram_reg_0_15_31_31 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_31_31 : label is 31;
  attribute ram_slice_end of ram_reg_0_15_31_31 : label is 31;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_3_3 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_3_3 : label is 15;
  attribute ram_offset of ram_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_0_15_3_3 : label is 3;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_4_4 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_4_4 : label is 15;
  attribute ram_offset of ram_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_0_15_4_4 : label is 4;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_5_5 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_5_5 : label is 15;
  attribute ram_offset of ram_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_0_15_5_5 : label is 5;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_6_6 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_6_6 : label is 15;
  attribute ram_offset of ram_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_0_15_6_6 : label is 6;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_7_7 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_7_7 : label is 15;
  attribute ram_offset of ram_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_0_15_7_7 : label is 7;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_8_8 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_8_8 : label is 15;
  attribute ram_offset of ram_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_0_15_8_8 : label is 8;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_9_9 : label is "RAM16X1D";
  attribute ram_addr_begin of ram_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of ram_reg_0_15_9_9 : label is 15;
  attribute ram_offset of ram_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of ram_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_0_15_9_9 : label is 9;
begin
  qdpo(31 downto 0) <= qdpo_int(31 downto 0);
  qspo(31 downto 0) <= qspo_int(31 downto 0);
\a_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(0),
      Q => a_reg(0),
      R => '0'
    );
\a_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(1),
      Q => a_reg(1),
      R => '0'
    );
\a_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(2),
      Q => a_reg(2),
      R => '0'
    );
\a_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(3),
      Q => a_reg(3),
      R => '0'
    );
\d_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(0),
      Q => d_reg(0),
      R => '0'
    );
\d_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(10),
      Q => d_reg(10),
      R => '0'
    );
\d_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(11),
      Q => d_reg(11),
      R => '0'
    );
\d_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(12),
      Q => d_reg(12),
      R => '0'
    );
\d_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(13),
      Q => d_reg(13),
      R => '0'
    );
\d_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(14),
      Q => d_reg(14),
      R => '0'
    );
\d_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(15),
      Q => d_reg(15),
      R => '0'
    );
\d_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(16),
      Q => d_reg(16),
      R => '0'
    );
\d_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(17),
      Q => d_reg(17),
      R => '0'
    );
\d_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(18),
      Q => d_reg(18),
      R => '0'
    );
\d_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(19),
      Q => d_reg(19),
      R => '0'
    );
\d_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(1),
      Q => d_reg(1),
      R => '0'
    );
\d_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(20),
      Q => d_reg(20),
      R => '0'
    );
\d_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(21),
      Q => d_reg(21),
      R => '0'
    );
\d_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(22),
      Q => d_reg(22),
      R => '0'
    );
\d_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(23),
      Q => d_reg(23),
      R => '0'
    );
\d_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(24),
      Q => d_reg(24),
      R => '0'
    );
\d_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(25),
      Q => d_reg(25),
      R => '0'
    );
\d_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(26),
      Q => d_reg(26),
      R => '0'
    );
\d_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(27),
      Q => d_reg(27),
      R => '0'
    );
\d_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(28),
      Q => d_reg(28),
      R => '0'
    );
\d_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(29),
      Q => d_reg(29),
      R => '0'
    );
\d_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(2),
      Q => d_reg(2),
      R => '0'
    );
\d_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(30),
      Q => d_reg(30),
      R => '0'
    );
\d_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(31),
      Q => d_reg(31),
      R => '0'
    );
\d_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(3),
      Q => d_reg(3),
      R => '0'
    );
\d_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(4),
      Q => d_reg(4),
      R => '0'
    );
\d_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(5),
      Q => d_reg(5),
      R => '0'
    );
\d_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(6),
      Q => d_reg(6),
      R => '0'
    );
\d_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(7),
      Q => d_reg(7),
      R => '0'
    );
\d_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(8),
      Q => d_reg(8),
      R => '0'
    );
\d_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(9),
      Q => d_reg(9),
      R => '0'
    );
\dpra_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => dpra(0),
      Q => dpra_reg(0),
      R => '0'
    );
\dpra_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => dpra(1),
      Q => dpra_reg(1),
      R => '0'
    );
\dpra_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => dpra(2),
      Q => dpra_reg(2),
      R => '0'
    );
\dpra_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => dpra(3),
      Q => dpra_reg(3),
      R => '0'
    );
\qdpo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(0),
      Q => qdpo_int(0),
      R => qdpo_srst
    );
\qdpo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(10),
      Q => qdpo_int(10),
      R => qdpo_srst
    );
\qdpo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(11),
      Q => qdpo_int(11),
      R => qdpo_srst
    );
\qdpo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(12),
      Q => qdpo_int(12),
      R => qdpo_srst
    );
\qdpo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(13),
      Q => qdpo_int(13),
      R => qdpo_srst
    );
\qdpo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(14),
      Q => qdpo_int(14),
      R => qdpo_srst
    );
\qdpo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(15),
      Q => qdpo_int(15),
      R => qdpo_srst
    );
\qdpo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(16),
      Q => qdpo_int(16),
      R => qdpo_srst
    );
\qdpo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(17),
      Q => qdpo_int(17),
      R => qdpo_srst
    );
\qdpo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(18),
      Q => qdpo_int(18),
      R => qdpo_srst
    );
\qdpo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(19),
      Q => qdpo_int(19),
      R => qdpo_srst
    );
\qdpo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(1),
      Q => qdpo_int(1),
      R => qdpo_srst
    );
\qdpo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(20),
      Q => qdpo_int(20),
      R => qdpo_srst
    );
\qdpo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(21),
      Q => qdpo_int(21),
      R => qdpo_srst
    );
\qdpo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(22),
      Q => qdpo_int(22),
      R => qdpo_srst
    );
\qdpo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(23),
      Q => qdpo_int(23),
      R => qdpo_srst
    );
\qdpo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(24),
      Q => qdpo_int(24),
      R => qdpo_srst
    );
\qdpo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(25),
      Q => qdpo_int(25),
      R => qdpo_srst
    );
\qdpo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(26),
      Q => qdpo_int(26),
      R => qdpo_srst
    );
\qdpo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(27),
      Q => qdpo_int(27),
      R => qdpo_srst
    );
\qdpo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(28),
      Q => qdpo_int(28),
      R => qdpo_srst
    );
\qdpo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(29),
      Q => qdpo_int(29),
      R => qdpo_srst
    );
\qdpo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(2),
      Q => qdpo_int(2),
      R => qdpo_srst
    );
\qdpo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(30),
      Q => qdpo_int(30),
      R => qdpo_srst
    );
\qdpo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(31),
      Q => qdpo_int(31),
      R => qdpo_srst
    );
\qdpo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(3),
      Q => qdpo_int(3),
      R => qdpo_srst
    );
\qdpo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(4),
      Q => qdpo_int(4),
      R => qdpo_srst
    );
\qdpo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(5),
      Q => qdpo_int(5),
      R => qdpo_srst
    );
\qdpo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(6),
      Q => qdpo_int(6),
      R => qdpo_srst
    );
\qdpo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(7),
      Q => qdpo_int(7),
      R => qdpo_srst
    );
\qdpo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(8),
      Q => qdpo_int(8),
      R => qdpo_srst
    );
\qdpo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qdpo_input(9),
      Q => qdpo_int(9),
      R => qdpo_srst
    );
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(0),
      Q => qspo_int(0),
      R => qspo_srst
    );
\qspo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(10),
      Q => qspo_int(10),
      R => qspo_srst
    );
\qspo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(11),
      Q => qspo_int(11),
      R => qspo_srst
    );
\qspo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(12),
      Q => qspo_int(12),
      R => qspo_srst
    );
\qspo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(13),
      Q => qspo_int(13),
      R => qspo_srst
    );
\qspo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(14),
      Q => qspo_int(14),
      R => qspo_srst
    );
\qspo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(15),
      Q => qspo_int(15),
      R => qspo_srst
    );
\qspo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(16),
      Q => qspo_int(16),
      R => qspo_srst
    );
\qspo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(17),
      Q => qspo_int(17),
      R => qspo_srst
    );
\qspo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(18),
      Q => qspo_int(18),
      R => qspo_srst
    );
\qspo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(19),
      Q => qspo_int(19),
      R => qspo_srst
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(1),
      Q => qspo_int(1),
      R => qspo_srst
    );
\qspo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(20),
      Q => qspo_int(20),
      R => qspo_srst
    );
\qspo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(21),
      Q => qspo_int(21),
      R => qspo_srst
    );
\qspo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(22),
      Q => qspo_int(22),
      R => qspo_srst
    );
\qspo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(23),
      Q => qspo_int(23),
      R => qspo_srst
    );
\qspo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(24),
      Q => qspo_int(24),
      R => qspo_srst
    );
\qspo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(25),
      Q => qspo_int(25),
      R => qspo_srst
    );
\qspo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(26),
      Q => qspo_int(26),
      R => qspo_srst
    );
\qspo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(27),
      Q => qspo_int(27),
      R => qspo_srst
    );
\qspo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(28),
      Q => qspo_int(28),
      R => qspo_srst
    );
\qspo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(29),
      Q => qspo_int(29),
      R => qspo_srst
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(2),
      Q => qspo_int(2),
      R => qspo_srst
    );
\qspo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(30),
      Q => qspo_int(30),
      R => qspo_srst
    );
\qspo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(31),
      Q => qspo_int(31),
      R => qspo_srst
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(3),
      Q => qspo_int(3),
      R => qspo_srst
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(4),
      Q => qspo_int(4),
      R => qspo_srst
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(5),
      Q => qspo_int(5),
      R => qspo_srst
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(6),
      Q => qspo_int(6),
      R => qspo_srst
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(7),
      Q => qspo_int(7),
      R => qspo_srst
    );
\qspo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(8),
      Q => qspo_int(8),
      R => qspo_srst
    );
\qspo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qspo_input(9),
      Q => qspo_int(9),
      R => qspo_srst
    );
ram_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(0),
      DPO => qdpo_input(0),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(0),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_10_10: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(10),
      DPO => qdpo_input(10),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(10),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_11_11: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(11),
      DPO => qdpo_input(11),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(11),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_12_12: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(12),
      DPO => qdpo_input(12),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(12),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_13_13: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(13),
      DPO => qdpo_input(13),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(13),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_14_14: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(14),
      DPO => qdpo_input(14),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(14),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_15_15: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(15),
      DPO => qdpo_input(15),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(15),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_16_16: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(16),
      DPO => qdpo_input(16),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(16),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_17_17: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(17),
      DPO => qdpo_input(17),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(17),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_18_18: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(18),
      DPO => qdpo_input(18),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(18),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_19_19: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(19),
      DPO => qdpo_input(19),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(19),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(1),
      DPO => qdpo_input(1),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(1),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_20_20: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(20),
      DPO => qdpo_input(20),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(20),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_21_21: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(21),
      DPO => qdpo_input(21),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(21),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_22_22: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(22),
      DPO => qdpo_input(22),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(22),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_23_23: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(23),
      DPO => qdpo_input(23),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(23),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_24_24: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(24),
      DPO => qdpo_input(24),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(24),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_25_25: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(25),
      DPO => qdpo_input(25),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(25),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_26_26: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(26),
      DPO => qdpo_input(26),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(26),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_27_27: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(27),
      DPO => qdpo_input(27),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(27),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_28_28: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(28),
      DPO => qdpo_input(28),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(28),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_29_29: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(29),
      DPO => qdpo_input(29),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(29),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(2),
      DPO => qdpo_input(2),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(2),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_30_30: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(30),
      DPO => qdpo_input(30),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(30),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_31_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(31),
      DPO => qdpo_input(31),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(31),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(3),
      DPO => qdpo_input(3),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(3),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(4),
      DPO => qdpo_input(4),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(4),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(5),
      DPO => qdpo_input(5),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(5),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(6),
      DPO => qdpo_input(6),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(6),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(7),
      DPO => qdpo_input(7),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(7),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_8_8: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(8),
      DPO => qdpo_input(8),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(8),
      WCLK => clk,
      WE => we_reg
    );
ram_reg_0_15_9_9: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => a_reg(0),
      A1 => a_reg(1),
      A2 => a_reg(2),
      A3 => a_reg(3),
      A4 => '0',
      D => d_reg(9),
      DPO => qdpo_input(9),
      DPRA0 => dpra_reg(0),
      DPRA1 => dpra_reg(1),
      DPRA2 => dpra_reg(2),
      DPRA3 => dpra_reg(3),
      DPRA4 => '0',
      SPO => qspo_input(9),
      WCLK => clk,
      WE => we_reg
    );
we_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => we,
      Q => we_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13_synth is
  port (
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    we : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13_synth : entity is "dist_mem_gen_v8_0_13_synth";
end mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13_synth is
begin
\gen_dp_ram.dpram_inst\: entity work.mcu_dmr_1_ONEWIRE_0_dpram
     port map (
      a(3 downto 0) => a(3 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      dpra(3 downto 0) => dpra(3 downto 0),
      qdpo(31 downto 0) => qdpo(31 downto 0),
      qdpo_srst => qdpo_srst,
      qspo(31 downto 0) => qspo(31 downto 0),
      qspo_srst => qspo_srst,
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 4;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 16;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is "no_coe_file_loaded";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 2;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_v8_0_13";
end mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13;

architecture STRUCTURE of mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  spo(31) <= \<const0>\;
  spo(30) <= \<const0>\;
  spo(29) <= \<const0>\;
  spo(28) <= \<const0>\;
  spo(27) <= \<const0>\;
  spo(26) <= \<const0>\;
  spo(25) <= \<const0>\;
  spo(24) <= \<const0>\;
  spo(23) <= \<const0>\;
  spo(22) <= \<const0>\;
  spo(21) <= \<const0>\;
  spo(20) <= \<const0>\;
  spo(19) <= \<const0>\;
  spo(18) <= \<const0>\;
  spo(17) <= \<const0>\;
  spo(16) <= \<const0>\;
  spo(15) <= \<const0>\;
  spo(14) <= \<const0>\;
  spo(13) <= \<const0>\;
  spo(12) <= \<const0>\;
  spo(11) <= \<const0>\;
  spo(10) <= \<const0>\;
  spo(9) <= \<const0>\;
  spo(8) <= \<const0>\;
  spo(7) <= \<const0>\;
  spo(6) <= \<const0>\;
  spo(5) <= \<const0>\;
  spo(4) <= \<const0>\;
  spo(3) <= \<const0>\;
  spo(2) <= \<const0>\;
  spo(1) <= \<const0>\;
  spo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13_synth
     port map (
      a(3 downto 0) => a(3 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      dpra(3 downto 0) => dpra(3 downto 0),
      qdpo(31 downto 0) => qdpo(31 downto 0),
      qdpo_srst => qdpo_srst,
      qspo(31 downto 0) => qspo(31 downto 0),
      qspo_srst => qspo_srst,
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_dmr_1_ONEWIRE_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_dmr_1_ONEWIRE_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_dmr_1_ONEWIRE_0 : entity is "mcu_dmr_1_ONEWIRE_0,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_dmr_1_ONEWIRE_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mcu_dmr_1_ONEWIRE_0 : entity is "dist_mem_gen_v8_0_13,Vivado 2019.1";
end mcu_dmr_1_ONEWIRE_0;

architecture STRUCTURE of mcu_dmr_1_ONEWIRE_0 is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 2;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 16;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_dpo : integer;
  attribute c_has_dpo of U0 : label is 0;
  attribute c_has_dpra : integer;
  attribute c_has_dpra of U0 : label is 1;
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qdpo : integer;
  attribute c_has_qdpo of U0 : label is 1;
  attribute c_has_qdpo_ce : integer;
  attribute c_has_qdpo_ce of U0 : label is 0;
  attribute c_has_qdpo_clk : integer;
  attribute c_has_qdpo_clk of U0 : label is 0;
  attribute c_has_qdpo_rst : integer;
  attribute c_has_qdpo_rst of U0 : label is 0;
  attribute c_has_qdpo_srst : integer;
  attribute c_has_qdpo_srst of U0 : label is 1;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 1;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 1;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "no_coe_file_loaded";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qce_joined : integer;
  attribute c_qce_joined of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 0;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 1;
  attribute c_reg_dpra_input : integer;
  attribute c_reg_dpra_input of U0 : label is 1;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13
     port map (
      a(3 downto 0) => a(3 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(3 downto 0) => dpra(3 downto 0),
      i_ce => '1',
      qdpo(31 downto 0) => qdpo(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => qdpo_srst,
      qspo(31 downto 0) => qspo(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => qspo_srst,
      spo(31 downto 0) => NLW_U0_spo_UNCONNECTED(31 downto 0),
      we => we
    );
end STRUCTURE;
