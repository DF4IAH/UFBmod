-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Mon Aug 26 02:15:49 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_mb_0_axi_intc_0 -prefix
--               mcu_mb_0_axi_intc_0_ mcu_mb_0_axi_intc_0_sim_netlist.vhdl
-- Design      : mcu_mb_0_axi_intc_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_mb_0_axi_intc_0_address_decoder is
  port (
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    Bus_RNW_reg_reg_7 : out STD_LOGIC;
    Bus_RNW_reg_reg_8 : out STD_LOGIC;
    Bus_RNW_reg_reg_9 : out STD_LOGIC;
    Bus_RNW_reg_reg_10 : out STD_LOGIC;
    Bus_RNW_reg_reg_11 : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    isr_en : out STD_LOGIC;
    ip2bus_rdack_reg : out STD_LOGIC;
    ip2bus_wrack_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    Bus_RNW_reg_reg_12 : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    Or128_vec2stdlogic19_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[4]\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_13 : out STD_LOGIC;
    Bus_RNW_reg_reg_14 : out STD_LOGIC;
    Bus_RNW_reg_reg_15 : out STD_LOGIC;
    Bus_RNW_reg_reg_16 : out STD_LOGIC;
    Bus_RNW_reg_reg_17 : out STD_LOGIC;
    Bus_RNW_reg_reg_18 : out STD_LOGIC;
    Bus_RNW_reg_reg_19 : out STD_LOGIC;
    Bus_RNW_reg_reg_20 : out STD_LOGIC;
    Bus_RNW_reg_reg_21 : out STD_LOGIC;
    Bus_RNW_reg_reg_22 : out STD_LOGIC;
    Bus_RNW_reg_reg_23 : out STD_LOGIC;
    Bus_RNW_reg_reg_24 : out STD_LOGIC;
    \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\ : out STD_LOGIC;
    \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\ : out STD_LOGIC;
    \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\ : out STD_LOGIC;
    \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\ : out STD_LOGIC;
    \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\ : out STD_LOGIC;
    \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\ : out STD_LOGIC;
    \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\ : out STD_LOGIC;
    \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\ : out STD_LOGIC;
    \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\ : out STD_LOGIC;
    \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\ : out STD_LOGIC;
    \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\ : out STD_LOGIC;
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : in STD_LOGIC;
    p_0_in21_in : in STD_LOGIC;
    p_0_in19_in : in STD_LOGIC;
    p_0_in17_in : in STD_LOGIC;
    p_0_in15_in : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    p_0_in11_in : in STD_LOGIC;
    p_0_in9_in : in STD_LOGIC;
    p_0_in7_in : in STD_LOGIC;
    p_0_in5_in : in STD_LOGIC;
    p_0_in3_in : in STD_LOGIC;
    p_0_in1_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready_0 : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    s_axi_wready : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axi_rdata_i_reg[1]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_2\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_2\ : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    \mer_int_reg[0]\ : in STD_LOGIC;
    p_0_in56_in : in STD_LOGIC;
    p_0_in54_in : in STD_LOGIC;
    p_0_in52_in : in STD_LOGIC;
    p_0_in50_in : in STD_LOGIC;
    p_0_in48_in : in STD_LOGIC;
    p_0_in46_in : in STD_LOGIC;
    p_0_in44_in : in STD_LOGIC;
    p_0_in42_in : in STD_LOGIC;
    p_0_in40_in : in STD_LOGIC;
    p_0_in38_in : in STD_LOGIC;
    p_0_in36_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : in STD_LOGIC;
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ : in STD_LOGIC;
    p_0_in2_in : in STD_LOGIC;
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ : in STD_LOGIC;
    p_0_in8_in : in STD_LOGIC;
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ : in STD_LOGIC;
    p_0_in14_in : in STD_LOGIC;
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ : in STD_LOGIC;
    p_0_in20_in : in STD_LOGIC;
    p_0_in23_in : in STD_LOGIC;
    p_0_in26_in : in STD_LOGIC;
    p_0_in29_in : in STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ : in STD_LOGIC;
    Bus_RNW_reg_reg_25 : in STD_LOGIC
  );
end mcu_mb_0_axi_intc_0_address_decoder;

architecture STRUCTURE of mcu_mb_0_axi_intc_0_address_decoder is
  signal Bus_RNW_reg : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_12\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \^or128_vec2stdlogic19_out\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[4]\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[5]\ : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^ip2bus_rdack_reg\ : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_2_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_3_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_4_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_5_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_6_n_0 : STD_LOGIC;
  signal \^ip2bus_wrack_reg\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal pselect_hit_i_1 : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_7_n_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \REG_GEN[0].IMR_FAST_MODE_GEN.imr[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \REG_GEN[0].ier[0]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \REG_GEN[0].isr[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ip2bus_wrack_int_d1_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mer_int[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mer_int[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[17]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[19]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[22]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[23]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[24]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[25]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[26]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[27]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[28]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[29]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[30]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_7\ : label is "soft_lutpair9";
begin
  Bus_RNW_reg_reg_12 <= \^bus_rnw_reg_reg_12\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\;
  Or128_vec2stdlogic19_out <= \^or128_vec2stdlogic19_out\;
  \bus2ip_addr_i_reg[4]\ <= \^bus2ip_addr_i_reg[4]\;
  \bus2ip_addr_i_reg[5]\ <= \^bus2ip_addr_i_reg[5]\;
  ip2bus_rdack_reg <= \^ip2bus_rdack_reg\;
  ip2bus_wrack_reg <= \^ip2bus_wrack_reg\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Bus_RNW_reg_reg_25,
      I1 => Q,
      I2 => Bus_RNW_reg,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => Bus_RNW_reg,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[0].cie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(0),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      O => Bus_RNW_reg_reg_24
    );
\CIE_GEN.CIE_BIT_GEN[10].cie[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(10),
      I3 => s_axi_aresetn,
      I4 => p_0_in38_in,
      O => Bus_RNW_reg_reg_22
    );
\CIE_GEN.CIE_BIT_GEN[11].cie[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(11),
      I3 => s_axi_aresetn,
      I4 => p_0_in36_in,
      O => Bus_RNW_reg_reg_23
    );
\CIE_GEN.CIE_BIT_GEN[1].cie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(1),
      I3 => s_axi_aresetn,
      I4 => p_0_in56_in,
      O => Bus_RNW_reg_reg_13
    );
\CIE_GEN.CIE_BIT_GEN[2].cie[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(2),
      I3 => s_axi_aresetn,
      I4 => p_0_in54_in,
      O => Bus_RNW_reg_reg_14
    );
\CIE_GEN.CIE_BIT_GEN[3].cie[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(3),
      I3 => s_axi_aresetn,
      I4 => p_0_in52_in,
      O => Bus_RNW_reg_reg_15
    );
\CIE_GEN.CIE_BIT_GEN[4].cie[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(4),
      I3 => s_axi_aresetn,
      I4 => p_0_in50_in,
      O => Bus_RNW_reg_reg_16
    );
\CIE_GEN.CIE_BIT_GEN[5].cie[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(5),
      I3 => s_axi_aresetn,
      I4 => p_0_in48_in,
      O => Bus_RNW_reg_reg_17
    );
\CIE_GEN.CIE_BIT_GEN[6].cie[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(6),
      I3 => s_axi_aresetn,
      I4 => p_0_in46_in,
      O => Bus_RNW_reg_reg_18
    );
\CIE_GEN.CIE_BIT_GEN[7].cie[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(7),
      I3 => s_axi_aresetn,
      I4 => p_0_in44_in,
      O => Bus_RNW_reg_reg_19
    );
\CIE_GEN.CIE_BIT_GEN[8].cie[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(8),
      I3 => s_axi_aresetn,
      I4 => p_0_in42_in,
      O => Bus_RNW_reg_reg_20
    );
\CIE_GEN.CIE_BIT_GEN[9].cie[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_14_in,
      I2 => s_axi_wdata(9),
      I3 => s_axi_aresetn,
      I4 => p_0_in40_in,
      O => Bus_RNW_reg_reg_21
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]\,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(5),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      O => p_15_out
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      O => \^bus2ip_addr_i_reg[4]\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_15_out,
      Q => p_19_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      O => p_5_out
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_5_out,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_4_out
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_4_out,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_3_out
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_3_out,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_2_out
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_2_out,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      O => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0\,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      O => p_17_out
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(5),
      I3 => Q,
      O => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_17_out,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(5),
      O => pselect_hit_i_1
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => pselect_hit_i_1,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      O => p_0_out
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_0_out,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^ip2bus_rdack_reg\,
      I1 => s_axi_aresetn,
      I2 => \^ip2bus_wrack_reg\,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      O => p_1_out
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_1_out,
      Q => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      O => p_14_out
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_14_out,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(5),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      I3 => \^bus2ip_addr_i_reg[5]\,
      O => p_13_out
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => \^bus2ip_addr_i_reg[5]\
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_13_out,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      O => p_11_out
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_11_out,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_10_out
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_10_out,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => p_9_out
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_9_out,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_7_out
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_7_out,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(5),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(4),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      O => p_6_out
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      O => \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_6_out,
      Q => p_10_in,
      R => cs_ce_clr
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\
    );
\REG_GEN[0].IMR_FAST_MODE_GEN.imr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_11_in,
      I1 => Bus_RNW_reg,
      O => bus2ip_wrce(1)
    );
\REG_GEN[0].ier[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_17_in,
      I1 => Bus_RNW_reg,
      O => bus2ip_wrce(2)
    );
\REG_GEN[0].isr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_0_in,
      I1 => Bus_RNW_reg,
      I2 => p_19_in,
      O => isr_en
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in29_in,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in26_in,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in23_in,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in20_in,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in14_in,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\,
      I1 => p_16_in,
      I2 => Bus_RNW_reg,
      O => \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\
    );
\SIE_GEN.SIE_BIT_GEN[0].sie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(0),
      I3 => s_axi_aresetn,
      I4 => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      O => Bus_RNW_reg_reg_0
    );
\SIE_GEN.SIE_BIT_GEN[10].sie[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(10),
      I3 => s_axi_aresetn,
      I4 => p_0_in3_in,
      O => Bus_RNW_reg_reg_10
    );
\SIE_GEN.SIE_BIT_GEN[11].sie[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(11),
      I3 => s_axi_aresetn,
      I4 => p_0_in1_in,
      O => Bus_RNW_reg_reg_11
    );
\SIE_GEN.SIE_BIT_GEN[1].sie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(1),
      I3 => s_axi_aresetn,
      I4 => p_0_in21_in,
      O => Bus_RNW_reg_reg_1
    );
\SIE_GEN.SIE_BIT_GEN[2].sie[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(2),
      I3 => s_axi_aresetn,
      I4 => p_0_in19_in,
      O => Bus_RNW_reg_reg_2
    );
\SIE_GEN.SIE_BIT_GEN[3].sie[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(3),
      I3 => s_axi_aresetn,
      I4 => p_0_in17_in,
      O => Bus_RNW_reg_reg_3
    );
\SIE_GEN.SIE_BIT_GEN[4].sie[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(4),
      I3 => s_axi_aresetn,
      I4 => p_0_in15_in,
      O => Bus_RNW_reg_reg_4
    );
\SIE_GEN.SIE_BIT_GEN[5].sie[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(5),
      I3 => s_axi_aresetn,
      I4 => p_0_in13_in,
      O => Bus_RNW_reg_reg_5
    );
\SIE_GEN.SIE_BIT_GEN[6].sie[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(6),
      I3 => s_axi_aresetn,
      I4 => p_0_in11_in,
      O => Bus_RNW_reg_reg_6
    );
\SIE_GEN.SIE_BIT_GEN[7].sie[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(7),
      I3 => s_axi_aresetn,
      I4 => p_0_in9_in,
      O => Bus_RNW_reg_reg_7
    );
\SIE_GEN.SIE_BIT_GEN[8].sie[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(8),
      I3 => s_axi_aresetn,
      I4 => p_0_in7_in,
      O => Bus_RNW_reg_reg_8
    );
\SIE_GEN.SIE_BIT_GEN[9].sie[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => p_15_in,
      I2 => s_axi_wdata(9),
      I3 => s_axi_aresetn,
      I4 => p_0_in5_in,
      O => Bus_RNW_reg_reg_9
    );
ip2bus_rdack_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^or128_vec2stdlogic19_out\,
      I1 => ip2bus_rdack_int_d1,
      O => ip2bus_rdack_prev2
    );
ip2bus_rdack_int_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA2A"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => ip2bus_wrack_int_d1_i_2_n_0,
      I2 => ip2bus_wrack_int_d1_i_3_n_0,
      I3 => ip2bus_wrack_int_d1_i_4_n_0,
      I4 => ip2bus_wrack_int_d1_i_5_n_0,
      I5 => ip2bus_wrack_int_d1_i_6_n_0,
      O => \^or128_vec2stdlogic19_out\
    );
ip2bus_wrack_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_12\,
      I1 => ip2bus_wrack_int_d1,
      O => ip2bus_wrack_prev2
    );
ip2bus_wrack_int_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555515"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => ip2bus_wrack_int_d1_i_2_n_0,
      I2 => ip2bus_wrack_int_d1_i_3_n_0,
      I3 => ip2bus_wrack_int_d1_i_4_n_0,
      I4 => ip2bus_wrack_int_d1_i_5_n_0,
      I5 => ip2bus_wrack_int_d1_i_6_n_0,
      O => \^bus_rnw_reg_reg_12\
    );
ip2bus_wrack_int_d1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_19_in,
      I1 => p_13_in,
      I2 => p_18_in,
      O => ip2bus_wrack_int_d1_i_2_n_0
    );
ip2bus_wrack_int_d1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_10_in,
      I1 => p_11_in,
      I2 => p_17_in,
      I3 => p_12_in,
      O => ip2bus_wrack_int_d1_i_3_n_0
    );
ip2bus_wrack_int_d1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_8_in,
      I1 => p_5_in,
      I2 => p_7_in,
      I3 => p_3_in,
      O => ip2bus_wrack_int_d1_i_4_n_0
    );
ip2bus_wrack_int_d1_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_4_in,
      I1 => p_16_in,
      I2 => p_9_in,
      I3 => p_6_in,
      O => ip2bus_wrack_int_d1_i_5_n_0
    );
ip2bus_wrack_int_d1_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18]\,
      I1 => p_14_in,
      I2 => p_2_in,
      I3 => p_15_in,
      O => ip2bus_wrack_int_d1_i_6_n_0
    );
\mer_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_12_in,
      I2 => Bus_RNW_reg,
      I3 => \mer_int_reg[0]\,
      O => s_axi_wdata_0_sn_1
    );
\mer_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => Bus_RNW_reg,
      I2 => p_12_in,
      I3 => p_0_in,
      O => s_axi_wdata_1_sn_1
    );
\ram_i[0].ram_reg_0_15_0_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in,
      I1 => Bus_RNW_reg,
      O => bus2ip_wrce(0)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => s_axi_arready(0),
      I2 => s_axi_arready(1),
      I3 => s_axi_arready(3),
      I4 => s_axi_arready(2),
      I5 => s_axi_arready_0,
      O => \^ip2bus_rdack_reg\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[0]\,
      I1 => \s_axi_rdata_i_reg[0]_0\,
      I2 => \s_axi_rdata_i_reg[0]_1\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \s_axi_rdata_i_reg[31]\(0),
      O => D(0)
    );
\s_axi_rdata_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[11]\,
      I1 => \s_axi_rdata_i_reg[11]_0\,
      I2 => \s_axi_rdata_i_reg[4]_1\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \s_axi_rdata_i_reg[31]\(7),
      O => D(7)
    );
\s_axi_rdata_i[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFD0000"
    )
        port map (
      I0 => ip2bus_wrack_int_d1_i_3_n_0,
      I1 => p_19_in,
      I2 => p_13_in,
      I3 => p_18_in,
      I4 => Bus_RNW_reg,
      I5 => \s_axi_rdata_i_reg[0]_2\,
      O => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\
    );
\s_axi_rdata_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(8),
      O => D(8)
    );
\s_axi_rdata_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(9),
      O => D(9)
    );
\s_axi_rdata_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(10),
      O => D(10)
    );
\s_axi_rdata_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(11),
      O => D(11)
    );
\s_axi_rdata_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(12),
      O => D(12)
    );
\s_axi_rdata_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(13),
      O => D(13)
    );
\s_axi_rdata_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(14),
      O => D(14)
    );
\s_axi_rdata_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(15),
      O => D(15)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700FFFF47004700"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[1]\,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I2 => \s_axi_rdata_i_reg[1]_0\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \s_axi_rdata_i_reg[31]\(1),
      O => D(1)
    );
\s_axi_rdata_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(16),
      O => D(16)
    );
\s_axi_rdata_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(17),
      O => D(17)
    );
\s_axi_rdata_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(18),
      O => D(18)
    );
\s_axi_rdata_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(19),
      O => D(19)
    );
\s_axi_rdata_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(20),
      O => D(20)
    );
\s_axi_rdata_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(21),
      O => D(21)
    );
\s_axi_rdata_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(22),
      O => D(22)
    );
\s_axi_rdata_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(23),
      O => D(23)
    );
\s_axi_rdata_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(24),
      O => D(24)
    );
\s_axi_rdata_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(25),
      O => D(25)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5700FFFF57005700"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[2]\,
      I1 => \s_axi_rdata_i_reg[2]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \s_axi_rdata_i_reg[31]\(2),
      O => D(2)
    );
\s_axi_rdata_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(26),
      O => D(26)
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_2_n_0\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \s_axi_rdata_i_reg[31]\(27),
      O => D(27)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F200F200F2"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[31]_0\,
      I1 => \s_axi_rdata_i_reg[31]_1\,
      I2 => \s_axi_rdata_i_reg[31]_2\,
      I3 => \s_axi_rdata_i[31]_i_7_n_0\,
      I4 => ip2bus_wrack_int_d1_i_2_n_0,
      I5 => ip2bus_wrack_int_d1_i_3_n_0,
      O => \s_axi_rdata_i[31]_i_2_n_0\
    );
\s_axi_rdata_i[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => ip2bus_wrack_int_d1_i_3_n_0,
      I1 => p_19_in,
      I2 => p_13_in,
      I3 => p_18_in,
      I4 => p_3_in,
      I5 => Bus_RNW_reg,
      O => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\
    );
\s_axi_rdata_i[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(5),
      I3 => Bus_RNW_reg,
      O => \s_axi_rdata_i[31]_i_7_n_0\
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700FFFF47004700"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[3]\,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I2 => \s_axi_rdata_i_reg[3]_0\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \s_axi_rdata_i_reg[31]\(3),
      O => D(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[4]\,
      I1 => \s_axi_rdata_i_reg[4]_0\,
      I2 => \s_axi_rdata_i_reg[4]_1\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \s_axi_rdata_i_reg[31]\(4),
      O => D(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[5]\,
      I1 => \s_axi_rdata_i_reg[5]_0\,
      I2 => \s_axi_rdata_i_reg[4]_1\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \s_axi_rdata_i_reg[31]\(5),
      O => D(5)
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[9]\,
      I1 => \s_axi_rdata_i_reg[9]_0\,
      I2 => \s_axi_rdata_i_reg[4]_1\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I5 => \s_axi_rdata_i_reg[31]\(6),
      O => D(6)
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => ip2bus_wrack,
      I1 => s_axi_arready(0),
      I2 => s_axi_arready(1),
      I3 => s_axi_arready(3),
      I4 => s_axi_arready(2),
      I5 => s_axi_wready,
      O => \^ip2bus_wrack_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_mb_0_axi_intc_0_shared_ram_ivar is
  port (
    \ram_i[0].Douta_reg[10]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ram_i[0].Douta_reg[31]_0\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_2\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_3\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_i[0].Doutb_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end mcu_mb_0_axi_intc_0_shared_ram_ivar;

architecture STRUCTURE of mcu_mb_0_axi_intc_0_shared_ram_ivar is
  signal Douta : STD_LOGIC_VECTOR ( 10 downto 6 );
  signal p_3_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_i[0].ram_reg_0_15_0_0_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_10_10_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_11_11_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_12_12_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_13_13_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_14_14_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_15_15_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_16_16_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_17_17_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_18_18_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_19_19_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_1_1_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_20_20_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_21_21_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_22_22_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_23_23_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_24_24_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_25_25_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_26_26_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_27_27_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_28_28_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_29_29_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_2_2_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_30_30_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_31_31_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_3_3_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_4_4_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_5_5_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_6_6_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_7_7_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_8_8_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_15_9_9_n_1\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_0_0\ : label is "RAM16X1D";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_0_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_0_0\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_0_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_0_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_0_0\ : label is 0;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_10_10\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_10_10\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_10_10\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_10_10\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_10_10\ : label is 10;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_10_10\ : label is 10;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_11_11\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_11_11\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_11_11\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_11_11\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_11_11\ : label is 11;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_11_11\ : label is 11;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_12_12\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_12_12\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_12_12\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_12_12\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_12_12\ : label is 12;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_12_12\ : label is 12;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_13_13\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_13_13\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_13_13\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_13_13\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_13_13\ : label is 13;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_13_13\ : label is 13;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_14_14\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_14_14\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_14_14\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_14_14\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_14_14\ : label is 14;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_14_14\ : label is 14;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_15_15\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_15_15\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_15_15\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_15_15\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_15_15\ : label is 15;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_15_15\ : label is 15;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_16_16\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_16_16\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_16_16\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_16_16\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_16_16\ : label is 16;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_16_16\ : label is 16;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_17_17\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_17_17\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_17_17\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_17_17\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_17_17\ : label is 17;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_17_17\ : label is 17;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_18_18\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_18_18\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_18_18\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_18_18\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_18_18\ : label is 18;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_18_18\ : label is 18;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_19_19\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_19_19\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_19_19\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_19_19\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_19_19\ : label is 19;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_19_19\ : label is 19;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_1_1\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_1_1\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_1_1\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_1_1\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_1_1\ : label is 1;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_1_1\ : label is 1;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_20_20\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_20_20\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_20_20\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_20_20\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_20_20\ : label is 20;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_20_20\ : label is 20;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_21_21\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_21_21\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_21_21\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_21_21\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_21_21\ : label is 21;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_21_21\ : label is 21;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_22_22\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_22_22\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_22_22\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_22_22\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_22_22\ : label is 22;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_22_22\ : label is 22;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_23_23\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_23_23\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_23_23\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_23_23\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_23_23\ : label is 23;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_23_23\ : label is 23;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_24_24\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_24_24\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_24_24\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_24_24\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_24_24\ : label is 24;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_24_24\ : label is 24;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_25_25\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_25_25\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_25_25\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_25_25\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_25_25\ : label is 25;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_25_25\ : label is 25;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_26_26\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_26_26\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_26_26\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_26_26\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_26_26\ : label is 26;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_26_26\ : label is 26;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_27_27\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_27_27\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_27_27\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_27_27\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_27_27\ : label is 27;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_27_27\ : label is 27;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_28_28\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_28_28\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_28_28\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_28_28\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_28_28\ : label is 28;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_28_28\ : label is 28;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_29_29\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_29_29\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_29_29\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_29_29\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_29_29\ : label is 29;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_29_29\ : label is 29;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_2_2\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_2_2\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_2_2\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_2_2\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_2_2\ : label is 2;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_2_2\ : label is 2;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_30_30\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_30_30\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_30_30\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_30_30\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_30_30\ : label is 30;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_30_30\ : label is 30;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_31_31\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_31_31\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_31_31\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_31_31\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_31_31\ : label is 31;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_31_31\ : label is 31;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_3_3\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_3_3\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_3_3\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_3_3\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_3_3\ : label is 3;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_3_3\ : label is 3;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_4_4\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_4_4\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_4_4\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_4_4\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_4_4\ : label is 4;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_4_4\ : label is 4;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_5_5\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_5_5\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_5_5\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_5_5\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_5_5\ : label is 5;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_5_5\ : label is 5;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_6_6\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_6_6\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_6_6\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_6_6\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_6_6\ : label is 6;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_6_6\ : label is 6;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_7_7\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_7_7\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_7_7\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_7_7\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_7_7\ : label is 7;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_7_7\ : label is 7;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_8_8\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_8_8\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_8_8\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_8_8\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_8_8\ : label is 8;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_8_8\ : label is 8;
  attribute XILINX_LEGACY_PRIM of \ram_i[0].ram_reg_0_15_9_9\ : label is "RAM16X1D";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_15_9_9\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_15_9_9\ : label is 15;
  attribute ram_offset of \ram_i[0].ram_reg_0_15_9_9\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_15_9_9\ : label is 9;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_15_9_9\ : label is 9;
begin
\ram_i[0].Douta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_0_0_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(0),
      R => '0'
    );
\ram_i[0].Douta_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_10_10_n_1\,
      Q => Douta(10),
      R => '0'
    );
\ram_i[0].Douta_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_11_11_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(7),
      R => '0'
    );
\ram_i[0].Douta_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_12_12_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(8),
      R => '0'
    );
\ram_i[0].Douta_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_13_13_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(9),
      R => '0'
    );
\ram_i[0].Douta_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_14_14_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(10),
      R => '0'
    );
\ram_i[0].Douta_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_15_15_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(11),
      R => '0'
    );
\ram_i[0].Douta_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_16_16_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(12),
      R => '0'
    );
\ram_i[0].Douta_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_17_17_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(13),
      R => '0'
    );
\ram_i[0].Douta_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_18_18_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(14),
      R => '0'
    );
\ram_i[0].Douta_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_19_19_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(15),
      R => '0'
    );
\ram_i[0].Douta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_1_1_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(1),
      R => '0'
    );
\ram_i[0].Douta_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_20_20_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(16),
      R => '0'
    );
\ram_i[0].Douta_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_21_21_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(17),
      R => '0'
    );
\ram_i[0].Douta_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_22_22_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(18),
      R => '0'
    );
\ram_i[0].Douta_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_23_23_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(19),
      R => '0'
    );
\ram_i[0].Douta_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_24_24_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(20),
      R => '0'
    );
\ram_i[0].Douta_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_25_25_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(21),
      R => '0'
    );
\ram_i[0].Douta_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_26_26_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(22),
      R => '0'
    );
\ram_i[0].Douta_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_27_27_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(23),
      R => '0'
    );
\ram_i[0].Douta_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_28_28_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(24),
      R => '0'
    );
\ram_i[0].Douta_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_29_29_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(25),
      R => '0'
    );
\ram_i[0].Douta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_2_2_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(2),
      R => '0'
    );
\ram_i[0].Douta_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_30_30_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(26),
      R => '0'
    );
\ram_i[0].Douta_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_31_31_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(27),
      R => '0'
    );
\ram_i[0].Douta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_3_3_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(3),
      R => '0'
    );
\ram_i[0].Douta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_4_4_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(4),
      R => '0'
    );
\ram_i[0].Douta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_5_5_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(5),
      R => '0'
    );
\ram_i[0].Douta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_6_6_n_1\,
      Q => Douta(6),
      R => '0'
    );
\ram_i[0].Douta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_7_7_n_1\,
      Q => Douta(7),
      R => '0'
    );
\ram_i[0].Douta_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_8_8_n_1\,
      Q => Douta(8),
      R => '0'
    );
\ram_i[0].Douta_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_15_9_9_n_1\,
      Q => \ram_i[0].Douta_reg[31]_0\(6),
      R => '0'
    );
\ram_i[0].Doutb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(0),
      Q => interrupt_address(0),
      R => '0'
    );
\ram_i[0].Doutb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(10),
      Q => interrupt_address(10),
      R => '0'
    );
\ram_i[0].Doutb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(11),
      Q => interrupt_address(11),
      R => '0'
    );
\ram_i[0].Doutb_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(12),
      Q => interrupt_address(12),
      R => '0'
    );
\ram_i[0].Doutb_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(13),
      Q => interrupt_address(13),
      R => '0'
    );
\ram_i[0].Doutb_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(14),
      Q => interrupt_address(14),
      R => '0'
    );
\ram_i[0].Doutb_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(15),
      Q => interrupt_address(15),
      R => '0'
    );
\ram_i[0].Doutb_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(16),
      Q => interrupt_address(16),
      R => '0'
    );
\ram_i[0].Doutb_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(17),
      Q => interrupt_address(17),
      R => '0'
    );
\ram_i[0].Doutb_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(18),
      Q => interrupt_address(18),
      R => '0'
    );
\ram_i[0].Doutb_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(19),
      Q => interrupt_address(19),
      R => '0'
    );
\ram_i[0].Doutb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(1),
      Q => interrupt_address(1),
      R => '0'
    );
\ram_i[0].Doutb_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(20),
      Q => interrupt_address(20),
      R => '0'
    );
\ram_i[0].Doutb_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(21),
      Q => interrupt_address(21),
      R => '0'
    );
\ram_i[0].Doutb_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(22),
      Q => interrupt_address(22),
      R => '0'
    );
\ram_i[0].Doutb_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(23),
      Q => interrupt_address(23),
      R => '0'
    );
\ram_i[0].Doutb_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(24),
      Q => interrupt_address(24),
      R => '0'
    );
\ram_i[0].Doutb_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(25),
      Q => interrupt_address(25),
      R => '0'
    );
\ram_i[0].Doutb_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(26),
      Q => interrupt_address(26),
      R => '0'
    );
\ram_i[0].Doutb_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(27),
      Q => interrupt_address(27),
      R => '0'
    );
\ram_i[0].Doutb_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(28),
      Q => interrupt_address(28),
      R => '0'
    );
\ram_i[0].Doutb_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(29),
      Q => interrupt_address(29),
      R => '0'
    );
\ram_i[0].Doutb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(2),
      Q => interrupt_address(2),
      R => '0'
    );
\ram_i[0].Doutb_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(30),
      Q => interrupt_address(30),
      R => '0'
    );
\ram_i[0].Doutb_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(31),
      Q => interrupt_address(31),
      R => '0'
    );
\ram_i[0].Doutb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(3),
      Q => interrupt_address(3),
      R => '0'
    );
\ram_i[0].Doutb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(4),
      Q => interrupt_address(4),
      R => '0'
    );
\ram_i[0].Doutb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(5),
      Q => interrupt_address(5),
      R => '0'
    );
\ram_i[0].Doutb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(6),
      Q => interrupt_address(6),
      R => '0'
    );
\ram_i[0].Doutb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(7),
      Q => interrupt_address(7),
      R => '0'
    );
\ram_i[0].Doutb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(8),
      Q => interrupt_address(8),
      R => '0'
    );
\ram_i[0].Doutb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_3_out(9),
      Q => interrupt_address(9),
      R => '0'
    );
\ram_i[0].ram_reg_0_15_0_0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(0),
      DPO => p_3_out(0),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_0_0_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_10_10\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(10),
      DPO => p_3_out(10),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_10_10_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_11_11\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(11),
      DPO => p_3_out(11),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_11_11_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_12_12\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(12),
      DPO => p_3_out(12),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_12_12_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_13_13\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(13),
      DPO => p_3_out(13),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_13_13_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_14_14\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(14),
      DPO => p_3_out(14),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_14_14_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_15_15\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(15),
      DPO => p_3_out(15),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_15_15_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_16_16\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(16),
      DPO => p_3_out(16),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_16_16_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_17_17\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(17),
      DPO => p_3_out(17),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_17_17_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_18_18\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(18),
      DPO => p_3_out(18),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_18_18_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_19_19\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(19),
      DPO => p_3_out(19),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_19_19_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_1_1\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(1),
      DPO => p_3_out(1),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_1_1_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_20_20\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(20),
      DPO => p_3_out(20),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_20_20_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_21_21\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(21),
      DPO => p_3_out(21),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_21_21_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_22_22\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(22),
      DPO => p_3_out(22),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_22_22_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_23_23\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(23),
      DPO => p_3_out(23),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_23_23_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_24_24\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(24),
      DPO => p_3_out(24),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_24_24_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_25_25\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(25),
      DPO => p_3_out(25),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_25_25_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_26_26\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(26),
      DPO => p_3_out(26),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_26_26_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_27_27\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(27),
      DPO => p_3_out(27),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_27_27_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_28_28\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(28),
      DPO => p_3_out(28),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_28_28_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_29_29\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(29),
      DPO => p_3_out(29),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_29_29_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_2_2\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(2),
      DPO => p_3_out(2),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_2_2_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_30_30\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(30),
      DPO => p_3_out(30),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_30_30_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_31_31\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(31),
      DPO => p_3_out(31),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_31_31_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_3_3\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(3),
      DPO => p_3_out(3),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_3_3_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_4_4\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"0000FFFF"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(4),
      DPO => p_3_out(4),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_4_4_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_5_5\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(5),
      DPO => p_3_out(5),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_5_5_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_6_6\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(6),
      DPO => p_3_out(6),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_6_6_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_7_7\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(7),
      DPO => p_3_out(7),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_7_7_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_8_8\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(8),
      DPO => p_3_out(8),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_8_8_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_15_9_9\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => '0',
      D => s_axi_wdata(9),
      DPO => p_3_out(9),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => \ram_i[0].ram_reg_0_15_9_9_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\s_axi_rdata_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[10]_2\,
      I1 => \s_axi_rdata_i_reg[10]_3\,
      I2 => \s_axi_rdata_i_reg[10]\,
      I3 => \s_axi_rdata_i_reg[10]_0\,
      I4 => \s_axi_rdata_i_reg[10]_1\,
      I5 => Douta(10),
      O => \ram_i[0].Douta_reg[10]_0\(3)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[6]\,
      I1 => \s_axi_rdata_i_reg[6]_0\,
      I2 => \s_axi_rdata_i_reg[10]\,
      I3 => \s_axi_rdata_i_reg[10]_0\,
      I4 => \s_axi_rdata_i_reg[10]_1\,
      I5 => Douta(6),
      O => \ram_i[0].Douta_reg[10]_0\(0)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[7]\,
      I1 => \s_axi_rdata_i_reg[7]_0\,
      I2 => \s_axi_rdata_i_reg[10]\,
      I3 => \s_axi_rdata_i_reg[10]_0\,
      I4 => \s_axi_rdata_i_reg[10]_1\,
      I5 => Douta(7),
      O => \ram_i[0].Douta_reg[10]_0\(1)
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[8]\,
      I1 => \s_axi_rdata_i_reg[8]_0\,
      I2 => \s_axi_rdata_i_reg[10]\,
      I3 => \s_axi_rdata_i_reg[10]_0\,
      I4 => \s_axi_rdata_i_reg[10]_1\,
      I5 => Douta(8),
      O => \ram_i[0].Douta_reg[10]_0\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_mb_0_axi_intc_0_intc_core is
  port (
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in29_in : out STD_LOGIC;
    p_0_in26_in : out STD_LOGIC;
    p_0_in23_in : out STD_LOGIC;
    p_0_in20_in : out STD_LOGIC;
    \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0\ : out STD_LOGIC;
    p_0_in14_in : out STD_LOGIC;
    \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0\ : out STD_LOGIC;
    p_0_in8_in : out STD_LOGIC;
    \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0\ : out STD_LOGIC;
    p_0_in2_in : out STD_LOGIC;
    \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0\ : out STD_LOGIC;
    \IVR_GEN.ivr_reg[2]_0\ : out STD_LOGIC;
    irq : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ : out STD_LOGIC;
    p_0_in21_in : out STD_LOGIC;
    p_0_in19_in : out STD_LOGIC;
    p_0_in17_in : out STD_LOGIC;
    p_0_in15_in : out STD_LOGIC;
    p_0_in13_in : out STD_LOGIC;
    p_0_in11_in : out STD_LOGIC;
    p_0_in9_in : out STD_LOGIC;
    p_0_in7_in : out STD_LOGIC;
    p_0_in5_in : out STD_LOGIC;
    p_0_in3_in : out STD_LOGIC;
    p_0_in1_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ : out STD_LOGIC;
    p_0_in56_in : out STD_LOGIC;
    p_0_in54_in : out STD_LOGIC;
    p_0_in52_in : out STD_LOGIC;
    p_0_in50_in : out STD_LOGIC;
    p_0_in48_in : out STD_LOGIC;
    p_0_in46_in : out STD_LOGIC;
    p_0_in44_in : out STD_LOGIC;
    p_0_in42_in : out STD_LOGIC;
    p_0_in40_in : out STD_LOGIC;
    p_0_in38_in : out STD_LOGIC;
    p_0_in36_in : out STD_LOGIC;
    \mer_int_reg[0]_0\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \REG_GEN[0].isr_reg[0]_0\ : out STD_LOGIC;
    p_1_in52_in : out STD_LOGIC;
    p_1_in50_in : out STD_LOGIC;
    p_1_in38_in : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    p_0_in37_in : out STD_LOGIC;
    p_0_in34_in : out STD_LOGIC;
    p_0_in51_in : out STD_LOGIC;
    p_0_in49_in : out STD_LOGIC;
    \REG_GEN[0].ier_reg[0]_0\ : out STD_LOGIC;
    \ram_i[0].Douta_reg[10]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \IVR_GEN.ivr_reg[1]_0\ : out STD_LOGIC;
    \ram_i[0].Douta_reg[31]\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \IVR_GEN.ivr_reg[1]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \REG_GEN[4].ier_reg[4]_0\ : out STD_LOGIC;
    \REG_GEN[5].ier_reg[5]_0\ : out STD_LOGIC;
    \IVR_GEN.ivr_reg[0]_0\ : out STD_LOGIC;
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0\ : in STD_LOGIC;
    \mer_int_reg[0]_1\ : in STD_LOGIC;
    \mer_int_reg[1]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_1\ : in STD_LOGIC;
    \ram_i[0].Doutb_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i_reg[6]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_2\ : in STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0\ : in STD_LOGIC;
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]_0\ : in STD_LOGIC;
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0\ : in STD_LOGIC;
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0\ : in STD_LOGIC;
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]_0\ : in STD_LOGIC;
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]_0\ : in STD_LOGIC;
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]_0\ : in STD_LOGIC;
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]_0\ : in STD_LOGIC;
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]_0\ : in STD_LOGIC;
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]_0\ : in STD_LOGIC;
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]_0\ : in STD_LOGIC;
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]_0\ : in STD_LOGIC;
    isr_en : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end mcu_mb_0_axi_intc_0_intc_core;

architecture STRUCTURE of mcu_mb_0_axi_intc_0_intc_core is
  signal \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[0].cie_reg[0]_0\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr[10]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr[11]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr[1]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr[2]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr[4]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr[7]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr[8]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr[9]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \IPR_GEN.ipr[0]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[10]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[11]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[1]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[2]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[3]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[4]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[5]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[6]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[7]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[8]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[9]_i_1_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_4_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_5_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_2_n_0\ : STD_LOGIC;
  signal \^ivr_gen.ivr_reg[1]_0\ : STD_LOGIC;
  signal \^ivr_gen.ivr_reg[2]_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr_reg_n_0_[1]\ : STD_LOGIC;
  signal Irq_i : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\ : STD_LOGIC;
  signal \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\ : STD_LOGIC;
  signal \REG_GEN[0].ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \^reg_gen[0].ier_reg[0]_0\ : STD_LOGIC;
  signal \REG_GEN[0].isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \^reg_gen[0].isr_reg[0]_0\ : STD_LOGIC;
  signal \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[10].ier[10]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[10].isr[10]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3_n_0\ : STD_LOGIC;
  signal \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\ : STD_LOGIC;
  signal \REG_GEN[11].ier[11]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].isr[11]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\ : STD_LOGIC;
  signal \REG_GEN[1].ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].ier[2]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].isr[2]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].ier[3]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].isr[3]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].ier[4]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].isr[4]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3_n_0\ : STD_LOGIC;
  signal \^reg_gen[5].imr_fast_mode_gen.imr_reg[5]_0\ : STD_LOGIC;
  signal \REG_GEN[5].ier[5]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].isr[5]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].ier[6]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].isr[6]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3_n_0\ : STD_LOGIC;
  signal \^reg_gen[7].imr_fast_mode_gen.imr_reg[7]_0\ : STD_LOGIC;
  signal \REG_GEN[7].ier[7]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].isr[7]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].ier[8]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].isr[8]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3_n_0\ : STD_LOGIC;
  signal \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\ : STD_LOGIC;
  signal \REG_GEN[9].ier[9]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[9].isr[9]_i_1_n_0\ : STD_LOGIC;
  signal \^sie_gen.sie_bit_gen[0].sie_reg[0]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_b01 : STD_LOGIC;
  signal ack_or : STD_LOGIC;
  signal ack_or_i : STD_LOGIC;
  signal ack_or_i_2_n_0 : STD_LOGIC;
  signal ack_or_i_3_n_0 : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal first_ack : STD_LOGIC;
  signal first_ack_active : STD_LOGIC;
  signal idle_and_irq : STD_LOGIC;
  signal idle_and_irq_d1 : STD_LOGIC;
  signal in_idle : STD_LOGIC;
  signal intr_d1 : STD_LOGIC;
  signal intr_ff : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute async_reg : string;
  attribute async_reg of intr_ff : signal is "true";
  signal \intr_ff__0\ : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute async_reg of \intr_ff__0\ : signal is "true";
  signal \intr_ff__1\ : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute async_reg of \intr_ff__1\ : signal is "true";
  signal \intr_ff__2\ : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute async_reg of \intr_ff__2\ : signal is "true";
  signal \intr_ff__3\ : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute async_reg of \intr_ff__3\ : signal is "true";
  signal \intr_ff__4\ : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute async_reg of \intr_ff__4\ : signal is "true";
  signal ipr : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal irq_gen : STD_LOGIC;
  signal irq_gen_i : STD_LOGIC;
  signal irq_gen_i_2_n_0 : STD_LOGIC;
  signal irq_gen_i_3_n_0 : STD_LOGIC;
  signal irq_gen_i_4_n_0 : STD_LOGIC;
  signal irq_gen_i_5_n_0 : STD_LOGIC;
  signal ivar_index_axi_clk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ivar_index_sample_en : STD_LOGIC;
  signal ivar_index_sample_en_i : STD_LOGIC;
  signal \^mer_int_reg[0]_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal \^p_0_in11_in\ : STD_LOGIC;
  signal \^p_0_in13_in\ : STD_LOGIC;
  signal \^p_0_in14_in\ : STD_LOGIC;
  signal \^p_0_in15_in\ : STD_LOGIC;
  signal \^p_0_in17_in\ : STD_LOGIC;
  signal \^p_0_in19_in\ : STD_LOGIC;
  signal \^p_0_in1_in\ : STD_LOGIC;
  signal \^p_0_in20_in\ : STD_LOGIC;
  signal \^p_0_in21_in\ : STD_LOGIC;
  signal \^p_0_in23_in\ : STD_LOGIC;
  signal \^p_0_in26_in\ : STD_LOGIC;
  signal \^p_0_in29_in\ : STD_LOGIC;
  signal \^p_0_in2_in\ : STD_LOGIC;
  signal \^p_0_in34_in\ : STD_LOGIC;
  signal p_0_in35_in : STD_LOGIC;
  signal \^p_0_in36_in\ : STD_LOGIC;
  signal \^p_0_in37_in\ : STD_LOGIC;
  signal \^p_0_in38_in\ : STD_LOGIC;
  signal p_0_in39_in : STD_LOGIC;
  signal \^p_0_in3_in\ : STD_LOGIC;
  signal \^p_0_in40_in\ : STD_LOGIC;
  signal p_0_in41_in : STD_LOGIC;
  signal \^p_0_in42_in\ : STD_LOGIC;
  signal p_0_in43_in : STD_LOGIC;
  signal \^p_0_in44_in\ : STD_LOGIC;
  signal p_0_in45_in : STD_LOGIC;
  signal \^p_0_in46_in\ : STD_LOGIC;
  signal p_0_in47_in : STD_LOGIC;
  signal \^p_0_in48_in\ : STD_LOGIC;
  signal \^p_0_in49_in\ : STD_LOGIC;
  signal \^p_0_in50_in\ : STD_LOGIC;
  signal \^p_0_in51_in\ : STD_LOGIC;
  signal \^p_0_in52_in\ : STD_LOGIC;
  signal p_0_in53_in : STD_LOGIC;
  signal \^p_0_in54_in\ : STD_LOGIC;
  signal \^p_0_in56_in\ : STD_LOGIC;
  signal \^p_0_in5_in\ : STD_LOGIC;
  signal \^p_0_in7_in\ : STD_LOGIC;
  signal \^p_0_in8_in\ : STD_LOGIC;
  signal \^p_0_in9_in\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_130_out : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal p_1_in36_in : STD_LOGIC;
  signal \^p_1_in38_in\ : STD_LOGIC;
  signal p_1_in40_in : STD_LOGIC;
  signal p_1_in42_in : STD_LOGIC;
  signal p_1_in44_in : STD_LOGIC;
  signal p_1_in46_in : STD_LOGIC;
  signal p_1_in48_in : STD_LOGIC;
  signal \^p_1_in50_in\ : STD_LOGIC;
  signal \^p_1_in52_in\ : STD_LOGIC;
  signal p_1_in54_in : STD_LOGIC;
  signal p_24_out : STD_LOGIC;
  signal p_25_out : STD_LOGIC;
  signal p_26_out : STD_LOGIC;
  signal p_27_out : STD_LOGIC;
  signal p_28_out : STD_LOGIC;
  signal p_29_out : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_30_out : STD_LOGIC;
  signal p_31_out : STD_LOGIC;
  signal p_32_out : STD_LOGIC;
  signal p_33_out : STD_LOGIC;
  signal p_34_out : STD_LOGIC;
  signal p_35_out : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_2_n_0\ : STD_LOGIC;
  signal second_ack : STD_LOGIC;
  signal second_ack_sync_d1 : STD_LOGIC;
  signal second_ack_sync_d2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1\ : label is "soft_lutpair41";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[0]\ : label is "gen_pulse:01,wait_ack:10,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]\ : label is "gen_pulse:01,wait_ack:10,idle:00";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr[10]_i_1\ : label is "soft_lutpair48";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr[2]_i_1\ : label is "soft_lutpair50";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr[4]_i_1\ : label is "soft_lutpair49";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr[7]_i_1\ : label is "soft_lutpair46";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr[9]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[10]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[11]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[0]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[0]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \REG_GEN[0].isr[0]_i_3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \REG_GEN[10].isr[10]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \REG_GEN[11].isr[11]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \REG_GEN[1].isr[1]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \REG_GEN[2].isr[2]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \REG_GEN[3].isr[3]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \REG_GEN[4].isr[4]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \REG_GEN[5].isr[5]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \REG_GEN[6].isr[6]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \REG_GEN[7].isr[7]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \REG_GEN[8].isr[8]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \REG_GEN[9].isr[9]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of ack_or_i_2 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of ack_or_i_3 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of irq_gen_i_2 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of irq_gen_i_4 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of irq_gen_i_5 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[11]_i_4\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_5\ : label is "soft_lutpair43";
begin
  \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ <= \^cie_gen.cie_bit_gen[0].cie_reg[0]_0\;
  D(1 downto 0) <= \^d\(1 downto 0);
  \IVR_GEN.ivr_reg[1]_0\ <= \^ivr_gen.ivr_reg[1]_0\;
  \IVR_GEN.ivr_reg[2]_0\ <= \^ivr_gen.ivr_reg[2]_0\;
  \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ <= \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\;
  \REG_GEN[0].ier_reg[0]_0\ <= \^reg_gen[0].ier_reg[0]_0\;
  \REG_GEN[0].isr_reg[0]_0\ <= \^reg_gen[0].isr_reg[0]_0\;
  \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0\ <= \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\;
  \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0\ <= \^reg_gen[5].imr_fast_mode_gen.imr_reg[5]_0\;
  \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0\ <= \^reg_gen[7].imr_fast_mode_gen.imr_reg[7]_0\;
  \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0\ <= \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\;
  \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ <= \^sie_gen.sie_bit_gen[0].sie_reg[0]_0\;
  SR(0) <= \^sr\(0);
  \mer_int_reg[0]_0\ <= \^mer_int_reg[0]_0\;
  p_0_in <= \^p_0_in\;
  p_0_in11_in <= \^p_0_in11_in\;
  p_0_in13_in <= \^p_0_in13_in\;
  p_0_in14_in <= \^p_0_in14_in\;
  p_0_in15_in <= \^p_0_in15_in\;
  p_0_in17_in <= \^p_0_in17_in\;
  p_0_in19_in <= \^p_0_in19_in\;
  p_0_in1_in <= \^p_0_in1_in\;
  p_0_in20_in <= \^p_0_in20_in\;
  p_0_in21_in <= \^p_0_in21_in\;
  p_0_in23_in <= \^p_0_in23_in\;
  p_0_in26_in <= \^p_0_in26_in\;
  p_0_in29_in <= \^p_0_in29_in\;
  p_0_in2_in <= \^p_0_in2_in\;
  p_0_in34_in <= \^p_0_in34_in\;
  p_0_in36_in <= \^p_0_in36_in\;
  p_0_in37_in <= \^p_0_in37_in\;
  p_0_in38_in <= \^p_0_in38_in\;
  p_0_in3_in <= \^p_0_in3_in\;
  p_0_in40_in <= \^p_0_in40_in\;
  p_0_in42_in <= \^p_0_in42_in\;
  p_0_in44_in <= \^p_0_in44_in\;
  p_0_in46_in <= \^p_0_in46_in\;
  p_0_in48_in <= \^p_0_in48_in\;
  p_0_in49_in <= \^p_0_in49_in\;
  p_0_in50_in <= \^p_0_in50_in\;
  p_0_in51_in <= \^p_0_in51_in\;
  p_0_in52_in <= \^p_0_in52_in\;
  p_0_in54_in <= \^p_0_in54_in\;
  p_0_in56_in <= \^p_0_in56_in\;
  p_0_in5_in <= \^p_0_in5_in\;
  p_0_in7_in <= \^p_0_in7_in\;
  p_0_in8_in <= \^p_0_in8_in\;
  p_0_in9_in <= \^p_0_in9_in\;
  p_1_in <= \^p_1_in\;
  p_1_in38_in <= \^p_1_in38_in\;
  p_1_in50_in <= \^p_1_in50_in\;
  p_1_in52_in <= \^p_1_in52_in\;
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => processor_ack(0),
      I1 => processor_ack(1),
      I2 => first_ack_active,
      O => \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0\
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0\,
      Q => first_ack_active,
      R => \^sr\(0)
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => processor_ack(0),
      I1 => processor_ack(1),
      O => ack_b01
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ack_b01,
      Q => first_ack,
      R => \^sr\(0)
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => first_ack_active,
      I1 => processor_ack(1),
      O => p_130_out
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_130_out,
      Q => second_ack,
      R => \^sr\(0)
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => second_ack,
      Q => second_ack_sync_d1,
      R => \^sr\(0)
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => second_ack_sync_d1,
      Q => second_ack_sync_d2,
      R => \^sr\(0)
    );
\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1\,
      Q => \^cie_gen.cie_bit_gen[0].cie_reg[0]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0\,
      Q => \^p_0_in38_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0\,
      Q => \^p_0_in36_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0\,
      Q => \^p_0_in56_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0\,
      Q => \^p_0_in54_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\,
      Q => \^p_0_in52_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0\,
      Q => \^p_0_in50_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0\,
      Q => \^p_0_in48_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\,
      Q => \^p_0_in46_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0\,
      Q => \^p_0_in44_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0\,
      Q => \^p_0_in42_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\,
      Q => \^p_0_in40_in\,
      R => '0'
    );
\FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C00AA003F00AA"
    )
        port map (
      I0 => ivar_index_sample_en,
      I1 => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\,
      I2 => first_ack,
      I3 => current_state(1),
      I4 => current_state(0),
      I5 => ack_or,
      O => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1_n_0\
    );
\FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00880F00"
    )
        port map (
      I0 => first_ack,
      I1 => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\,
      I2 => second_ack_sync_d2,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1_n_0\
    );
\FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0\,
      I1 => ivar_index_axi_clk(3),
      I2 => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0\,
      I3 => ivar_index_axi_clk(2),
      I4 => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_5_n_0\,
      O => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\
    );
\FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\,
      I1 => \^p_0_in8_in\,
      I2 => \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\,
      I3 => ivar_index_axi_clk(0),
      I4 => ivar_index_axi_clk(1),
      I5 => \^p_0_in2_in\,
      O => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0\
    );
\FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_gen[7].imr_fast_mode_gen.imr_reg[7]_0\,
      I1 => \^p_0_in14_in\,
      I2 => ivar_index_axi_clk(1),
      I3 => \^reg_gen[5].imr_fast_mode_gen.imr_reg[5]_0\,
      I4 => ivar_index_axi_clk(0),
      I5 => \^p_0_in20_in\,
      O => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0\
    );
\FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^p_0_in23_in\,
      I1 => \^p_0_in26_in\,
      I2 => ivar_index_axi_clk(1),
      I3 => \^p_0_in29_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\,
      O => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_5_n_0\
    );
\FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1_n_0\,
      Q => current_state(0),
      R => \^sr\(0)
    );
\FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1_n_0\,
      Q => current_state(1),
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(0),
      Q => intr_ff(0),
      R => '0'
    );
\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_ff(0),
      Q => intr_ff(1),
      R => '0'
    );
\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => intr_ff(1),
      I2 => intr_d1,
      I3 => s_axi_aresetn,
      I4 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      O => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0\
    );
\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_ff(1),
      Q => intr_d1,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => intr(10),
      I2 => s_axi_aresetn,
      I3 => p_10_in,
      O => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr[10]_i_1_n_0\
    );
\INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr[10]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(11),
      Q => \intr_ff__4\(0),
      R => '0'
    );
\INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__4\(0),
      Q => \intr_ff__4\(1),
      R => '0'
    );
\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \intr_ff__4\(1),
      I2 => \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_11_in,
      O => \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr[11]_i_1_n_0\
    );
\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr[11]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__4\(1),
      Q => \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => intr(1),
      I2 => s_axi_aresetn,
      I3 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      O => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr[1]_i_1_n_0\
    );
\INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr[1]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => intr(2),
      I2 => s_axi_aresetn,
      I3 => p_2_in,
      O => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr[2]_i_1_n_0\
    );
\INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr[2]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(3),
      Q => \intr_ff__0\(0),
      R => '0'
    );
\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__0\(0),
      Q => \intr_ff__0\(1),
      R => '0'
    );
\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \intr_ff__0\(1),
      I2 => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_3_in,
      O => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0\
    );
\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__0\(1),
      Q => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => intr(4),
      I2 => s_axi_aresetn,
      I3 => p_4_in,
      O => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr[4]_i_1_n_0\
    );
\INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr[4]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(5),
      Q => \intr_ff__1\(0),
      R => '0'
    );
\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__1\(0),
      Q => \intr_ff__1\(1),
      R => '0'
    );
\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \intr_ff__1\(1),
      I2 => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_5_in,
      O => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0\
    );
\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__1\(1),
      Q => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(6),
      Q => \intr_ff__2\(0),
      R => '0'
    );
\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__2\(0),
      Q => \intr_ff__2\(1),
      R => '0'
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \intr_ff__2\(1),
      I2 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_6_in,
      O => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0\
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__2\(1),
      Q => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => intr(7),
      I2 => s_axi_aresetn,
      I3 => p_7_in,
      O => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr[7]_i_1_n_0\
    );
\INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr[7]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(8),
      Q => \intr_ff__3\(0),
      R => '0'
    );
\INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__3\(0),
      Q => \intr_ff__3\(1),
      R => '0'
    );
\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \intr_ff__3\(1),
      I2 => \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_8_in,
      O => \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr[8]_i_1_n_0\
    );
\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr[8]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \intr_ff__3\(1),
      Q => \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => intr(9),
      I2 => s_axi_aresetn,
      I3 => p_9_in,
      O => \INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr[9]_i_1_n_0\
    );
\INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr[9]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\IPR_GEN.ipr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_gen[0].isr_reg[0]_0\,
      I1 => \^reg_gen[0].ier_reg[0]_0\,
      O => \IPR_GEN.ipr[0]_i_1_n_0\
    );
\IPR_GEN.ipr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in36_in,
      I1 => p_0_in35_in,
      O => \IPR_GEN.ipr[10]_i_1_n_0\
    );
\IPR_GEN.ipr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^p_0_in34_in\,
      O => \IPR_GEN.ipr[11]_i_1_n_0\
    );
\IPR_GEN.ipr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in54_in,
      I1 => p_0_in53_in,
      O => \IPR_GEN.ipr[1]_i_1_n_0\
    );
\IPR_GEN.ipr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_in52_in\,
      I1 => \^p_0_in51_in\,
      O => \IPR_GEN.ipr[2]_i_1_n_0\
    );
\IPR_GEN.ipr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_in50_in\,
      I1 => \^p_0_in49_in\,
      O => \IPR_GEN.ipr[3]_i_1_n_0\
    );
\IPR_GEN.ipr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in48_in,
      I1 => p_0_in47_in,
      O => \IPR_GEN.ipr[4]_i_1_n_0\
    );
\IPR_GEN.ipr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in46_in,
      I1 => p_0_in45_in,
      O => \IPR_GEN.ipr[5]_i_1_n_0\
    );
\IPR_GEN.ipr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in44_in,
      I1 => p_0_in43_in,
      O => \IPR_GEN.ipr[6]_i_1_n_0\
    );
\IPR_GEN.ipr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in42_in,
      I1 => p_0_in41_in,
      O => \IPR_GEN.ipr[7]_i_1_n_0\
    );
\IPR_GEN.ipr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in40_in,
      I1 => p_0_in39_in,
      O => \IPR_GEN.ipr[8]_i_1_n_0\
    );
\IPR_GEN.ipr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_in38_in\,
      I1 => \^p_0_in37_in\,
      O => \IPR_GEN.ipr[9]_i_1_n_0\
    );
\IPR_GEN.ipr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[0]_i_1_n_0\,
      Q => Q(0),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[10]_i_1_n_0\,
      Q => ipr(10),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[11]_i_1_n_0\,
      Q => Q(4),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[1]_i_1_n_0\,
      Q => ipr(1),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[2]_i_1_n_0\,
      Q => Q(1),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[3]_i_1_n_0\,
      Q => Q(2),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[4]_i_1_n_0\,
      Q => ipr(4),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[5]_i_1_n_0\,
      Q => ipr(5),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[6]_i_1_n_0\,
      Q => ipr(6),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[7]_i_1_n_0\,
      Q => ipr(7),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[8]_i_1_n_0\,
      Q => ipr(8),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[9]_i_1_n_0\,
      Q => Q(3),
      R => \^sr\(0)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.Irq_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.Irq_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => Irq_i
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.Irq_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Irq_i,
      Q => irq,
      R => \^sr\(0)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => in_idle
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in_idle,
      Q => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0\,
      R => \^sr\(0)
    );
\IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I\: entity work.mcu_mb_0_axi_intc_0_shared_ram_ivar
     port map (
      Q(3 downto 0) => ivar_index_axi_clk(3 downto 0),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      interrupt_address(31 downto 0) => interrupt_address(31 downto 0),
      \ram_i[0].Douta_reg[10]_0\(3 downto 0) => \ram_i[0].Douta_reg[10]\(3 downto 0),
      \ram_i[0].Douta_reg[31]_0\(27 downto 0) => \ram_i[0].Douta_reg[31]\(27 downto 0),
      \ram_i[0].Doutb_reg[0]_0\(3 downto 0) => \ram_i[0].Doutb_reg[0]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i_reg[10]\ => \^ivr_gen.ivr_reg[1]_0\,
      \s_axi_rdata_i_reg[10]_0\ => \s_axi_rdata_i_reg[10]\,
      \s_axi_rdata_i_reg[10]_1\ => \s_axi_rdata_i_reg[10]_0\,
      \s_axi_rdata_i_reg[10]_2\ => \s_axi_rdata_i[10]_i_2_n_0\,
      \s_axi_rdata_i_reg[10]_3\ => \s_axi_rdata_i_reg[10]_1\,
      \s_axi_rdata_i_reg[6]\ => \s_axi_rdata_i[6]_i_2_n_0\,
      \s_axi_rdata_i_reg[6]_0\ => \s_axi_rdata_i_reg[6]\,
      \s_axi_rdata_i_reg[7]\ => \s_axi_rdata_i[7]_i_2_n_0\,
      \s_axi_rdata_i_reg[7]_0\ => \s_axi_rdata_i_reg[7]\,
      \s_axi_rdata_i_reg[8]\ => \s_axi_rdata_i[8]_i_2_n_0\,
      \s_axi_rdata_i_reg[8]_0\ => \s_axi_rdata_i_reg[8]\,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0\,
      I1 => irq_gen,
      I2 => \^mer_int_reg[0]_0\,
      O => idle_and_irq
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => idle_and_irq,
      Q => idle_and_irq_d1,
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^d\(0),
      Q => ivar_index_axi_clk(0),
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \IVR_GEN.ivr_reg_n_0_[1]\,
      Q => ivar_index_axi_clk(1),
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^ivr_gen.ivr_reg[2]_0\,
      Q => ivar_index_axi_clk(2),
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^d\(1),
      Q => ivar_index_axi_clk(3),
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^mer_int_reg[0]_0\,
      I1 => irq_gen,
      I2 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0\,
      I3 => idle_and_irq_d1,
      O => ivar_index_sample_en_i
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ivar_index_sample_en_i,
      Q => ivar_index_sample_en,
      R => \^sr\(0)
    );
\IVR_GEN.ivr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1F1F1FFFFFFF"
    )
        port map (
      I0 => \IVR_GEN.ivr[0]_i_2_n_0\,
      I1 => \IVR_GEN.ivr[0]_i_3_n_0\,
      I2 => s_axi_aresetn,
      I3 => \IVR_GEN.ivr[0]_i_4_n_0\,
      I4 => \IVR_GEN.ivr[3]_i_2_n_0\,
      I5 => \IVR_GEN.ivr[0]_i_5_n_0\,
      O => \IVR_GEN.ivr[0]_i_1_n_0\
    );
\IVR_GEN.ivr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => p_0_in35_in,
      I1 => p_1_in36_in,
      I2 => \^p_0_in37_in\,
      I3 => \^p_1_in38_in\,
      O => \IVR_GEN.ivr[0]_i_2_n_0\
    );
\IVR_GEN.ivr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \IPR_GEN.ipr[8]_i_1_n_0\,
      I1 => \IVR_GEN.ivr[1]_i_2_n_0\,
      I2 => \IPR_GEN.ipr[5]_i_1_n_0\,
      I3 => irq_gen_i_5_n_0,
      I4 => irq_gen_i_4_n_0,
      I5 => \IPR_GEN.ipr[4]_i_1_n_0\,
      O => \IVR_GEN.ivr[0]_i_3_n_0\
    );
\IVR_GEN.ivr[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FFF"
    )
        port map (
      I0 => p_0_in43_in,
      I1 => p_1_in44_in,
      I2 => p_0_in41_in,
      I3 => p_1_in42_in,
      O => \IVR_GEN.ivr[0]_i_4_n_0\
    );
\IVR_GEN.ivr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0F000F08"
    )
        port map (
      I0 => p_1_in48_in,
      I1 => p_0_in47_in,
      I2 => \IPR_GEN.ipr[1]_i_1_n_0\,
      I3 => \IPR_GEN.ipr[2]_i_1_n_0\,
      I4 => \IPR_GEN.ipr[3]_i_1_n_0\,
      I5 => \IPR_GEN.ipr[0]_i_1_n_0\,
      O => \IVR_GEN.ivr[0]_i_5_n_0\
    );
\IVR_GEN.ivr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1FFFFFFF1F0F0F"
    )
        port map (
      I0 => \IPR_GEN.ipr[8]_i_1_n_0\,
      I1 => \IPR_GEN.ipr[9]_i_1_n_0\,
      I2 => s_axi_aresetn,
      I3 => \IVR_GEN.ivr[1]_i_2_n_0\,
      I4 => \IVR_GEN.ivr[3]_i_2_n_0\,
      I5 => \IVR_GEN.ivr[1]_i_3_n_0\,
      O => \IVR_GEN.ivr[1]_i_1_n_0\
    );
\IVR_GEN.ivr[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => p_1_in42_in,
      I2 => p_0_in43_in,
      I3 => p_1_in44_in,
      O => \IVR_GEN.ivr[1]_i_2_n_0\
    );
\IVR_GEN.ivr[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => \^p_1_in52_in\,
      I1 => \^p_0_in51_in\,
      I2 => \^p_1_in50_in\,
      I3 => \^p_0_in49_in\,
      I4 => irq_gen_i_4_n_0,
      O => \IVR_GEN.ivr[1]_i_3_n_0\
    );
\IVR_GEN.ivr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001500000015FFFF"
    )
        port map (
      I0 => \IPR_GEN.ipr[9]_i_1_n_0\,
      I1 => p_1_in40_in,
      I2 => p_0_in39_in,
      I3 => irq_gen_i_2_n_0,
      I4 => irq_gen_i_3_n_0,
      I5 => \IVR_GEN.ivr[2]_i_2_n_0\,
      O => \IVR_GEN.ivr[2]_i_1_n_0\
    );
\IVR_GEN.ivr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^p_1_in52_in\,
      I1 => \^p_0_in51_in\,
      I2 => \^p_1_in50_in\,
      I3 => \^p_0_in49_in\,
      I4 => irq_gen_i_4_n_0,
      O => \IVR_GEN.ivr[2]_i_2_n_0\
    );
\IVR_GEN.ivr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07770000FFFFFFFF"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => p_1_in42_in,
      I2 => p_0_in43_in,
      I3 => p_1_in44_in,
      I4 => \IVR_GEN.ivr[3]_i_2_n_0\,
      I5 => s_axi_aresetn,
      O => \IVR_GEN.ivr[3]_i_1_n_0\
    );
\IVR_GEN.ivr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000700070007"
    )
        port map (
      I0 => p_0_in45_in,
      I1 => p_1_in46_in,
      I2 => irq_gen_i_5_n_0,
      I3 => irq_gen_i_4_n_0,
      I4 => p_1_in48_in,
      I5 => p_0_in47_in,
      O => \IVR_GEN.ivr[3]_i_2_n_0\
    );
\IVR_GEN.ivr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[0]_i_1_n_0\,
      Q => \^d\(0),
      R => '0'
    );
\IVR_GEN.ivr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[1]_i_1_n_0\,
      Q => \IVR_GEN.ivr_reg_n_0_[1]\,
      R => '0'
    );
\IVR_GEN.ivr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[2]_i_1_n_0\,
      Q => \^ivr_gen.ivr_reg[2]_0\,
      S => \^sr\(0)
    );
\IVR_GEN.ivr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[3]_i_1_n_0\,
      Q => \^d\(1),
      R => '0'
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0\,
      I1 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(0),
      I4 => s_axi_aresetn,
      I5 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => ivar_index_axi_clk(3),
      I1 => ivar_index_axi_clk(2),
      I2 => first_ack,
      I3 => \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\,
      I4 => ivar_index_axi_clk(1),
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0\,
      Q => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      R => '0'
    );
\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(0),
      Q => \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\,
      R => \^sr\(0)
    );
\REG_GEN[0].ier[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^reg_gen[0].ier_reg[0]_0\,
      I1 => \^sie_gen.sie_bit_gen[0].sie_reg[0]_0\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(0),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[0].cie_reg[0]_0\,
      O => \REG_GEN[0].ier[0]_i_1_n_0\
    );
\REG_GEN[0].ier_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].ier[0]_i_1_n_0\,
      Q => \^reg_gen[0].ier_reg[0]_0\,
      R => '0'
    );
\REG_GEN[0].isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \^reg_gen[0].isr_reg[0]_0\,
      I1 => isr_en,
      I2 => s_axi_wdata(0),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\,
      I5 => p_35_out,
      O => \REG_GEN[0].isr[0]_i_1_n_0\
    );
\REG_GEN[0].isr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      I1 => s_axi_aresetn,
      O => p_35_out
    );
\REG_GEN[0].isr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].isr[0]_i_1_n_0\,
      Q => \^reg_gen[0].isr_reg[0]_0\,
      R => '0'
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]_0\,
      I1 => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(10),
      I4 => s_axi_aresetn,
      I5 => p_10_in,
      O => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1_n_0\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => ivar_index_axi_clk(3),
      I2 => second_ack,
      I3 => ivar_index_axi_clk(0),
      I4 => ivar_index_axi_clk(1),
      I5 => \^p_0_in2_in\,
      O => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3_n_0\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1_n_0\,
      Q => p_10_in,
      R => '0'
    );
\REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(10),
      Q => \^p_0_in2_in\,
      R => \^sr\(0)
    );
\REG_GEN[10].ier[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => p_0_in35_in,
      I1 => \^p_0_in3_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(10),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in38_in\,
      O => \REG_GEN[10].ier[10]_i_1_n_0\
    );
\REG_GEN[10].ier_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[10].ier[10]_i_1_n_0\,
      Q => p_0_in35_in,
      R => '0'
    );
\REG_GEN[10].isr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => p_1_in36_in,
      I1 => isr_en,
      I2 => s_axi_wdata(10),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg\,
      I5 => p_25_out,
      O => \REG_GEN[10].isr[10]_i_1_n_0\
    );
\REG_GEN[10].isr[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_10_in,
      I1 => s_axi_aresetn,
      O => p_25_out
    );
\REG_GEN[10].isr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[10].isr[10]_i_1_n_0\,
      Q => p_1_in36_in,
      R => '0'
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]_0\,
      I1 => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3_n_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(11),
      I4 => s_axi_aresetn,
      I5 => p_11_in,
      O => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1_n_0\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => ivar_index_axi_clk(3),
      I2 => first_ack,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(0),
      I5 => \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\,
      O => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3_n_0\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1_n_0\,
      Q => p_11_in,
      R => '0'
    );
\REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(11),
      Q => \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\,
      R => \^sr\(0)
    );
\REG_GEN[11].ier[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in34_in\,
      I1 => \^p_0_in1_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(11),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in36_in\,
      O => \REG_GEN[11].ier[11]_i_1_n_0\
    );
\REG_GEN[11].ier_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[11].ier[11]_i_1_n_0\,
      Q => \^p_0_in34_in\,
      R => '0'
    );
\REG_GEN[11].isr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => isr_en,
      I2 => s_axi_wdata(11),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg\,
      I5 => p_24_out,
      O => \REG_GEN[11].isr[11]_i_1_n_0\
    );
\REG_GEN[11].isr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_11_in,
      I1 => s_axi_aresetn,
      O => p_24_out
    );
\REG_GEN[11].isr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[11].isr[11]_i_1_n_0\,
      Q => \^p_1_in\,
      R => '0'
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]_0\,
      I1 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(1),
      I4 => s_axi_aresetn,
      I5 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(3),
      I1 => ivar_index_axi_clk(2),
      I2 => second_ack,
      I3 => \^p_0_in29_in\,
      I4 => ivar_index_axi_clk(1),
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3_n_0\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0\,
      Q => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      R => '0'
    );
\REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(1),
      Q => \^p_0_in29_in\,
      R => \^sr\(0)
    );
\REG_GEN[1].ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => p_0_in53_in,
      I1 => \^p_0_in21_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(1),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in56_in\,
      O => \REG_GEN[1].ier[1]_i_1_n_0\
    );
\REG_GEN[1].ier_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].ier[1]_i_1_n_0\,
      Q => p_0_in53_in,
      R => '0'
    );
\REG_GEN[1].isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => p_1_in54_in,
      I1 => isr_en,
      I2 => s_axi_wdata(1),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg\,
      I5 => p_34_out,
      O => \REG_GEN[1].isr[1]_i_1_n_0\
    );
\REG_GEN[1].isr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      I1 => s_axi_aresetn,
      O => p_34_out
    );
\REG_GEN[1].isr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].isr[1]_i_1_n_0\,
      Q => p_1_in54_in,
      R => '0'
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0\,
      I1 => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(2),
      I4 => s_axi_aresetn,
      I5 => p_2_in,
      O => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(3),
      I1 => ivar_index_axi_clk(2),
      I2 => second_ack,
      I3 => \^p_0_in26_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => ivar_index_axi_clk(1),
      O => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3_n_0\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(2),
      Q => \^p_0_in26_in\,
      R => \^sr\(0)
    );
\REG_GEN[2].ier[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in51_in\,
      I1 => \^p_0_in19_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(2),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in54_in\,
      O => \REG_GEN[2].ier[2]_i_1_n_0\
    );
\REG_GEN[2].ier_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[2].ier[2]_i_1_n_0\,
      Q => \^p_0_in51_in\,
      R => '0'
    );
\REG_GEN[2].isr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \^p_1_in52_in\,
      I1 => isr_en,
      I2 => s_axi_wdata(2),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg\,
      I5 => p_33_out,
      O => \REG_GEN[2].isr[2]_i_1_n_0\
    );
\REG_GEN[2].isr[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in,
      I1 => s_axi_aresetn,
      O => p_33_out
    );
\REG_GEN[2].isr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[2].isr[2]_i_1_n_0\,
      Q => \^p_1_in52_in\,
      R => '0'
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0\,
      I1 => \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(3),
      I4 => s_axi_aresetn,
      I5 => p_3_in,
      O => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0\
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(3),
      I1 => ivar_index_axi_clk(2),
      I2 => first_ack,
      I3 => \^p_0_in23_in\,
      I4 => ivar_index_axi_clk(1),
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0\
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(3),
      Q => \^p_0_in23_in\,
      R => \^sr\(0)
    );
\REG_GEN[3].ier[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in49_in\,
      I1 => \^p_0_in17_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(3),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in52_in\,
      O => \REG_GEN[3].ier[3]_i_1_n_0\
    );
\REG_GEN[3].ier_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[3].ier[3]_i_1_n_0\,
      Q => \^p_0_in49_in\,
      R => '0'
    );
\REG_GEN[3].isr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \^p_1_in50_in\,
      I1 => isr_en,
      I2 => s_axi_wdata(3),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\,
      I5 => p_32_out,
      O => \REG_GEN[3].isr[3]_i_1_n_0\
    );
\REG_GEN[3].isr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_3_in,
      I1 => s_axi_aresetn,
      O => p_32_out
    );
\REG_GEN[3].isr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[3].isr[3]_i_1_n_0\,
      Q => \^p_1_in50_in\,
      R => '0'
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]_0\,
      I1 => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(4),
      I4 => s_axi_aresetn,
      I5 => p_4_in,
      O => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => ivar_index_axi_clk(3),
      I1 => ivar_index_axi_clk(2),
      I2 => second_ack,
      I3 => \^p_0_in20_in\,
      I4 => ivar_index_axi_clk(1),
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3_n_0\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(4),
      Q => \^p_0_in20_in\,
      R => \^sr\(0)
    );
\REG_GEN[4].ier[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => p_0_in47_in,
      I1 => \^p_0_in15_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(4),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in50_in\,
      O => \REG_GEN[4].ier[4]_i_1_n_0\
    );
\REG_GEN[4].ier_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[4].ier[4]_i_1_n_0\,
      Q => p_0_in47_in,
      R => '0'
    );
\REG_GEN[4].isr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => p_1_in48_in,
      I1 => isr_en,
      I2 => s_axi_wdata(4),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg\,
      I5 => p_31_out,
      O => \REG_GEN[4].isr[4]_i_1_n_0\
    );
\REG_GEN[4].isr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_4_in,
      I1 => s_axi_aresetn,
      O => p_31_out
    );
\REG_GEN[4].isr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[4].isr[4]_i_1_n_0\,
      Q => p_1_in48_in,
      R => '0'
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]_0\,
      I1 => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3_n_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(5),
      I4 => s_axi_aresetn,
      I5 => p_5_in,
      O => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(3),
      I1 => ivar_index_axi_clk(2),
      I2 => first_ack,
      I3 => \^reg_gen[5].imr_fast_mode_gen.imr_reg[5]_0\,
      I4 => ivar_index_axi_clk(1),
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3_n_0\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(5),
      Q => \^reg_gen[5].imr_fast_mode_gen.imr_reg[5]_0\,
      R => \^sr\(0)
    );
\REG_GEN[5].ier[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => p_0_in45_in,
      I1 => \^p_0_in13_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(5),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in48_in\,
      O => \REG_GEN[5].ier[5]_i_1_n_0\
    );
\REG_GEN[5].ier_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[5].ier[5]_i_1_n_0\,
      Q => p_0_in45_in,
      R => '0'
    );
\REG_GEN[5].isr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => p_1_in46_in,
      I1 => isr_en,
      I2 => s_axi_wdata(5),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\,
      I5 => p_30_out,
      O => \REG_GEN[5].isr[5]_i_1_n_0\
    );
\REG_GEN[5].isr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_5_in,
      I1 => s_axi_aresetn,
      O => p_30_out
    );
\REG_GEN[5].isr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[5].isr[5]_i_1_n_0\,
      Q => p_1_in46_in,
      R => '0'
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]_0\,
      I1 => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3_n_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(6),
      I4 => s_axi_aresetn,
      I5 => p_6_in,
      O => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(3),
      I1 => ivar_index_axi_clk(2),
      I2 => first_ack,
      I3 => \^p_0_in14_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => ivar_index_axi_clk(1),
      O => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3_n_0\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0\,
      Q => p_6_in,
      R => '0'
    );
\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(6),
      Q => \^p_0_in14_in\,
      R => \^sr\(0)
    );
\REG_GEN[6].ier[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => p_0_in43_in,
      I1 => \^p_0_in11_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(6),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in46_in\,
      O => \REG_GEN[6].ier[6]_i_1_n_0\
    );
\REG_GEN[6].ier_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[6].ier[6]_i_1_n_0\,
      Q => p_0_in43_in,
      R => '0'
    );
\REG_GEN[6].isr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => p_1_in44_in,
      I1 => isr_en,
      I2 => s_axi_wdata(6),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      I5 => p_29_out,
      O => \REG_GEN[6].isr[6]_i_1_n_0\
    );
\REG_GEN[6].isr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_6_in,
      I1 => s_axi_aresetn,
      O => p_29_out
    );
\REG_GEN[6].isr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[6].isr[6]_i_1_n_0\,
      Q => p_1_in44_in,
      R => '0'
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]_0\,
      I1 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(7),
      I4 => s_axi_aresetn,
      I5 => p_7_in,
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1_n_0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(3),
      I1 => ivar_index_axi_clk(2),
      I2 => second_ack,
      I3 => \^reg_gen[7].imr_fast_mode_gen.imr_reg[7]_0\,
      I4 => ivar_index_axi_clk(1),
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3_n_0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1_n_0\,
      Q => p_7_in,
      R => '0'
    );
\REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(7),
      Q => \^reg_gen[7].imr_fast_mode_gen.imr_reg[7]_0\,
      R => \^sr\(0)
    );
\REG_GEN[7].ier[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => \^p_0_in9_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(7),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in44_in\,
      O => \REG_GEN[7].ier[7]_i_1_n_0\
    );
\REG_GEN[7].ier_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[7].ier[7]_i_1_n_0\,
      Q => p_0_in41_in,
      R => '0'
    );
\REG_GEN[7].isr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => p_1_in42_in,
      I1 => isr_en,
      I2 => s_axi_wdata(7),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg\,
      I5 => p_28_out,
      O => \REG_GEN[7].isr[7]_i_1_n_0\
    );
\REG_GEN[7].isr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_7_in,
      I1 => s_axi_aresetn,
      O => p_28_out
    );
\REG_GEN[7].isr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[7].isr[7]_i_1_n_0\,
      Q => p_1_in42_in,
      R => '0'
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]_0\,
      I1 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3_n_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(8),
      I4 => s_axi_aresetn,
      I5 => p_8_in,
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1_n_0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(0),
      I2 => \^p_0_in8_in\,
      I3 => ivar_index_axi_clk(2),
      I4 => ivar_index_axi_clk(3),
      I5 => first_ack,
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3_n_0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1_n_0\,
      Q => p_8_in,
      R => '0'
    );
\REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(8),
      Q => \^p_0_in8_in\,
      R => \^sr\(0)
    );
\REG_GEN[8].ier[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => p_0_in39_in,
      I1 => \^p_0_in7_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(8),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in42_in\,
      O => \REG_GEN[8].ier[8]_i_1_n_0\
    );
\REG_GEN[8].ier_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[8].ier[8]_i_1_n_0\,
      Q => p_0_in39_in,
      R => '0'
    );
\REG_GEN[8].isr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => p_1_in40_in,
      I1 => isr_en,
      I2 => s_axi_wdata(8),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg\,
      I5 => p_27_out,
      O => \REG_GEN[8].isr[8]_i_1_n_0\
    );
\REG_GEN[8].isr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_8_in,
      I1 => s_axi_aresetn,
      O => p_27_out
    );
\REG_GEN[8].isr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[8].isr[8]_i_1_n_0\,
      Q => p_1_in40_in,
      R => '0'
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]_0\,
      I1 => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(9),
      I4 => s_axi_aresetn,
      I5 => p_9_in,
      O => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1_n_0\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(0),
      I2 => \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\,
      I3 => ivar_index_axi_clk(2),
      I4 => ivar_index_axi_clk(3),
      I5 => second_ack,
      O => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3_n_0\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1_n_0\,
      Q => p_9_in,
      R => '0'
    );
\REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(9),
      Q => \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\,
      R => \^sr\(0)
    );
\REG_GEN[9].ier[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in37_in\,
      I1 => \^p_0_in5_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(9),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in40_in\,
      O => \REG_GEN[9].ier[9]_i_1_n_0\
    );
\REG_GEN[9].ier_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[9].ier[9]_i_1_n_0\,
      Q => \^p_0_in37_in\,
      R => '0'
    );
\REG_GEN[9].isr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \^p_1_in38_in\,
      I1 => isr_en,
      I2 => s_axi_wdata(9),
      I3 => \^p_0_in\,
      I4 => \INTR_DETECT_GEN[9].LVL_DETECT_GEN.hw_intr_reg\,
      I5 => p_26_out,
      O => \REG_GEN[9].isr[9]_i_1_n_0\
    );
\REG_GEN[9].isr[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_9_in,
      I1 => s_axi_aresetn,
      O => p_26_out
    );
\REG_GEN[9].isr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[9].isr[9]_i_1_n_0\,
      Q => \^p_1_in38_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\,
      Q => \^sie_gen.sie_bit_gen[0].sie_reg[0]_0\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0\,
      Q => \^p_0_in3_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0\,
      Q => \^p_0_in1_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0\,
      Q => \^p_0_in21_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0\,
      Q => \^p_0_in19_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0\,
      Q => \^p_0_in17_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0\,
      Q => \^p_0_in15_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0\,
      Q => \^p_0_in13_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0\,
      Q => \^p_0_in11_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0\,
      Q => \^p_0_in9_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0\,
      Q => \^p_0_in7_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0\,
      Q => \^p_0_in5_in\,
      R => '0'
    );
ack_or_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_11_in,
      I1 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      I2 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      I3 => p_3_in,
      I4 => ack_or_i_2_n_0,
      I5 => ack_or_i_3_n_0,
      O => ack_or_i
    );
ack_or_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_6_in,
      I1 => p_4_in,
      I2 => p_5_in,
      I3 => p_2_in,
      O => ack_or_i_2_n_0
    );
ack_or_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_9_in,
      I1 => p_8_in,
      I2 => p_10_in,
      I3 => p_7_in,
      O => ack_or_i_3_n_0
    );
ack_or_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ack_or_i,
      Q => ack_or,
      R => \^sr\(0)
    );
irq_gen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFFEAFFEAFF"
    )
        port map (
      I0 => irq_gen_i_2_n_0,
      I1 => p_0_in39_in,
      I2 => p_1_in40_in,
      I3 => irq_gen_i_3_n_0,
      I4 => \^p_1_in38_in\,
      I5 => \^p_0_in37_in\,
      O => irq_gen_i
    );
irq_gen_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_0_in34_in\,
      I1 => \^p_1_in\,
      I2 => p_0_in35_in,
      I3 => p_1_in36_in,
      O => irq_gen_i_2_n_0
    );
irq_gen_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010101"
    )
        port map (
      I0 => \IPR_GEN.ipr[4]_i_1_n_0\,
      I1 => irq_gen_i_4_n_0,
      I2 => irq_gen_i_5_n_0,
      I3 => p_1_in46_in,
      I4 => p_0_in45_in,
      I5 => \IVR_GEN.ivr[1]_i_2_n_0\,
      O => irq_gen_i_3_n_0
    );
irq_gen_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_in53_in,
      I1 => p_1_in54_in,
      I2 => \^reg_gen[0].ier_reg[0]_0\,
      I3 => \^reg_gen[0].isr_reg[0]_0\,
      O => irq_gen_i_4_n_0
    );
irq_gen_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_0_in49_in\,
      I1 => \^p_1_in50_in\,
      I2 => \^p_0_in51_in\,
      I3 => \^p_1_in52_in\,
      O => irq_gen_i_5_n_0
    );
irq_gen_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_gen_i,
      Q => irq_gen,
      R => \^sr\(0)
    );
\mer_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mer_int_reg[0]_1\,
      Q => \^mer_int_reg[0]_0\,
      R => \^sr\(0)
    );
\mer_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mer_int_reg[1]_0\,
      Q => \^p_0_in\,
      R => \^sr\(0)
    );
\s_axi_rdata_i[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D000DDDDDDDDDDD"
    )
        port map (
      I0 => p_0_in35_in,
      I1 => \s_axi_rdata_i_reg[6]_0\,
      I2 => ipr(10),
      I3 => \ram_i[0].Doutb_reg[0]\(0),
      I4 => p_1_in36_in,
      I5 => \s_axi_rdata_i_reg[6]_1\,
      O => \s_axi_rdata_i[10]_i_2_n_0\
    );
\s_axi_rdata_i[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[10]_2\,
      I1 => \IVR_GEN.ivr_reg_n_0_[1]\,
      I2 => \^ivr_gen.ivr_reg[2]_0\,
      I3 => \ram_i[0].Doutb_reg[0]\(3),
      I4 => \^d\(0),
      O => \^ivr_gen.ivr_reg[1]_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F7FFF7F"
    )
        port map (
      I0 => \IVR_GEN.ivr_reg_n_0_[1]\,
      I1 => \ram_i[0].Doutb_reg[0]\(2),
      I2 => \ram_i[0].Doutb_reg[0]\(1),
      I3 => \ram_i[0].Doutb_reg[0]\(0),
      I4 => \^p_0_in\,
      I5 => \s_axi_rdata_i[1]_i_4_n_0\,
      O => \IVR_GEN.ivr_reg[1]_1\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A0ACFC0"
    )
        port map (
      I0 => p_0_in53_in,
      I1 => ipr(1),
      I2 => \ram_i[0].Doutb_reg[0]\(0),
      I3 => p_1_in54_in,
      I4 => \ram_i[0].Doutb_reg[0]\(1),
      I5 => \ram_i[0].Doutb_reg[0]\(2),
      O => \s_axi_rdata_i[1]_i_4_n_0\
    );
\s_axi_rdata_i[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^d\(0),
      I1 => \ram_i[0].Doutb_reg[0]\(3),
      I2 => \^ivr_gen.ivr_reg[2]_0\,
      I3 => \IVR_GEN.ivr_reg_n_0_[1]\,
      O => \IVR_GEN.ivr_reg[0]_0\
    );
\s_axi_rdata_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF5F5303F"
    )
        port map (
      I0 => p_0_in47_in,
      I1 => ipr(4),
      I2 => \ram_i[0].Doutb_reg[0]\(0),
      I3 => p_1_in48_in,
      I4 => \ram_i[0].Doutb_reg[0]\(1),
      I5 => \ram_i[0].Doutb_reg[0]\(2),
      O => \REG_GEN[4].ier_reg[4]_0\
    );
\s_axi_rdata_i[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF5F5303F"
    )
        port map (
      I0 => p_0_in45_in,
      I1 => ipr(5),
      I2 => \ram_i[0].Doutb_reg[0]\(0),
      I3 => p_1_in46_in,
      I4 => \ram_i[0].Doutb_reg[0]\(1),
      I5 => \ram_i[0].Doutb_reg[0]\(2),
      O => \REG_GEN[5].ier_reg[5]_0\
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DD0D0DDDDDDDDD"
    )
        port map (
      I0 => p_0_in43_in,
      I1 => \s_axi_rdata_i_reg[6]_0\,
      I2 => p_1_in44_in,
      I3 => ipr(6),
      I4 => \ram_i[0].Doutb_reg[0]\(0),
      I5 => \s_axi_rdata_i_reg[6]_1\,
      O => \s_axi_rdata_i[6]_i_2_n_0\
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DD0D0DDDDDDDDD"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => \s_axi_rdata_i_reg[6]_0\,
      I2 => p_1_in42_in,
      I3 => ipr(7),
      I4 => \ram_i[0].Doutb_reg[0]\(0),
      I5 => \s_axi_rdata_i_reg[6]_1\,
      O => \s_axi_rdata_i[7]_i_2_n_0\
    );
\s_axi_rdata_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DD0D0DDDDDDDDD"
    )
        port map (
      I0 => p_0_in39_in,
      I1 => \s_axi_rdata_i_reg[6]_0\,
      I2 => p_1_in40_in,
      I3 => ipr(8),
      I4 => \ram_i[0].Doutb_reg[0]\(0),
      I5 => \s_axi_rdata_i_reg[6]_1\,
      O => \s_axi_rdata_i[8]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_mb_0_axi_intc_0_slave_attachment is
  port (
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    Bus_RNW_reg_reg_7 : out STD_LOGIC;
    Bus_RNW_reg_reg_8 : out STD_LOGIC;
    Bus_RNW_reg_reg_9 : out STD_LOGIC;
    Bus_RNW_reg_reg_10 : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    isr_en : out STD_LOGIC;
    ip2bus_rdack_reg : out STD_LOGIC;
    ip2bus_wrack_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bus2ip_addr_i_reg[4]_0\ : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    Bus_RNW_reg_reg_11 : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    Or128_vec2stdlogic19_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_1\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_2\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_3\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_4\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[4]_1\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_5\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_12 : out STD_LOGIC;
    Bus_RNW_reg_reg_13 : out STD_LOGIC;
    Bus_RNW_reg_reg_14 : out STD_LOGIC;
    Bus_RNW_reg_reg_15 : out STD_LOGIC;
    Bus_RNW_reg_reg_16 : out STD_LOGIC;
    Bus_RNW_reg_reg_17 : out STD_LOGIC;
    Bus_RNW_reg_reg_18 : out STD_LOGIC;
    Bus_RNW_reg_reg_19 : out STD_LOGIC;
    Bus_RNW_reg_reg_20 : out STD_LOGIC;
    Bus_RNW_reg_reg_21 : out STD_LOGIC;
    Bus_RNW_reg_reg_22 : out STD_LOGIC;
    Bus_RNW_reg_reg_23 : out STD_LOGIC;
    \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\ : out STD_LOGIC;
    \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\ : out STD_LOGIC;
    \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\ : out STD_LOGIC;
    \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\ : out STD_LOGIC;
    \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\ : out STD_LOGIC;
    \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\ : out STD_LOGIC;
    \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\ : out STD_LOGIC;
    \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\ : out STD_LOGIC;
    \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\ : out STD_LOGIC;
    \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\ : out STD_LOGIC;
    \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\ : out STD_LOGIC;
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : in STD_LOGIC;
    p_0_in21_in : in STD_LOGIC;
    p_0_in19_in : in STD_LOGIC;
    p_0_in17_in : in STD_LOGIC;
    p_0_in15_in : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    p_0_in11_in : in STD_LOGIC;
    p_0_in9_in : in STD_LOGIC;
    p_0_in7_in : in STD_LOGIC;
    p_0_in5_in : in STD_LOGIC;
    p_0_in3_in : in STD_LOGIC;
    p_0_in1_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \s_axi_rdata_i_reg[1]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ : in STD_LOGIC;
    p_0_in2_in : in STD_LOGIC;
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ : in STD_LOGIC;
    p_0_in37_in : in STD_LOGIC;
    p_0_in8_in : in STD_LOGIC;
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ : in STD_LOGIC;
    p_0_in14_in : in STD_LOGIC;
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ : in STD_LOGIC;
    p_0_in20_in : in STD_LOGIC;
    p_0_in26_in : in STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC;
    p_0_in51_in : in STD_LOGIC;
    p_1_in52_in : in STD_LOGIC;
    \s_axi_rdata_i[11]_i_2_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    p_1_in50_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : in STD_LOGIC;
    p_1_in38_in : in STD_LOGIC;
    p_0_in34_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi_rdata_i[3]_i_3_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in49_in : in STD_LOGIC;
    \mer_int_reg[0]\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in56_in : in STD_LOGIC;
    p_0_in54_in : in STD_LOGIC;
    p_0_in52_in : in STD_LOGIC;
    p_0_in50_in : in STD_LOGIC;
    p_0_in48_in : in STD_LOGIC;
    p_0_in46_in : in STD_LOGIC;
    p_0_in44_in : in STD_LOGIC;
    p_0_in42_in : in STD_LOGIC;
    p_0_in40_in : in STD_LOGIC;
    p_0_in38_in : in STD_LOGIC;
    p_0_in36_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : in STD_LOGIC;
    p_0_in23_in : in STD_LOGIC;
    p_0_in29_in : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end mcu_mb_0_axi_intc_0_slave_attachment;

architecture STRUCTURE of mcu_mb_0_axi_intc_0_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[4]_0\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[5]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal ip2bus_error : STD_LOGIC;
  signal \^ip2bus_rdack_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_reg\ : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_3_n_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[11]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[3]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[4]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair31";
begin
  \bus2ip_addr_i_reg[4]_0\ <= \^bus2ip_addr_i_reg[4]_0\;
  \bus2ip_addr_i_reg[5]_0\(3 downto 0) <= \^bus2ip_addr_i_reg[5]_0\(3 downto 0);
  ip2bus_rdack_reg <= \^ip2bus_rdack_reg\;
  ip2bus_wrack_reg <= \^ip2bus_wrack_reg\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444FFF4444"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => s_axi_arvalid,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^ip2bus_rdack_reg\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => s_axi_arvalid,
      I4 => \^ip2bus_wrack_reg\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^ip2bus_rdack_reg\,
      I1 => s_axi_rresp_i,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state[3]_i_2_n_0\,
      I4 => s_axi_bresp_i,
      I5 => \^ip2bus_wrack_reg\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^s_axi_bvalid_i_reg_0\,
      I1 => s_axi_bready,
      I2 => \^s_axi_rvalid_i_reg_0\,
      I3 => s_axi_rready,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
I_DECODER: entity work.mcu_mb_0_axi_intc_0_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_10 => Bus_RNW_reg_reg_9,
      Bus_RNW_reg_reg_11 => Bus_RNW_reg_reg_10,
      Bus_RNW_reg_reg_12 => Bus_RNW_reg_reg_11,
      Bus_RNW_reg_reg_13 => Bus_RNW_reg_reg_12,
      Bus_RNW_reg_reg_14 => Bus_RNW_reg_reg_13,
      Bus_RNW_reg_reg_15 => Bus_RNW_reg_reg_14,
      Bus_RNW_reg_reg_16 => Bus_RNW_reg_reg_15,
      Bus_RNW_reg_reg_17 => Bus_RNW_reg_reg_16,
      Bus_RNW_reg_reg_18 => Bus_RNW_reg_reg_17,
      Bus_RNW_reg_reg_19 => Bus_RNW_reg_reg_18,
      Bus_RNW_reg_reg_2 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_20 => Bus_RNW_reg_reg_19,
      Bus_RNW_reg_reg_21 => Bus_RNW_reg_reg_20,
      Bus_RNW_reg_reg_22 => Bus_RNW_reg_reg_21,
      Bus_RNW_reg_reg_23 => Bus_RNW_reg_reg_22,
      Bus_RNW_reg_reg_24 => Bus_RNW_reg_reg_23,
      Bus_RNW_reg_reg_25 => bus2ip_rnw_i_reg_n_0,
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_4,
      Bus_RNW_reg_reg_6 => Bus_RNW_reg_reg_5,
      Bus_RNW_reg_reg_7 => Bus_RNW_reg_reg_6,
      Bus_RNW_reg_reg_8 => Bus_RNW_reg_reg_7,
      Bus_RNW_reg_reg_9 => Bus_RNW_reg_reg_8,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      D(27 downto 7) => IP2Bus_Data(31 downto 11),
      D(6) => IP2Bus_Data(9),
      D(5 downto 0) => IP2Bus_Data(5 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6 downto 4) => bus2ip_addr(8 downto 6),
      \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3 downto 0) => \^bus2ip_addr_i_reg[5]_0\(3 downto 0),
      Or128_vec2stdlogic19_out => Or128_vec2stdlogic19_out,
      Q => start2,
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ => \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\,
      \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\ => \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\,
      \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\,
      \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\ => \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\,
      \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\ => \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\,
      \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\ => \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\,
      \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\ => \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\,
      \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\ => \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\,
      \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\,
      \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\ => \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\,
      \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\ => \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\,
      \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\,
      \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\ => \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\,
      \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\ => \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\,
      \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\,
      \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\ => \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      \bus2ip_addr_i_reg[4]\ => \bus2ip_addr_i_reg[4]_1\,
      \bus2ip_addr_i_reg[5]\ => \bus2ip_addr_i_reg[5]_5\,
      bus2ip_wrce(2 downto 0) => bus2ip_wrce(2 downto 0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_rdack_reg => \^ip2bus_rdack_reg\,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      ip2bus_wrack_reg => \^ip2bus_wrack_reg\,
      isr_en => isr_en,
      \mer_int_reg[0]\ => \mer_int_reg[0]\,
      p_0_in => p_0_in,
      p_0_in11_in => p_0_in11_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in15_in => p_0_in15_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in19_in => p_0_in19_in,
      p_0_in1_in => p_0_in1_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in21_in => p_0_in21_in,
      p_0_in23_in => p_0_in23_in,
      p_0_in26_in => p_0_in26_in,
      p_0_in29_in => p_0_in29_in,
      p_0_in2_in => p_0_in2_in,
      p_0_in36_in => p_0_in36_in,
      p_0_in38_in => p_0_in38_in,
      p_0_in3_in => p_0_in3_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in42_in => p_0_in42_in,
      p_0_in44_in => p_0_in44_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in48_in => p_0_in48_in,
      p_0_in50_in => p_0_in50_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in56_in => p_0_in56_in,
      p_0_in5_in => p_0_in5_in,
      p_0_in7_in => p_0_in7_in,
      p_0_in8_in => p_0_in8_in,
      p_0_in9_in => p_0_in9_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3 downto 0),
      s_axi_arready_0 => is_read_reg_n_0,
      \s_axi_rdata_i_reg[0]\ => \s_axi_rdata_i[0]_i_2_n_0\,
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i[0]_i_3_n_0\,
      \s_axi_rdata_i_reg[0]_1\ => \s_axi_rdata_i[0]_i_4_n_0\,
      \s_axi_rdata_i_reg[0]_2\ => \s_axi_rdata_i[11]_i_7_n_0\,
      \s_axi_rdata_i_reg[11]\ => \s_axi_rdata_i[11]_i_2_n_0\,
      \s_axi_rdata_i_reg[11]_0\ => \s_axi_rdata_i[11]_i_3_n_0\,
      \s_axi_rdata_i_reg[1]\ => \s_axi_rdata_i[1]_i_2_n_0\,
      \s_axi_rdata_i_reg[1]_0\ => \s_axi_rdata_i_reg[1]_0\,
      \s_axi_rdata_i_reg[2]\ => \s_axi_rdata_i[2]_i_2_n_0\,
      \s_axi_rdata_i_reg[2]_0\ => \s_axi_rdata_i[2]_i_3_n_0\,
      \s_axi_rdata_i_reg[31]\(27 downto 0) => Q(27 downto 0),
      \s_axi_rdata_i_reg[31]_0\ => \^bus2ip_addr_i_reg[4]_0\,
      \s_axi_rdata_i_reg[31]_1\ => \s_axi_rdata_i_reg[31]_0\,
      \s_axi_rdata_i_reg[31]_2\ => \s_axi_rdata_i[31]_i_6_n_0\,
      \s_axi_rdata_i_reg[3]\ => \s_axi_rdata_i[3]_i_2_n_0\,
      \s_axi_rdata_i_reg[3]_0\ => \s_axi_rdata_i[3]_i_3_n_0\,
      \s_axi_rdata_i_reg[4]\ => \s_axi_rdata_i[4]_i_2_n_0\,
      \s_axi_rdata_i_reg[4]_0\ => \s_axi_rdata_i[4]_i_3_n_0\,
      \s_axi_rdata_i_reg[4]_1\ => \s_axi_rdata_i_reg[4]_0\,
      \s_axi_rdata_i_reg[5]\ => \s_axi_rdata_i[5]_i_2_n_0\,
      \s_axi_rdata_i_reg[5]_0\ => \s_axi_rdata_i[5]_i_3_n_0\,
      \s_axi_rdata_i_reg[9]\ => \s_axi_rdata_i[9]_i_2_n_0\,
      \s_axi_rdata_i_reg[9]_0\ => \s_axi_rdata_i[9]_i_3_n_0\,
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wdata_1_sp_1 => s_axi_wdata_1_sn_1,
      s_axi_wready => is_write_reg_n_0
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(3),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(4),
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(5),
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020202"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_awvalid,
      I4 => s_axi_wvalid,
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(6),
      O => \bus2ip_addr_i[8]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \^bus2ip_addr_i_reg[5]_0\(0),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^bus2ip_addr_i_reg[5]_0\(1),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \^bus2ip_addr_i_reg[5]_0\(2),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \^bus2ip_addr_i_reg[5]_0\(3),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => bus2ip_addr(6),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => bus2ip_addr(7),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_2_n_0\,
      Q => bus2ip_addr(8),
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => bus2ip_rnw_i_reg_n_0,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[3]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => s_axi_bready,
      I3 => \^s_axi_rvalid_i_reg_0\,
      I4 => s_axi_rready,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SR(0),
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_error,
      I1 => s_axi_bresp_i,
      I2 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75553000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => state(0),
      I2 => state(1),
      I3 => \^ip2bus_wrack_reg\,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => rst
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDCFFFFFFFFFFFFF"
    )
        port map (
      I0 => \mer_int_reg[0]\,
      I1 => \^bus2ip_addr_i_reg[5]_0\(3),
      I2 => \s_axi_rdata_i[3]_i_3_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(0),
      I4 => \^bus2ip_addr_i_reg[5]_0\(1),
      I5 => \^bus2ip_addr_i_reg[5]_0\(2),
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00030C0800000C08"
    )
        port map (
      I0 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      I1 => \^bus2ip_addr_i_reg[5]_0\(3),
      I2 => \^bus2ip_addr_i_reg[5]_0\(2),
      I3 => \^bus2ip_addr_i_reg[5]_0\(0),
      I4 => \^bus2ip_addr_i_reg[5]_0\(1),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \s_axi_rdata_i[0]_i_3_n_0\
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(1),
      I2 => \^bus2ip_addr_i_reg[5]_0\(2),
      I3 => \s_axi_rdata_i_reg[0]_1\,
      I4 => \^bus2ip_addr_i_reg[5]_0\(0),
      I5 => \s_axi_rdata_i[11]_i_2_0\(0),
      O => \s_axi_rdata_i[0]_i_4_n_0\
    );
\s_axi_rdata_i[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220020"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => \^bus2ip_addr_i_reg[5]_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => p_0_in2_in,
      O => \bus2ip_addr_i_reg[5]_1\
    );
\s_axi_rdata_i[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFDF"
    )
        port map (
      I0 => p_0_in34_in,
      I1 => \^bus2ip_addr_i_reg[5]_0\(0),
      I2 => \^bus2ip_addr_i_reg[5]_0\(1),
      I3 => \^bus2ip_addr_i_reg[5]_0\(2),
      I4 => \^bus2ip_addr_i_reg[5]_0\(3),
      I5 => \s_axi_rdata_i[11]_i_6_n_0\,
      O => \s_axi_rdata_i[11]_i_2_n_0\
    );
\s_axi_rdata_i[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220020"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => \^bus2ip_addr_i_reg[5]_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\,
      O => \s_axi_rdata_i[11]_i_3_n_0\
    );
\s_axi_rdata_i[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(1),
      I2 => \^bus2ip_addr_i_reg[5]_0\(2),
      I3 => p_1_in,
      I4 => \^bus2ip_addr_i_reg[5]_0\(0),
      I5 => \s_axi_rdata_i[11]_i_2_0\(4),
      O => \s_axi_rdata_i[11]_i_6_n_0\
    );
\s_axi_rdata_i[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bus2ip_addr(7),
      I1 => bus2ip_addr(6),
      I2 => bus2ip_addr(8),
      O => \s_axi_rdata_i[11]_i_7_n_0\
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(0),
      I1 => p_0_in29_in,
      I2 => \^bus2ip_addr_i_reg[5]_0\(2),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDDFFDF"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => \^bus2ip_addr_i_reg[5]_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => p_0_in26_in,
      O => \s_axi_rdata_i[2]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF47FF"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[2]_0\,
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => p_0_in51_in,
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => \^bus2ip_addr_i_reg[5]_0\(0),
      I5 => \s_axi_rdata_i[2]_i_4_n_0\,
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11100010"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(2),
      I1 => \^bus2ip_addr_i_reg[5]_0\(1),
      I2 => p_1_in52_in,
      I3 => \^bus2ip_addr_i_reg[5]_0\(0),
      I4 => \s_axi_rdata_i[11]_i_2_0\(1),
      O => \s_axi_rdata_i[2]_i_4_n_0\
    );
\s_axi_rdata_i[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(2),
      I1 => \^bus2ip_addr_i_reg[5]_0\(1),
      I2 => \s_axi_rdata_i[3]_i_3_0\(1),
      I3 => \^bus2ip_addr_i_reg[5]_0\(0),
      O => \^bus2ip_addr_i_reg[4]_0\
    );
\s_axi_rdata_i[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(0),
      I1 => \^bus2ip_addr_i_reg[5]_0\(3),
      I2 => \^bus2ip_addr_i_reg[5]_0\(1),
      I3 => \^bus2ip_addr_i_reg[5]_0\(2),
      O => \s_axi_rdata_i[31]_i_6_n_0\
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(0),
      I1 => p_0_in23_in,
      I2 => \^bus2ip_addr_i_reg[5]_0\(2),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      O => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF47"
    )
        port map (
      I0 => \s_axi_rdata_i[11]_i_2_0\(2),
      I1 => \^bus2ip_addr_i_reg[5]_0\(0),
      I2 => p_1_in50_in,
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => \^bus2ip_addr_i_reg[5]_0\(2),
      I5 => \s_axi_rdata_i[3]_i_4_n_0\,
      O => \s_axi_rdata_i[3]_i_3_n_0\
    );
\s_axi_rdata_i[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000800"
    )
        port map (
      I0 => \s_axi_rdata_i[3]_i_3_0\(1),
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => \^bus2ip_addr_i_reg[5]_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => p_0_in49_in,
      O => \s_axi_rdata_i[3]_i_4_n_0\
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \s_axi_rdata_i_reg[4]_1\,
      O => \s_axi_rdata_i[4]_i_2_n_0\
    );
\s_axi_rdata_i[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220020"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => \^bus2ip_addr_i_reg[5]_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => p_0_in20_in,
      O => \s_axi_rdata_i[4]_i_3_n_0\
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \s_axi_rdata_i_reg[5]_0\,
      O => \s_axi_rdata_i[5]_i_2_n_0\
    );
\s_axi_rdata_i[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220020"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => \^bus2ip_addr_i_reg[5]_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\,
      O => \s_axi_rdata_i[5]_i_3_n_0\
    );
\s_axi_rdata_i[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220020"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => \^bus2ip_addr_i_reg[5]_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => p_0_in14_in,
      O => \bus2ip_addr_i_reg[5]_4\
    );
\s_axi_rdata_i[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220020"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => \^bus2ip_addr_i_reg[5]_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\,
      O => \bus2ip_addr_i_reg[5]_3\
    );
\s_axi_rdata_i[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220020"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(2),
      I2 => \^bus2ip_addr_i_reg[5]_0\(0),
      I3 => \^bus2ip_addr_i_reg[5]_0\(1),
      I4 => p_0_in8_in,
      O => \bus2ip_addr_i_reg[5]_2\
    );
\s_axi_rdata_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCF3F7FFFFF3F7"
    )
        port map (
      I0 => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\,
      I1 => \^bus2ip_addr_i_reg[5]_0\(3),
      I2 => \^bus2ip_addr_i_reg[5]_0\(2),
      I3 => \^bus2ip_addr_i_reg[5]_0\(0),
      I4 => \^bus2ip_addr_i_reg[5]_0\(1),
      I5 => p_0_in37_in,
      O => \s_axi_rdata_i[9]_i_2_n_0\
    );
\s_axi_rdata_i[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101000101000000"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[5]_0\(3),
      I1 => \^bus2ip_addr_i_reg[5]_0\(1),
      I2 => \^bus2ip_addr_i_reg[5]_0\(2),
      I3 => \^bus2ip_addr_i_reg[5]_0\(0),
      I4 => \s_axi_rdata_i[11]_i_2_0\(3),
      I5 => p_1_in38_in,
      O => \s_axi_rdata_i[9]_i_3_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(3),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(11),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(12),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(13),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(14),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(15),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(16),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(17),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(18),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(19),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(20),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(21),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(22),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(23),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(24),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(25),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(26),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(27),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(28),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(29),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(30),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(31),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(0),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(1),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(2),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => IP2Bus_Data(9),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070F0F0F"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => s_axi_wstrb(0),
      I2 => bus2ip_rnw_i_reg_n_0,
      I3 => s_axi_wstrb(1),
      I4 => s_axi_wstrb(2),
      O => ip2bus_error
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => ip2bus_error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75553000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => state(1),
      I2 => state(0),
      I3 => \^ip2bus_rdack_reg\,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0008"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB833B8"
    )
        port map (
      I0 => \^ip2bus_wrack_reg\,
      I1 => state(1),
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => \FSM_onehot_state[3]_i_2_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECEFECEC2C2F2C2C"
    )
        port map (
      I0 => \^ip2bus_rdack_reg\,
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => \state[1]_i_2_n_0\,
      I5 => \FSM_onehot_state[3]_i_2_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_mb_0_axi_intc_0_axi_lite_ipif is
  port (
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    Bus_RNW_reg_reg_7 : out STD_LOGIC;
    Bus_RNW_reg_reg_8 : out STD_LOGIC;
    Bus_RNW_reg_reg_9 : out STD_LOGIC;
    Bus_RNW_reg_reg_10 : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    isr_en : out STD_LOGIC;
    ip2bus_rdack_reg : out STD_LOGIC;
    ip2bus_wrack_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bus2ip_addr_i_reg[4]\ : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    Bus_RNW_reg_reg_11 : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    Or128_vec2stdlogic19_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_0\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_1\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_2\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_3\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[4]_0\ : out STD_LOGIC;
    \bus2ip_addr_i_reg[5]_4\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_12 : out STD_LOGIC;
    Bus_RNW_reg_reg_13 : out STD_LOGIC;
    Bus_RNW_reg_reg_14 : out STD_LOGIC;
    Bus_RNW_reg_reg_15 : out STD_LOGIC;
    Bus_RNW_reg_reg_16 : out STD_LOGIC;
    Bus_RNW_reg_reg_17 : out STD_LOGIC;
    Bus_RNW_reg_reg_18 : out STD_LOGIC;
    Bus_RNW_reg_reg_19 : out STD_LOGIC;
    Bus_RNW_reg_reg_20 : out STD_LOGIC;
    Bus_RNW_reg_reg_21 : out STD_LOGIC;
    Bus_RNW_reg_reg_22 : out STD_LOGIC;
    Bus_RNW_reg_reg_23 : out STD_LOGIC;
    \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\ : out STD_LOGIC;
    \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\ : out STD_LOGIC;
    \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\ : out STD_LOGIC;
    \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\ : out STD_LOGIC;
    \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\ : out STD_LOGIC;
    \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\ : out STD_LOGIC;
    \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\ : out STD_LOGIC;
    \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\ : out STD_LOGIC;
    \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\ : out STD_LOGIC;
    \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\ : out STD_LOGIC;
    \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\ : out STD_LOGIC;
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : in STD_LOGIC;
    p_0_in21_in : in STD_LOGIC;
    p_0_in19_in : in STD_LOGIC;
    p_0_in17_in : in STD_LOGIC;
    p_0_in15_in : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    p_0_in11_in : in STD_LOGIC;
    p_0_in9_in : in STD_LOGIC;
    p_0_in7_in : in STD_LOGIC;
    p_0_in5_in : in STD_LOGIC;
    p_0_in3_in : in STD_LOGIC;
    p_0_in1_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ : in STD_LOGIC;
    p_0_in2_in : in STD_LOGIC;
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ : in STD_LOGIC;
    p_0_in37_in : in STD_LOGIC;
    p_0_in8_in : in STD_LOGIC;
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ : in STD_LOGIC;
    p_0_in14_in : in STD_LOGIC;
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ : in STD_LOGIC;
    p_0_in20_in : in STD_LOGIC;
    p_0_in26_in : in STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    p_0_in51_in : in STD_LOGIC;
    p_1_in52_in : in STD_LOGIC;
    \s_axi_rdata_i[11]_i_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    p_1_in50_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    p_1_in38_in : in STD_LOGIC;
    p_0_in34_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi_rdata_i[3]_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in49_in : in STD_LOGIC;
    \mer_int_reg[0]\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in56_in : in STD_LOGIC;
    p_0_in54_in : in STD_LOGIC;
    p_0_in52_in : in STD_LOGIC;
    p_0_in50_in : in STD_LOGIC;
    p_0_in48_in : in STD_LOGIC;
    p_0_in46_in : in STD_LOGIC;
    p_0_in44_in : in STD_LOGIC;
    p_0_in42_in : in STD_LOGIC;
    p_0_in40_in : in STD_LOGIC;
    p_0_in38_in : in STD_LOGIC;
    p_0_in36_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : in STD_LOGIC;
    p_0_in23_in : in STD_LOGIC;
    p_0_in29_in : in STD_LOGIC
  );
end mcu_mb_0_axi_intc_0_axi_lite_ipif;

architecture STRUCTURE of mcu_mb_0_axi_intc_0_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
I_SLAVE_ATTACHMENT: entity work.mcu_mb_0_axi_intc_0_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_10 => Bus_RNW_reg_reg_10,
      Bus_RNW_reg_reg_11 => Bus_RNW_reg_reg_11,
      Bus_RNW_reg_reg_12 => Bus_RNW_reg_reg_12,
      Bus_RNW_reg_reg_13 => Bus_RNW_reg_reg_13,
      Bus_RNW_reg_reg_14 => Bus_RNW_reg_reg_14,
      Bus_RNW_reg_reg_15 => Bus_RNW_reg_reg_15,
      Bus_RNW_reg_reg_16 => Bus_RNW_reg_reg_16,
      Bus_RNW_reg_reg_17 => Bus_RNW_reg_reg_17,
      Bus_RNW_reg_reg_18 => Bus_RNW_reg_reg_18,
      Bus_RNW_reg_reg_19 => Bus_RNW_reg_reg_19,
      Bus_RNW_reg_reg_2 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_20 => Bus_RNW_reg_reg_20,
      Bus_RNW_reg_reg_21 => Bus_RNW_reg_reg_21,
      Bus_RNW_reg_reg_22 => Bus_RNW_reg_reg_22,
      Bus_RNW_reg_reg_23 => Bus_RNW_reg_reg_23,
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_4,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_5,
      Bus_RNW_reg_reg_6 => Bus_RNW_reg_reg_6,
      Bus_RNW_reg_reg_7 => Bus_RNW_reg_reg_7,
      Bus_RNW_reg_reg_8 => Bus_RNW_reg_reg_8,
      Bus_RNW_reg_reg_9 => Bus_RNW_reg_reg_9,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      D(3 downto 0) => D(3 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      Or128_vec2stdlogic19_out => Or128_vec2stdlogic19_out,
      Q(27 downto 0) => Q(27 downto 0),
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ => \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\,
      \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\ => \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\,
      \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\,
      \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\ => \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\,
      \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\ => \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\,
      \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\ => \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\,
      \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\ => \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\,
      \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\ => \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\,
      \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\,
      \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\ => \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\,
      \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\ => \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\,
      \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\,
      \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\ => \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\,
      \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\ => \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\,
      \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\,
      \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\ => \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      SR(0) => SR(0),
      \bus2ip_addr_i_reg[4]_0\ => \bus2ip_addr_i_reg[4]\,
      \bus2ip_addr_i_reg[4]_1\ => \bus2ip_addr_i_reg[4]_0\,
      \bus2ip_addr_i_reg[5]_0\(3 downto 0) => \bus2ip_addr_i_reg[5]\(3 downto 0),
      \bus2ip_addr_i_reg[5]_1\ => \bus2ip_addr_i_reg[5]_0\,
      \bus2ip_addr_i_reg[5]_2\ => \bus2ip_addr_i_reg[5]_1\,
      \bus2ip_addr_i_reg[5]_3\ => \bus2ip_addr_i_reg[5]_2\,
      \bus2ip_addr_i_reg[5]_4\ => \bus2ip_addr_i_reg[5]_3\,
      \bus2ip_addr_i_reg[5]_5\ => \bus2ip_addr_i_reg[5]_4\,
      bus2ip_wrce(2 downto 0) => bus2ip_wrce(2 downto 0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_rdack_reg => ip2bus_rdack_reg,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      ip2bus_wrack_reg => ip2bus_wrack_reg,
      isr_en => isr_en,
      \mer_int_reg[0]\ => \mer_int_reg[0]\,
      p_0_in => p_0_in,
      p_0_in11_in => p_0_in11_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in15_in => p_0_in15_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in19_in => p_0_in19_in,
      p_0_in1_in => p_0_in1_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in21_in => p_0_in21_in,
      p_0_in23_in => p_0_in23_in,
      p_0_in26_in => p_0_in26_in,
      p_0_in29_in => p_0_in29_in,
      p_0_in2_in => p_0_in2_in,
      p_0_in34_in => p_0_in34_in,
      p_0_in36_in => p_0_in36_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in38_in => p_0_in38_in,
      p_0_in3_in => p_0_in3_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in42_in => p_0_in42_in,
      p_0_in44_in => p_0_in44_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in48_in => p_0_in48_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in50_in => p_0_in50_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in56_in => p_0_in56_in,
      p_0_in5_in => p_0_in5_in,
      p_0_in7_in => p_0_in7_in,
      p_0_in8_in => p_0_in8_in,
      p_0_in9_in => p_0_in9_in,
      p_1_in => p_1_in,
      p_1_in38_in => p_1_in38_in,
      p_1_in50_in => p_1_in50_in,
      p_1_in52_in => p_1_in52_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i[11]_i_2_0\(4 downto 0) => \s_axi_rdata_i[11]_i_2\(4 downto 0),
      \s_axi_rdata_i[3]_i_3_0\(1 downto 0) => \s_axi_rdata_i[3]_i_3\(1 downto 0),
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i_reg[0]\,
      \s_axi_rdata_i_reg[0]_1\ => \s_axi_rdata_i_reg[0]_0\,
      \s_axi_rdata_i_reg[1]_0\ => \s_axi_rdata_i_reg[1]\,
      \s_axi_rdata_i_reg[2]_0\ => \s_axi_rdata_i_reg[2]\,
      \s_axi_rdata_i_reg[31]_0\ => \s_axi_rdata_i_reg[31]\,
      \s_axi_rdata_i_reg[4]_0\ => \s_axi_rdata_i_reg[4]\,
      \s_axi_rdata_i_reg[4]_1\ => \s_axi_rdata_i_reg[4]_0\,
      \s_axi_rdata_i_reg[5]_0\ => \s_axi_rdata_i_reg[5]\,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wdata_1_sp_1 => s_axi_wdata_1_sn_1,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_mb_0_axi_intc_0_axi_intc is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq_in : in STD_LOGIC;
    interrupt_address_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    processor_ack_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of mcu_mb_0_axi_intc_0_axi_intc : entity is 32;
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of mcu_mb_0_axi_intc_0_axi_intc : entity is -1687;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of mcu_mb_0_axi_intc_0_axi_intc : entity is 0;
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of mcu_mb_0_axi_intc_0_axi_intc : entity is 1;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of mcu_mb_0_axi_intc_0_axi_intc : entity is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of mcu_mb_0_axi_intc_0_axi_intc : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of mcu_mb_0_axi_intc_0_axi_intc : entity is "artix7";
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of mcu_mb_0_axi_intc_0_axi_intc : entity is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of mcu_mb_0_axi_intc_0_axi_intc : entity is 1;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of mcu_mb_0_axi_intc_0_axi_intc : entity is 0;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of mcu_mb_0_axi_intc_0_axi_intc : entity is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of mcu_mb_0_axi_intc_0_axi_intc : entity is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of mcu_mb_0_axi_intc_0_axi_intc : entity is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of mcu_mb_0_axi_intc_0_axi_intc : entity is "mcu_mb_0_axi_intc_0";
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of mcu_mb_0_axi_intc_0_axi_intc : entity is "1'b1";
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of mcu_mb_0_axi_intc_0_axi_intc : entity is 0;
  attribute C_IVAR_RESET_VALUE : string;
  attribute C_IVAR_RESET_VALUE of mcu_mb_0_axi_intc_0_axi_intc : entity is "64'b0000000000000000000000000000000000000000000000000000000000010000";
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of mcu_mb_0_axi_intc_0_axi_intc : entity is -1;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of mcu_mb_0_axi_intc_0_axi_intc : entity is -1687;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of mcu_mb_0_axi_intc_0_axi_intc : entity is -1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of mcu_mb_0_axi_intc_0_axi_intc : entity is 1;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of mcu_mb_0_axi_intc_0_axi_intc : entity is 12;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of mcu_mb_0_axi_intc_0_axi_intc : entity is 0;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of mcu_mb_0_axi_intc_0_axi_intc : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of mcu_mb_0_axi_intc_0_axi_intc : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of mcu_mb_0_axi_intc_0_axi_intc : entity is 32;
  attribute hdl : string;
  attribute hdl of mcu_mb_0_axi_intc_0_axi_intc : entity is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of mcu_mb_0_axi_intc_0_axi_intc : entity is "TRUE";
  attribute ip_group : string;
  attribute ip_group of mcu_mb_0_axi_intc_0_axi_intc : entity is "LOGICORE";
  attribute iptype : string;
  attribute iptype of mcu_mb_0_axi_intc_0_axi_intc : entity is "PERIPHERAL";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of mcu_mb_0_axi_intc_0_axi_intc : entity is "TRUE";
  attribute style : string;
  attribute style of mcu_mb_0_axi_intc_0_axi_intc : entity is "HDL";
end mcu_mb_0_axi_intc_0_axi_intc;

architecture STRUCTURE of mcu_mb_0_axi_intc_0_axi_intc is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_10 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_11 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_13 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_14 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_22 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_23 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_28 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_30 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_33 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_34 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_35 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_36 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_37 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_38 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_39 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_4 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_40 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_41 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_42 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_43 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_44 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_45 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_46 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_47 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_48 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_49 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_5 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_50 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_51 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_52 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_53 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_54 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_55 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_56 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_57 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_58 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_59 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_6 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_60 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_61 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_62 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_63 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_64 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_7 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_8 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_9 : STD_LOGIC;
  signal Douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal INTC_CORE_I_n_0 : STD_LOGIC;
  signal INTC_CORE_I_n_1 : STD_LOGIC;
  signal INTC_CORE_I_n_10 : STD_LOGIC;
  signal INTC_CORE_I_n_12 : STD_LOGIC;
  signal INTC_CORE_I_n_13 : STD_LOGIC;
  signal INTC_CORE_I_n_15 : STD_LOGIC;
  signal INTC_CORE_I_n_27 : STD_LOGIC;
  signal INTC_CORE_I_n_39 : STD_LOGIC;
  signal INTC_CORE_I_n_41 : STD_LOGIC;
  signal INTC_CORE_I_n_42 : STD_LOGIC;
  signal INTC_CORE_I_n_43 : STD_LOGIC;
  signal INTC_CORE_I_n_52 : STD_LOGIC;
  signal INTC_CORE_I_n_57 : STD_LOGIC;
  signal INTC_CORE_I_n_6 : STD_LOGIC;
  signal INTC_CORE_I_n_8 : STD_LOGIC;
  signal INTC_CORE_I_n_86 : STD_LOGIC;
  signal INTC_CORE_I_n_92 : STD_LOGIC;
  signal INTC_CORE_I_n_93 : STD_LOGIC;
  signal INTC_CORE_I_n_94 : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 10 downto 6 );
  signal Or128_vec2stdlogic19_out : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 16 downto 2 );
  signal ip2bus_rdack : STD_LOGIC;
  signal ip2bus_rdack_int_d1 : STD_LOGIC;
  signal ip2bus_rdack_prev2 : STD_LOGIC;
  signal ip2bus_wrack : STD_LOGIC;
  signal ip2bus_wrack_int_d1 : STD_LOGIC;
  signal ip2bus_wrack_prev2 : STD_LOGIC;
  signal ipr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal isr_en : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in15_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in19_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in20_in : STD_LOGIC;
  signal p_0_in21_in : STD_LOGIC;
  signal p_0_in23_in : STD_LOGIC;
  signal p_0_in26_in : STD_LOGIC;
  signal p_0_in29_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in34_in : STD_LOGIC;
  signal p_0_in36_in : STD_LOGIC;
  signal p_0_in37_in : STD_LOGIC;
  signal p_0_in38_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in40_in : STD_LOGIC;
  signal p_0_in42_in : STD_LOGIC;
  signal p_0_in44_in : STD_LOGIC;
  signal p_0_in46_in : STD_LOGIC;
  signal p_0_in48_in : STD_LOGIC;
  signal p_0_in49_in : STD_LOGIC;
  signal p_0_in50_in : STD_LOGIC;
  signal p_0_in51_in : STD_LOGIC;
  signal p_0_in52_in : STD_LOGIC;
  signal p_0_in54_in : STD_LOGIC;
  signal p_0_in56_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in38_in : STD_LOGIC;
  signal p_1_in50_in : STD_LOGIC;
  signal p_1_in52_in : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute sigis : string;
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute sigis of s_axi_aresetn : signal is "Rstn";
  attribute BUFFER_TYPE : string;
  attribute BUFFER_TYPE of intr : signal is "none";
begin
  processor_ack_out(1) <= \<const0>\;
  processor_ack_out(0) <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
AXI_LITE_IPIF_I: entity work.mcu_mb_0_axi_intc_0_axi_lite_ipif
     port map (
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_4,
      Bus_RNW_reg_reg_0 => AXI_LITE_IPIF_I_n_5,
      Bus_RNW_reg_reg_1 => AXI_LITE_IPIF_I_n_6,
      Bus_RNW_reg_reg_10 => AXI_LITE_IPIF_I_n_15,
      Bus_RNW_reg_reg_11 => AXI_LITE_IPIF_I_n_30,
      Bus_RNW_reg_reg_12 => AXI_LITE_IPIF_I_n_41,
      Bus_RNW_reg_reg_13 => AXI_LITE_IPIF_I_n_42,
      Bus_RNW_reg_reg_14 => AXI_LITE_IPIF_I_n_43,
      Bus_RNW_reg_reg_15 => AXI_LITE_IPIF_I_n_44,
      Bus_RNW_reg_reg_16 => AXI_LITE_IPIF_I_n_45,
      Bus_RNW_reg_reg_17 => AXI_LITE_IPIF_I_n_46,
      Bus_RNW_reg_reg_18 => AXI_LITE_IPIF_I_n_47,
      Bus_RNW_reg_reg_19 => AXI_LITE_IPIF_I_n_48,
      Bus_RNW_reg_reg_2 => AXI_LITE_IPIF_I_n_7,
      Bus_RNW_reg_reg_20 => AXI_LITE_IPIF_I_n_49,
      Bus_RNW_reg_reg_21 => AXI_LITE_IPIF_I_n_50,
      Bus_RNW_reg_reg_22 => AXI_LITE_IPIF_I_n_51,
      Bus_RNW_reg_reg_23 => AXI_LITE_IPIF_I_n_52,
      Bus_RNW_reg_reg_3 => AXI_LITE_IPIF_I_n_8,
      Bus_RNW_reg_reg_4 => AXI_LITE_IPIF_I_n_9,
      Bus_RNW_reg_reg_5 => AXI_LITE_IPIF_I_n_10,
      Bus_RNW_reg_reg_6 => AXI_LITE_IPIF_I_n_11,
      Bus_RNW_reg_reg_7 => AXI_LITE_IPIF_I_n_12,
      Bus_RNW_reg_reg_8 => AXI_LITE_IPIF_I_n_13,
      Bus_RNW_reg_reg_9 => AXI_LITE_IPIF_I_n_14,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => INTC_CORE_I_n_27,
      D(3) => IP2Bus_Data(10),
      D(2 downto 0) => IP2Bus_Data(8 downto 6),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => AXI_LITE_IPIF_I_n_22,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => AXI_LITE_IPIF_I_n_23,
      Or128_vec2stdlogic19_out => Or128_vec2stdlogic19_out,
      Q(27 downto 7) => Douta(31 downto 11),
      Q(6) => Douta(9),
      Q(5 downto 0) => Douta(5 downto 0),
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ => INTC_CORE_I_n_0,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ => AXI_LITE_IPIF_I_n_64,
      \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\ => AXI_LITE_IPIF_I_n_54,
      \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ => INTC_CORE_I_n_12,
      \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\ => AXI_LITE_IPIF_I_n_53,
      \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\ => AXI_LITE_IPIF_I_n_63,
      \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\ => AXI_LITE_IPIF_I_n_62,
      \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\ => AXI_LITE_IPIF_I_n_61,
      \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\ => AXI_LITE_IPIF_I_n_60,
      \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ => INTC_CORE_I_n_6,
      \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\ => AXI_LITE_IPIF_I_n_59,
      \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\ => AXI_LITE_IPIF_I_n_58,
      \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ => INTC_CORE_I_n_8,
      \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\ => AXI_LITE_IPIF_I_n_57,
      \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\ => AXI_LITE_IPIF_I_n_56,
      \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ => INTC_CORE_I_n_10,
      \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\ => AXI_LITE_IPIF_I_n_55,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => INTC_CORE_I_n_15,
      SR(0) => INTC_CORE_I_n_1,
      \bus2ip_addr_i_reg[4]\ => AXI_LITE_IPIF_I_n_28,
      \bus2ip_addr_i_reg[4]_0\ => AXI_LITE_IPIF_I_n_37,
      \bus2ip_addr_i_reg[5]\(3 downto 0) => bus2ip_addr(5 downto 2),
      \bus2ip_addr_i_reg[5]_0\ => AXI_LITE_IPIF_I_n_33,
      \bus2ip_addr_i_reg[5]_1\ => AXI_LITE_IPIF_I_n_34,
      \bus2ip_addr_i_reg[5]_2\ => AXI_LITE_IPIF_I_n_35,
      \bus2ip_addr_i_reg[5]_3\ => AXI_LITE_IPIF_I_n_36,
      \bus2ip_addr_i_reg[5]_4\ => AXI_LITE_IPIF_I_n_38,
      bus2ip_wrce(2) => bus2ip_wrce(16),
      bus2ip_wrce(1) => bus2ip_wrce(10),
      bus2ip_wrce(0) => bus2ip_wrce(2),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_rdack_reg => s_axi_arready,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      ip2bus_wrack_reg => \^s_axi_wready\,
      isr_en => isr_en,
      \mer_int_reg[0]\ => INTC_CORE_I_n_39,
      p_0_in => p_0_in,
      p_0_in11_in => p_0_in11_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in15_in => p_0_in15_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in19_in => p_0_in19_in,
      p_0_in1_in => p_0_in1_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in21_in => p_0_in21_in,
      p_0_in23_in => p_0_in23_in,
      p_0_in26_in => p_0_in26_in,
      p_0_in29_in => p_0_in29_in,
      p_0_in2_in => p_0_in2_in,
      p_0_in34_in => p_0_in34_in,
      p_0_in36_in => p_0_in36_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in38_in => p_0_in38_in,
      p_0_in3_in => p_0_in3_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in42_in => p_0_in42_in,
      p_0_in44_in => p_0_in44_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in48_in => p_0_in48_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in50_in => p_0_in50_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in56_in => p_0_in56_in,
      p_0_in5_in => p_0_in5_in,
      p_0_in7_in => p_0_in7_in,
      p_0_in8_in => p_0_in8_in,
      p_0_in9_in => p_0_in9_in,
      p_1_in => p_1_in,
      p_1_in38_in => p_1_in38_in,
      p_1_in50_in => p_1_in50_in,
      p_1_in52_in => p_1_in52_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(8 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(8 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i[11]_i_2\(4) => ipr(11),
      \s_axi_rdata_i[11]_i_2\(3) => ipr(9),
      \s_axi_rdata_i[11]_i_2\(2 downto 1) => ipr(3 downto 2),
      \s_axi_rdata_i[11]_i_2\(0) => ipr(0),
      \s_axi_rdata_i[3]_i_3\(1) => INTC_CORE_I_n_41,
      \s_axi_rdata_i[3]_i_3\(0) => INTC_CORE_I_n_42,
      \s_axi_rdata_i_reg[0]\ => INTC_CORE_I_n_52,
      \s_axi_rdata_i_reg[0]_0\ => INTC_CORE_I_n_43,
      \s_axi_rdata_i_reg[1]\ => INTC_CORE_I_n_86,
      \s_axi_rdata_i_reg[2]\ => INTC_CORE_I_n_13,
      \s_axi_rdata_i_reg[31]\ => INTC_CORE_I_n_94,
      \s_axi_rdata_i_reg[4]\ => INTC_CORE_I_n_57,
      \s_axi_rdata_i_reg[4]_0\ => INTC_CORE_I_n_92,
      \s_axi_rdata_i_reg[5]\ => INTC_CORE_I_n_93,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      s_axi_wdata_0_sp_1 => AXI_LITE_IPIF_I_n_39,
      s_axi_wdata_1_sp_1 => AXI_LITE_IPIF_I_n_40,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
INTC_CORE_I: entity work.mcu_mb_0_axi_intc_0_intc_core
     port map (
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ => INTC_CORE_I_n_27,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1\ => AXI_LITE_IPIF_I_n_52,
      \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0\ => AXI_LITE_IPIF_I_n_50,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0\ => AXI_LITE_IPIF_I_n_51,
      \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0\ => AXI_LITE_IPIF_I_n_41,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0\ => AXI_LITE_IPIF_I_n_42,
      \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ => AXI_LITE_IPIF_I_n_43,
      \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0\ => AXI_LITE_IPIF_I_n_44,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0\ => AXI_LITE_IPIF_I_n_45,
      \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ => AXI_LITE_IPIF_I_n_46,
      \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0\ => AXI_LITE_IPIF_I_n_47,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0\ => AXI_LITE_IPIF_I_n_48,
      \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ => AXI_LITE_IPIF_I_n_49,
      D(1) => INTC_CORE_I_n_41,
      D(0) => INTC_CORE_I_n_42,
      \IVR_GEN.ivr_reg[0]_0\ => INTC_CORE_I_n_94,
      \IVR_GEN.ivr_reg[1]_0\ => INTC_CORE_I_n_57,
      \IVR_GEN.ivr_reg[1]_1\ => INTC_CORE_I_n_86,
      \IVR_GEN.ivr_reg[2]_0\ => INTC_CORE_I_n_13,
      Q(4) => ipr(11),
      Q(3) => ipr(9),
      Q(2 downto 1) => ipr(3 downto 2),
      Q(0) => ipr(0),
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0\ => AXI_LITE_IPIF_I_n_64,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ => INTC_CORE_I_n_0,
      \REG_GEN[0].ier_reg[0]_0\ => INTC_CORE_I_n_52,
      \REG_GEN[0].isr_reg[0]_0\ => INTC_CORE_I_n_43,
      \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]_0\ => AXI_LITE_IPIF_I_n_54,
      \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]_0\ => AXI_LITE_IPIF_I_n_53,
      \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0\ => INTC_CORE_I_n_12,
      \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]_0\ => AXI_LITE_IPIF_I_n_63,
      \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0\ => AXI_LITE_IPIF_I_n_62,
      \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0\ => AXI_LITE_IPIF_I_n_61,
      \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]_0\ => AXI_LITE_IPIF_I_n_60,
      \REG_GEN[4].ier_reg[4]_0\ => INTC_CORE_I_n_92,
      \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]_0\ => AXI_LITE_IPIF_I_n_59,
      \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0\ => INTC_CORE_I_n_6,
      \REG_GEN[5].ier_reg[5]_0\ => INTC_CORE_I_n_93,
      \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]_0\ => AXI_LITE_IPIF_I_n_58,
      \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]_0\ => AXI_LITE_IPIF_I_n_57,
      \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0\ => INTC_CORE_I_n_8,
      \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]_0\ => AXI_LITE_IPIF_I_n_56,
      \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]_0\ => AXI_LITE_IPIF_I_n_55,
      \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0\ => INTC_CORE_I_n_10,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ => INTC_CORE_I_n_15,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\ => AXI_LITE_IPIF_I_n_4,
      \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0\ => AXI_LITE_IPIF_I_n_14,
      \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0\ => AXI_LITE_IPIF_I_n_15,
      \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0\ => AXI_LITE_IPIF_I_n_5,
      \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0\ => AXI_LITE_IPIF_I_n_6,
      \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0\ => AXI_LITE_IPIF_I_n_7,
      \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0\ => AXI_LITE_IPIF_I_n_8,
      \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0\ => AXI_LITE_IPIF_I_n_9,
      \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0\ => AXI_LITE_IPIF_I_n_10,
      \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0\ => AXI_LITE_IPIF_I_n_11,
      \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0\ => AXI_LITE_IPIF_I_n_12,
      \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0\ => AXI_LITE_IPIF_I_n_13,
      SR(0) => INTC_CORE_I_n_1,
      bus2ip_wrce(2) => bus2ip_wrce(16),
      bus2ip_wrce(1) => bus2ip_wrce(10),
      bus2ip_wrce(0) => bus2ip_wrce(2),
      interrupt_address(31 downto 0) => interrupt_address(31 downto 0),
      intr(11 downto 0) => intr(11 downto 0),
      irq => irq,
      isr_en => isr_en,
      \mer_int_reg[0]_0\ => INTC_CORE_I_n_39,
      \mer_int_reg[0]_1\ => AXI_LITE_IPIF_I_n_39,
      \mer_int_reg[1]_0\ => AXI_LITE_IPIF_I_n_40,
      p_0_in => p_0_in,
      p_0_in11_in => p_0_in11_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in15_in => p_0_in15_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in19_in => p_0_in19_in,
      p_0_in1_in => p_0_in1_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in21_in => p_0_in21_in,
      p_0_in23_in => p_0_in23_in,
      p_0_in26_in => p_0_in26_in,
      p_0_in29_in => p_0_in29_in,
      p_0_in2_in => p_0_in2_in,
      p_0_in34_in => p_0_in34_in,
      p_0_in36_in => p_0_in36_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in38_in => p_0_in38_in,
      p_0_in3_in => p_0_in3_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in42_in => p_0_in42_in,
      p_0_in44_in => p_0_in44_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in48_in => p_0_in48_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in50_in => p_0_in50_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in56_in => p_0_in56_in,
      p_0_in5_in => p_0_in5_in,
      p_0_in7_in => p_0_in7_in,
      p_0_in8_in => p_0_in8_in,
      p_0_in9_in => p_0_in9_in,
      p_1_in => p_1_in,
      p_1_in38_in => p_1_in38_in,
      p_1_in50_in => p_1_in50_in,
      p_1_in52_in => p_1_in52_in,
      processor_ack(1 downto 0) => processor_ack(1 downto 0),
      \ram_i[0].Douta_reg[10]\(3) => IP2Bus_Data(10),
      \ram_i[0].Douta_reg[10]\(2 downto 0) => IP2Bus_Data(8 downto 6),
      \ram_i[0].Douta_reg[31]\(27 downto 7) => Douta(31 downto 11),
      \ram_i[0].Douta_reg[31]\(6) => Douta(9),
      \ram_i[0].Douta_reg[31]\(5 downto 0) => Douta(5 downto 0),
      \ram_i[0].Doutb_reg[0]\(3 downto 0) => bus2ip_addr(5 downto 2),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \s_axi_rdata_i_reg[10]\ => AXI_LITE_IPIF_I_n_22,
      \s_axi_rdata_i_reg[10]_0\ => AXI_LITE_IPIF_I_n_23,
      \s_axi_rdata_i_reg[10]_1\ => AXI_LITE_IPIF_I_n_33,
      \s_axi_rdata_i_reg[10]_2\ => AXI_LITE_IPIF_I_n_28,
      \s_axi_rdata_i_reg[6]\ => AXI_LITE_IPIF_I_n_36,
      \s_axi_rdata_i_reg[6]_0\ => AXI_LITE_IPIF_I_n_38,
      \s_axi_rdata_i_reg[6]_1\ => AXI_LITE_IPIF_I_n_37,
      \s_axi_rdata_i_reg[7]\ => AXI_LITE_IPIF_I_n_35,
      \s_axi_rdata_i_reg[8]\ => AXI_LITE_IPIF_I_n_34,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
ip2bus_rdack_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Or128_vec2stdlogic19_out,
      Q => ip2bus_rdack_int_d1,
      R => INTC_CORE_I_n_1
    );
ip2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_prev2,
      Q => ip2bus_rdack,
      R => INTC_CORE_I_n_1
    );
ip2bus_wrack_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_LITE_IPIF_I_n_30,
      Q => ip2bus_wrack_int_d1,
      R => INTC_CORE_I_n_1
    );
ip2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_prev2,
      Q => ip2bus_wrack,
      R => INTC_CORE_I_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_mb_0_axi_intc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_mb_0_axi_intc_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_mb_0_axi_intc_0 : entity is "mcu_mb_0_axi_intc_0,axi_intc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mcu_mb_0_axi_intc_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mcu_mb_0_axi_intc_0 : entity is "axi_intc,Vivado 2019.1.2";
end mcu_mb_0_axi_intc_0;

architecture STRUCTURE of mcu_mb_0_axi_intc_0 is
  signal NLW_U0_processor_ack_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of U0 : label is 32;
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of U0 : label is -1687;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of U0 : label is 0;
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of U0 : label is 1;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of U0 : label is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of U0 : label is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of U0 : label is 1;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of U0 : label is 0;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of U0 : label is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of U0 : label is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of U0 : label is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "mcu_mb_0_axi_intc_0";
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of U0 : label is "1'b1";
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of U0 : label is 0;
  attribute C_IVAR_RESET_VALUE : string;
  attribute C_IVAR_RESET_VALUE of U0 : label is "64'b0000000000000000000000000000000000000000000000000000000000010000";
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of U0 : label is -1;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of U0 : label is -1687;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of U0 : label is -1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of U0 : label is 1;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of U0 : label is 12;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of U0 : label is 0;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of U0 : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute hdl : string;
  attribute hdl of U0 : label is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of U0 : label is "TRUE";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute iptype : string;
  attribute iptype of U0 : label is "PERIPHERAL";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of U0 : label is "TRUE";
  attribute style : string;
  attribute style of U0 : label is "HDL";
  attribute x_interface_info : string;
  attribute x_interface_info of irq : signal is "xilinx.com:interface:mbinterrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of irq : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, LOW_LATENCY 1";
  attribute x_interface_info of processor_clk : signal is "xilinx.com:signal:clock:1.0 proc_clock CLK";
  attribute x_interface_parameter of processor_clk : signal is "XIL_INTERFACENAME proc_clock, ASSOCIATED_BUSIF interrupt, ASSOCIATED_RESET processor_rst, FREQ_HZ 83333333, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of processor_rst : signal is "xilinx.com:signal:reset:1.0 proc_reset RST";
  attribute x_interface_parameter of processor_rst : signal is "XIL_INTERFACENAME proc_reset, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 83333333, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_resetn RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of interrupt_address : signal is "xilinx.com:interface:mbinterrupt:1.0 interrupt ADDRESS";
  attribute x_interface_info of intr : signal is "xilinx.com:signal:interrupt:1.0 interrupt_input INTERRUPT";
  attribute x_interface_parameter of intr : signal is "XIL_INTERFACENAME interrupt_input, SENSITIVITY EDGE_RISING:LEVEL_HIGH:LEVEL_HIGH:NULL:LEVEL_HIGH:NULL:EDGE_RISING:LEVEL_HIGH:EDGE_RISING:LEVEL_HIGH:LEVEL_HIGH:EDGE_RISING, PortWidth 12";
  attribute x_interface_info of processor_ack : signal is "xilinx.com:interface:mbinterrupt:1.0 interrupt ACK";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 83333333, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
U0: entity work.mcu_mb_0_axi_intc_0_axi_intc
     port map (
      interrupt_address(31 downto 0) => interrupt_address(31 downto 0),
      interrupt_address_in(31 downto 0) => B"00000000000000000000000000000000",
      intr(11 downto 0) => intr(11 downto 0),
      irq => irq,
      irq_in => '0',
      processor_ack(1 downto 0) => processor_ack(1 downto 0),
      processor_ack_out(1 downto 0) => NLW_U0_processor_ack_out_UNCONNECTED(1 downto 0),
      processor_clk => processor_clk,
      processor_rst => processor_rst,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;