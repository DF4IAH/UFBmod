-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Apr  5 23:06:08 2021
-- Host        : DESKTOP-I3NV8HO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Encoder/UFBmod_Encoder_sim_netlist.vhdl
-- Design      : UFBmod_Encoder
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_Encoder_UFBmod_tx09_Encoder_FSM is
  port (
    \dds_tx09_inc_reg[0]_0\ : out STD_LOGIC;
    dds_tx09_inc : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pulldata_tx09_en : out STD_LOGIC;
    dds_tx09_ptt : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    pulldata_tx09_byteData : in STD_LOGIC_VECTOR ( 4 downto 0 );
    encoder_pull_FIFO_dump : in STD_LOGIC;
    encoder_pull_do_start : in STD_LOGIC;
    encoder_pull_data_len : in STD_LOGIC_VECTOR ( 4 downto 0 );
    decoder_rx09_chAll_active : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chAll_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UFBmod_Encoder_UFBmod_tx09_Encoder_FSM : entity is "UFBmod_tx09_Encoder_FSM";
end UFBmod_Encoder_UFBmod_tx09_Encoder_FSM;

architecture STRUCTURE of UFBmod_Encoder_UFBmod_tx09_Encoder_FSM is
  signal \byteBit_cnt1__2\ : STD_LOGIC;
  signal byteBit_sub1_out : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal dds_current_freq0_carry_i_1_n_0 : STD_LOGIC;
  signal dds_current_freq0_carry_i_2_n_0 : STD_LOGIC;
  signal dds_current_freq0_carry_n_2 : STD_LOGIC;
  signal dds_current_freq0_carry_n_3 : STD_LOGIC;
  signal dds_current_inc : STD_LOGIC_VECTOR ( 31 downto 26 );
  signal dds_new_freq : STD_LOGIC;
  signal \dds_new_freq0__3\ : STD_LOGIC;
  signal \dds_new_freq[0]_i_1_n_0\ : STD_LOGIC;
  signal \dds_new_freq[0]_i_2_n_0\ : STD_LOGIC;
  signal \dds_new_freq[1]_i_1_n_0\ : STD_LOGIC;
  signal \dds_new_freq[1]_i_2_n_0\ : STD_LOGIC;
  signal \dds_new_freq[1]_i_3_n_0\ : STD_LOGIC;
  signal \dds_new_freq[2]_i_2_n_0\ : STD_LOGIC;
  signal \dds_new_freq[2]_i_3_n_0\ : STD_LOGIC;
  signal \dds_new_freq[2]_i_4_n_0\ : STD_LOGIC;
  signal \dds_new_freq[3]_i_1_n_0\ : STD_LOGIC;
  signal \dds_new_freq[3]_i_2_n_0\ : STD_LOGIC;
  signal \dds_new_freq[3]_i_3_n_0\ : STD_LOGIC;
  signal \dds_new_freq[4]_i_2_n_0\ : STD_LOGIC;
  signal \dds_new_freq[4]_i_3_n_0\ : STD_LOGIC;
  signal \dds_new_freq[4]_i_4_n_0\ : STD_LOGIC;
  signal \dds_new_freq[4]_i_5_n_0\ : STD_LOGIC;
  signal \dds_new_freq[4]_i_6_n_0\ : STD_LOGIC;
  signal \dds_new_freq[4]_i_7_n_0\ : STD_LOGIC;
  signal \dds_new_freq[4]_i_8_n_0\ : STD_LOGIC;
  signal \dds_new_freq_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \dds_new_freq_reg_n_0_[0]\ : STD_LOGIC;
  signal \dds_new_freq_reg_n_0_[1]\ : STD_LOGIC;
  signal \dds_new_freq_reg_n_0_[2]\ : STD_LOGIC;
  signal \dds_new_freq_reg_n_0_[3]\ : STD_LOGIC;
  signal \dds_new_freq_reg_n_0_[4]\ : STD_LOGIC;
  signal dds_new_inc : STD_LOGIC;
  signal \^dds_tx09_inc\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \dds_tx09_inc1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__0_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__0_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__0_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__0_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__1_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__2_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__2_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc1_carry__2_n_3\ : STD_LOGIC;
  signal dds_tx09_inc1_carry_i_1_n_0 : STD_LOGIC;
  signal dds_tx09_inc1_carry_i_2_n_0 : STD_LOGIC;
  signal dds_tx09_inc1_carry_i_3_n_0 : STD_LOGIC;
  signal dds_tx09_inc1_carry_i_4_n_0 : STD_LOGIC;
  signal dds_tx09_inc1_carry_n_0 : STD_LOGIC;
  signal dds_tx09_inc1_carry_n_1 : STD_LOGIC;
  signal dds_tx09_inc1_carry_n_2 : STD_LOGIC;
  signal dds_tx09_inc1_carry_n_3 : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__0_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__1_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__2_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__3_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__4_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__5_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__6_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__6_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__6_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__6_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_carry__6_n_7\ : STD_LOGIC;
  signal dds_tx09_inc2_carry_i_1_n_0 : STD_LOGIC;
  signal dds_tx09_inc2_carry_n_0 : STD_LOGIC;
  signal dds_tx09_inc2_carry_n_1 : STD_LOGIC;
  signal dds_tx09_inc2_carry_n_2 : STD_LOGIC;
  signal dds_tx09_inc2_carry_n_3 : STD_LOGIC;
  signal dds_tx09_inc2_carry_n_4 : STD_LOGIC;
  signal dds_tx09_inc2_carry_n_5 : STD_LOGIC;
  signal dds_tx09_inc2_carry_n_6 : STD_LOGIC;
  signal dds_tx09_inc2_carry_n_7 : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \dds_tx09_inc2_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \dds_tx09_inc[0]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[10]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[11]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[12]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[13]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[14]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[15]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[16]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[16]_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[17]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[17]_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[18]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[18]_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[19]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[19]_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[1]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[20]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[20]_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[21]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[22]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[23]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[24]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[25]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[25]_i_2_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[2]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[3]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[4]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[5]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[6]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[7]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[8]_i_1_n_0\ : STD_LOGIC;
  signal \dds_tx09_inc[9]_i_1_n_0\ : STD_LOGIC;
  signal \^dds_tx09_inc_reg[0]_0\ : STD_LOGIC;
  signal \^dds_tx09_ptt\ : STD_LOGIC;
  signal \dds_tx09_ptt0__14\ : STD_LOGIC;
  signal dds_tx09_ptt_i_1_n_0 : STD_LOGIC;
  signal dds_tx09_ptt_i_2_n_0 : STD_LOGIC;
  signal dds_tx09_ptt_i_3_n_0 : STD_LOGIC;
  signal dds_tx09_ptt_i_5_n_0 : STD_LOGIC;
  signal dds_tx09_ptt_i_6_n_0 : STD_LOGIC;
  signal dds_tx09_ptt_i_7_n_0 : STD_LOGIC;
  signal dds_tx09_ptt_i_8_n_0 : STD_LOGIC;
  signal encoder_frq_initial : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal encoder_frq_last : STD_LOGIC;
  signal encoder_tx09_in_len : STD_LOGIC;
  signal \encoder_tx09_in_len[3]_i_1_n_0\ : STD_LOGIC;
  signal \encoder_tx09_in_len[4]_i_2_n_0\ : STD_LOGIC;
  signal encoder_tx09_in_len_cnt : STD_LOGIC;
  signal \encoder_tx09_in_len_reg_n_0_[3]\ : STD_LOGIC;
  signal \encoder_tx09_in_len_reg_n_0_[4]\ : STD_LOGIC;
  signal encoder_tx09_in_vec : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \encoder_tx09_in_vec[0]_i_1_n_0\ : STD_LOGIC;
  signal \encoder_tx09_in_vec[1]_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal loop_cnt : STD_LOGIC;
  signal loop_cnt0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \loop_cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \loop_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \loop_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \loop_cnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \loop_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \loop_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \loop_cnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \loop_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \loop_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \loop_cnt0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \loop_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \loop_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \loop_cnt0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \loop_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \loop_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \loop_cnt0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \loop_cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \loop_cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \loop_cnt0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \loop_cnt0_carry__6_n_2\ : STD_LOGIC;
  signal \loop_cnt0_carry__6_n_3\ : STD_LOGIC;
  signal loop_cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal loop_cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal loop_cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal loop_cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal loop_cnt0_carry_n_0 : STD_LOGIC;
  signal loop_cnt0_carry_n_1 : STD_LOGIC;
  signal loop_cnt0_carry_n_2 : STD_LOGIC;
  signal loop_cnt0_carry_n_3 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 26 );
  signal p_1_out : STD_LOGIC;
  signal \proc_DDS.dds_new_inc[16]_i_2_n_0\ : STD_LOGIC;
  signal \proc_DDS.dds_new_inc[17]_i_1_n_0\ : STD_LOGIC;
  signal \proc_DDS.dds_new_inc[18]_i_1_n_0\ : STD_LOGIC;
  signal \proc_DDS.dds_new_inc[19]_i_1_n_0\ : STD_LOGIC;
  signal \proc_DDS.dds_new_inc[20]_i_1_n_0\ : STD_LOGIC;
  signal \proc_DDS.dds_new_inc_reg_n_0_[16]\ : STD_LOGIC;
  signal \proc_DDS.dds_new_inc_reg_n_0_[17]\ : STD_LOGIC;
  signal \proc_DDS.dds_new_inc_reg_n_0_[18]\ : STD_LOGIC;
  signal \proc_DDS.dds_new_inc_reg_n_0_[19]\ : STD_LOGIC;
  signal \proc_DDS.dds_new_inc_reg_n_0_[20]\ : STD_LOGIC;
  signal \proc_DDS.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \proc_DDS.state[0]_i_2_n_0\ : STD_LOGIC;
  signal \proc_DDS.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \proc_DDS.state_reg_n_0_[0]\ : STD_LOGIC;
  signal \proc_DDS.state_reg_n_0_[1]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_sub[0]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_sub[0]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.byteBit_sub_reg_n_0_[0]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[0]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[1]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[2]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[2]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[3]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[3]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_3_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_5_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_7_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_8_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[1]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[2]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[3]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[4]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[27]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[28]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[29]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_11_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx[0]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx[1]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx[2]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx[3]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx[4]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx[4]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx[4]_i_3_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx[4]_i_4_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[2]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[3]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[4]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[0]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[1]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[1]_i_3_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[2]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[2]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[3]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[4]_i_2_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[4]_i_3_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[4]_i_4_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[4]_i_5_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state[4]_i_8_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\ : STD_LOGIC;
  signal \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\ : STD_LOGIC;
  signal pull_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^pulldata_tx09_en\ : STD_LOGIC;
  signal pulldata_tx09_en_i_1_n_0 : STD_LOGIC;
  signal pulldata_tx09_en_i_2_n_0 : STD_LOGIC;
  signal pulldata_tx09_en_i_3_n_0 : STD_LOGIC;
  signal pulldata_tx09_en_i_4_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal state : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal state2 : STD_LOGIC;
  signal NLW_dds_current_freq0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_dds_current_freq0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dds_tx09_inc1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dds_tx09_inc1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dds_tx09_inc1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dds_tx09_inc1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dds_tx09_inc1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dds_tx09_inc1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dds_tx09_inc1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dds_tx09_inc1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dds_tx09_inc2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dds_tx09_inc2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dds_tx09_inc2_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dds_tx09_inc2_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_loop_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_loop_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dds_new_freq[4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dds_new_freq[4]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dds_new_freq[4]_i_8\ : label is "soft_lutpair6";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of dds_tx09_inc1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \dds_tx09_inc1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dds_tx09_inc1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dds_tx09_inc1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dds_tx09_inc1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dds_tx09_inc1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dds_tx09_inc1_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dds_tx09_inc1_inferred__0/i__carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dds_tx09_inc2_carry : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \dds_tx09_inc2_inferred__0/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \dds_tx09_inc[17]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dds_tx09_inc[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dds_tx09_inc[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dds_tx09_inc[20]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of dds_tx09_ptt_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \encoder_tx09_in_len[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \encoder_tx09_in_len[4]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \encoder_tx09_in_vec[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \encoder_tx09_in_vec[1]_i_1\ : label is "soft_lutpair33";
  attribute ADDER_THRESHOLD of loop_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \loop_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \loop_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \loop_cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \loop_cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \loop_cnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \loop_cnt0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \loop_cnt0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \proc_DDS.dds_new_inc[17]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \proc_DDS.dds_new_inc[18]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \proc_DDS.dds_new_inc[19]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \proc_DDS.dds_new_inc[20]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.byteBit_cnt[1]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_frq_last[2]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[14]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[16]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[18]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[19]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[20]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[22]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[24]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[26]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[27]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[30]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.loop_cnt[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.preIdx[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.preIdx[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.preIdx[4]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.pull_cnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.pull_cnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.pull_cnt[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.state[4]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \proc_UFBmod_Encoder_tx09.state[4]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of pulldata_tx09_en_i_4 : label is "soft_lutpair2";
begin
  dds_tx09_inc(24 downto 0) <= \^dds_tx09_inc\(24 downto 0);
  \dds_tx09_inc_reg[0]_0\ <= \^dds_tx09_inc_reg[0]_0\;
  dds_tx09_ptt <= \^dds_tx09_ptt\;
  pulldata_tx09_en <= \^pulldata_tx09_en\;
dds_current_freq0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_dds_current_freq0_carry_CO_UNCONNECTED(3 downto 2),
      CO(1) => dds_current_freq0_carry_n_2,
      CO(0) => dds_current_freq0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => NLW_dds_current_freq0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => dds_current_freq0_carry_i_1_n_0,
      S(0) => dds_current_freq0_carry_i_2_n_0
    );
dds_current_freq0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[3]\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[19]\,
      I2 => \dds_new_freq_reg_n_0_[4]\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[20]\,
      O => dds_current_freq0_carry_i_1_n_0
    );
dds_current_freq0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[0]\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[16]\,
      I2 => \proc_DDS.dds_new_inc_reg_n_0_[18]\,
      I3 => \dds_new_freq_reg_n_0_[2]\,
      I4 => \proc_DDS.dds_new_inc_reg_n_0_[17]\,
      I5 => \dds_new_freq_reg_n_0_[1]\,
      O => dds_current_freq0_carry_i_2_n_0
    );
\dds_new_freq[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => pulldata_tx09_byteData(0),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I4 => \dds_new_freq[0]_i_2_n_0\,
      O => \dds_new_freq[0]_i_1_n_0\
    );
\dds_new_freq[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7733740074007400"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I2 => encoder_frq_initial(0),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \dds_new_freq[0]_i_2_n_0\
    );
\dds_new_freq[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60FFFF6F600000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => pulldata_tx09_byteData(1),
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I5 => \dds_new_freq[1]_i_2_n_0\,
      O => \dds_new_freq[1]_i_1_n_0\
    );
\dds_new_freq[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB33B800B800B800"
    )
        port map (
      I0 => \dds_new_freq[1]_i_3_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I2 => encoder_frq_initial(1),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[1]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \dds_new_freq[1]_i_2_n_0\
    );
\dds_new_freq[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9965996A669A6695"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[2]\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      I4 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[3]\,
      I5 => \dds_new_freq_reg_n_0_[1]\,
      O => \dds_new_freq[1]_i_3_n_0\
    );
\dds_new_freq[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => \dds_new_freq[2]_i_4_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I2 => encoder_frq_initial(2),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[2]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \dds_new_freq[2]_i_2_n_0\
    );
\dds_new_freq[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87FF8700"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => pulldata_tx09_byteData(2),
      O => \dds_new_freq[2]_i_3_n_0\
    );
\dds_new_freq[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88828222"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I1 => \dds_new_freq_reg_n_0_[2]\,
      I2 => \dds_new_freq[4]_i_7_n_0\,
      I3 => \dds_new_freq_reg_n_0_[1]\,
      I4 => \dds_new_freq_reg_n_0_[0]\,
      O => \dds_new_freq[2]_i_4_n_0\
    );
\dds_new_freq[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[3]_i_2_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => pulldata_tx09_byteData(3),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I4 => \dds_new_freq[3]_i_2_n_0\,
      O => \dds_new_freq[3]_i_1_n_0\
    );
\dds_new_freq[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => \dds_new_freq[3]_i_3_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I2 => encoder_frq_initial(3),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[3]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \dds_new_freq[3]_i_2_n_0\
    );
\dds_new_freq[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222282888"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I1 => \dds_new_freq_reg_n_0_[3]\,
      I2 => \dds_new_freq_reg_n_0_[0]\,
      I3 => \dds_new_freq_reg_n_0_[1]\,
      I4 => \dds_new_freq[4]_i_7_n_0\,
      I5 => \dds_new_freq_reg_n_0_[2]\,
      O => \dds_new_freq[3]_i_3_n_0\
    );
\dds_new_freq[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => data0,
      I1 => \dds_new_freq[4]_i_3_n_0\,
      I2 => \dds_new_freq[4]_i_4_n_0\,
      O => dds_new_freq
    );
\dds_new_freq[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BFF8B00"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_7_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => pulldata_tx09_byteData(4),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I4 => \dds_new_freq[4]_i_5_n_0\,
      O => \dds_new_freq[4]_i_2_n_0\
    );
\dds_new_freq[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEFDDBE"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \dds_new_freq[4]_i_3_n_0\
    );
\dds_new_freq[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01002A4101002241"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I5 => \dds_new_freq0__3\,
      O => \dds_new_freq[4]_i_4_n_0\
    );
\dds_new_freq[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB33B800B800B800"
    )
        port map (
      I0 => \dds_new_freq[4]_i_6_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I2 => encoder_frq_initial(4),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[4]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \dds_new_freq[4]_i_5_n_0\
    );
\dds_new_freq[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0017FFFFFFE80000"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[0]\,
      I1 => \dds_new_freq_reg_n_0_[1]\,
      I2 => \dds_new_freq[4]_i_7_n_0\,
      I3 => \dds_new_freq_reg_n_0_[2]\,
      I4 => \dds_new_freq_reg_n_0_[3]\,
      I5 => \dds_new_freq[4]_i_8_n_0\,
      O => \dds_new_freq[4]_i_6_n_0\
    );
\dds_new_freq[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4A7"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[2]\,
      I1 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      I3 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[3]\,
      O => \dds_new_freq[4]_i_7_n_0\
    );
\dds_new_freq[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A5A65A56"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[4]\,
      I1 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      I3 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\,
      I4 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[2]\,
      O => \dds_new_freq[4]_i_8_n_0\
    );
\dds_new_freq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_freq,
      D => \dds_new_freq[0]_i_1_n_0\,
      Q => \dds_new_freq_reg_n_0_[0]\,
      R => reset
    );
\dds_new_freq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_freq,
      D => \dds_new_freq[1]_i_1_n_0\,
      Q => \dds_new_freq_reg_n_0_[1]\,
      R => reset
    );
\dds_new_freq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_freq,
      D => \dds_new_freq_reg[2]_i_1_n_0\,
      Q => \dds_new_freq_reg_n_0_[2]\,
      R => reset
    );
\dds_new_freq_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dds_new_freq[2]_i_2_n_0\,
      I1 => \dds_new_freq[2]_i_3_n_0\,
      O => \dds_new_freq_reg[2]_i_1_n_0\,
      S => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\
    );
\dds_new_freq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_freq,
      D => \dds_new_freq[3]_i_1_n_0\,
      Q => \dds_new_freq_reg_n_0_[3]\,
      R => reset
    );
\dds_new_freq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_freq,
      D => \dds_new_freq[4]_i_2_n_0\,
      Q => \dds_new_freq_reg_n_0_[4]\,
      R => reset
    );
dds_tx09_inc1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dds_tx09_inc1_carry_n_0,
      CO(2) => dds_tx09_inc1_carry_n_1,
      CO(1) => dds_tx09_inc1_carry_n_2,
      CO(0) => dds_tx09_inc1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_dds_tx09_inc1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => dds_tx09_inc1_carry_i_1_n_0,
      S(2) => dds_tx09_inc1_carry_i_2_n_0,
      S(1) => dds_tx09_inc1_carry_i_3_n_0,
      S(0) => dds_tx09_inc1_carry_i_4_n_0
    );
\dds_tx09_inc1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dds_tx09_inc1_carry_n_0,
      CO(3) => \dds_tx09_inc1_carry__0_n_0\,
      CO(2) => \dds_tx09_inc1_carry__0_n_1\,
      CO(1) => \dds_tx09_inc1_carry__0_n_2\,
      CO(0) => \dds_tx09_inc1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_dds_tx09_inc1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \dds_tx09_inc1_carry__0_i_1_n_0\,
      S(2) => \dds_tx09_inc1_carry__0_i_2_n_0\,
      S(1) => \dds_tx09_inc1_carry__0_i_3_n_0\,
      S(0) => \dds_tx09_inc1_carry__0_i_4_n_0\
    );
\dds_tx09_inc1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__2_n_6\,
      I1 => \dds_tx09_inc2_carry__2_n_5\,
      O => \dds_tx09_inc1_carry__0_i_1_n_0\
    );
\dds_tx09_inc1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__1_n_4\,
      I1 => \dds_tx09_inc2_carry__2_n_7\,
      O => \dds_tx09_inc1_carry__0_i_2_n_0\
    );
\dds_tx09_inc1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__1_n_6\,
      I1 => \dds_tx09_inc2_carry__1_n_5\,
      O => \dds_tx09_inc1_carry__0_i_3_n_0\
    );
\dds_tx09_inc1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__0_n_4\,
      I1 => \dds_tx09_inc2_carry__1_n_7\,
      O => \dds_tx09_inc1_carry__0_i_4_n_0\
    );
\dds_tx09_inc1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc1_carry__0_n_0\,
      CO(3) => \dds_tx09_inc1_carry__1_n_0\,
      CO(2) => \dds_tx09_inc1_carry__1_n_1\,
      CO(1) => \dds_tx09_inc1_carry__1_n_2\,
      CO(0) => \dds_tx09_inc1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \dds_tx09_inc1_carry__1_i_1_n_0\,
      DI(1) => \dds_tx09_inc1_carry__1_i_2_n_0\,
      DI(0) => \dds_tx09_inc1_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_dds_tx09_inc1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \dds_tx09_inc1_carry__1_i_4_n_0\,
      S(2) => \dds_tx09_inc1_carry__1_i_5_n_0\,
      S(1) => \dds_tx09_inc1_carry__1_i_6_n_0\,
      S(0) => \dds_tx09_inc1_carry__1_i_7_n_0\
    );
\dds_tx09_inc1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__3_n_4\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[20]\,
      I2 => \dds_tx09_inc2_carry__4_n_7\,
      O => \dds_tx09_inc1_carry__1_i_1_n_0\
    );
\dds_tx09_inc1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \proc_DDS.dds_new_inc_reg_n_0_[18]\,
      I1 => \dds_tx09_inc2_carry__3_n_6\,
      I2 => \dds_tx09_inc2_carry__3_n_5\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[19]\,
      O => \dds_tx09_inc1_carry__1_i_2_n_0\
    );
\dds_tx09_inc1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \proc_DDS.dds_new_inc_reg_n_0_[16]\,
      I1 => \dds_tx09_inc2_carry__2_n_4\,
      I2 => \dds_tx09_inc2_carry__3_n_7\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[17]\,
      O => \dds_tx09_inc1_carry__1_i_3_n_0\
    );
\dds_tx09_inc1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__4_n_6\,
      I1 => \dds_tx09_inc2_carry__4_n_5\,
      O => \dds_tx09_inc1_carry__1_i_4_n_0\
    );
\dds_tx09_inc1_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \proc_DDS.dds_new_inc_reg_n_0_[20]\,
      I1 => \dds_tx09_inc2_carry__3_n_4\,
      I2 => \dds_tx09_inc2_carry__4_n_7\,
      O => \dds_tx09_inc1_carry__1_i_5_n_0\
    );
\dds_tx09_inc1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \proc_DDS.dds_new_inc_reg_n_0_[18]\,
      I1 => \dds_tx09_inc2_carry__3_n_6\,
      I2 => \proc_DDS.dds_new_inc_reg_n_0_[19]\,
      I3 => \dds_tx09_inc2_carry__3_n_5\,
      O => \dds_tx09_inc1_carry__1_i_6_n_0\
    );
\dds_tx09_inc1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \proc_DDS.dds_new_inc_reg_n_0_[16]\,
      I1 => \dds_tx09_inc2_carry__2_n_4\,
      I2 => \proc_DDS.dds_new_inc_reg_n_0_[17]\,
      I3 => \dds_tx09_inc2_carry__3_n_7\,
      O => \dds_tx09_inc1_carry__1_i_7_n_0\
    );
\dds_tx09_inc1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc1_carry__1_n_0\,
      CO(3) => \dds_tx09_inc1_carry__2_n_0\,
      CO(2) => \dds_tx09_inc1_carry__2_n_1\,
      CO(1) => \dds_tx09_inc1_carry__2_n_2\,
      CO(0) => \dds_tx09_inc1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \dds_tx09_inc2_carry__6_n_5\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_dds_tx09_inc1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \dds_tx09_inc1_carry__2_i_1_n_0\,
      S(2) => \dds_tx09_inc1_carry__2_i_2_n_0\,
      S(1) => \dds_tx09_inc1_carry__2_i_3_n_0\,
      S(0) => \dds_tx09_inc1_carry__2_i_4_n_0\
    );
\dds_tx09_inc1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__6_n_6\,
      I1 => \dds_tx09_inc2_carry__6_n_5\,
      O => \dds_tx09_inc1_carry__2_i_1_n_0\
    );
\dds_tx09_inc1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__5_n_4\,
      I1 => \dds_tx09_inc2_carry__6_n_7\,
      O => \dds_tx09_inc1_carry__2_i_2_n_0\
    );
\dds_tx09_inc1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__5_n_6\,
      I1 => \dds_tx09_inc2_carry__5_n_5\,
      O => \dds_tx09_inc1_carry__2_i_3_n_0\
    );
\dds_tx09_inc1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__4_n_4\,
      I1 => \dds_tx09_inc2_carry__5_n_7\,
      O => \dds_tx09_inc1_carry__2_i_4_n_0\
    );
dds_tx09_inc1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_carry__0_n_6\,
      I1 => \dds_tx09_inc2_carry__0_n_5\,
      O => dds_tx09_inc1_carry_i_1_n_0
    );
dds_tx09_inc1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dds_tx09_inc2_carry_n_4,
      I1 => \dds_tx09_inc2_carry__0_n_7\,
      O => dds_tx09_inc1_carry_i_2_n_0
    );
dds_tx09_inc1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dds_tx09_inc2_carry_n_6,
      I1 => dds_tx09_inc2_carry_n_5,
      O => dds_tx09_inc1_carry_i_3_n_0
    );
dds_tx09_inc1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dds_tx09_inc_reg[0]_0\,
      I1 => dds_tx09_inc2_carry_n_7,
      O => dds_tx09_inc1_carry_i_4_n_0
    );
\dds_tx09_inc1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dds_tx09_inc1_inferred__0/i__carry_n_0\,
      CO(2) => \dds_tx09_inc1_inferred__0/i__carry_n_1\,
      CO(1) => \dds_tx09_inc1_inferred__0/i__carry_n_2\,
      CO(0) => \dds_tx09_inc1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_dds_tx09_inc1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\dds_tx09_inc1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc1_inferred__0/i__carry_n_0\,
      CO(3) => \dds_tx09_inc1_inferred__0/i__carry__0_n_0\,
      CO(2) => \dds_tx09_inc1_inferred__0/i__carry__0_n_1\,
      CO(1) => \dds_tx09_inc1_inferred__0/i__carry__0_n_2\,
      CO(0) => \dds_tx09_inc1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_dds_tx09_inc1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\dds_tx09_inc1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc1_inferred__0/i__carry__0_n_0\,
      CO(3) => \dds_tx09_inc1_inferred__0/i__carry__1_n_0\,
      CO(2) => \dds_tx09_inc1_inferred__0/i__carry__1_n_1\,
      CO(1) => \dds_tx09_inc1_inferred__0/i__carry__1_n_2\,
      CO(0) => \dds_tx09_inc1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1__0_n_0\,
      DI(2) => \i__carry__1_i_2__0_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_dds_tx09_inc1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\dds_tx09_inc1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc1_inferred__0/i__carry__1_n_0\,
      CO(3) => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      CO(2) => \dds_tx09_inc1_inferred__0/i__carry__2_n_1\,
      CO(1) => \dds_tx09_inc1_inferred__0/i__carry__2_n_2\,
      CO(0) => \dds_tx09_inc1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_dds_tx09_inc1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
dds_tx09_inc2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dds_tx09_inc2_carry_n_0,
      CO(2) => dds_tx09_inc2_carry_n_1,
      CO(1) => dds_tx09_inc2_carry_n_2,
      CO(0) => dds_tx09_inc2_carry_n_3,
      CYINIT => \^dds_tx09_inc_reg[0]_0\,
      DI(3 downto 1) => B"000",
      DI(0) => \^dds_tx09_inc\(0),
      O(3) => dds_tx09_inc2_carry_n_4,
      O(2) => dds_tx09_inc2_carry_n_5,
      O(1) => dds_tx09_inc2_carry_n_6,
      O(0) => dds_tx09_inc2_carry_n_7,
      S(3 downto 1) => \^dds_tx09_inc\(3 downto 1),
      S(0) => dds_tx09_inc2_carry_i_1_n_0
    );
\dds_tx09_inc2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dds_tx09_inc2_carry_n_0,
      CO(3) => \dds_tx09_inc2_carry__0_n_0\,
      CO(2) => \dds_tx09_inc2_carry__0_n_1\,
      CO(1) => \dds_tx09_inc2_carry__0_n_2\,
      CO(0) => \dds_tx09_inc2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^dds_tx09_inc\(7 downto 5),
      DI(0) => '0',
      O(3) => \dds_tx09_inc2_carry__0_n_4\,
      O(2) => \dds_tx09_inc2_carry__0_n_5\,
      O(1) => \dds_tx09_inc2_carry__0_n_6\,
      O(0) => \dds_tx09_inc2_carry__0_n_7\,
      S(3) => \dds_tx09_inc2_carry__0_i_1_n_0\,
      S(2) => \dds_tx09_inc2_carry__0_i_2_n_0\,
      S(1) => \dds_tx09_inc2_carry__0_i_3_n_0\,
      S(0) => \^dds_tx09_inc\(4)
    );
\dds_tx09_inc2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(7),
      O => \dds_tx09_inc2_carry__0_i_1_n_0\
    );
\dds_tx09_inc2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(6),
      O => \dds_tx09_inc2_carry__0_i_2_n_0\
    );
\dds_tx09_inc2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(5),
      O => \dds_tx09_inc2_carry__0_i_3_n_0\
    );
\dds_tx09_inc2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_carry__0_n_0\,
      CO(3) => \dds_tx09_inc2_carry__1_n_0\,
      CO(2) => \dds_tx09_inc2_carry__1_n_1\,
      CO(1) => \dds_tx09_inc2_carry__1_n_2\,
      CO(0) => \dds_tx09_inc2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \^dds_tx09_inc\(11),
      DI(2) => '0',
      DI(1) => \^dds_tx09_inc\(9),
      DI(0) => '0',
      O(3) => \dds_tx09_inc2_carry__1_n_4\,
      O(2) => \dds_tx09_inc2_carry__1_n_5\,
      O(1) => \dds_tx09_inc2_carry__1_n_6\,
      O(0) => \dds_tx09_inc2_carry__1_n_7\,
      S(3) => \dds_tx09_inc2_carry__1_i_1_n_0\,
      S(2) => \^dds_tx09_inc\(10),
      S(1) => \dds_tx09_inc2_carry__1_i_2_n_0\,
      S(0) => \^dds_tx09_inc\(8)
    );
\dds_tx09_inc2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(11),
      O => \dds_tx09_inc2_carry__1_i_1_n_0\
    );
\dds_tx09_inc2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(9),
      O => \dds_tx09_inc2_carry__1_i_2_n_0\
    );
\dds_tx09_inc2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_carry__1_n_0\,
      CO(3) => \dds_tx09_inc2_carry__2_n_0\,
      CO(2) => \dds_tx09_inc2_carry__2_n_1\,
      CO(1) => \dds_tx09_inc2_carry__2_n_2\,
      CO(0) => \dds_tx09_inc2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^dds_tx09_inc\(15 downto 12),
      O(3) => \dds_tx09_inc2_carry__2_n_4\,
      O(2) => \dds_tx09_inc2_carry__2_n_5\,
      O(1) => \dds_tx09_inc2_carry__2_n_6\,
      O(0) => \dds_tx09_inc2_carry__2_n_7\,
      S(3) => \dds_tx09_inc2_carry__2_i_1_n_0\,
      S(2) => \dds_tx09_inc2_carry__2_i_2_n_0\,
      S(1) => \dds_tx09_inc2_carry__2_i_3_n_0\,
      S(0) => \dds_tx09_inc2_carry__2_i_4_n_0\
    );
\dds_tx09_inc2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(15),
      O => \dds_tx09_inc2_carry__2_i_1_n_0\
    );
\dds_tx09_inc2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(14),
      O => \dds_tx09_inc2_carry__2_i_2_n_0\
    );
\dds_tx09_inc2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(13),
      O => \dds_tx09_inc2_carry__2_i_3_n_0\
    );
\dds_tx09_inc2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(12),
      O => \dds_tx09_inc2_carry__2_i_4_n_0\
    );
\dds_tx09_inc2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_carry__2_n_0\,
      CO(3) => \dds_tx09_inc2_carry__3_n_0\,
      CO(2) => \dds_tx09_inc2_carry__3_n_1\,
      CO(1) => \dds_tx09_inc2_carry__3_n_2\,
      CO(0) => \dds_tx09_inc2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^dds_tx09_inc\(19 downto 16),
      O(3) => \dds_tx09_inc2_carry__3_n_4\,
      O(2) => \dds_tx09_inc2_carry__3_n_5\,
      O(1) => \dds_tx09_inc2_carry__3_n_6\,
      O(0) => \dds_tx09_inc2_carry__3_n_7\,
      S(3) => \dds_tx09_inc2_carry__3_i_1_n_0\,
      S(2) => \dds_tx09_inc2_carry__3_i_2_n_0\,
      S(1) => \dds_tx09_inc2_carry__3_i_3_n_0\,
      S(0) => \dds_tx09_inc2_carry__3_i_4_n_0\
    );
\dds_tx09_inc2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(19),
      O => \dds_tx09_inc2_carry__3_i_1_n_0\
    );
\dds_tx09_inc2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(18),
      O => \dds_tx09_inc2_carry__3_i_2_n_0\
    );
\dds_tx09_inc2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(17),
      O => \dds_tx09_inc2_carry__3_i_3_n_0\
    );
\dds_tx09_inc2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(16),
      O => \dds_tx09_inc2_carry__3_i_4_n_0\
    );
\dds_tx09_inc2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_carry__3_n_0\,
      CO(3) => \dds_tx09_inc2_carry__4_n_0\,
      CO(2) => \dds_tx09_inc2_carry__4_n_1\,
      CO(1) => \dds_tx09_inc2_carry__4_n_2\,
      CO(0) => \dds_tx09_inc2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^dds_tx09_inc\(23 downto 20),
      O(3) => \dds_tx09_inc2_carry__4_n_4\,
      O(2) => \dds_tx09_inc2_carry__4_n_5\,
      O(1) => \dds_tx09_inc2_carry__4_n_6\,
      O(0) => \dds_tx09_inc2_carry__4_n_7\,
      S(3) => \dds_tx09_inc2_carry__4_i_1_n_0\,
      S(2) => \dds_tx09_inc2_carry__4_i_2_n_0\,
      S(1) => \dds_tx09_inc2_carry__4_i_3_n_0\,
      S(0) => \dds_tx09_inc2_carry__4_i_4_n_0\
    );
\dds_tx09_inc2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(23),
      O => \dds_tx09_inc2_carry__4_i_1_n_0\
    );
\dds_tx09_inc2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(22),
      O => \dds_tx09_inc2_carry__4_i_2_n_0\
    );
\dds_tx09_inc2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(21),
      O => \dds_tx09_inc2_carry__4_i_3_n_0\
    );
\dds_tx09_inc2_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(20),
      O => \dds_tx09_inc2_carry__4_i_4_n_0\
    );
\dds_tx09_inc2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_carry__4_n_0\,
      CO(3) => \dds_tx09_inc2_carry__5_n_0\,
      CO(2) => \dds_tx09_inc2_carry__5_n_1\,
      CO(1) => \dds_tx09_inc2_carry__5_n_2\,
      CO(0) => \dds_tx09_inc2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => dds_current_inc(28 downto 26),
      DI(0) => \^dds_tx09_inc\(24),
      O(3) => \dds_tx09_inc2_carry__5_n_4\,
      O(2) => \dds_tx09_inc2_carry__5_n_5\,
      O(1) => \dds_tx09_inc2_carry__5_n_6\,
      O(0) => \dds_tx09_inc2_carry__5_n_7\,
      S(3) => \dds_tx09_inc2_carry__5_i_1_n_0\,
      S(2) => \dds_tx09_inc2_carry__5_i_2_n_0\,
      S(1) => \dds_tx09_inc2_carry__5_i_3_n_0\,
      S(0) => \dds_tx09_inc2_carry__5_i_4_n_0\
    );
\dds_tx09_inc2_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dds_current_inc(28),
      O => \dds_tx09_inc2_carry__5_i_1_n_0\
    );
\dds_tx09_inc2_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dds_current_inc(27),
      O => \dds_tx09_inc2_carry__5_i_2_n_0\
    );
\dds_tx09_inc2_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dds_current_inc(26),
      O => \dds_tx09_inc2_carry__5_i_3_n_0\
    );
\dds_tx09_inc2_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(24),
      O => \dds_tx09_inc2_carry__5_i_4_n_0\
    );
\dds_tx09_inc2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_dds_tx09_inc2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \dds_tx09_inc2_carry__6_n_2\,
      CO(0) => \dds_tx09_inc2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => dds_current_inc(30 downto 29),
      O(3) => \NLW_dds_tx09_inc2_carry__6_O_UNCONNECTED\(3),
      O(2) => \dds_tx09_inc2_carry__6_n_5\,
      O(1) => \dds_tx09_inc2_carry__6_n_6\,
      O(0) => \dds_tx09_inc2_carry__6_n_7\,
      S(3) => '0',
      S(2) => \dds_tx09_inc2_carry__6_i_1_n_0\,
      S(1) => \dds_tx09_inc2_carry__6_i_2_n_0\,
      S(0) => \dds_tx09_inc2_carry__6_i_3_n_0\
    );
\dds_tx09_inc2_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dds_current_inc(31),
      O => \dds_tx09_inc2_carry__6_i_1_n_0\
    );
\dds_tx09_inc2_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dds_current_inc(30),
      O => \dds_tx09_inc2_carry__6_i_2_n_0\
    );
\dds_tx09_inc2_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dds_current_inc(29),
      O => \dds_tx09_inc2_carry__6_i_3_n_0\
    );
dds_tx09_inc2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(0),
      O => dds_tx09_inc2_carry_i_1_n_0
    );
\dds_tx09_inc2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dds_tx09_inc2_inferred__0/i__carry_n_0\,
      CO(2) => \dds_tx09_inc2_inferred__0/i__carry_n_1\,
      CO(1) => \dds_tx09_inc2_inferred__0/i__carry_n_2\,
      CO(0) => \dds_tx09_inc2_inferred__0/i__carry_n_3\,
      CYINIT => \^dds_tx09_inc_reg[0]_0\,
      DI(3 downto 1) => \^dds_tx09_inc\(3 downto 1),
      DI(0) => '0',
      O(3) => \dds_tx09_inc2_inferred__0/i__carry_n_4\,
      O(2) => \dds_tx09_inc2_inferred__0/i__carry_n_5\,
      O(1) => \dds_tx09_inc2_inferred__0/i__carry_n_6\,
      O(0) => \dds_tx09_inc2_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \^dds_tx09_inc\(0)
    );
\dds_tx09_inc2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_inferred__0/i__carry_n_0\,
      CO(3) => \dds_tx09_inc2_inferred__0/i__carry__0_n_0\,
      CO(2) => \dds_tx09_inc2_inferred__0/i__carry__0_n_1\,
      CO(1) => \dds_tx09_inc2_inferred__0/i__carry__0_n_2\,
      CO(0) => \dds_tx09_inc2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^dds_tx09_inc\(4),
      O(3) => \dds_tx09_inc2_inferred__0/i__carry__0_n_4\,
      O(2) => \dds_tx09_inc2_inferred__0/i__carry__0_n_5\,
      O(1) => \dds_tx09_inc2_inferred__0/i__carry__0_n_6\,
      O(0) => \dds_tx09_inc2_inferred__0/i__carry__0_n_7\,
      S(3 downto 1) => \^dds_tx09_inc\(7 downto 5),
      S(0) => \i__carry__0_i_1_n_0\
    );
\dds_tx09_inc2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_inferred__0/i__carry__0_n_0\,
      CO(3) => \dds_tx09_inc2_inferred__0/i__carry__1_n_0\,
      CO(2) => \dds_tx09_inc2_inferred__0/i__carry__1_n_1\,
      CO(1) => \dds_tx09_inc2_inferred__0/i__carry__1_n_2\,
      CO(0) => \dds_tx09_inc2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \^dds_tx09_inc\(10),
      DI(1) => '0',
      DI(0) => \^dds_tx09_inc\(8),
      O(3) => \dds_tx09_inc2_inferred__0/i__carry__1_n_4\,
      O(2) => \dds_tx09_inc2_inferred__0/i__carry__1_n_5\,
      O(1) => \dds_tx09_inc2_inferred__0/i__carry__1_n_6\,
      O(0) => \dds_tx09_inc2_inferred__0/i__carry__1_n_7\,
      S(3) => \^dds_tx09_inc\(11),
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \^dds_tx09_inc\(9),
      S(0) => \i__carry__1_i_2_n_0\
    );
\dds_tx09_inc2_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_inferred__0/i__carry__1_n_0\,
      CO(3) => \dds_tx09_inc2_inferred__0/i__carry__2_n_0\,
      CO(2) => \dds_tx09_inc2_inferred__0/i__carry__2_n_1\,
      CO(1) => \dds_tx09_inc2_inferred__0/i__carry__2_n_2\,
      CO(0) => \dds_tx09_inc2_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dds_tx09_inc2_inferred__0/i__carry__2_n_4\,
      O(2) => \dds_tx09_inc2_inferred__0/i__carry__2_n_5\,
      O(1) => \dds_tx09_inc2_inferred__0/i__carry__2_n_6\,
      O(0) => \dds_tx09_inc2_inferred__0/i__carry__2_n_7\,
      S(3 downto 0) => \^dds_tx09_inc\(15 downto 12)
    );
\dds_tx09_inc2_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_inferred__0/i__carry__2_n_0\,
      CO(3) => \dds_tx09_inc2_inferred__0/i__carry__3_n_0\,
      CO(2) => \dds_tx09_inc2_inferred__0/i__carry__3_n_1\,
      CO(1) => \dds_tx09_inc2_inferred__0/i__carry__3_n_2\,
      CO(0) => \dds_tx09_inc2_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dds_tx09_inc2_inferred__0/i__carry__3_n_4\,
      O(2) => \dds_tx09_inc2_inferred__0/i__carry__3_n_5\,
      O(1) => \dds_tx09_inc2_inferred__0/i__carry__3_n_6\,
      O(0) => \dds_tx09_inc2_inferred__0/i__carry__3_n_7\,
      S(3 downto 0) => \^dds_tx09_inc\(19 downto 16)
    );
\dds_tx09_inc2_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_inferred__0/i__carry__3_n_0\,
      CO(3) => \dds_tx09_inc2_inferred__0/i__carry__4_n_0\,
      CO(2) => \dds_tx09_inc2_inferred__0/i__carry__4_n_1\,
      CO(1) => \dds_tx09_inc2_inferred__0/i__carry__4_n_2\,
      CO(0) => \dds_tx09_inc2_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dds_tx09_inc2_inferred__0/i__carry__4_n_4\,
      O(2) => \dds_tx09_inc2_inferred__0/i__carry__4_n_5\,
      O(1) => \dds_tx09_inc2_inferred__0/i__carry__4_n_6\,
      O(0) => \dds_tx09_inc2_inferred__0/i__carry__4_n_7\,
      S(3 downto 0) => \^dds_tx09_inc\(23 downto 20)
    );
\dds_tx09_inc2_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_inferred__0/i__carry__4_n_0\,
      CO(3) => \dds_tx09_inc2_inferred__0/i__carry__5_n_0\,
      CO(2) => \dds_tx09_inc2_inferred__0/i__carry__5_n_1\,
      CO(1) => \dds_tx09_inc2_inferred__0/i__carry__5_n_2\,
      CO(0) => \dds_tx09_inc2_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dds_tx09_inc2_inferred__0/i__carry__5_n_4\,
      O(2) => \dds_tx09_inc2_inferred__0/i__carry__5_n_5\,
      O(1) => \dds_tx09_inc2_inferred__0/i__carry__5_n_6\,
      O(0) => \dds_tx09_inc2_inferred__0/i__carry__5_n_7\,
      S(3 downto 1) => dds_current_inc(28 downto 26),
      S(0) => \^dds_tx09_inc\(24)
    );
\dds_tx09_inc2_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \dds_tx09_inc2_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_dds_tx09_inc2_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \dds_tx09_inc2_inferred__0/i__carry__6_n_2\,
      CO(0) => \dds_tx09_inc2_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_dds_tx09_inc2_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2) => \dds_tx09_inc2_inferred__0/i__carry__6_n_5\,
      O(1) => \dds_tx09_inc2_inferred__0/i__carry__6_n_6\,
      O(0) => \dds_tx09_inc2_inferred__0/i__carry__6_n_7\,
      S(3) => '0',
      S(2 downto 0) => dds_current_inc(31 downto 29)
    );
\dds_tx09_inc[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00022202"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \^dds_tx09_inc_reg[0]_0\,
      I2 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      O => \dds_tx09_inc[0]_i_1_n_0\
    );
\dds_tx09_inc[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__1_n_6\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__1_n_6\,
      O => \dds_tx09_inc[10]_i_1_n_0\
    );
\dds_tx09_inc[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__1_n_5\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__1_n_5\,
      O => \dds_tx09_inc[11]_i_1_n_0\
    );
\dds_tx09_inc[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__1_n_4\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__1_n_4\,
      O => \dds_tx09_inc[12]_i_1_n_0\
    );
\dds_tx09_inc[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__2_n_7\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__2_n_7\,
      O => \dds_tx09_inc[13]_i_1_n_0\
    );
\dds_tx09_inc[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__2_n_6\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__2_n_6\,
      O => \dds_tx09_inc[14]_i_1_n_0\
    );
\dds_tx09_inc[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__2_n_5\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__2_n_5\,
      O => \dds_tx09_inc[15]_i_1_n_0\
    );
\dds_tx09_inc[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc[16]_i_2_n_0\,
      O => \dds_tx09_inc[16]_i_1_n_0\
    );
\dds_tx09_inc[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EF4FEF40E040"
    )
        port map (
      I0 => \dds_tx09_inc1_carry__2_n_0\,
      I1 => \dds_tx09_inc2_carry__2_n_4\,
      I2 => \proc_DDS.state_reg_n_0_[0]\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[16]\,
      I4 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I5 => \dds_tx09_inc2_inferred__0/i__carry__2_n_4\,
      O => \dds_tx09_inc[16]_i_2_n_0\
    );
\dds_tx09_inc[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc[17]_i_2_n_0\,
      O => \dds_tx09_inc[17]_i_1_n_0\
    );
\dds_tx09_inc[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EF4FEF40E040"
    )
        port map (
      I0 => \dds_tx09_inc1_carry__2_n_0\,
      I1 => \dds_tx09_inc2_carry__3_n_7\,
      I2 => \proc_DDS.state_reg_n_0_[0]\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[17]\,
      I4 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I5 => \dds_tx09_inc2_inferred__0/i__carry__3_n_7\,
      O => \dds_tx09_inc[17]_i_2_n_0\
    );
\dds_tx09_inc[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc[18]_i_2_n_0\,
      O => \dds_tx09_inc[18]_i_1_n_0\
    );
\dds_tx09_inc[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EF4FEF40E040"
    )
        port map (
      I0 => \dds_tx09_inc1_carry__2_n_0\,
      I1 => \dds_tx09_inc2_carry__3_n_6\,
      I2 => \proc_DDS.state_reg_n_0_[0]\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[18]\,
      I4 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I5 => \dds_tx09_inc2_inferred__0/i__carry__3_n_6\,
      O => \dds_tx09_inc[18]_i_2_n_0\
    );
\dds_tx09_inc[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc[19]_i_2_n_0\,
      O => \dds_tx09_inc[19]_i_1_n_0\
    );
\dds_tx09_inc[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EF4FEF40E040"
    )
        port map (
      I0 => \dds_tx09_inc1_carry__2_n_0\,
      I1 => \dds_tx09_inc2_carry__3_n_5\,
      I2 => \proc_DDS.state_reg_n_0_[0]\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[19]\,
      I4 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I5 => \dds_tx09_inc2_inferred__0/i__carry__3_n_5\,
      O => \dds_tx09_inc[19]_i_2_n_0\
    );
\dds_tx09_inc[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry_n_7\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => dds_tx09_inc2_carry_n_7,
      O => \dds_tx09_inc[1]_i_1_n_0\
    );
\dds_tx09_inc[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc[20]_i_2_n_0\,
      O => \dds_tx09_inc[20]_i_1_n_0\
    );
\dds_tx09_inc[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EF4FEF40E040"
    )
        port map (
      I0 => \dds_tx09_inc1_carry__2_n_0\,
      I1 => \dds_tx09_inc2_carry__3_n_4\,
      I2 => \proc_DDS.state_reg_n_0_[0]\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[20]\,
      I4 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I5 => \dds_tx09_inc2_inferred__0/i__carry__3_n_4\,
      O => \dds_tx09_inc[20]_i_2_n_0\
    );
\dds_tx09_inc[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__4_n_7\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__4_n_7\,
      O => \dds_tx09_inc[21]_i_1_n_0\
    );
\dds_tx09_inc[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__4_n_6\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__4_n_6\,
      O => \dds_tx09_inc[22]_i_1_n_0\
    );
\dds_tx09_inc[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__4_n_5\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__4_n_5\,
      O => \dds_tx09_inc[23]_i_1_n_0\
    );
\dds_tx09_inc[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__4_n_4\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__4_n_4\,
      O => \dds_tx09_inc[24]_i_1_n_0\
    );
\dds_tx09_inc[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \proc_DDS.state_reg_n_0_[0]\,
      O => \dds_tx09_inc[25]_i_1_n_0\
    );
\dds_tx09_inc[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__5_n_7\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__5_n_7\,
      O => \dds_tx09_inc[25]_i_2_n_0\
    );
\dds_tx09_inc[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry_n_6\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => dds_tx09_inc2_carry_n_6,
      O => \dds_tx09_inc[2]_i_1_n_0\
    );
\dds_tx09_inc[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry_n_5\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => dds_tx09_inc2_carry_n_5,
      O => \dds_tx09_inc[3]_i_1_n_0\
    );
\dds_tx09_inc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry_n_4\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => dds_tx09_inc2_carry_n_4,
      O => \dds_tx09_inc[4]_i_1_n_0\
    );
\dds_tx09_inc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__0_n_7\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__0_n_7\,
      O => \dds_tx09_inc[5]_i_1_n_0\
    );
\dds_tx09_inc[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__0_n_6\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__0_n_6\,
      O => \dds_tx09_inc[6]_i_1_n_0\
    );
\dds_tx09_inc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__0_n_5\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__0_n_5\,
      O => \dds_tx09_inc[7]_i_1_n_0\
    );
\dds_tx09_inc[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__0_n_4\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__0_n_4\,
      O => \dds_tx09_inc[8]_i_1_n_0\
    );
\dds_tx09_inc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__1_n_7\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__1_n_7\,
      O => \dds_tx09_inc[9]_i_1_n_0\
    );
\dds_tx09_inc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[0]_i_1_n_0\,
      Q => \^dds_tx09_inc_reg[0]_0\,
      R => reset
    );
\dds_tx09_inc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[10]_i_1_n_0\,
      Q => \^dds_tx09_inc\(9),
      R => reset
    );
\dds_tx09_inc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[11]_i_1_n_0\,
      Q => \^dds_tx09_inc\(10),
      R => reset
    );
\dds_tx09_inc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[12]_i_1_n_0\,
      Q => \^dds_tx09_inc\(11),
      R => reset
    );
\dds_tx09_inc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[13]_i_1_n_0\,
      Q => \^dds_tx09_inc\(12),
      R => reset
    );
\dds_tx09_inc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[14]_i_1_n_0\,
      Q => \^dds_tx09_inc\(13),
      R => reset
    );
\dds_tx09_inc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[15]_i_1_n_0\,
      Q => \^dds_tx09_inc\(14),
      R => reset
    );
\dds_tx09_inc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[16]_i_1_n_0\,
      Q => \^dds_tx09_inc\(15),
      R => reset
    );
\dds_tx09_inc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[17]_i_1_n_0\,
      Q => \^dds_tx09_inc\(16),
      R => reset
    );
\dds_tx09_inc_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[18]_i_1_n_0\,
      Q => \^dds_tx09_inc\(17),
      R => reset
    );
\dds_tx09_inc_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[19]_i_1_n_0\,
      Q => \^dds_tx09_inc\(18),
      R => reset
    );
\dds_tx09_inc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[1]_i_1_n_0\,
      Q => \^dds_tx09_inc\(0),
      R => reset
    );
\dds_tx09_inc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[20]_i_1_n_0\,
      Q => \^dds_tx09_inc\(19),
      R => reset
    );
\dds_tx09_inc_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[21]_i_1_n_0\,
      Q => \^dds_tx09_inc\(20),
      R => reset
    );
\dds_tx09_inc_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[22]_i_1_n_0\,
      Q => \^dds_tx09_inc\(21),
      R => reset
    );
\dds_tx09_inc_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[23]_i_1_n_0\,
      Q => \^dds_tx09_inc\(22),
      R => reset
    );
\dds_tx09_inc_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[24]_i_1_n_0\,
      Q => \^dds_tx09_inc\(23),
      R => reset
    );
\dds_tx09_inc_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[25]_i_2_n_0\,
      Q => \^dds_tx09_inc\(24),
      R => reset
    );
\dds_tx09_inc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[2]_i_1_n_0\,
      Q => \^dds_tx09_inc\(1),
      R => reset
    );
\dds_tx09_inc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[3]_i_1_n_0\,
      Q => \^dds_tx09_inc\(2),
      R => reset
    );
\dds_tx09_inc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[4]_i_1_n_0\,
      Q => \^dds_tx09_inc\(3),
      R => reset
    );
\dds_tx09_inc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[5]_i_1_n_0\,
      Q => \^dds_tx09_inc\(4),
      R => reset
    );
\dds_tx09_inc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[6]_i_1_n_0\,
      Q => \^dds_tx09_inc\(5),
      R => reset
    );
\dds_tx09_inc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[7]_i_1_n_0\,
      Q => \^dds_tx09_inc\(6),
      R => reset
    );
\dds_tx09_inc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[8]_i_1_n_0\,
      Q => \^dds_tx09_inc\(7),
      R => reset
    );
\dds_tx09_inc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => \dds_tx09_inc[9]_i_1_n_0\,
      Q => \^dds_tx09_inc\(8),
      R => reset
    );
dds_tx09_ptt_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dds_tx09_ptt_i_2_n_0,
      I1 => reset,
      O => dds_tx09_ptt_i_1_n_0
    );
dds_tx09_ptt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFFFFDD00000080"
    )
        port map (
      I0 => dds_tx09_ptt_i_3_n_0,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => \dds_tx09_ptt0__14\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I5 => \^dds_tx09_ptt\,
      O => dds_tx09_ptt_i_2_n_0
    );
dds_tx09_ptt_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      O => dds_tx09_ptt_i_3_n_0
    );
dds_tx09_ptt_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => dds_tx09_ptt_i_5_n_0,
      I1 => dds_tx09_ptt_i_6_n_0,
      I2 => dds_tx09_ptt_i_7_n_0,
      I3 => dds_tx09_ptt_i_8_n_0,
      O => \dds_tx09_ptt0__14\
    );
dds_tx09_ptt_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => decoder_rx09_chAll_sql_open(2),
      I1 => decoder_rx09_chAll_sql_open(3),
      I2 => decoder_rx09_chAll_sql_open(0),
      I3 => decoder_rx09_chAll_sql_open(1),
      O => dds_tx09_ptt_i_5_n_0
    );
dds_tx09_ptt_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => decoder_rx09_chAll_sql_open(7),
      I1 => decoder_rx09_chAll_sql_open(6),
      I2 => decoder_rx09_chAll_sql_open(4),
      I3 => decoder_rx09_chAll_sql_open(5),
      O => dds_tx09_ptt_i_6_n_0
    );
dds_tx09_ptt_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => decoder_rx09_chAll_active(2),
      I1 => decoder_rx09_chAll_active(3),
      I2 => decoder_rx09_chAll_active(0),
      I3 => decoder_rx09_chAll_active(1),
      O => dds_tx09_ptt_i_7_n_0
    );
dds_tx09_ptt_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => decoder_rx09_chAll_active(7),
      I1 => decoder_rx09_chAll_active(6),
      I2 => decoder_rx09_chAll_active(4),
      I3 => decoder_rx09_chAll_active(5),
      O => dds_tx09_ptt_i_8_n_0
    );
dds_tx09_ptt_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dds_tx09_ptt_i_1_n_0,
      Q => \^dds_tx09_ptt\,
      R => '0'
    );
\encoder_tx09_in_len[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \encoder_tx09_in_len_reg_n_0_[3]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      O => \encoder_tx09_in_len[3]_i_1_n_0\
    );
\encoder_tx09_in_len[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800000800"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \dds_new_freq0__3\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      O => encoder_tx09_in_len
    );
\encoder_tx09_in_len[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \encoder_tx09_in_len_reg_n_0_[4]\,
      I1 => \encoder_tx09_in_len_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      O => \encoder_tx09_in_len[4]_i_2_n_0\
    );
\encoder_tx09_in_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_tx09_in_len,
      D => \encoder_tx09_in_len[3]_i_1_n_0\,
      Q => \encoder_tx09_in_len_reg_n_0_[3]\,
      R => reset
    );
\encoder_tx09_in_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_tx09_in_len,
      D => \encoder_tx09_in_len[4]_i_2_n_0\,
      Q => \encoder_tx09_in_len_reg_n_0_[4]\,
      R => reset
    );
\encoder_tx09_in_vec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pulldata_tx09_byteData(0),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      O => \encoder_tx09_in_vec[0]_i_1_n_0\
    );
\encoder_tx09_in_vec[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pulldata_tx09_byteData(1),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      O => \encoder_tx09_in_vec[1]_i_1_n_0\
    );
\encoder_tx09_in_vec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_tx09_in_len,
      D => \encoder_tx09_in_vec[0]_i_1_n_0\,
      Q => encoder_tx09_in_vec(0),
      R => reset
    );
\encoder_tx09_in_vec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_tx09_in_len,
      D => \encoder_tx09_in_vec[1]_i_1_n_0\,
      Q => encoder_tx09_in_vec(1),
      R => reset
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(4),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__2_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__2_n_5\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__1_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__2_n_7\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__1_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__1_n_5\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__0_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__1_n_7\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__2_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__2_n_5\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__1_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__2_n_7\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__1_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__1_n_5\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__0_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__1_n_7\,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(10),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__4_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__4_n_5\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(8),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__3_n_4\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[20]\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__4_n_7\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__3_n_6\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[18]\,
      I2 => \proc_DDS.dds_new_inc_reg_n_0_[19]\,
      I3 => \dds_tx09_inc2_inferred__0/i__carry__3_n_5\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__2_n_4\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[16]\,
      I2 => \proc_DDS.dds_new_inc_reg_n_0_[17]\,
      I3 => \dds_tx09_inc2_inferred__0/i__carry__3_n_7\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__4_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__4_n_5\,
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__3_n_4\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[20]\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__4_n_7\,
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__3_n_6\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[18]\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__3_n_5\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[19]\,
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__2_n_4\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[16]\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__3_n_7\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[17]\,
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__6_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__6_n_5\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__5_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__6_n_7\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__5_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__5_n_5\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__4_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__5_n_7\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__6_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__6_n_5\,
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__5_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__6_n_7\,
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__5_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__5_n_5\,
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__4_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__5_n_7\,
      O => \i__carry__2_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__0_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__0_n_5\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[4]\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[20]\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__0_n_7\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[2]\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[18]\,
      I2 => \proc_DDS.dds_new_inc_reg_n_0_[19]\,
      I3 => \dds_new_freq_reg_n_0_[3]\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dds_tx09_inc\(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry_n_5\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[0]\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[16]\,
      I2 => \proc_DDS.dds_new_inc_reg_n_0_[17]\,
      I3 => \dds_new_freq_reg_n_0_[1]\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^dds_tx09_inc_reg[0]_0\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry_n_7\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \proc_DDS.dds_new_inc_reg_n_0_[20]\,
      I1 => \dds_new_freq_reg_n_0_[4]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[2]\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[18]\,
      I2 => \dds_new_freq_reg_n_0_[3]\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[19]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry__0_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__0_n_5\,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \dds_new_freq_reg_n_0_[0]\,
      I1 => \proc_DDS.dds_new_inc_reg_n_0_[16]\,
      I2 => \dds_new_freq_reg_n_0_[1]\,
      I3 => \proc_DDS.dds_new_inc_reg_n_0_[17]\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry_n_4\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry__0_n_7\,
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dds_tx09_inc2_inferred__0/i__carry_n_6\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry_n_5\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dds_tx09_inc_reg[0]_0\,
      I1 => \dds_tx09_inc2_inferred__0/i__carry_n_7\,
      O => \i__carry_i_8_n_0\
    );
loop_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => loop_cnt0_carry_n_0,
      CO(2) => loop_cnt0_carry_n_1,
      CO(1) => loop_cnt0_carry_n_2,
      CO(0) => loop_cnt0_carry_n_3,
      CYINIT => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[0]\,
      DI(3) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[4]\,
      DI(2) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[3]\,
      DI(1) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[2]\,
      DI(0) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[1]\,
      O(3 downto 0) => loop_cnt0(4 downto 1),
      S(3) => loop_cnt0_carry_i_1_n_0,
      S(2) => loop_cnt0_carry_i_2_n_0,
      S(1) => loop_cnt0_carry_i_3_n_0,
      S(0) => loop_cnt0_carry_i_4_n_0
    );
\loop_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => loop_cnt0_carry_n_0,
      CO(3) => \loop_cnt0_carry__0_n_0\,
      CO(2) => \loop_cnt0_carry__0_n_1\,
      CO(1) => \loop_cnt0_carry__0_n_2\,
      CO(0) => \loop_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[8]\,
      DI(2) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[7]\,
      DI(1) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[6]\,
      DI(0) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[5]\,
      O(3 downto 0) => loop_cnt0(8 downto 5),
      S(3) => \loop_cnt0_carry__0_i_1_n_0\,
      S(2) => \loop_cnt0_carry__0_i_2_n_0\,
      S(1) => \loop_cnt0_carry__0_i_3_n_0\,
      S(0) => \loop_cnt0_carry__0_i_4_n_0\
    );
\loop_cnt0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[8]\,
      O => \loop_cnt0_carry__0_i_1_n_0\
    );
\loop_cnt0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[7]\,
      O => \loop_cnt0_carry__0_i_2_n_0\
    );
\loop_cnt0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[6]\,
      O => \loop_cnt0_carry__0_i_3_n_0\
    );
\loop_cnt0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[5]\,
      O => \loop_cnt0_carry__0_i_4_n_0\
    );
\loop_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \loop_cnt0_carry__0_n_0\,
      CO(3) => \loop_cnt0_carry__1_n_0\,
      CO(2) => \loop_cnt0_carry__1_n_1\,
      CO(1) => \loop_cnt0_carry__1_n_2\,
      CO(0) => \loop_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[12]\,
      DI(2) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[11]\,
      DI(1) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[10]\,
      DI(0) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[9]\,
      O(3 downto 0) => loop_cnt0(12 downto 9),
      S(3) => \loop_cnt0_carry__1_i_1_n_0\,
      S(2) => \loop_cnt0_carry__1_i_2_n_0\,
      S(1) => \loop_cnt0_carry__1_i_3_n_0\,
      S(0) => \loop_cnt0_carry__1_i_4_n_0\
    );
\loop_cnt0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[12]\,
      O => \loop_cnt0_carry__1_i_1_n_0\
    );
\loop_cnt0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[11]\,
      O => \loop_cnt0_carry__1_i_2_n_0\
    );
\loop_cnt0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[10]\,
      O => \loop_cnt0_carry__1_i_3_n_0\
    );
\loop_cnt0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[9]\,
      O => \loop_cnt0_carry__1_i_4_n_0\
    );
\loop_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \loop_cnt0_carry__1_n_0\,
      CO(3) => \loop_cnt0_carry__2_n_0\,
      CO(2) => \loop_cnt0_carry__2_n_1\,
      CO(1) => \loop_cnt0_carry__2_n_2\,
      CO(0) => \loop_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[16]\,
      DI(2) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[15]\,
      DI(1) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[14]\,
      DI(0) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[13]\,
      O(3 downto 0) => loop_cnt0(16 downto 13),
      S(3) => \loop_cnt0_carry__2_i_1_n_0\,
      S(2) => \loop_cnt0_carry__2_i_2_n_0\,
      S(1) => \loop_cnt0_carry__2_i_3_n_0\,
      S(0) => \loop_cnt0_carry__2_i_4_n_0\
    );
\loop_cnt0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[16]\,
      O => \loop_cnt0_carry__2_i_1_n_0\
    );
\loop_cnt0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[15]\,
      O => \loop_cnt0_carry__2_i_2_n_0\
    );
\loop_cnt0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[14]\,
      O => \loop_cnt0_carry__2_i_3_n_0\
    );
\loop_cnt0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[13]\,
      O => \loop_cnt0_carry__2_i_4_n_0\
    );
\loop_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \loop_cnt0_carry__2_n_0\,
      CO(3) => \loop_cnt0_carry__3_n_0\,
      CO(2) => \loop_cnt0_carry__3_n_1\,
      CO(1) => \loop_cnt0_carry__3_n_2\,
      CO(0) => \loop_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[20]\,
      DI(2) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[19]\,
      DI(1) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[18]\,
      DI(0) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[17]\,
      O(3 downto 0) => loop_cnt0(20 downto 17),
      S(3) => \loop_cnt0_carry__3_i_1_n_0\,
      S(2) => \loop_cnt0_carry__3_i_2_n_0\,
      S(1) => \loop_cnt0_carry__3_i_3_n_0\,
      S(0) => \loop_cnt0_carry__3_i_4_n_0\
    );
\loop_cnt0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[20]\,
      O => \loop_cnt0_carry__3_i_1_n_0\
    );
\loop_cnt0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[19]\,
      O => \loop_cnt0_carry__3_i_2_n_0\
    );
\loop_cnt0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[18]\,
      O => \loop_cnt0_carry__3_i_3_n_0\
    );
\loop_cnt0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[17]\,
      O => \loop_cnt0_carry__3_i_4_n_0\
    );
\loop_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \loop_cnt0_carry__3_n_0\,
      CO(3) => \loop_cnt0_carry__4_n_0\,
      CO(2) => \loop_cnt0_carry__4_n_1\,
      CO(1) => \loop_cnt0_carry__4_n_2\,
      CO(0) => \loop_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[24]\,
      DI(2) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[23]\,
      DI(1) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[22]\,
      DI(0) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[21]\,
      O(3 downto 0) => loop_cnt0(24 downto 21),
      S(3) => \loop_cnt0_carry__4_i_1_n_0\,
      S(2) => \loop_cnt0_carry__4_i_2_n_0\,
      S(1) => \loop_cnt0_carry__4_i_3_n_0\,
      S(0) => \loop_cnt0_carry__4_i_4_n_0\
    );
\loop_cnt0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[24]\,
      O => \loop_cnt0_carry__4_i_1_n_0\
    );
\loop_cnt0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[23]\,
      O => \loop_cnt0_carry__4_i_2_n_0\
    );
\loop_cnt0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[22]\,
      O => \loop_cnt0_carry__4_i_3_n_0\
    );
\loop_cnt0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[21]\,
      O => \loop_cnt0_carry__4_i_4_n_0\
    );
\loop_cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \loop_cnt0_carry__4_n_0\,
      CO(3) => \loop_cnt0_carry__5_n_0\,
      CO(2) => \loop_cnt0_carry__5_n_1\,
      CO(1) => \loop_cnt0_carry__5_n_2\,
      CO(0) => \loop_cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[28]\,
      DI(2) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[27]\,
      DI(1) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[26]\,
      DI(0) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[25]\,
      O(3 downto 0) => loop_cnt0(28 downto 25),
      S(3) => \loop_cnt0_carry__5_i_1_n_0\,
      S(2) => \loop_cnt0_carry__5_i_2_n_0\,
      S(1) => \loop_cnt0_carry__5_i_3_n_0\,
      S(0) => \loop_cnt0_carry__5_i_4_n_0\
    );
\loop_cnt0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[28]\,
      O => \loop_cnt0_carry__5_i_1_n_0\
    );
\loop_cnt0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[27]\,
      O => \loop_cnt0_carry__5_i_2_n_0\
    );
\loop_cnt0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[26]\,
      O => \loop_cnt0_carry__5_i_3_n_0\
    );
\loop_cnt0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[25]\,
      O => \loop_cnt0_carry__5_i_4_n_0\
    );
\loop_cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \loop_cnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_loop_cnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \loop_cnt0_carry__6_n_2\,
      CO(0) => \loop_cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[30]\,
      DI(0) => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[29]\,
      O(3) => \NLW_loop_cnt0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => loop_cnt0(31 downto 29),
      S(3) => '0',
      S(2) => \loop_cnt0_carry__6_i_1_n_0\,
      S(1) => \loop_cnt0_carry__6_i_2_n_0\,
      S(0) => \loop_cnt0_carry__6_i_3_n_0\
    );
\loop_cnt0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[31]\,
      O => \loop_cnt0_carry__6_i_1_n_0\
    );
\loop_cnt0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[30]\,
      O => \loop_cnt0_carry__6_i_2_n_0\
    );
\loop_cnt0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[29]\,
      O => \loop_cnt0_carry__6_i_3_n_0\
    );
loop_cnt0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[4]\,
      O => loop_cnt0_carry_i_1_n_0
    );
loop_cnt0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[3]\,
      O => loop_cnt0_carry_i_2_n_0
    );
loop_cnt0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[2]\,
      O => loop_cnt0_carry_i_3_n_0
    );
loop_cnt0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[1]\,
      O => loop_cnt0_carry_i_4_n_0
    );
\proc_DDS.dds_current_inc[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__5_n_6\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__5_n_6\,
      O => p_1_in(26)
    );
\proc_DDS.dds_current_inc[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__5_n_5\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__5_n_5\,
      O => p_1_in(27)
    );
\proc_DDS.dds_current_inc[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__5_n_4\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__5_n_4\,
      O => p_1_in(28)
    );
\proc_DDS.dds_current_inc[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__6_n_7\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__6_n_7\,
      O => p_1_in(29)
    );
\proc_DDS.dds_current_inc[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__6_n_6\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__6_n_6\,
      O => p_1_in(30)
    );
\proc_DDS.dds_current_inc[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020AA2000200020"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I2 => \dds_tx09_inc2_inferred__0/i__carry__6_n_5\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      I4 => \dds_tx09_inc1_carry__2_n_0\,
      I5 => \dds_tx09_inc2_carry__6_n_5\,
      O => p_1_in(31)
    );
\proc_DDS.dds_current_inc_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => p_1_in(26),
      Q => dds_current_inc(26),
      R => reset
    );
\proc_DDS.dds_current_inc_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => p_1_in(27),
      Q => dds_current_inc(27),
      R => reset
    );
\proc_DDS.dds_current_inc_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => p_1_in(28),
      Q => dds_current_inc(28),
      R => reset
    );
\proc_DDS.dds_current_inc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => p_1_in(29),
      Q => dds_current_inc(29),
      R => reset
    );
\proc_DDS.dds_current_inc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => p_1_in(30),
      Q => dds_current_inc(30),
      R => reset
    );
\proc_DDS.dds_current_inc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dds_tx09_inc[25]_i_1_n_0\,
      D => p_1_in(31),
      Q => dds_current_inc(31),
      R => reset
    );
\proc_DDS.dds_new_inc[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => dds_current_freq0_carry_n_2,
      I2 => \proc_DDS.state_reg_n_0_[0]\,
      O => dds_new_inc
    );
\proc_DDS.dds_new_inc[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[0]\,
      I1 => \dds_new_freq_reg_n_0_[0]\,
      O => \proc_DDS.dds_new_inc[16]_i_2_n_0\
    );
\proc_DDS.dds_new_inc[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[0]\,
      I1 => \dds_new_freq_reg_n_0_[1]\,
      O => \proc_DDS.dds_new_inc[17]_i_1_n_0\
    );
\proc_DDS.dds_new_inc[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[0]\,
      I1 => \dds_new_freq_reg_n_0_[2]\,
      O => \proc_DDS.dds_new_inc[18]_i_1_n_0\
    );
\proc_DDS.dds_new_inc[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[0]\,
      I1 => \dds_new_freq_reg_n_0_[3]\,
      O => \proc_DDS.dds_new_inc[19]_i_1_n_0\
    );
\proc_DDS.dds_new_inc[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[0]\,
      I1 => \dds_new_freq_reg_n_0_[4]\,
      O => \proc_DDS.dds_new_inc[20]_i_1_n_0\
    );
\proc_DDS.dds_new_inc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_inc,
      D => \proc_DDS.dds_new_inc[16]_i_2_n_0\,
      Q => \proc_DDS.dds_new_inc_reg_n_0_[16]\,
      R => reset
    );
\proc_DDS.dds_new_inc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_inc,
      D => \proc_DDS.dds_new_inc[17]_i_1_n_0\,
      Q => \proc_DDS.dds_new_inc_reg_n_0_[17]\,
      R => reset
    );
\proc_DDS.dds_new_inc_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_inc,
      D => \proc_DDS.dds_new_inc[18]_i_1_n_0\,
      Q => \proc_DDS.dds_new_inc_reg_n_0_[18]\,
      R => reset
    );
\proc_DDS.dds_new_inc_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_inc,
      D => \proc_DDS.dds_new_inc[19]_i_1_n_0\,
      Q => \proc_DDS.dds_new_inc_reg_n_0_[19]\,
      R => reset
    );
\proc_DDS.dds_new_inc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dds_new_inc,
      D => \proc_DDS.dds_new_inc[20]_i_1_n_0\,
      Q => \proc_DDS.dds_new_inc_reg_n_0_[20]\,
      R => reset
    );
\proc_DDS.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFF0"
    )
        port map (
      I0 => \proc_DDS.state_reg_n_0_[1]\,
      I1 => \state1_inferred__0/i__carry_n_1\,
      I2 => \proc_DDS.state[0]_i_2_n_0\,
      I3 => \proc_DDS.state_reg_n_0_[0]\,
      O => \proc_DDS.state[0]_i_1_n_0\
    );
\proc_DDS.state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB833"
    )
        port map (
      I0 => \dds_tx09_inc1_carry__2_n_0\,
      I1 => \proc_DDS.state_reg_n_0_[0]\,
      I2 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I3 => \proc_DDS.state_reg_n_0_[1]\,
      I4 => dds_current_freq0_carry_n_2,
      I5 => reset,
      O => \proc_DDS.state[0]_i_2_n_0\
    );
\proc_DDS.state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0047CC4700"
    )
        port map (
      I0 => \dds_tx09_inc1_carry__2_n_0\,
      I1 => \proc_DDS.state_reg_n_0_[0]\,
      I2 => \dds_tx09_inc1_inferred__0/i__carry__2_n_0\,
      I3 => \proc_DDS.state_reg_n_0_[1]\,
      I4 => dds_current_freq0_carry_n_2,
      I5 => reset,
      O => \proc_DDS.state[1]_i_1_n_0\
    );
\proc_DDS.state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \proc_DDS.state[0]_i_1_n_0\,
      Q => \proc_DDS.state_reg_n_0_[0]\,
      R => '0'
    );
\proc_DDS.state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \proc_DDS.state[1]_i_1_n_0\,
      Q => \proc_DDS.state_reg_n_0_[1]\,
      R => '0'
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C2CCCCCC"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_2_n_0\,
      I5 => reset,
      O => \proc_UFBmod_Encoder_tx09.byteBit_cnt[0]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAAA8AAA"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_2_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.byteBit_cnt[1]_i_2_n_0\,
      I5 => reset,
      O => \proc_UFBmod_Encoder_tx09.byteBit_cnt[1]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[1]\,
      O => \proc_UFBmod_Encoder_tx09.byteBit_cnt[1]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAAA8AAA"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[2]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_2_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_3_n_0\,
      I5 => reset,
      O => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F1010000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4_n_0\,
      I1 => data0,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I3 => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_4_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      O => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_3_n_0\
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dds_new_freq0__3\,
      I1 => \proc_UFBmod_Encoder_tx09.byteBit_sub_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_4_n_0\
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \proc_UFBmod_Encoder_tx09.byteBit_cnt[0]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[0]\,
      R => '0'
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \proc_UFBmod_Encoder_tx09.byteBit_cnt[1]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[1]\,
      R => '0'
    );
\proc_UFBmod_Encoder_tx09.byteBit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \proc_UFBmod_Encoder_tx09.byteBit_cnt[2]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[2]\,
      R => '0'
    );
\proc_UFBmod_Encoder_tx09.byteBit_sub[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009AAA8AAA"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.byteBit_sub_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.byteBit_sub[0]_i_2_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I5 => reset,
      O => \proc_UFBmod_Encoder_tx09.byteBit_sub[0]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.byteBit_sub[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F1010000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4_n_0\,
      I1 => data0,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I3 => byteBit_sub1_out,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      O => \proc_UFBmod_Encoder_tx09.byteBit_sub[0]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.byteBit_sub[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[4]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[2]\,
      I5 => \byteBit_cnt1__2\,
      O => byteBit_sub1_out
    );
\proc_UFBmod_Encoder_tx09.byteBit_sub_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \proc_UFBmod_Encoder_tx09.byteBit_sub[0]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.byteBit_sub_reg_n_0_[0]\,
      R => '0'
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulldata_tx09_byteData(4),
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_initial_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_1_n_0\,
      D => pulldata_tx09_byteData(0),
      Q => encoder_frq_initial(0),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_initial_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_1_n_0\,
      D => pulldata_tx09_byteData(1),
      Q => encoder_frq_initial(1),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_initial_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_1_n_0\,
      D => pulldata_tx09_byteData(2),
      Q => encoder_frq_initial(2),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_initial_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_1_n_0\,
      D => pulldata_tx09_byteData(3),
      Q => encoder_frq_initial(3),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_initial_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_1_n_0\,
      D => \proc_UFBmod_Encoder_tx09.encoder_frq_initial[4]_i_2_n_0\,
      Q => encoder_frq_initial(4),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AEA"
    )
        port map (
      I0 => encoder_frq_initial(0),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \byteBit_cnt1__2\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[0]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AEAEA2A"
    )
        port map (
      I0 => encoder_frq_initial(1),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \byteBit_cnt1__2\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[1]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[1]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA2A"
    )
        port map (
      I0 => encoder_frq_initial(2),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \byteBit_cnt1__2\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[2]_i_2_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[2]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[2]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA2A"
    )
        port map (
      I0 => encoder_frq_initial(3),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \byteBit_cnt1__2\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[3]_i_2_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[3]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1DE2E21D"
    )
        port map (
      I0 => encoder_tx09_in_vec(1),
      I1 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      I2 => encoder_tx09_in_vec(0),
      I3 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_8_n_0\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[3]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88008B33"
    )
        port map (
      I0 => \dds_new_freq0__3\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_3_n_0\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4_n_0\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_5_n_0\,
      I4 => data0,
      O => encoder_frq_last
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA2A"
    )
        port map (
      I0 => encoder_frq_initial(4),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \byteBit_cnt1__2\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_7_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBEFFF"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_3_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[4]\,
      I4 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[3]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_5_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[2]\,
      I1 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.byteBit_cnt_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.byteBit_sub_reg_n_0_[0]\,
      O => \byteBit_cnt1__2\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FFFFB8B8000047"
    )
        port map (
      I0 => encoder_tx09_in_vec(0),
      I1 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      I2 => encoder_tx09_in_vec(1),
      I3 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_8_n_0\,
      I5 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_7_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_8_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_frq_last,
      D => \proc_UFBmod_Encoder_tx09.encoder_frq_last[0]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[0]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_frq_last,
      D => \proc_UFBmod_Encoder_tx09.encoder_frq_last[1]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[1]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_frq_last,
      D => \proc_UFBmod_Encoder_tx09.encoder_frq_last[2]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[2]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_frq_last,
      D => \proc_UFBmod_Encoder_tx09.encoder_frq_last[3]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[3]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_frq_last_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_frq_last,
      D => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_2_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_frq_last_reg_n_0_[4]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[0]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0090"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[1]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E100"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[2]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DD1"
    )
        port map (
      I0 => \encoder_tx09_in_len_reg_n_0_[3]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[3]_i_2_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[3]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[3]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F606"
    )
        port map (
      I0 => \encoder_tx09_in_len_reg_n_0_[4]\,
      I1 => \encoder_tx09_in_len_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_5_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I1 => data0,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_3_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044400000004000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I2 => \dds_new_freq0__3\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I5 => p_1_out,
      O => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_4_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[3]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[2]\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[1]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_5_n_0\
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_tx09_in_len_cnt,
      D => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[0]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_tx09_in_len_cnt,
      D => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[1]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[1]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_tx09_in_len_cnt,
      D => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[2]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[2]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_tx09_in_len_cnt,
      D => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[3]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[3]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_tx09_in_len_cnt,
      D => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_2_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[4]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_3_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt[4]_i_4_n_0\,
      O => encoder_tx09_in_len_cnt,
      S => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[0]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222222F"
    )
        port map (
      I0 => loop_cnt0(10),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[10]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(11),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[11]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE00"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I4 => loop_cnt0(12),
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[12]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => loop_cnt0(13),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[13]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222222F"
    )
        port map (
      I0 => loop_cnt0(14),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[14]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(15),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[15]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(16),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[16]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(17),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[17]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(18),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[18]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(19),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[19]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(1),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[1]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(20),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[20]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(21),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[21]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(22),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[22]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(23),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[23]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(24),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[24]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(25),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[25]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(26),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[26]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(27),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[27]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(28),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[28]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(29),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[29]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(2),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[2]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(30),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[30]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data0,
      I1 => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_4_n_0\,
      I2 => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_5_n_0\,
      O => loop_cnt
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[30]\,
      I1 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[31]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_10_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[2]\,
      I2 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[0]\,
      I3 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[4]\,
      I4 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[5]\,
      I5 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[3]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_11_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(31),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_6_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_7_n_0\,
      I2 => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_8_n_0\,
      I3 => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_9_n_0\,
      I4 => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_10_n_0\,
      I5 => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_11_n_0\,
      O => data0
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"050E0060"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_4_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800CC00000C00"
    )
        port map (
      I0 => \dds_new_freq0__3\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_5_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[25]\,
      I1 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[26]\,
      I2 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[24]\,
      I3 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[28]\,
      I4 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[29]\,
      I5 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[27]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_6_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[7]\,
      I1 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[8]\,
      I2 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[6]\,
      I3 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[10]\,
      I4 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[11]\,
      I5 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[9]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_7_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[19]\,
      I1 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[20]\,
      I2 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[18]\,
      I3 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[22]\,
      I4 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[23]\,
      I5 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[21]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_8_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[13]\,
      I1 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[14]\,
      I2 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[12]\,
      I3 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[16]\,
      I4 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[17]\,
      I5 => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[15]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_9_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(3),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[3]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(4),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[4]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(5),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[5]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(6),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[6]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(7),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[7]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => loop_cnt0(8),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[8]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE00"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I4 => loop_cnt0(9),
      O => \proc_UFBmod_Encoder_tx09.loop_cnt[9]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[0]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[0]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[10]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[10]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[11]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[11]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[12]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[12]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[13]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[13]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[14]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[14]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[15]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[15]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[16]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[16]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[17]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[17]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[18]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[18]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[19]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[19]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[1]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[1]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[20]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[20]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[21]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[21]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[22]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[22]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[23]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[23]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[24]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[24]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[25]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[25]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[26]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[26]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[27]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[27]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[28]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[28]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[29]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[29]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[2]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[2]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[30]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[30]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[31]_i_2_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[31]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[3]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[3]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[4]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[4]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[5]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[5]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[6]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[6]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[7]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[7]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[8]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[8]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.loop_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => loop_cnt,
      D => \proc_UFBmod_Encoder_tx09.loop_cnt[9]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.loop_cnt_reg_n_0_[9]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.preIdx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.preIdx[0]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.preIdx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1400"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.preIdx[1]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.preIdx[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15400000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      I3 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[2]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.preIdx[2]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.preIdx[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555400000000000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[2]\,
      I4 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[3]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.preIdx[3]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.preIdx[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_3_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.preIdx[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15400000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_4_n_0\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[4]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      O => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.preIdx[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030003000000FA0"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4_n_0\,
      I1 => \dds_new_freq0__3\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I4 => data0,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_3_n_0\
    );
\proc_UFBmod_Encoder_tx09.preIdx[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[2]\,
      I1 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\,
      I2 => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_4_n_0\
    );
\proc_UFBmod_Encoder_tx09.preIdx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_1_n_0\,
      D => \proc_UFBmod_Encoder_tx09.preIdx[0]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[0]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.preIdx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_1_n_0\,
      D => \proc_UFBmod_Encoder_tx09.preIdx[1]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[1]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.preIdx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_1_n_0\,
      D => \proc_UFBmod_Encoder_tx09.preIdx[2]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[2]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.preIdx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_1_n_0\,
      D => \proc_UFBmod_Encoder_tx09.preIdx[3]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[3]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.preIdx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_1_n_0\,
      D => \proc_UFBmod_Encoder_tx09.preIdx[4]_i_2_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.preIdx_reg_n_0_[4]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.pull_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => sel0(0),
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I2 => encoder_pull_data_len(0),
      O => pull_cnt(0)
    );
\proc_UFBmod_Encoder_tx09.pull_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I3 => encoder_pull_data_len(1),
      O => pull_cnt(1)
    );
\proc_UFBmod_Encoder_tx09.pull_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I4 => encoder_pull_data_len(2),
      O => pull_cnt(2)
    );
\proc_UFBmod_Encoder_tx09.pull_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I5 => encoder_pull_data_len(3),
      O => pull_cnt(3)
    );
\proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10100100"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      O => \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF10FFFFEF100000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I5 => encoder_pull_data_len(4),
      O => pull_cnt(4)
    );
\proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_3_n_0\
    );
\proc_UFBmod_Encoder_tx09.pull_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_1_n_0\,
      D => pull_cnt(0),
      Q => sel0(0),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.pull_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_1_n_0\,
      D => pull_cnt(1),
      Q => sel0(1),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.pull_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_1_n_0\,
      D => pull_cnt(2),
      Q => sel0(2),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.pull_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_1_n_0\,
      D => pull_cnt(3),
      Q => sel0(3),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.pull_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_1_n_0\,
      D => pull_cnt(4),
      Q => sel0(4),
      R => reset
    );
\proc_UFBmod_Encoder_tx09.state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055575500000000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I5 => \proc_UFBmod_Encoder_tx09.state[0]_i_2_n_0\,
      O => \proc_UFBmod_Encoder_tx09.state[0]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557FF555557"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => encoder_pull_FIFO_dump,
      I2 => state2,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I5 => \dds_new_freq0__3\,
      O => \proc_UFBmod_Encoder_tx09.state[0]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020002"
    )
        port map (
      I0 => encoder_pull_do_start,
      I1 => encoder_pull_data_len(2),
      I2 => encoder_pull_data_len(4),
      I3 => encoder_pull_data_len(3),
      I4 => encoder_pull_data_len(1),
      I5 => encoder_pull_data_len(0),
      O => state2
    );
\proc_UFBmod_Encoder_tx09.state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003C80"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.state[1]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01015515"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \dds_new_freq0__3\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.state[1]_i_3_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I1 => \proc_UFBmod_Encoder_tx09.state[2]_i_2_n_0\,
      O => \proc_UFBmod_Encoder_tx09.state[2]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FF0AFF88FF"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_frq_last[4]_i_4_n_0\,
      I2 => \dds_new_freq0__3\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      O => \proc_UFBmod_Encoder_tx09.state[2]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000075FF8800"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I2 => \dds_new_freq0__3\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      O => \proc_UFBmod_Encoder_tx09.state[3]_i_1_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state[4]_i_3_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state[4]_i_4_n_0\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.state[4]_i_5_n_0\,
      O => state
    );
\proc_UFBmod_Encoder_tx09.state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000400400"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I5 => \dds_new_freq0__3\,
      O => \proc_UFBmod_Encoder_tx09.state[4]_i_2_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCC4447"
    )
        port map (
      I0 => data0,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I2 => encoder_pull_do_start,
      I3 => encoder_pull_FIFO_dump,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      O => \proc_UFBmod_Encoder_tx09.state[4]_i_3_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => p_1_out,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => data0,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I5 => \proc_UFBmod_Encoder_tx09.state[4]_i_8_n_0\,
      O => \proc_UFBmod_Encoder_tx09.state[4]_i_4_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F700F70707F7070"
    )
        port map (
      I0 => data0,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I4 => \dds_tx09_ptt0__14\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      O => \proc_UFBmod_Encoder_tx09.state[4]_i_5_n_0\
    );
\proc_UFBmod_Encoder_tx09.state[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[2]\,
      I1 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[0]\,
      I2 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[1]\,
      I3 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[3]\,
      I4 => \proc_UFBmod_Encoder_tx09.encoder_tx09_in_len_cnt_reg_n_0_[4]\,
      O => \dds_new_freq0__3\
    );
\proc_UFBmod_Encoder_tx09.state[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => sel0(1),
      O => p_1_out
    );
\proc_UFBmod_Encoder_tx09.state[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55545555"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I1 => state2,
      I2 => encoder_pull_FIFO_dump,
      I3 => encoder_pull_do_start,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      O => \proc_UFBmod_Encoder_tx09.state[4]_i_8_n_0\
    );
\proc_UFBmod_Encoder_tx09.state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state,
      D => \proc_UFBmod_Encoder_tx09.state[0]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state,
      D => \proc_UFBmod_Encoder_tx09.state_reg[1]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.state_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \proc_UFBmod_Encoder_tx09.state[1]_i_2_n_0\,
      I1 => \proc_UFBmod_Encoder_tx09.state[1]_i_3_n_0\,
      O => \proc_UFBmod_Encoder_tx09.state_reg[1]_i_1_n_0\,
      S => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\
    );
\proc_UFBmod_Encoder_tx09.state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state,
      D => \proc_UFBmod_Encoder_tx09.state[2]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state,
      D => \proc_UFBmod_Encoder_tx09.state[3]_i_1_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      R => reset
    );
\proc_UFBmod_Encoder_tx09.state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state,
      D => \proc_UFBmod_Encoder_tx09.state[4]_i_2_n_0\,
      Q => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      R => reset
    );
pulldata_tx09_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAEAAA2"
    )
        port map (
      I0 => \^pulldata_tx09_en\,
      I1 => pulldata_tx09_en_i_2_n_0,
      I2 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[3]\,
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[4]\,
      I4 => pulldata_tx09_en_i_3_n_0,
      I5 => reset,
      O => pulldata_tx09_en_i_1_n_0
    );
pulldata_tx09_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000CCFFCCFF"
    )
        port map (
      I0 => pulldata_tx09_en_i_4_n_0,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      I2 => sel0(2),
      I3 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I4 => \proc_UFBmod_Encoder_tx09.pull_cnt[4]_i_3_n_0\,
      I5 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      O => pulldata_tx09_en_i_2_n_0
    );
pulldata_tx09_en_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55540000"
    )
        port map (
      I0 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[2]\,
      I1 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[0]\,
      I2 => encoder_pull_do_start,
      I3 => encoder_pull_FIFO_dump,
      I4 => \proc_UFBmod_Encoder_tx09.state_reg_n_0_[1]\,
      O => pulldata_tx09_en_i_3_n_0
    );
pulldata_tx09_en_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      O => pulldata_tx09_en_i_4_n_0
    );
pulldata_tx09_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pulldata_tx09_en_i_1_n_0,
      Q => \^pulldata_tx09_en\,
      R => '0'
    );
\state1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_state1_inferred__0/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \state1_inferred__0/i__carry_n_1\,
      CO(1) => \state1_inferred__0/i__carry_n_2\,
      CO(0) => \state1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_1__1_n_0\,
      DI(1) => \i__carry_i_2__1_n_0\,
      DI(0) => \i__carry_i_3__1_n_0\,
      O(3 downto 0) => \NLW_state1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_4__0_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => \i__carry_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    decoder_rx09_chAll_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chAll_active : in STD_LOGIC_VECTOR ( 7 downto 0 );
    encoder_pull_FIFO_dump : in STD_LOGIC;
    encoder_pull_do_start : in STD_LOGIC;
    encoder_pull_data_len : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pulldata_tx09_en : out STD_LOGIC;
    pulldata_tx09_byteData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dds_tx09_inc : out STD_LOGIC_VECTOR ( 25 downto 0 );
    dds_tx09_ptt : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 : entity is "UFBmod_Encoder_UFBmod_tx09_Encoder_0_0,UFBmod_tx09_Encoder_FSM,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 : entity is "UFBmod_Encoder_UFBmod_tx09_Encoder_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 : entity is "UFBmod_tx09_Encoder_FSM,Vivado 2020.2";
end UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0;

architecture STRUCTURE of UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN UFBmod_Encoder_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.UFBmod_Encoder_UFBmod_tx09_Encoder_FSM
     port map (
      clk => clk,
      dds_tx09_inc(24 downto 0) => dds_tx09_inc(25 downto 1),
      \dds_tx09_inc_reg[0]_0\ => dds_tx09_inc(0),
      dds_tx09_ptt => dds_tx09_ptt,
      decoder_rx09_chAll_active(7 downto 0) => decoder_rx09_chAll_active(7 downto 0),
      decoder_rx09_chAll_sql_open(7 downto 0) => decoder_rx09_chAll_sql_open(7 downto 0),
      encoder_pull_FIFO_dump => encoder_pull_FIFO_dump,
      encoder_pull_data_len(4 downto 0) => encoder_pull_data_len(4 downto 0),
      encoder_pull_do_start => encoder_pull_do_start,
      pulldata_tx09_byteData(4 downto 0) => pulldata_tx09_byteData(4 downto 0),
      pulldata_tx09_en => pulldata_tx09_en,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_Encoder is
  port (
    TRX_dds_tx_rf09_inc : out STD_LOGIC_VECTOR ( 25 downto 0 );
    TRX_dds_tx_rf09_ptt : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    decoder_rx09_chAll_active : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chAll_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 );
    encoder_pull_FIFO_dump : in STD_LOGIC;
    encoder_pull_data_len : in STD_LOGIC_VECTOR ( 6 downto 0 );
    encoder_pull_do_start : in STD_LOGIC;
    pulldata_tx09_byteData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pulldata_tx09_en : out STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UFBmod_Encoder : entity is true;
  attribute hw_handoff : string;
  attribute hw_handoff of UFBmod_Encoder : entity is "UFBmod_Encoder.hwdef";
end UFBmod_Encoder;

architecture STRUCTURE of UFBmod_Encoder is
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UFBmod_tx09_Encoder_0 : label is "UFBmod_Encoder_UFBmod_tx09_Encoder_0_0,UFBmod_tx09_Encoder_FSM,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of UFBmod_tx09_Encoder_0 : label is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of UFBmod_tx09_Encoder_0 : label is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of UFBmod_tx09_Encoder_0 : label is "UFBmod_tx09_Encoder_FSM,Vivado 2020.2";
  attribute x_interface_info : string;
  attribute x_interface_info of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET reset_100MHz, CLK_DOMAIN UFBmod_Encoder_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute x_interface_info of reset_100MHz : signal is "xilinx.com:signal:reset:1.0 RST.RESET_100MHZ RST";
  attribute x_interface_parameter of reset_100MHz : signal is "XIL_INTERFACENAME RST.RESET_100MHZ, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of TRX_dds_tx_rf09_inc : signal is "xilinx.com:signal:data:1.0 DATA.TRX_DDS_TX_RF09_INC DATA";
  attribute x_interface_parameter of TRX_dds_tx_rf09_inc : signal is "XIL_INTERFACENAME DATA.TRX_DDS_TX_RF09_INC, LAYERED_METADATA undef";
  attribute x_interface_info of encoder_pull_data_len : signal is "xilinx.com:signal:data:1.0 DATA.ENCODER_PULL_DATA_LEN DATA";
  attribute x_interface_parameter of encoder_pull_data_len : signal is "XIL_INTERFACENAME DATA.ENCODER_PULL_DATA_LEN, LAYERED_METADATA undef";
  attribute x_interface_info of pulldata_tx09_byteData : signal is "xilinx.com:signal:data:1.0 DATA.PULLDATA_TX09_BYTEDATA DATA";
  attribute x_interface_parameter of pulldata_tx09_byteData : signal is "XIL_INTERFACENAME DATA.PULLDATA_TX09_BYTEDATA, LAYERED_METADATA undef";
begin
UFBmod_tx09_Encoder_0: entity work.UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0
     port map (
      clk => clk_100MHz,
      dds_tx09_inc(25 downto 0) => TRX_dds_tx_rf09_inc(25 downto 0),
      dds_tx09_ptt => TRX_dds_tx_rf09_ptt,
      decoder_rx09_chAll_active(7 downto 0) => decoder_rx09_chAll_active(7 downto 0),
      decoder_rx09_chAll_sql_open(7 downto 0) => decoder_rx09_chAll_sql_open(7 downto 0),
      encoder_pull_FIFO_dump => encoder_pull_FIFO_dump,
      encoder_pull_data_len(6 downto 5) => B"00",
      encoder_pull_data_len(4 downto 0) => encoder_pull_data_len(4 downto 0),
      encoder_pull_do_start => encoder_pull_do_start,
      pulldata_tx09_byteData(7 downto 5) => B"000",
      pulldata_tx09_byteData(4 downto 0) => pulldata_tx09_byteData(4 downto 0),
      pulldata_tx09_en => pulldata_tx09_en,
      reset => reset_100MHz
    );
end STRUCTURE;
