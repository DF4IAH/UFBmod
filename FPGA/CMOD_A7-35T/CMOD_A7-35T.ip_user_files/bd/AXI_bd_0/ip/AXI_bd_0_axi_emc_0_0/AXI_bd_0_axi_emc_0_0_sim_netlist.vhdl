-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Mar 27 14:57:35 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/espero/git/UFBmod/FPGA/CMOD_A7-35T/CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ip/AXI_bd_0_axi_emc_0_0/AXI_bd_0_axi_emc_0_0_sim_netlist.vhdl
-- Design      : AXI_bd_0_axi_emc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_axi_emc_addr_gen is
  port (
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0\ : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0\ : out STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0\ : out STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0\ : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[2]_0\ : out STD_LOGIC;
    rnw_reg_reg : out STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \FSM_sequential_emc_addr_ps_reg[1]\ : out STD_LOGIC;
    rw_flag_reg_reg : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[1]_0\ : out STD_LOGIC;
    \burst_data_cnt_reg[7]\ : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[1]_1\ : out STD_LOGIC;
    \burst_addr_cnt_reg[7]\ : out STD_LOGIC;
    \burst_addr_cnt_reg[0]\ : out STD_LOGIC;
    \rd_data_count_reg[3]\ : out STD_LOGIC;
    bus2ip_addr_temp : out STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_rnw : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_1\ : in STD_LOGIC;
    \bus2ip_addr_i[31]_i_3\ : in STD_LOGIC;
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    \PERBIT_GEN[7].MULT_AND_i1_i_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ip2bus_rdack : in STD_LOGIC;
    \burst_addr_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_rready : in STD_LOGIC;
    last_data_acked : in STD_LOGIC;
    \derived_size_reg[1]_i_4_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_2\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_0\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_axi_emc_addr_gen : entity is "axi_emc_addr_gen";
end AXI_bd_0_axi_emc_0_0_axi_emc_addr_gen;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_axi_emc_addr_gen is
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3_n_0\ : STD_LOGIC;
  signal \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[2]_0\ : STD_LOGIC;
  signal \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\ : STD_LOGIC;
  signal \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\ : STD_LOGIC;
  signal \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[5]_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4_n_0\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \^fsm_sequential_emc_addr_ps_reg[1]\ : STD_LOGIC;
  signal \^fsm_sequential_emc_addr_ps_reg[2]\ : STD_LOGIC;
  signal addr_11_6_cmb : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal addr_2_cmb : STD_LOGIC;
  signal addr_3_cmb : STD_LOGIC;
  signal addr_4_cmb : STD_LOGIC;
  signal addr_5_cmb : STD_LOGIC;
  signal \^burst_addr_cnt_reg[0]\ : STD_LOGIC;
  signal \derived_size_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \derived_size_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^rd_data_count_reg[3]\ : STD_LOGIC;
  signal \^rnw_reg_reg\ : STD_LOGIC;
  signal \^rw_flag_reg_reg\ : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].MULT_AND_i1_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].MULT_AND_i1_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[24]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[25]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[26]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[27]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[30]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[31]_i_5\ : label is "soft_lutpair8";
begin
  \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]_0\(5 downto 0) <= \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(5 downto 0);
  \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0\ <= \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[2]_0\;
  \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0\ <= \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\;
  \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0\ <= \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\;
  \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0\ <= \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[5]_0\;
  \FSM_sequential_emc_addr_ps_reg[1]\ <= \^fsm_sequential_emc_addr_ps_reg[1]\;
  \FSM_sequential_emc_addr_ps_reg[2]\ <= \^fsm_sequential_emc_addr_ps_reg[2]\;
  \burst_addr_cnt_reg[0]\ <= \^burst_addr_cnt_reg[0]\;
  \rd_data_count_reg[3]\ <= \^rd_data_count_reg[3]\;
  rnw_reg_reg <= \^rnw_reg_reg\;
  rw_flag_reg_reg <= \^rw_flag_reg_reg\;
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(4),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(10),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(10),
      O => addr_11_6_cmb(4)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(3),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0\,
      I2 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(2),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4_n_0\,
      I1 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I2 => s_axi_mem_awaddr(11),
      I3 => \^rnw_reg_reg\,
      I4 => s_axi_mem_araddr(11),
      O => addr_11_6_cmb(5)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(5),
      I1 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(3),
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0\,
      I3 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(2),
      I4 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(4),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBBBB80008888"
    )
        port map (
      I0 => addr_2_cmb,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1\(0),
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1\(1),
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0\,
      I5 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[2]_0\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[2]_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(2),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(2),
      O => addr_2_cmb
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1\(0),
      I1 => \^fsm_sequential_emc_addr_ps_reg[2]\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(1),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(0),
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBBBB80008888"
    )
        port map (
      I0 => addr_3_cmb,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1\(1),
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1\(1),
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0\,
      I5 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(3),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(3),
      O => addr_3_cmb
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBBBB80008888"
    )
        port map (
      I0 => addr_4_cmb,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1\(1),
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1\(2),
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0\,
      I5 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3_n_0\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(4),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(4),
      O => addr_4_cmb
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBBBB80008888"
    )
        port map (
      I0 => addr_5_cmb,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1\(1),
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1\(3),
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3_n_0\,
      I5 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[5]_0\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[5]_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3_n_0\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(5),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(5),
      O => addr_5_cmb
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0\,
      I2 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(0),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(6),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(6),
      O => addr_11_6_cmb(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[5]_0\,
      I1 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0\,
      I3 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(1),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(7),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(7),
      O => addr_11_6_cmb(1)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(0),
      I1 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0\,
      I3 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\,
      I4 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[5]_0\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(2),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(8),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(8),
      O => addr_11_6_cmb(2)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(1),
      I1 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[5]_0\,
      I2 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0\,
      I4 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\,
      I5 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(0),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[2]_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(0),
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(1),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(3),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(9),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(9),
      O => addr_11_6_cmb(3)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(2),
      I1 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(0),
      I2 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3_n_0\,
      I4 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[5]_0\,
      I5 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(1),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8888800000000"
    )
        port map (
      I0 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(1),
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(0),
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      I5 => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[2]_0\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(4),
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(4),
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(5),
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(5),
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0\,
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[2]_0\,
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[3]_0\,
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0\,
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[4]_0\,
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0\,
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[5]_0\,
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(0),
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(0),
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(1),
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(1),
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(2),
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(2),
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => addr_11_6_cmb(3),
      Q => \^bus2ip_addr_gen_data_wdth_32.bus2ip_addr_i_reg[11]_0\(3),
      R => \^s_axi_aresetn_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_0\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_1\,
      I3 => \^fsm_sequential_emc_addr_ps_reg[2]\,
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(0),
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => s_axi_mem_awaddr(0),
      I4 => \^rnw_reg_reg\,
      I5 => s_axi_mem_araddr(0),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60FFFF9F900000"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(1),
      I2 => \^fsm_sequential_emc_addr_ps_reg[1]\,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4_n_0\,
      I4 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_2\,
      I5 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      I1 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(0),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_1\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => \^fsm_sequential_emc_addr_ps_reg[1]\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(1),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(1),
      O => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4_n_0\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0\,
      Q => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0]\,
      R => '0'
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0\,
      Q => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1]\,
      R => '0'
    );
\PERBIT_GEN[7].MULT_AND_i1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => ip2bus_rdack,
      I3 => Q(2),
      O => \FSM_sequential_emc_addr_ps_reg[1]_1\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \PERBIT_GEN[7].MULT_AND_i1_i_2\(2),
      I1 => \PERBIT_GEN[7].MULT_AND_i1_i_2\(0),
      I2 => \PERBIT_GEN[7].MULT_AND_i1_i_2\(1),
      O => \burst_data_cnt_reg[7]\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      O => \FSM_sequential_emc_addr_ps_reg[2]_0\
    );
\burst_addr_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \burst_addr_cnt_reg[7]_0\(0),
      I1 => \burst_addr_cnt_reg[7]_0\(1),
      I2 => \burst_addr_cnt_reg[7]_0\(2),
      I3 => \burst_addr_cnt_reg[7]_0\(3),
      O => \^burst_addr_cnt_reg[0]\
    );
\bus2ip_addr_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(12),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(12),
      O => p_1_in(0)
    );
\bus2ip_addr_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(13),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(13),
      O => p_1_in(1)
    );
\bus2ip_addr_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(14),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(14),
      O => p_1_in(2)
    );
\bus2ip_addr_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(15),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(15),
      O => p_1_in(3)
    );
\bus2ip_addr_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(16),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(16),
      O => p_1_in(4)
    );
\bus2ip_addr_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(17),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(17),
      O => p_1_in(5)
    );
\bus2ip_addr_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(18),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(18),
      O => p_1_in(6)
    );
\bus2ip_addr_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(19),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(19),
      O => p_1_in(7)
    );
\bus2ip_addr_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(20),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(20),
      O => p_1_in(8)
    );
\bus2ip_addr_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(21),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(21),
      O => p_1_in(9)
    );
\bus2ip_addr_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(22),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(22),
      O => p_1_in(10)
    );
\bus2ip_addr_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(23),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(23),
      O => p_1_in(11)
    );
\bus2ip_addr_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(24),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(24),
      O => p_1_in(12)
    );
\bus2ip_addr_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(25),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(25),
      O => p_1_in(13)
    );
\bus2ip_addr_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(26),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(26),
      O => p_1_in(14)
    );
\bus2ip_addr_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(27),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(27),
      O => p_1_in(15)
    );
\bus2ip_addr_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(28),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(28),
      O => p_1_in(16)
    );
\bus2ip_addr_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(29),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(29),
      O => p_1_in(17)
    );
\bus2ip_addr_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(30),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(30),
      O => p_1_in(18)
    );
\bus2ip_addr_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      I1 => \bus2ip_addr_i_reg[12]_0\,
      O => \^fsm_sequential_emc_addr_ps_reg[2]\
    );
\bus2ip_addr_i[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awaddr(31),
      I1 => \^rnw_reg_reg\,
      I2 => s_axi_mem_araddr(31),
      O => p_1_in(19)
    );
\bus2ip_addr_i[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \FSM_sequential_emc_addr_ps_reg[1]_0\
    );
\bus2ip_addr_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(0),
      Q => bus2ip_addr_temp(0),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(1),
      Q => bus2ip_addr_temp(1),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(2),
      Q => bus2ip_addr_temp(2),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(3),
      Q => bus2ip_addr_temp(3),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(4),
      Q => bus2ip_addr_temp(4),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(5),
      Q => bus2ip_addr_temp(5),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(6),
      Q => bus2ip_addr_temp(6),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(7),
      Q => bus2ip_addr_temp(7),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(8),
      Q => bus2ip_addr_temp(8),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(9),
      Q => bus2ip_addr_temp(9),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(10),
      Q => bus2ip_addr_temp(10),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(11),
      Q => bus2ip_addr_temp(11),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(12),
      Q => bus2ip_addr_temp(12),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(13),
      Q => bus2ip_addr_temp(13),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(14),
      Q => bus2ip_addr_temp(14),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(15),
      Q => bus2ip_addr_temp(15),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(16),
      Q => bus2ip_addr_temp(16),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(17),
      Q => bus2ip_addr_temp(17),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(18),
      Q => bus2ip_addr_temp(18),
      R => \^s_axi_aresetn_0\
    );
\bus2ip_addr_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \^fsm_sequential_emc_addr_ps_reg[2]\,
      D => p_1_in(19),
      Q => bus2ip_addr_temp(19),
      R => \^s_axi_aresetn_0\
    );
\derived_size_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5555DD5555DDF0"
    )
        port map (
      I0 => bus2ip_rnw,
      I1 => \derived_size_reg[1]_i_4_n_0\,
      I2 => \^rw_flag_reg_reg\,
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(1),
      O => \^rnw_reg_reg\
    );
\derived_size_reg[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_mem_rready,
      I1 => last_data_acked,
      I2 => \^rd_data_count_reg[3]\,
      I3 => \derived_size_reg[1]_i_6_n_0\,
      O => \derived_size_reg[1]_i_4_n_0\
    );
\derived_size_reg[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \bus2ip_addr_i[31]_i_3\,
      I1 => s_axi_mem_awvalid,
      I2 => s_axi_mem_arvalid,
      O => \^rw_flag_reg_reg\
    );
\derived_size_reg[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \derived_size_reg[1]_i_4_0\(7),
      I1 => \derived_size_reg[1]_i_4_0\(4),
      I2 => \derived_size_reg[1]_i_4_0\(6),
      I3 => \derived_size_reg[1]_i_4_0\(5),
      O => \derived_size_reg[1]_i_6_n_0\
    );
\s_axi_mem_bid_reg[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^s_axi_aresetn_0\
    );
s_axi_mem_bvalid_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^burst_addr_cnt_reg[0]\,
      I1 => \burst_addr_cnt_reg[7]_0\(7),
      I2 => \burst_addr_cnt_reg[7]_0\(4),
      I3 => \burst_addr_cnt_reg[7]_0\(6),
      I4 => \burst_addr_cnt_reg[7]_0\(5),
      O => \burst_addr_cnt_reg[7]\
    );
s_axi_mem_rlast_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \derived_size_reg[1]_i_4_0\(3),
      I1 => \derived_size_reg[1]_i_4_0\(1),
      I2 => \derived_size_reg[1]_i_4_0\(0),
      I3 => \derived_size_reg[1]_i_4_0\(2),
      O => \^rd_data_count_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_axi_emc_address_decode is
  port (
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\ : out STD_LOGIC;
    active_high_rst_reg : out STD_LOGIC;
    pend_rdreq_reg : out STD_LOGIC;
    \burstlength_reg_reg[0]\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \burst_data_cnt_reg[6]\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1\ : out STD_LOGIC;
    pend_rdreq_reg_0 : out STD_LOGIC;
    \bus2ip_BE_reg_reg[0]\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_2\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3\ : out STD_LOGIC;
    IP2Bus_RdAck0 : out STD_LOGIC;
    Cycle_cnt_en_int : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    \axi_trans_size_reg_reg[1]\ : out STD_LOGIC;
    \burst_data_cnt_reg[4]\ : out STD_LOGIC;
    pend_wrreq_reg : out STD_LOGIC;
    \burstlength_reg_reg[5]\ : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_fifo : out STD_LOGIC;
    bus2ip_burst_reg_reg : out STD_LOGIC;
    \s_axi_mem_bresp_reg_reg[1]\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_wready_INST_0_i_2_0 : in STD_LOGIC;
    s_axi_mem_wready_INST_0_i_2_1 : in STD_LOGIC;
    axi_trans_size_reg_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    cycle_cnt : in STD_LOGIC_VECTOR ( 0 to 1 );
    Bus2IP_RdReq_d1_reg : in STD_LOGIC;
    pend_rdreq : in STD_LOGIC;
    transaction_done_i : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[3]_rep__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_4\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_5\ : in STD_LOGIC;
    \s_axi_mem_bresp_reg_reg[1]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_mem_wready_INST_0_i_1 : in STD_LOGIC;
    \FSM_sequential_crnt_state[0]_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_crnt_state[0]_i_5_0\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\ : in STD_LOGIC;
    pend_wrreq : in STD_LOGIC;
    \FSM_sequential_crnt_state[2]_i_4\ : in STD_LOGIC;
    \PERBIT_GEN[7].MULT_AND_i1_i_3\ : in STD_LOGIC;
    \PERBIT_GEN[7].MULT_AND_i1_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[7].MULT_AND_i1_i_3_1\ : in STD_LOGIC;
    \FSM_sequential_crnt_state[1]_i_9\ : in STD_LOGIC;
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    last_data_acked_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_crnt_state[0]_i_5_1\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps[0]_i_7_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Type_of_xfer : in STD_LOGIC;
    bus2ip_burst : in STD_LOGIC;
    pend_rdreq_reg_1 : in STD_LOGIC;
    pend_rdreq_reg_2 : in STD_LOGIC;
    s_axi_mem_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    addr_sm_ps_idle_cmb : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_axi_emc_address_decode : entity is "axi_emc_address_decode";
end AXI_bd_0_axi_emc_0_0_axi_emc_address_decode;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_axi_emc_address_decode is
  signal \EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[0]_i_8_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_1\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].rdce_out_i_reg[0]_0\ : STD_LOGIC;
  signal axi_trans_size_reg0 : STD_LOGIC;
  signal \^burst_data_cnt_reg[4]\ : STD_LOGIC;
  signal \^burst_data_cnt_reg[6]\ : STD_LOGIC;
  signal \^burstlength_reg_reg[0]\ : STD_LOGIC;
  signal \^burstlength_reg_reg[5]\ : STD_LOGIC;
  signal cs_reg : STD_LOGIC;
  signal \^pend_rdreq_reg\ : STD_LOGIC;
  signal \^pend_rdreq_reg_0\ : STD_LOGIC;
  signal s_axi_mem_wready_INST_0_i_10_n_0 : STD_LOGIC;
  signal s_axi_mem_wready_INST_0_i_7_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[1]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[3]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[255][0]_srl32_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of IP2Bus_RdAck_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axi_mem_wready_INST_0_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axi_mem_wready_INST_0_i_8 : label is "soft_lutpair0";
begin
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_1\;
  \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\ <= \^mem_decode_gen[0].rdce_out_i_reg[0]_0\;
  \burst_data_cnt_reg[4]\ <= \^burst_data_cnt_reg[4]\;
  \burst_data_cnt_reg[6]\ <= \^burst_data_cnt_reg[6]\;
  \burstlength_reg_reg[0]\ <= \^burstlength_reg_reg[0]\;
  \burstlength_reg_reg[5]\ <= \^burstlength_reg_reg[5]\;
  pend_rdreq_reg <= \^pend_rdreq_reg\;
  pend_rdreq_reg_0 <= \^pend_rdreq_reg_0\;
\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => SS(0),
      I1 => \^pend_rdreq_reg\,
      I2 => \^burstlength_reg_reg[0]\,
      O => active_high_rst_reg
    );
Bus2IP_RdReq_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^burstlength_reg_reg[0]\,
      I1 => pend_rdreq,
      I2 => \^mem_decode_gen[0].rdce_out_i_reg[0]_0\,
      I3 => Bus2IP_RdReq_d1_reg,
      O => \^pend_rdreq_reg\
    );
Cnt_p10_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \INFERRED_GEN.cnt_i_reg[3]_rep__0\(0),
      O => S(0)
    );
\FSM_sequential_crnt_state[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_1\,
      I1 => \FSM_sequential_crnt_state[0]_i_5\(0),
      I2 => \FSM_sequential_crnt_state[0]_i_5\(2),
      I3 => \FSM_sequential_crnt_state[0]_i_5\(1),
      I4 => \FSM_sequential_crnt_state[0]_i_5\(3),
      I5 => \FSM_sequential_crnt_state[0]_i_5_0\,
      O => \bus2ip_BE_reg_reg[0]\
    );
\FSM_sequential_crnt_state[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^burstlength_reg_reg[5]\,
      I1 => \FSM_sequential_crnt_state[0]_i_5_1\,
      I2 => pend_wrreq,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\,
      O => pend_wrreq_reg
    );
\FSM_sequential_crnt_state[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \^pend_rdreq_reg\,
      I2 => \FSM_sequential_crnt_state[2]_i_4\,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\
    );
\FSM_sequential_crnt_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \^pend_rdreq_reg\,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\,
      I3 => pend_wrreq,
      O => \^mem_decode_gen[0].cs_out_i_reg[0]_1\
    );
\FSM_sequential_emc_addr_ps[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[0]_i_8_n_0\,
      I1 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(5),
      I2 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(4),
      I3 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(3),
      O => \^burstlength_reg_reg[5]\
    );
\FSM_sequential_emc_addr_ps[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(0),
      I1 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(2),
      I2 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(7),
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I4 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(6),
      I5 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(1),
      O => \FSM_sequential_emc_addr_ps[0]_i_8_n_0\
    );
\INFERRED_GEN.data_reg[255][0]_srl32_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => Type_of_xfer,
      O => \in\(0)
    );
IP2Bus_RdAck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      I1 => \^pend_rdreq_reg\,
      I2 => \^burstlength_reg_reg[0]\,
      O => IP2Bus_RdAck0
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222E00000000"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(2),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(0),
      I5 => \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i[0]_i_3_n_0\,
      I1 => \s_axi_mem_bresp_reg_reg[1]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(2),
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0CCC0CC08CCCCC"
    )
        port map (
      I0 => \^burst_data_cnt_reg[6]\,
      I1 => s_axi_aresetn,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(0),
      I4 => ip2bus_rdack,
      I5 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(2),
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_3_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      R => '0'
    );
\MEM_DECODE_GEN[0].cs_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(0),
      I3 => cs_reg,
      O => \MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0\,
      Q => cs_reg,
      R => '0'
    );
\MEM_DECODE_GEN[0].rdce_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8AAA8A0"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0\,
      I1 => cs_reg,
      I2 => axi_trans_size_reg0,
      I3 => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_4\,
      I4 => \^mem_decode_gen[0].rdce_out_i_reg[0]_0\,
      I5 => Bus2IP_RdReq_d1_reg,
      O => \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].rdce_out_i[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\,
      I1 => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_5\,
      O => axi_trans_size_reg0
    );
\MEM_DECODE_GEN[0].rdce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0\,
      Q => \^mem_decode_gen[0].rdce_out_i_reg[0]_0\,
      R => '0'
    );
\PERBIT_GEN[0].XORCY_i1_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0040004FEF40EF"
    )
        port map (
      I0 => axi_trans_size_reg_int(0),
      I1 => axi_trans_size_reg_int(1),
      I2 => \^pend_rdreq_reg\,
      I3 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\,
      I4 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\,
      I5 => cycle_cnt(0),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].MULT_AND_i1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => axi_trans_size_reg_int(0),
      I1 => axi_trans_size_reg_int(1),
      I2 => \^pend_rdreq_reg\,
      I3 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\,
      O => Cycle_cnt_en_int
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
        port map (
      I0 => cycle_cnt(1),
      I1 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      I2 => axi_trans_size_reg_int(0),
      I3 => axi_trans_size_reg_int(1),
      I4 => \^pend_rdreq_reg\,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\,
      O => S_1
    );
\PERBIT_GEN[1].MUXCY_i1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^pend_rdreq_reg\,
      I1 => axi_trans_size_reg_int(1),
      I2 => axi_trans_size_reg_int(0),
      O => \axi_trans_size_reg_reg[1]\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440000000000000"
    )
        port map (
      I0 => Bus2IP_RdReq_d1_reg,
      I1 => \^mem_decode_gen[0].rdce_out_i_reg[0]_0\,
      I2 => pend_rdreq,
      I3 => \^burstlength_reg_reg[0]\,
      I4 => \FSM_sequential_crnt_state[1]_i_9\,
      I5 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      O => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3\
    );
\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => SS(0),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      O => reset_fifo
    );
\PERBIT_GEN[7].MULT_AND_i1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FFBF"
    )
        port map (
      I0 => Bus2IP_RdReq_d1_reg,
      I1 => \^mem_decode_gen[0].rdce_out_i_reg[0]_0\,
      I2 => \^pend_rdreq_reg_0\,
      I3 => \PERBIT_GEN[7].MULT_AND_i1_i_3\,
      I4 => \PERBIT_GEN[7].MULT_AND_i1_i_3_0\(0),
      I5 => \PERBIT_GEN[7].MULT_AND_i1_i_3_1\,
      O => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_2\
    );
\burst_data_cnt[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => last_data_acked_reg(4),
      I1 => last_data_acked_reg(3),
      I2 => last_data_acked_reg(2),
      I3 => last_data_acked_reg(0),
      I4 => last_data_acked_reg(1),
      O => \^burst_data_cnt_reg[4]\
    );
last_data_acked_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^burst_data_cnt_reg[4]\,
      I1 => last_data_acked_reg(6),
      I2 => last_data_acked_reg(5),
      I3 => last_data_acked_reg(7),
      O => \^burst_data_cnt_reg[6]\
    );
pend_rdreq_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBF00FFFF0000"
    )
        port map (
      I0 => bus2ip_burst,
      I1 => pend_rdreq_reg_1,
      I2 => pend_rdreq_reg_2,
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I4 => \EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq\,
      I5 => pend_rdreq,
      O => bus2ip_burst_reg_reg
    );
pend_rdreq_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => Bus2IP_RdReq_d1_reg,
      I1 => \^mem_decode_gen[0].rdce_out_i_reg[0]_0\,
      I2 => pend_rdreq,
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I4 => transaction_done_i,
      O => \EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq\
    );
\s_axi_mem_bresp_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AABA"
    )
        port map (
      I0 => s_axi_mem_bresp(0),
      I1 => \s_axi_mem_bresp_reg_reg[1]_0\,
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => Type_of_xfer,
      I4 => addr_sm_ps_idle_cmb,
      O => \s_axi_mem_bresp_reg_reg[1]\
    );
s_axi_mem_wready_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(4),
      I1 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(7),
      I2 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(6),
      I3 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(5),
      I4 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(2),
      I5 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      O => s_axi_mem_wready_INST_0_i_10_n_0
    );
s_axi_mem_wready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45550000FFFFFFFF"
    )
        port map (
      I0 => s_axi_mem_wready_INST_0_i_7_n_0,
      I1 => Bus2IP_RdReq_d1_reg,
      I2 => \^mem_decode_gen[0].rdce_out_i_reg[0]_0\,
      I3 => \^pend_rdreq_reg_0\,
      I4 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I5 => s_axi_mem_wready_INST_0_i_1,
      O => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1\
    );
s_axi_mem_wready_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(0),
      I1 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(3),
      I2 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(1),
      I3 => s_axi_mem_wready_INST_0_i_10_n_0,
      O => \^burstlength_reg_reg[0]\
    );
s_axi_mem_wready_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(3),
      I4 => s_axi_mem_wready_INST_0_i_2_0,
      I5 => s_axi_mem_wready_INST_0_i_2_1,
      O => s_axi_mem_wready_INST_0_i_7_n_0
    );
s_axi_mem_wready_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => pend_rdreq,
      I1 => s_axi_mem_wready_INST_0_i_10_n_0,
      I2 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(1),
      I3 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(3),
      I4 => \FSM_sequential_emc_addr_ps[0]_i_7_0\(0),
      O => \^pend_rdreq_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_cntr_incr_decr_addn_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \INFERRED_GEN.cnt_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_emc_addr_ps_reg[2]\ : out STD_LOGIC;
    s_axi_mem_rvalid : out STD_LOGIC;
    fifo_full_p1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \INFERRED_GEN.cnt_i_reg[2]_rep_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_data_count_reg[7]\ : in STD_LOGIC;
    s_axi_mem_rready : in STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_cntr_incr_decr_addn_f : entity is "cntr_incr_decr_addn_f";
end AXI_bd_0_axi_emc_0_0_cntr_incr_decr_addn_f;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_cntr_incr_decr_addn_f is
  signal \Cnt_p10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_n_0\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_n_1\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_n_2\ : STD_LOGIC;
  signal \Cnt_p10_carry__0_n_3\ : STD_LOGIC;
  signal \Cnt_p10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal Cnt_p10_carry_i_2_n_0 : STD_LOGIC;
  signal Cnt_p10_carry_i_3_n_0 : STD_LOGIC;
  signal Cnt_p10_carry_i_4_n_0 : STD_LOGIC;
  signal Cnt_p10_carry_n_0 : STD_LOGIC;
  signal Cnt_p10_carry_n_1 : STD_LOGIC;
  signal Cnt_p10_carry_n_2 : STD_LOGIC;
  signal Cnt_p10_carry_n_3 : STD_LOGIC;
  signal FIFO_Full_i_2_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal fifo_empty : STD_LOGIC;
  signal rd_data_count0 : STD_LOGIC;
  signal \NLW_Cnt_p10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Cnt_p10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[0]\ : label is "INFERRED_GEN.cnt_i_reg[0]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[0]_rep\ : label is "INFERRED_GEN.cnt_i_reg[0]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[1]\ : label is "INFERRED_GEN.cnt_i_reg[1]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[1]_rep\ : label is "INFERRED_GEN.cnt_i_reg[1]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[2]\ : label is "INFERRED_GEN.cnt_i_reg[2]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[2]_rep\ : label is "INFERRED_GEN.cnt_i_reg[2]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[3]\ : label is "INFERRED_GEN.cnt_i_reg[3]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[3]_rep\ : label is "INFERRED_GEN.cnt_i_reg[3]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[3]_rep__0\ : label is "INFERRED_GEN.cnt_i_reg[3]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[4]\ : label is "INFERRED_GEN.cnt_i_reg[4]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[4]_rep\ : label is "INFERRED_GEN.cnt_i_reg[4]";
  attribute ORIG_CELL_NAME of \INFERRED_GEN.cnt_i_reg[4]_rep__0\ : label is "INFERRED_GEN.cnt_i_reg[4]";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].rdce_out_i[0]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of s_axi_mem_rvalid_INST_0 : label is "soft_lutpair19";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
Cnt_p10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Cnt_p10_carry_n_0,
      CO(2) => Cnt_p10_carry_n_1,
      CO(1) => Cnt_p10_carry_n_2,
      CO(0) => Cnt_p10_carry_n_3,
      CYINIT => rd_data_count0,
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => addr_i_p1(3 downto 0),
      S(3) => Cnt_p10_carry_i_2_n_0,
      S(2) => Cnt_p10_carry_i_3_n_0,
      S(1) => Cnt_p10_carry_i_4_n_0,
      S(0) => S(0)
    );
\Cnt_p10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Cnt_p10_carry_n_0,
      CO(3) => \Cnt_p10_carry__0_n_0\,
      CO(2) => \Cnt_p10_carry__0_n_1\,
      CO(1) => \Cnt_p10_carry__0_n_2\,
      CO(0) => \Cnt_p10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => addr_i_p1(7 downto 4),
      S(3) => \Cnt_p10_carry__0_i_1_n_0\,
      S(2) => \Cnt_p10_carry__0_i_2_n_0\,
      S(1) => \Cnt_p10_carry__0_i_3_n_0\,
      S(0) => \Cnt_p10_carry__0_i_4_n_0\
    );
\Cnt_p10_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(7),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \Cnt_p10_carry__0_i_1_n_0\
    );
\Cnt_p10_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(6),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \Cnt_p10_carry__0_i_2_n_0\
    );
\Cnt_p10_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(5),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \Cnt_p10_carry__0_i_3_n_0\
    );
\Cnt_p10_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(4),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \Cnt_p10_carry__0_i_4_n_0\
    );
\Cnt_p10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Cnt_p10_carry__0_n_0\,
      CO(3 downto 0) => \NLW_Cnt_p10_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Cnt_p10_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => addr_i_p1(8),
      S(3 downto 1) => B"000",
      S(0) => \Cnt_p10_carry__1_i_1_n_0\
    );
\Cnt_p10_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_mem_rready,
      I1 => fifo_empty,
      O => \Cnt_p10_carry__1_i_1_n_0\
    );
Cnt_p10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_mem_rready,
      I1 => fifo_empty,
      O => rd_data_count0
    );
Cnt_p10_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(3),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => Cnt_p10_carry_i_2_n_0
    );
Cnt_p10_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(2),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => Cnt_p10_carry_i_3_n_0
    );
Cnt_p10_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => Cnt_p10_carry_i_4_n_0
    );
FIFO_Full_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => addr_i_p1(8),
      I1 => addr_i_p1(1),
      I2 => addr_i_p1(4),
      I3 => FIFO_Full_i_2_n_0,
      O => fifo_full_p1
    );
FIFO_Full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => addr_i_p1(5),
      I1 => addr_i_p1(3),
      I2 => addr_i_p1(0),
      I3 => addr_i_p1(2),
      I4 => addr_i_p1(6),
      I5 => addr_i_p1(7),
      O => FIFO_Full_i_2_n_0
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[0]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \INFERRED_GEN.cnt_i_reg[2]_rep_0\(0),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[1]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \INFERRED_GEN.cnt_i_reg[2]_rep_0\(1),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[2]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \INFERRED_GEN.cnt_i_reg[2]_rep_0\(2),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => \^q\(3),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[3]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => A(0),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[3]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => addr(0),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(4),
      Q => \^q\(4),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[4]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(4),
      Q => A(1),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[4]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(4),
      Q => addr(1),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(5),
      Q => \^q\(5),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(6),
      Q => \^q\(6),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(7),
      Q => \^q\(7),
      S => SS(0)
    );
\INFERRED_GEN.cnt_i_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(8),
      Q => fifo_empty,
      S => SS(0)
    );
\MEM_DECODE_GEN[0].rdce_out_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\,
      I1 => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\(2),
      I2 => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\(1),
      I3 => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\(0),
      I4 => fifo_empty,
      O => \FSM_sequential_emc_addr_ps_reg[2]\
    );
\rd_data_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rd_data_count_reg[7]\,
      I1 => fifo_empty,
      I2 => s_axi_mem_rready,
      O => \INFERRED_GEN.cnt_i_reg[8]_0\(0)
    );
s_axi_mem_rvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_empty,
      O => s_axi_mem_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_dynshreg_f is
  port (
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_rnw : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_fifo_wr_en : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 32 );
    \INFERRED_GEN.data_reg[255][15]_mux__2_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_dynshreg_f : entity is "dynshreg_f";
end AXI_bd_0_axi_emc_0_0_dynshreg_f;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_dynshreg_f is
  signal \INFERRED_GEN.data_reg[255][0]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][0]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][10]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][11]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][12]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][13]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][14]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][15]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][16]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][17]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][18]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][19]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][1]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][20]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][21]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][22]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][23]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][24]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][25]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][26]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][27]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][28]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][29]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][2]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][30]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][31]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][32]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][3]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][4]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][5]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][6]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][7]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][8]_srl32_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_mux_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__0_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__1_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__2_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__3_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__4_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__5_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__5_n_1\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32__6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg[255][9]_srl32_n_1\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][0]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][10]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][11]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][12]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][13]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][14]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][15]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][16]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][17]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][18]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][19]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][1]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][20]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][21]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][22]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][23]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][24]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][25]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][26]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][27]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][28]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][29]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][2]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][30]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][31]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][32]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][3]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][4]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][5]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][6]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][7]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][8]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_INFERRED_GEN.data_reg[255][9]_srl32__6_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][0]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][0]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][10]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][10]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][11]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][11]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][12]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][12]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][13]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][13]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][14]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][14]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][15]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][15]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][16]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][16]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][17]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][17]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][18]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][18]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][19]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][19]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][1]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][1]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][20]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][20]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][21]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][21]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][22]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][22]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][23]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][23]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][24]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][24]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][25]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][25]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][26]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][26]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][27]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][27]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][28]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][28]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][29]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][29]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][2]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][2]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][30]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][30]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][31]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][31]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][32]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][32]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][3]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][3]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][4]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][4]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][5]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][5]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][6]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][6]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][7]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][7]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][8]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][8]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__0\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__0 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__1\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__1 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__2\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__2 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__3\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__4\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__5\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__5 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[255][9]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] ";
  attribute srl_name of \INFERRED_GEN.data_reg[255][9]_srl32__6\ : label is "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__6 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[0]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[10]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[11]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[12]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[13]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[14]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[15]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[16]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[17]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[18]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[19]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[1]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[20]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[21]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[22]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[23]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[24]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[25]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[26]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[27]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[28]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[29]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[2]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[30]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[31]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[3]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[4]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[5]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[6]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[7]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[8]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_mem_rdata[9]_INST_0\ : label is "soft_lutpair24";
begin
\INFERRED_GEN.data_reg[255][0]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][0]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][0]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][0]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][0]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][0]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][0]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][0]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][0]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(32),
      Q => \INFERRED_GEN.data_reg[255][0]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][0]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][0]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][0]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][0]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][0]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][10]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][10]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][10]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][10]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][10]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][10]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][10]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][10]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][10]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(22),
      Q => \INFERRED_GEN.data_reg[255][10]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][10]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][10]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][10]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][10]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][10]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][11]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][11]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][11]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][11]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][11]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][11]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][11]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][11]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][11]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(21),
      Q => \INFERRED_GEN.data_reg[255][11]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][11]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][11]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][11]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][11]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][11]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][12]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][12]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][12]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][12]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][12]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][12]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][12]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][12]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][12]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(20),
      Q => \INFERRED_GEN.data_reg[255][12]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][12]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][12]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][12]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][12]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][12]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][13]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][13]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][13]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][13]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][13]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][13]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][13]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][13]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][13]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(19),
      Q => \INFERRED_GEN.data_reg[255][13]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][13]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][13]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][13]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][13]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][13]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][14]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][14]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][14]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][14]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][14]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][14]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][14]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][14]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][14]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(18),
      Q => \INFERRED_GEN.data_reg[255][14]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][14]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][14]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][14]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][14]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][14]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][15]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][15]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][15]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][15]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][15]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][15]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][15]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][15]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][15]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(17),
      Q => \INFERRED_GEN.data_reg[255][15]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][15]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][15]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][15]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][15]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][15]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][16]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][16]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][16]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][16]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][16]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][16]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][16]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][16]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][16]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(16),
      Q => \INFERRED_GEN.data_reg[255][16]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][16]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][16]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][16]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][16]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][16]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][17]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][17]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][17]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][17]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][17]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][17]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][17]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][17]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][17]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(15),
      Q => \INFERRED_GEN.data_reg[255][17]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][17]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][17]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][17]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][17]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][17]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][18]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][18]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][18]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][18]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][18]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][18]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][18]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][18]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][18]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(14),
      Q => \INFERRED_GEN.data_reg[255][18]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][18]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][18]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][18]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][18]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][18]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][19]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][19]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][19]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][19]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][19]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][19]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][19]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][19]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][19]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(13),
      Q => \INFERRED_GEN.data_reg[255][19]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][19]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][19]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][19]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][19]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][19]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][1]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][1]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][1]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][1]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][1]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][1]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][1]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][1]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(31),
      Q => \INFERRED_GEN.data_reg[255][1]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][1]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][1]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][1]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][1]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][1]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][20]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][20]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][20]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][20]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][20]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][20]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][20]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][20]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][20]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(12),
      Q => \INFERRED_GEN.data_reg[255][20]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][20]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][20]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][20]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][20]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][20]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][21]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][21]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][21]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][21]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][21]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][21]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][21]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][21]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][21]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(11),
      Q => \INFERRED_GEN.data_reg[255][21]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][21]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][21]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][21]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][21]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][21]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][22]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][22]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][22]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][22]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][22]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][22]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][22]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][22]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][22]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(10),
      Q => \INFERRED_GEN.data_reg[255][22]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][22]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][22]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][22]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][22]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][22]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][23]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][23]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][23]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][23]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][23]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][23]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][23]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][23]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][23]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(9),
      Q => \INFERRED_GEN.data_reg[255][23]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][23]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][23]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][23]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][23]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][23]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][24]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][24]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][24]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][24]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][24]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][24]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][24]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][24]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][24]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(8),
      Q => \INFERRED_GEN.data_reg[255][24]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][24]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][24]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][24]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][24]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][24]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][25]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][25]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][25]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][25]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][25]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][25]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][25]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][25]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][25]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(7),
      Q => \INFERRED_GEN.data_reg[255][25]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][25]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][25]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][25]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][25]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][25]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][26]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][26]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][26]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][26]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][26]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][26]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][26]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][26]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][26]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(6),
      Q => \INFERRED_GEN.data_reg[255][26]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][26]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][26]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][26]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][26]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][26]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][27]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][27]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][27]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][27]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][27]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][27]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][27]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][27]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][27]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(5),
      Q => \INFERRED_GEN.data_reg[255][27]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][27]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][27]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][27]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][27]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][27]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][28]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][28]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][28]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][28]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][28]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][28]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][28]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][28]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][28]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(4),
      Q => \INFERRED_GEN.data_reg[255][28]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][28]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][28]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][28]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][28]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][28]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][29]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][29]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][29]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][29]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][29]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][29]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][29]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][29]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][29]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(3),
      Q => \INFERRED_GEN.data_reg[255][29]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][29]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][29]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][29]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][29]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][29]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][2]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][2]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][2]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][2]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][2]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][2]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][2]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][2]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(30),
      Q => \INFERRED_GEN.data_reg[255][2]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][2]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][2]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][2]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][2]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][2]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][30]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][30]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][30]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][30]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][30]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][30]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][30]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][30]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][30]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(2),
      Q => \INFERRED_GEN.data_reg[255][30]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][30]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][30]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][30]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][30]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][30]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][31]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][31]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][31]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][31]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][31]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][31]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][31]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][31]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(1),
      Q => \INFERRED_GEN.data_reg[255][31]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][31]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][31]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => A(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][31]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][31]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][31]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][32]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][32]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][32]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][32]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][32]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][32]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][32]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][32]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][32]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(0),
      Q => \INFERRED_GEN.data_reg[255][32]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][32]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][32]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => addr(1 downto 0),
      A(2 downto 0) => Q(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][32]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][32]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][32]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][3]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][3]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][3]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][3]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][3]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][3]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][3]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][3]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(29),
      Q => \INFERRED_GEN.data_reg[255][3]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][3]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][3]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][3]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][3]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][3]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][4]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][4]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][4]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][4]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][4]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][4]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][4]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][4]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(28),
      Q => \INFERRED_GEN.data_reg[255][4]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][4]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][4]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][4]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][4]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][4]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][5]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][5]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][5]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][5]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][5]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][5]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][5]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][5]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(27),
      Q => \INFERRED_GEN.data_reg[255][5]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][5]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][5]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][5]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][5]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][5]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][6]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][6]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][6]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][6]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][6]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][6]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][6]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][6]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(26),
      Q => \INFERRED_GEN.data_reg[255][6]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][6]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][6]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][6]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][6]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][6]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][7]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][7]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][7]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][7]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][7]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][7]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][7]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][7]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(25),
      Q => \INFERRED_GEN.data_reg[255][7]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][7]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][7]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][7]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][7]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][7]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][8]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][8]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][8]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][8]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][8]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][8]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][8]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][8]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][8]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(24),
      Q => \INFERRED_GEN.data_reg[255][8]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][8]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][8]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][8]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][8]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][8]_srl32__6_Q31_UNCONNECTED\
    );
\INFERRED_GEN.data_reg[255][9]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_srl32_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_srl32__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][9]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_srl32__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_srl32__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__0_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][9]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_srl32__3_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_srl32__4_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__1_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][9]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_srl32__5_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_srl32__6_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__2_n_0\,
      S => Q(5)
    );
\INFERRED_GEN.data_reg[255][9]_mux__3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_mux_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_mux__0_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__3_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][9]_mux__4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_mux__1_n_0\,
      I1 => \INFERRED_GEN.data_reg[255][9]_mux__2_n_0\,
      O => \INFERRED_GEN.data_reg[255][9]_mux__4_n_0\,
      S => Q(6)
    );
\INFERRED_GEN.data_reg[255][9]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \in\(23),
      Q => \INFERRED_GEN.data_reg[255][9]_srl32_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__0_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__0_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__0_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__1_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__1_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__1_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__2_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__2_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__2_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__3_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__3_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__3_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__4_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__4_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__4_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__5_n_0\,
      Q31 => \INFERRED_GEN.data_reg[255][9]_srl32__5_n_1\
    );
\INFERRED_GEN.data_reg[255][9]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 3) => Q(4 downto 3),
      A(2 downto 0) => \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2 downto 0),
      CE => rd_fifo_wr_en,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg[255][9]_srl32__5_n_1\,
      Q => \INFERRED_GEN.data_reg[255][9]_srl32__6_n_0\,
      Q31 => \NLW_INFERRED_GEN.data_reg[255][9]_srl32__6_Q31_UNCONNECTED\
    );
\s_axi_mem_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][1]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][1]_mux__3_n_0\,
      O => s_axi_mem_rdata(0)
    );
\s_axi_mem_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][11]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][11]_mux__3_n_0\,
      O => s_axi_mem_rdata(10)
    );
\s_axi_mem_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][12]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][12]_mux__3_n_0\,
      O => s_axi_mem_rdata(11)
    );
\s_axi_mem_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][13]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][13]_mux__3_n_0\,
      O => s_axi_mem_rdata(12)
    );
\s_axi_mem_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][14]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][14]_mux__3_n_0\,
      O => s_axi_mem_rdata(13)
    );
\s_axi_mem_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][15]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][15]_mux__3_n_0\,
      O => s_axi_mem_rdata(14)
    );
\s_axi_mem_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][16]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][16]_mux__3_n_0\,
      O => s_axi_mem_rdata(15)
    );
\s_axi_mem_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][17]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][17]_mux__3_n_0\,
      O => s_axi_mem_rdata(16)
    );
\s_axi_mem_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][18]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][18]_mux__3_n_0\,
      O => s_axi_mem_rdata(17)
    );
\s_axi_mem_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][19]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][19]_mux__3_n_0\,
      O => s_axi_mem_rdata(18)
    );
\s_axi_mem_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][20]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][20]_mux__3_n_0\,
      O => s_axi_mem_rdata(19)
    );
\s_axi_mem_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][2]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][2]_mux__3_n_0\,
      O => s_axi_mem_rdata(1)
    );
\s_axi_mem_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][21]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][21]_mux__3_n_0\,
      O => s_axi_mem_rdata(20)
    );
\s_axi_mem_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][22]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][22]_mux__3_n_0\,
      O => s_axi_mem_rdata(21)
    );
\s_axi_mem_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][23]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][23]_mux__3_n_0\,
      O => s_axi_mem_rdata(22)
    );
\s_axi_mem_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][24]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][24]_mux__3_n_0\,
      O => s_axi_mem_rdata(23)
    );
\s_axi_mem_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][25]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][25]_mux__3_n_0\,
      O => s_axi_mem_rdata(24)
    );
\s_axi_mem_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][26]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][26]_mux__3_n_0\,
      O => s_axi_mem_rdata(25)
    );
\s_axi_mem_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][27]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][27]_mux__3_n_0\,
      O => s_axi_mem_rdata(26)
    );
\s_axi_mem_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][28]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][28]_mux__3_n_0\,
      O => s_axi_mem_rdata(27)
    );
\s_axi_mem_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][29]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][29]_mux__3_n_0\,
      O => s_axi_mem_rdata(28)
    );
\s_axi_mem_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][30]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][30]_mux__3_n_0\,
      O => s_axi_mem_rdata(29)
    );
\s_axi_mem_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][3]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][3]_mux__3_n_0\,
      O => s_axi_mem_rdata(2)
    );
\s_axi_mem_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][31]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][31]_mux__3_n_0\,
      O => s_axi_mem_rdata(30)
    );
\s_axi_mem_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][32]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][32]_mux__3_n_0\,
      O => s_axi_mem_rdata(31)
    );
\s_axi_mem_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][4]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][4]_mux__3_n_0\,
      O => s_axi_mem_rdata(3)
    );
\s_axi_mem_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][5]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][5]_mux__3_n_0\,
      O => s_axi_mem_rdata(4)
    );
\s_axi_mem_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][6]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][6]_mux__3_n_0\,
      O => s_axi_mem_rdata(5)
    );
\s_axi_mem_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][7]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][7]_mux__3_n_0\,
      O => s_axi_mem_rdata(6)
    );
\s_axi_mem_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][8]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][8]_mux__3_n_0\,
      O => s_axi_mem_rdata(7)
    );
\s_axi_mem_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][9]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][9]_mux__3_n_0\,
      O => s_axi_mem_rdata(8)
    );
\s_axi_mem_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg[255][10]_mux__4_n_0\,
      I1 => Q(7),
      I2 => \INFERRED_GEN.data_reg[255][10]_mux__3_n_0\,
      O => s_axi_mem_rdata(9)
    );
\s_axi_mem_rresp[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => bus2ip_rnw,
      I1 => \INFERRED_GEN.data_reg[255][0]_mux__3_n_0\,
      I2 => Q(7),
      I3 => \INFERRED_GEN.data_reg[255][0]_mux__4_n_0\,
      O => s_axi_mem_rresp(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_io_registers is
  port (
    mem_wen : out STD_LOGIC;
    mem_cen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_qwen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_ben : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rpn : out STD_LOGIC;
    mem_ce : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rnw : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_dq_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_dq_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    mem_CEN_cmb : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    mem_OEN_cmb : in STD_LOGIC;
    mem_WEN_cmb : in STD_LOGIC;
    mem_qwen_int : in STD_LOGIC;
    mem_ben_int : in STD_LOGIC;
    mem_ce_int : in STD_LOGIC;
    mem_RNW_cmb : in STD_LOGIC;
    mem_dq_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rdclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \mem_dq_t_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_io_registers : entity is "io_registers";
end AXI_bd_0_axi_emc_0_0_io_registers;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_io_registers is
  signal mem_wen_reg : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of mem_wen_reg : signal is "true";
  attribute IOB : string;
  attribute IOB of \Mem_DQ_I_v_reg[0]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[1]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[2]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[3]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[4]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[5]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[6]\ : label is "TRUE";
  attribute IOB of \Mem_DQ_I_v_reg[7]\ : label is "TRUE";
  attribute IOB of \mem_ben_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_ce_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_cen_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[1]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[2]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[3]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[4]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[5]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[6]\ : label is "TRUE";
  attribute IOB of \mem_dq_o_reg_reg[7]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[1]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[2]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[3]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[4]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[5]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[6]\ : label is "TRUE";
  attribute IOB of \mem_dq_t_reg_reg[7]\ : label is "TRUE";
  attribute IOB of \mem_oen_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_qwen_reg_reg[0]\ : label is "TRUE";
  attribute IOB of mem_rnw_reg_reg : label is "TRUE";
  attribute IOB of mem_rpn_reg_reg : label is "TRUE";
  attribute IOB of mem_wen_reg_reg : label is "TRUE";
  attribute KEEP : string;
  attribute KEEP of mem_wen_reg_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of mem_wen_reg_reg : label is "no";
begin
  mem_wen <= mem_wen_reg;
\Mem_DQ_I_v_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(7),
      Q => Q(7),
      R => bus2ip_reset
    );
\Mem_DQ_I_v_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(6),
      Q => Q(6),
      R => bus2ip_reset
    );
\Mem_DQ_I_v_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(5),
      Q => Q(5),
      R => bus2ip_reset
    );
\Mem_DQ_I_v_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(4),
      Q => Q(4),
      R => bus2ip_reset
    );
\Mem_DQ_I_v_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(3),
      Q => Q(3),
      R => bus2ip_reset
    );
\Mem_DQ_I_v_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(2),
      Q => Q(2),
      R => bus2ip_reset
    );
\Mem_DQ_I_v_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(1),
      Q => Q(1),
      R => bus2ip_reset
    );
\Mem_DQ_I_v_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => mem_dq_i(0),
      Q => Q(0),
      R => bus2ip_reset
    );
\mem_ben_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_ben_int,
      Q => mem_ben(0),
      S => bus2ip_reset
    );
\mem_ce_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_ce_int,
      Q => mem_ce(0),
      R => bus2ip_reset
    );
\mem_cen_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_CEN_cmb,
      Q => mem_cen(0),
      S => bus2ip_reset
    );
\mem_dq_o_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(7),
      Q => mem_dq_o(7),
      R => bus2ip_reset
    );
\mem_dq_o_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(6),
      Q => mem_dq_o(6),
      R => bus2ip_reset
    );
\mem_dq_o_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(5),
      Q => mem_dq_o(5),
      R => bus2ip_reset
    );
\mem_dq_o_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(4),
      Q => mem_dq_o(4),
      R => bus2ip_reset
    );
\mem_dq_o_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => mem_dq_o(3),
      R => bus2ip_reset
    );
\mem_dq_o_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => mem_dq_o(2),
      R => bus2ip_reset
    );
\mem_dq_o_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => mem_dq_o(1),
      R => bus2ip_reset
    );
\mem_dq_o_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => mem_dq_o(0),
      R => bus2ip_reset
    );
\mem_dq_t_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mem_dq_t_reg_reg[0]_0\(0),
      Q => mem_dq_t(7),
      S => bus2ip_reset
    );
\mem_dq_t_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mem_dq_t_reg_reg[0]_0\(0),
      Q => mem_dq_t(6),
      S => bus2ip_reset
    );
\mem_dq_t_reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mem_dq_t_reg_reg[0]_0\(0),
      Q => mem_dq_t(5),
      S => bus2ip_reset
    );
\mem_dq_t_reg_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mem_dq_t_reg_reg[0]_0\(0),
      Q => mem_dq_t(4),
      S => bus2ip_reset
    );
\mem_dq_t_reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mem_dq_t_reg_reg[0]_0\(0),
      Q => mem_dq_t(3),
      S => bus2ip_reset
    );
\mem_dq_t_reg_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mem_dq_t_reg_reg[0]_0\(0),
      Q => mem_dq_t(2),
      S => bus2ip_reset
    );
\mem_dq_t_reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mem_dq_t_reg_reg[0]_0\(0),
      Q => mem_dq_t(1),
      S => bus2ip_reset
    );
\mem_dq_t_reg_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mem_dq_t_reg_reg[0]_0\(0),
      Q => mem_dq_t(0),
      S => bus2ip_reset
    );
\mem_oen_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_OEN_cmb,
      Q => mem_oen(0),
      S => bus2ip_reset
    );
\mem_qwen_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_qwen_int,
      Q => mem_qwen(0),
      S => bus2ip_reset
    );
mem_rnw_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_RNW_cmb,
      Q => mem_rnw,
      R => bus2ip_reset
    );
mem_rpn_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '1',
      Q => mem_rpn,
      R => bus2ip_reset
    );
mem_wen_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_WEN_cmb,
      Q => mem_wen_reg,
      S => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_ld_arith_reg is
  port (
    burst_cnt_i : out STD_LOGIC_VECTOR ( 0 to 7 );
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    ip2bus_addrack : in STD_LOGIC;
    S : in STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    reset_fifo : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_ld_arith_reg : entity is "ld_arith_reg";
end AXI_bd_0_axi_emc_0_0_ld_arith_reg;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_ld_arith_reg is
  signal \^burst_cnt_i\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal cry : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_1 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal gen_cry_kill_n_4 : STD_LOGIC;
  signal gen_cry_kill_n_5 : STD_LOGIC;
  signal gen_cry_kill_n_6 : STD_LOGIC;
  signal s_axi_mem_wready_INST_0_i_9_n_0 : STD_LOGIC;
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal xorcy_out_5 : STD_LOGIC;
  signal xorcy_out_6 : STD_LOGIC;
  signal xorcy_out_7 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[5].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[5].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[5].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[6].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[6].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[6].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[7].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[7].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  burst_cnt_i(0 to 7) <= \^burst_cnt_i\(0 to 7);
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_7,
      Q => \^burst_cnt_i\(0),
      R => reset_fifo
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_6,
      Q => \^burst_cnt_i\(1),
      R => reset_fifo
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(1),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_6
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_5,
      Q => \^burst_cnt_i\(2),
      R => reset_fifo
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(2),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_5
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_4,
      Q => \^burst_cnt_i\(3),
      R => reset_fifo
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(3),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_4
    );
\PERBIT_GEN[3].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\(3),
      CO(2 downto 0) => cry(7 downto 5),
      CYINIT => '0',
      DI(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => gen_cry_kill_n_6,
      DI(1) => gen_cry_kill_n_5,
      DI(0) => gen_cry_kill_n_4,
      O(3) => xorcy_out_7,
      O(2) => xorcy_out_6,
      O(1) => xorcy_out_5,
      O(0) => xorcy_out_4,
      S(3) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_3,
      Q => \^burst_cnt_i\(4),
      R => reset_fifo
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(4),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_2,
      Q => \^burst_cnt_i\(5),
      R => reset_fifo
    );
\PERBIT_GEN[5].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(5),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_1,
      Q => \^burst_cnt_i\(6),
      R => reset_fifo
    );
\PERBIT_GEN[6].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(6),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_1
    );
\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_0,
      Q => \^burst_cnt_i\(7),
      R => reset_fifo
    );
\PERBIT_GEN[7].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^burst_cnt_i\(7),
      I1 => ip2bus_addrack,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[7].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => ip2bus_addrack,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => gen_cry_kill_n_1,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
s_axi_mem_wready_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^burst_cnt_i\(7),
      I1 => \^burst_cnt_i\(6),
      I2 => \^burst_cnt_i\(4),
      I3 => \^burst_cnt_i\(5),
      I4 => s_axi_mem_wready_INST_0_i_9_n_0,
      O => \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0\
    );
s_axi_mem_wready_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^burst_cnt_i\(3),
      I1 => \^burst_cnt_i\(0),
      I2 => \^burst_cnt_i\(2),
      I3 => \^burst_cnt_i\(1),
      O => s_axi_mem_wready_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized0\ is
  port (
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_2\ : out STD_LOGIC;
    pend_wrreq_reg : out STD_LOGIC;
    pend_wrreq_reg_0 : out STD_LOGIC;
    pend_wrreq_reg_1 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_3\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_4\ : out STD_LOGIC;
    Cycle_cnt_en_int : in STD_LOGIC;
    S_0 : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\ : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    read_data_en_cmb : in STD_LOGIC;
    \FSM_sequential_crnt_state[1]_i_6\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\ : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_6\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_0\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_0\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_1\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_2\ : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    \DATA_STORE_GEN[0].WRDATA_REG\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_crnt_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_crnt_state[2]_i_2\ : in STD_LOGIC;
    \FSM_sequential_crnt_state[2]_i_2_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state[2]_i_2_1\ : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized0\ : entity is "ld_arith_reg";
end \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized0\;

architecture STRUCTURE of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized0\ is
  signal \FSM_sequential_crnt_state[0]_i_12_n_0\ : STD_LOGIC;
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1_2\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1_2\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1_3\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18_n_0\ : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal \^pend_wrreq_reg\ : STD_LOGIC;
  signal \^pend_wrreq_reg_0\ : STD_LOGIC;
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_12\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_15\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[1]_i_10\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[1]_i_7\ : label is "soft_lutpair62";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_2\ : label is "soft_lutpair62";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[1].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \PERBIT_GEN[1].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute SOFT_HLUTNM of \PERBIT_GEN[4].MULT_AND_i1_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of read_data_en_reg_i_2 : label is "soft_lutpair63";
begin
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1_2\;
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_2\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1_2\;
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_3\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1_3\;
  pend_wrreq_reg <= \^pend_wrreq_reg\;
  pend_wrreq_reg_0 <= \^pend_wrreq_reg_0\;
\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555D55"
    )
        port map (
      I0 => \^pend_wrreq_reg_0\,
      I1 => temp_bus2ip_cs,
      I2 => bus2Mem_RdReq,
      I3 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_3\,
      I4 => \DATA_STORE_GEN[0].WRDATA_REG\,
      I5 => Q(2),
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I1 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I2 => bus2Mem_RdReq,
      I3 => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\,
      O => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\
    );
\FSM_sequential_crnt_state[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => Q(0),
      I1 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I2 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I3 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_6\,
      O => \FSM_sequential_crnt_state[0]_i_12_n_0\
    );
\FSM_sequential_crnt_state[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => bus2Mem_RdReq,
      I1 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I2 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I3 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_2\,
      O => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4\
    );
\FSM_sequential_crnt_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA20000"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_2\,
      I1 => \FSM_sequential_crnt_state_reg[0]_0\,
      I2 => \FSM_sequential_crnt_state_reg[0]_1\,
      I3 => \FSM_sequential_crnt_state[0]_i_12_n_0\,
      I4 => \FSM_sequential_crnt_state_reg[0]_2\,
      I5 => \FSM_sequential_crnt_state_reg[0]_3\,
      O => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\
    );
\FSM_sequential_crnt_state[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I1 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I2 => \FSM_sequential_crnt_state[1]_i_6\,
      O => \^perbit_gen[1].ff_rst0_gen.fdre_i1_2\
    );
\FSM_sequential_crnt_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I1 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I2 => bus2ip_wrreq_i,
      I3 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\,
      O => \^perbit_gen[1].ff_rst0_gen.fdre_i1_3\
    );
\FSM_sequential_crnt_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030A0FFAF"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[2]_i_2\,
      I1 => \FSM_sequential_crnt_state[2]_i_2_0\,
      I2 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_2\,
      I3 => \FSM_sequential_crnt_state[2]_i_2_1\,
      I4 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_6\,
      I5 => Q(0),
      O => \FSM_sequential_crnt_state_reg[0]\
    );
\FSM_sequential_crnt_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFF8FFF8FFF8"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\,
      I1 => bus2ip_wrreq_i,
      I2 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I3 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I4 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_6\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_0\,
      O => \^pend_wrreq_reg\
    );
\FSM_sequential_emc_addr_ps[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555D55"
    )
        port map (
      I0 => \^pend_wrreq_reg_0\,
      I1 => temp_bus2ip_cs,
      I2 => bus2Mem_RdReq,
      I3 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_3\,
      I4 => \DATA_STORE_GEN[0].WRDATA_REG\,
      I5 => Q(1),
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\
    );
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_1,
      Q => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      R => bus2ip_reset
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_0,
      Q => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      R => bus2ip_reset
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_6\,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\,
      I2 => bus2ip_wrreq_i,
      I3 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I4 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      O => \^pend_wrreq_reg_0\
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I1 => Cycle_cnt_en_int,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[1].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => cry(1),
      CYINIT => Cycle_cnt_en_int,
      DI(3 downto 1) => \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => gen_cry_kill_n_0,
      O(3 downto 2) => \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_O_UNCONNECTED\(3 downto 2),
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3 downto 2) => \NLW_PERBIT_GEN[1].MUXCY_i1_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\,
      S(0) => S_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I1 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      O => \^perbit_gen[0].ff_rst0_gen.fdre_i1_2\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0E0F0F000E0F0F"
    )
        port map (
      I0 => \^pend_wrreq_reg\,
      I1 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_1\,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_2\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18_n_0\,
      O => pend_wrreq_reg_1
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0080"
    )
        port map (
      I0 => bus2ip_wrreq_i,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\,
      I2 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_6\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_0\,
      I4 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I5 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_18_n_0\
    );
read_ack_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => read_data_en_cmb,
      I1 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I2 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      O => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\
    );
read_data_en_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I1 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\,
      I2 => bus2Mem_RdReq,
      O => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1\ is
  port (
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]\ : out STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_2\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC;
    tpacc_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_3\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12\ : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    CE_13 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\ : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2_0\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1\ : entity is "ld_arith_reg";
end \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1\;

architecture STRUCTURE of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1\ is
  signal \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[2].ff_rst1_gen.fdse_i1_1\ : STD_LOGIC;
  signal \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC;
  signal \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal tpacc_cnt : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ <= \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\;
  \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0\ <= \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\;
  \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ <= \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\;
  \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1\ <= \^perbit_gen[2].ff_rst1_gen.fdse_i1_1\;
  \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ <= \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\;
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80808080808080"
    )
        port map (
      I0 => bus2Mem_RdReq,
      I1 => \^perbit_gen[2].ff_rst1_gen.fdse_i1_1\,
      I2 => Q(0),
      I3 => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\,
      I4 => bus2ip_wrreq_i,
      I5 => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2_0\,
      O => \FSM_sequential_crnt_state_reg[3]\
    );
\FSM_sequential_crnt_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\,
      I1 => tpacc_cnt(4),
      I2 => \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\,
      I3 => \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\,
      I4 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4\,
      O => \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_2\
    );
\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_4,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\,
      S => bus2ip_reset
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12\
    );
\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_3,
      Q => \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\,
      S => bus2ip_reset
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\,
      I1 => tpacc_cnt_en,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_2,
      Q => \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\,
      S => bus2ip_reset
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\,
      I1 => tpacc_cnt_en,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_1,
      Q => \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\,
      S => bus2ip_reset
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\,
      I1 => tpacc_cnt_en,
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_13,
      D => xorcy_out_0,
      Q => tpacc_cnt(4),
      S => bus2ip_reset
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tpacc_cnt(4),
      I1 => tpacc_cnt_en,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => tpacc_cnt_en,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_3\,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tpacc_cnt(4),
      I1 => tpacc_cnt_en,
      O => S
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\,
      I1 => \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\,
      I2 => tpacc_cnt(4),
      I3 => \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\,
      I4 => \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\,
      I5 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\,
      O => \^perbit_gen[2].ff_rst1_gen.fdse_i1_1\
    );
read_data_en_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\,
      I1 => \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\,
      I2 => \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\,
      I3 => tpacc_cnt(4),
      I4 => \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\,
      O => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_1\ is
  port (
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC;
    trd_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_5\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8\ : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    CE_9 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_crnt_state_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_0\ : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_1\ : entity is "ld_arith_reg";
end \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_1\;

architecture STRUCTURE of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_1\ is
  signal \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^perbit_gen[0].ff_rst1_gen.fdse_i1_1\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_1 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal trd_cnt : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(0) <= \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0);
  \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ <= \^perbit_gen[0].ff_rst1_gen.fdse_i1_1\;
  \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0\ <= \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\;
  \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ <= \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\;
  \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ <= \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\;
\FSM_sequential_crnt_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000FF88FF"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_1\,
      I1 => \FSM_sequential_crnt_state_reg[1]\,
      I2 => \FSM_sequential_crnt_state_reg[1]_0\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => bus2Mem_RdReq,
      O => \FSM_sequential_crnt_state_reg[0]\
    );
\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_9,
      D => xorcy_out_4,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      S => bus2ip_reset
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8\
    );
\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_9,
      D => xorcy_out_3,
      Q => \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\,
      S => bus2ip_reset
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\,
      I1 => trd_cnt_en,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[1].MUXCY_i1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\,
      I1 => trd_cnt(4),
      I2 => \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\,
      I3 => \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\,
      I4 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      I5 => Q(0),
      O => \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1\
    );
\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_9,
      D => xorcy_out_2,
      Q => \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\,
      S => bus2ip_reset
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\,
      I1 => trd_cnt_en,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_9,
      D => xorcy_out_1,
      Q => \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\,
      S => bus2ip_reset
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\,
      I1 => trd_cnt_en,
      O => gen_cry_kill_n_1
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_9,
      D => xorcy_out_0,
      Q => trd_cnt(4),
      S => bus2ip_reset
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => trd_cnt(4),
      I1 => trd_cnt_en,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      I1 => \^perbit_gen[1].ff_rst1_gen.fdse_i1_0\,
      I2 => \^perbit_gen[3].ff_rst1_gen.fdse_i1_0\,
      I3 => trd_cnt(4),
      I4 => \^perbit_gen[2].ff_rst1_gen.fdse_i1_0\,
      O => \^perbit_gen[0].ff_rst1_gen.fdse_i1_1\
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => trd_cnt_en,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => gen_cry_kill_n_1,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_5\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => trd_cnt(4),
      I1 => trd_cnt_en,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_3\ is
  port (
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC;
    twr_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_3\ : entity is "ld_arith_reg";
end \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_3\;

architecture STRUCTURE of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_3\ is
  signal \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_1 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(3 downto 0) <= \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(3 downto 0);
\FSM_sequential_crnt_state[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(3),
      I1 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(2),
      I2 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      I3 => p_0_in(4),
      I4 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(1),
      O => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\
    );
\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_4,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(3),
      S => bus2ip_reset
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_3,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(2),
      S => bus2ip_reset
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(2),
      I1 => twr_cnt_en,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_2,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(1),
      S => bus2ip_reset
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(1),
      I1 => twr_cnt_en,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_1,
      Q => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      S => bus2ip_reset
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst1_gen.fdse_i1_0\(0),
      I1 => twr_cnt_en,
      O => gen_cry_kill_n_1
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => xorcy_out_0,
      Q => p_0_in(4),
      S => bus2ip_reset
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => twr_cnt_en,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => twr_cnt_en,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => gen_cry_kill_n_1,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => twr_cnt_en,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2\ is
  port (
    bus2ip_wr_req_reg_reg : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    pend_wrreq_reg : out STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    CE_18 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    \mem_a_int_reg[0]\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2\ : entity is "ld_arith_reg";
end \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2\;

architecture STRUCTURE of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2\ is
  signal \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal \^bus2ip_wr_req_reg_reg\ : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_1 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal thz_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_4\ : label is "soft_lutpair66";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute SOFT_HLUTNM of s_axi_mem_wready_INST_0_i_5 : label is "soft_lutpair66";
begin
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\;
  bus2ip_wr_req_reg_reg <= \^bus2ip_wr_req_reg_reg\;
\FSM_sequential_crnt_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I1 => \mem_a_int_reg[0]\,
      I2 => bus2ip_wrreq_i,
      I3 => temp_bus2ip_cs,
      O => pend_wrreq_reg
    );
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_18,
      D => xorcy_out_4,
      Q => thz_cnt(0),
      R => bus2ip_reset
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => thz_cnt(2),
      I1 => thz_cnt(4),
      I2 => thz_cnt(3),
      I3 => thz_cnt(0),
      I4 => thz_cnt(1),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_18,
      D => xorcy_out_3,
      Q => thz_cnt(1),
      R => bus2ip_reset
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => thz_cnt(1),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => thz_cnt(2),
      I1 => thz_cnt(4),
      I2 => thz_cnt(3),
      I3 => thz_cnt(0),
      I4 => thz_cnt(1),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_18,
      D => xorcy_out_2,
      Q => thz_cnt(2),
      R => bus2ip_reset
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => thz_cnt(2),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => thz_cnt(2),
      I1 => thz_cnt(4),
      I2 => thz_cnt(3),
      I3 => thz_cnt(0),
      I4 => thz_cnt(1),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_18,
      D => xorcy_out_1,
      Q => thz_cnt(3),
      R => bus2ip_reset
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => thz_cnt(3),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      O => gen_cry_kill_n_1
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F0E"
    )
        port map (
      I0 => thz_cnt(2),
      I1 => thz_cnt(4),
      I2 => thz_cnt(3),
      I3 => thz_cnt(0),
      I4 => thz_cnt(1),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_18,
      D => xorcy_out_0,
      Q => thz_cnt(4),
      R => bus2ip_reset
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => thz_cnt(1),
      I1 => thz_cnt(0),
      I2 => thz_cnt(3),
      I3 => thz_cnt(4),
      I4 => thz_cnt(2),
      O => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => thz_cnt(4),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => thz_cnt(2),
      I1 => thz_cnt(4),
      I2 => thz_cnt(3),
      I3 => thz_cnt(0),
      I4 => thz_cnt(1),
      O => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0\,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => gen_cry_kill_n_1,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCCCD"
    )
        port map (
      I0 => thz_cnt(2),
      I1 => thz_cnt(4),
      I2 => thz_cnt(3),
      I3 => thz_cnt(0),
      I4 => thz_cnt(1),
      O => S
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A2A2A2A"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\,
      I1 => \^bus2ip_wr_req_reg_reg\,
      I2 => temp_bus2ip_cs,
      I3 => bus2Mem_RdReq,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_0\,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\
    );
s_axi_mem_wready_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I1 => bus2ip_wrreq_i,
      I2 => \mem_a_int_reg[0]\,
      O => \^bus2ip_wr_req_reg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_0\ is
  port (
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    CE_4 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    transaction_done_reg_reg : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    transaction_done_reg_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_0\ : entity is "ld_arith_reg";
end \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_0\;

architecture STRUCTURE of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_0\ is
  signal \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_1 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal tlz_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\;
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_4,
      Q => tlz_cnt(0),
      R => bus2ip_reset
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => tlz_cnt(2),
      I1 => tlz_cnt(4),
      I2 => tlz_cnt(3),
      I3 => tlz_cnt(0),
      I4 => tlz_cnt(1),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_3,
      Q => tlz_cnt(1),
      R => bus2ip_reset
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlz_cnt(1),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => tlz_cnt(2),
      I1 => tlz_cnt(4),
      I2 => tlz_cnt(3),
      I3 => tlz_cnt(0),
      I4 => tlz_cnt(1),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_2,
      Q => tlz_cnt(2),
      R => bus2ip_reset
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlz_cnt(2),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => tlz_cnt(2),
      I1 => tlz_cnt(4),
      I2 => tlz_cnt(3),
      I3 => tlz_cnt(0),
      I4 => tlz_cnt(1),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_1,
      Q => tlz_cnt(3),
      R => bus2ip_reset
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlz_cnt(3),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      O => gen_cry_kill_n_1
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F0E"
    )
        port map (
      I0 => tlz_cnt(2),
      I1 => tlz_cnt(4),
      I2 => tlz_cnt(3),
      I3 => tlz_cnt(0),
      I4 => tlz_cnt(1),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_4,
      D => xorcy_out_0,
      Q => tlz_cnt(4),
      R => bus2ip_reset
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => tlz_cnt(1),
      I1 => tlz_cnt(0),
      I2 => tlz_cnt(3),
      I3 => tlz_cnt(4),
      I4 => tlz_cnt(2),
      O => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlz_cnt(4),
      I1 => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tlz_cnt(2),
      I1 => tlz_cnt(4),
      I2 => tlz_cnt(3),
      I3 => tlz_cnt(0),
      I4 => tlz_cnt(1),
      O => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0\,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => gen_cry_kill_n_1,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCCCD"
    )
        port map (
      I0 => tlz_cnt(2),
      I1 => tlz_cnt(4),
      I2 => tlz_cnt(3),
      I3 => tlz_cnt(0),
      I4 => tlz_cnt(1),
      O => S
    );
\PERBIT_GEN[7].MULT_AND_i1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => temp_bus2ip_cs,
      I1 => tlz_cnt(2),
      I2 => tlz_cnt(4),
      I3 => tlz_cnt(3),
      I4 => tlz_cnt(0),
      I5 => tlz_cnt(1),
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\
    );
transaction_done_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080808080808080"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I1 => bus2Mem_RdReq,
      I2 => temp_bus2ip_cs,
      I3 => transaction_done_reg_reg,
      I4 => bus2ip_wrreq_i,
      I5 => transaction_done_reg_reg_0,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_2\ is
  port (
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ : out STD_LOGIC;
    twph_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_2\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_0\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_1\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_2\ : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    CE_3 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_2\ : entity is "ld_arith_reg";
end \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_2\;

architecture STRUCTURE of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_2\ is
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal twph_cnt : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[0].XORCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
begin
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\(0) <= \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\(0);
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\;
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_3,
      D => xorcy_out_4,
      Q => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\(0),
      R => bus2ip_reset
    );
\PERBIT_GEN[0].XORCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => xorcy_out_4,
      S(3 downto 1) => \NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_2\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_3,
      D => xorcy_out_3,
      Q => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      R => bus2ip_reset
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I1 => twph_cnt_en,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_3,
      D => xorcy_out_2,
      Q => \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\,
      R => bus2ip_reset
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\,
      I1 => twph_cnt_en,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_3,
      D => xorcy_out_1,
      Q => \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\,
      R => bus2ip_reset
    );
\PERBIT_GEN[3].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\,
      I1 => twph_cnt_en,
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE_3,
      D => xorcy_out_0,
      Q => twph_cnt(4),
      R => bus2ip_reset
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => twph_cnt(4),
      I1 => twph_cnt_en,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[4].MULT_AND_i1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\(0),
      I1 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I2 => \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\,
      I3 => twph_cnt(4),
      I4 => \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\,
      O => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\
    );
\PERBIT_GEN[4].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => twph_cnt_en,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_2\,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_1\,
      S(2) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_0\,
      S(1) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
\PERBIT_GEN[4].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => twph_cnt(4),
      I1 => twph_cnt_en,
      O => S
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555554"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5\,
      I1 => \^perbit_gen[2].ff_rst0_gen.fdre_i1_0\,
      I2 => twph_cnt(4),
      I3 => \^perbit_gen[3].ff_rst0_gen.fdre_i1_0\,
      I4 => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      I5 => \^perbit_gen[0].ff_rst0_gen.fdre_i1_0\(0),
      O => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized3\ is
  port (
    twr_rec_cnt : out STD_LOGIC_VECTOR ( 0 to 15 );
    \FSM_sequential_crnt_state_reg[3]\ : out STD_LOGIC;
    twr_rec_cnt_en_int : in STD_LOGIC;
    S : in STD_LOGIC;
    \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17\ : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized3\ : entity is "ld_arith_reg";
end \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized3\;

architecture STRUCTURE of \AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized3\ is
  signal \PERBIT_GEN[15].MULT_AND_i1_i_3_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[15].MULT_AND_i1_i_4_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[15].MULT_AND_i1_i_5_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[15].MULT_AND_i1_i_6_n_0\ : STD_LOGIC;
  signal cry : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal gen_cry_kill_n_0 : STD_LOGIC;
  signal gen_cry_kill_n_10 : STD_LOGIC;
  signal gen_cry_kill_n_11 : STD_LOGIC;
  signal gen_cry_kill_n_12 : STD_LOGIC;
  signal gen_cry_kill_n_13 : STD_LOGIC;
  signal gen_cry_kill_n_14 : STD_LOGIC;
  signal gen_cry_kill_n_2 : STD_LOGIC;
  signal gen_cry_kill_n_3 : STD_LOGIC;
  signal gen_cry_kill_n_4 : STD_LOGIC;
  signal gen_cry_kill_n_5 : STD_LOGIC;
  signal gen_cry_kill_n_6 : STD_LOGIC;
  signal gen_cry_kill_n_7 : STD_LOGIC;
  signal gen_cry_kill_n_8 : STD_LOGIC;
  signal gen_cry_kill_n_9 : STD_LOGIC;
  signal \^twr_rec_cnt\ : STD_LOGIC_VECTOR ( 0 to 15 );
  signal xorcy_out_0 : STD_LOGIC;
  signal xorcy_out_1 : STD_LOGIC;
  signal xorcy_out_10 : STD_LOGIC;
  signal xorcy_out_11 : STD_LOGIC;
  signal xorcy_out_12 : STD_LOGIC;
  signal xorcy_out_13 : STD_LOGIC;
  signal xorcy_out_14 : STD_LOGIC;
  signal xorcy_out_15 : STD_LOGIC;
  signal xorcy_out_2 : STD_LOGIC;
  signal xorcy_out_3 : STD_LOGIC;
  signal xorcy_out_4 : STD_LOGIC;
  signal xorcy_out_5 : STD_LOGIC;
  signal xorcy_out_6 : STD_LOGIC;
  signal xorcy_out_7 : STD_LOGIC;
  signal xorcy_out_8 : STD_LOGIC;
  signal xorcy_out_9 : STD_LOGIC;
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[10].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[10].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[10].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[11].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[11].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[11].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[11].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \PERBIT_GEN[11].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[11].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[12].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[12].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[12].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[13].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[13].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[13].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[15].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[15].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[15].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[15].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[15].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[15].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[5].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[5].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[5].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[6].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[6].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[6].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[7].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[7].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[8].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[8].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[8].MULT_AND_i1\ : label is "LO:O";
  attribute BOX_TYPE of \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \PERBIT_GEN[9].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[9].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[9].MULT_AND_i1\ : label is "LO:O";
begin
  twr_rec_cnt(0 to 15) <= \^twr_rec_cnt\(0 to 15);
\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_15,
      Q => \^twr_rec_cnt\(0),
      S => bus2ip_reset
    );
\PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_5,
      Q => \^twr_rec_cnt\(10),
      S => bus2ip_reset
    );
\PERBIT_GEN[10].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(10),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_5
    );
\PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_4,
      Q => \^twr_rec_cnt\(11),
      S => bus2ip_reset
    );
\PERBIT_GEN[11].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(11),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_4
    );
\PERBIT_GEN[11].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(4),
      CO(3 downto 0) => cry(8 downto 5),
      CYINIT => '0',
      DI(3) => gen_cry_kill_n_7,
      DI(2) => gen_cry_kill_n_6,
      DI(1) => gen_cry_kill_n_5,
      DI(0) => gen_cry_kill_n_4,
      O(3) => xorcy_out_7,
      O(2) => xorcy_out_6,
      O(1) => xorcy_out_5,
      O(0) => xorcy_out_4,
      S(3) => \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_3,
      Q => \^twr_rec_cnt\(12),
      S => bus2ip_reset
    );
\PERBIT_GEN[12].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(12),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_3
    );
\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_2,
      Q => \^twr_rec_cnt\(13),
      S => bus2ip_reset
    );
\PERBIT_GEN[13].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(13),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_2
    );
\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_1,
      Q => \^twr_rec_cnt\(14),
      S => bus2ip_reset
    );
\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_0,
      Q => \^twr_rec_cnt\(15),
      S => bus2ip_reset
    );
\PERBIT_GEN[15].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(15),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_0
    );
\PERBIT_GEN[15].MULT_AND_i1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => Q(0),
      I1 => \PERBIT_GEN[15].MULT_AND_i1_i_3_n_0\,
      I2 => \PERBIT_GEN[15].MULT_AND_i1_i_4_n_0\,
      I3 => \PERBIT_GEN[15].MULT_AND_i1_i_5_n_0\,
      I4 => \PERBIT_GEN[15].MULT_AND_i1_i_6_n_0\,
      O => \FSM_sequential_crnt_state_reg[3]\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^twr_rec_cnt\(6),
      I1 => \^twr_rec_cnt\(15),
      I2 => \^twr_rec_cnt\(5),
      I3 => \^twr_rec_cnt\(9),
      O => \PERBIT_GEN[15].MULT_AND_i1_i_3_n_0\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^twr_rec_cnt\(2),
      I1 => \^twr_rec_cnt\(12),
      I2 => \^twr_rec_cnt\(13),
      I3 => \^twr_rec_cnt\(8),
      O => \PERBIT_GEN[15].MULT_AND_i1_i_4_n_0\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^twr_rec_cnt\(1),
      I1 => \^twr_rec_cnt\(14),
      I2 => \^twr_rec_cnt\(3),
      I3 => \^twr_rec_cnt\(11),
      O => \PERBIT_GEN[15].MULT_AND_i1_i_5_n_0\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^twr_rec_cnt\(4),
      I1 => \^twr_rec_cnt\(10),
      I2 => \^twr_rec_cnt\(7),
      I3 => \^twr_rec_cnt\(0),
      O => \PERBIT_GEN[15].MULT_AND_i1_i_6_n_0\
    );
\PERBIT_GEN[15].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => cry(4 downto 1),
      CYINIT => twr_rec_cnt_en_int,
      DI(3) => gen_cry_kill_n_3,
      DI(2) => gen_cry_kill_n_2,
      DI(1) => \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0\,
      DI(0) => gen_cry_kill_n_0,
      O(3) => xorcy_out_3,
      O(2) => xorcy_out_2,
      O(1) => xorcy_out_1,
      O(0) => xorcy_out_0,
      S(3) => \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => S
    );
\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_14,
      Q => \^twr_rec_cnt\(1),
      S => bus2ip_reset
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(1),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_14
    );
\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_13,
      Q => \^twr_rec_cnt\(2),
      S => bus2ip_reset
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(2),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_13
    );
\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_12,
      Q => \^twr_rec_cnt\(3),
      S => bus2ip_reset
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(3),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_12
    );
\PERBIT_GEN[3].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(12),
      CO(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\(3),
      CO(2 downto 0) => cry(15 downto 13),
      CYINIT => '0',
      DI(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => gen_cry_kill_n_14,
      DI(1) => gen_cry_kill_n_13,
      DI(0) => gen_cry_kill_n_12,
      O(3) => xorcy_out_15,
      O(2) => xorcy_out_14,
      O(1) => xorcy_out_13,
      O(0) => xorcy_out_12,
      S(3) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17\,
      S(2) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16\,
      S(1) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15\,
      S(0) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_11,
      Q => \^twr_rec_cnt\(4),
      S => bus2ip_reset
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(4),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_11
    );
\PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_10,
      Q => \^twr_rec_cnt\(5),
      S => bus2ip_reset
    );
\PERBIT_GEN[5].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(5),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_10
    );
\PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_9,
      Q => \^twr_rec_cnt\(6),
      S => bus2ip_reset
    );
\PERBIT_GEN[6].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(6),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_9
    );
\PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_8,
      Q => \^twr_rec_cnt\(7),
      S => bus2ip_reset
    );
\PERBIT_GEN[7].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(7),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_8
    );
\PERBIT_GEN[7].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => cry(8),
      CO(3 downto 0) => cry(12 downto 9),
      CYINIT => '0',
      DI(3) => gen_cry_kill_n_11,
      DI(2) => gen_cry_kill_n_10,
      DI(1) => gen_cry_kill_n_9,
      DI(0) => gen_cry_kill_n_8,
      O(3) => xorcy_out_11,
      O(2) => xorcy_out_10,
      O(1) => xorcy_out_9,
      O(0) => xorcy_out_8,
      S(3) => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_7,
      Q => \^twr_rec_cnt\(8),
      S => bus2ip_reset
    );
\PERBIT_GEN[8].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(8),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_7
    );
\PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => twr_rec_cnt_en_int,
      D => xorcy_out_6,
      Q => \^twr_rec_cnt\(9),
      S => bus2ip_reset
    );
\PERBIT_GEN[9].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twr_rec_cnt\(9),
      I1 => twr_rec_cnt_en_int,
      O => gen_cry_kill_n_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_mem_state_machine is
  port (
    Bus2IP_Mem_CS_d1_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_data_en : out STD_LOGIC;
    read_data_en_cmb : out STD_LOGIC;
    read_ack : out STD_LOGIC;
    transaction_done_i : out STD_LOGIC;
    s_axi_mem_arburst_0_sp_1 : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_crnt_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_0\ : out STD_LOGIC;
    tpacc_cnt_en : out STD_LOGIC;
    \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[4]_0\ : out STD_LOGIC;
    S : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    s_axi_mem_awburst_0_sp_1 : out STD_LOGIC;
    s_axi_mem_awvalid_0 : out STD_LOGIC;
    s_axi_mem_arburst_1_sp_1 : out STD_LOGIC;
    CE : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_crnt_state_reg[0]_0\ : out STD_LOGIC;
    data_strobe_c : out STD_LOGIC;
    CE_0 : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_1\ : out STD_LOGIC;
    CE_1 : out STD_LOGIC;
    twph_cnt_en : out STD_LOGIC;
    CE_2 : out STD_LOGIC;
    twr_cnt_en : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_1\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_3\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_4\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_5\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_2\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_3\ : out STD_LOGIC;
    CE_6 : out STD_LOGIC;
    trd_cnt_en : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_1\ : out STD_LOGIC;
    CE_11 : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_2\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_3\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_4\ : out STD_LOGIC;
    mem_CEN_cmb : out STD_LOGIC;
    mem_ce_int : out STD_LOGIC;
    mem_OEN_cmb : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_12\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_13\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_14\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_4\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[4]_1\ : out STD_LOGIC;
    CE_15 : out STD_LOGIC;
    mem_dqt_t_d_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_qwen_int : out STD_LOGIC;
    mem_WEN_cmb : out STD_LOGIC;
    mem_RNW_cmb : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_17\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_18\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_19\ : out STD_LOGIC;
    twr_rec_cnt_en_int : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[2]_1\ : out STD_LOGIC;
    bus2ip_burst_reg_reg : out STD_LOGIC;
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\ : out STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    read_ack_reg_reg_0 : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    \bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\ : in STD_LOGIC;
    \mem_a_int_reg[0]\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    Bus2IP_RdReq_emc : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\ : in STD_LOGIC;
    \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    twr_rec_cnt : in STD_LOGIC_VECTOR ( 0 to 15 );
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_emc_addr_ps_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_5\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_6\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_7\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_2\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_3\ : in STD_LOGIC;
    transaction_done_reg_reg_0 : in STD_LOGIC;
    \DATA_STORE_GEN[0].WRDATA_REG\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ : in STD_LOGIC;
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    rw_flag_reg : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pend_wrreq_reg : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_5\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[4]_2\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps[0]_i_2\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps[0]_i_2_0\ : in STD_LOGIC;
    pend_wrreq_reg_0 : in STD_LOGIC;
    pend_wrreq_reg_1 : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\ : in STD_LOGIC;
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ : in STD_LOGIC;
    read_data_en_reg_reg_0 : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_4\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_6\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_7\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[2]_2\ : in STD_LOGIC;
    pend_rdreq_reg : in STD_LOGIC;
    \PERBIT_GEN[7].MULT_AND_i1_i_3_0\ : in STD_LOGIC;
    rdce_out_i : in STD_LOGIC;
    \PERBIT_GEN[7].MULT_AND_i1_i_3_1\ : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_1\ : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_2\ : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_3\ : in STD_LOGIC;
    pend_rdreq : in STD_LOGIC;
    read_data_en_reg_reg_1 : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_wlast : in STD_LOGIC;
    wlast_reg_reg_0 : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\ : in STD_LOGIC;
    mem_dqt_t_d : in STD_LOGIC;
    mem_ben_int : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bus2ip_burst : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_4\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_mem_state_machine : entity is "mem_state_machine";
end AXI_bd_0_axi_emc_0_0_mem_state_machine;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_mem_state_machine is
  signal \^bus2ip_mem_cs_d1_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Bus2IP_RdReq_d1 : STD_LOGIC;
  signal \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_crnt_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[1]_1\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[1]_3\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[2]_0\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[3]_0\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[3]_1\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[3]_2\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[3]_3\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[3]_4\ : STD_LOGIC;
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1\ : STD_LOGIC;
  signal \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_4_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_5_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].MULT_AND_i1_i_3_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].MUXCY_i1_i_5_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].MUXCY_i1_i_7_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].MUXCY_i1_i_8_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].MULT_AND_i1_i_4_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MULT_AND_i1_i_11_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MULT_AND_i1_i_14_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MULT_AND_i1_i_7_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MULT_AND_i1_i_8_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MULT_AND_i1_i_9_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_8_n_0\ : STD_LOGIC;
  signal \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9_n_0\ : STD_LOGIC;
  signal \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2_n_0\ : STD_LOGIC;
  signal \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\ : STD_LOGIC;
  signal \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[31]_i_4_n_0\ : STD_LOGIC;
  signal crnt_state : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \mem_ce_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_ce_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \mem_ce_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \mem_oen_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_oen_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \mem_oen_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \mem_oen_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal new_page : STD_LOGIC;
  signal new_page_d1 : STD_LOGIC;
  signal new_page_d1_i_3_n_0 : STD_LOGIC;
  signal new_page_d1_i_4_n_0 : STD_LOGIC;
  signal new_page_d1_i_5_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal read_break_reg : STD_LOGIC;
  signal read_break_reg_d1 : STD_LOGIC;
  signal read_complete_cmb : STD_LOGIC;
  signal read_complete_d_4 : STD_LOGIC;
  signal read_complete_d_5 : STD_LOGIC;
  signal read_complete_d_6 : STD_LOGIC;
  signal \^read_data_en_cmb\ : STD_LOGIC;
  signal s_axi_mem_arburst_0_sn_1 : STD_LOGIC;
  signal s_axi_mem_arburst_1_sn_1 : STD_LOGIC;
  signal s_axi_mem_awburst_0_sn_1 : STD_LOGIC;
  signal \^s_axi_mem_awvalid_0\ : STD_LOGIC;
  signal s_axi_mem_wready_INST_0_i_3_n_0 : STD_LOGIC;
  signal \^tpacc_cnt_en\ : STD_LOGIC;
  signal transaction_complete : STD_LOGIC;
  signal transaction_complete_reg : STD_LOGIC;
  signal transaction_done_cmb : STD_LOGIC;
  signal \^transaction_done_i\ : STD_LOGIC;
  signal transaction_done_reg_i_2_n_0 : STD_LOGIC;
  signal \^trd_cnt_en\ : STD_LOGIC;
  signal \^twph_cnt_en\ : STD_LOGIC;
  signal \^twr_cnt_en\ : STD_LOGIC;
  signal wlast : STD_LOGIC;
  signal wlast_reg : STD_LOGIC;
  signal wlast_reg_i_2_n_0 : STD_LOGIC;
  signal wlast_reg_i_3_n_0 : STD_LOGIC;
  signal wlast_reg_i_4_n_0 : STD_LOGIC;
  signal wlast_reg_i_6_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_7\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_6\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[0]_i_9\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[1]_i_12\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[1]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[1]_i_4\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[2]_i_5\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[2]_i_6\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[2]_i_7\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[3]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[4]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \FSM_sequential_crnt_state[4]_i_3\ : label is "soft_lutpair80";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[0]\ : label is "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[1]\ : label is "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[2]\ : label is "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[3]\ : label is "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_crnt_state_reg[4]\ : label is "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111";
  attribute SOFT_HLUTNM of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_5\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \PERBIT_GEN[1].MUXCY_i1_i_7\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \PERBIT_GEN[1].MUXCY_i1_i_8\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].MULT_AND_i1_i_13\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].MULT_AND_i1_i_14\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].MULT_AND_i1_i_8\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \PERBIT_GEN[7].MULT_AND_i1_i_9\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_8\ : label is "soft_lutpair79";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ : label is "FDR";
  attribute SOFT_HLUTNM of \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2\ : label is "soft_lutpair83";
  attribute BOX_TYPE of \READ_COMPLETE_PIPE_GEN[1].READ_COMPLETE_PIPE\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \READ_COMPLETE_PIPE_GEN[1].READ_COMPLETE_PIPE\ : label is "FDR";
  attribute BOX_TYPE of \READ_COMPLETE_PIPE_GEN[2].READ_COMPLETE_PIPE\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \READ_COMPLETE_PIPE_GEN[2].READ_COMPLETE_PIPE\ : label is "FDR";
  attribute SOFT_HLUTNM of \mem_ce_reg[0]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mem_ce_reg[0]_i_4\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of mem_dqt_t_d_i_1 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \mem_oen_reg[0]_i_4\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \mem_oen_reg[0]_i_5\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of mem_rnw_reg_i_1 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of new_page_d1_i_3 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of new_page_d1_i_4 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of new_page_d1_i_5 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of s_axi_mem_arready_INST_0_i_2 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of s_axi_mem_wready_INST_0_i_3 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of transaction_done_reg_i_2 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of wlast_reg_i_3 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of wlast_reg_i_4 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of wlast_reg_i_6 : label is "soft_lutpair77";
begin
  Bus2IP_Mem_CS_d1_reg_0(0) <= \^bus2ip_mem_cs_d1_reg_0\(0);
  \FSM_sequential_crnt_state_reg[1]_0\ <= \^fsm_sequential_crnt_state_reg[1]_0\;
  \FSM_sequential_crnt_state_reg[1]_1\ <= \^fsm_sequential_crnt_state_reg[1]_1\;
  \FSM_sequential_crnt_state_reg[1]_3\ <= \^fsm_sequential_crnt_state_reg[1]_3\;
  \FSM_sequential_crnt_state_reg[2]_0\ <= \^fsm_sequential_crnt_state_reg[2]_0\;
  \FSM_sequential_crnt_state_reg[3]_0\ <= \^fsm_sequential_crnt_state_reg[3]_0\;
  \FSM_sequential_crnt_state_reg[3]_1\ <= \^fsm_sequential_crnt_state_reg[3]_1\;
  \FSM_sequential_crnt_state_reg[3]_2\ <= \^fsm_sequential_crnt_state_reg[3]_2\;
  \FSM_sequential_crnt_state_reg[3]_3\ <= \^fsm_sequential_crnt_state_reg[3]_3\;
  \FSM_sequential_crnt_state_reg[3]_4\ <= \^fsm_sequential_crnt_state_reg[3]_4\;
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1\;
  Q(2 downto 0) <= \^q\(2 downto 0);
  read_data_en_cmb <= \^read_data_en_cmb\;
  s_axi_mem_arburst_0_sp_1 <= s_axi_mem_arburst_0_sn_1;
  s_axi_mem_arburst_1_sp_1 <= s_axi_mem_arburst_1_sn_1;
  s_axi_mem_awburst_0_sp_1 <= s_axi_mem_awburst_0_sn_1;
  s_axi_mem_awvalid_0 <= \^s_axi_mem_awvalid_0\;
  tpacc_cnt_en <= \^tpacc_cnt_en\;
  transaction_done_i <= \^transaction_done_i\;
  trd_cnt_en <= \^trd_cnt_en\;
  twph_cnt_en <= \^twph_cnt_en\;
  twr_cnt_en <= \^twr_cnt_en\;
\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAA8AAA8AAAA"
    )
        port map (
      I0 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0\,
      I1 => \DATA_STORE_GEN[0].WRDATA_REG\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => crnt_state(2),
      I5 => \^q\(2),
      O => data_strobe_c
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA02AAAA"
    )
        port map (
      I0 => \bus2ip_addr_i[31]_i_4_n_0\,
      I1 => s_axi_mem_arburst(1),
      I2 => s_axi_mem_arburst(0),
      I3 => \bus2ip_addr_i_reg[12]\,
      I4 => \^fsm_sequential_crnt_state_reg[2]_0\,
      O => s_axi_mem_arburst_1_sn_1
    );
Bus2IP_Mem_CS_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => temp_bus2ip_cs,
      Q => \^bus2ip_mem_cs_d1_reg_0\(0),
      R => bus2ip_reset
    );
Bus2IP_Mem_CS_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bus2ip_mem_cs_d1_reg_0\(0),
      Q => p_0_in(1),
      R => bus2ip_reset
    );
Bus2IP_RdReq_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2Mem_RdReq,
      Q => Bus2IP_RdReq_d1,
      R => bus2ip_reset
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033101033331111"
    )
        port map (
      I0 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_1\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6_n_0\,
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_7_n_0\,
      I3 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_2\,
      I4 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\,
      I5 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_3\,
      O => \^perbit_gen[0].ff_rst0_gen.fdre_i1\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555D555DFFFF555D"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst0_gen.fdre_i1\,
      I1 => \PERBIT_GEN[1].MULT_AND_i1_i_3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => bus2Mem_RdReq,
      I5 => \^fsm_sequential_crnt_state_reg[3]_4\,
      O => \^fsm_sequential_crnt_state_reg[3]_3\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000337"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\,
      I1 => crnt_state(2),
      I2 => crnt_state(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_6_n_0\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => crnt_state(4),
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_7_n_0\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FE0"
    )
        port map (
      I0 => \^perbit_gen[0].ff_rst0_gen.fdre_i1\,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_4\,
      I2 => \^fsm_sequential_crnt_state_reg[3]_3\,
      I3 => D(0),
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\
    );
\FSM_sequential_crnt_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA20000"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_crnt_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_crnt_state_reg[0]_2\,
      I3 => \FSM_sequential_crnt_state_reg[0]_3\,
      I4 => \FSM_sequential_crnt_state[0]_i_6_n_0\,
      I5 => \FSM_sequential_crnt_state[0]_i_7_n_0\,
      O => \FSM_sequential_crnt_state[0]_i_1_n_0\
    );
\FSM_sequential_crnt_state[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^q\(1),
      O => \FSM_sequential_crnt_state_reg[2]_1\
    );
\FSM_sequential_crnt_state[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004444F000"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[4]_2\,
      I1 => \^q\(1),
      I2 => \mem_a_int_reg[0]\,
      I3 => temp_bus2ip_cs,
      I4 => \^q\(0),
      I5 => crnt_state(2),
      O => \FSM_sequential_crnt_state_reg[1]_4\
    );
\FSM_sequential_crnt_state[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002300"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      I1 => bus2Mem_RdReq,
      I2 => \^q\(0),
      I3 => \mem_oen_reg[0]_i_4_n_0\,
      I4 => \^q\(1),
      I5 => \FSM_sequential_crnt_state[0]_i_17_n_0\,
      O => \FSM_sequential_crnt_state[0]_i_16_n_0\
    );
\FSM_sequential_crnt_state[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A30FF302A302A30"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0\,
      I1 => crnt_state(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => read_complete_d_4,
      I5 => crnt_state(4),
      O => \FSM_sequential_crnt_state[0]_i_17_n_0\
    );
\FSM_sequential_crnt_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \FSM_sequential_crnt_state[0]_i_2_n_0\
    );
\FSM_sequential_crnt_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBABBBBB"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[0]_i_8_n_0\,
      I1 => transaction_complete_reg,
      I2 => p_0_in(1),
      I3 => \^bus2ip_mem_cs_d1_reg_0\(0),
      I4 => \FSM_sequential_crnt_state[0]_i_9_n_0\,
      O => \FSM_sequential_crnt_state[0]_i_3_n_0\
    );
\FSM_sequential_crnt_state[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(2),
      O => \FSM_sequential_crnt_state[0]_i_6_n_0\
    );
\FSM_sequential_crnt_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => read_data_en_reg_reg_0,
      I3 => \^q\(2),
      I4 => \FSM_sequential_crnt_state_reg[0]_4\,
      I5 => \FSM_sequential_crnt_state[0]_i_16_n_0\,
      O => \FSM_sequential_crnt_state[0]_i_7_n_0\
    );
\FSM_sequential_crnt_state[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0C2"
    )
        port map (
      I0 => transaction_done_reg_reg_0,
      I1 => \^q\(1),
      I2 => crnt_state(4),
      I3 => \^q\(2),
      I4 => crnt_state(2),
      I5 => \^q\(0),
      O => \FSM_sequential_crnt_state[0]_i_8_n_0\
    );
\FSM_sequential_crnt_state[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10041002"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => crnt_state(2),
      I4 => \^q\(1),
      O => \FSM_sequential_crnt_state[0]_i_9_n_0\
    );
\FSM_sequential_crnt_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD0FF00FFD0FFFF"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_crnt_state_reg[1]_5\,
      I2 => crnt_state(2),
      I3 => \FSM_sequential_crnt_state[1]_i_4_n_0\,
      I4 => \^q\(2),
      I5 => \FSM_sequential_crnt_state[1]_i_5_n_0\,
      O => \FSM_sequential_crnt_state[1]_i_1_n_0\
    );
\FSM_sequential_crnt_state[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => crnt_state(2),
      I1 => crnt_state(4),
      I2 => \FSM_sequential_crnt_state_reg[4]_2\,
      I3 => \^q\(1),
      O => \FSM_sequential_crnt_state[1]_i_12_n_0\
    );
\FSM_sequential_crnt_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \mem_ce_reg[0]_i_4_n_0\,
      I4 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0\,
      O => \FSM_sequential_crnt_state[1]_i_2_n_0\
    );
\FSM_sequential_crnt_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1100F100"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^q\(0),
      I2 => crnt_state(4),
      I3 => \^q\(1),
      I4 => read_complete_d_4,
      O => \FSM_sequential_crnt_state[1]_i_4_n_0\
    );
\FSM_sequential_crnt_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => crnt_state(2),
      I2 => \^q\(0),
      I3 => \FSM_sequential_crnt_state_reg[1]_6\,
      I4 => \FSM_sequential_crnt_state_reg[1]_7\,
      I5 => \FSM_sequential_crnt_state[1]_i_9_n_0\,
      O => \FSM_sequential_crnt_state[1]_i_5_n_0\
    );
\FSM_sequential_crnt_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4757475745554444"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[1]_i_12_n_0\,
      I1 => \^q\(0),
      I2 => \mem_a_int_reg[0]\,
      I3 => temp_bus2ip_cs,
      I4 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\,
      I5 => \^q\(1),
      O => \FSM_sequential_crnt_state[1]_i_9_n_0\
    );
\FSM_sequential_crnt_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA00EA00EA00EAEA"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_crnt_state[4]_i_2_n_0\,
      I2 => crnt_state(2),
      I3 => \FSM_sequential_crnt_state[2]_i_3_n_0\,
      I4 => s_axi_mem_wvalid,
      I5 => wlast,
      O => \FSM_sequential_crnt_state[2]_i_1_n_0\
    );
\FSM_sequential_crnt_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF8A008A"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \FSM_sequential_crnt_state_reg[2]_2\,
      I2 => \FSM_sequential_crnt_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_crnt_state[2]_i_6_n_0\,
      I4 => \FSM_sequential_crnt_state[2]_i_7_n_0\,
      I5 => crnt_state(4),
      O => \FSM_sequential_crnt_state[2]_i_2_n_0\
    );
\FSM_sequential_crnt_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \FSM_sequential_crnt_state[4]_i_2_n_0\,
      I4 => crnt_state(2),
      I5 => \^q\(1),
      O => \FSM_sequential_crnt_state[2]_i_3_n_0\
    );
\FSM_sequential_crnt_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"31111111"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => s_axi_mem_wvalid,
      I3 => pend_wrreq_reg,
      I4 => bus2ip_wrreq_i,
      O => \FSM_sequential_crnt_state[2]_i_5_n_0\
    );
\FSM_sequential_crnt_state[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F010F0"
    )
        port map (
      I0 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\,
      I1 => crnt_state(2),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => \FSM_sequential_crnt_state[2]_i_6_n_0\
    );
\FSM_sequential_crnt_state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FA0300"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[4]_2\,
      I1 => \mem_a_int_reg[0]\,
      I2 => \^q\(2),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      O => \FSM_sequential_crnt_state[2]_i_7_n_0\
    );
\FSM_sequential_crnt_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => \^fsm_sequential_crnt_state_reg[1]_0\,
      I1 => crnt_state(4),
      I2 => \^q\(2),
      I3 => \FSM_sequential_crnt_state[3]_i_3_n_0\,
      I4 => \FSM_sequential_crnt_state[3]_i_4_n_0\,
      I5 => \FSM_sequential_crnt_state[3]_i_5_n_0\,
      O => \FSM_sequential_crnt_state[3]_i_1_n_0\
    );
\FSM_sequential_crnt_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \^fsm_sequential_crnt_state_reg[1]_0\
    );
\FSM_sequential_crnt_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4045405540554055"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \mem_a_int_reg[0]\,
      I2 => temp_bus2ip_cs,
      I3 => \^q\(2),
      I4 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\,
      I5 => bus2Mem_RdReq,
      O => \FSM_sequential_crnt_state[3]_i_3_n_0\
    );
\FSM_sequential_crnt_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57555755FFFF5755"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \FSM_sequential_crnt_state_reg[3]_5\,
      I2 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      I3 => \^q\(2),
      I4 => \FSM_sequential_crnt_state_reg[3]_6\,
      I5 => \FSM_sequential_crnt_state_reg[3]_7\,
      O => \FSM_sequential_crnt_state[3]_i_4_n_0\
    );
\FSM_sequential_crnt_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FEFFFCEEAA0000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(2),
      I2 => \FSM_sequential_crnt_state[4]_i_2_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \FSM_sequential_crnt_state[3]_i_5_n_0\
    );
\FSM_sequential_crnt_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABAAAAABABAABAA"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[4]_i_2_n_0\,
      I1 => \FSM_sequential_crnt_state[4]_i_3_n_0\,
      I2 => crnt_state(2),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \FSM_sequential_crnt_state_reg[4]_2\,
      O => \FSM_sequential_crnt_state[4]_i_1_n_0\
    );
\FSM_sequential_crnt_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => crnt_state(4),
      I1 => read_complete_d_4,
      O => \FSM_sequential_crnt_state[4]_i_2_n_0\
    );
\FSM_sequential_crnt_state[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F3F2FFF"
    )
        port map (
      I0 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => crnt_state(4),
      I4 => crnt_state(2),
      O => \FSM_sequential_crnt_state[4]_i_3_n_0\
    );
\FSM_sequential_crnt_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => bus2ip_reset
    );
\FSM_sequential_crnt_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[1]_i_1_n_0\,
      Q => \^q\(1),
      R => bus2ip_reset
    );
\FSM_sequential_crnt_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[2]_i_1_n_0\,
      Q => crnt_state(2),
      R => bus2ip_reset
    );
\FSM_sequential_crnt_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[3]_i_1_n_0\,
      Q => \^q\(2),
      R => bus2ip_reset
    );
\FSM_sequential_crnt_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_crnt_state[4]_i_1_n_0\,
      Q => crnt_state(4),
      R => bus2ip_reset
    );
\FSM_sequential_emc_addr_ps[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0057"
    )
        port map (
      I0 => \^s_axi_mem_awvalid_0\,
      I1 => s_axi_mem_awburst(0),
      I2 => s_axi_mem_awburst(1),
      I3 => \FSM_sequential_emc_addr_ps_reg[0]\,
      I4 => s_axi_mem_arburst_0_sn_1,
      I5 => \FSM_sequential_emc_addr_ps_reg[0]_0\,
      O => s_axi_mem_awburst_0_sn_1
    );
\FSM_sequential_emc_addr_ps[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888A8888888888"
    )
        port map (
      I0 => s_axi_mem_wready_INST_0_i_3_n_0,
      I1 => \FSM_sequential_emc_addr_ps[0]_i_2\,
      I2 => \FSM_sequential_emc_addr_ps[0]_i_2_0\,
      I3 => \^q\(1),
      I4 => pend_wrreq_reg_0,
      I5 => \mem_a_int_reg[0]\,
      O => \FSM_sequential_crnt_state_reg[1]_2\
    );
\PERBIT_GEN[0].XORCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twph_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\(3),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_5\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(3),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tpacc_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\(3),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_14\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\(3),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_19\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(0),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[10].MUXCY_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(10),
      O => \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[11].MUXCY_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(11),
      O => \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[12].MUXCY_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(12),
      O => \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[13].MUXCY_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(13),
      O => \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[14].MUXCY_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(14),
      O => \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[14].MUXCY_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(14),
      O => \FSM_sequential_crnt_state_reg[4]_0\
    );
\PERBIT_GEN[15].MULT_AND_i1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      O => twr_rec_cnt_en_int
    );
\PERBIT_GEN[15].MUXCY_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(15),
      O => S
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF337F0000"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^fsm_sequential_crnt_state_reg[1]_0\,
      I2 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\,
      I3 => \^q\(2),
      I4 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0\,
      I5 => \^fsm_sequential_crnt_state_reg[1]_1\,
      O => CE_0
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F80FFFF"
    )
        port map (
      I0 => bus2Mem_RdReq,
      I1 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\,
      I2 => \^q\(2),
      I3 => \mem_a_int_reg[0]\,
      I4 => \FSM_sequential_crnt_state[0]_i_2_n_0\,
      I5 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_4_n_0\,
      O => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_3_n_0\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7F00"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      I1 => bus2Mem_RdReq,
      I2 => \PERBIT_GEN[7].MULT_AND_i1_i_14_n_0\,
      I3 => \^q\(0),
      I4 => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_5_n_0\,
      I5 => crnt_state(4),
      O => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_4_n_0\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => crnt_state(2),
      O => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_i_5_n_0\
    );
\PERBIT_GEN[1].MULT_AND_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FAFA00FAFAFAFA"
    )
        port map (
      I0 => \^fsm_sequential_crnt_state_reg[3]_2\,
      I1 => read_data_en_reg_reg_0,
      I2 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \PERBIT_GEN[1].MULT_AND_i1_i_3_n_0\,
      O => \^fsm_sequential_crnt_state_reg[3]_4\
    );
\PERBIT_GEN[1].MULT_AND_i1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040400000400"
    )
        port map (
      I0 => \^q\(0),
      I1 => crnt_state(2),
      I2 => crnt_state(4),
      I3 => \FSM_sequential_crnt_state_reg[3]_5\,
      I4 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      I5 => \^q\(2),
      O => \PERBIT_GEN[1].MULT_AND_i1_i_3_n_0\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twph_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\(2),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_4\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(2),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tpacc_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\(2),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_13\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\(2),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_18\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(1),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].MUXCY_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888A88888"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\,
      I1 => \PERBIT_GEN[1].MUXCY_i1_i_5_n_0\,
      I2 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4\,
      I3 => \^q\(1),
      I4 => \PERBIT_GEN[1].MUXCY_i1_i_7_n_0\,
      I5 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      O => \^fsm_sequential_crnt_state_reg[1]_1\
    );
\PERBIT_GEN[1].MUXCY_i1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000050000000044"
    )
        port map (
      I0 => \PERBIT_GEN[1].MUXCY_i1_i_8_n_0\,
      I1 => \FSM_sequential_crnt_state_reg[3]_5\,
      I2 => read_data_en_reg_reg_0,
      I3 => \^q\(1),
      I4 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      I5 => \^q\(2),
      O => \PERBIT_GEN[1].MUXCY_i1_i_5_n_0\
    );
\PERBIT_GEN[1].MUXCY_i1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^q\(2),
      I2 => crnt_state(4),
      O => \PERBIT_GEN[1].MUXCY_i1_i_7_n_0\
    );
\PERBIT_GEN[1].MUXCY_i1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => crnt_state(4),
      I1 => crnt_state(2),
      I2 => \^q\(0),
      O => \PERBIT_GEN[1].MUXCY_i1_i_8_n_0\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twph_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\(1),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_3\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(1),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tpacc_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\(1),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_12\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\(1),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_17\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(2),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(0),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\(0),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(3),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].MUXCY_i1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^twph_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\(0),
      O => \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\
    );
\PERBIT_GEN[3].MUXCY_i1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^tpacc_cnt_en\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\(0),
      O => \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555755"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => crnt_state(2),
      I5 => crnt_state(4),
      O => CE
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0\,
      I1 => \^twph_cnt_en\,
      O => CE_1
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => crnt_state(4),
      I1 => read_complete_d_4,
      I2 => wlast_reg_i_4_n_0,
      I3 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\,
      O => CE_15
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^twr_cnt_en\,
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0\,
      O => CE_2
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBBA"
    )
        port map (
      I0 => \^trd_cnt_en\,
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0_n_0\,
      I2 => \^q\(0),
      I3 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0_n_0\,
      O => CE_6
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FCF0FCFFFCF0FC"
    )
        port map (
      I0 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1_n_0\,
      I1 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1_n_0\,
      I2 => \^tpacc_cnt_en\,
      I3 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      I4 => bus2Mem_RdReq,
      I5 => \^fsm_sequential_crnt_state_reg[3]_2\,
      O => CE_11
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => crnt_state(2),
      I2 => temp_bus2ip_cs,
      I3 => \mem_a_int_reg[0]\,
      I4 => \^fsm_sequential_crnt_state_reg[3]_1\,
      I5 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3_n_0\,
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBFFFFBABBBABB"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(2),
      I2 => \mem_a_int_reg[0]\,
      I3 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\,
      I4 => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0\,
      I5 => \^q\(0),
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA00000AA8"
    )
        port map (
      I0 => new_page_d1,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => crnt_state(2),
      I4 => crnt_state(4),
      I5 => \^q\(1),
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[3]_5\,
      I1 => crnt_state(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \FSM_sequential_crnt_state[0]_i_6_n_0\,
      I5 => \FSM_sequential_crnt_state_reg[1]_6\,
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000011111111"
    )
        port map (
      I0 => \^q\(1),
      I1 => crnt_state(2),
      I2 => new_page_d1,
      I3 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\,
      I4 => bus2Mem_RdReq,
      I5 => \^q\(2),
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(2),
      I2 => crnt_state(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => read_data_en_reg_reg_0,
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1_n_0\
    );
\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000800080"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\,
      I1 => crnt_state(2),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => bus2Mem_RdReq,
      I5 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      O => \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5_n_0\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000008FFFFF"
    )
        port map (
      I0 => pend_wrreq_reg,
      I1 => bus2ip_wrreq_i,
      I2 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      I3 => \FSM_sequential_crnt_state_reg[3]_5\,
      I4 => crnt_state(2),
      I5 => \PERBIT_GEN[4].MULT_AND_i1_i_4_n_0\,
      O => \^twph_cnt_en\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000030002000200"
    )
        port map (
      I0 => bus2Mem_RdReq,
      I1 => \^q\(1),
      I2 => crnt_state(4),
      I3 => \mem_oen_reg[0]_i_4_n_0\,
      I4 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\,
      I5 => \^q\(0),
      O => \^trd_cnt_en\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => read_data_en_reg_reg_0,
      I1 => crnt_state(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => crnt_state(4),
      I5 => \^q\(2),
      O => \^tpacc_cnt_en\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[4]_2\,
      I1 => \^q\(2),
      I2 => crnt_state(4),
      I3 => crnt_state(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \^twr_cnt_en\
    );
\PERBIT_GEN[4].MULT_AND_i1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEEFFFFFFF"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \FSM_sequential_crnt_state_reg[4]_2\,
      I5 => crnt_state(2),
      O => \PERBIT_GEN[4].MULT_AND_i1_i_4_n_0\
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(4),
      O => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[5].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(5),
      O => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[6].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(6),
      O => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \PERBIT_GEN[7].MULT_AND_i1_i_14_n_0\,
      I2 => \PERBIT_GEN[7].MULT_AND_i1_i_3_0\,
      I3 => rdce_out_i,
      I4 => \PERBIT_GEN[7].MULT_AND_i1_i_3_1\,
      I5 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      O => \PERBIT_GEN[7].MULT_AND_i1_i_11_n_0\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(2),
      I2 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\,
      I3 => bus2ip_wrreq_i,
      I4 => pend_wrreq_reg,
      O => \FSM_sequential_crnt_state_reg[4]_1\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => crnt_state(2),
      I3 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\,
      O => \PERBIT_GEN[7].MULT_AND_i1_i_14_n_0\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF8"
    )
        port map (
      I0 => \PERBIT_GEN[7].MULT_AND_i1_i_7_n_0\,
      I1 => \PERBIT_GEN[7].MULT_AND_i1_i_8_n_0\,
      I2 => \^q\(0),
      I3 => \PERBIT_GEN[7].MULT_AND_i1_i_9_n_0\,
      I4 => pend_rdreq_reg,
      I5 => \PERBIT_GEN[7].MULT_AND_i1_i_11_n_0\,
      O => \FSM_sequential_crnt_state_reg[0]_1\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088800000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\,
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\,
      I3 => pend_rdreq,
      I4 => rdce_out_i,
      I5 => \PERBIT_GEN[7].MULT_AND_i1_i_3_0\,
      O => \PERBIT_GEN[7].MULT_AND_i1_i_7_n_0\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => crnt_state(2),
      O => \PERBIT_GEN[7].MULT_AND_i1_i_8_n_0\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \PERBIT_GEN[7].MULT_AND_i1_i_9_n_0\
    );
\PERBIT_GEN[7].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(7),
      O => \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[8].MUXCY_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(8),
      O => \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[9].MUXCY_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => crnt_state(2),
      I4 => \^q\(0),
      I5 => twr_rec_cnt(9),
      O => \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_n_0\,
      I1 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3_n_0\,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4_n_0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5_n_0\,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6_n_0\,
      I5 => bus2ip_reset,
      O => SR(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\,
      I1 => \^q\(1),
      I2 => crnt_state(2),
      I3 => \^q\(2),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BB000000AB00"
    )
        port map (
      I0 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\,
      I1 => crnt_state(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => crnt_state(2),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBABBBBF"
    )
        port map (
      I0 => crnt_state(4),
      I1 => crnt_state(2),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1555FFFF0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => bus2ip_wrreq_i,
      I2 => pend_wrreq_reg,
      I3 => s_axi_mem_wvalid,
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBEEB"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(1),
      I2 => crnt_state(2),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF55550000FC00"
    )
        port map (
      I0 => \mem_a_int_reg[0]\,
      I1 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19_n_0\,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20_n_0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \FSM_sequential_crnt_state_reg[0]_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"009C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => crnt_state(4),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_19_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555550155555551"
    )
        port map (
      I0 => \^q\(2),
      I1 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\,
      I2 => crnt_state(2),
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_8_n_0\,
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9_n_0\,
      I5 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404454"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(2),
      I2 => crnt_state(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_20_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => crnt_state(4),
      I1 => crnt_state(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_11_n_0\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_3_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002A2200000000"
    )
        port map (
      I0 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\,
      I1 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_12_n_0\,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_2\,
      I3 => bus2Mem_RdReq,
      I4 => \^fsm_sequential_crnt_state_reg[1]_0\,
      I5 => \^q\(2),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000000FFFFFFFF"
    )
        port map (
      I0 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_13_n_0\,
      I1 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\,
      I2 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_15_n_0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_16_n_0\,
      I4 => \^fsm_sequential_crnt_state_reg[1]_0\,
      I5 => crnt_state(2),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => crnt_state(4),
      I1 => read_complete_d_4,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_6_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0004000"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \FSM_sequential_crnt_state_reg[4]_2\,
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_8_n_0\
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \FSM_sequential_crnt_state_reg[3]_5\,
      I1 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\,
      I2 => crnt_state(4),
      I3 => \^q\(1),
      I4 => crnt_state(2),
      I5 => \^q\(0),
      O => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_9_n_0\
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_complete_cmb,
      Q => read_complete_d_6,
      R => bus2ip_reset
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000404044444444"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \mem_oen_reg[0]_i_4_n_0\,
      I2 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2_n_0\,
      I3 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\,
      I4 => \^q\(1),
      I5 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\,
      O => read_complete_cmb
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => bus2Mem_RdReq,
      O => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2_n_0\
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0EFEFFFF"
    )
        port map (
      I0 => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0\,
      I1 => \mem_ce_reg[0]_i_4_n_0\,
      I2 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\,
      I3 => read_data_en_reg_reg_1,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4_n_0\
    );
\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45550557"
    )
        port map (
      I0 => read_break_reg_d1,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => crnt_state(2),
      I4 => \^q\(1),
      I5 => crnt_state(4),
      O => \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5_n_0\
    );
\READ_COMPLETE_PIPE_GEN[1].READ_COMPLETE_PIPE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_complete_d_6,
      Q => read_complete_d_5,
      R => bus2ip_reset
    );
\READ_COMPLETE_PIPE_GEN[2].READ_COMPLETE_PIPE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_complete_d_5,
      Q => read_complete_d_4,
      R => bus2ip_reset
    );
\bus2ip_addr_i[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDF0000FFFFFFFF"
    )
        port map (
      I0 => \^fsm_sequential_crnt_state_reg[2]_0\,
      I1 => \bus2ip_addr_i_reg[12]\,
      I2 => s_axi_mem_arburst(0),
      I3 => s_axi_mem_arburst(1),
      I4 => \bus2ip_addr_i[31]_i_4_n_0\,
      I5 => \bus2ip_addr_i_reg[12]_0\,
      O => s_axi_mem_arburst_0_sn_1
    );
\bus2ip_addr_i[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axi_mem_awburst(1),
      I1 => s_axi_mem_awburst(0),
      I2 => \^s_axi_mem_awvalid_0\,
      O => \bus2ip_addr_i[31]_i_4_n_0\
    );
\mem_a_int[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000010001"
    )
        port map (
      I0 => \^q\(2),
      I1 => crnt_state(4),
      I2 => \^q\(0),
      I3 => crnt_state(2),
      I4 => \mem_a_int_reg[0]\,
      I5 => \^q\(1),
      O => \^fsm_sequential_crnt_state_reg[3]_1\
    );
\mem_ce_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555554"
    )
        port map (
      I0 => \mem_ce_reg[0]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => crnt_state(2),
      I4 => \^q\(1),
      I5 => \mem_ce_reg[0]_i_3_n_0\,
      O => mem_ce_int
    );
\mem_ce_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400015555000155"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(0),
      I2 => Bus2IP_RdReq_emc,
      I3 => crnt_state(2),
      I4 => \^q\(1),
      I5 => \mem_ce_reg[0]_i_4_n_0\,
      O => \mem_ce_reg[0]_i_2_n_0\
    );
\mem_ce_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01444144"
    )
        port map (
      I0 => crnt_state(4),
      I1 => crnt_state(2),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \mem_oen_reg[0]_i_3_n_0\,
      O => \mem_ce_reg[0]_i_3_n_0\
    );
\mem_ce_reg[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5455"
    )
        port map (
      I0 => read_break_reg_d1,
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\,
      I2 => bus2Mem_RdReq,
      I3 => Bus2IP_RdReq_d1,
      O => \mem_ce_reg[0]_i_4_n_0\
    );
\mem_cen_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAB"
    )
        port map (
      I0 => \mem_ce_reg[0]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => crnt_state(2),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \mem_ce_reg[0]_i_2_n_0\,
      O => mem_CEN_cmb
    );
\mem_dq_t_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222202202222022A"
    )
        port map (
      I0 => mem_dqt_t_d,
      I1 => crnt_state(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => crnt_state(2),
      O => mem_dqt_t_d_reg(0)
    );
mem_dqt_t_d_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001CFFD"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => crnt_state(4),
      O => mem_WEN_cmb
    );
\mem_oen_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"035503550355FFFF"
    )
        port map (
      I0 => \mem_oen_reg[0]_i_2_n_0\,
      I1 => \mem_oen_reg[0]_i_3_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => crnt_state(4),
      I5 => \mem_oen_reg[0]_i_4_n_0\,
      O => mem_OEN_cmb
    );
\mem_oen_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBF8FBF8C8C8"
    )
        port map (
      I0 => \mem_ce_reg[0]_i_4_n_0\,
      I1 => \^q\(1),
      I2 => crnt_state(4),
      I3 => Bus2IP_RdReq_emc,
      I4 => crnt_state(2),
      I5 => \^q\(2),
      O => \mem_oen_reg[0]_i_2_n_0\
    );
\mem_oen_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFEFEFFFEFF"
    )
        port map (
      I0 => \mem_ce_reg[0]_i_4_n_0\,
      I1 => crnt_state(4),
      I2 => wlast_reg_i_4_n_0,
      I3 => read_break_reg_d1,
      I4 => \mem_oen_reg[0]_i_5_n_0\,
      I5 => \mem_oen_reg[0]_i_4_n_0\,
      O => \mem_oen_reg[0]_i_3_n_0\
    );
\mem_oen_reg[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => crnt_state(2),
      O => \mem_oen_reg[0]_i_4_n_0\
    );
\mem_oen_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \mem_oen_reg[0]_i_5_n_0\
    );
\mem_qwen_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55145517"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => crnt_state(2),
      I5 => mem_ben_int,
      O => mem_qwen_int
    );
mem_rnw_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001F9F9"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => crnt_state(4),
      O => mem_RNW_cmb
    );
new_page_d1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_sequential_crnt_state_reg[3]_0\,
      O => new_page
    );
new_page_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000550155555555"
    )
        port map (
      I0 => \^tpacc_cnt_en\,
      I1 => \^q\(2),
      I2 => new_page_d1_i_3_n_0,
      I3 => new_page_d1_i_4_n_0,
      I4 => new_page_d1_i_5_n_0,
      I5 => new_page_d1,
      O => \^fsm_sequential_crnt_state_reg[3]_0\
    );
new_page_d1_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => crnt_state(2),
      O => new_page_d1_i_3_n_0
    );
new_page_d1_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => crnt_state(4),
      I1 => \^q\(1),
      O => new_page_d1_i_4_n_0
    );
new_page_d1_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"003E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => crnt_state(2),
      I3 => crnt_state(4),
      O => new_page_d1_i_5_n_0
    );
new_page_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => new_page,
      Q => new_page_d1,
      R => bus2ip_reset
    );
pend_wrreq_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0F0000000"
    )
        port map (
      I0 => \^fsm_sequential_crnt_state_reg[1]_3\,
      I1 => bus2ip_burst,
      I2 => temp_bus2ip_cs,
      I3 => \^transaction_done_i\,
      I4 => bus2ip_wrreq_i,
      I5 => pend_wrreq_reg,
      O => bus2ip_burst_reg_reg
    );
read_ack_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_reg_reg_0,
      Q => read_ack,
      R => bus2ip_reset
    );
read_break_reg_d1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_oen_reg[0]_i_3_n_0\,
      O => read_break_reg
    );
read_break_reg_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_break_reg,
      Q => read_break_reg_d1,
      R => bus2ip_reset
    );
read_data_en_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001000FFFFFFFF"
    )
        port map (
      I0 => read_data_en_reg_reg_1,
      I1 => crnt_state(4),
      I2 => \mem_oen_reg[0]_i_4_n_0\,
      I3 => \FSM_sequential_crnt_state[0]_i_2_n_0\,
      I4 => read_data_en_reg_reg_0,
      I5 => \^fsm_sequential_crnt_state_reg[3]_2\,
      O => \^read_data_en_cmb\
    );
read_data_en_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => crnt_state(2),
      I2 => crnt_state(4),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\,
      O => \^fsm_sequential_crnt_state_reg[3]_2\
    );
read_data_en_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^read_data_en_cmb\,
      Q => read_data_en,
      R => bus2ip_reset
    );
s_axi_mem_arready_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => crnt_state(4),
      I4 => \^q\(2),
      O => \^fsm_sequential_crnt_state_reg[2]_0\
    );
s_axi_mem_awready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800080"
    )
        port map (
      I0 => \^fsm_sequential_crnt_state_reg[2]_0\,
      I1 => s_axi_mem_awvalid,
      I2 => s_axi_mem_wvalid,
      I3 => s_axi_mem_arvalid,
      I4 => rw_flag_reg,
      O => \^s_axi_mem_awvalid_0\
    );
s_axi_mem_wready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF3FF77777777"
    )
        port map (
      I0 => pend_wrreq_reg_1,
      I1 => s_axi_mem_wready_INST_0_i_3_n_0,
      I2 => pend_wrreq_reg_0,
      I3 => \mem_a_int_reg[0]\,
      I4 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\,
      I5 => \^q\(1),
      O => \^fsm_sequential_crnt_state_reg[1]_3\
    );
s_axi_mem_wready_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(2),
      I1 => crnt_state(4),
      I2 => crnt_state(2),
      I3 => \^q\(0),
      O => s_axi_mem_wready_INST_0_i_3_n_0
    );
transaction_complete_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_sequential_crnt_state[0]_i_3_n_0\,
      O => transaction_complete
    );
transaction_complete_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => transaction_complete,
      Q => transaction_complete_reg,
      R => bus2ip_reset
    );
transaction_done_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C0C0808000C"
    )
        port map (
      I0 => read_complete_d_4,
      I1 => transaction_done_reg_i_2_n_0,
      I2 => \^q\(1),
      I3 => transaction_done_reg_reg_0,
      I4 => crnt_state(4),
      I5 => \^q\(2),
      O => transaction_done_cmb
    );
transaction_done_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => crnt_state(2),
      O => transaction_done_reg_i_2_n_0
    );
transaction_done_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => transaction_done_cmb,
      Q => \^transaction_done_i\,
      R => bus2ip_reset
    );
wlast_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF444F44444444"
    )
        port map (
      I0 => wlast_reg_i_2_n_0,
      I1 => s_axi_mem_wlast,
      I2 => wlast_reg_i_3_n_0,
      I3 => crnt_state(4),
      I4 => wlast_reg_i_4_n_0,
      I5 => wlast_reg,
      O => wlast
    );
wlast_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEDCFFDCF"
    )
        port map (
      I0 => \^q\(1),
      I1 => crnt_state(4),
      I2 => crnt_state(2),
      I3 => \^q\(0),
      I4 => wlast_reg_reg_0,
      I5 => wlast_reg_i_6_n_0,
      O => wlast_reg_i_2_n_0
    );
wlast_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => crnt_state(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => wlast_reg_i_3_n_0
    );
wlast_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => crnt_state(2),
      I3 => \^q\(1),
      O => wlast_reg_i_4_n_0
    );
wlast_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(2),
      I1 => s_axi_mem_wvalid,
      O => wlast_reg_i_6_n_0
    );
wlast_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wlast,
      Q => wlast_reg,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_mem_steer is
  port (
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_dqt_t_d : out STD_LOGIC;
    \DATA_STORE_GEN[8].WRDATA_REG_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    data_strobe_c : in STD_LOGIC;
    \DATA_STORE_GEN[24].WRDATA_REG_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC_0\ : in STD_LOGIC;
    read_ack : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    read_data_en : in STD_LOGIC;
    mem_WEN_cmb : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_mem_steer : entity is "mem_steer";
end AXI_bd_0_axi_emc_0_0_mem_steer;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_mem_steer is
  signal A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \DATA_STORE_GEN[0].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[10].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[11].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[12].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[13].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[14].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[15].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[16].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[17].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[18].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[19].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[1].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[20].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[21].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[22].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[23].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[24].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[25].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[26].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[27].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[28].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[29].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[2].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[30].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[31].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[3].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[4].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[5].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[6].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[7].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[8].WRDATA_REG__0\ : STD_LOGIC;
  signal \DATA_STORE_GEN[9].WRDATA_REG__0\ : STD_LOGIC;
  signal \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\ : STD_LOGIC;
  signal \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\ : STD_LOGIC;
  signal \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\ : STD_LOGIC;
  signal \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\ : STD_LOGIC;
  signal addr_cnt_d1 : STD_LOGIC_VECTOR ( 0 to 1 );
  signal read_ack_d_4 : STD_LOGIC;
  signal read_data_en_d_3 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC\ : label is "FDR";
  attribute BOX_TYPE of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC\ : label is "FDR";
  attribute BOX_TYPE of \DATA_STORE_GEN[0].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[10].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[11].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[12].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[13].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[14].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[15].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[16].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[17].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[18].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[19].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[1].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[20].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[21].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[22].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[23].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[24].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[25].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[26].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[27].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[28].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[29].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[2].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[30].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[31].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[3].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[4].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[5].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[6].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[7].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[8].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \DATA_STORE_GEN[9].WRDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[1].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[2].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[3].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[4].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[5].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[6].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[0].RDDATA_BYTE_GEN[7].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[1].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[2].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[3].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[4].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[5].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[6].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[1].RDDATA_BYTE_GEN[7].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[1].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[2].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[3].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[4].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[5].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[6].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[2].RDDATA_BYTE_GEN[7].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[1].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[2].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[3].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[4].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[5].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[6].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_GEN[3].RDDATA_BYTE_GEN[7].RDDATA_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.RDDATA_EN_GEN_ASYNC[0].RDDATA_EN_REG_ASYNC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.RDDATA_EN_GEN_ASYNC[0].RDDATA_EN_REG_ASYNC\ : label is "FDR";
begin
\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack,
      Q => read_ack_d_4,
      R => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC_0\
    );
\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_ack_d_4,
      Q => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      R => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC_0\
    );
\DATA_STORE_GEN[0].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(7),
      Q => \DATA_STORE_GEN[0].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[10].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(13),
      Q => \DATA_STORE_GEN[10].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[11].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(12),
      Q => \DATA_STORE_GEN[11].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[12].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(11),
      Q => \DATA_STORE_GEN[12].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[13].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(10),
      Q => \DATA_STORE_GEN[13].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[14].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(9),
      Q => \DATA_STORE_GEN[14].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[15].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(8),
      Q => \DATA_STORE_GEN[15].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[16].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(23),
      Q => \DATA_STORE_GEN[16].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[17].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(22),
      Q => \DATA_STORE_GEN[17].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[18].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(21),
      Q => \DATA_STORE_GEN[18].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[19].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(20),
      Q => \DATA_STORE_GEN[19].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[1].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(6),
      Q => \DATA_STORE_GEN[1].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[20].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(19),
      Q => \DATA_STORE_GEN[20].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[21].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(18),
      Q => \DATA_STORE_GEN[21].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[22].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(17),
      Q => \DATA_STORE_GEN[22].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[23].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(16),
      Q => \DATA_STORE_GEN[23].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[24].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(31),
      Q => \DATA_STORE_GEN[24].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[25].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(30),
      Q => \DATA_STORE_GEN[25].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[26].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(29),
      Q => \DATA_STORE_GEN[26].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[27].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(28),
      Q => \DATA_STORE_GEN[27].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[28].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(27),
      Q => \DATA_STORE_GEN[28].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[29].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(26),
      Q => \DATA_STORE_GEN[29].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[2].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(5),
      Q => \DATA_STORE_GEN[2].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[30].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(25),
      Q => \DATA_STORE_GEN[30].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[31].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(24),
      Q => \DATA_STORE_GEN[31].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[3].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(4),
      Q => \DATA_STORE_GEN[3].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[4].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(3),
      Q => \DATA_STORE_GEN[4].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[5].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(2),
      Q => \DATA_STORE_GEN[5].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[6].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(1),
      Q => \DATA_STORE_GEN[6].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[7].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(0),
      Q => \DATA_STORE_GEN[7].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[8].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(15),
      Q => \DATA_STORE_GEN[8].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\DATA_STORE_GEN[9].WRDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => \DATA_STORE_GEN[24].WRDATA_REG_0\(14),
      Q => \DATA_STORE_GEN[9].WRDATA_REG__0\,
      R => bus2ip_reset
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(7),
      Q => D(31),
      R => bus2ip_reset
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => read_data_en_d_3,
      I1 => A(0),
      I2 => A(1),
      O => \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[1].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(6),
      Q => D(30),
      R => bus2ip_reset
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[2].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(5),
      Q => D(29),
      R => bus2ip_reset
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[3].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(4),
      Q => D(28),
      R => bus2ip_reset
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[4].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(3),
      Q => D(27),
      R => bus2ip_reset
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[5].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(2),
      Q => D(26),
      R => bus2ip_reset
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[6].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(1),
      Q => D(25),
      R => bus2ip_reset
    );
\RDDATA_GEN[0].RDDATA_BYTE_GEN[7].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(0),
      Q => D(24),
      R => bus2ip_reset
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(7),
      Q => D(23),
      R => bus2ip_reset
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => read_data_en_d_3,
      I1 => A(0),
      I2 => A(1),
      O => \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[1].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(6),
      Q => D(22),
      R => bus2ip_reset
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[2].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(5),
      Q => D(21),
      R => bus2ip_reset
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[3].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(4),
      Q => D(20),
      R => bus2ip_reset
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[4].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(3),
      Q => D(19),
      R => bus2ip_reset
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[5].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(2),
      Q => D(18),
      R => bus2ip_reset
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[6].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(1),
      Q => D(17),
      R => bus2ip_reset
    );
\RDDATA_GEN[1].RDDATA_BYTE_GEN[7].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(0),
      Q => D(16),
      R => bus2ip_reset
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(7),
      Q => D(15),
      R => bus2ip_reset
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => read_data_en_d_3,
      I1 => A(1),
      I2 => A(0),
      O => \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[1].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(6),
      Q => D(14),
      R => bus2ip_reset
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[2].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(5),
      Q => D(13),
      R => bus2ip_reset
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[3].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(4),
      Q => D(12),
      R => bus2ip_reset
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[4].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(3),
      Q => D(11),
      R => bus2ip_reset
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[5].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(2),
      Q => D(10),
      R => bus2ip_reset
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[6].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(1),
      Q => D(9),
      R => bus2ip_reset
    );
\RDDATA_GEN[2].RDDATA_BYTE_GEN[7].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(0),
      Q => D(8),
      R => bus2ip_reset
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(7),
      Q => D(7),
      R => bus2ip_reset
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_data_en_d_3,
      I1 => A(0),
      I2 => A(1),
      O => \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[1].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(6),
      Q => D(6),
      R => bus2ip_reset
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[2].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(5),
      Q => D(5),
      R => bus2ip_reset
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[3].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(4),
      Q => D(4),
      R => bus2ip_reset
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[4].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(3),
      Q => D(3),
      R => bus2ip_reset
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[5].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(2),
      Q => D(2),
      R => bus2ip_reset
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[6].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(1),
      Q => D(1),
      R => bus2ip_reset
    );
\RDDATA_GEN[3].RDDATA_BYTE_GEN[7].RDDATA_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG_i_1_n_0\,
      D => Q(0),
      Q => D(0),
      R => bus2ip_reset
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.RDDATA_EN_GEN_ASYNC[0].RDDATA_EN_REG_ASYNC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_data_en,
      Q => read_data_en_d_3,
      R => bus2ip_reset
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1),
      Q => addr_cnt_d1(0),
      R => SR(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0),
      Q => addr_cnt_d1(1),
      R => SR(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_cnt_d1(0),
      Q => A(1),
      R => SR(0)
    );
\RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_cnt_d1(1),
      Q => A(0),
      R => SR(0)
    );
\mem_dq_o_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \DATA_STORE_GEN[8].WRDATA_REG__0\,
      I1 => \DATA_STORE_GEN[0].WRDATA_REG__0\,
      I2 => \DATA_STORE_GEN[24].WRDATA_REG__0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0),
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1),
      I5 => \DATA_STORE_GEN[16].WRDATA_REG__0\,
      O => \DATA_STORE_GEN[8].WRDATA_REG_0\(7)
    );
\mem_dq_o_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCFFF0AACC00F0"
    )
        port map (
      I0 => \DATA_STORE_GEN[25].WRDATA_REG__0\,
      I1 => \DATA_STORE_GEN[17].WRDATA_REG__0\,
      I2 => \DATA_STORE_GEN[1].WRDATA_REG__0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0),
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1),
      I5 => \DATA_STORE_GEN[9].WRDATA_REG__0\,
      O => \DATA_STORE_GEN[8].WRDATA_REG_0\(6)
    );
\mem_dq_o_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \DATA_STORE_GEN[18].WRDATA_REG__0\,
      I1 => \DATA_STORE_GEN[2].WRDATA_REG__0\,
      I2 => \DATA_STORE_GEN[26].WRDATA_REG__0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0),
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1),
      I5 => \DATA_STORE_GEN[10].WRDATA_REG__0\,
      O => \DATA_STORE_GEN[8].WRDATA_REG_0\(5)
    );
\mem_dq_o_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => \DATA_STORE_GEN[27].WRDATA_REG__0\,
      I1 => \DATA_STORE_GEN[3].WRDATA_REG__0\,
      I2 => \DATA_STORE_GEN[19].WRDATA_REG__0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1),
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0),
      I5 => \DATA_STORE_GEN[11].WRDATA_REG__0\,
      O => \DATA_STORE_GEN[8].WRDATA_REG_0\(4)
    );
\mem_dq_o_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCF0FFAACCF000"
    )
        port map (
      I0 => \DATA_STORE_GEN[28].WRDATA_REG__0\,
      I1 => \DATA_STORE_GEN[12].WRDATA_REG__0\,
      I2 => \DATA_STORE_GEN[20].WRDATA_REG__0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1),
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0),
      I5 => \DATA_STORE_GEN[4].WRDATA_REG__0\,
      O => \DATA_STORE_GEN[8].WRDATA_REG_0\(3)
    );
\mem_dq_o_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCFFF0AACC00F0"
    )
        port map (
      I0 => \DATA_STORE_GEN[29].WRDATA_REG__0\,
      I1 => \DATA_STORE_GEN[21].WRDATA_REG__0\,
      I2 => \DATA_STORE_GEN[5].WRDATA_REG__0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0),
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1),
      I5 => \DATA_STORE_GEN[13].WRDATA_REG__0\,
      O => \DATA_STORE_GEN[8].WRDATA_REG_0\(2)
    );
\mem_dq_o_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCFFF0AACC00F0"
    )
        port map (
      I0 => \DATA_STORE_GEN[30].WRDATA_REG__0\,
      I1 => \DATA_STORE_GEN[22].WRDATA_REG__0\,
      I2 => \DATA_STORE_GEN[6].WRDATA_REG__0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0),
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1),
      I5 => \DATA_STORE_GEN[14].WRDATA_REG__0\,
      O => \DATA_STORE_GEN[8].WRDATA_REG_0\(1)
    );
\mem_dq_o_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCFFF0AACC00F0"
    )
        port map (
      I0 => \DATA_STORE_GEN[31].WRDATA_REG__0\,
      I1 => \DATA_STORE_GEN[23].WRDATA_REG__0\,
      I2 => \DATA_STORE_GEN[7].WRDATA_REG__0\,
      I3 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0),
      I4 => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1),
      I5 => \DATA_STORE_GEN[15].WRDATA_REG__0\,
      O => \DATA_STORE_GEN[8].WRDATA_REG_0\(0)
    );
mem_dqt_t_d_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mem_WEN_cmb,
      Q => mem_dqt_t_d,
      S => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_addr_counter_mux is
  port (
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\ : out STD_LOGIC;
    pend_wrreq_reg : out STD_LOGIC;
    pend_wrreq_reg_0 : out STD_LOGIC;
    pend_wrreq_reg_1 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_2\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_3\ : out STD_LOGIC;
    mem_ben_int : out STD_LOGIC;
    Cycle_cnt_en_int : in STD_LOGIC;
    S_0 : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\ : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    data_strobe_c : in STD_LOGIC;
    bus2ip_addr_temp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    bus2ip_ben_fixed : in STD_LOGIC_VECTOR ( 0 to 3 );
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\ : in STD_LOGIC;
    read_data_en_cmb : in STD_LOGIC;
    \FSM_sequential_crnt_state[1]_i_6\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4\ : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_0\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_1\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_2\ : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    \DATA_STORE_GEN[0].WRDATA_REG\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_crnt_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_crnt_state[2]_i_2\ : in STD_LOGIC;
    \FSM_sequential_crnt_state[2]_i_2_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state[2]_i_2_1\ : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\ : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0\ : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_1\ : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_addr_counter_mux : entity is "addr_counter_mux";
end AXI_bd_0_axi_emc_0_0_addr_counter_mux;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_addr_counter_mux is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1_n_0\ : STD_LOGIC;
  signal bus2ip_ben_int : STD_LOGIC_VECTOR ( 0 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[0].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[10].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[11].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[12].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[13].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[14].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[15].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[16].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[17].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[18].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[19].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[1].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[20].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[21].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[22].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[23].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[24].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[25].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[26].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[27].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[28].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[29].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[2].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[3].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[4].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[5].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[6].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[7].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[8].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \ADDRESS_STORE_GEN[9].ADDRESS_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \BEN_STORE_GEN[0].BEN_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \BEN_STORE_GEN[1].BEN_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \BEN_STORE_GEN[2].BEN_REG\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \BEN_STORE_GEN[3].BEN_REG\ : label is "PRIMITIVE";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
\ADDRESS_STORE_GEN[0].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(29),
      Q => \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[10].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(19),
      Q => \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[11].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(18),
      Q => \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[12].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(17),
      Q => \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[13].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(16),
      Q => \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[14].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(15),
      Q => \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[15].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(14),
      Q => \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[16].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(13),
      Q => \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[17].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(12),
      Q => \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[18].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(11),
      Q => \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[19].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(10),
      Q => \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[1].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(28),
      Q => \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[20].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(9),
      Q => \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[21].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(8),
      Q => \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[22].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(7),
      Q => \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[23].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(6),
      Q => \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[24].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(5),
      Q => \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[25].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(4),
      Q => \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[26].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(3),
      Q => \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[27].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(2),
      Q => \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[28].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(1),
      Q => \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[29].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(0),
      Q => \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[2].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(27),
      Q => \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[3].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(26),
      Q => \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[4].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(25),
      Q => \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[5].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(24),
      Q => \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[6].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(23),
      Q => \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[7].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(22),
      Q => \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[8].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(21),
      Q => \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\ADDRESS_STORE_GEN[9].ADDRESS_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_addr_temp(20),
      Q => \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\,
      R => bus2ip_reset
    );
\BEN_STORE_GEN[0].BEN_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_ben_fixed(0),
      Q => bus2ip_ben_int(0),
      R => bus2ip_reset
    );
\BEN_STORE_GEN[1].BEN_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_ben_fixed(1),
      Q => bus2ip_ben_int(1),
      R => bus2ip_reset
    );
\BEN_STORE_GEN[2].BEN_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_ben_fixed(2),
      Q => bus2ip_ben_int(2),
      R => bus2ip_reset
    );
\BEN_STORE_GEN[3].BEN_REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_strobe_c,
      D => bus2ip_ben_fixed(3),
      Q => bus2ip_ben_int(3),
      R => bus2ip_reset
    );
\DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I\: entity work.\AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized0\
     port map (
      CE => CE,
      Cycle_cnt_en_int => Cycle_cnt_en_int,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\ => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\,
      \DATA_STORE_GEN[0].WRDATA_REG\ => \DATA_STORE_GEN[0].WRDATA_REG\,
      \FSM_sequential_crnt_state[1]_i_6\ => \FSM_sequential_crnt_state[1]_i_6\,
      \FSM_sequential_crnt_state[2]_i_2\ => \FSM_sequential_crnt_state[2]_i_2\,
      \FSM_sequential_crnt_state[2]_i_2_0\ => \FSM_sequential_crnt_state[2]_i_2_0\,
      \FSM_sequential_crnt_state[2]_i_2_1\ => \FSM_sequential_crnt_state[2]_i_2_1\,
      \FSM_sequential_crnt_state_reg[0]\ => \FSM_sequential_crnt_state_reg[0]\,
      \FSM_sequential_crnt_state_reg[0]_0\ => \FSM_sequential_crnt_state_reg[0]_0\,
      \FSM_sequential_crnt_state_reg[0]_1\ => \FSM_sequential_crnt_state_reg[0]_1\,
      \FSM_sequential_crnt_state_reg[0]_2\ => \FSM_sequential_crnt_state_reg[0]_2\,
      \FSM_sequential_crnt_state_reg[0]_3\ => \FSM_sequential_crnt_state_reg[0]_3\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_6\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\ => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_2\ => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_3\ => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_2\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_4\ => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_3\,
      Q(2 downto 0) => Q(2 downto 0),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10_0\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_0\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_0\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_1\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_1\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_2\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_2\,
      S_0 => S_0,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      pend_wrreq_reg => pend_wrreq_reg,
      pend_wrreq_reg_0 => pend_wrreq_reg_0,
      pend_wrreq_reg_1 => pend_wrreq_reg_1,
      read_data_en_cmb => read_data_en_cmb,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FFB800"
    )
        port map (
      I0 => \^d\(0),
      I1 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0\,
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_1\,
      I3 => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_2\,
      I4 => \^d\(1),
      O => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1_n_0\
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_1_n_0\,
      Q => \^d\(1),
      R => bus2ip_reset
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\,
      Q => \^d\(0),
      R => bus2ip_reset
    );
\mem_ben_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33550F0033550FFF"
    )
        port map (
      I0 => bus2ip_ben_int(2),
      I1 => bus2ip_ben_int(3),
      I2 => bus2ip_ben_int(1),
      I3 => \^d\(0),
      I4 => \^d\(1),
      I5 => bus2ip_ben_int(0),
      O => mem_ben_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_counters is
  port (
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    twr_rec_cnt : out STD_LOGIC_VECTOR ( 0 to 15 );
    bus2ip_wr_req_reg_reg : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\ : out STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]\ : out STD_LOGIC;
    pend_wrreq_reg : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_0\ : out STD_LOGIC;
    twr_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    twph_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_0\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_1\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_2\ : in STD_LOGIC;
    CE_3 : in STD_LOGIC;
    CE_4 : in STD_LOGIC;
    trd_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_5\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8\ : in STD_LOGIC;
    CE_9 : in STD_LOGIC;
    tpacc_cnt_en : in STD_LOGIC;
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_2\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12\ : in STD_LOGIC;
    CE_13 : in STD_LOGIC;
    twr_rec_cnt_en_int : in STD_LOGIC;
    S : in STD_LOGIC;
    \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17\ : in STD_LOGIC;
    CE_18 : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    transaction_done_reg_reg : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_counters : entity is "counters";
end AXI_bd_0_axi_emc_0_0_counters;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_counters is
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[2].ff_rst1_gen.fdse_i1_1\ : STD_LOGIC;
begin
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1\;
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1\ <= \^perbit_gen[2].ff_rst1_gen.fdse_i1_1\;
THZCNT_I: entity work.\AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2\
     port map (
      CE_18 => CE_18,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => \^perbit_gen[1].ff_rst0_gen.fdre_i1\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_0\ => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wr_req_reg_reg => bus2ip_wr_req_reg_reg,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      \mem_a_int_reg[0]\ => transaction_done_reg_reg,
      pend_wrreq_reg => pend_wrreq_reg,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs
    );
TLZCNT_I: entity work.\AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_0\
     port map (
      CE_4 => CE_4,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs,
      transaction_done_reg_reg => \^perbit_gen[1].ff_rst0_gen.fdre_i1\,
      transaction_done_reg_reg_0 => transaction_done_reg_reg
    );
TPACCCNT_I: entity work.\AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1\
     port map (
      CE_13 => CE_13,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\ => \^perbit_gen[1].ff_rst0_gen.fdre_i1\,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2_0\ => transaction_done_reg_reg,
      \FSM_sequential_crnt_state_reg[3]\ => \FSM_sequential_crnt_state_reg[3]\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12\,
      \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(2),
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11\,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(1),
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1\ => \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_2\ => \^perbit_gen[2].ff_rst1_gen.fdse_i1_1\,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_3\ => \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_2\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10\,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(0),
      Q(0) => Q(2),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4\,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE\ => \FSM_sequential_crnt_state_reg[1]\,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      s_axi_aclk => s_axi_aclk,
      tpacc_cnt_en => tpacc_cnt_en
    );
TRDCNT_I: entity work.\AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_1\
     port map (
      CE_9 => CE_9,
      \FSM_sequential_crnt_state_reg[0]\ => \FSM_sequential_crnt_state_reg[0]\,
      \FSM_sequential_crnt_state_reg[1]\ => \FSM_sequential_crnt_state_reg[1]\,
      \FSM_sequential_crnt_state_reg[1]_0\ => \^perbit_gen[2].ff_rst1_gen.fdse_i1_1\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(0) => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8\,
      \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(2),
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7\,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(1),
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1\ => \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6\,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(0),
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_5\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_5\,
      Q(1 downto 0) => Q(1 downto 0),
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2ip_reset => bus2ip_reset,
      s_axi_aclk => s_axi_aclk,
      trd_cnt_en => trd_cnt_en
    );
TWPHCNT_I: entity work.\AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized2_2\
     port map (
      CE_3 => CE_3,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\(0) => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(3),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_2\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_2\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(2),
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_1\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_1\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(1),
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1\ => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_2\ => \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_0\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_0\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(0),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_5\ => \FSM_sequential_crnt_state_reg[1]\,
      bus2ip_reset => bus2ip_reset,
      s_axi_aclk => s_axi_aclk,
      twph_cnt_en => twph_cnt_en
    );
TWRCNT_I: entity work.\AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized1_3\
     port map (
      CE => CE,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(3 downto 0) => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(3 downto 0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      bus2ip_reset => bus2ip_reset,
      s_axi_aclk => s_axi_aclk,
      twr_cnt_en => twr_cnt_en
    );
T_WRREC_CNT_I: entity work.\AXI_bd_0_axi_emc_0_0_ld_arith_reg__parameterized3\
     port map (
      \FSM_sequential_crnt_state_reg[3]\ => \FSM_sequential_crnt_state_reg[3]_0\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17\,
      \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0\ => \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\,
      Q(0) => Q(2),
      S => S,
      bus2ip_reset => bus2ip_reset,
      s_axi_aclk => s_axi_aclk,
      twr_rec_cnt(0 to 15) => twr_rec_cnt(0 to 15),
      twr_rec_cnt_en_int => twr_rec_cnt_en_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_ipic_if is
  port (
    burst_cnt_i : out STD_LOGIC_VECTOR ( 0 to 7 );
    ip2bus_rdack : out STD_LOGIC;
    pend_rdreq : out STD_LOGIC;
    pend_wrreq_reg_0 : out STD_LOGIC;
    pend_wrreq_reg_1 : out STD_LOGIC;
    pend_wrreq_reg_2 : out STD_LOGIC;
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    rd_fifo_wr_en : out STD_LOGIC;
    \IP2Bus_Data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_addrack : in STD_LOGIC;
    S : in STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    reset_fifo : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    IP2Bus_RdAck0 : in STD_LOGIC;
    pend_rdreq_reg_0 : in STD_LOGIC;
    pend_wrreq_reg_3 : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_bus2ip_cs : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_ipic_if : entity is "ipic_if";
end AXI_bd_0_axi_emc_0_0_ipic_if;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_ipic_if is
  signal \^ip2bus_rdack\ : STD_LOGIC;
  signal \^pend_wrreq_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_8\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of wlast_reg_i_5 : label is "soft_lutpair67";
begin
  ip2bus_rdack <= \^ip2bus_rdack\;
  pend_wrreq_reg_0 <= \^pend_wrreq_reg_0\;
BURST_CNT: entity work.AXI_bd_0_axi_emc_0_0_ld_arith_reg
     port map (
      CE => CE,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\,
      S => S,
      burst_cnt_i(0 to 7) => burst_cnt_i(0 to 7),
      ip2bus_addrack => ip2bus_addrack,
      reset_fifo => reset_fifo,
      s_axi_aclk => s_axi_aclk
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^pend_wrreq_reg_0\,
      I1 => bus2ip_wrreq_i,
      I2 => \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\,
      I3 => Q(0),
      O => pend_wrreq_reg_1
    );
\INFERRED_GEN.data_reg[255][0]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ip2bus_rdack\,
      I1 => temp_bus2ip_cs,
      O => rd_fifo_wr_en
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(31),
      Q => \IP2Bus_Data_reg[0]_0\(31),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(21),
      Q => \IP2Bus_Data_reg[0]_0\(21),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(20),
      Q => \IP2Bus_Data_reg[0]_0\(20),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(19),
      Q => \IP2Bus_Data_reg[0]_0\(19),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(18),
      Q => \IP2Bus_Data_reg[0]_0\(18),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(17),
      Q => \IP2Bus_Data_reg[0]_0\(17),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(16),
      Q => \IP2Bus_Data_reg[0]_0\(16),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(15),
      Q => \IP2Bus_Data_reg[0]_0\(15),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(14),
      Q => \IP2Bus_Data_reg[0]_0\(14),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(13),
      Q => \IP2Bus_Data_reg[0]_0\(13),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(12),
      Q => \IP2Bus_Data_reg[0]_0\(12),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(30),
      Q => \IP2Bus_Data_reg[0]_0\(30),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(11),
      Q => \IP2Bus_Data_reg[0]_0\(11),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(10),
      Q => \IP2Bus_Data_reg[0]_0\(10),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(9),
      Q => \IP2Bus_Data_reg[0]_0\(9),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(8),
      Q => \IP2Bus_Data_reg[0]_0\(8),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(7),
      Q => \IP2Bus_Data_reg[0]_0\(7),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(6),
      Q => \IP2Bus_Data_reg[0]_0\(6),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(5),
      Q => \IP2Bus_Data_reg[0]_0\(5),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(4),
      Q => \IP2Bus_Data_reg[0]_0\(4),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => \IP2Bus_Data_reg[0]_0\(3),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => \IP2Bus_Data_reg[0]_0\(2),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(29),
      Q => \IP2Bus_Data_reg[0]_0\(29),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => \IP2Bus_Data_reg[0]_0\(1),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \IP2Bus_Data_reg[0]_0\(0),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(28),
      Q => \IP2Bus_Data_reg[0]_0\(28),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(27),
      Q => \IP2Bus_Data_reg[0]_0\(27),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(26),
      Q => \IP2Bus_Data_reg[0]_0\(26),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(25),
      Q => \IP2Bus_Data_reg[0]_0\(25),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(24),
      Q => \IP2Bus_Data_reg[0]_0\(24),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(23),
      Q => \IP2Bus_Data_reg[0]_0\(23),
      R => bus2ip_reset
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(22),
      Q => \IP2Bus_Data_reg[0]_0\(22),
      R => bus2ip_reset
    );
IP2Bus_RdAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_RdAck0,
      Q => \^ip2bus_rdack\,
      R => bus2ip_reset
    );
pend_rdreq_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => pend_rdreq_reg_0,
      Q => pend_rdreq,
      R => bus2ip_reset
    );
pend_wrreq_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => pend_wrreq_reg_3,
      Q => \^pend_wrreq_reg_0\,
      R => bus2ip_reset
    );
wlast_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^pend_wrreq_reg_0\,
      I1 => bus2ip_wrreq_i,
      O => pend_wrreq_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_srl_fifo_rbu_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIFO_Full_reg_0 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIFO_Full_reg_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \burst_addr_cnt_reg[7]\ : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.cnt_i_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_emc_addr_ps_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_emc_addr_ps_reg[2]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CE : out STD_LOGIC;
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_0\ : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[2]_2\ : out STD_LOGIC;
    s_axi_mem_rvalid : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]\ : out STD_LOGIC;
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_emc_addr_ps_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_1\ : in STD_LOGIC;
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_2\ : in STD_LOGIC;
    \burst_addr_cnt_reg[7]_0\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_3\ : in STD_LOGIC;
    bus2ip_rnw : in STD_LOGIC;
    \rd_data_count_reg[7]\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_rready : in STD_LOGIC;
    \bus2ip_BE_reg_reg[0]\ : in STD_LOGIC;
    \bus2ip_BE_reg_reg[0]_0\ : in STD_LOGIC;
    addr_sm_ps_IDLE_reg_reg : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_4\ : in STD_LOGIC;
    addr_sm_ps_IDLE_reg_reg_0 : in STD_LOGIC;
    addr_sm_ps_IDLE_reg_reg_1 : in STD_LOGIC;
    addr_sm_ps_IDLE_reg_reg_2 : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[1]_2\ : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    bus2ip_rd_req_reg_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_rd_req_reg_reg_0 : in STD_LOGIC;
    Bus2IP_RdReq_emc : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_bus2ip_cs : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[1]_3\ : in STD_LOGIC;
    burst_cnt_i : in STD_LOGIC_VECTOR ( 0 to 7 );
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_0\ : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_1\ : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_2\ : in STD_LOGIC;
    rd_fifo_wr_en : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 32 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_srl_fifo_rbu_f : entity is "srl_fifo_rbu_f";
end AXI_bd_0_axi_emc_0_0_srl_fifo_rbu_f;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_srl_fifo_rbu_f is
  signal CNTR_INCR_DECR_ADDN_F_I_n_0 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_12 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_13 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_14 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_15 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_16 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_17 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_18 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_3 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_4 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_5 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_6 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_7_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].rdce_out_i_reg[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^burst_addr_cnt_reg[7]\ : STD_LOGIC;
  signal bus2ip_rd_req_reg_i_2_n_0 : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal rd_fifo_full : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \burst_addr_cnt[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_1\ : label is "soft_lutpair36";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ <= \^mem_decode_gen[0].rdce_out_i_reg[0]\;
  Q(0) <= \^q\(0);
  \burst_addr_cnt_reg[7]\ <= \^burst_addr_cnt_reg[7]\;
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^burst_addr_cnt_reg[7]\,
      I1 => \rd_data_count_reg[7]\,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]\(0),
      O => E(0)
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \burst_addr_cnt_reg[7]_0\,
      I1 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      I2 => \rd_data_count_reg[7]\,
      I3 => \^fifo_full_reg_0\,
      O => \^burst_addr_cnt_reg[7]\
    );
\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      I2 => \rd_data_count_reg[7]\,
      O => FIFO_Full_reg_1
    );
CNTR_INCR_DECR_ADDN_F_I: entity work.AXI_bd_0_axi_emc_0_0_cntr_incr_decr_addn_f
     port map (
      A(1) => CNTR_INCR_DECR_ADDN_F_I_n_12,
      A(0) => CNTR_INCR_DECR_ADDN_F_I_n_13,
      \FSM_sequential_emc_addr_ps_reg[2]\ => \FSM_sequential_emc_addr_ps_reg[2]_2\,
      \INFERRED_GEN.cnt_i_reg[2]_rep_0\(2) => CNTR_INCR_DECR_ADDN_F_I_n_16,
      \INFERRED_GEN.cnt_i_reg[2]_rep_0\(1) => CNTR_INCR_DECR_ADDN_F_I_n_17,
      \INFERRED_GEN.cnt_i_reg[2]_rep_0\(0) => CNTR_INCR_DECR_ADDN_F_I_n_18,
      \INFERRED_GEN.cnt_i_reg[8]_0\(0) => \INFERRED_GEN.cnt_i_reg[8]\(0),
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\(2 downto 0) => bus2ip_rd_req_reg_reg(2 downto 0),
      Q(7) => CNTR_INCR_DECR_ADDN_F_I_n_0,
      Q(6) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(5) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(4) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(3) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_5,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_6,
      Q(0) => \^q\(0),
      S(0) => S(0),
      SS(0) => SS(0),
      addr(1) => CNTR_INCR_DECR_ADDN_F_I_n_14,
      addr(0) => CNTR_INCR_DECR_ADDN_F_I_n_15,
      fifo_full_p1 => fifo_full_p1,
      \rd_data_count_reg[7]\ => \rd_data_count_reg[7]\,
      s_axi_aclk => s_axi_aclk,
      s_axi_mem_rready => s_axi_mem_rready,
      s_axi_mem_rvalid => s_axi_mem_rvalid
    );
DYNSHREG_F_I: entity work.AXI_bd_0_axi_emc_0_0_dynshreg_f
     port map (
      A(1) => CNTR_INCR_DECR_ADDN_F_I_n_12,
      A(0) => CNTR_INCR_DECR_ADDN_F_I_n_13,
      \INFERRED_GEN.data_reg[255][15]_mux__2_0\(2) => CNTR_INCR_DECR_ADDN_F_I_n_16,
      \INFERRED_GEN.data_reg[255][15]_mux__2_0\(1) => CNTR_INCR_DECR_ADDN_F_I_n_17,
      \INFERRED_GEN.data_reg[255][15]_mux__2_0\(0) => CNTR_INCR_DECR_ADDN_F_I_n_18,
      Q(7) => CNTR_INCR_DECR_ADDN_F_I_n_0,
      Q(6) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(5) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(4) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(3) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_5,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_6,
      Q(0) => \^q\(0),
      addr(1) => CNTR_INCR_DECR_ADDN_F_I_n_14,
      addr(0) => CNTR_INCR_DECR_ADDN_F_I_n_15,
      bus2ip_rnw => bus2ip_rnw,
      \in\(0 to 32) => \in\(0 to 32),
      rd_fifo_wr_en => rd_fifo_wr_en,
      s_axi_aclk => s_axi_aclk,
      s_axi_mem_rdata(31 downto 0) => s_axi_mem_rdata(31 downto 0),
      s_axi_mem_rresp(0) => s_axi_mem_rresp(0)
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => rd_fifo_full,
      R => SS(0)
    );
\FSM_sequential_emc_addr_ps[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C000A00FCF0FAF"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => \FSM_sequential_emc_addr_ps[0]_i_2_n_0\,
      I2 => bus2ip_rd_req_reg_reg(2),
      I3 => bus2ip_rd_req_reg_reg(1),
      I4 => bus2ip_rd_req_reg_reg(0),
      I5 => \FSM_sequential_emc_addr_ps_reg[0]_4\,
      O => \^d\(0)
    );
\FSM_sequential_emc_addr_ps[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0FFFBFBFBFF"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => \FSM_sequential_emc_addr_ps_reg[0]_0\,
      I2 => \burst_addr_cnt_reg[7]_0\,
      I3 => \FSM_sequential_emc_addr_ps_reg[0]_2\,
      I4 => \FSM_sequential_emc_addr_ps_reg[0]_3\,
      I5 => \FSM_sequential_emc_addr_ps_reg[0]_1\,
      O => \FSM_sequential_emc_addr_ps[0]_i_2_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077757575"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps_reg[1]\,
      I1 => addr_sm_ps_IDLE_reg_reg_0,
      I2 => \FSM_sequential_emc_addr_ps_reg[1]_0\,
      I3 => \FSM_sequential_emc_addr_ps_reg[1]_1\,
      I4 => \FSM_sequential_emc_addr_ps_reg[1]_2\,
      I5 => \FSM_sequential_emc_addr_ps[1]_i_7_n_0\,
      O => \^d\(1)
    );
\FSM_sequential_emc_addr_ps[1]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => \FSM_sequential_emc_addr_ps_reg[0]_0\,
      I2 => \FSM_sequential_emc_addr_ps_reg[0]_1\,
      O => \FSM_sequential_emc_addr_ps[1]_i_16_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAA8A8"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps_reg[1]_3\,
      I1 => addr_sm_ps_IDLE_reg_reg_0,
      I2 => \FSM_sequential_emc_addr_ps[1]_i_16_n_0\,
      I3 => \FSM_sequential_emc_addr_ps_reg[0]_2\,
      I4 => \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0\,
      I5 => \burst_addr_cnt_reg[7]_0\,
      O => \FSM_sequential_emc_addr_ps[1]_i_7_n_0\
    );
\PERBIT_GEN[0].XORCY_i1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(7),
      I1 => burst_cnt_i(0),
      I2 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_0\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(6),
      I1 => burst_cnt_i(1),
      I2 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(5),
      I1 => burst_cnt_i(2),
      I2 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(4),
      I1 => burst_cnt_i(3),
      I2 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(3),
      I1 => burst_cnt_i(4),
      I2 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      O => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[5].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(2),
      I1 => burst_cnt_i(5),
      I2 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      O => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[6].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(1),
      I1 => burst_cnt_i(6),
      I2 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      O => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      I1 => p_0_in(0),
      I2 => temp_bus2ip_cs,
      O => CE
    );
\PERBIT_GEN[7].MULT_AND_i1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F4404"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => \FSM_sequential_emc_addr_ps_reg[0]_0\,
      I2 => \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0\,
      I3 => \FSM_sequential_emc_addr_ps_reg[0]_2\,
      I4 => \FSM_sequential_emc_addr_ps_reg[0]_1\,
      O => \^mem_decode_gen[0].rdce_out_i_reg[0]\
    );
\PERBIT_GEN[7].MULT_AND_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEAAAAAAAA"
    )
        port map (
      I0 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]\,
      I1 => rd_fifo_full,
      I2 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_0\,
      I3 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_1\,
      I4 => ip2bus_rdack,
      I5 => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_2\,
      O => \^fifo_full_reg_0\
    );
\PERBIT_GEN[7].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => burst_cnt_i(7),
      I1 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      I2 => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(0),
      O => \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\
    );
addr_sm_ps_IDLE_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FEAE"
    )
        port map (
      I0 => addr_sm_ps_IDLE_reg_reg,
      I1 => \FSM_sequential_emc_addr_ps_reg[0]_4\,
      I2 => addr_sm_ps_IDLE_reg_reg_0,
      I3 => addr_sm_ps_IDLE_reg_reg_1,
      I4 => addr_sm_ps_IDLE_reg_reg_2,
      I5 => \^d\(1),
      O => \FSM_sequential_emc_addr_ps_reg[2]_1\
    );
\burst_addr_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \rd_data_count_reg[7]\,
      I1 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      I2 => \burst_addr_cnt_reg[7]_0\,
      O => \FSM_sequential_emc_addr_ps_reg[2]\(0)
    );
\bus2ip_BE_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \bus2ip_BE_reg_reg[0]\,
      I1 => \rd_data_count_reg[7]\,
      I2 => \bus2ip_BE_reg_reg[0]_0\,
      I3 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      O => \FSM_sequential_emc_addr_ps_reg[2]_0\(0)
    );
bus2ip_rd_req_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => bus2ip_rd_req_reg_i_2_n_0,
      I1 => bus2ip_rd_req_reg_reg(0),
      I2 => bus2ip_rd_req_reg_reg(2),
      I3 => Bus2IP_RdReq_emc,
      O => \FSM_sequential_emc_addr_ps_reg[0]\
    );
bus2ip_rd_req_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F3005555"
    )
        port map (
      I0 => bus2ip_rd_req_reg_reg_0,
      I1 => \^mem_decode_gen[0].rdce_out_i_reg[0]\,
      I2 => \burst_addr_cnt_reg[7]_0\,
      I3 => Bus2IP_RdReq_emc,
      I4 => bus2ip_rd_req_reg_reg(1),
      I5 => bus2ip_rd_req_reg_reg(0),
      O => bus2ip_rd_req_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_EMC is
  port (
    burst_cnt_i : out STD_LOGIC_VECTOR ( 0 to 7 );
    ip2bus_rdack : out STD_LOGIC;
    Bus2IP_Mem_CS_d1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    transaction_done_i : out STD_LOGIC;
    cycle_cnt : out STD_LOGIC_VECTOR ( 0 to 1 );
    \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ : out STD_LOGIC;
    \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ : out STD_LOGIC;
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : out STD_LOGIC;
    mem_wen : out STD_LOGIC;
    mem_cen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_qwen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_ben : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rpn : out STD_LOGIC;
    mem_ce : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rnw : out STD_LOGIC;
    pend_rdreq : out STD_LOGIC;
    pend_wrreq : out STD_LOGIC;
    s_axi_mem_arburst_0_sp_1 : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    pend_wrreq_reg : out STD_LOGIC;
    s_axi_mem_awburst_0_sp_1 : out STD_LOGIC;
    s_axi_mem_awvalid_0 : out STD_LOGIC;
    s_axi_mem_arburst_1_sp_1 : out STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_0\ : out STD_LOGIC;
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_1\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_sequential_crnt_state_reg[4]\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    rd_fifo_wr_en : out STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\ : out STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_dq_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_dq_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ip2bus_addrack : in STD_LOGIC;
    S : in STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    reset_fifo : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    IP2Bus_RdAck0 : in STD_LOGIC;
    bus2Mem_RdReq : in STD_LOGIC;
    Cycle_cnt_en_int : in STD_LOGIC;
    S_0 : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\ : in STD_LOGIC;
    bus2ip_addr_temp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    bus2ip_ben_fixed : in STD_LOGIC_VECTOR ( 0 to 3 );
    \DATA_STORE_GEN[24].WRDATA_REG\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC\ : in STD_LOGIC;
    temp_bus2ip_cs : in STD_LOGIC;
    pend_rdreq_reg : in STD_LOGIC;
    \bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC;
    Bus2IP_RdReq_emc : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\ : in STD_LOGIC;
    bus2ip_wrreq_i : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\ : in STD_LOGIC;
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_emc_addr_ps_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_0\ : in STD_LOGIC;
    \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[3]_1\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[1]_2\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : in STD_LOGIC;
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    rw_flag_reg : in STD_LOGIC;
    pend_wrreq_reg_0 : in STD_LOGIC;
    \DATA_STORE_GEN[0].WRDATA_REG\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state_reg[0]_1\ : in STD_LOGIC;
    pend_rdreq_reg_0 : in STD_LOGIC;
    \PERBIT_GEN[7].MULT_AND_i1_i_3\ : in STD_LOGIC;
    rdce_out_i : in STD_LOGIC;
    \PERBIT_GEN[7].MULT_AND_i1_i_3_0\ : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    s_axi_mem_wlast : in STD_LOGIC;
    bus2ip_burst : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0\ : in STD_LOGIC;
    \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_1\ : in STD_LOGIC;
    mem_dq_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rdclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_EMC : entity is "EMC";
end AXI_bd_0_axi_emc_0_0_EMC;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_EMC is
  signal ADDR_COUNTER_MUX_I_n_34 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_35 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_36 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_38 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_39 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_41 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_42 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_43 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_44 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_45 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_46 : STD_LOGIC;
  signal ADDR_COUNTER_MUX_I_n_47 : STD_LOGIC;
  signal COUNTERS_I_n_32 : STD_LOGIC;
  signal COUNTERS_I_n_33 : STD_LOGIC;
  signal COUNTERS_I_n_34 : STD_LOGIC;
  signal COUNTERS_I_n_35 : STD_LOGIC;
  signal COUNTERS_I_n_36 : STD_LOGIC;
  signal COUNTERS_I_n_37 : STD_LOGIC;
  signal COUNTERS_I_n_39 : STD_LOGIC;
  signal COUNTERS_I_n_40 : STD_LOGIC;
  signal COUNTERS_I_n_41 : STD_LOGIC;
  signal COUNTERS_I_n_42 : STD_LOGIC;
  signal COUNTERS_I_n_43 : STD_LOGIC;
  signal COUNTERS_I_n_44 : STD_LOGIC;
  signal COUNTERS_I_n_47 : STD_LOGIC;
  signal COUNTERS_I_n_48 : STD_LOGIC;
  signal COUNTERS_I_n_49 : STD_LOGIC;
  signal \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/CE\ : STD_LOGIC;
  signal \^datawidth_match_gen.addr_cnt_i_reg[0]\ : STD_LOGIC;
  signal \^datawidth_match_gen.addr_cnt_i_reg[1]\ : STD_LOGIC;
  signal \^fsm_sequential_crnt_state_reg[2]\ : STD_LOGIC;
  signal IPIC_IF_I_n_11 : STD_LOGIC;
  signal IPIC_IF_I_n_12 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_10 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_11 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_14 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_34 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_35 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_57 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_58 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_59 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_67 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_79 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_80 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_81 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_82 : STD_LOGIC;
  signal MEM_STATE_MACHINE_I_n_83 : STD_LOGIC;
  signal MEM_STEER_I_n_34 : STD_LOGIC;
  signal MEM_STEER_I_n_35 : STD_LOGIC;
  signal MEM_STEER_I_n_36 : STD_LOGIC;
  signal MEM_STEER_I_n_37 : STD_LOGIC;
  signal MEM_STEER_I_n_38 : STD_LOGIC;
  signal MEM_STEER_I_n_39 : STD_LOGIC;
  signal MEM_STEER_I_n_40 : STD_LOGIC;
  signal MEM_STEER_I_n_41 : STD_LOGIC;
  signal Mem_DQ_I_v : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^perbit_gen[0].ff_rst0_gen.fdre_i1\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1\ : STD_LOGIC;
  signal \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\ : STD_LOGIC;
  signal \^perbit_gen[7].ff_rst0_gen.fdre_i1\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \THZCNT_I/CE\ : STD_LOGIC;
  signal \TLZCNT_I/CE\ : STD_LOGIC;
  signal \TPACCCNT_I/CE\ : STD_LOGIC;
  signal \TPACCCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TPACCCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TPACCCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TRDCNT_I/CE\ : STD_LOGIC;
  signal \TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TRDCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWPHCNT_I/CE\ : STD_LOGIC;
  signal \TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWRCNT_I/CE\ : STD_LOGIC;
  signal \TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \T_WRREC_CNT_I/S\ : STD_LOGIC;
  signal crnt_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_strobe_c : STD_LOGIC;
  signal mem2Bus_Data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal mem_CEN_cmb : STD_LOGIC;
  signal mem_OEN_cmb : STD_LOGIC;
  signal mem_RNW_cmb : STD_LOGIC;
  signal mem_WEN_cmb : STD_LOGIC;
  signal mem_ben_int : STD_LOGIC;
  signal mem_ce_int : STD_LOGIC;
  signal mem_dq_t_int : STD_LOGIC_VECTOR ( 7 to 7 );
  signal mem_dqt_t_d : STD_LOGIC;
  signal mem_qwen_int : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \^pend_rdreq\ : STD_LOGIC;
  signal \^pend_wrreq\ : STD_LOGIC;
  signal \^pend_wrreq_reg\ : STD_LOGIC;
  signal read_ack : STD_LOGIC;
  signal read_data_en : STD_LOGIC;
  signal read_data_en_cmb : STD_LOGIC;
  signal s_axi_mem_arburst_0_sn_1 : STD_LOGIC;
  signal s_axi_mem_arburst_1_sn_1 : STD_LOGIC;
  signal s_axi_mem_awburst_0_sn_1 : STD_LOGIC;
  signal tpacc_cnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal tpacc_cnt_en : STD_LOGIC;
  signal trd_cnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal trd_cnt_en : STD_LOGIC;
  signal twph_cnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal twph_cnt_en : STD_LOGIC;
  signal twr_cnt_en : STD_LOGIC;
  signal twr_rec_cnt : STD_LOGIC_VECTOR ( 0 to 15 );
  signal twr_rec_cnt_en_int : STD_LOGIC;
begin
  \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\ <= \^datawidth_match_gen.addr_cnt_i_reg[0]\;
  \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\ <= \^datawidth_match_gen.addr_cnt_i_reg[1]\;
  \FSM_sequential_crnt_state_reg[2]\ <= \^fsm_sequential_crnt_state_reg[2]\;
  \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ <= \^perbit_gen[0].ff_rst0_gen.fdre_i1\;
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1\;
  \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ <= \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\;
  \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ <= \^perbit_gen[7].ff_rst0_gen.fdre_i1\;
  Q(0) <= \^q\(0);
  pend_rdreq <= \^pend_rdreq\;
  pend_wrreq <= \^pend_wrreq\;
  pend_wrreq_reg <= \^pend_wrreq_reg\;
  s_axi_mem_arburst_0_sp_1 <= s_axi_mem_arburst_0_sn_1;
  s_axi_mem_arburst_1_sp_1 <= s_axi_mem_arburst_1_sn_1;
  s_axi_mem_awburst_0_sp_1 <= s_axi_mem_awburst_0_sn_1;
ADDR_COUNTER_MUX_I: entity work.AXI_bd_0_axi_emc_0_0_addr_counter_mux
     port map (
      \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ => \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\,
      CE => \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/CE\,
      Cycle_cnt_en_int => Cycle_cnt_en_int,
      D(1) => \^datawidth_match_gen.addr_cnt_i_reg[0]\,
      D(0) => \^datawidth_match_gen.addr_cnt_i_reg[1]\,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\ => MEM_STATE_MACHINE_I_n_57,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0\ => MEM_STATE_MACHINE_I_n_59,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_1\ => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0\,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_2\ => MEM_STATE_MACHINE_I_n_58,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\ => MEM_STATE_MACHINE_I_n_83,
      \DATA_STORE_GEN[0].WRDATA_REG\ => \DATA_STORE_GEN[0].WRDATA_REG\,
      \FSM_sequential_crnt_state[1]_i_6\ => MEM_STATE_MACHINE_I_n_11,
      \FSM_sequential_crnt_state[2]_i_2\ => \FSM_sequential_crnt_state_reg[1]_2\,
      \FSM_sequential_crnt_state[2]_i_2_0\ => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\,
      \FSM_sequential_crnt_state[2]_i_2_1\ => IPIC_IF_I_n_12,
      \FSM_sequential_crnt_state_reg[0]\ => ADDR_COUNTER_MUX_I_n_44,
      \FSM_sequential_crnt_state_reg[0]_0\ => \FSM_sequential_crnt_state_reg[0]_0\,
      \FSM_sequential_crnt_state_reg[0]_1\ => \FSM_sequential_crnt_state_reg[0]_1\,
      \FSM_sequential_crnt_state_reg[0]_2\ => MEM_STATE_MACHINE_I_n_79,
      \FSM_sequential_crnt_state_reg[0]_3\ => MEM_STATE_MACHINE_I_n_67,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => ADDR_COUNTER_MUX_I_n_39,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => ADDR_COUNTER_MUX_I_n_41,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ => cycle_cnt(0),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => ADDR_COUNTER_MUX_I_n_42,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ => ADDR_COUNTER_MUX_I_n_43,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\ => ADDR_COUNTER_MUX_I_n_45,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\ => ADDR_COUNTER_MUX_I_n_46,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4\ => \^pend_wrreq\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\ => \^perbit_gen[0].ff_rst0_gen.fdre_i1\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => cycle_cnt(1),
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => ADDR_COUNTER_MUX_I_n_34,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1\ => ADDR_COUNTER_MUX_I_n_35,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_2\ => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_3\ => ADDR_COUNTER_MUX_I_n_47,
      Q(2) => \^q\(0),
      Q(1 downto 0) => crnt_state(1 downto 0),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_0\ => MEM_STATE_MACHINE_I_n_35,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_1\ => \FSM_sequential_crnt_state_reg[3]_1\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2_2\ => MEM_STATE_MACHINE_I_n_10,
      S_0 => S_0,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2ip_addr_temp(29 downto 0) => bus2ip_addr_temp(29 downto 0),
      bus2ip_ben_fixed(0 to 3) => bus2ip_ben_fixed(0 to 3),
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      data_strobe_c => data_strobe_c,
      mem_ben_int => mem_ben_int,
      pend_wrreq_reg => ADDR_COUNTER_MUX_I_n_36,
      pend_wrreq_reg_0 => \^pend_wrreq_reg\,
      pend_wrreq_reg_1 => ADDR_COUNTER_MUX_I_n_38,
      read_data_en_cmb => read_data_en_cmb,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs
    );
COUNTERS_I: entity work.AXI_bd_0_axi_emc_0_0_counters
     port map (
      CE => \TWRCNT_I/CE\,
      CE_13 => \TPACCCNT_I/CE\,
      CE_18 => \THZCNT_I/CE\,
      CE_3 => \TWPHCNT_I/CE\,
      CE_4 => \TLZCNT_I/CE\,
      CE_9 => \TRDCNT_I/CE\,
      \FSM_sequential_crnt_state_reg[0]\ => COUNTERS_I_n_39,
      \FSM_sequential_crnt_state_reg[1]\ => ADDR_COUNTER_MUX_I_n_43,
      \FSM_sequential_crnt_state_reg[3]\ => COUNTERS_I_n_43,
      \FSM_sequential_crnt_state_reg[3]_0\ => COUNTERS_I_n_49,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => COUNTERS_I_n_37,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => COUNTERS_I_n_42,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(3) => twph_cnt(0),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(2) => twph_cnt(1),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(1) => twph_cnt(2),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(0) => twph_cnt(3),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => \^perbit_gen[0].ff_rst0_gen.fdre_i1\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(3) => p_0_in(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(2) => p_0_in(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(1) => p_0_in(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\(0) => p_0_in(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(3) => trd_cnt(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(2) => trd_cnt(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(1) => trd_cnt(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\(0) => trd_cnt(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(3) => tpacc_cnt(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(2) => tpacc_cnt(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(1) => tpacc_cnt(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(0) => tpacc_cnt(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\ => COUNTERS_I_n_40,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\ => COUNTERS_I_n_47,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\ => COUNTERS_I_n_48,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12\ => \TPACCCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17\ => \T_WRREC_CNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_2\ => \TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8\ => \TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_14,
      \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => COUNTERS_I_n_33,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => \^perbit_gen[1].ff_rst0_gen.fdre_i1\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_1\ => \TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11\ => \TPACCCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16\ => \T_WRREC_CNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7\ => \TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ => COUNTERS_I_n_34,
      \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0\ => MEM_STATE_MACHINE_I_n_81,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1\ => COUNTERS_I_n_35,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0\ => COUNTERS_I_n_36,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1\ => COUNTERS_I_n_41,
      \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_2\ => MEM_STATE_MACHINE_I_n_82,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_0\ => \TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10\ => \TPACCCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15\ => \T_WRREC_CNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6\ => \TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14\ => \T_WRREC_CNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_5\ => \TRDCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\,
      Q(2) => \^q\(0),
      Q(1 downto 0) => crnt_state(1 downto 0),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ => \^fsm_sequential_crnt_state_reg[2]\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_4\ => ADDR_COUNTER_MUX_I_n_35,
      S => \T_WRREC_CNT_I/S\,
      bus2Mem_RdReq => bus2Mem_RdReq,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wr_req_reg_reg => COUNTERS_I_n_32,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      pend_wrreq_reg => COUNTERS_I_n_44,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs,
      tpacc_cnt_en => tpacc_cnt_en,
      transaction_done_reg_reg => \^pend_wrreq\,
      trd_cnt_en => trd_cnt_en,
      twph_cnt_en => twph_cnt_en,
      twr_cnt_en => twr_cnt_en,
      twr_rec_cnt(0 to 15) => twr_rec_cnt(0 to 15),
      twr_rec_cnt_en_int => twr_rec_cnt_en_int
    );
IO_REGISTERS_I: entity work.AXI_bd_0_axi_emc_0_0_io_registers
     port map (
      D(7) => MEM_STEER_I_n_34,
      D(6) => MEM_STEER_I_n_35,
      D(5) => MEM_STEER_I_n_36,
      D(4) => MEM_STEER_I_n_37,
      D(3) => MEM_STEER_I_n_38,
      D(2) => MEM_STEER_I_n_39,
      D(1) => MEM_STEER_I_n_40,
      D(0) => MEM_STEER_I_n_41,
      Q(7) => Mem_DQ_I_v(0),
      Q(6) => Mem_DQ_I_v(1),
      Q(5) => Mem_DQ_I_v(2),
      Q(4) => Mem_DQ_I_v(3),
      Q(3) => Mem_DQ_I_v(4),
      Q(2) => Mem_DQ_I_v(5),
      Q(1) => Mem_DQ_I_v(6),
      Q(0) => Mem_DQ_I_v(7),
      bus2ip_reset => bus2ip_reset,
      mem_CEN_cmb => mem_CEN_cmb,
      mem_OEN_cmb => mem_OEN_cmb,
      mem_RNW_cmb => mem_RNW_cmb,
      mem_WEN_cmb => mem_WEN_cmb,
      mem_ben(0) => mem_ben(0),
      mem_ben_int => mem_ben_int,
      mem_ce(0) => mem_ce(0),
      mem_ce_int => mem_ce_int,
      mem_cen(0) => mem_cen(0),
      mem_dq_i(7 downto 0) => mem_dq_i(7 downto 0),
      mem_dq_o(7 downto 0) => mem_dq_o(7 downto 0),
      mem_dq_t(7 downto 0) => mem_dq_t(7 downto 0),
      \mem_dq_t_reg_reg[0]_0\(0) => mem_dq_t_int(7),
      mem_oen(0) => mem_oen(0),
      mem_qwen(0) => mem_qwen(0),
      mem_qwen_int => mem_qwen_int,
      mem_rnw => mem_rnw,
      mem_rpn => mem_rpn,
      mem_wen => mem_wen,
      rdclk => rdclk,
      s_axi_aclk => s_axi_aclk
    );
IPIC_IF_I: entity work.AXI_bd_0_axi_emc_0_0_ipic_if
     port map (
      CE => CE,
      D(31) => mem2Bus_Data(0),
      D(30) => mem2Bus_Data(1),
      D(29) => mem2Bus_Data(2),
      D(28) => mem2Bus_Data(3),
      D(27) => mem2Bus_Data(4),
      D(26) => mem2Bus_Data(5),
      D(25) => mem2Bus_Data(6),
      D(24) => mem2Bus_Data(7),
      D(23) => mem2Bus_Data(8),
      D(22) => mem2Bus_Data(9),
      D(21) => mem2Bus_Data(10),
      D(20) => mem2Bus_Data(11),
      D(19) => mem2Bus_Data(12),
      D(18) => mem2Bus_Data(13),
      D(17) => mem2Bus_Data(14),
      D(16) => mem2Bus_Data(15),
      D(15) => mem2Bus_Data(16),
      D(14) => mem2Bus_Data(17),
      D(13) => mem2Bus_Data(18),
      D(12) => mem2Bus_Data(19),
      D(11) => mem2Bus_Data(20),
      D(10) => mem2Bus_Data(21),
      D(9) => mem2Bus_Data(22),
      D(8) => mem2Bus_Data(23),
      D(7) => mem2Bus_Data(24),
      D(6) => mem2Bus_Data(25),
      D(5) => mem2Bus_Data(26),
      D(4) => mem2Bus_Data(27),
      D(3) => mem2Bus_Data(28),
      D(2) => mem2Bus_Data(29),
      D(1) => mem2Bus_Data(30),
      D(0) => mem2Bus_Data(31),
      \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_2\ => COUNTERS_I_n_33,
      \IP2Bus_Data_reg[0]_0\(31 downto 0) => \IP2Bus_Data_reg[0]\(31 downto 0),
      IP2Bus_RdAck0 => IP2Bus_RdAck0,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      Q(0) => \^q\(0),
      S => S,
      burst_cnt_i(0 to 7) => burst_cnt_i(0 to 7),
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      ip2bus_addrack => ip2bus_addrack,
      ip2bus_rdack => ip2bus_rdack,
      pend_rdreq => \^pend_rdreq\,
      pend_rdreq_reg_0 => pend_rdreq_reg,
      pend_wrreq_reg_0 => \^pend_wrreq\,
      pend_wrreq_reg_1 => IPIC_IF_I_n_11,
      pend_wrreq_reg_2 => IPIC_IF_I_n_12,
      pend_wrreq_reg_3 => MEM_STATE_MACHINE_I_n_80,
      rd_fifo_wr_en => rd_fifo_wr_en,
      reset_fifo => reset_fifo,
      s_axi_aclk => s_axi_aclk,
      temp_bus2ip_cs => temp_bus2ip_cs
    );
MEM_STATE_MACHINE_I: entity work.AXI_bd_0_axi_emc_0_0_mem_state_machine
     port map (
      Bus2IP_Mem_CS_d1_reg_0(0) => Bus2IP_Mem_CS_d1_reg(0),
      Bus2IP_RdReq_emc => Bus2IP_RdReq_emc,
      CE => \TLZCNT_I/CE\,
      CE_0 => \DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/CE\,
      CE_1 => \TWPHCNT_I/CE\,
      CE_11 => \TPACCCNT_I/CE\,
      CE_15 => \THZCNT_I/CE\,
      CE_2 => \TWRCNT_I/CE\,
      CE_6 => \TRDCNT_I/CE\,
      D(0) => \^datawidth_match_gen.addr_cnt_i_reg[1]\,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\ => MEM_STATE_MACHINE_I_n_83,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\ => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_1\ => ADDR_COUNTER_MUX_I_n_45,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_2\ => IPIC_IF_I_n_11,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_3\ => COUNTERS_I_n_43,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_4\ => \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_1\,
      \DATA_STORE_GEN[0].WRDATA_REG\ => ADDR_COUNTER_MUX_I_n_39,
      \FSM_sequential_crnt_state_reg[0]_0\ => MEM_STATE_MACHINE_I_n_35,
      \FSM_sequential_crnt_state_reg[0]_1\ => \FSM_sequential_crnt_state_reg[0]\,
      \FSM_sequential_crnt_state_reg[0]_2\ => COUNTERS_I_n_44,
      \FSM_sequential_crnt_state_reg[0]_3\ => ADDR_COUNTER_MUX_I_n_42,
      \FSM_sequential_crnt_state_reg[0]_4\ => ADDR_COUNTER_MUX_I_n_46,
      \FSM_sequential_crnt_state_reg[1]_0\ => MEM_STATE_MACHINE_I_n_10,
      \FSM_sequential_crnt_state_reg[1]_1\ => \FSM_sequential_crnt_state_reg[1]\,
      \FSM_sequential_crnt_state_reg[1]_2\ => \FSM_sequential_crnt_state_reg[1]_0\,
      \FSM_sequential_crnt_state_reg[1]_3\ => \FSM_sequential_crnt_state_reg[1]_1\,
      \FSM_sequential_crnt_state_reg[1]_4\ => MEM_STATE_MACHINE_I_n_67,
      \FSM_sequential_crnt_state_reg[1]_5\ => COUNTERS_I_n_39,
      \FSM_sequential_crnt_state_reg[1]_6\ => \^perbit_gen[1].ff_rst0_gen.fdre_i1_0\,
      \FSM_sequential_crnt_state_reg[1]_7\ => \FSM_sequential_crnt_state_reg[1]_2\,
      \FSM_sequential_crnt_state_reg[2]_0\ => \^fsm_sequential_crnt_state_reg[2]\,
      \FSM_sequential_crnt_state_reg[2]_1\ => MEM_STATE_MACHINE_I_n_79,
      \FSM_sequential_crnt_state_reg[2]_2\ => ADDR_COUNTER_MUX_I_n_44,
      \FSM_sequential_crnt_state_reg[3]_0\ => MEM_STATE_MACHINE_I_n_11,
      \FSM_sequential_crnt_state_reg[3]_1\ => \FSM_sequential_crnt_state_reg[3]\,
      \FSM_sequential_crnt_state_reg[3]_2\ => MEM_STATE_MACHINE_I_n_57,
      \FSM_sequential_crnt_state_reg[3]_3\ => MEM_STATE_MACHINE_I_n_58,
      \FSM_sequential_crnt_state_reg[3]_4\ => \FSM_sequential_crnt_state_reg[3]_0\,
      \FSM_sequential_crnt_state_reg[3]_5\ => \^perbit_gen[0].ff_rst0_gen.fdre_i1\,
      \FSM_sequential_crnt_state_reg[3]_6\ => \FSM_sequential_crnt_state_reg[3]_1\,
      \FSM_sequential_crnt_state_reg[3]_7\ => ADDR_COUNTER_MUX_I_n_36,
      \FSM_sequential_crnt_state_reg[4]_0\ => MEM_STATE_MACHINE_I_n_14,
      \FSM_sequential_crnt_state_reg[4]_1\ => \FSM_sequential_crnt_state_reg[4]\,
      \FSM_sequential_crnt_state_reg[4]_2\ => COUNTERS_I_n_48,
      \FSM_sequential_emc_addr_ps[0]_i_2\ => ADDR_COUNTER_MUX_I_n_41,
      \FSM_sequential_emc_addr_ps[0]_i_2_0\ => \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\,
      \FSM_sequential_emc_addr_ps_reg[0]\ => \FSM_sequential_emc_addr_ps_reg[0]\,
      \FSM_sequential_emc_addr_ps_reg[0]_0\ => \FSM_sequential_emc_addr_ps_reg[0]_0\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ => MEM_STATE_MACHINE_I_n_59,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => \^perbit_gen[1].ff_rst0_gen.fdre_i1\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1\ => \^pend_wrreq_reg\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\(3) => twph_cnt(0),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\(2) => twph_cnt(1),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\(1) => twph_cnt(2),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2\(0) => twph_cnt(3),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4\ => COUNTERS_I_n_36,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_5\ => COUNTERS_I_n_33,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ => \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0\ => ADDR_COUNTER_MUX_I_n_43,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(3) => trd_cnt(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(2) => trd_cnt(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(1) => trd_cnt(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1\(0) => trd_cnt(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2\ => COUNTERS_I_n_40,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\(3) => tpacc_cnt(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\(2) => tpacc_cnt(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\(1) => tpacc_cnt(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3\(0) => tpacc_cnt(3),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\(3) => p_0_in(0),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\(2) => p_0_in(1),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\(1) => p_0_in(2),
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4\(0) => p_0_in(3),
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_10\ => \TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_14\ => \TPACCCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_19\ => \TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_5\ => \TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1\ => COUNTERS_I_n_49,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_13\ => \TPACCCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_18\ => \TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_4\ => \TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_9\ => \TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_12\ => \TPACCCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_17\ => \TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_3\ => \TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_8\ => \TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ => MEM_STATE_MACHINE_I_n_81,
      \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1\ => MEM_STATE_MACHINE_I_n_82,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16\ => \TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_7\ => \TRDCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[7].MULT_AND_i1_i_3_0\ => \PERBIT_GEN[7].MULT_AND_i1_i_3\,
      \PERBIT_GEN[7].MULT_AND_i1_i_3_1\ => \PERBIT_GEN[7].MULT_AND_i1_i_3_0\,
      \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\ => \T_WRREC_CNT_I/PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\,
      Q(2) => \^q\(0),
      Q(1 downto 0) => crnt_state(1 downto 0),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]\ => COUNTERS_I_n_37,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_0\ => ADDR_COUNTER_MUX_I_n_38,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_1\ => COUNTERS_I_n_34,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[1]_2\ => COUNTERS_I_n_41,
      \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0\ => COUNTERS_I_n_35,
      S => \T_WRREC_CNT_I/S\,
      SR(0) => MEM_STATE_MACHINE_I_n_34,
      bus2Mem_RdReq => bus2Mem_RdReq,
      \bus2ip_addr_i_reg[12]\ => \bus2ip_addr_i_reg[12]\,
      \bus2ip_addr_i_reg[12]_0\ => \bus2ip_addr_i_reg[12]_0\,
      bus2ip_burst => bus2ip_burst,
      bus2ip_burst_reg_reg => MEM_STATE_MACHINE_I_n_80,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      data_strobe_c => data_strobe_c,
      mem_CEN_cmb => mem_CEN_cmb,
      mem_OEN_cmb => mem_OEN_cmb,
      mem_RNW_cmb => mem_RNW_cmb,
      mem_WEN_cmb => mem_WEN_cmb,
      \mem_a_int_reg[0]\ => COUNTERS_I_n_32,
      mem_ben_int => mem_ben_int,
      mem_ce_int => mem_ce_int,
      mem_dqt_t_d => mem_dqt_t_d,
      mem_dqt_t_d_reg(0) => mem_dq_t_int(7),
      mem_qwen_int => mem_qwen_int,
      pend_rdreq => \^pend_rdreq\,
      pend_rdreq_reg => pend_rdreq_reg_0,
      pend_wrreq_reg => \^pend_wrreq\,
      pend_wrreq_reg_0 => \^perbit_gen[7].ff_rst0_gen.fdre_i1\,
      pend_wrreq_reg_1 => pend_wrreq_reg_0,
      rdce_out_i => rdce_out_i,
      read_ack => read_ack,
      read_ack_reg_reg_0 => ADDR_COUNTER_MUX_I_n_34,
      read_data_en => read_data_en,
      read_data_en_cmb => read_data_en_cmb,
      read_data_en_reg_reg_0 => COUNTERS_I_n_47,
      read_data_en_reg_reg_1 => ADDR_COUNTER_MUX_I_n_47,
      rw_flag_reg => rw_flag_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_mem_arburst(1 downto 0) => s_axi_mem_arburst(1 downto 0),
      s_axi_mem_arburst_0_sp_1 => s_axi_mem_arburst_0_sn_1,
      s_axi_mem_arburst_1_sp_1 => s_axi_mem_arburst_1_sn_1,
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awburst(1 downto 0) => s_axi_mem_awburst(1 downto 0),
      s_axi_mem_awburst_0_sp_1 => s_axi_mem_awburst_0_sn_1,
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      s_axi_mem_awvalid_0 => s_axi_mem_awvalid_0,
      s_axi_mem_wlast => s_axi_mem_wlast,
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      temp_bus2ip_cs => temp_bus2ip_cs,
      tpacc_cnt_en => tpacc_cnt_en,
      transaction_done_i => transaction_done_i,
      transaction_done_reg_reg_0 => COUNTERS_I_n_42,
      trd_cnt_en => trd_cnt_en,
      twph_cnt_en => twph_cnt_en,
      twr_cnt_en => twr_cnt_en,
      twr_rec_cnt(0 to 15) => twr_rec_cnt(0 to 15),
      twr_rec_cnt_en_int => twr_rec_cnt_en_int,
      wlast_reg_reg_0 => IPIC_IF_I_n_12
    );
MEM_STEER_I: entity work.AXI_bd_0_axi_emc_0_0_mem_steer
     port map (
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC_0\ => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC\,
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      D(31) => mem2Bus_Data(0),
      D(30) => mem2Bus_Data(1),
      D(29) => mem2Bus_Data(2),
      D(28) => mem2Bus_Data(3),
      D(27) => mem2Bus_Data(4),
      D(26) => mem2Bus_Data(5),
      D(25) => mem2Bus_Data(6),
      D(24) => mem2Bus_Data(7),
      D(23) => mem2Bus_Data(8),
      D(22) => mem2Bus_Data(9),
      D(21) => mem2Bus_Data(10),
      D(20) => mem2Bus_Data(11),
      D(19) => mem2Bus_Data(12),
      D(18) => mem2Bus_Data(13),
      D(17) => mem2Bus_Data(14),
      D(16) => mem2Bus_Data(15),
      D(15) => mem2Bus_Data(16),
      D(14) => mem2Bus_Data(17),
      D(13) => mem2Bus_Data(18),
      D(12) => mem2Bus_Data(19),
      D(11) => mem2Bus_Data(20),
      D(10) => mem2Bus_Data(21),
      D(9) => mem2Bus_Data(22),
      D(8) => mem2Bus_Data(23),
      D(7) => mem2Bus_Data(24),
      D(6) => mem2Bus_Data(25),
      D(5) => mem2Bus_Data(26),
      D(4) => mem2Bus_Data(27),
      D(3) => mem2Bus_Data(28),
      D(2) => mem2Bus_Data(29),
      D(1) => mem2Bus_Data(30),
      D(0) => mem2Bus_Data(31),
      \DATA_STORE_GEN[24].WRDATA_REG_0\(31 downto 0) => \DATA_STORE_GEN[24].WRDATA_REG\(31 downto 0),
      \DATA_STORE_GEN[8].WRDATA_REG_0\(7) => MEM_STEER_I_n_34,
      \DATA_STORE_GEN[8].WRDATA_REG_0\(6) => MEM_STEER_I_n_35,
      \DATA_STORE_GEN[8].WRDATA_REG_0\(5) => MEM_STEER_I_n_36,
      \DATA_STORE_GEN[8].WRDATA_REG_0\(4) => MEM_STEER_I_n_37,
      \DATA_STORE_GEN[8].WRDATA_REG_0\(3) => MEM_STEER_I_n_38,
      \DATA_STORE_GEN[8].WRDATA_REG_0\(2) => MEM_STEER_I_n_39,
      \DATA_STORE_GEN[8].WRDATA_REG_0\(1) => MEM_STEER_I_n_40,
      \DATA_STORE_GEN[8].WRDATA_REG_0\(0) => MEM_STEER_I_n_41,
      Q(7) => Mem_DQ_I_v(0),
      Q(6) => Mem_DQ_I_v(1),
      Q(5) => Mem_DQ_I_v(2),
      Q(4) => Mem_DQ_I_v(3),
      Q(3) => Mem_DQ_I_v(4),
      Q(2) => Mem_DQ_I_v(5),
      Q(1) => Mem_DQ_I_v(6),
      Q(0) => Mem_DQ_I_v(7),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(1) => \^datawidth_match_gen.addr_cnt_i_reg[0]\,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1_reg[0]_0\(0) => \^datawidth_match_gen.addr_cnt_i_reg[1]\,
      SR(0) => MEM_STATE_MACHINE_I_n_34,
      bus2ip_reset => bus2ip_reset,
      data_strobe_c => data_strobe_c,
      mem_WEN_cmb => mem_WEN_cmb,
      mem_dqt_t_d => mem_dqt_t_d,
      read_ack => read_ack,
      read_data_en => read_data_en,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_axi_emc_native_interface is
  port (
    bus2ip_reset : out STD_LOGIC;
    bus2ip_addr_temp : out STD_LOGIC_VECTOR ( 29 downto 0 );
    temp_bus2ip_cs : out STD_LOGIC;
    rdce_out_i : out STD_LOGIC;
    s_axi_mem_bvalid_reg_reg_0 : out STD_LOGIC;
    Bus2IP_RdReq_emc : out STD_LOGIC;
    rw_flag_reg : out STD_LOGIC;
    s_axi_mem_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_burst : out STD_LOGIC;
    bus2ip_wrreq_i : out STD_LOGIC;
    s_axi_mem_awlen_3_sp_1 : out STD_LOGIC;
    active_high_rst_reg_0 : out STD_LOGIC;
    bus2Mem_RdReq : out STD_LOGIC;
    \burstlength_reg_reg[0]_0\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    FIFO_Full_reg : out STD_LOGIC;
    ip2bus_addrack : out STD_LOGIC;
    \burst_addr_cnt_reg[7]_0\ : out STD_LOGIC;
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    rw_flag_reg_reg_0 : out STD_LOGIC;
    s_axi_mem_wready : out STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[1]_0\ : out STD_LOGIC;
    s_axi_mem_arready : out STD_LOGIC;
    s_axi_mem_awready : out STD_LOGIC;
    s_axi_mem_wvalid_0 : out STD_LOGIC;
    CE : out STD_LOGIC;
    S : out STD_LOGIC;
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ : out STD_LOGIC;
    pend_rdreq_reg : out STD_LOGIC;
    \bus2ip_BE_reg_reg[0]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \bus2ip_BE_reg_reg[3]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1\ : out STD_LOGIC;
    IP2Bus_RdAck0 : out STD_LOGIC;
    Cycle_cnt_en_int : out STD_LOGIC;
    S_1 : out STD_LOGIC;
    \axi_trans_size_reg_reg[1]_0\ : out STD_LOGIC;
    pend_wrreq_reg : out STD_LOGIC;
    \burstlength_reg_reg[5]_0\ : out STD_LOGIC;
    s_axi_mem_rlast : out STD_LOGIC;
    s_axi_mem_rvalid : out STD_LOGIC;
    reset_fifo : out STD_LOGIC;
    bus2ip_ben_fixed : out STD_LOGIC_VECTOR ( 0 to 3 );
    type_of_xfer_reg_reg_0 : out STD_LOGIC;
    \bus2ip_BE_reg_reg[0]_1\ : out STD_LOGIC;
    bus2ip_burst_reg_reg_0 : out STD_LOGIC;
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \bus2ip_data_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_mem_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \s_axi_mem_bresp_reg_reg[1]_0\ : in STD_LOGIC;
    \bus2ip_data_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_wready_INST_0_i_2 : in STD_LOGIC;
    s_axi_mem_bready : in STD_LOGIC;
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    cycle_cnt : in STD_LOGIC_VECTOR ( 0 to 1 );
    pend_rdreq : in STD_LOGIC;
    transaction_done_i : in STD_LOGIC;
    pend_rdreq_reg_0 : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_0\ : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_mem_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_rready : in STD_LOGIC;
    \FSM_sequential_emc_addr_ps_reg[0]_1\ : in STD_LOGIC;
    s_axi_mem_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    rw_flag_reg_reg_1 : in STD_LOGIC;
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    burst_cnt_i : in STD_LOGIC_VECTOR ( 0 to 7 );
    s_axi_mem_wready_INST_0_i_1 : in STD_LOGIC;
    pend_wrreq : in STD_LOGIC;
    \PERBIT_GEN[7].MULT_AND_i1_i_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[7].MULT_AND_i1_i_3_0\ : in STD_LOGIC;
    \FSM_sequential_crnt_state[1]_i_9\ : in STD_LOGIC;
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : in STD_LOGIC;
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : in STD_LOGIC;
    \FSM_sequential_crnt_state[0]_i_5\ : in STD_LOGIC;
    pend_rdreq_reg_1 : in STD_LOGIC;
    rd_fifo_wr_en : in STD_LOGIC;
    \INFERRED_GEN.data_reg[255][8]_srl32__0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_axi_emc_native_interface : entity is "axi_emc_native_interface";
end AXI_bd_0_axi_emc_0_0_axi_emc_native_interface;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_axi_emc_native_interface is
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_19 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_25 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_6 : STD_LOGIC;
  signal AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_7 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_1 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_14 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_17 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_18 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_20 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_21 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_5 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_6 : STD_LOGIC;
  signal AXI_EMC_ADDR_GEN_INSTANCE_I_n_7 : STD_LOGIC;
  signal \^bus2ip_rdreq_emc\ : STD_LOGIC;
  signal \^fifo_full_reg\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_emc_addr_ps[2]_i_3_n_0\ : STD_LOGIC;
  signal \LEN_GEN_32.derived_len_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \LEN_GEN_32.derived_len_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \LEN_GEN_32.derived_len_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \LEN_GEN_32.derived_len_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[0].XORCY_i1_i_2_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].MUXCY_i1_i_3_n_0\ : STD_LOGIC;
  signal RDATA_FIFO_I_n_0 : STD_LOGIC;
  signal RDATA_FIFO_I_n_10 : STD_LOGIC;
  signal RDATA_FIFO_I_n_22 : STD_LOGIC;
  signal RDATA_FIFO_I_n_24 : STD_LOGIC;
  signal RDATA_FIFO_I_n_4 : STD_LOGIC;
  signal RDATA_FIFO_I_n_5 : STD_LOGIC;
  signal RDATA_FIFO_I_n_6 : STD_LOGIC;
  signal RDATA_FIFO_I_n_7 : STD_LOGIC;
  signal RDATA_FIFO_I_n_8 : STD_LOGIC;
  signal RDATA_FIFO_I_n_9 : STD_LOGIC;
  signal Type_of_xfer : STD_LOGIC;
  signal Type_of_xfer_cmb : STD_LOGIC;
  signal addr_sm_ps_IDLE_reg : STD_LOGIC;
  signal addr_sm_ps_IDLE_reg_i_2_n_0 : STD_LOGIC;
  signal addr_sm_ps_IDLE_reg_i_3_n_0 : STD_LOGIC;
  signal addr_sm_ps_idle_cmb : STD_LOGIC;
  signal \axi_trans_size_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_trans_size_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal axi_trans_size_reg_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \burst_addr_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \^burst_addr_cnt_reg[7]_0\ : STD_LOGIC;
  signal \burst_addr_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \burst_addr_cnt_reg__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal burst_data_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \burst_data_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \burst_data_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal burst_length_cmb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bus2ip_BE_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \^bus2ip_be_reg_reg[3]_0\ : STD_LOGIC;
  signal \^bus2ip_burst\ : STD_LOGIC;
  signal bus2ip_burst_reg_i_1_n_0 : STD_LOGIC;
  signal bus2ip_burstlength : STD_LOGIC_VECTOR ( 0 to 7 );
  signal bus2ip_data_reg0 : STD_LOGIC;
  signal \^bus2ip_reset\ : STD_LOGIC;
  signal bus2ip_rnw : STD_LOGIC;
  signal bus2ip_wr_req_reg_i_1_n_0 : STD_LOGIC;
  signal bus2ip_wr_req_reg_i_2_n_0 : STD_LOGIC;
  signal \^bus2ip_wrreq_i\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal derived_burst_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \derived_burst_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \derived_burst_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal derived_len_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \derived_size_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \derived_size_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \derived_size_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \derived_size_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \emc_addr_ns__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal emc_addr_ps : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^ip2bus_addrack\ : STD_LOGIC;
  signal last_data_acked : STD_LOGIC;
  signal last_data_acked_i_1_n_0 : STD_LOGIC;
  signal last_data_acked_i_3_n_0 : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rd_data_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_fifo_data_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rdce_out_i\ : STD_LOGIC;
  signal rnw_cmb : STD_LOGIC;
  signal \^rw_flag_reg\ : STD_LOGIC;
  signal rw_flag_reg_i_1_n_0 : STD_LOGIC;
  signal \^rw_flag_reg_reg_0\ : STD_LOGIC;
  signal \^s_axi_mem_arready\ : STD_LOGIC;
  signal s_axi_mem_awlen_3_sn_1 : STD_LOGIC;
  signal \^s_axi_mem_awready\ : STD_LOGIC;
  signal \^s_axi_mem_bid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_axi_mem_bid_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_mem_bid_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_mem_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_mem_bvalid_reg_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_mem_bvalid_reg_reg_0\ : STD_LOGIC;
  signal \^s_axi_mem_rid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_axi_mem_rid_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_mem_rid_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal temp_bus2ip_be : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^temp_bus2ip_cs\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BEN_STORE_GEN[0].BEN_REG_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \BEN_STORE_GEN[1].BEN_REG_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \BEN_STORE_GEN[2].BEN_REG_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \BEN_STORE_GEN[3].BEN_REG_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[1]_i_10\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[1]_i_11\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[1]_i_12\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[1]_i_13\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[1]_i_15\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[1]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[1]_i_5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[1]_i_9\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FSM_sequential_emc_addr_ps[2]_i_3\ : label is "soft_lutpair49";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_emc_addr_ps_reg[0]\ : label is "rd:010,rd_last:001,wr_wait:100,wr:011,wr_last:101,resp:110,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_emc_addr_ps_reg[1]\ : label is "rd:010,rd_last:001,wr_wait:100,wr:011,wr_last:101,resp:110,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_emc_addr_ps_reg[2]\ : label is "rd:010,rd_last:001,wr_wait:100,wr:011,wr_last:101,resp:110,idle:000";
  attribute SOFT_HLUTNM of \PERBIT_GEN[0].XORCY_i1_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \PERBIT_GEN[1].MUXCY_i1_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of addr_sm_ps_IDLE_reg_i_2 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of addr_sm_ps_IDLE_reg_i_3 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_trans_size_reg[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axi_trans_size_reg[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \burst_addr_cnt[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \burst_addr_cnt[7]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \burstlength_reg[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \burstlength_reg[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \burstlength_reg[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \burstlength_reg[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \burstlength_reg[5]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \burstlength_reg[6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \burstlength_reg[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[1]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \derived_burst_reg[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \derived_burst_reg[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \derived_size_reg[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \derived_size_reg[1]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rd_data_count[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rd_data_count[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of s_axi_mem_arready_INST_0_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of s_axi_mem_awready_INST_0 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_mem_bid_reg[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_mem_bid_reg[1]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of s_axi_mem_bvalid_reg_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_axi_mem_rid_reg[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s_axi_mem_rid_reg[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of s_axi_mem_wready_INST_0 : label is "soft_lutpair46";
begin
  Bus2IP_RdReq_emc <= \^bus2ip_rdreq_emc\;
  FIFO_Full_reg <= \^fifo_full_reg\;
  \burst_addr_cnt_reg[7]_0\ <= \^burst_addr_cnt_reg[7]_0\;
  \bus2ip_BE_reg_reg[3]_0\ <= \^bus2ip_be_reg_reg[3]_0\;
  bus2ip_burst <= \^bus2ip_burst\;
  bus2ip_reset <= \^bus2ip_reset\;
  bus2ip_wrreq_i <= \^bus2ip_wrreq_i\;
  ip2bus_addrack <= \^ip2bus_addrack\;
  rdce_out_i <= \^rdce_out_i\;
  rw_flag_reg <= \^rw_flag_reg\;
  rw_flag_reg_reg_0 <= \^rw_flag_reg_reg_0\;
  s_axi_mem_arready <= \^s_axi_mem_arready\;
  s_axi_mem_awlen_3_sp_1 <= s_axi_mem_awlen_3_sn_1;
  s_axi_mem_awready <= \^s_axi_mem_awready\;
  s_axi_mem_bid(1 downto 0) <= \^s_axi_mem_bid\(1 downto 0);
  s_axi_mem_bresp(0) <= \^s_axi_mem_bresp\(0);
  s_axi_mem_bvalid_reg_reg_0 <= \^s_axi_mem_bvalid_reg_reg_0\;
  s_axi_mem_rid(1 downto 0) <= \^s_axi_mem_rid\(1 downto 0);
  temp_bus2ip_cs <= \^temp_bus2ip_cs\;
AXI_EMC_ADDRESS_DECODE_INSTANCE_I: entity work.AXI_bd_0_axi_emc_0_0_axi_emc_address_decode
     port map (
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ => \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      Bus2IP_RdReq_d1_reg => \^fifo_full_reg\,
      Cycle_cnt_en_int => Cycle_cnt_en_int,
      \FSM_sequential_crnt_state[0]_i_5\(3 downto 0) => temp_bus2ip_be(3 downto 0),
      \FSM_sequential_crnt_state[0]_i_5_0\ => \^burst_addr_cnt_reg[7]_0\,
      \FSM_sequential_crnt_state[0]_i_5_1\ => \FSM_sequential_crnt_state[0]_i_5\,
      \FSM_sequential_crnt_state[1]_i_9\ => \FSM_sequential_crnt_state[1]_i_9\,
      \FSM_sequential_crnt_state[2]_i_4\ => \^bus2ip_be_reg_reg[3]_0\,
      \FSM_sequential_emc_addr_ps[0]_i_7_0\(7) => bus2ip_burstlength(0),
      \FSM_sequential_emc_addr_ps[0]_i_7_0\(6) => bus2ip_burstlength(1),
      \FSM_sequential_emc_addr_ps[0]_i_7_0\(5) => bus2ip_burstlength(2),
      \FSM_sequential_emc_addr_ps[0]_i_7_0\(4) => bus2ip_burstlength(3),
      \FSM_sequential_emc_addr_ps[0]_i_7_0\(3) => bus2ip_burstlength(4),
      \FSM_sequential_emc_addr_ps[0]_i_7_0\(2) => bus2ip_burstlength(5),
      \FSM_sequential_emc_addr_ps[0]_i_7_0\(1) => bus2ip_burstlength(6),
      \FSM_sequential_emc_addr_ps[0]_i_7_0\(0) => bus2ip_burstlength(7),
      \INFERRED_GEN.cnt_i_reg[3]_rep__0\(0) => RDATA_FIFO_I_n_0,
      IP2Bus_RdAck0 => IP2Bus_RdAck0,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \^temp_bus2ip_cs\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4\(2 downto 0) => emc_addr_ps(2 downto 0),
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\ => \^rdce_out_i\,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1\ => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_2\ => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3\ => \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1\,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_4\ => RDATA_FIFO_I_n_22,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_5\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ => \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[0].XORCY_i1_i_2_n_0\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => \PERBIT_GEN[1].MUXCY_i1_i_3_n_0\,
      \PERBIT_GEN[7].MULT_AND_i1_i_3\ => \PERBIT_GEN[7].MULT_AND_i1_i_3\,
      \PERBIT_GEN[7].MULT_AND_i1_i_3_0\(0) => Q(0),
      \PERBIT_GEN[7].MULT_AND_i1_i_3_1\ => \PERBIT_GEN[7].MULT_AND_i1_i_3_0\,
      Q(3 downto 0) => \burst_addr_cnt_reg__0\(7 downto 4),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\ => \^bus2ip_wrreq_i\,
      S(0) => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_6,
      SS(0) => \^bus2ip_reset\,
      S_1 => S_1,
      Type_of_xfer => Type_of_xfer,
      active_high_rst_reg => active_high_rst_reg_0,
      addr_sm_ps_idle_cmb => addr_sm_ps_idle_cmb,
      axi_trans_size_reg_int(1 downto 0) => axi_trans_size_reg_int(1 downto 0),
      \axi_trans_size_reg_reg[1]\ => \axi_trans_size_reg_reg[1]_0\,
      \burst_data_cnt_reg[4]\ => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_19,
      \burst_data_cnt_reg[6]\ => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_7,
      \burstlength_reg_reg[0]\ => \burstlength_reg_reg[0]_0\,
      \burstlength_reg_reg[5]\ => \burstlength_reg_reg[5]_0\,
      \bus2ip_BE_reg_reg[0]\ => \bus2ip_BE_reg_reg[0]_0\,
      bus2ip_burst => \^bus2ip_burst\,
      bus2ip_burst_reg_reg => bus2ip_burst_reg_reg_0,
      cycle_cnt(0 to 1) => cycle_cnt(0 to 1),
      \in\(0) => rd_fifo_data_in(0),
      ip2bus_rdack => ip2bus_rdack,
      last_data_acked_reg(7 downto 0) => burst_data_cnt(7 downto 0),
      pend_rdreq => pend_rdreq,
      pend_rdreq_reg => bus2Mem_RdReq,
      pend_rdreq_reg_0 => pend_rdreq_reg,
      pend_rdreq_reg_1 => pend_rdreq_reg_1,
      pend_rdreq_reg_2 => pend_rdreq_reg_0,
      pend_wrreq => pend_wrreq,
      pend_wrreq_reg => pend_wrreq_reg,
      reset_fifo => reset_fifo,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_mem_bresp(0) => \^s_axi_mem_bresp\(0),
      \s_axi_mem_bresp_reg_reg[1]\ => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_25,
      \s_axi_mem_bresp_reg_reg[1]_0\ => \s_axi_mem_bresp_reg_reg[1]_0\,
      s_axi_mem_wready_INST_0_i_1 => s_axi_mem_wready_INST_0_i_1,
      s_axi_mem_wready_INST_0_i_2_0 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_20,
      s_axi_mem_wready_INST_0_i_2_1 => s_axi_mem_wready_INST_0_i_2,
      transaction_done_i => transaction_done_i
    );
AXI_EMC_ADDR_GEN_INSTANCE_I: entity work.AXI_bd_0_axi_emc_0_0_axi_emc_addr_gen
     port map (
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11]_0\(5 downto 0) => bus2ip_addr_temp(9 downto 4),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0\ => bus2ip_addr_temp(0),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1\(1 downto 0) => derived_burst_reg(1 downto 0),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2\ => RDATA_FIFO_I_n_6,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0\ => bus2ip_addr_temp(1),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0\ => bus2ip_addr_temp(2),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0\ => bus2ip_addr_temp(3),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1\(3 downto 0) => derived_len_reg(3 downto 0),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_0\ => \^fifo_full_reg\,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_1\ => \^ip2bus_addrack\,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(1) => \derived_size_reg_reg_n_0_[1]\,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0\(0) => \derived_size_reg_reg_n_0_[0]\,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_1\ => \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]\,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_2\ => RDATA_FIFO_I_n_4,
      E(0) => RDATA_FIFO_I_n_5,
      \FSM_sequential_emc_addr_ps_reg[1]\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_14,
      \FSM_sequential_emc_addr_ps_reg[1]_0\ => \FSM_sequential_emc_addr_ps_reg[1]_0\,
      \FSM_sequential_emc_addr_ps_reg[1]_1\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_18,
      \FSM_sequential_emc_addr_ps_reg[2]\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      \FSM_sequential_emc_addr_ps_reg[2]_0\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_6,
      \PERBIT_GEN[7].MULT_AND_i1_i_2\(2 downto 0) => burst_data_cnt(7 downto 5),
      Q(2 downto 0) => emc_addr_ps(2 downto 0),
      \burst_addr_cnt_reg[0]\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_20,
      \burst_addr_cnt_reg[7]\ => \^burst_addr_cnt_reg[7]_0\,
      \burst_addr_cnt_reg[7]_0\(7 downto 1) => \burst_addr_cnt_reg__0\(7 downto 1),
      \burst_addr_cnt_reg[7]_0\(0) => \burst_addr_cnt_reg__1\(0),
      \burst_data_cnt_reg[7]\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_17,
      \bus2ip_addr_i[31]_i_3\ => \^rw_flag_reg\,
      \bus2ip_addr_i_reg[12]_0\ => \bus2ip_addr_i_reg[12]\,
      bus2ip_addr_temp(19 downto 0) => bus2ip_addr_temp(29 downto 10),
      bus2ip_rnw => bus2ip_rnw,
      \derived_size_reg[1]_i_4_0\(7 downto 0) => \rd_data_count_reg__0\(7 downto 0),
      ip2bus_rdack => ip2bus_rdack,
      last_data_acked => last_data_acked,
      \rd_data_count_reg[3]\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_21,
      rnw_reg_reg => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      rw_flag_reg_reg => \^rw_flag_reg_reg_0\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1,
      s_axi_mem_araddr(31 downto 0) => s_axi_mem_araddr(31 downto 0),
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awaddr(31 downto 0) => s_axi_mem_awaddr(31 downto 0),
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      s_axi_mem_rready => s_axi_mem_rready
    );
\BEN_STORE_GEN[0].BEN_REG_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => temp_bus2ip_be(0),
      O => bus2ip_ben_fixed(0)
    );
\BEN_STORE_GEN[1].BEN_REG_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => temp_bus2ip_be(1),
      O => bus2ip_ben_fixed(1)
    );
\BEN_STORE_GEN[2].BEN_REG_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => temp_bus2ip_be(2),
      O => bus2ip_ben_fixed(2)
    );
\BEN_STORE_GEN[3].BEN_REG_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => temp_bus2ip_be(3),
      O => bus2ip_ben_fixed(3)
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000A8"
    )
        port map (
      I0 => Type_of_xfer,
      I1 => temp_bus2ip_be(2),
      I2 => temp_bus2ip_be(3),
      I3 => temp_bus2ip_be(1),
      I4 => temp_bus2ip_be(0),
      O => type_of_xfer_reg_reg_0
    );
\DATAWIDTH_MATCH_GEN.addr_cnt_i[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444040"
    )
        port map (
      I0 => temp_bus2ip_be(0),
      I1 => Type_of_xfer,
      I2 => temp_bus2ip_be(1),
      I3 => temp_bus2ip_be(2),
      I4 => temp_bus2ip_be(3),
      O => \bus2ip_BE_reg_reg[0]_1\
    );
\FSM_sequential_crnt_state[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^burst_addr_cnt_reg[7]_0\,
      I1 => temp_bus2ip_be(3),
      I2 => temp_bus2ip_be(1),
      I3 => temp_bus2ip_be(2),
      I4 => temp_bus2ip_be(0),
      O => \^bus2ip_be_reg_reg[3]_0\
    );
\FSM_sequential_emc_addr_ps[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000FF0F0000"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => \s_axi_mem_bresp_reg_reg[1]_0\,
      I2 => s_axi_mem_rready,
      I3 => \FSM_sequential_emc_addr_ps[1]_i_17_n_0\,
      I4 => emc_addr_ps(0),
      I5 => emc_addr_ps(1),
      O => s_axi_mem_wvalid_0
    );
\FSM_sequential_emc_addr_ps[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => s_axi_mem_arlen(1),
      I1 => s_axi_mem_awlen(1),
      I2 => s_axi_mem_arlen(0),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I4 => s_axi_mem_awlen(0),
      O => \FSM_sequential_emc_addr_ps[1]_i_10_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_mem_arlen(7),
      I1 => s_axi_mem_awlen(7),
      I2 => s_axi_mem_arlen(6),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I4 => s_axi_mem_awlen(6),
      O => \FSM_sequential_emc_addr_ps[1]_i_11_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_mem_arlen(5),
      I1 => s_axi_mem_awlen(5),
      I2 => s_axi_mem_arlen(4),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I4 => s_axi_mem_awlen(4),
      O => \FSM_sequential_emc_addr_ps[1]_i_12_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \burst_addr_cnt_reg__0\(3),
      I1 => \burst_addr_cnt_reg__0\(2),
      O => \FSM_sequential_emc_addr_ps[1]_i_13_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \burst_addr_cnt_reg__0\(5),
      I1 => \burst_addr_cnt_reg__0\(6),
      I2 => \burst_addr_cnt_reg__0\(4),
      I3 => \burst_addr_cnt_reg__0\(7),
      O => \FSM_sequential_emc_addr_ps[1]_i_14_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D000F00"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => emc_addr_ps(0),
      I2 => emc_addr_ps(1),
      I3 => emc_addr_ps(2),
      I4 => \^burst_addr_cnt_reg[7]_0\,
      O => \FSM_sequential_emc_addr_ps[1]_i_15_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \rd_data_count_reg__0\(7),
      I1 => \rd_data_count_reg__0\(4),
      I2 => \rd_data_count_reg__0\(6),
      I3 => \rd_data_count_reg__0\(5),
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_21,
      I5 => last_data_acked,
      O => \FSM_sequential_emc_addr_ps[1]_i_17_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F0F"
    )
        port map (
      I0 => s_axi_mem_bready,
      I1 => \^s_axi_mem_bvalid_reg_reg_0\,
      I2 => emc_addr_ps(2),
      I3 => emc_addr_ps(1),
      O => \FSM_sequential_emc_addr_ps[1]_i_2_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => emc_addr_ps(2),
      I1 => emc_addr_ps(1),
      I2 => emc_addr_ps(0),
      O => \FSM_sequential_emc_addr_ps[1]_i_3_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFFFFEF"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[1]_i_8_n_0\,
      I1 => \FSM_sequential_emc_addr_ps[1]_i_9_n_0\,
      I2 => \FSM_sequential_emc_addr_ps[1]_i_10_n_0\,
      I3 => \FSM_sequential_emc_addr_ps[1]_i_11_n_0\,
      I4 => \FSM_sequential_emc_addr_ps[1]_i_12_n_0\,
      I5 => \bus2ip_addr_i_reg[12]\,
      O => \FSM_sequential_emc_addr_ps[1]_i_4_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => emc_addr_ps(1),
      I1 => emc_addr_ps(0),
      O => \FSM_sequential_emc_addr_ps[1]_i_5_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFF0000"
    )
        port map (
      I0 => \burst_addr_cnt_reg__1\(0),
      I1 => \burst_addr_cnt_reg__0\(1),
      I2 => \FSM_sequential_emc_addr_ps[1]_i_13_n_0\,
      I3 => \FSM_sequential_emc_addr_ps[1]_i_14_n_0\,
      I4 => \s_axi_mem_bresp_reg_reg[1]_0\,
      I5 => s_axi_mem_wvalid,
      O => \FSM_sequential_emc_addr_ps[1]_i_6_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2022"
    )
        port map (
      I0 => emc_addr_ps(1),
      I1 => emc_addr_ps(0),
      I2 => \FSM_sequential_emc_addr_ps[1]_i_17_n_0\,
      I3 => s_axi_mem_rready,
      O => \FSM_sequential_emc_addr_ps[1]_i_8_n_0\
    );
\FSM_sequential_emc_addr_ps[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_mem_arlen(3),
      I1 => s_axi_mem_awlen(3),
      I2 => s_axi_mem_arlen(2),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I4 => s_axi_mem_awlen(2),
      O => \FSM_sequential_emc_addr_ps[1]_i_9_n_0\
    );
\FSM_sequential_emc_addr_ps[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8AAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[2]_i_2_n_0\,
      I1 => emc_addr_ps(1),
      I2 => \^burst_addr_cnt_reg[7]_0\,
      I3 => emc_addr_ps(2),
      I4 => emc_addr_ps(0),
      I5 => s_axi_mem_wvalid,
      O => \emc_addr_ns__0\(2)
    );
\FSM_sequential_emc_addr_ps[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002F22FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_emc_addr_ps[1]_i_5_n_0\,
      I1 => \FSM_sequential_emc_addr_ps[1]_i_6_n_0\,
      I2 => \FSM_sequential_emc_addr_ps[2]_i_3_n_0\,
      I3 => s_axi_mem_awlen_3_sn_1,
      I4 => \FSM_sequential_emc_addr_ps[1]_i_3_n_0\,
      I5 => \FSM_sequential_emc_addr_ps[1]_i_2_n_0\,
      O => \FSM_sequential_emc_addr_ps[2]_i_2_n_0\
    );
\FSM_sequential_emc_addr_ps[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF57"
    )
        port map (
      I0 => \bus2ip_data_reg_reg[0]_0\,
      I1 => s_axi_mem_awburst(0),
      I2 => s_axi_mem_awburst(1),
      I3 => emc_addr_ps(0),
      I4 => emc_addr_ps(1),
      O => \FSM_sequential_emc_addr_ps[2]_i_3_n_0\
    );
\FSM_sequential_emc_addr_ps_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \emc_addr_ns__0\(0),
      Q => emc_addr_ps(0),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\FSM_sequential_emc_addr_ps_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \emc_addr_ns__0\(1),
      Q => emc_addr_ps(1),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\FSM_sequential_emc_addr_ps_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \emc_addr_ns__0\(2),
      Q => emc_addr_ps(2),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\LEN_GEN_32.derived_len_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => burst_length_cmb(0),
      I1 => p_0_in1_in,
      I2 => burst_length_cmb(1),
      I3 => \derived_size_reg[0]_i_1_n_0\,
      I4 => burst_length_cmb(2),
      O => \LEN_GEN_32.derived_len_reg[0]_i_1_n_0\
    );
\LEN_GEN_32.derived_len_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => burst_length_cmb(1),
      I1 => p_0_in1_in,
      I2 => burst_length_cmb(2),
      I3 => \derived_size_reg[0]_i_1_n_0\,
      I4 => burst_length_cmb(3),
      O => \LEN_GEN_32.derived_len_reg[1]_i_1_n_0\
    );
\LEN_GEN_32.derived_len_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8000000B800"
    )
        port map (
      I0 => s_axi_mem_awsize(0),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arsize(0),
      I3 => burst_length_cmb(3),
      I4 => p_0_in1_in,
      I5 => burst_length_cmb(2),
      O => \LEN_GEN_32.derived_len_reg[2]_i_1_n_0\
    );
\LEN_GEN_32.derived_len_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_mem_arsize(1),
      I1 => s_axi_mem_awsize(1),
      I2 => s_axi_mem_arlen(3),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I4 => s_axi_mem_awlen(3),
      O => \LEN_GEN_32.derived_len_reg[3]_i_1_n_0\
    );
\LEN_GEN_32.derived_len_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => \LEN_GEN_32.derived_len_reg[0]_i_1_n_0\,
      Q => derived_len_reg(0),
      R => '0'
    );
\LEN_GEN_32.derived_len_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => \LEN_GEN_32.derived_len_reg[1]_i_1_n_0\,
      Q => derived_len_reg(1),
      R => '0'
    );
\LEN_GEN_32.derived_len_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => \LEN_GEN_32.derived_len_reg[2]_i_1_n_0\,
      Q => derived_len_reg(2),
      R => '0'
    );
\LEN_GEN_32.derived_len_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => \LEN_GEN_32.derived_len_reg[3]_i_1_n_0\,
      Q => derived_len_reg(3),
      R => '0'
    );
\PERBIT_GEN[0].XORCY_i1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA880000"
    )
        port map (
      I0 => temp_bus2ip_be(0),
      I1 => temp_bus2ip_be(2),
      I2 => temp_bus2ip_be(1),
      I3 => temp_bus2ip_be(3),
      I4 => Type_of_xfer,
      O => \PERBIT_GEN[0].XORCY_i1_i_2_n_0\
    );
\PERBIT_GEN[1].MUXCY_i1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A060E000"
    )
        port map (
      I0 => temp_bus2ip_be(3),
      I1 => temp_bus2ip_be(1),
      I2 => Type_of_xfer,
      I3 => temp_bus2ip_be(0),
      I4 => temp_bus2ip_be(2),
      O => \PERBIT_GEN[1].MUXCY_i1_i_3_n_0\
    );
RDATA_FIFO_I: entity work.AXI_bd_0_axi_emc_0_0_srl_fifo_rbu_f
     port map (
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]\(0) => derived_burst_reg(0),
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_18,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_0\ => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_19,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_1\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_17,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0]_2\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_6,
      Bus2IP_RdReq_emc => \^bus2ip_rdreq_emc\,
      CE => CE,
      D(1 downto 0) => \emc_addr_ns__0\(1 downto 0),
      E(0) => RDATA_FIFO_I_n_5,
      FIFO_Full_reg_0 => \^fifo_full_reg\,
      FIFO_Full_reg_1 => RDATA_FIFO_I_n_4,
      \FSM_sequential_emc_addr_ps_reg[0]\ => RDATA_FIFO_I_n_24,
      \FSM_sequential_emc_addr_ps_reg[0]_0\ => \^rdce_out_i\,
      \FSM_sequential_emc_addr_ps_reg[0]_1\ => \^bus2ip_wrreq_i\,
      \FSM_sequential_emc_addr_ps_reg[0]_2\ => pend_rdreq_reg_0,
      \FSM_sequential_emc_addr_ps_reg[0]_3\ => \FSM_sequential_emc_addr_ps_reg[0]_0\,
      \FSM_sequential_emc_addr_ps_reg[0]_4\ => \FSM_sequential_emc_addr_ps_reg[0]_1\,
      \FSM_sequential_emc_addr_ps_reg[1]\ => \FSM_sequential_emc_addr_ps[1]_i_2_n_0\,
      \FSM_sequential_emc_addr_ps_reg[1]_0\ => \FSM_sequential_emc_addr_ps[1]_i_4_n_0\,
      \FSM_sequential_emc_addr_ps_reg[1]_1\ => \FSM_sequential_emc_addr_ps[1]_i_5_n_0\,
      \FSM_sequential_emc_addr_ps_reg[1]_2\ => \FSM_sequential_emc_addr_ps[1]_i_6_n_0\,
      \FSM_sequential_emc_addr_ps_reg[1]_3\ => \FSM_sequential_emc_addr_ps[1]_i_15_n_0\,
      \FSM_sequential_emc_addr_ps_reg[2]\(0) => RDATA_FIFO_I_n_7,
      \FSM_sequential_emc_addr_ps_reg[2]_0\(0) => RDATA_FIFO_I_n_9,
      \FSM_sequential_emc_addr_ps_reg[2]_1\ => RDATA_FIFO_I_n_10,
      \FSM_sequential_emc_addr_ps_reg[2]_2\ => RDATA_FIFO_I_n_22,
      \INFERRED_GEN.cnt_i_reg[8]\(0) => RDATA_FIFO_I_n_8,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ => \^ip2bus_addrack\,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\ => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_7,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(7) => bus2ip_burstlength(0),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(6) => bus2ip_burstlength(1),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(5) => bus2ip_burstlength(2),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(4) => bus2ip_burstlength(3),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(3) => bus2ip_burstlength(4),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(2) => bus2ip_burstlength(5),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(1) => bus2ip_burstlength(6),
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\(0) => bus2ip_burstlength(7),
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_0\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_0\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ => S,
      \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0\ => \s_axi_mem_bresp_reg_reg[1]_0\,
      Q(0) => RDATA_FIFO_I_n_0,
      S(0) => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_6,
      SS(0) => \^bus2ip_reset\,
      addr_sm_ps_IDLE_reg_reg => addr_sm_ps_IDLE_reg_i_2_n_0,
      addr_sm_ps_IDLE_reg_reg_0 => \FSM_sequential_emc_addr_ps[1]_i_3_n_0\,
      addr_sm_ps_IDLE_reg_reg_1 => addr_sm_ps_IDLE_reg_i_3_n_0,
      addr_sm_ps_IDLE_reg_reg_2 => \FSM_sequential_emc_addr_ps[2]_i_2_n_0\,
      \burst_addr_cnt_reg[7]\ => RDATA_FIFO_I_n_6,
      \burst_addr_cnt_reg[7]_0\ => \^burst_addr_cnt_reg[7]_0\,
      burst_cnt_i(0 to 7) => burst_cnt_i(0 to 7),
      \bus2ip_BE_reg_reg[0]\ => \bus2ip_BE_reg[3]_i_3_n_0\,
      \bus2ip_BE_reg_reg[0]_0\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      bus2ip_rd_req_reg_reg(2 downto 0) => emc_addr_ps(2 downto 0),
      bus2ip_rd_req_reg_reg_0 => \^rw_flag_reg_reg_0\,
      bus2ip_rnw => bus2ip_rnw,
      \in\(0) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(7),
      \in\(1) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(6),
      \in\(2) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(5),
      \in\(3) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(4),
      \in\(4) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(3),
      \in\(5) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(2),
      \in\(6) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(1),
      \in\(7) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(0),
      \in\(8) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(15),
      \in\(9) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(14),
      \in\(10) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(13),
      \in\(11) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(12),
      \in\(12) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(11),
      \in\(13) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(10),
      \in\(14) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(9),
      \in\(15) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(8),
      \in\(16) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(23),
      \in\(17) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(22),
      \in\(18) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(21),
      \in\(19) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(20),
      \in\(20) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(19),
      \in\(21) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(18),
      \in\(22) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(17),
      \in\(23) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(16),
      \in\(24) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(31),
      \in\(25) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(30),
      \in\(26) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(29),
      \in\(27) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(28),
      \in\(28) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(27),
      \in\(29) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(26),
      \in\(30) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(25),
      \in\(31) => \INFERRED_GEN.data_reg[255][8]_srl32__0\(24),
      \in\(32) => rd_fifo_data_in(0),
      ip2bus_rdack => ip2bus_rdack,
      p_0_in(0) => p_0_in(0),
      \rd_data_count_reg[7]\ => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      rd_fifo_wr_en => rd_fifo_wr_en,
      s_axi_aclk => s_axi_aclk,
      s_axi_mem_rdata(31 downto 0) => s_axi_mem_rdata(31 downto 0),
      s_axi_mem_rready => s_axi_mem_rready,
      s_axi_mem_rresp(0) => s_axi_mem_rresp(0),
      s_axi_mem_rvalid => s_axi_mem_rvalid,
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      temp_bus2ip_cs => \^temp_bus2ip_cs\
    );
active_high_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1,
      Q => \^bus2ip_reset\,
      R => '0'
    );
addr_sm_ps_IDLE_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => emc_addr_ps(2),
      I1 => emc_addr_ps(1),
      O => addr_sm_ps_IDLE_reg_i_2_n_0
    );
addr_sm_ps_IDLE_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_mem_bready,
      I1 => \^s_axi_mem_bvalid_reg_reg_0\,
      O => addr_sm_ps_IDLE_reg_i_3_n_0
    );
addr_sm_ps_IDLE_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => RDATA_FIFO_I_n_10,
      Q => addr_sm_ps_IDLE_reg,
      S => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\axi_trans_size_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_mem_arsize(0),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I3 => axi_trans_size_reg_int(0),
      O => \axi_trans_size_reg[0]_i_1_n_0\
    );
\axi_trans_size_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_mem_arsize(1),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I3 => axi_trans_size_reg_int(1),
      O => \axi_trans_size_reg[1]_i_1_n_0\
    );
\axi_trans_size_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_trans_size_reg[0]_i_1_n_0\,
      Q => axi_trans_size_reg_int(0),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\axi_trans_size_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_trans_size_reg[1]_i_1_n_0\,
      Q => axi_trans_size_reg_int(1),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burst_addr_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => s_axi_mem_awlen(0),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(0),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I4 => \burst_addr_cnt_reg__1\(0),
      O => \p_0_in__0\(0)
    );
\burst_addr_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_awlen(1),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(1),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I4 => \burst_addr_cnt_reg__0\(1),
      I5 => \burst_addr_cnt_reg__1\(0),
      O => \p_0_in__0\(1)
    );
\burst_addr_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => burst_length_cmb(2),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \burst_addr_cnt_reg__0\(1),
      I3 => \burst_addr_cnt_reg__1\(0),
      I4 => \burst_addr_cnt_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\burst_addr_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => burst_length_cmb(3),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \burst_addr_cnt_reg__0\(2),
      I3 => \burst_addr_cnt_reg__1\(0),
      I4 => \burst_addr_cnt_reg__0\(1),
      I5 => \burst_addr_cnt_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\burst_addr_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_awlen(4),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(4),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_20,
      I5 => \burst_addr_cnt_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\burst_addr_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_awlen(5),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(5),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I4 => \burst_addr_cnt[7]_i_3_n_0\,
      I5 => \burst_addr_cnt_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\burst_addr_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => data(6),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \burst_addr_cnt_reg__0\(5),
      I3 => \burst_addr_cnt[7]_i_3_n_0\,
      I4 => \burst_addr_cnt_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\burst_addr_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => data(7),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \burst_addr_cnt_reg__0\(7),
      I3 => \burst_addr_cnt_reg__0\(6),
      I4 => \burst_addr_cnt_reg__0\(5),
      I5 => \burst_addr_cnt[7]_i_3_n_0\,
      O => \p_0_in__0\(7)
    );
\burst_addr_cnt[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \burst_addr_cnt_reg__0\(4),
      I1 => \burst_addr_cnt_reg__0\(3),
      I2 => \burst_addr_cnt_reg__0\(2),
      I3 => \burst_addr_cnt_reg__0\(1),
      I4 => \burst_addr_cnt_reg__1\(0),
      O => \burst_addr_cnt[7]_i_3_n_0\
    );
\burst_addr_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_7,
      D => \p_0_in__0\(0),
      Q => \burst_addr_cnt_reg__1\(0),
      R => '0'
    );
\burst_addr_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_7,
      D => \p_0_in__0\(1),
      Q => \burst_addr_cnt_reg__0\(1),
      R => '0'
    );
\burst_addr_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_7,
      D => \p_0_in__0\(2),
      Q => \burst_addr_cnt_reg__0\(2),
      R => '0'
    );
\burst_addr_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_7,
      D => \p_0_in__0\(3),
      Q => \burst_addr_cnt_reg__0\(3),
      R => '0'
    );
\burst_addr_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_7,
      D => \p_0_in__0\(4),
      Q => \burst_addr_cnt_reg__0\(4),
      R => '0'
    );
\burst_addr_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_7,
      D => \p_0_in__0\(5),
      Q => \burst_addr_cnt_reg__0\(5),
      R => '0'
    );
\burst_addr_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_7,
      D => \p_0_in__0\(6),
      Q => \burst_addr_cnt_reg__0\(6),
      R => '0'
    );
\burst_addr_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_7,
      D => \p_0_in__0\(7),
      Q => \burst_addr_cnt_reg__0\(7),
      R => '0'
    );
\burst_data_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => s_axi_mem_awlen(0),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(0),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I4 => burst_data_cnt(0),
      O => p_2_in(0)
    );
\burst_data_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_awlen(1),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(1),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I4 => burst_data_cnt(0),
      I5 => burst_data_cnt(1),
      O => p_2_in(1)
    );
\burst_data_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => burst_length_cmb(2),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => burst_data_cnt(0),
      I3 => burst_data_cnt(1),
      I4 => burst_data_cnt(2),
      O => p_2_in(2)
    );
\burst_data_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => burst_length_cmb(3),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => burst_data_cnt(3),
      I3 => burst_data_cnt(0),
      I4 => burst_data_cnt(1),
      I5 => burst_data_cnt(2),
      O => p_2_in(3)
    );
\burst_data_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_awlen(4),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(4),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I4 => \burst_data_cnt[4]_i_2_n_0\,
      I5 => burst_data_cnt(4),
      O => p_2_in(4)
    );
\burst_data_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => burst_data_cnt(1),
      I1 => burst_data_cnt(0),
      I2 => burst_data_cnt(2),
      I3 => burst_data_cnt(3),
      O => \burst_data_cnt[4]_i_2_n_0\
    );
\burst_data_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi_mem_awlen(5),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(5),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I4 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_19,
      I5 => burst_data_cnt(5),
      O => p_2_in(5)
    );
\burst_data_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => data(6),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => burst_data_cnt(6),
      I3 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_19,
      I4 => burst_data_cnt(5),
      O => p_2_in(6)
    );
\burst_data_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_19,
      I1 => burst_data_cnt(6),
      I2 => burst_data_cnt(5),
      I3 => burst_data_cnt(7),
      I4 => ip2bus_rdack,
      I5 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_14,
      O => \burst_data_cnt[7]_i_1_n_0\
    );
\burst_data_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => data(7),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => burst_data_cnt(7),
      I3 => burst_data_cnt(6),
      I4 => burst_data_cnt(5),
      I5 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_19,
      O => p_2_in(7)
    );
\burst_data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(0),
      Q => burst_data_cnt(0),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burst_data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(1),
      Q => burst_data_cnt(1),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burst_data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => burst_data_cnt(2),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burst_data_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => burst_data_cnt(3),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burst_data_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => burst_data_cnt(4),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burst_data_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => burst_data_cnt(5),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burst_data_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => burst_data_cnt(6),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burst_data_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \burst_data_cnt[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => burst_data_cnt(7),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burstlength_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awlen(0),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(0),
      O => burst_length_cmb(0)
    );
\burstlength_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awlen(1),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(1),
      O => burst_length_cmb(1)
    );
\burstlength_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awlen(2),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(2),
      O => burst_length_cmb(2)
    );
\burstlength_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awlen(3),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(3),
      O => burst_length_cmb(3)
    );
\burstlength_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awlen(4),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(4),
      O => data(4)
    );
\burstlength_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awlen(5),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(5),
      O => data(5)
    );
\burstlength_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awlen(6),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(6),
      O => data(6)
    );
\burstlength_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awlen(7),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arlen(7),
      O => data(7)
    );
\burstlength_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => burst_length_cmb(0),
      Q => bus2ip_burstlength(7),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burstlength_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => burst_length_cmb(1),
      Q => bus2ip_burstlength(6),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burstlength_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => burst_length_cmb(2),
      Q => bus2ip_burstlength(5),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burstlength_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => burst_length_cmb(3),
      Q => bus2ip_burstlength(4),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burstlength_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => data(4),
      Q => bus2ip_burstlength(3),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burstlength_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => data(5),
      Q => bus2ip_burstlength(2),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burstlength_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => data(6),
      Q => bus2ip_burstlength(1),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\burstlength_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => data(7),
      Q => bus2ip_burstlength(0),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_BE_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8B8B888B"
    )
        port map (
      I0 => s_axi_mem_wstrb(0),
      I1 => \bus2ip_BE_reg[3]_i_3_n_0\,
      I2 => \bus2ip_BE_reg[1]_i_2_n_0\,
      I3 => s_axi_mem_araddr(0),
      I4 => \bus2ip_BE_reg[3]_i_4_n_0\,
      I5 => \bus2ip_BE_reg[0]_i_2_n_0\,
      O => \bus2ip_BE_reg[0]_i_1_n_0\
    );
\bus2ip_BE_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFB8"
    )
        port map (
      I0 => temp_bus2ip_be(2),
      I1 => \derived_size_reg_reg_n_0_[0]\,
      I2 => temp_bus2ip_be(3),
      I3 => \derived_size_reg_reg_n_0_[1]\,
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      O => \bus2ip_BE_reg[0]_i_2_n_0\
    );
\bus2ip_BE_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8B8B8B88"
    )
        port map (
      I0 => s_axi_mem_wstrb(1),
      I1 => \bus2ip_BE_reg[3]_i_3_n_0\,
      I2 => \bus2ip_BE_reg[1]_i_2_n_0\,
      I3 => s_axi_mem_araddr(0),
      I4 => \bus2ip_BE_reg[3]_i_4_n_0\,
      I5 => \bus2ip_BE_reg[1]_i_3_n_0\,
      O => \bus2ip_BE_reg[1]_i_1_n_0\
    );
\bus2ip_BE_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4700FFFF"
    )
        port map (
      I0 => s_axi_mem_awsize(1),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arsize(1),
      I3 => s_axi_mem_araddr(1),
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      O => \bus2ip_BE_reg[1]_i_2_n_0\
    );
\bus2ip_BE_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFB8"
    )
        port map (
      I0 => temp_bus2ip_be(3),
      I1 => \derived_size_reg_reg_n_0_[0]\,
      I2 => temp_bus2ip_be(0),
      I3 => \derived_size_reg_reg_n_0_[1]\,
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      O => \bus2ip_BE_reg[1]_i_3_n_0\
    );
\bus2ip_BE_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBB8B8888"
    )
        port map (
      I0 => s_axi_mem_wstrb(2),
      I1 => \bus2ip_BE_reg[3]_i_3_n_0\,
      I2 => s_axi_mem_araddr(0),
      I3 => \bus2ip_BE_reg[3]_i_4_n_0\,
      I4 => \bus2ip_BE_reg[3]_i_5_n_0\,
      I5 => \bus2ip_BE_reg[2]_i_2_n_0\,
      O => \bus2ip_BE_reg[2]_i_1_n_0\
    );
\bus2ip_BE_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFB8"
    )
        port map (
      I0 => temp_bus2ip_be(0),
      I1 => \derived_size_reg_reg_n_0_[0]\,
      I2 => temp_bus2ip_be(1),
      I3 => \derived_size_reg_reg_n_0_[1]\,
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      O => \bus2ip_BE_reg[2]_i_2_n_0\
    );
\bus2ip_BE_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBB88888"
    )
        port map (
      I0 => s_axi_mem_wstrb(3),
      I1 => \bus2ip_BE_reg[3]_i_3_n_0\,
      I2 => s_axi_mem_araddr(0),
      I3 => \bus2ip_BE_reg[3]_i_4_n_0\,
      I4 => \bus2ip_BE_reg[3]_i_5_n_0\,
      I5 => \bus2ip_BE_reg[3]_i_6_n_0\,
      O => \bus2ip_BE_reg[3]_i_2_n_0\
    );
\bus2ip_BE_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I1 => \bus2ip_BE_reg[3]_i_7_n_0\,
      O => \bus2ip_BE_reg[3]_i_3_n_0\
    );
\bus2ip_BE_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_mem_arsize(1),
      I1 => s_axi_mem_awsize(1),
      I2 => s_axi_mem_arsize(0),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I4 => s_axi_mem_awsize(0),
      O => \bus2ip_BE_reg[3]_i_4_n_0\
    );
\bus2ip_BE_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8A80"
    )
        port map (
      I0 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I1 => s_axi_mem_awsize(1),
      I2 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I3 => s_axi_mem_arsize(1),
      I4 => s_axi_mem_araddr(1),
      O => \bus2ip_BE_reg[3]_i_5_n_0\
    );
\bus2ip_BE_reg[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFB8"
    )
        port map (
      I0 => temp_bus2ip_be(1),
      I1 => \derived_size_reg_reg_n_0_[0]\,
      I2 => temp_bus2ip_be(2),
      I3 => \derived_size_reg_reg_n_0_[1]\,
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      O => \bus2ip_BE_reg[3]_i_6_n_0\
    );
\bus2ip_BE_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCBCFDBDFFFFFFFF"
    )
        port map (
      I0 => emc_addr_ps(2),
      I1 => emc_addr_ps(1),
      I2 => emc_addr_ps(0),
      I3 => \s_axi_mem_bresp_reg_reg[1]_0\,
      I4 => \bus2ip_data_reg_reg[0]_0\,
      I5 => s_axi_mem_wvalid,
      O => \bus2ip_BE_reg[3]_i_7_n_0\
    );
\bus2ip_BE_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \bus2ip_BE_reg[0]_i_1_n_0\,
      Q => temp_bus2ip_be(0),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_BE_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \bus2ip_BE_reg[1]_i_1_n_0\,
      Q => temp_bus2ip_be(1),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_BE_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \bus2ip_BE_reg[2]_i_1_n_0\,
      Q => temp_bus2ip_be(2),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_BE_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_9,
      D => \bus2ip_BE_reg[3]_i_2_n_0\,
      Q => temp_bus2ip_be(3),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
bus2ip_burst_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A300000"
    )
        port map (
      I0 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_7,
      I1 => s_axi_mem_awlen_3_sn_1,
      I2 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I3 => \^bus2ip_burst\,
      I4 => s_axi_aresetn,
      O => bus2ip_burst_reg_i_1_n_0
    );
bus2ip_burst_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => burst_length_cmb(3),
      I1 => burst_length_cmb(2),
      I2 => burst_length_cmb(1),
      I3 => burst_length_cmb(0),
      I4 => \FSM_sequential_emc_addr_ps[1]_i_11_n_0\,
      I5 => \FSM_sequential_emc_addr_ps[1]_i_12_n_0\,
      O => s_axi_mem_awlen_3_sn_1
    );
bus2ip_burst_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_burst_reg_i_1_n_0,
      Q => \^bus2ip_burst\,
      R => '0'
    );
\bus2ip_data_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA0A000088"
    )
        port map (
      I0 => s_axi_mem_wvalid,
      I1 => \bus2ip_data_reg_reg[0]_0\,
      I2 => \s_axi_mem_bresp_reg_reg[1]_0\,
      I3 => emc_addr_ps(0),
      I4 => emc_addr_ps(1),
      I5 => emc_addr_ps(2),
      O => bus2ip_data_reg0
    );
\bus2ip_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(0),
      Q => \bus2ip_data_reg_reg[31]_0\(0),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(10),
      Q => \bus2ip_data_reg_reg[31]_0\(10),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(11),
      Q => \bus2ip_data_reg_reg[31]_0\(11),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(12),
      Q => \bus2ip_data_reg_reg[31]_0\(12),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(13),
      Q => \bus2ip_data_reg_reg[31]_0\(13),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(14),
      Q => \bus2ip_data_reg_reg[31]_0\(14),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(15),
      Q => \bus2ip_data_reg_reg[31]_0\(15),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(16),
      Q => \bus2ip_data_reg_reg[31]_0\(16),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(17),
      Q => \bus2ip_data_reg_reg[31]_0\(17),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(18),
      Q => \bus2ip_data_reg_reg[31]_0\(18),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(19),
      Q => \bus2ip_data_reg_reg[31]_0\(19),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(1),
      Q => \bus2ip_data_reg_reg[31]_0\(1),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(20),
      Q => \bus2ip_data_reg_reg[31]_0\(20),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(21),
      Q => \bus2ip_data_reg_reg[31]_0\(21),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(22),
      Q => \bus2ip_data_reg_reg[31]_0\(22),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(23),
      Q => \bus2ip_data_reg_reg[31]_0\(23),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(24),
      Q => \bus2ip_data_reg_reg[31]_0\(24),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(25),
      Q => \bus2ip_data_reg_reg[31]_0\(25),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(26),
      Q => \bus2ip_data_reg_reg[31]_0\(26),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(27),
      Q => \bus2ip_data_reg_reg[31]_0\(27),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(28),
      Q => \bus2ip_data_reg_reg[31]_0\(28),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(29),
      Q => \bus2ip_data_reg_reg[31]_0\(29),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(2),
      Q => \bus2ip_data_reg_reg[31]_0\(2),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(30),
      Q => \bus2ip_data_reg_reg[31]_0\(30),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(31),
      Q => \bus2ip_data_reg_reg[31]_0\(31),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(3),
      Q => \bus2ip_data_reg_reg[31]_0\(3),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(4),
      Q => \bus2ip_data_reg_reg[31]_0\(4),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(5),
      Q => \bus2ip_data_reg_reg[31]_0\(5),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(6),
      Q => \bus2ip_data_reg_reg[31]_0\(6),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(7),
      Q => \bus2ip_data_reg_reg[31]_0\(7),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(8),
      Q => \bus2ip_data_reg_reg[31]_0\(8),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\bus2ip_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_data_reg0,
      D => s_axi_mem_wdata(9),
      Q => \bus2ip_data_reg_reg[31]_0\(9),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
bus2ip_rd_req_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => RDATA_FIFO_I_n_24,
      Q => \^bus2ip_rdreq_emc\,
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
bus2ip_wr_req_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFF50FC000F5"
    )
        port map (
      I0 => bus2ip_wr_req_reg_i_2_n_0,
      I1 => \s_axi_mem_bresp_reg_reg[1]_0\,
      I2 => emc_addr_ps(2),
      I3 => emc_addr_ps(1),
      I4 => emc_addr_ps(0),
      I5 => \^bus2ip_wrreq_i\,
      O => bus2ip_wr_req_reg_i_1_n_0
    );
bus2ip_wr_req_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => \^rw_flag_reg\,
      I1 => s_axi_mem_arvalid,
      I2 => s_axi_mem_wvalid,
      I3 => s_axi_mem_awvalid,
      O => bus2ip_wr_req_reg_i_2_n_0
    );
bus2ip_wr_req_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_wr_req_reg_i_1_n_0,
      Q => \^bus2ip_wrreq_i\,
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\derived_burst_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awburst(0),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arburst(0),
      O => \derived_burst_reg[0]_i_1_n_0\
    );
\derived_burst_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awburst(1),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arburst(1),
      O => \derived_burst_reg[1]_i_1_n_0\
    );
\derived_burst_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \derived_size_reg[1]_i_1_n_0\,
      D => \derived_burst_reg[0]_i_1_n_0\,
      Q => derived_burst_reg(0),
      R => '0'
    );
\derived_burst_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \derived_size_reg[1]_i_1_n_0\,
      D => \derived_burst_reg[1]_i_1_n_0\,
      Q => derived_burst_reg(1),
      R => '0'
    );
\derived_size_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awsize(0),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arsize(0),
      O => \derived_size_reg[0]_i_1_n_0\
    );
\derived_size_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I1 => s_axi_aresetn,
      O => \derived_size_reg[1]_i_1_n_0\
    );
\derived_size_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awsize(1),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I2 => s_axi_mem_arsize(1),
      O => p_0_in1_in
    );
\derived_size_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \derived_size_reg[1]_i_1_n_0\,
      D => \derived_size_reg[0]_i_1_n_0\,
      Q => \derived_size_reg_reg_n_0_[0]\,
      R => '0'
    );
\derived_size_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \derived_size_reg[1]_i_1_n_0\,
      D => p_0_in1_in,
      Q => \derived_size_reg_reg_n_0_[1]\,
      R => '0'
    );
last_data_acked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BFAA"
    )
        port map (
      I0 => last_data_acked,
      I1 => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_7,
      I2 => last_data_acked_i_3_n_0,
      I3 => ip2bus_rdack,
      I4 => addr_sm_ps_idle_cmb,
      O => last_data_acked_i_1_n_0
    );
last_data_acked_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_21,
      I1 => \rd_data_count_reg__0\(5),
      I2 => \rd_data_count_reg__0\(6),
      I3 => \rd_data_count_reg__0\(4),
      I4 => \rd_data_count_reg__0\(7),
      O => last_data_acked_i_3_n_0
    );
last_data_acked_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_data_acked_i_1_n_0,
      Q => last_data_acked,
      R => '0'
    );
\rd_data_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => s_axi_mem_arlen(0),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \rd_data_count_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\rd_data_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => s_axi_mem_arlen(1),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \rd_data_count_reg__0\(1),
      I3 => \rd_data_count_reg__0\(0),
      O => \p_0_in__1\(1)
    );
\rd_data_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => s_axi_mem_arlen(2),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \rd_data_count_reg__0\(1),
      I3 => \rd_data_count_reg__0\(0),
      I4 => \rd_data_count_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\rd_data_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => s_axi_mem_arlen(3),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \rd_data_count_reg__0\(2),
      I3 => \rd_data_count_reg__0\(0),
      I4 => \rd_data_count_reg__0\(1),
      I5 => \rd_data_count_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\rd_data_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => s_axi_mem_arlen(4),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \rd_data_count_reg__0\(4),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_21,
      O => \p_0_in__1\(4)
    );
\rd_data_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => s_axi_mem_arlen(5),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \rd_data_count_reg__0\(5),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_21,
      I4 => \rd_data_count_reg__0\(4),
      O => \p_0_in__1\(5)
    );
\rd_data_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => s_axi_mem_arlen(6),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \rd_data_count_reg__0\(6),
      I3 => \rd_data_count_reg__0\(4),
      I4 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_21,
      I5 => \rd_data_count_reg__0\(5),
      O => \p_0_in__1\(6)
    );
\rd_data_count[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88BB8B8"
    )
        port map (
      I0 => s_axi_mem_arlen(7),
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      I2 => \rd_data_count_reg__0\(7),
      I3 => \rd_data_count_reg__0\(6),
      I4 => \rd_data_count[7]_i_3_n_0\,
      O => \p_0_in__1\(7)
    );
\rd_data_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rd_data_count_reg__0\(5),
      I1 => \rd_data_count_reg__0\(3),
      I2 => \rd_data_count_reg__0\(1),
      I3 => \rd_data_count_reg__0\(0),
      I4 => \rd_data_count_reg__0\(2),
      I5 => \rd_data_count_reg__0\(4),
      O => \rd_data_count[7]_i_3_n_0\
    );
\rd_data_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_8,
      D => \p_0_in__1\(0),
      Q => \rd_data_count_reg__0\(0),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\rd_data_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_8,
      D => \p_0_in__1\(1),
      Q => \rd_data_count_reg__0\(1),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\rd_data_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_8,
      D => \p_0_in__1\(2),
      Q => \rd_data_count_reg__0\(2),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\rd_data_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_8,
      D => \p_0_in__1\(3),
      Q => \rd_data_count_reg__0\(3),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\rd_data_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_8,
      D => \p_0_in__1\(4),
      Q => \rd_data_count_reg__0\(4),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\rd_data_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_8,
      D => \p_0_in__1\(5),
      Q => \rd_data_count_reg__0\(5),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\rd_data_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_8,
      D => \p_0_in__1\(6),
      Q => \rd_data_count_reg__0\(6),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\rd_data_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => RDATA_FIFO_I_n_8,
      D => \p_0_in__1\(7),
      Q => \rd_data_count_reg__0\(7),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
rnw_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      O => rnw_cmb
    );
rnw_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rnw_cmb,
      Q => bus2ip_rnw,
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
rw_flag_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFFA000"
    )
        port map (
      I0 => s_axi_mem_arvalid,
      I1 => s_axi_mem_awvalid,
      I2 => addr_sm_ps_IDLE_reg,
      I3 => rw_flag_reg_reg_1,
      I4 => \^rw_flag_reg\,
      O => rw_flag_reg_i_1_n_0
    );
rw_flag_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rw_flag_reg_i_1_n_0,
      Q => \^rw_flag_reg\,
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
s_axi_mem_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000000000000000"
    )
        port map (
      I0 => \^rw_flag_reg\,
      I1 => s_axi_mem_awvalid,
      I2 => s_axi_mem_arvalid,
      I3 => addr_sm_ps_idle_cmb,
      I4 => rw_flag_reg_reg_1,
      I5 => s_axi_aresetn,
      O => \^s_axi_mem_arready\
    );
s_axi_mem_arready_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => emc_addr_ps(0),
      I1 => emc_addr_ps(2),
      I2 => emc_addr_ps(1),
      O => addr_sm_ps_idle_cmb
    );
s_axi_mem_awready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \bus2ip_data_reg_reg[0]_0\,
      I1 => emc_addr_ps(0),
      I2 => emc_addr_ps(2),
      I3 => emc_addr_ps(1),
      I4 => s_axi_aresetn,
      O => \^s_axi_mem_awready\
    );
\s_axi_mem_bid_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awid(0),
      I1 => \^s_axi_mem_awready\,
      I2 => \^s_axi_mem_bid\(0),
      O => \s_axi_mem_bid_reg[0]_i_1_n_0\
    );
\s_axi_mem_bid_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_awid(1),
      I1 => \^s_axi_mem_awready\,
      I2 => \^s_axi_mem_bid\(1),
      O => \s_axi_mem_bid_reg[1]_i_2_n_0\
    );
\s_axi_mem_bid_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_mem_bid_reg[0]_i_1_n_0\,
      Q => \^s_axi_mem_bid\(0),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\s_axi_mem_bid_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_mem_bid_reg[1]_i_2_n_0\,
      Q => \^s_axi_mem_bid\(1),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\s_axi_mem_bresp_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_25,
      Q => \^s_axi_mem_bresp\(0),
      R => '0'
    );
s_axi_mem_bvalid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000003AB"
    )
        port map (
      I0 => \^s_axi_mem_bvalid_reg_reg_0\,
      I1 => \^burst_addr_cnt_reg[7]_0\,
      I2 => \s_axi_mem_bresp_reg_reg[1]_0\,
      I3 => s_axi_mem_bready,
      I4 => addr_sm_ps_idle_cmb,
      O => s_axi_mem_bvalid_reg_i_1_n_0
    );
s_axi_mem_bvalid_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_mem_bvalid_reg_i_1_n_0,
      Q => \^s_axi_mem_bvalid_reg_reg_0\,
      R => '0'
    );
\s_axi_mem_rid_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arid(0),
      I1 => \^s_axi_mem_arready\,
      I2 => \^s_axi_mem_rid\(0),
      O => \s_axi_mem_rid_reg[0]_i_1_n_0\
    );
\s_axi_mem_rid_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_mem_arid(1),
      I1 => \^s_axi_mem_arready\,
      I2 => \^s_axi_mem_rid\(1),
      O => \s_axi_mem_rid_reg[1]_i_1_n_0\
    );
\s_axi_mem_rid_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_mem_rid_reg[0]_i_1_n_0\,
      Q => \^s_axi_mem_rid\(0),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
\s_axi_mem_rid_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_mem_rid_reg[1]_i_1_n_0\,
      Q => \^s_axi_mem_rid\(1),
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
s_axi_mem_rlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => last_data_acked,
      I1 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_21,
      I2 => \rd_data_count_reg__0\(5),
      I3 => \rd_data_count_reg__0\(6),
      I4 => \rd_data_count_reg__0\(4),
      I5 => \rd_data_count_reg__0\(7),
      O => s_axi_mem_rlast
    );
s_axi_mem_wready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03430242"
    )
        port map (
      I0 => emc_addr_ps(2),
      I1 => emc_addr_ps(1),
      I2 => emc_addr_ps(0),
      I3 => \s_axi_mem_bresp_reg_reg[1]_0\,
      I4 => \bus2ip_data_reg_reg[0]_0\,
      O => s_axi_mem_wready
    );
type_of_xfer_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_mem_arburst(0),
      I1 => s_axi_mem_awburst(0),
      I2 => s_axi_mem_arburst(1),
      I3 => AXI_EMC_ADDR_GEN_INSTANCE_I_n_7,
      I4 => s_axi_mem_awburst(1),
      O => Type_of_xfer_cmb
    );
type_of_xfer_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => AXI_EMC_ADDR_GEN_INSTANCE_I_n_5,
      D => Type_of_xfer_cmb,
      Q => Type_of_xfer,
      R => AXI_EMC_ADDR_GEN_INSTANCE_I_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0_axi_emc is
  port (
    s_axi_mem_bvalid_reg_reg : out STD_LOGIC;
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_wen : out STD_LOGIC;
    mem_dq_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_dq_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_cen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_qwen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_ben : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rpn : out STD_LOGIC;
    mem_ce : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rnw : out STD_LOGIC;
    s_axi_mem_awready : out STD_LOGIC;
    s_axi_mem_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arready : out STD_LOGIC;
    s_axi_mem_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_mem_wready : out STD_LOGIC;
    s_axi_mem_rlast : out STD_LOGIC;
    s_axi_mem_rvalid : out STD_LOGIC;
    s_axi_mem_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_mem_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_wvalid : in STD_LOGIC;
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_bready : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    mem_dq_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rdclk : in STD_LOGIC;
    s_axi_mem_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_rready : in STD_LOGIC;
    s_axi_mem_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_arvalid : in STD_LOGIC;
    s_axi_mem_wlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AXI_bd_0_axi_emc_0_0_axi_emc : entity is "axi_emc";
end AXI_bd_0_axi_emc_0_0_axi_emc;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0_axi_emc is
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/Cycle_cnt_en_int\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/S\ : STD_LOGIC;
  signal \ADDR_COUNTER_MUX_I/cycle_cnt\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \AXI_EMC_ADDRESS_DECODE_INSTANCE_I/rdce_out_i\ : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_39 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_40 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_42 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_44 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_46 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_48 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_50 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_53 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_63 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_64 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_65 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_66 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_67 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_68 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_69 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_70 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_74 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_75 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_76 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_84 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_85 : STD_LOGIC;
  signal AXI_EMC_NATIVE_INTERFACE_I_n_86 : STD_LOGIC;
  signal Bus2IP_RdReq_emc : STD_LOGIC;
  signal EMC_CTRL_I_n_54 : STD_LOGIC;
  signal EMC_CTRL_I_n_55 : STD_LOGIC;
  signal EMC_CTRL_I_n_57 : STD_LOGIC;
  signal EMC_CTRL_I_n_58 : STD_LOGIC;
  signal EMC_CTRL_I_n_59 : STD_LOGIC;
  signal EMC_CTRL_I_n_60 : STD_LOGIC;
  signal EMC_CTRL_I_n_61 : STD_LOGIC;
  signal EMC_CTRL_I_n_62 : STD_LOGIC;
  signal EMC_CTRL_I_n_63 : STD_LOGIC;
  signal EMC_CTRL_I_n_64 : STD_LOGIC;
  signal EMC_CTRL_I_n_65 : STD_LOGIC;
  signal EMC_CTRL_I_n_66 : STD_LOGIC;
  signal EMC_CTRL_I_n_67 : STD_LOGIC;
  signal EMC_CTRL_I_n_68 : STD_LOGIC;
  signal EMC_CTRL_I_n_69 : STD_LOGIC;
  signal EMC_CTRL_I_n_70 : STD_LOGIC;
  signal EMC_CTRL_I_n_71 : STD_LOGIC;
  signal EMC_CTRL_I_n_72 : STD_LOGIC;
  signal EMC_CTRL_I_n_74 : STD_LOGIC;
  signal EMC_CTRL_I_n_75 : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/CE\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \IPIC_IF_I/BURST_CNT/S\ : STD_LOGIC;
  signal \IPIC_IF_I/IP2Bus_RdAck0\ : STD_LOGIC;
  signal \IPIC_IF_I/burst_cnt_i\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \IPIC_IF_I/pend_rdreq\ : STD_LOGIC;
  signal \IPIC_IF_I/pend_wrreq\ : STD_LOGIC;
  signal \IPIC_IF_I/reset_fifo\ : STD_LOGIC;
  signal \MEM_STATE_MACHINE_I/crnt_state\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \MEM_STATE_MACHINE_I/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ : STD_LOGIC;
  signal bus2Mem_RdReq : STD_LOGIC;
  signal bus2ip_addr_temp : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal bus2ip_ben_fixed : STD_LOGIC_VECTOR ( 0 to 3 );
  signal bus2ip_burst : STD_LOGIC;
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_wrreq_i : STD_LOGIC;
  signal ip2bus_addrack : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_rdack : STD_LOGIC;
  signal rd_fifo_wr_en : STD_LOGIC;
  signal rw_flag_reg : STD_LOGIC;
  signal temp_bus2ip_cs : STD_LOGIC;
  signal temp_bus2ip_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal transaction_done_i : STD_LOGIC;
  attribute IOB : string;
  attribute IOB of \mem_a_int_reg[0]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[10]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[11]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[12]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[13]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[14]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[15]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[16]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[17]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[18]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[19]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[1]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[20]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[21]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[22]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[23]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[24]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[25]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[26]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[27]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[28]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[29]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[2]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[30]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[31]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[3]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[4]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[5]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[6]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[7]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[8]\ : label is "TRUE";
  attribute IOB of \mem_a_int_reg[9]\ : label is "TRUE";
begin
AXI_EMC_NATIVE_INTERFACE_I: entity work.AXI_bd_0_axi_emc_0_0_axi_emc_native_interface
     port map (
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ => \MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]\ => EMC_CTRL_I_n_62,
      Bus2IP_RdReq_emc => Bus2IP_RdReq_emc,
      CE => \IPIC_IF_I/BURST_CNT/CE\,
      Cycle_cnt_en_int => \ADDR_COUNTER_MUX_I/Cycle_cnt_en_int\,
      FIFO_Full_reg => AXI_EMC_NATIVE_INTERFACE_I_n_44,
      \FSM_sequential_crnt_state[0]_i_5\ => EMC_CTRL_I_n_58,
      \FSM_sequential_crnt_state[1]_i_9\ => EMC_CTRL_I_n_57,
      \FSM_sequential_emc_addr_ps_reg[0]_0\ => EMC_CTRL_I_n_66,
      \FSM_sequential_emc_addr_ps_reg[0]_1\ => EMC_CTRL_I_n_60,
      \FSM_sequential_emc_addr_ps_reg[1]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_50,
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(31) => ip2bus_data(0),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(30) => ip2bus_data(1),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(29) => ip2bus_data(2),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(28) => ip2bus_data(3),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(27) => ip2bus_data(4),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(26) => ip2bus_data(5),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(25) => ip2bus_data(6),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(24) => ip2bus_data(7),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(23) => ip2bus_data(8),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(22) => ip2bus_data(9),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(21) => ip2bus_data(10),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(20) => ip2bus_data(11),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(19) => ip2bus_data(12),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(18) => ip2bus_data(13),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(17) => ip2bus_data(14),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(16) => ip2bus_data(15),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(15) => ip2bus_data(16),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(14) => ip2bus_data(17),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(13) => ip2bus_data(18),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(12) => ip2bus_data(19),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(11) => ip2bus_data(20),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(10) => ip2bus_data(21),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(9) => ip2bus_data(22),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(8) => ip2bus_data(23),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(7) => ip2bus_data(24),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(6) => ip2bus_data(25),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(5) => ip2bus_data(26),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(4) => ip2bus_data(27),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(3) => ip2bus_data(28),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(2) => ip2bus_data(29),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(1) => ip2bus_data(30),
      \INFERRED_GEN.data_reg[255][8]_srl32__0\(0) => ip2bus_data(31),
      IP2Bus_RdAck0 => \IPIC_IF_I/IP2Bus_RdAck0\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => AXI_EMC_NATIVE_INTERFACE_I_n_66,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_67,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]\ => AXI_EMC_NATIVE_INTERFACE_I_n_63,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_69,
      \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1\ => AXI_EMC_NATIVE_INTERFACE_I_n_70,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ => EMC_CTRL_I_n_70,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_0\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => EMC_CTRL_I_n_64,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[7].MULT_AND_i1_i_3\ => EMC_CTRL_I_n_72,
      \PERBIT_GEN[7].MULT_AND_i1_i_3_0\ => EMC_CTRL_I_n_71,
      Q(0) => \MEM_STATE_MACHINE_I/crnt_state\(3),
      S => \IPIC_IF_I/BURST_CNT/S\,
      S_1 => \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/S\,
      active_high_rst_reg_0 => AXI_EMC_NATIVE_INTERFACE_I_n_40,
      \axi_trans_size_reg_reg[1]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_74,
      \burst_addr_cnt_reg[7]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_46,
      burst_cnt_i(0 to 7) => \IPIC_IF_I/burst_cnt_i\(0 to 7),
      \burstlength_reg_reg[0]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_42,
      \burstlength_reg_reg[5]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_76,
      bus2Mem_RdReq => bus2Mem_RdReq,
      \bus2ip_BE_reg_reg[0]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_65,
      \bus2ip_BE_reg_reg[0]_1\ => AXI_EMC_NATIVE_INTERFACE_I_n_85,
      \bus2ip_BE_reg_reg[3]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_68,
      \bus2ip_addr_i_reg[12]\ => EMC_CTRL_I_n_54,
      bus2ip_addr_temp(29 downto 0) => bus2ip_addr_temp(31 downto 2),
      bus2ip_ben_fixed(0 to 3) => bus2ip_ben_fixed(0 to 3),
      bus2ip_burst => bus2ip_burst,
      bus2ip_burst_reg_reg_0 => AXI_EMC_NATIVE_INTERFACE_I_n_86,
      \bus2ip_data_reg_reg[0]_0\ => EMC_CTRL_I_n_61,
      \bus2ip_data_reg_reg[31]_0\(31 downto 0) => temp_bus2ip_data(31 downto 0),
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      cycle_cnt(0 to 1) => \ADDR_COUNTER_MUX_I/cycle_cnt\(0 to 1),
      ip2bus_addrack => ip2bus_addrack,
      ip2bus_rdack => ip2bus_rdack,
      p_0_in(0) => \MEM_STATE_MACHINE_I/p_0_in\(0),
      pend_rdreq => \IPIC_IF_I/pend_rdreq\,
      pend_rdreq_reg => AXI_EMC_NATIVE_INTERFACE_I_n_64,
      pend_rdreq_reg_0 => EMC_CTRL_I_n_69,
      pend_rdreq_reg_1 => EMC_CTRL_I_n_67,
      pend_wrreq => \IPIC_IF_I/pend_wrreq\,
      pend_wrreq_reg => AXI_EMC_NATIVE_INTERFACE_I_n_75,
      rd_fifo_wr_en => rd_fifo_wr_en,
      rdce_out_i => \AXI_EMC_ADDRESS_DECODE_INSTANCE_I/rdce_out_i\,
      reset_fifo => \IPIC_IF_I/reset_fifo\,
      rw_flag_reg => rw_flag_reg,
      rw_flag_reg_reg_0 => AXI_EMC_NATIVE_INTERFACE_I_n_48,
      rw_flag_reg_reg_1 => EMC_CTRL_I_n_55,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_mem_araddr(31 downto 0) => s_axi_mem_araddr(31 downto 0),
      s_axi_mem_arburst(1 downto 0) => s_axi_mem_arburst(1 downto 0),
      s_axi_mem_arid(1 downto 0) => s_axi_mem_arid(1 downto 0),
      s_axi_mem_arlen(7 downto 0) => s_axi_mem_arlen(7 downto 0),
      s_axi_mem_arready => s_axi_mem_arready,
      s_axi_mem_arsize(1 downto 0) => s_axi_mem_arsize(1 downto 0),
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awaddr(31 downto 0) => s_axi_mem_awaddr(31 downto 0),
      s_axi_mem_awburst(1 downto 0) => s_axi_mem_awburst(1 downto 0),
      s_axi_mem_awid(1 downto 0) => s_axi_mem_awid(1 downto 0),
      s_axi_mem_awlen(7 downto 0) => s_axi_mem_awlen(7 downto 0),
      s_axi_mem_awlen_3_sp_1 => AXI_EMC_NATIVE_INTERFACE_I_n_39,
      s_axi_mem_awready => s_axi_mem_awready,
      s_axi_mem_awsize(1 downto 0) => s_axi_mem_awsize(1 downto 0),
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      s_axi_mem_bid(1 downto 0) => s_axi_mem_bid(1 downto 0),
      s_axi_mem_bready => s_axi_mem_bready,
      s_axi_mem_bresp(0) => s_axi_mem_bresp(0),
      \s_axi_mem_bresp_reg_reg[1]_0\ => EMC_CTRL_I_n_68,
      s_axi_mem_bvalid_reg_reg_0 => s_axi_mem_bvalid_reg_reg,
      s_axi_mem_rdata(31 downto 0) => s_axi_mem_rdata(31 downto 0),
      s_axi_mem_rid(1 downto 0) => s_axi_mem_rid(1 downto 0),
      s_axi_mem_rlast => s_axi_mem_rlast,
      s_axi_mem_rready => s_axi_mem_rready,
      s_axi_mem_rresp(0) => s_axi_mem_rresp(0),
      s_axi_mem_rvalid => s_axi_mem_rvalid,
      s_axi_mem_wdata(31 downto 0) => s_axi_mem_wdata(31 downto 0),
      s_axi_mem_wready => s_axi_mem_wready,
      s_axi_mem_wready_INST_0_i_1 => EMC_CTRL_I_n_59,
      s_axi_mem_wready_INST_0_i_2 => EMC_CTRL_I_n_63,
      s_axi_mem_wstrb(3 downto 0) => s_axi_mem_wstrb(3 downto 0),
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      s_axi_mem_wvalid_0 => AXI_EMC_NATIVE_INTERFACE_I_n_53,
      temp_bus2ip_cs => temp_bus2ip_cs,
      transaction_done_i => transaction_done_i,
      type_of_xfer_reg_reg_0 => AXI_EMC_NATIVE_INTERFACE_I_n_84
    );
EMC_CTRL_I: entity work.AXI_bd_0_axi_emc_0_0_EMC
     port map (
      \ADDRESS_STORE_GEN[0].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[0].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[10].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[10].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[11].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[11].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[12].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[12].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[13].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[13].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[14].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[14].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[15].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[15].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[16].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[16].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[17].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[17].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[18].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[18].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[19].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[19].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[1].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[1].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[20].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[20].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[21].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[21].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[22].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[22].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[23].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[23].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[24].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[24].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[25].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[25].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[26].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[26].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[27].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[27].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[28].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[28].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[29].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[29].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[2].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[2].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[3].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[3].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[4].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[4].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[5].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[5].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[6].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[6].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[7].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[7].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[8].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[8].ADDRESS_REG__0\,
      \ADDRESS_STORE_GEN[9].ADDRESS_REG__0\ => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[9].ADDRESS_REG__0\,
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC\ => AXI_EMC_NATIVE_INTERFACE_I_n_40,
      \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\ => \MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0\,
      Bus2IP_Mem_CS_d1_reg(0) => \MEM_STATE_MACHINE_I/p_0_in\(0),
      Bus2IP_RdReq_emc => Bus2IP_RdReq_emc,
      CE => \IPIC_IF_I/BURST_CNT/CE\,
      Cycle_cnt_en_int => \ADDR_COUNTER_MUX_I/Cycle_cnt_en_int\,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]\ => EMC_CTRL_I_n_75,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[0]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_84,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]\ => EMC_CTRL_I_n_74,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_42,
      \DATAWIDTH_MATCH_GEN.addr_cnt_i_reg[1]_1\ => AXI_EMC_NATIVE_INTERFACE_I_n_85,
      \DATA_STORE_GEN[0].WRDATA_REG\ => AXI_EMC_NATIVE_INTERFACE_I_n_46,
      \DATA_STORE_GEN[24].WRDATA_REG\(31 downto 0) => temp_bus2ip_data(31 downto 0),
      \FSM_sequential_crnt_state_reg[0]\ => EMC_CTRL_I_n_69,
      \FSM_sequential_crnt_state_reg[0]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_65,
      \FSM_sequential_crnt_state_reg[0]_1\ => AXI_EMC_NATIVE_INTERFACE_I_n_75,
      \FSM_sequential_crnt_state_reg[1]\ => EMC_CTRL_I_n_64,
      \FSM_sequential_crnt_state_reg[1]_0\ => EMC_CTRL_I_n_66,
      \FSM_sequential_crnt_state_reg[1]_1\ => EMC_CTRL_I_n_68,
      \FSM_sequential_crnt_state_reg[1]_2\ => AXI_EMC_NATIVE_INTERFACE_I_n_67,
      \FSM_sequential_crnt_state_reg[2]\ => EMC_CTRL_I_n_55,
      \FSM_sequential_crnt_state_reg[3]\ => EMC_CTRL_I_n_65,
      \FSM_sequential_crnt_state_reg[3]_0\ => EMC_CTRL_I_n_70,
      \FSM_sequential_crnt_state_reg[3]_1\ => AXI_EMC_NATIVE_INTERFACE_I_n_66,
      \FSM_sequential_crnt_state_reg[4]\ => EMC_CTRL_I_n_71,
      \FSM_sequential_emc_addr_ps_reg[0]\ => AXI_EMC_NATIVE_INTERFACE_I_n_39,
      \FSM_sequential_emc_addr_ps_reg[0]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_53,
      \IP2Bus_Data_reg[0]\(31) => ip2bus_data(0),
      \IP2Bus_Data_reg[0]\(30) => ip2bus_data(1),
      \IP2Bus_Data_reg[0]\(29) => ip2bus_data(2),
      \IP2Bus_Data_reg[0]\(28) => ip2bus_data(3),
      \IP2Bus_Data_reg[0]\(27) => ip2bus_data(4),
      \IP2Bus_Data_reg[0]\(26) => ip2bus_data(5),
      \IP2Bus_Data_reg[0]\(25) => ip2bus_data(6),
      \IP2Bus_Data_reg[0]\(24) => ip2bus_data(7),
      \IP2Bus_Data_reg[0]\(23) => ip2bus_data(8),
      \IP2Bus_Data_reg[0]\(22) => ip2bus_data(9),
      \IP2Bus_Data_reg[0]\(21) => ip2bus_data(10),
      \IP2Bus_Data_reg[0]\(20) => ip2bus_data(11),
      \IP2Bus_Data_reg[0]\(19) => ip2bus_data(12),
      \IP2Bus_Data_reg[0]\(18) => ip2bus_data(13),
      \IP2Bus_Data_reg[0]\(17) => ip2bus_data(14),
      \IP2Bus_Data_reg[0]\(16) => ip2bus_data(15),
      \IP2Bus_Data_reg[0]\(15) => ip2bus_data(16),
      \IP2Bus_Data_reg[0]\(14) => ip2bus_data(17),
      \IP2Bus_Data_reg[0]\(13) => ip2bus_data(18),
      \IP2Bus_Data_reg[0]\(12) => ip2bus_data(19),
      \IP2Bus_Data_reg[0]\(11) => ip2bus_data(20),
      \IP2Bus_Data_reg[0]\(10) => ip2bus_data(21),
      \IP2Bus_Data_reg[0]\(9) => ip2bus_data(22),
      \IP2Bus_Data_reg[0]\(8) => ip2bus_data(23),
      \IP2Bus_Data_reg[0]\(7) => ip2bus_data(24),
      \IP2Bus_Data_reg[0]\(6) => ip2bus_data(25),
      \IP2Bus_Data_reg[0]\(5) => ip2bus_data(26),
      \IP2Bus_Data_reg[0]\(4) => ip2bus_data(27),
      \IP2Bus_Data_reg[0]\(3) => ip2bus_data(28),
      \IP2Bus_Data_reg[0]\(2) => ip2bus_data(29),
      \IP2Bus_Data_reg[0]\(1) => ip2bus_data(30),
      \IP2Bus_Data_reg[0]\(0) => ip2bus_data(31),
      IP2Bus_RdAck0 => \IPIC_IF_I/IP2Bus_RdAck0\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => EMC_CTRL_I_n_72,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ => EMC_CTRL_I_n_58,
      \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_74,
      \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ => AXI_EMC_NATIVE_INTERFACE_I_n_70,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_1\ => \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ => EMC_CTRL_I_n_57,
      \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0\ => EMC_CTRL_I_n_63,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ => \IPIC_IF_I/BURST_CNT/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ => EMC_CTRL_I_n_67,
      \PERBIT_GEN[7].MULT_AND_i1_i_3\ => AXI_EMC_NATIVE_INTERFACE_I_n_44,
      \PERBIT_GEN[7].MULT_AND_i1_i_3_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_64,
      Q(0) => \MEM_STATE_MACHINE_I/crnt_state\(3),
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_10\ => AXI_EMC_NATIVE_INTERFACE_I_n_76,
      \RDDATA_PATH_MUX_GEN.ASYNC_ADDR_CNT_GEN.addr_cnt_d1[0]_i_2\ => AXI_EMC_NATIVE_INTERFACE_I_n_68,
      S => \IPIC_IF_I/BURST_CNT/S\,
      S_0 => \ADDR_COUNTER_MUX_I/DATAWIDTH_MATCH_GEN.CYCLE_END_CNTR_I/S\,
      burst_cnt_i(0 to 7) => \IPIC_IF_I/burst_cnt_i\(0 to 7),
      bus2Mem_RdReq => bus2Mem_RdReq,
      \bus2ip_addr_i_reg[12]\ => AXI_EMC_NATIVE_INTERFACE_I_n_48,
      \bus2ip_addr_i_reg[12]_0\ => AXI_EMC_NATIVE_INTERFACE_I_n_50,
      bus2ip_addr_temp(29 downto 0) => bus2ip_addr_temp(31 downto 2),
      bus2ip_ben_fixed(0 to 3) => bus2ip_ben_fixed(0 to 3),
      bus2ip_burst => bus2ip_burst,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrreq_i => bus2ip_wrreq_i,
      cycle_cnt(0 to 1) => \ADDR_COUNTER_MUX_I/cycle_cnt\(0 to 1),
      ip2bus_addrack => ip2bus_addrack,
      ip2bus_rdack => ip2bus_rdack,
      mem_ben(0) => mem_ben(0),
      mem_ce(0) => mem_ce(0),
      mem_cen(0) => mem_cen(0),
      mem_dq_i(7 downto 0) => mem_dq_i(7 downto 0),
      mem_dq_o(7 downto 0) => mem_dq_o(7 downto 0),
      mem_dq_t(7 downto 0) => mem_dq_t(7 downto 0),
      mem_oen(0) => mem_oen(0),
      mem_qwen(0) => mem_qwen(0),
      mem_rnw => mem_rnw,
      mem_rpn => mem_rpn,
      mem_wen => mem_wen,
      pend_rdreq => \IPIC_IF_I/pend_rdreq\,
      pend_rdreq_reg => AXI_EMC_NATIVE_INTERFACE_I_n_86,
      pend_rdreq_reg_0 => AXI_EMC_NATIVE_INTERFACE_I_n_69,
      pend_wrreq => \IPIC_IF_I/pend_wrreq\,
      pend_wrreq_reg => EMC_CTRL_I_n_59,
      pend_wrreq_reg_0 => AXI_EMC_NATIVE_INTERFACE_I_n_63,
      rd_fifo_wr_en => rd_fifo_wr_en,
      rdce_out_i => \AXI_EMC_ADDRESS_DECODE_INSTANCE_I/rdce_out_i\,
      rdclk => rdclk,
      reset_fifo => \IPIC_IF_I/reset_fifo\,
      rw_flag_reg => rw_flag_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_mem_arburst(1 downto 0) => s_axi_mem_arburst(1 downto 0),
      s_axi_mem_arburst_0_sp_1 => EMC_CTRL_I_n_54,
      s_axi_mem_arburst_1_sp_1 => EMC_CTRL_I_n_62,
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awburst(1 downto 0) => s_axi_mem_awburst(1 downto 0),
      s_axi_mem_awburst_0_sp_1 => EMC_CTRL_I_n_60,
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      s_axi_mem_awvalid_0 => EMC_CTRL_I_n_61,
      s_axi_mem_wlast => s_axi_mem_wlast,
      s_axi_mem_wvalid => s_axi_mem_wvalid,
      temp_bus2ip_cs => temp_bus2ip_cs,
      transaction_done_i => transaction_done_i
    );
\mem_a_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => EMC_CTRL_I_n_74,
      Q => mem_a(0),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[21].ADDRESS_REG__0\,
      Q => mem_a(10),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[20].ADDRESS_REG__0\,
      Q => mem_a(11),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[19].ADDRESS_REG__0\,
      Q => mem_a(12),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[18].ADDRESS_REG__0\,
      Q => mem_a(13),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[17].ADDRESS_REG__0\,
      Q => mem_a(14),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[16].ADDRESS_REG__0\,
      Q => mem_a(15),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[15].ADDRESS_REG__0\,
      Q => mem_a(16),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[14].ADDRESS_REG__0\,
      Q => mem_a(17),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[13].ADDRESS_REG__0\,
      Q => mem_a(18),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[12].ADDRESS_REG__0\,
      Q => mem_a(19),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => EMC_CTRL_I_n_75,
      Q => mem_a(1),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[11].ADDRESS_REG__0\,
      Q => mem_a(20),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[10].ADDRESS_REG__0\,
      Q => mem_a(21),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[9].ADDRESS_REG__0\,
      Q => mem_a(22),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[8].ADDRESS_REG__0\,
      Q => mem_a(23),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[7].ADDRESS_REG__0\,
      Q => mem_a(24),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[6].ADDRESS_REG__0\,
      Q => mem_a(25),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[5].ADDRESS_REG__0\,
      Q => mem_a(26),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[4].ADDRESS_REG__0\,
      Q => mem_a(27),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[3].ADDRESS_REG__0\,
      Q => mem_a(28),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[2].ADDRESS_REG__0\,
      Q => mem_a(29),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[29].ADDRESS_REG__0\,
      Q => mem_a(2),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[1].ADDRESS_REG__0\,
      Q => mem_a(30),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[0].ADDRESS_REG__0\,
      Q => mem_a(31),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[28].ADDRESS_REG__0\,
      Q => mem_a(3),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[27].ADDRESS_REG__0\,
      Q => mem_a(4),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[26].ADDRESS_REG__0\,
      Q => mem_a(5),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[25].ADDRESS_REG__0\,
      Q => mem_a(6),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[24].ADDRESS_REG__0\,
      Q => mem_a(7),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[23].ADDRESS_REG__0\,
      Q => mem_a(8),
      R => EMC_CTRL_I_n_65
    );
\mem_a_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rdclk,
      CE => '1',
      D => \ADDR_COUNTER_MUX_I/ADDRESS_STORE_GEN[22].ADDRESS_REG__0\,
      Q => mem_a(9),
      R => EMC_CTRL_I_n_65
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_bd_0_axi_emc_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rdclk : in STD_LOGIC;
    s_axi_mem_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_mem_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_awlock : in STD_LOGIC;
    s_axi_mem_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_mem_awvalid : in STD_LOGIC;
    s_axi_mem_awready : out STD_LOGIC;
    s_axi_mem_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_wlast : in STD_LOGIC;
    s_axi_mem_wvalid : in STD_LOGIC;
    s_axi_mem_wready : out STD_LOGIC;
    s_axi_mem_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_bvalid : out STD_LOGIC;
    s_axi_mem_bready : in STD_LOGIC;
    s_axi_mem_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_mem_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_mem_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_arlock : in STD_LOGIC;
    s_axi_mem_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_mem_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_mem_arvalid : in STD_LOGIC;
    s_axi_mem_arready : out STD_LOGIC;
    s_axi_mem_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_mem_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_mem_rlast : out STD_LOGIC;
    s_axi_mem_rvalid : out STD_LOGIC;
    s_axi_mem_rready : in STD_LOGIC;
    mem_dq_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_dq_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_dq_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_ce : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_cen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_wen : out STD_LOGIC;
    mem_ben : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_qwen : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_rpn : out STD_LOGIC;
    mem_adv_ldn : out STD_LOGIC;
    mem_lbon : out STD_LOGIC;
    mem_cken : out STD_LOGIC;
    mem_rnw : out STD_LOGIC;
    mem_cre : out STD_LOGIC;
    mem_wait : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI_bd_0_axi_emc_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI_bd_0_axi_emc_0_0 : entity is "AXI_bd_0_axi_emc_0_0,axi_emc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of AXI_bd_0_axi_emc_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of AXI_bd_0_axi_emc_0_0 : entity is "axi_emc,Vivado 2018.3";
end AXI_bd_0_axi_emc_0_0;

architecture STRUCTURE of AXI_bd_0_axi_emc_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_mem_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_mem_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of mem_adv_ldn : signal is "xilinx.com:interface:emc:1.0 EMC_INTF ADV_LDN";
  attribute x_interface_info of mem_cken : signal is "xilinx.com:interface:emc:1.0 EMC_INTF CLKEN";
  attribute x_interface_info of mem_cre : signal is "xilinx.com:interface:emc:1.0 EMC_INTF CRE";
  attribute x_interface_info of mem_lbon : signal is "xilinx.com:interface:emc:1.0 EMC_INTF LBON";
  attribute x_interface_info of mem_rnw : signal is "xilinx.com:interface:emc:1.0 EMC_INTF RNW";
  attribute x_interface_info of mem_rpn : signal is "xilinx.com:interface:emc:1.0 EMC_INTF RPN";
  attribute x_interface_info of mem_wen : signal is "xilinx.com:interface:emc:1.0 EMC_INTF WEN";
  attribute sigis : string;
  attribute sigis of rdclk : signal is "Clk";
  attribute x_interface_info of rdclk : signal is "xilinx.com:signal:clock:1.0 rdclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rdclk : signal is "XIL_INTERFACENAME rdclk, ASSOCIATED_BUSIF EMC_INTF, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_mem:s_axi_reg, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute sigis of s_axi_aresetn : signal is "Rst";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_mem_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLOCK";
  attribute x_interface_info of s_axi_mem_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARREADY";
  attribute x_interface_info of s_axi_mem_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARVALID";
  attribute x_interface_info of s_axi_mem_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLOCK";
  attribute x_interface_info of s_axi_mem_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWREADY";
  attribute x_interface_info of s_axi_mem_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWVALID";
  attribute x_interface_info of s_axi_mem_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM BREADY";
  attribute x_interface_info of s_axi_mem_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM BVALID";
  attribute x_interface_info of s_axi_mem_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RLAST";
  attribute x_interface_info of s_axi_mem_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RREADY";
  attribute x_interface_info of s_axi_mem_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RVALID";
  attribute x_interface_info of s_axi_mem_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WLAST";
  attribute x_interface_info of s_axi_mem_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WREADY";
  attribute x_interface_info of s_axi_mem_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WVALID";
  attribute x_interface_info of mem_a : signal is "xilinx.com:interface:emc:1.0 EMC_INTF ADDR";
  attribute x_interface_info of mem_ben : signal is "xilinx.com:interface:emc:1.0 EMC_INTF BEN";
  attribute x_interface_info of mem_ce : signal is "xilinx.com:interface:emc:1.0 EMC_INTF CE";
  attribute x_interface_info of mem_cen : signal is "xilinx.com:interface:emc:1.0 EMC_INTF CE_N";
  attribute x_interface_info of mem_dq_i : signal is "xilinx.com:interface:emc:1.0 EMC_INTF DQ_I";
  attribute x_interface_parameter of mem_dq_i : signal is "XIL_INTERFACENAME EMC_INTF, BOARD.ASSOCIATED_PARAM EMC_BOARD_INTERFACE";
  attribute x_interface_info of mem_dq_o : signal is "xilinx.com:interface:emc:1.0 EMC_INTF DQ_O";
  attribute x_interface_info of mem_dq_t : signal is "xilinx.com:interface:emc:1.0 EMC_INTF DQ_T";
  attribute x_interface_info of mem_oen : signal is "xilinx.com:interface:emc:1.0 EMC_INTF OEN";
  attribute x_interface_info of mem_qwen : signal is "xilinx.com:interface:emc:1.0 EMC_INTF QWEN";
  attribute x_interface_info of mem_wait : signal is "xilinx.com:interface:emc:1.0 EMC_INTF WAIT";
  attribute x_interface_info of s_axi_mem_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARADDR";
  attribute x_interface_info of s_axi_mem_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARBURST";
  attribute x_interface_info of s_axi_mem_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARCACHE";
  attribute x_interface_info of s_axi_mem_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARID";
  attribute x_interface_info of s_axi_mem_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLEN";
  attribute x_interface_info of s_axi_mem_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARPROT";
  attribute x_interface_info of s_axi_mem_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARSIZE";
  attribute x_interface_info of s_axi_mem_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWADDR";
  attribute x_interface_info of s_axi_mem_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWBURST";
  attribute x_interface_info of s_axi_mem_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWCACHE";
  attribute x_interface_info of s_axi_mem_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWID";
  attribute x_interface_parameter of s_axi_mem_awid : signal is "XIL_INTERFACENAME S_AXI_MEM, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 4, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_mem_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLEN";
  attribute x_interface_info of s_axi_mem_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWPROT";
  attribute x_interface_info of s_axi_mem_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWSIZE";
  attribute x_interface_info of s_axi_mem_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM BID";
  attribute x_interface_info of s_axi_mem_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM BRESP";
  attribute x_interface_info of s_axi_mem_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RDATA";
  attribute x_interface_info of s_axi_mem_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RID";
  attribute x_interface_info of s_axi_mem_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM RRESP";
  attribute x_interface_info of s_axi_mem_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WDATA";
  attribute x_interface_info of s_axi_mem_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MEM WSTRB";
begin
  mem_adv_ldn <= \<const0>\;
  mem_cken <= \<const0>\;
  mem_lbon <= \<const0>\;
  s_axi_mem_bresp(1) <= \^s_axi_mem_bresp\(1);
  s_axi_mem_bresp(0) <= \<const0>\;
  s_axi_mem_rresp(1) <= \^s_axi_mem_rresp\(1);
  s_axi_mem_rresp(0) <= \<const0>\;
  mem_cre <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.AXI_bd_0_axi_emc_0_0_axi_emc
     port map (
      mem_a(31 downto 0) => mem_a(31 downto 0),
      mem_ben(0) => mem_ben(0),
      mem_ce(0) => mem_ce(0),
      mem_cen(0) => mem_cen(0),
      mem_dq_i(7 downto 0) => mem_dq_i(7 downto 0),
      mem_dq_o(7 downto 0) => mem_dq_o(7 downto 0),
      mem_dq_t(7 downto 0) => mem_dq_t(7 downto 0),
      mem_oen(0) => mem_oen(0),
      mem_qwen(0) => mem_qwen(0),
      mem_rnw => mem_rnw,
      mem_rpn => mem_rpn,
      mem_wen => mem_wen,
      rdclk => rdclk,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_mem_araddr(31 downto 0) => s_axi_mem_araddr(31 downto 0),
      s_axi_mem_arburst(1 downto 0) => s_axi_mem_arburst(1 downto 0),
      s_axi_mem_arid(1 downto 0) => s_axi_mem_arid(1 downto 0),
      s_axi_mem_arlen(7 downto 0) => s_axi_mem_arlen(7 downto 0),
      s_axi_mem_arready => s_axi_mem_arready,
      s_axi_mem_arsize(1 downto 0) => s_axi_mem_arsize(1 downto 0),
      s_axi_mem_arvalid => s_axi_mem_arvalid,
      s_axi_mem_awaddr(31 downto 0) => s_axi_mem_awaddr(31 downto 0),
      s_axi_mem_awburst(1 downto 0) => s_axi_mem_awburst(1 downto 0),
      s_axi_mem_awid(1 downto 0) => s_axi_mem_awid(1 downto 0),
      s_axi_mem_awlen(7 downto 0) => s_axi_mem_awlen(7 downto 0),
      s_axi_mem_awready => s_axi_mem_awready,
      s_axi_mem_awsize(1 downto 0) => s_axi_mem_awsize(1 downto 0),
      s_axi_mem_awvalid => s_axi_mem_awvalid,
      s_axi_mem_bid(1 downto 0) => s_axi_mem_bid(1 downto 0),
      s_axi_mem_bready => s_axi_mem_bready,
      s_axi_mem_bresp(0) => \^s_axi_mem_bresp\(1),
      s_axi_mem_bvalid_reg_reg => s_axi_mem_bvalid,
      s_axi_mem_rdata(31 downto 0) => s_axi_mem_rdata(31 downto 0),
      s_axi_mem_rid(1 downto 0) => s_axi_mem_rid(1 downto 0),
      s_axi_mem_rlast => s_axi_mem_rlast,
      s_axi_mem_rready => s_axi_mem_rready,
      s_axi_mem_rresp(0) => \^s_axi_mem_rresp\(1),
      s_axi_mem_rvalid => s_axi_mem_rvalid,
      s_axi_mem_wdata(31 downto 0) => s_axi_mem_wdata(31 downto 0),
      s_axi_mem_wlast => s_axi_mem_wlast,
      s_axi_mem_wready => s_axi_mem_wready,
      s_axi_mem_wstrb(3 downto 0) => s_axi_mem_wstrb(3 downto 0),
      s_axi_mem_wvalid => s_axi_mem_wvalid
    );
end STRUCTURE;
