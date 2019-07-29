-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 29 09:07:33 2019
-- Host        : Hft-W-Habel running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_xbar_0/mcu_xbar_0_sim_netlist.vhdl
-- Design      : mcu_xbar_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter is
  port (
    aa_mi_arvalid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.s_ready_i_reg[3]_0\ : out STD_LOGIC;
    ADDRESS_HIT_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_arbiter.s_ready_i_reg[0]_0\ : out STD_LOGIC;
    ADDRESS_HIT_0_0 : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[1]_0\ : out STD_LOGIC;
    ADDRESS_HIT_0_1 : out STD_LOGIC;
    ADDRESS_HIT_0_2 : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[2]_0\ : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[1]_0\ : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[63]_0\ : out STD_LOGIC_VECTOR ( 58 downto 0 );
    \gen_arbiter.m_target_hot_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_arbiter.m_mesg_i_reg[0]_0\ : out STD_LOGIC;
    \gen_arbiter.m_valid_i_reg_0\ : out STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[2]_0\ : out STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[0]_0\ : out STD_LOGIC;
    match : out STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[2]_1\ : out STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[0]_1\ : out STD_LOGIC;
    s_axi_araddr_126_sp_1 : out STD_LOGIC;
    s_axi_araddr_87_sp_1 : out STD_LOGIC;
    s_axi_araddr_81_sp_1 : out STD_LOGIC;
    s_axi_araddr_91_sp_1 : out STD_LOGIC;
    s_axi_araddr_95_sp_1 : out STD_LOGIC;
    \gen_arbiter.m_valid_i_reg_1\ : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.m_valid_i_reg_2\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[8]\ : out STD_LOGIC;
    \gen_axi.read_cs_reg[0]\ : out STD_LOGIC;
    \gen_axi.s_axi_arready_i_reg\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[3]_1\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[3]_2\ : out STD_LOGIC;
    s_axi_araddr_30_sp_1 : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[0]_1\ : out STD_LOGIC;
    s_axi_araddr_62_sp_1 : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[1]_1\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[2]_1\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[2]_2\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_hot_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_hot_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_15_in : in STD_LOGIC;
    mi_arready_2 : in STD_LOGIC;
    p_20_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aresetn_d : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_0\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_1\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.m_grant_enc_i_reg[0]_0\ : in STD_LOGIC;
    valid_qual_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_grant_enc_i_reg[0]_1\ : in STD_LOGIC;
    \gen_arbiter.m_grant_enc_i_reg[0]_2\ : in STD_LOGIC;
    match_5 : in STD_LOGIC;
    match_6 : in STD_LOGIC;
    match_7 : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[1]_0\ : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[1]_1\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \gen_master_slots[2].r_issuing_cnt_reg[16]\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_issue.active_target_enc\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_issue.active_target_enc_8\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_enc_9\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter : entity is "axi_crossbar_v2_1_19_addr_arbiter";
end mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter is
  signal \^address_hit_0\ : STD_LOGIC;
  signal \^address_hit_0_0\ : STD_LOGIC;
  signal \^address_hit_0_1\ : STD_LOGIC;
  signal \^address_hit_0_2\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aa_mi_arvalid\ : STD_LOGIC;
  signal f_hot2enc_return : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_arbiter.any_grant_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_reg_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[3]_i_10_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[3]_i_8_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[3]_i_9_n_0\ : STD_LOGIC;
  signal \^gen_arbiter.last_rr_hot_reg[0]_0\ : STD_LOGIC;
  signal \^gen_arbiter.last_rr_hot_reg[0]_1\ : STD_LOGIC;
  signal \^gen_arbiter.last_rr_hot_reg[2]_0\ : STD_LOGIC;
  signal \^gen_arbiter.last_rr_hot_reg[2]_1\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \^gen_arbiter.m_mesg_i_reg[63]_0\ : STD_LOGIC_VECTOR ( 58 downto 0 );
  signal \gen_arbiter.m_target_hot_i[0]_i_10_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_11_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_12_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_13_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_8_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_9_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[1]_i_5_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[1]_i_6_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[2]_i_10_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[2]_i_11_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[2]_i_12_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[2]_i_13_n_0\ : STD_LOGIC;
  signal \^gen_arbiter.m_target_hot_i_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_arbiter.m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_4_n_0\ : STD_LOGIC;
  signal grant_hot : STD_LOGIC;
  signal m_mesg_mux : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m_target_hot_mux : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^match\ : STD_LOGIC;
  signal p_0_in38_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_6_in29_in : STD_LOGIC;
  signal p_7_in20_in : STD_LOGIC;
  signal qual_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_araddr_126_sn_1 : STD_LOGIC;
  signal s_axi_araddr_30_sn_1 : STD_LOGIC;
  signal s_axi_araddr_62_sn_1 : STD_LOGIC;
  signal s_axi_araddr_81_sn_1 : STD_LOGIC;
  signal s_axi_araddr_87_sn_1 : STD_LOGIC;
  signal s_axi_araddr_91_sn_1 : STD_LOGIC;
  signal s_axi_araddr_95_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[3]_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[3]_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[3]_i_12\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[3]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[1]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[1]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[2]_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_arbiter.m_valid_i_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_arready_i_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[3]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[11]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_master_slots[2].r_issuing_cnt[16]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_single_issue.active_target_enc[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_single_issue.active_target_enc[0]_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_single_issue.active_target_enc[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_single_issue.active_target_hot[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_single_issue.active_target_hot[0]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_enc[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_enc[0]_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_hot[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_hot[0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axi_arvalid[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axi_arvalid[1]_INST_0\ : label is "soft_lutpair5";
begin
  ADDRESS_HIT_0 <= \^address_hit_0\;
  ADDRESS_HIT_0_0 <= \^address_hit_0_0\;
  ADDRESS_HIT_0_1 <= \^address_hit_0_1\;
  ADDRESS_HIT_0_2 <= \^address_hit_0_2\;
  Q(3 downto 0) <= \^q\(3 downto 0);
  SR(0) <= \^sr\(0);
  aa_mi_arvalid <= \^aa_mi_arvalid\;
  \gen_arbiter.last_rr_hot_reg[0]_0\ <= \^gen_arbiter.last_rr_hot_reg[0]_0\;
  \gen_arbiter.last_rr_hot_reg[0]_1\ <= \^gen_arbiter.last_rr_hot_reg[0]_1\;
  \gen_arbiter.last_rr_hot_reg[2]_0\ <= \^gen_arbiter.last_rr_hot_reg[2]_0\;
  \gen_arbiter.last_rr_hot_reg[2]_1\ <= \^gen_arbiter.last_rr_hot_reg[2]_1\;
  \gen_arbiter.m_mesg_i_reg[63]_0\(58 downto 0) <= \^gen_arbiter.m_mesg_i_reg[63]_0\(58 downto 0);
  \gen_arbiter.m_target_hot_i_reg[2]_0\(2 downto 0) <= \^gen_arbiter.m_target_hot_i_reg[2]_0\(2 downto 0);
  match <= \^match\;
  s_axi_araddr_126_sp_1 <= s_axi_araddr_126_sn_1;
  s_axi_araddr_30_sp_1 <= s_axi_araddr_30_sn_1;
  s_axi_araddr_62_sp_1 <= s_axi_araddr_62_sn_1;
  s_axi_araddr_81_sp_1 <= s_axi_araddr_81_sn_1;
  s_axi_araddr_87_sp_1 <= s_axi_araddr_87_sn_1;
  s_axi_araddr_91_sp_1 <= s_axi_araddr_91_sn_1;
  s_axi_araddr_95_sp_1 <= s_axi_araddr_95_sn_1;
\gen_arbiter.any_grant_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA888000000000"
    )
        port map (
      I0 => aresetn_d,
      I1 => \gen_arbiter.last_rr_hot[3]_i_3_n_0\,
      I2 => \gen_arbiter.any_grant_reg_0\,
      I3 => \gen_arbiter.any_grant_reg_1\,
      I4 => \gen_arbiter.any_grant_reg_n_0\,
      I5 => \gen_arbiter.grant_hot[3]_i_2_n_0\,
      O => \gen_arbiter.any_grant_i_1__0_n_0\
    );
\gen_arbiter.any_grant_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_araddr(126),
      I1 => s_axi_araddr(127),
      O => s_axi_araddr_126_sn_1
    );
\gen_arbiter.any_grant_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.any_grant_i_1__0_n_0\,
      Q => \gen_arbiter.any_grant_reg_n_0\,
      R => '0'
    );
\gen_arbiter.grant_hot[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_arbiter.grant_hot[3]_i_2_n_0\,
      I1 => aresetn_d,
      O => \gen_arbiter.grant_hot[3]_i_1_n_0\
    );
\gen_arbiter.grant_hot[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07770000FFFFFFFF"
    )
        port map (
      I0 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      I1 => m_axi_arready(0),
      I2 => m_axi_arready(1),
      I3 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(1),
      I4 => \gen_arbiter.grant_hot[3]_i_3_n_0\,
      I5 => \^aa_mi_arvalid\,
      O => \gen_arbiter.grant_hot[3]_i_2_n_0\
    );
\gen_arbiter.grant_hot[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(2),
      I1 => mi_arready_2,
      O => \gen_arbiter.grant_hot[3]_i_3_n_0\
    );
\gen_arbiter.grant_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[2]_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      R => \gen_arbiter.grant_hot[3]_i_1_n_0\
    );
\gen_arbiter.grant_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      R => \gen_arbiter.grant_hot[3]_i_1_n_0\
    );
\gen_arbiter.grant_hot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[0]_1\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      R => \gen_arbiter.grant_hot[3]_i_1_n_0\
    );
\gen_arbiter.grant_hot_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[2]_1\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[3]\,
      R => \gen_arbiter.grant_hot[3]_i_1_n_0\
    );
\gen_arbiter.last_rr_hot[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00020"
    )
        port map (
      I0 => \gen_arbiter.last_rr_hot[3]_i_10_n_0\,
      I1 => p_6_in29_in,
      I2 => \gen_arbiter.last_rr_hot[3]_i_8_n_0\,
      I3 => p_0_in38_in,
      I4 => p_5_in,
      I5 => p_6_in,
      O => \^gen_arbiter.last_rr_hot_reg[2]_0\
    );
\gen_arbiter.last_rr_hot[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F400000000"
    )
        port map (
      I0 => p_0_in38_in,
      I1 => \gen_arbiter.last_rr_hot[1]_i_2_n_0\,
      I2 => \gen_arbiter.last_rr_hot[2]_i_2_n_0\,
      I3 => \gen_arbiter.last_rr_hot[3]_i_8_n_0\,
      I4 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I5 => p_7_in20_in,
      O => \^gen_arbiter.last_rr_hot_reg[0]_0\
    );
\gen_arbiter.last_rr_hot[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => p_4_in,
      I1 => qual_reg(2),
      I2 => s_axi_arvalid(2),
      I3 => \^q\(2),
      O => \gen_arbiter.last_rr_hot[1]_i_2_n_0\
    );
\gen_arbiter.last_rr_hot[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00020"
    )
        port map (
      I0 => \gen_arbiter.last_rr_hot[2]_i_2_n_0\,
      I1 => \gen_arbiter.last_rr_hot[3]_i_8_n_0\,
      I2 => p_6_in29_in,
      I3 => p_7_in20_in,
      I4 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I5 => p_4_in,
      O => \^gen_arbiter.last_rr_hot_reg[0]_1\
    );
\gen_arbiter.last_rr_hot[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBF00"
    )
        port map (
      I0 => \^q\(3),
      I1 => s_axi_arvalid(3),
      I2 => qual_reg(3),
      I3 => p_5_in,
      I4 => p_6_in,
      O => \gen_arbiter.last_rr_hot[2]_i_2_n_0\
    );
\gen_arbiter.last_rr_hot[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_arvalid(1),
      I2 => qual_reg(1),
      O => p_7_in20_in
    );
\gen_arbiter.last_rr_hot[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA888"
    )
        port map (
      I0 => \gen_arbiter.last_rr_hot[3]_i_3_n_0\,
      I1 => \gen_arbiter.m_grant_enc_i_reg[0]_0\,
      I2 => \^gen_arbiter.last_rr_hot_reg[2]_0\,
      I3 => valid_qual_i(0),
      I4 => \gen_arbiter.m_grant_enc_i_reg[0]_1\,
      I5 => \gen_arbiter.m_grant_enc_i_reg[0]_2\,
      O => grant_hot
    );
\gen_arbiter.last_rr_hot[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBF00"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_arvalid(1),
      I2 => qual_reg(1),
      I3 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I4 => p_4_in,
      O => \gen_arbiter.last_rr_hot[3]_i_10_n_0\
    );
\gen_arbiter.last_rr_hot[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(2),
      I1 => s_axi_arvalid(2),
      I2 => qual_reg(2),
      O => p_6_in29_in
    );
\gen_arbiter.last_rr_hot[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(3),
      I1 => s_axi_arvalid(3),
      I2 => qual_reg(3),
      O => p_0_in38_in
    );
\gen_arbiter.last_rr_hot[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F400000000"
    )
        port map (
      I0 => \gen_arbiter.last_rr_hot[3]_i_8_n_0\,
      I1 => \gen_arbiter.last_rr_hot[3]_i_9_n_0\,
      I2 => \gen_arbiter.last_rr_hot[3]_i_10_n_0\,
      I3 => p_6_in29_in,
      I4 => p_5_in,
      I5 => p_0_in38_in,
      O => \^gen_arbiter.last_rr_hot_reg[2]_1\
    );
\gen_arbiter.last_rr_hot[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \gen_arbiter.any_grant_reg_n_0\,
      I2 => \^gen_arbiter.last_rr_hot_reg[2]_0\,
      I3 => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      I4 => f_hot2enc_return(1),
      O => \gen_arbiter.last_rr_hot[3]_i_3_n_0\
    );
\gen_arbiter.last_rr_hot[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid(0),
      I2 => qual_reg(0),
      O => \gen_arbiter.last_rr_hot[3]_i_8_n_0\
    );
\gen_arbiter.last_rr_hot[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => p_6_in,
      I1 => qual_reg(1),
      I2 => s_axi_arvalid(1),
      I3 => \^q\(1),
      O => \gen_arbiter.last_rr_hot[3]_i_9_n_0\
    );
\gen_arbiter.last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[2]_0\,
      Q => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\gen_arbiter.last_rr_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      Q => p_4_in,
      R => \^sr\(0)
    );
\gen_arbiter.last_rr_hot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[0]_1\,
      Q => p_5_in,
      R => \^sr\(0)
    );
\gen_arbiter.last_rr_hot_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[2]_1\,
      Q => p_6_in,
      S => \^sr\(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      I1 => \^gen_arbiter.last_rr_hot_reg[2]_1\,
      O => f_hot2enc_return(0)
    );
\gen_arbiter.m_grant_enc_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_arbiter.last_rr_hot_reg[0]_1\,
      I1 => \^gen_arbiter.last_rr_hot_reg[2]_1\,
      O => f_hot2enc_return(1)
    );
\gen_arbiter.m_grant_enc_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => f_hot2enc_return(0),
      Q => m_mesg_mux(0),
      R => \^sr\(0)
    );
\gen_arbiter.m_grant_enc_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => f_hot2enc_return(1),
      Q => m_mesg_mux(1),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(104),
      I1 => s_axi_araddr(8),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(40),
      I5 => s_axi_araddr(72),
      O => m_mesg_mux(10)
    );
\gen_arbiter.m_mesg_i[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(105),
      I1 => s_axi_araddr(9),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(41),
      I5 => s_axi_araddr(73),
      O => m_mesg_mux(11)
    );
\gen_arbiter.m_mesg_i[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(106),
      I1 => s_axi_araddr(10),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(42),
      I5 => s_axi_araddr(74),
      O => m_mesg_mux(12)
    );
\gen_arbiter.m_mesg_i[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(107),
      I1 => s_axi_araddr(11),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(43),
      I5 => s_axi_araddr(75),
      O => m_mesg_mux(13)
    );
\gen_arbiter.m_mesg_i[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(108),
      I1 => s_axi_araddr(12),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(44),
      I5 => s_axi_araddr(76),
      O => m_mesg_mux(14)
    );
\gen_arbiter.m_mesg_i[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(109),
      I1 => s_axi_araddr(13),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(45),
      I5 => s_axi_araddr(77),
      O => m_mesg_mux(15)
    );
\gen_arbiter.m_mesg_i[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(110),
      I1 => s_axi_araddr(14),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(46),
      I5 => s_axi_araddr(78),
      O => m_mesg_mux(16)
    );
\gen_arbiter.m_mesg_i[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(111),
      I1 => s_axi_araddr(15),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(47),
      I5 => s_axi_araddr(79),
      O => m_mesg_mux(17)
    );
\gen_arbiter.m_mesg_i[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(112),
      I1 => s_axi_araddr(16),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(48),
      I5 => s_axi_araddr(80),
      O => m_mesg_mux(18)
    );
\gen_arbiter.m_mesg_i[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(113),
      I1 => s_axi_araddr(17),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(49),
      I5 => s_axi_araddr(81),
      O => m_mesg_mux(19)
    );
\gen_arbiter.m_mesg_i[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_d,
      O => \^sr\(0)
    );
\gen_arbiter.m_mesg_i[1]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      O => p_1_in
    );
\gen_arbiter.m_mesg_i[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(114),
      I1 => s_axi_araddr(18),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(50),
      I5 => s_axi_araddr(82),
      O => m_mesg_mux(20)
    );
\gen_arbiter.m_mesg_i[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(115),
      I1 => s_axi_araddr(19),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(51),
      I5 => s_axi_araddr(83),
      O => m_mesg_mux(21)
    );
\gen_arbiter.m_mesg_i[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(116),
      I1 => s_axi_araddr(20),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(52),
      I5 => s_axi_araddr(84),
      O => m_mesg_mux(22)
    );
\gen_arbiter.m_mesg_i[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(117),
      I1 => s_axi_araddr(21),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(53),
      I5 => s_axi_araddr(85),
      O => m_mesg_mux(23)
    );
\gen_arbiter.m_mesg_i[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(118),
      I1 => s_axi_araddr(22),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(54),
      I5 => s_axi_araddr(86),
      O => m_mesg_mux(24)
    );
\gen_arbiter.m_mesg_i[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(119),
      I1 => s_axi_araddr(23),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(55),
      I5 => s_axi_araddr(87),
      O => m_mesg_mux(25)
    );
\gen_arbiter.m_mesg_i[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(120),
      I1 => s_axi_araddr(24),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(56),
      I5 => s_axi_araddr(88),
      O => m_mesg_mux(26)
    );
\gen_arbiter.m_mesg_i[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(121),
      I1 => s_axi_araddr(25),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(57),
      I5 => s_axi_araddr(89),
      O => m_mesg_mux(27)
    );
\gen_arbiter.m_mesg_i[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(122),
      I1 => s_axi_araddr(26),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(58),
      I5 => s_axi_araddr(90),
      O => m_mesg_mux(28)
    );
\gen_arbiter.m_mesg_i[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(123),
      I1 => s_axi_araddr(27),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(59),
      I5 => s_axi_araddr(91),
      O => m_mesg_mux(29)
    );
\gen_arbiter.m_mesg_i[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(96),
      I1 => s_axi_araddr(0),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(32),
      I5 => s_axi_araddr(64),
      O => m_mesg_mux(2)
    );
\gen_arbiter.m_mesg_i[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(124),
      I1 => s_axi_araddr(28),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(60),
      I5 => s_axi_araddr(92),
      O => m_mesg_mux(30)
    );
\gen_arbiter.m_mesg_i[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(125),
      I1 => s_axi_araddr(29),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(61),
      I5 => s_axi_araddr(93),
      O => m_mesg_mux(31)
    );
\gen_arbiter.m_mesg_i[32]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(126),
      I1 => s_axi_araddr(30),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(62),
      I5 => s_axi_araddr(94),
      O => m_mesg_mux(32)
    );
\gen_arbiter.m_mesg_i[33]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(127),
      I1 => s_axi_araddr(31),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(63),
      I5 => s_axi_araddr(95),
      O => m_mesg_mux(33)
    );
\gen_arbiter.m_mesg_i[34]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arlen(24),
      I1 => s_axi_arlen(0),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arlen(8),
      I5 => s_axi_arlen(16),
      O => m_mesg_mux(34)
    );
\gen_arbiter.m_mesg_i[35]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arlen(25),
      I1 => s_axi_arlen(1),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arlen(9),
      I5 => s_axi_arlen(17),
      O => m_mesg_mux(35)
    );
\gen_arbiter.m_mesg_i[36]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arlen(26),
      I1 => s_axi_arlen(2),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arlen(10),
      I5 => s_axi_arlen(18),
      O => m_mesg_mux(36)
    );
\gen_arbiter.m_mesg_i[37]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arlen(27),
      I1 => s_axi_arlen(3),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arlen(11),
      I5 => s_axi_arlen(19),
      O => m_mesg_mux(37)
    );
\gen_arbiter.m_mesg_i[38]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arlen(28),
      I1 => s_axi_arlen(4),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arlen(12),
      I5 => s_axi_arlen(20),
      O => m_mesg_mux(38)
    );
\gen_arbiter.m_mesg_i[39]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arlen(29),
      I1 => s_axi_arlen(5),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arlen(13),
      I5 => s_axi_arlen(21),
      O => m_mesg_mux(39)
    );
\gen_arbiter.m_mesg_i[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(97),
      I1 => s_axi_araddr(1),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(33),
      I5 => s_axi_araddr(65),
      O => m_mesg_mux(3)
    );
\gen_arbiter.m_mesg_i[40]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arlen(30),
      I1 => s_axi_arlen(6),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arlen(14),
      I5 => s_axi_arlen(22),
      O => m_mesg_mux(40)
    );
\gen_arbiter.m_mesg_i[41]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arlen(31),
      I1 => s_axi_arlen(7),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arlen(15),
      I5 => s_axi_arlen(23),
      O => m_mesg_mux(41)
    );
\gen_arbiter.m_mesg_i[42]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arsize(9),
      I1 => s_axi_arsize(0),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arsize(3),
      I5 => s_axi_arsize(6),
      O => m_mesg_mux(42)
    );
\gen_arbiter.m_mesg_i[43]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arsize(10),
      I1 => s_axi_arsize(1),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arsize(4),
      I5 => s_axi_arsize(7),
      O => m_mesg_mux(43)
    );
\gen_arbiter.m_mesg_i[44]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arsize(11),
      I1 => s_axi_arsize(2),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arsize(5),
      I5 => s_axi_arsize(8),
      O => m_mesg_mux(44)
    );
\gen_arbiter.m_mesg_i[45]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arlock(3),
      I1 => s_axi_arlock(0),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arlock(1),
      I5 => s_axi_arlock(2),
      O => m_mesg_mux(45)
    );
\gen_arbiter.m_mesg_i[47]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arprot(9),
      I1 => s_axi_arprot(0),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arprot(3),
      I5 => s_axi_arprot(6),
      O => m_mesg_mux(47)
    );
\gen_arbiter.m_mesg_i[48]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arprot(10),
      I1 => s_axi_arprot(1),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arprot(4),
      I5 => s_axi_arprot(7),
      O => m_mesg_mux(48)
    );
\gen_arbiter.m_mesg_i[49]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arprot(11),
      I1 => s_axi_arprot(2),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arprot(5),
      I5 => s_axi_arprot(8),
      O => m_mesg_mux(49)
    );
\gen_arbiter.m_mesg_i[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(98),
      I1 => s_axi_araddr(2),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(34),
      I5 => s_axi_araddr(66),
      O => m_mesg_mux(4)
    );
\gen_arbiter.m_mesg_i[54]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arburst(6),
      I1 => s_axi_arburst(0),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arburst(2),
      I5 => s_axi_arburst(4),
      O => m_mesg_mux(54)
    );
\gen_arbiter.m_mesg_i[55]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arburst(7),
      I1 => s_axi_arburst(1),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arburst(3),
      I5 => s_axi_arburst(5),
      O => m_mesg_mux(55)
    );
\gen_arbiter.m_mesg_i[56]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arcache(12),
      I1 => s_axi_arcache(0),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arcache(4),
      I5 => s_axi_arcache(8),
      O => m_mesg_mux(56)
    );
\gen_arbiter.m_mesg_i[57]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arcache(13),
      I1 => s_axi_arcache(1),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arcache(5),
      I5 => s_axi_arcache(9),
      O => m_mesg_mux(57)
    );
\gen_arbiter.m_mesg_i[58]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arcache(14),
      I1 => s_axi_arcache(2),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arcache(6),
      I5 => s_axi_arcache(10),
      O => m_mesg_mux(58)
    );
\gen_arbiter.m_mesg_i[59]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arcache(15),
      I1 => s_axi_arcache(3),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arcache(7),
      I5 => s_axi_arcache(11),
      O => m_mesg_mux(59)
    );
\gen_arbiter.m_mesg_i[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(99),
      I1 => s_axi_araddr(3),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(35),
      I5 => s_axi_araddr(67),
      O => m_mesg_mux(5)
    );
\gen_arbiter.m_mesg_i[60]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arqos(12),
      I1 => s_axi_arqos(0),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arqos(4),
      I5 => s_axi_arqos(8),
      O => m_mesg_mux(60)
    );
\gen_arbiter.m_mesg_i[61]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arqos(13),
      I1 => s_axi_arqos(1),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arqos(5),
      I5 => s_axi_arqos(9),
      O => m_mesg_mux(61)
    );
\gen_arbiter.m_mesg_i[62]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arqos(14),
      I1 => s_axi_arqos(2),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arqos(6),
      I5 => s_axi_arqos(10),
      O => m_mesg_mux(62)
    );
\gen_arbiter.m_mesg_i[63]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_arqos(15),
      I1 => s_axi_arqos(3),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_arqos(7),
      I5 => s_axi_arqos(11),
      O => m_mesg_mux(63)
    );
\gen_arbiter.m_mesg_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(100),
      I1 => s_axi_araddr(4),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(36),
      I5 => s_axi_araddr(68),
      O => m_mesg_mux(6)
    );
\gen_arbiter.m_mesg_i[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(101),
      I1 => s_axi_araddr(5),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(37),
      I5 => s_axi_araddr(69),
      O => m_mesg_mux(7)
    );
\gen_arbiter.m_mesg_i[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(102),
      I1 => s_axi_araddr(6),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(38),
      I5 => s_axi_araddr(70),
      O => m_mesg_mux(8)
    );
\gen_arbiter.m_mesg_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => s_axi_araddr(103),
      I1 => s_axi_araddr(7),
      I2 => m_mesg_mux(1),
      I3 => m_mesg_mux(0),
      I4 => s_axi_araddr(39),
      I5 => s_axi_araddr(71),
      O => m_mesg_mux(9)
    );
\gen_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(0),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(0),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(10),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(10),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(11),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(11),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(12),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(12),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(13),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(13),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(14),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(14),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(15),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(15),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(16),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(16),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(17),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(17),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(18),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(18),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(19),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(19),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(1),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(1),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(20),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(20),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(21),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(21),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(22),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(22),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(23),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(23),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(24),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(24),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(25),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(25),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(26),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(26),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(27),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(27),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(28),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(28),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(29),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(29),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(2),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(2),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(30),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(30),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(31),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(31),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(32),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(32),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(33),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(33),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(34),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(34),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(35),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(35),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(36),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(36),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(37),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(37),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(38),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(38),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(39),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(39),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(3),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(3),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(40),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(40),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(41),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(41),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(42),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(42),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(43),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(43),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(44),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(44),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(45),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(45),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(47),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(46),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(48),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(47),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(49),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(48),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(4),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(4),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(54),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(49),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(55),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(50),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(56),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(51),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(57),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(52),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(58),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(53),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(59),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(54),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(5),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(5),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(60),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(55),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(61),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(56),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(62),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(57),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(63),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(58),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(6),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(6),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(7),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(7),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(8),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(8),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(9),
      Q => \^gen_arbiter.m_mesg_i_reg[63]_0\(9),
      R => \^sr\(0)
    );
\gen_arbiter.m_target_hot_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^address_hit_0_2\,
      I1 => \^address_hit_0_1\,
      I2 => \^address_hit_0_0\,
      I3 => \^address_hit_0\,
      I4 => f_hot2enc_return(1),
      I5 => f_hot2enc_return(0),
      O => m_target_hot_mux(0)
    );
\gen_arbiter.m_target_hot_i[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => s_axi_araddr(22),
      I2 => s_axi_araddr(20),
      I3 => s_axi_araddr(21),
      O => \gen_arbiter.m_target_hot_i[0]_i_10_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => s_axi_araddr(16),
      I2 => s_axi_araddr(19),
      I3 => s_axi_araddr(18),
      O => \gen_arbiter.m_target_hot_i[0]_i_11_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => s_axi_araddr(26),
      I2 => s_axi_araddr(25),
      I3 => s_axi_araddr(24),
      O => \gen_arbiter.m_target_hot_i[0]_i_12_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => s_axi_araddr(30),
      I2 => s_axi_araddr(29),
      I3 => s_axi_araddr(28),
      O => \gen_arbiter.m_target_hot_i[0]_i_13_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_araddr_87_sn_1,
      I1 => s_axi_araddr_81_sn_1,
      I2 => s_axi_araddr_91_sn_1,
      I3 => s_axi_araddr_95_sn_1,
      O => \^address_hit_0_2\
    );
\gen_arbiter.m_target_hot_i[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i[0]_i_6_n_0\,
      I1 => \gen_arbiter.m_target_hot_i[0]_i_7_n_0\,
      I2 => \gen_arbiter.m_target_hot_i[0]_i_8_n_0\,
      I3 => \gen_arbiter.m_target_hot_i[0]_i_9_n_0\,
      O => \^address_hit_0_1\
    );
\gen_arbiter.m_target_hot_i[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i[0]_i_10_n_0\,
      I1 => \gen_arbiter.m_target_hot_i[0]_i_11_n_0\,
      I2 => \gen_arbiter.m_target_hot_i[0]_i_12_n_0\,
      I3 => \gen_arbiter.m_target_hot_i[0]_i_13_n_0\,
      O => \^address_hit_0_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i[2]_i_13_n_0\,
      I1 => \gen_arbiter.m_target_hot_i[2]_i_12_n_0\,
      I2 => \gen_arbiter.m_target_hot_i[2]_i_11_n_0\,
      I3 => \gen_arbiter.m_target_hot_i[2]_i_10_n_0\,
      O => \^address_hit_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_araddr(55),
      I1 => s_axi_araddr(54),
      I2 => s_axi_araddr(52),
      I3 => s_axi_araddr(53),
      O => \gen_arbiter.m_target_hot_i[0]_i_6_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_araddr(49),
      I1 => s_axi_araddr(48),
      I2 => s_axi_araddr(51),
      I3 => s_axi_araddr(50),
      O => \gen_arbiter.m_target_hot_i[0]_i_7_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_araddr(59),
      I1 => s_axi_araddr(58),
      I2 => s_axi_araddr(57),
      I3 => s_axi_araddr(56),
      O => \gen_arbiter.m_target_hot_i[0]_i_8_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_araddr(63),
      I1 => s_axi_araddr(62),
      I2 => s_axi_araddr(61),
      I3 => s_axi_araddr(60),
      O => \gen_arbiter.m_target_hot_i[0]_i_9_n_0\
    );
\gen_arbiter.m_target_hot_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC808"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i_reg[1]_0\,
      I1 => f_hot2enc_return(1),
      I2 => f_hot2enc_return(0),
      I3 => \gen_arbiter.m_target_hot_i_reg[1]_1\,
      I4 => \gen_arbiter.m_target_hot_i[1]_i_4_n_0\,
      O => m_target_hot_mux(1)
    );
\gen_arbiter.m_target_hot_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F808080"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i[1]_i_5_n_0\,
      I1 => match_7,
      I2 => f_hot2enc_return(0),
      I3 => \gen_arbiter.m_target_hot_i[1]_i_6_n_0\,
      I4 => match_6,
      I5 => f_hot2enc_return(1),
      O => \gen_arbiter.m_target_hot_i[1]_i_4_n_0\
    );
\gen_arbiter.m_target_hot_i[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(63),
      I1 => s_axi_araddr(62),
      O => \gen_arbiter.m_target_hot_i[1]_i_5_n_0\
    );
\gen_arbiter.m_target_hot_i[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => s_axi_araddr(30),
      O => \gen_arbiter.m_target_hot_i[1]_i_6_n_0\
    );
\gen_arbiter.m_target_hot_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300550F33FF550F"
    )
        port map (
      I0 => match_5,
      I1 => \^match\,
      I2 => match_6,
      I3 => f_hot2enc_return(1),
      I4 => f_hot2enc_return(0),
      I5 => match_7,
      O => m_target_hot_mux(2)
    );
\gen_arbiter.m_target_hot_i[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_araddr(127),
      I1 => s_axi_araddr(126),
      I2 => s_axi_araddr(125),
      I3 => s_axi_araddr(124),
      O => \gen_arbiter.m_target_hot_i[2]_i_10_n_0\
    );
\gen_arbiter.m_target_hot_i[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_araddr(123),
      I1 => s_axi_araddr(122),
      I2 => s_axi_araddr(121),
      I3 => s_axi_araddr(120),
      O => \gen_arbiter.m_target_hot_i[2]_i_11_n_0\
    );
\gen_arbiter.m_target_hot_i[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_araddr(113),
      I1 => s_axi_araddr(112),
      I2 => s_axi_araddr(115),
      I3 => s_axi_araddr(114),
      O => \gen_arbiter.m_target_hot_i[2]_i_12_n_0\
    );
\gen_arbiter.m_target_hot_i[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_araddr(119),
      I1 => s_axi_araddr(118),
      I2 => s_axi_araddr(116),
      I3 => s_axi_araddr(117),
      O => \gen_arbiter.m_target_hot_i[2]_i_13_n_0\
    );
\gen_arbiter.m_target_hot_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80008000FFFF8000"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i[2]_i_10_n_0\,
      I1 => \gen_arbiter.m_target_hot_i[2]_i_11_n_0\,
      I2 => \gen_arbiter.m_target_hot_i[2]_i_12_n_0\,
      I3 => \gen_arbiter.m_target_hot_i[2]_i_13_n_0\,
      I4 => s_axi_araddr(127),
      I5 => s_axi_araddr(126),
      O => \^match\
    );
\gen_arbiter.m_target_hot_i[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_araddr(95),
      I1 => s_axi_araddr(94),
      I2 => s_axi_araddr(93),
      I3 => s_axi_araddr(92),
      O => s_axi_araddr_95_sn_1
    );
\gen_arbiter.m_target_hot_i[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_araddr(91),
      I1 => s_axi_araddr(90),
      I2 => s_axi_araddr(89),
      I3 => s_axi_araddr(88),
      O => s_axi_araddr_91_sn_1
    );
\gen_arbiter.m_target_hot_i[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_araddr(81),
      I1 => s_axi_araddr(80),
      I2 => s_axi_araddr(83),
      I3 => s_axi_araddr(82),
      O => s_axi_araddr_81_sn_1
    );
\gen_arbiter.m_target_hot_i[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_araddr(87),
      I1 => s_axi_araddr(86),
      I2 => s_axi_araddr(84),
      I3 => s_axi_araddr(85),
      O => s_axi_araddr_87_sn_1
    );
\gen_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(0),
      Q => \^gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      R => \^sr\(0)
    );
\gen_arbiter.m_target_hot_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(1),
      Q => \^gen_arbiter.m_target_hot_i_reg[2]_0\(1),
      R => \^sr\(0)
    );
\gen_arbiter.m_target_hot_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(2),
      Q => \^gen_arbiter.m_target_hot_i_reg[2]_0\(2),
      R => \^sr\(0)
    );
\gen_arbiter.m_valid_i_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \gen_arbiter.any_grant_reg_n_0\,
      I1 => \^aa_mi_arvalid\,
      I2 => \gen_arbiter.grant_hot[3]_i_2_n_0\,
      O => \gen_arbiter.m_valid_i_i_1__0_n_0\
    );
\gen_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_valid_i_i_1__0_n_0\,
      Q => \^aa_mi_arvalid\,
      R => \^sr\(0)
    );
\gen_arbiter.qual_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => qual_reg(0),
      R => \^sr\(0)
    );
\gen_arbiter.qual_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => qual_reg(1),
      R => \^sr\(0)
    );
\gen_arbiter.qual_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => qual_reg(2),
      R => \^sr\(0)
    );
\gen_arbiter.qual_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => qual_reg(3),
      R => \^sr\(0)
    );
\gen_arbiter.s_ready_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \gen_arbiter.any_grant_reg_n_0\,
      I1 => \^aa_mi_arvalid\,
      I2 => aresetn_d,
      O => \gen_arbiter.s_ready_i[3]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      Q => \^q\(0),
      R => \gen_arbiter.s_ready_i[3]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      Q => \^q\(1),
      R => \gen_arbiter.s_ready_i[3]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      Q => \^q\(2),
      R => \gen_arbiter.s_ready_i[3]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[3]\,
      Q => \^q\(3),
      R => \gen_arbiter.s_ready_i[3]_i_1_n_0\
    );
\gen_axi.s_axi_arready_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(2),
      I2 => mi_arready_2,
      I3 => p_15_in,
      O => \gen_arbiter.m_valid_i_reg_0\
    );
\gen_axi.s_axi_rid_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => \^gen_arbiter.m_mesg_i_reg[63]_0\(0),
      I1 => p_15_in,
      I2 => mi_arready_2,
      I3 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(2),
      I4 => \^aa_mi_arvalid\,
      I5 => p_20_in(0),
      O => \gen_arbiter.m_mesg_i_reg[0]_0\
    );
\gen_axi.s_axi_rid_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => \^gen_arbiter.m_mesg_i_reg[63]_0\(1),
      I1 => p_15_in,
      I2 => mi_arready_2,
      I3 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(2),
      I4 => \^aa_mi_arvalid\,
      I5 => p_20_in(1),
      O => \gen_arbiter.m_mesg_i_reg[1]_0\
    );
\gen_axi.s_axi_rlast_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \gen_axi.s_axi_rlast_i_i_4_n_0\,
      I1 => p_15_in,
      I2 => \^gen_arbiter.m_mesg_i_reg[63]_0\(34),
      I3 => \^gen_arbiter.m_mesg_i_reg[63]_0\(35),
      O => \gen_axi.read_cs_reg[0]\
    );
\gen_axi.s_axi_rlast_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^gen_arbiter.m_mesg_i_reg[63]_0\(36),
      I1 => \^gen_arbiter.m_mesg_i_reg[63]_0\(37),
      I2 => \^gen_arbiter.m_mesg_i_reg[63]_0\(38),
      I3 => \^gen_arbiter.m_mesg_i_reg[63]_0\(39),
      I4 => \^gen_arbiter.m_mesg_i_reg[63]_0\(41),
      I5 => \^gen_arbiter.m_mesg_i_reg[63]_0\(40),
      O => \gen_axi.s_axi_rlast_i_i_4_n_0\
    );
\gen_master_slots[0].r_issuing_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => r_issuing_cnt(0),
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(2),
      O => \gen_master_slots[0].r_issuing_cnt_reg[0]\
    );
\gen_master_slots[0].r_issuing_cnt[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      I2 => m_axi_arready(0),
      O => \gen_arbiter.m_valid_i_reg_2\
    );
\gen_master_slots[1].r_issuing_cnt[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => r_issuing_cnt(3),
      I1 => r_issuing_cnt(4),
      I2 => r_issuing_cnt(5),
      O => \gen_master_slots[1].r_issuing_cnt_reg[8]\
    );
\gen_master_slots[1].r_issuing_cnt[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(1),
      I2 => m_axi_arready(1),
      O => \gen_arbiter.m_valid_i_reg_1\
    );
\gen_master_slots[2].r_issuing_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F808000"
    )
        port map (
      I0 => mi_arready_2,
      I1 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(2),
      I2 => \^aa_mi_arvalid\,
      I3 => \gen_master_slots[2].r_issuing_cnt_reg[16]\,
      I4 => r_issuing_cnt(6),
      O => \gen_axi.s_axi_arready_i_reg\
    );
\gen_single_issue.active_target_enc[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => s_axi_araddr(30),
      I1 => s_axi_araddr(31),
      I2 => match_6,
      I3 => \^q\(0),
      I4 => \gen_single_issue.active_target_enc\(0),
      O => s_axi_araddr_30_sn_1
    );
\gen_single_issue.active_target_enc[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => s_axi_araddr(62),
      I1 => s_axi_araddr(63),
      I2 => match_7,
      I3 => \^q\(1),
      I4 => \gen_single_issue.active_target_enc_8\(0),
      O => s_axi_araddr_62_sn_1
    );
\gen_single_issue.active_target_enc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => match_6,
      I1 => \^q\(0),
      I2 => \gen_single_issue.active_target_enc\(1),
      O => \gen_arbiter.s_ready_i_reg[0]_1\
    );
\gen_single_issue.active_target_enc[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => match_7,
      I1 => \^q\(1),
      I2 => \gen_single_issue.active_target_enc_8\(1),
      O => \gen_arbiter.s_ready_i_reg[1]_1\
    );
\gen_single_issue.active_target_hot[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^address_hit_0_0\,
      I1 => \^q\(0),
      I2 => \gen_single_issue.active_target_hot\(0),
      O => \gen_arbiter.s_ready_i_reg[0]_0\
    );
\gen_single_issue.active_target_hot[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^address_hit_0_1\,
      I1 => \^q\(1),
      I2 => \gen_single_issue.active_target_hot_3\(0),
      O => \gen_arbiter.s_ready_i_reg[1]_0\
    );
\gen_single_thread.active_target_enc[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i_reg[1]_1\,
      I1 => \^q\(3),
      I2 => \gen_single_thread.active_target_enc\(0),
      O => \gen_arbiter.s_ready_i_reg[3]_1\
    );
\gen_single_thread.active_target_enc[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i_reg[1]_0\,
      I1 => \^q\(2),
      I2 => \gen_single_thread.active_target_enc_9\(0),
      O => \gen_arbiter.s_ready_i_reg[2]_1\
    );
\gen_single_thread.active_target_enc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^match\,
      I1 => \^q\(3),
      I2 => \gen_single_thread.active_target_enc\(1),
      O => \gen_arbiter.s_ready_i_reg[3]_2\
    );
\gen_single_thread.active_target_enc[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => match_5,
      I1 => \^q\(2),
      I2 => \gen_single_thread.active_target_enc_9\(1),
      O => \gen_arbiter.s_ready_i_reg[2]_2\
    );
\gen_single_thread.active_target_hot[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^address_hit_0\,
      I1 => \^q\(3),
      I2 => \gen_single_thread.active_target_hot\(0),
      O => \gen_arbiter.s_ready_i_reg[3]_0\
    );
\gen_single_thread.active_target_hot[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^address_hit_0_2\,
      I1 => \^q\(2),
      I2 => \gen_single_thread.active_target_hot_4\(0),
      O => \gen_arbiter.s_ready_i_reg[2]_0\
    );
\m_axi_arvalid[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      O => m_axi_arvalid(0)
    );
\m_axi_arvalid[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \^gen_arbiter.m_target_hot_i_reg[2]_0\(1),
      O => m_axi_arvalid(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter_0 is
  port (
    aa_wm_awgrant_enc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.last_rr_hot_reg[0]_0\ : out STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[3]_0\ : out STD_LOGIC;
    aa_sa_awvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ADDRESS_HIT_0 : out STD_LOGIC;
    ADDRESS_HIT_0_0 : out STD_LOGIC;
    ADDRESS_HIT_0_1 : out STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_arbiter.m_target_hot_i_reg[2]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mi_awready_mux__1\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[2]\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_axi.s_axi_awready_i_reg\ : out STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[0]_1\ : out STD_LOGIC;
    ss_aa_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr_87_sp_1 : out STD_LOGIC;
    s_axi_awaddr_81_sp_1 : out STD_LOGIC;
    s_axi_awaddr_91_sp_1 : out STD_LOGIC;
    s_axi_awaddr_95_sp_1 : out STD_LOGIC;
    s_axi_awaddr_94_sp_1 : out STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    \gen_arbiter.m_valid_i_reg_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    \gen_arbiter.m_valid_i_reg_1\ : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_master_slots[1].w_issuing_cnt_reg[10]\ : out STD_LOGIC;
    \m_ready_d_reg[1]\ : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[63]_0\ : out STD_LOGIC_VECTOR ( 58 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    st_aa_awtarget_enc_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_aa_awtarget_enc_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]_0\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]_1\ : in STD_LOGIC;
    \m_ready_d_reg[0]\ : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_master_slots[1].w_issuing_cnt_reg[8]\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mi_awready_2 : in STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]_0\ : in STD_LOGIC;
    match : in STD_LOGIC;
    match_2 : in STD_LOGIC;
    match_3 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ready_d_4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d_5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d_6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \storage_data1_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \gen_master_slots[2].w_issuing_cnt_reg[16]\ : in STD_LOGIC;
    \gen_arbiter.qual_reg_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter_0 : entity is "axi_crossbar_v2_1_19_addr_arbiter";
end mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter_0;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter_0 is
  signal \^address_hit_0\ : STD_LOGIC;
  signal \^address_hit_0_0\ : STD_LOGIC;
  signal \^address_hit_0_1\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^aa_sa_awvalid\ : STD_LOGIC;
  signal \^aa_wm_awgrant_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_arbiter.any_grant_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_reg_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[2]_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[0]_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[0]_i_4_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[0]_i_5_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^gen_arbiter.last_rr_hot_reg[0]_0\ : STD_LOGIC;
  signal \^gen_arbiter.last_rr_hot_reg[0]_1\ : STD_LOGIC;
  signal \^gen_arbiter.last_rr_hot_reg[3]_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_mesg_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_mesg_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_11__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_12__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_valid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_valid_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \^gen_master_slots[0].w_issuing_cnt_reg[2]\ : STD_LOGIC;
  signal \gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal grant_hot : STD_LOGIC;
  signal m_mesg_mux : STD_LOGIC_VECTOR ( 63 downto 2 );
  signal m_target_hot_mux : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_39_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in20_in : STD_LOGIC;
  signal qual_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_awaddr_81_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_87_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_91_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_94_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_95_sn_1 : STD_LOGIC;
  signal \^ss_aa_awready\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[2]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[2]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[0]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[3]_i_2__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[1]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[0]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[2]_i_5__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gen_arbiter.m_valid_i_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[2]_i_11\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[2]_i_8\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_awready_i_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[5]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[5]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[5]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[11]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[11]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[11]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[9]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[2]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axi_awvalid[0]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axi_awvalid[1]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_ready_d[1]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_3__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_4__0\ : label is "soft_lutpair28";
begin
  ADDRESS_HIT_0 <= \^address_hit_0\;
  ADDRESS_HIT_0_0 <= \^address_hit_0_0\;
  ADDRESS_HIT_0_1 <= \^address_hit_0_1\;
  Q(2 downto 0) <= \^q\(2 downto 0);
  aa_sa_awvalid <= \^aa_sa_awvalid\;
  aa_wm_awgrant_enc(1 downto 0) <= \^aa_wm_awgrant_enc\(1 downto 0);
  \gen_arbiter.last_rr_hot_reg[0]_0\ <= \^gen_arbiter.last_rr_hot_reg[0]_0\;
  \gen_arbiter.last_rr_hot_reg[0]_1\ <= \^gen_arbiter.last_rr_hot_reg[0]_1\;
  \gen_arbiter.last_rr_hot_reg[3]_0\ <= \^gen_arbiter.last_rr_hot_reg[3]_0\;
  \gen_master_slots[0].w_issuing_cnt_reg[2]\ <= \^gen_master_slots[0].w_issuing_cnt_reg[2]\;
  s_axi_awaddr_81_sp_1 <= s_axi_awaddr_81_sn_1;
  s_axi_awaddr_87_sp_1 <= s_axi_awaddr_87_sn_1;
  s_axi_awaddr_91_sp_1 <= s_axi_awaddr_91_sn_1;
  s_axi_awaddr_94_sp_1 <= s_axi_awaddr_94_sn_1;
  s_axi_awaddr_95_sp_1 <= s_axi_awaddr_95_sn_1;
  ss_aa_awready(2 downto 0) <= \^ss_aa_awready\(2 downto 0);
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => m_ready_d(0),
      I2 => \^q\(1),
      O => \gen_arbiter.m_valid_i_reg_1\
    );
\FSM_onehot_state[3]_i_4__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => m_ready_d(0),
      I2 => \^q\(2),
      O => \gen_arbiter.m_valid_i_reg_0\
    );
\FSM_onehot_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state_reg[1]_1\(2),
      I2 => \^aa_sa_awvalid\,
      I3 => m_ready_d(0),
      O => \gen_arbiter.m_target_hot_i_reg[1]_0\
    );
\gen_arbiter.any_grant_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA888000000000"
    )
        port map (
      I0 => aresetn_d,
      I1 => \gen_arbiter.grant_hot[2]_i_2_n_0\,
      I2 => \gen_arbiter.grant_hot_reg[2]_0\,
      I3 => \gen_arbiter.grant_hot_reg[2]_1\,
      I4 => \gen_arbiter.any_grant_reg_n_0\,
      I5 => \gen_arbiter.m_valid_i_i_2_n_0\,
      O => \gen_arbiter.any_grant_i_1_n_0\
    );
\gen_arbiter.any_grant_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.any_grant_i_1_n_0\,
      Q => \gen_arbiter.any_grant_reg_n_0\,
      R => '0'
    );
\gen_arbiter.grant_hot[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEAA02AA"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => \gen_arbiter.grant_hot_reg[2]_1\,
      I2 => \gen_arbiter.grant_hot_reg[2]_0\,
      I3 => \gen_arbiter.grant_hot[2]_i_2_n_0\,
      I4 => \^gen_arbiter.last_rr_hot_reg[0]_1\,
      I5 => \gen_arbiter.grant_hot[2]_i_3_n_0\,
      O => \gen_arbiter.grant_hot[0]_i_1_n_0\
    );
\gen_arbiter.grant_hot[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEAA02AA"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => \gen_arbiter.grant_hot_reg[2]_1\,
      I2 => \gen_arbiter.grant_hot_reg[2]_0\,
      I3 => \gen_arbiter.grant_hot[2]_i_2_n_0\,
      I4 => \^gen_arbiter.last_rr_hot_reg[3]_0\,
      I5 => \gen_arbiter.grant_hot[2]_i_3_n_0\,
      O => \gen_arbiter.grant_hot[1]_i_1_n_0\
    );
\gen_arbiter.grant_hot[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEAA02AA"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      I1 => \gen_arbiter.grant_hot_reg[2]_1\,
      I2 => \gen_arbiter.grant_hot_reg[2]_0\,
      I3 => \gen_arbiter.grant_hot[2]_i_2_n_0\,
      I4 => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      I5 => \gen_arbiter.grant_hot[2]_i_3_n_0\,
      O => \gen_arbiter.grant_hot[2]_i_1_n_0\
    );
\gen_arbiter.grant_hot[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => \gen_arbiter.any_grant_reg_n_0\,
      I2 => \gen_arbiter.last_rr_hot[3]_i_2__0_n_0\,
      I3 => \^gen_arbiter.last_rr_hot_reg[0]_1\,
      O => \gen_arbiter.grant_hot[2]_i_2_n_0\
    );
\gen_arbiter.grant_hot[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_arbiter.m_valid_i_i_2_n_0\,
      I1 => aresetn_d,
      O => \gen_arbiter.grant_hot[2]_i_3_n_0\
    );
\gen_arbiter.grant_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[0]_i_1_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      R => '0'
    );
\gen_arbiter.grant_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[1]_i_1_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      R => '0'
    );
\gen_arbiter.grant_hot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[2]_i_1_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      R => '0'
    );
\gen_arbiter.last_rr_hot[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF04000000000"
    )
        port map (
      I0 => p_7_in20_in,
      I1 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I2 => \gen_arbiter.last_rr_hot[0]_i_3_n_0\,
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \gen_arbiter.last_rr_hot[0]_i_4_n_0\,
      I5 => \gen_arbiter.last_rr_hot[0]_i_5_n_0\,
      O => \^gen_arbiter.last_rr_hot_reg[0]_1\
    );
\gen_arbiter.last_rr_hot[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_awvalid(1),
      I1 => qual_reg(1),
      I2 => \^ss_aa_awready\(1),
      I3 => m_ready_d_6(0),
      O => p_7_in20_in
    );
\gen_arbiter.last_rr_hot[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axi_awvalid(2),
      I1 => qual_reg(2),
      I2 => \^ss_aa_awready\(2),
      I3 => m_ready_d_5(0),
      O => \gen_arbiter.last_rr_hot[0]_i_3_n_0\
    );
\gen_arbiter.last_rr_hot[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_6_in,
      I1 => \^aa_wm_awgrant_enc\(1),
      O => \gen_arbiter.last_rr_hot[0]_i_4_n_0\
    );
\gen_arbiter.last_rr_hot[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => qual_reg(0),
      I2 => \^ss_aa_awready\(0),
      I3 => m_ready_d_4(0),
      O => \gen_arbiter.last_rr_hot[0]_i_5_n_0\
    );
\gen_arbiter.last_rr_hot[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000E000E0000"
    )
        port map (
      I0 => \^gen_arbiter.last_rr_hot_reg[0]_1\,
      I1 => \gen_arbiter.last_rr_hot[3]_i_2__0_n_0\,
      I2 => \gen_arbiter.any_grant_reg_n_0\,
      I3 => \^aa_sa_awvalid\,
      I4 => \gen_arbiter.grant_hot_reg[2]_0\,
      I5 => \gen_arbiter.grant_hot_reg[2]_1\,
      O => grant_hot
    );
\gen_arbiter.last_rr_hot[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_arbiter.last_rr_hot_reg[3]_0\,
      I1 => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      O => \gen_arbiter.last_rr_hot[3]_i_2__0_n_0\
    );
\gen_arbiter.last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[0]_1\,
      Q => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      R => SR(0)
    );
\gen_arbiter.last_rr_hot_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => grant_hot,
      D => '0',
      Q => p_6_in,
      S => SR(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC0C0C0C08"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\,
      I1 => p_7_in20_in,
      I2 => \gen_arbiter.last_rr_hot[0]_i_5_n_0\,
      I3 => p_6_in,
      I4 => \^aa_wm_awgrant_enc\(1),
      I5 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      O => \^gen_arbiter.last_rr_hot_reg[3]_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0000"
    )
        port map (
      I0 => m_ready_d_5(0),
      I1 => \^ss_aa_awready\(2),
      I2 => qual_reg(2),
      I3 => s_axi_awvalid(2),
      I4 => \^aa_wm_awgrant_enc\(0),
      O => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\
    );
\gen_arbiter.m_grant_enc_i[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF000000F4"
    )
        port map (
      I0 => \gen_arbiter.last_rr_hot[0]_i_5_n_0\,
      I1 => \gen_arbiter.last_rr_hot[0]_i_4_n_0\,
      I2 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I3 => p_7_in20_in,
      I4 => \gen_arbiter.last_rr_hot[0]_i_3_n_0\,
      I5 => \^aa_wm_awgrant_enc\(0),
      O => \^gen_arbiter.last_rr_hot_reg[0]_0\
    );
\gen_arbiter.m_grant_enc_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[3]_0\,
      Q => \^aa_wm_awgrant_enc\(0),
      R => SR(0)
    );
\gen_arbiter.m_grant_enc_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      Q => \^aa_wm_awgrant_enc\(1),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^aa_wm_awgrant_enc\(0),
      I1 => \^aa_wm_awgrant_enc\(1),
      O => \gen_arbiter.m_mesg_i[0]_i_1_n_0\
    );
\gen_arbiter.m_mesg_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(72),
      I1 => s_axi_awaddr(8),
      I2 => s_axi_awaddr(40),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(10)
    );
\gen_arbiter.m_mesg_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(73),
      I1 => s_axi_awaddr(9),
      I2 => s_axi_awaddr(41),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(11)
    );
\gen_arbiter.m_mesg_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(74),
      I1 => s_axi_awaddr(10),
      I2 => s_axi_awaddr(42),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(12)
    );
\gen_arbiter.m_mesg_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(75),
      I1 => s_axi_awaddr(11),
      I2 => s_axi_awaddr(43),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(13)
    );
\gen_arbiter.m_mesg_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(76),
      I1 => s_axi_awaddr(12),
      I2 => s_axi_awaddr(44),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(14)
    );
\gen_arbiter.m_mesg_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(77),
      I1 => s_axi_awaddr(13),
      I2 => s_axi_awaddr(45),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(15)
    );
\gen_arbiter.m_mesg_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(78),
      I1 => s_axi_awaddr(14),
      I2 => s_axi_awaddr(46),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(16)
    );
\gen_arbiter.m_mesg_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(79),
      I1 => s_axi_awaddr(15),
      I2 => s_axi_awaddr(47),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(17)
    );
\gen_arbiter.m_mesg_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(80),
      I1 => s_axi_awaddr(16),
      I2 => s_axi_awaddr(48),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(18)
    );
\gen_arbiter.m_mesg_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(81),
      I1 => s_axi_awaddr(17),
      I2 => s_axi_awaddr(49),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(19)
    );
\gen_arbiter.m_mesg_i[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      O => p_1_in
    );
\gen_arbiter.m_mesg_i[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^aa_wm_awgrant_enc\(1),
      I1 => \^aa_wm_awgrant_enc\(0),
      O => \gen_arbiter.m_mesg_i[1]_i_3_n_0\
    );
\gen_arbiter.m_mesg_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(82),
      I1 => s_axi_awaddr(18),
      I2 => s_axi_awaddr(50),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(20)
    );
\gen_arbiter.m_mesg_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(83),
      I1 => s_axi_awaddr(19),
      I2 => s_axi_awaddr(51),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(21)
    );
\gen_arbiter.m_mesg_i[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(84),
      I1 => s_axi_awaddr(20),
      I2 => s_axi_awaddr(52),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(22)
    );
\gen_arbiter.m_mesg_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(85),
      I1 => s_axi_awaddr(21),
      I2 => s_axi_awaddr(53),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(23)
    );
\gen_arbiter.m_mesg_i[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(86),
      I1 => s_axi_awaddr(22),
      I2 => s_axi_awaddr(54),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(24)
    );
\gen_arbiter.m_mesg_i[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(87),
      I1 => s_axi_awaddr(23),
      I2 => s_axi_awaddr(55),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(25)
    );
\gen_arbiter.m_mesg_i[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(88),
      I1 => s_axi_awaddr(24),
      I2 => s_axi_awaddr(56),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(26)
    );
\gen_arbiter.m_mesg_i[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(89),
      I1 => s_axi_awaddr(25),
      I2 => s_axi_awaddr(57),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(27)
    );
\gen_arbiter.m_mesg_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(90),
      I1 => s_axi_awaddr(26),
      I2 => s_axi_awaddr(58),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(28)
    );
\gen_arbiter.m_mesg_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(91),
      I1 => s_axi_awaddr(27),
      I2 => s_axi_awaddr(59),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(29)
    );
\gen_arbiter.m_mesg_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(64),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_awaddr(32),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(2)
    );
\gen_arbiter.m_mesg_i[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(92),
      I1 => s_axi_awaddr(28),
      I2 => s_axi_awaddr(60),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(30)
    );
\gen_arbiter.m_mesg_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(93),
      I1 => s_axi_awaddr(29),
      I2 => s_axi_awaddr(61),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(31)
    );
\gen_arbiter.m_mesg_i[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(94),
      I1 => s_axi_awaddr(30),
      I2 => s_axi_awaddr(62),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(32)
    );
\gen_arbiter.m_mesg_i[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(95),
      I1 => s_axi_awaddr(31),
      I2 => s_axi_awaddr(63),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(33)
    );
\gen_arbiter.m_mesg_i[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(16),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awlen(8),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(34)
    );
\gen_arbiter.m_mesg_i[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(17),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awlen(9),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(35)
    );
\gen_arbiter.m_mesg_i[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(18),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awlen(10),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(36)
    );
\gen_arbiter.m_mesg_i[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(19),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awlen(11),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(37)
    );
\gen_arbiter.m_mesg_i[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(20),
      I1 => s_axi_awlen(4),
      I2 => s_axi_awlen(12),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(38)
    );
\gen_arbiter.m_mesg_i[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(21),
      I1 => s_axi_awlen(5),
      I2 => s_axi_awlen(13),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(39)
    );
\gen_arbiter.m_mesg_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(65),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(33),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(3)
    );
\gen_arbiter.m_mesg_i[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(22),
      I1 => s_axi_awlen(6),
      I2 => s_axi_awlen(14),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(40)
    );
\gen_arbiter.m_mesg_i[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(23),
      I1 => s_axi_awlen(7),
      I2 => s_axi_awlen(15),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(41)
    );
\gen_arbiter.m_mesg_i[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awsize(6),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(3),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(42)
    );
\gen_arbiter.m_mesg_i[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awsize(7),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(4),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(43)
    );
\gen_arbiter.m_mesg_i[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awsize(8),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(5),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(44)
    );
\gen_arbiter.m_mesg_i[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlock(2),
      I1 => s_axi_awlock(0),
      I2 => s_axi_awlock(1),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(45)
    );
\gen_arbiter.m_mesg_i[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awprot(6),
      I1 => s_axi_awprot(0),
      I2 => s_axi_awprot(3),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(47)
    );
\gen_arbiter.m_mesg_i[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awprot(7),
      I1 => s_axi_awprot(1),
      I2 => s_axi_awprot(4),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(48)
    );
\gen_arbiter.m_mesg_i[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awprot(8),
      I1 => s_axi_awprot(2),
      I2 => s_axi_awprot(5),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(49)
    );
\gen_arbiter.m_mesg_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(66),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(34),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(4)
    );
\gen_arbiter.m_mesg_i[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awburst(4),
      I1 => s_axi_awburst(0),
      I2 => s_axi_awburst(2),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(54)
    );
\gen_arbiter.m_mesg_i[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awburst(5),
      I1 => s_axi_awburst(1),
      I2 => s_axi_awburst(3),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(55)
    );
\gen_arbiter.m_mesg_i[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awcache(8),
      I1 => s_axi_awcache(0),
      I2 => s_axi_awcache(4),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(56)
    );
\gen_arbiter.m_mesg_i[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awcache(9),
      I1 => s_axi_awcache(1),
      I2 => s_axi_awcache(5),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(57)
    );
\gen_arbiter.m_mesg_i[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awcache(10),
      I1 => s_axi_awcache(2),
      I2 => s_axi_awcache(6),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(58)
    );
\gen_arbiter.m_mesg_i[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awcache(11),
      I1 => s_axi_awcache(3),
      I2 => s_axi_awcache(7),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(59)
    );
\gen_arbiter.m_mesg_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(67),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_awaddr(35),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(5)
    );
\gen_arbiter.m_mesg_i[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awqos(8),
      I1 => s_axi_awqos(0),
      I2 => s_axi_awqos(4),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(60)
    );
\gen_arbiter.m_mesg_i[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awqos(9),
      I1 => s_axi_awqos(1),
      I2 => s_axi_awqos(5),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(61)
    );
\gen_arbiter.m_mesg_i[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awqos(10),
      I1 => s_axi_awqos(2),
      I2 => s_axi_awqos(6),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(62)
    );
\gen_arbiter.m_mesg_i[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awqos(11),
      I1 => s_axi_awqos(3),
      I2 => s_axi_awqos(7),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(63)
    );
\gen_arbiter.m_mesg_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(68),
      I1 => s_axi_awaddr(4),
      I2 => s_axi_awaddr(36),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(6)
    );
\gen_arbiter.m_mesg_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(69),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_awaddr(37),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(7)
    );
\gen_arbiter.m_mesg_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(70),
      I1 => s_axi_awaddr(6),
      I2 => s_axi_awaddr(38),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(8)
    );
\gen_arbiter.m_mesg_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(71),
      I1 => s_axi_awaddr(7),
      I2 => s_axi_awaddr(39),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(9)
    );
\gen_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_arbiter.m_mesg_i[0]_i_1_n_0\,
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(0),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(10),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(10),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(11),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(11),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(12),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(12),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(13),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(13),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(14),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(14),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(15),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(15),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(16),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(16),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(17),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(17),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(18),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(18),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(19),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(19),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_arbiter.m_mesg_i[1]_i_3_n_0\,
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(1),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(20),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(20),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(21),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(21),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(22),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(22),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(23),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(23),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(24),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(24),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(25),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(25),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(26),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(26),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(27),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(27),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(28),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(28),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(29),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(29),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(2),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(2),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(30),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(30),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(31),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(31),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(32),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(32),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(33),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(33),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(34),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(34),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(35),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(35),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(36),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(36),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(37),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(37),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(38),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(38),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(39),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(39),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(3),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(3),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(40),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(40),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(41),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(41),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(42),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(42),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(43),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(43),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(44),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(44),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(45),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(45),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(47),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(46),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(48),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(47),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(49),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(48),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(4),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(4),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(54),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(49),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(55),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(50),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(56),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(51),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(57),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(52),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(58),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(53),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(59),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(54),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(5),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(5),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(60),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(55),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(61),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(56),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(62),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(57),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(63),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(58),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(6),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(6),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(7),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(7),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(8),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(8),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(9),
      Q => \gen_arbiter.m_mesg_i_reg[63]_0\(9),
      R => SR(0)
    );
\gen_arbiter.m_target_hot_i[0]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_awaddr(49),
      I1 => s_axi_awaddr(48),
      I2 => s_axi_awaddr(51),
      I3 => s_axi_awaddr(50),
      O => \gen_arbiter.m_target_hot_i[0]_i_10__0_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_awaddr(59),
      I1 => s_axi_awaddr(58),
      I2 => s_axi_awaddr(57),
      I3 => s_axi_awaddr(56),
      O => \gen_arbiter.m_target_hot_i[0]_i_11__0_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_awaddr(63),
      I1 => s_axi_awaddr(62),
      I2 => s_axi_awaddr(61),
      I3 => s_axi_awaddr(60),
      O => \gen_arbiter.m_target_hot_i[0]_i_12__0_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F0CCAA"
    )
        port map (
      I0 => \^address_hit_0\,
      I1 => \^address_hit_0_0\,
      I2 => \^address_hit_0_1\,
      I3 => \^gen_arbiter.last_rr_hot_reg[3]_0\,
      I4 => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      O => m_target_hot_mux(0)
    );
\gen_arbiter.m_target_hot_i[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i[0]_i_5__0_n_0\,
      I1 => \gen_arbiter.m_target_hot_i[0]_i_6__0_n_0\,
      I2 => \gen_arbiter.m_target_hot_i[0]_i_7__0_n_0\,
      I3 => \gen_arbiter.m_target_hot_i[0]_i_8__0_n_0\,
      O => \^address_hit_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i[0]_i_9__0_n_0\,
      I1 => \gen_arbiter.m_target_hot_i[0]_i_10__0_n_0\,
      I2 => \gen_arbiter.m_target_hot_i[0]_i_11__0_n_0\,
      I3 => \gen_arbiter.m_target_hot_i[0]_i_12__0_n_0\,
      O => \^address_hit_0_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awaddr_87_sn_1,
      I1 => s_axi_awaddr_81_sn_1,
      I2 => s_axi_awaddr_91_sn_1,
      I3 => s_axi_awaddr_95_sn_1,
      O => \^address_hit_0_1\
    );
\gen_arbiter.m_target_hot_i[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_awaddr(23),
      I1 => s_axi_awaddr(22),
      I2 => s_axi_awaddr(20),
      I3 => s_axi_awaddr(21),
      O => \gen_arbiter.m_target_hot_i[0]_i_5__0_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_awaddr(17),
      I1 => s_axi_awaddr(16),
      I2 => s_axi_awaddr(19),
      I3 => s_axi_awaddr(18),
      O => \gen_arbiter.m_target_hot_i[0]_i_6__0_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_awaddr(27),
      I1 => s_axi_awaddr(26),
      I2 => s_axi_awaddr(25),
      I3 => s_axi_awaddr(24),
      O => \gen_arbiter.m_target_hot_i[0]_i_7__0_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_awaddr(31),
      I1 => s_axi_awaddr(30),
      I2 => s_axi_awaddr(29),
      I3 => s_axi_awaddr(28),
      O => \gen_arbiter.m_target_hot_i[0]_i_8__0_n_0\
    );
\gen_arbiter.m_target_hot_i[0]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_awaddr(55),
      I1 => s_axi_awaddr(54),
      I2 => s_axi_awaddr(52),
      I3 => s_axi_awaddr(53),
      O => \gen_arbiter.m_target_hot_i[0]_i_9__0_n_0\
    );
\gen_arbiter.m_target_hot_i[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002222FF00F0F0"
    )
        port map (
      I0 => s_axi_awaddr(95),
      I1 => s_axi_awaddr(94),
      I2 => st_aa_awtarget_enc_0(0),
      I3 => st_aa_awtarget_enc_2(0),
      I4 => \^gen_arbiter.last_rr_hot_reg[3]_0\,
      I5 => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      O => m_target_hot_mux(1)
    );
\gen_arbiter.m_target_hot_i[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00350F35"
    )
        port map (
      I0 => match,
      I1 => match_2,
      I2 => \^gen_arbiter.last_rr_hot_reg[3]_0\,
      I3 => \^gen_arbiter.last_rr_hot_reg[0]_0\,
      I4 => match_3,
      O => m_target_hot_mux(2)
    );
\gen_arbiter.m_target_hot_i[2]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_awaddr(95),
      I1 => s_axi_awaddr(94),
      I2 => s_axi_awaddr(93),
      I3 => s_axi_awaddr(92),
      O => s_axi_awaddr_95_sn_1
    );
\gen_arbiter.m_target_hot_i[2]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_awaddr(91),
      I1 => s_axi_awaddr(90),
      I2 => s_axi_awaddr(89),
      I3 => s_axi_awaddr(88),
      O => s_axi_awaddr_91_sn_1
    );
\gen_arbiter.m_target_hot_i[2]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_awaddr(81),
      I1 => s_axi_awaddr(80),
      I2 => s_axi_awaddr(83),
      I3 => s_axi_awaddr(82),
      O => s_axi_awaddr_81_sn_1
    );
\gen_arbiter.m_target_hot_i[2]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_awaddr(87),
      I1 => s_axi_awaddr(86),
      I2 => s_axi_awaddr(84),
      I3 => s_axi_awaddr(85),
      O => s_axi_awaddr_87_sn_1
    );
\gen_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(0),
      Q => \^q\(0),
      R => SR(0)
    );
\gen_arbiter.m_target_hot_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(1),
      Q => \^q\(1),
      R => SR(0)
    );
\gen_arbiter.m_target_hot_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gen_arbiter.m_valid_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \gen_arbiter.any_grant_reg_n_0\,
      I1 => \^aa_sa_awvalid\,
      I2 => \gen_arbiter.m_valid_i_i_2_n_0\,
      O => \gen_arbiter.m_valid_i_i_1_n_0\
    );
\gen_arbiter.m_valid_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777F"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => \m_ready_d_reg[0]\,
      I2 => m_ready_d(0),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \gen_arbiter.m_valid_i_i_2_n_0\
    );
\gen_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_valid_i_i_1_n_0\,
      Q => \^aa_sa_awvalid\,
      R => SR(0)
    );
\gen_arbiter.qual_reg[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_issuing_cnt(8),
      I1 => w_issuing_cnt(7),
      O => \gen_master_slots[1].w_issuing_cnt_reg[10]\
    );
\gen_arbiter.qual_reg[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_awaddr(94),
      I1 => s_axi_awaddr(95),
      O => s_axi_awaddr_94_sn_1
    );
\gen_arbiter.qual_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.qual_reg_reg[2]_0\(0),
      Q => qual_reg(0),
      R => SR(0)
    );
\gen_arbiter.qual_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.qual_reg_reg[2]_0\(1),
      Q => qual_reg(1),
      R => SR(0)
    );
\gen_arbiter.qual_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.qual_reg_reg[2]_0\(2),
      Q => qual_reg(2),
      R => SR(0)
    );
\gen_arbiter.s_ready_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => aresetn_d,
      I2 => \^aa_sa_awvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[0]_i_1_n_0\
    );
\gen_arbiter.s_ready_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => aresetn_d,
      I2 => \^aa_sa_awvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[1]_i_1_n_0\
    );
\gen_arbiter.s_ready_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      I1 => aresetn_d,
      I2 => \^aa_sa_awvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[2]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[0]_i_1_n_0\,
      Q => \^ss_aa_awready\(0),
      R => '0'
    );
\gen_arbiter.s_ready_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[1]_i_1_n_0\,
      Q => \^ss_aa_awready\(1),
      R => '0'
    );
\gen_arbiter.s_ready_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[2]_i_1_n_0\,
      Q => \^ss_aa_awready\(2),
      R => '0'
    );
\gen_axi.s_axi_awready_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => mi_awready_2,
      I1 => \^q\(2),
      I2 => \^aa_sa_awvalid\,
      I3 => m_ready_d(1),
      O => \gen_axi.s_axi_awready_i_reg\
    );
\gen_master_slots[0].w_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => w_issuing_cnt(1),
      I1 => w_issuing_cnt(0),
      I2 => \gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(0)
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(1),
      I3 => \gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(1)
    );
\gen_master_slots[0].w_issuing_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => w_issuing_cnt(3),
      I1 => w_issuing_cnt(1),
      I2 => w_issuing_cnt(2),
      I3 => w_issuing_cnt(0),
      I4 => \gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(2)
    );
\gen_master_slots[0].w_issuing_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \gen_master_slots[0].w_issuing_cnt_reg[0]_0\,
      I1 => m_ready_d(1),
      I2 => \^aa_sa_awvalid\,
      I3 => \^q\(0),
      I4 => m_axi_awready(0),
      O => \gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0\
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_master_slots[0].w_issuing_cnt[5]_i_5_n_0\,
      I1 => w_issuing_cnt(3),
      I2 => w_issuing_cnt(4),
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(3)
    );
\gen_master_slots[0].w_issuing_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFFE00"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => w_issuing_cnt(5),
      I2 => \^gen_master_slots[0].w_issuing_cnt_reg[2]\,
      I3 => \gen_master_slots[0].w_issuing_cnt[5]_i_4_n_0\,
      I4 => \gen_master_slots[0].w_issuing_cnt_reg[0]_0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[0]\(0)
    );
\gen_master_slots[0].w_issuing_cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC9"
    )
        port map (
      I0 => w_issuing_cnt(4),
      I1 => w_issuing_cnt(5),
      I2 => \gen_master_slots[0].w_issuing_cnt[5]_i_5_n_0\,
      I3 => w_issuing_cnt(3),
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(4)
    );
\gen_master_slots[0].w_issuing_cnt[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(1),
      I2 => w_issuing_cnt(3),
      I3 => w_issuing_cnt(4),
      O => \^gen_master_slots[0].w_issuing_cnt_reg[2]\
    );
\gen_master_slots[0].w_issuing_cnt[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => m_axi_awready(0),
      I1 => \^q\(0),
      I2 => \^aa_sa_awvalid\,
      I3 => m_ready_d(1),
      O => \gen_master_slots[0].w_issuing_cnt[5]_i_4_n_0\
    );
\gen_master_slots[0].w_issuing_cnt[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF00FE"
    )
        port map (
      I0 => \gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0\,
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(1),
      I3 => w_issuing_cnt(3),
      I4 => w_issuing_cnt(2),
      O => \gen_master_slots[0].w_issuing_cnt[5]_i_5_n_0\
    );
\gen_master_slots[1].w_issuing_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD42"
    )
        port map (
      I0 => \gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0\,
      I1 => w_issuing_cnt(7),
      I2 => w_issuing_cnt(6),
      I3 => w_issuing_cnt(8),
      O => D(1)
    );
\gen_master_slots[1].w_issuing_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFFE"
    )
        port map (
      I0 => w_issuing_cnt(6),
      I1 => w_issuing_cnt(8),
      I2 => w_issuing_cnt(7),
      I3 => w_issuing_cnt(9),
      I4 => p_39_in,
      I5 => \gen_master_slots[1].w_issuing_cnt_reg[8]\,
      O => E(0)
    );
\gen_master_slots[1].w_issuing_cnt[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFD4002"
    )
        port map (
      I0 => \gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0\,
      I1 => w_issuing_cnt(7),
      I2 => w_issuing_cnt(6),
      I3 => w_issuing_cnt(8),
      I4 => w_issuing_cnt(9),
      O => D(2)
    );
\gen_master_slots[1].w_issuing_cnt[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => m_axi_awready(1),
      I1 => \^q\(1),
      I2 => \^aa_sa_awvalid\,
      I3 => m_ready_d(1),
      O => p_39_in
    );
\gen_master_slots[1].w_issuing_cnt[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \gen_master_slots[1].w_issuing_cnt_reg[8]\,
      I1 => m_ready_d(1),
      I2 => \^aa_sa_awvalid\,
      I3 => \^q\(1),
      I4 => m_axi_awready(1),
      O => \gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0\
    );
\gen_master_slots[1].w_issuing_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => w_issuing_cnt(7),
      I1 => w_issuing_cnt(6),
      I2 => \gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0\,
      O => D(0)
    );
\gen_master_slots[2].w_issuing_cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6555555510000000"
    )
        port map (
      I0 => \gen_master_slots[2].w_issuing_cnt_reg[16]\,
      I1 => m_ready_d(1),
      I2 => \^aa_sa_awvalid\,
      I3 => \^q\(2),
      I4 => mi_awready_2,
      I5 => w_issuing_cnt(10),
      O => \m_ready_d_reg[1]\
    );
\gen_rep[0].fifoaddr[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_1\(0),
      I1 => \^q\(1),
      I2 => m_ready_d(0),
      I3 => \^aa_sa_awvalid\,
      O => \FSM_onehot_state_reg[0]\
    );
\m_axi_awvalid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^aa_sa_awvalid\,
      I2 => m_ready_d(1),
      O => m_axi_awvalid(0)
    );
\m_axi_awvalid[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^aa_sa_awvalid\,
      I2 => m_ready_d(1),
      O => m_axi_awvalid(1)
    );
\m_ready_d[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8FFFFFFFF"
    )
        port map (
      I0 => \m_ready_d_reg[0]\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => m_ready_d(0),
      I5 => aresetn_d,
      O => \gen_arbiter.m_target_hot_i_reg[2]_0\
    );
\m_ready_d[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => m_ready_d(0),
      O => \gen_arbiter.m_target_hot_i_reg[2]_1\
    );
\m_ready_d[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axi_awready(0),
      I2 => \^q\(2),
      I3 => mi_awready_2,
      I4 => m_axi_awready(1),
      I5 => \^q\(1),
      O => \mi_awready_mux__1\
    );
\storage_data1[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \storage_data1_reg[1]\(1),
      I1 => \^q\(2),
      I2 => m_ready_d(0),
      I3 => \^aa_sa_awvalid\,
      O => \FSM_onehot_state_reg[3]\
    );
\storage_data1[1]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_1\(2),
      I1 => \^q\(1),
      I2 => m_ready_d(0),
      I3 => \^aa_sa_awvalid\,
      O => \FSM_onehot_state_reg[3]_0\
    );
\storage_data1[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \storage_data1_reg[1]\(0),
      I1 => \^q\(2),
      I2 => m_ready_d(0),
      I3 => \^aa_sa_awvalid\,
      O => \FSM_onehot_state_reg[1]\
    );
\storage_data1[1]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_1\(1),
      I1 => \^q\(1),
      I2 => m_ready_d(0),
      I3 => \^aa_sa_awvalid\,
      O => \FSM_onehot_state_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_decerr_slave is
  port (
    p_20_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mi_awready_2 : out STD_LOGIC;
    p_14_in : out STD_LOGIC;
    p_21_in : out STD_LOGIC;
    p_15_in : out STD_LOGIC;
    mi_arready_2 : out STD_LOGIC;
    p_17_in : out STD_LOGIC;
    \FSM_onehot_gen_axi.write_cs_reg[1]_0\ : out STD_LOGIC;
    p_24_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.s_axi_rid_i_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_axi.s_axi_rid_i_reg[0]_0\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    mi_rready_2 : in STD_LOGIC;
    \gen_axi.s_axi_arready_i_reg_0\ : in STD_LOGIC;
    \gen_axi.read_cs_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_arvalid : in STD_LOGIC;
    \gen_axi.read_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.s_axi_awready_i_reg_0\ : in STD_LOGIC;
    mi_bready_2 : in STD_LOGIC;
    \FSM_onehot_gen_axi.write_cs_reg[2]_0\ : in STD_LOGIC;
    \gen_axi.s_axi_rlast_i_reg_0\ : in STD_LOGIC;
    \gen_axi.s_axi_bid_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_decerr_slave : entity is "axi_crossbar_v2_1_19_decerr_slave";
end mcu_xbar_0_axi_crossbar_v2_1_19_decerr_slave;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_decerr_slave is
  signal \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_gen_axi.write_cs_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_axi.read_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_axi.read_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \gen_axi.read_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_arready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_awready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bid_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bid_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_wready_i_i_1_n_0\ : STD_LOGIC;
  signal \^mi_arready_2\ : STD_LOGIC;
  signal \^mi_awready_2\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^p_14_in\ : STD_LOGIC;
  signal \^p_15_in\ : STD_LOGIC;
  signal \^p_17_in\ : STD_LOGIC;
  signal \^p_21_in\ : STD_LOGIC;
  signal \^p_24_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[0]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[1]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[2]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[4]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[5]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[7]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[7]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_bid_i[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_wready_i_i_1\ : label is "soft_lutpair39";
begin
  \FSM_onehot_gen_axi.write_cs_reg[1]_0\ <= \^fsm_onehot_gen_axi.write_cs_reg[1]_0\;
  mi_arready_2 <= \^mi_arready_2\;
  mi_awready_2 <= \^mi_awready_2\;
  p_14_in <= \^p_14_in\;
  p_15_in <= \^p_15_in\;
  p_17_in <= \^p_17_in\;
  p_21_in <= \^p_21_in\;
  p_24_in(1 downto 0) <= \^p_24_in\(1 downto 0);
\FSM_onehot_gen_axi.write_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCDDCCC8"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\,
      I1 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I2 => mi_bready_2,
      I3 => \FSM_onehot_gen_axi.write_cs_reg[2]_0\,
      I4 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      O => \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABBBAAAAA888"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\,
      I2 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I3 => mi_bready_2,
      I4 => \FSM_onehot_gen_axi.write_cs_reg[2]_0\,
      I5 => \^fsm_onehot_gen_axi.write_cs_reg[1]_0\,
      O => \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8B8"
    )
        port map (
      I0 => \^fsm_onehot_gen_axi.write_cs_reg[1]_0\,
      I1 => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\,
      I2 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I3 => mi_bready_2,
      I4 => \FSM_onehot_gen_axi.write_cs_reg[2]_0\,
      O => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I1 => m_ready_d(0),
      I2 => aa_sa_awvalid,
      I3 => Q(0),
      I4 => \^mi_awready_2\,
      O => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\
    );
\FSM_onehot_gen_axi.write_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_gen_axi.write_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0\,
      Q => \^fsm_onehot_gen_axi.write_cs_reg[1]_0\,
      R => SR(0)
    );
\FSM_onehot_gen_axi.write_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      R => SR(0)
    );
\gen_axi.read_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(0),
      I1 => \^p_15_in\,
      I2 => \gen_axi.read_cnt_reg[7]_0\(0),
      O => p_0_in(0)
    );
\gen_axi.read_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[7]_0\(1),
      I1 => \^p_15_in\,
      I2 => \gen_axi.read_cnt_reg\(0),
      I3 => \gen_axi.read_cnt_reg__0\(1),
      O => p_0_in(1)
    );
\gen_axi.read_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC03AAAA"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[7]_0\(2),
      I1 => \gen_axi.read_cnt_reg\(0),
      I2 => \gen_axi.read_cnt_reg__0\(1),
      I3 => \gen_axi.read_cnt_reg__0\(2),
      I4 => \^p_15_in\,
      O => p_0_in(2)
    );
\gen_axi.read_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0003AAAAAAAA"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[7]_0\(3),
      I1 => \gen_axi.read_cnt_reg__0\(2),
      I2 => \gen_axi.read_cnt_reg__0\(1),
      I3 => \gen_axi.read_cnt_reg\(0),
      I4 => \gen_axi.read_cnt_reg__0\(3),
      I5 => \^p_15_in\,
      O => p_0_in(3)
    );
\gen_axi.read_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[7]_0\(4),
      I1 => \gen_axi.read_cnt[4]_i_2_n_0\,
      I2 => \gen_axi.read_cnt_reg__0\(4),
      I3 => \^p_15_in\,
      O => p_0_in(4)
    );
\gen_axi.read_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(2),
      I1 => \gen_axi.read_cnt_reg__0\(1),
      I2 => \gen_axi.read_cnt_reg\(0),
      I3 => \gen_axi.read_cnt_reg__0\(3),
      O => \gen_axi.read_cnt[4]_i_2_n_0\
    );
\gen_axi.read_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[7]_0\(5),
      I1 => \gen_axi.read_cnt_reg__0\(5),
      I2 => \gen_axi.read_cnt[5]_i_2_n_0\,
      I3 => \^p_15_in\,
      O => p_0_in(5)
    );
\gen_axi.read_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(3),
      I1 => \gen_axi.read_cnt_reg\(0),
      I2 => \gen_axi.read_cnt_reg__0\(1),
      I3 => \gen_axi.read_cnt_reg__0\(2),
      I4 => \gen_axi.read_cnt_reg__0\(4),
      O => \gen_axi.read_cnt[5]_i_2_n_0\
    );
\gen_axi.read_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[7]_0\(6),
      I1 => \gen_axi.read_cnt[7]_i_4_n_0\,
      I2 => \gen_axi.read_cnt_reg__0\(6),
      I3 => \^p_15_in\,
      O => p_0_in(6)
    );
\gen_axi.read_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80808080808080"
    )
        port map (
      I0 => \gen_axi.read_cnt[7]_i_3_n_0\,
      I1 => mi_rready_2,
      I2 => \^p_15_in\,
      I3 => \^mi_arready_2\,
      I4 => \gen_axi.read_cs_reg[0]_0\(0),
      I5 => aa_mi_arvalid,
      O => \gen_axi.read_cnt[7]_i_1_n_0\
    );
\gen_axi.read_cnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC03AAAA"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[7]_0\(7),
      I1 => \gen_axi.read_cnt_reg__0\(6),
      I2 => \gen_axi.read_cnt[7]_i_4_n_0\,
      I3 => \gen_axi.read_cnt_reg__0\(7),
      I4 => \^p_15_in\,
      O => p_0_in(7)
    );
\gen_axi.read_cnt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(6),
      I1 => \gen_axi.read_cnt[7]_i_4_n_0\,
      I2 => \gen_axi.read_cnt_reg__0\(7),
      O => \gen_axi.read_cnt[7]_i_3_n_0\
    );
\gen_axi.read_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(5),
      I1 => \gen_axi.read_cnt_reg__0\(4),
      I2 => \gen_axi.read_cnt_reg__0\(2),
      I3 => \gen_axi.read_cnt_reg__0\(1),
      I4 => \gen_axi.read_cnt_reg\(0),
      I5 => \gen_axi.read_cnt_reg__0\(3),
      O => \gen_axi.read_cnt[7]_i_4_n_0\
    );
\gen_axi.read_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \gen_axi.read_cnt_reg\(0),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \gen_axi.read_cnt_reg__0\(1),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \gen_axi.read_cnt_reg__0\(2),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \gen_axi.read_cnt_reg__0\(3),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \gen_axi.read_cnt_reg__0\(4),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \gen_axi.read_cnt_reg__0\(5),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \gen_axi.read_cnt_reg__0\(6),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \gen_axi.read_cnt_reg__0\(7),
      R => SR(0)
    );
\gen_axi.read_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0B0B0B0B0B0B0"
    )
        port map (
      I0 => \gen_axi.read_cnt[7]_i_3_n_0\,
      I1 => mi_rready_2,
      I2 => \^p_15_in\,
      I3 => \^mi_arready_2\,
      I4 => \gen_axi.read_cs_reg[0]_0\(0),
      I5 => aa_mi_arvalid,
      O => \gen_axi.read_cs[0]_i_1_n_0\
    );
\gen_axi.read_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.read_cs[0]_i_1_n_0\,
      Q => \^p_15_in\,
      R => SR(0)
    );
\gen_axi.s_axi_arready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA08AA00000000"
    )
        port map (
      I0 => aresetn_d,
      I1 => mi_rready_2,
      I2 => \gen_axi.read_cnt[7]_i_3_n_0\,
      I3 => \^p_15_in\,
      I4 => \^mi_arready_2\,
      I5 => \gen_axi.s_axi_arready_i_reg_0\,
      O => \gen_axi.s_axi_arready_i_i_1_n_0\
    );
\gen_axi.s_axi_arready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_arready_i_i_1_n_0\,
      Q => \^mi_arready_2\,
      R => '0'
    );
\gen_axi.s_axi_awready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFFEEEF000"
    )
        port map (
      I0 => \^fsm_onehot_gen_axi.write_cs_reg[1]_0\,
      I1 => \gen_axi.s_axi_awready_i_reg_0\,
      I2 => mi_bready_2,
      I3 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I5 => \^mi_awready_2\,
      O => \gen_axi.s_axi_awready_i_i_1_n_0\
    );
\gen_axi.s_axi_awready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_awready_i_i_1_n_0\,
      Q => \^mi_awready_2\,
      R => SR(0)
    );
\gen_axi.s_axi_bid_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_axi.s_axi_bid_i_reg[1]_0\(0),
      I1 => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\,
      I2 => \^p_24_in\(0),
      O => \gen_axi.s_axi_bid_i[0]_i_1_n_0\
    );
\gen_axi.s_axi_bid_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_axi.s_axi_bid_i_reg[1]_0\(1),
      I1 => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\,
      I2 => \^p_24_in\(1),
      O => \gen_axi.s_axi_bid_i[1]_i_1_n_0\
    );
\gen_axi.s_axi_bid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bid_i[0]_i_1_n_0\,
      Q => \^p_24_in\(0),
      R => SR(0)
    );
\gen_axi.s_axi_bid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bid_i[1]_i_1_n_0\,
      Q => \^p_24_in\(1),
      R => SR(0)
    );
\gen_axi.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs_reg[2]_0\,
      I1 => mi_bready_2,
      I2 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I3 => \^p_21_in\,
      O => \gen_axi.s_axi_bvalid_i_i_1_n_0\
    );
\gen_axi.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bvalid_i_i_1_n_0\,
      Q => \^p_21_in\,
      R => SR(0)
    );
\gen_axi.s_axi_rid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_rid_i_reg[0]_0\,
      Q => p_20_in(0),
      R => SR(0)
    );
\gen_axi.s_axi_rid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_rid_i_reg[1]_0\,
      Q => p_20_in(1),
      R => SR(0)
    );
\gen_axi.s_axi_rlast_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \^p_15_in\,
      I1 => \gen_axi.read_cnt[7]_i_3_n_0\,
      I2 => \gen_axi.s_axi_rlast_i_reg_0\,
      I3 => \gen_axi.s_axi_rlast_i_i_3_n_0\,
      I4 => \^p_17_in\,
      O => \gen_axi.s_axi_rlast_i_i_1_n_0\
    );
\gen_axi.s_axi_rlast_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1000FFFF"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(2),
      I1 => \gen_axi.read_cnt_reg__0\(1),
      I2 => mi_rready_2,
      I3 => \gen_axi.s_axi_rlast_i_i_5_n_0\,
      I4 => \gen_axi.s_axi_arready_i_reg_0\,
      O => \gen_axi.s_axi_rlast_i_i_3_n_0\
    );
\gen_axi.s_axi_rlast_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(3),
      I1 => \gen_axi.read_cnt_reg__0\(4),
      I2 => \gen_axi.read_cnt_reg__0\(5),
      I3 => \gen_axi.read_cnt_reg__0\(6),
      I4 => \gen_axi.read_cnt_reg__0\(7),
      I5 => \^p_15_in\,
      O => \gen_axi.s_axi_rlast_i_i_5_n_0\
    );
\gen_axi.s_axi_rlast_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_rlast_i_i_1_n_0\,
      Q => \^p_17_in\,
      R => SR(0)
    );
\gen_axi.s_axi_wready_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\,
      I1 => \FSM_onehot_gen_axi.write_cs_reg[2]_0\,
      I2 => \^p_14_in\,
      O => \gen_axi.s_axi_wready_i_i_1_n_0\
    );
\gen_axi.s_axi_wready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_wready_i_i_1_n_0\,
      Q => \^p_14_in\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor is
  port (
    \gen_single_issue.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.accept_cnt\ : out STD_LOGIC;
    \gen_single_issue.active_target_enc\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    match : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_hot_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_single_issue.accept_cnt_reg_0\ : in STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[0]_0\ : in STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[1]_0\ : in STD_LOGIC;
    st_mr_rmesg : in STD_LOGIC_VECTOR ( 67 downto 0 );
    st_mr_rlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor : entity is "axi_crossbar_v2_1_19_si_transactor";
end mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor is
  signal \^gen_single_issue.active_target_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  \gen_single_issue.active_target_enc\(1 downto 0) <= \^gen_single_issue.active_target_enc\(1 downto 0);
\gen_arbiter.m_target_hot_i[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => ADDRESS_HIT_0,
      O => match
    );
\gen_single_issue.accept_cnt_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.accept_cnt_reg_0\,
      Q => \gen_single_issue.accept_cnt\,
      R => SR(0)
    );
\gen_single_issue.active_target_enc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_enc_reg[0]_0\,
      Q => \^gen_single_issue.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_issue.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_enc_reg[1]_0\,
      Q => \^gen_single_issue.active_target_enc\(1),
      R => SR(0)
    );
\gen_single_issue.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_hot_reg[0]_0\,
      Q => \gen_single_issue.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(36),
      I1 => st_mr_rmesg(2),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(12),
      I1 => st_mr_rmesg(46),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(13),
      I1 => st_mr_rmesg(47),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(14),
      I1 => st_mr_rmesg(48),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(49),
      I1 => st_mr_rmesg(15),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(16),
      I1 => st_mr_rmesg(50),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(17),
      I1 => st_mr_rmesg(51),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(52),
      I1 => st_mr_rmesg(18),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(53),
      I1 => st_mr_rmesg(19),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(54),
      I1 => st_mr_rmesg(20),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(55),
      I1 => st_mr_rmesg(21),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(37),
      I1 => st_mr_rmesg(3),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(56),
      I1 => st_mr_rmesg(22),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(57),
      I1 => st_mr_rmesg(23),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(24),
      I1 => st_mr_rmesg(58),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(25),
      I1 => st_mr_rmesg(59),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(60),
      I1 => st_mr_rmesg(26),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(27),
      I1 => st_mr_rmesg(61),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(28),
      I1 => st_mr_rmesg(62),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(29),
      I1 => st_mr_rmesg(63),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(30),
      I1 => st_mr_rmesg(64),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(65),
      I1 => st_mr_rmesg(31),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(4),
      I1 => st_mr_rmesg(38),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(32),
      I1 => st_mr_rmesg(66),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(33),
      I1 => st_mr_rmesg(67),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(31)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(5),
      I1 => st_mr_rmesg(39),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(6),
      I1 => st_mr_rmesg(40),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(41),
      I1 => st_mr_rmesg(7),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(42),
      I1 => st_mr_rmesg(8),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(43),
      I1 => st_mr_rmesg(9),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => st_mr_rmesg(44),
      I1 => st_mr_rmesg(10),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => \^gen_single_issue.active_target_enc\(0),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(11),
      I1 => st_mr_rmesg(45),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(9)
    );
\s_axi_rlast[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B0B3808"
    )
        port map (
      I0 => st_mr_rlast(1),
      I1 => \^gen_single_issue.active_target_enc\(0),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => st_mr_rlast(2),
      I4 => st_mr_rlast(0),
      O => s_axi_rlast(0)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(0),
      I1 => st_mr_rmesg(34),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(1),
      I1 => st_mr_rmesg(35),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized0\ is
  port (
    \gen_single_issue.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_issue.active_target_enc_reg[0]_0\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_hot_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[0]_1\ : in STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[1]_0\ : in STD_LOGIC;
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bmesg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized0\ : entity is "axi_crossbar_v2_1_19_si_transactor";
end \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized0\;

architecture STRUCTURE of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized0\ is
  signal \gen_single_issue.accept_cnt\ : STD_LOGIC;
  signal \gen_single_issue.accept_cnt_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_single_issue.accept_cnt_i_2__0_n_0\ : STD_LOGIC;
  signal \^gen_single_issue.active_target_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[0]_i_3\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \gen_single_issue.accept_cnt_i_2__0\ : label is "soft_lutpair100";
begin
  \gen_single_issue.active_target_enc\(1 downto 0) <= \^gen_single_issue.active_target_enc\(1 downto 0);
\gen_arbiter.qual_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A00FFFF"
    )
        port map (
      I0 => s_axi_bvalid(0),
      I1 => \^gen_single_issue.active_target_enc\(0),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => s_axi_bready(0),
      I4 => \gen_single_issue.accept_cnt\,
      O => \gen_single_issue.active_target_enc_reg[0]_0\
    );
\gen_single_issue.accept_cnt_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFD55FCFCFC00"
    )
        port map (
      I0 => \gen_single_issue.accept_cnt_i_2__0_n_0\,
      I1 => m_ready_d(0),
      I2 => ss_aa_awready(0),
      I3 => m_ready_d(1),
      I4 => ss_wr_awready_0,
      I5 => \gen_single_issue.accept_cnt\,
      O => \gen_single_issue.accept_cnt_i_1__0_n_0\
    );
\gen_single_issue.accept_cnt_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \^gen_single_issue.active_target_enc\(1),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => s_axi_bvalid(0),
      O => \gen_single_issue.accept_cnt_i_2__0_n_0\
    );
\gen_single_issue.accept_cnt_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.accept_cnt_i_1__0_n_0\,
      Q => \gen_single_issue.accept_cnt\,
      R => SR(0)
    );
\gen_single_issue.active_target_enc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_enc_reg[0]_1\,
      Q => \^gen_single_issue.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_issue.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_enc_reg[1]_0\,
      Q => \^gen_single_issue.active_target_enc\(1),
      R => SR(0)
    );
\gen_single_issue.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_hot_reg[0]_0\,
      Q => \gen_single_issue.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33E2"
    )
        port map (
      I0 => st_mr_bmesg(0),
      I1 => \^gen_single_issue.active_target_enc\(0),
      I2 => st_mr_bmesg(2),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33E2"
    )
        port map (
      I0 => st_mr_bmesg(1),
      I1 => \^gen_single_issue.active_target_enc\(0),
      I2 => st_mr_bmesg(3),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_bresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized1\ is
  port (
    \gen_single_issue.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]\ : out STD_LOGIC;
    \s_axi_rready[1]\ : out STD_LOGIC;
    \gen_single_issue.accept_cnt_reg_0\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    match : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_hot_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[0]_0\ : in STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[1]_0\ : in STD_LOGIC;
    \gen_single_issue.accept_cnt_reg_1\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_qual_i140_in : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_grant_enc_i_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_rmesg : in STD_LOGIC_VECTOR ( 67 downto 0 );
    st_mr_rlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized1\ : entity is "axi_crossbar_v2_1_19_si_transactor";
end \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized1\;

architecture STRUCTURE of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized1\ is
  signal \gen_single_issue.accept_cnt\ : STD_LOGIC;
  signal \gen_single_issue.accept_cnt_i_1__2_n_0\ : STD_LOGIC;
  signal \^gen_single_issue.active_target_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_payload_i_reg[34]\ : STD_LOGIC;
begin
  \gen_single_issue.active_target_enc\(1 downto 0) <= \^gen_single_issue.active_target_enc\(1 downto 0);
  \m_payload_i_reg[34]\ <= \^m_payload_i_reg[34]\;
\gen_arbiter.any_grant_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5550000"
    )
        port map (
      I0 => \gen_single_issue.accept_cnt\,
      I1 => s_axi_rready(0),
      I2 => \^m_payload_i_reg[34]\,
      I3 => \gen_single_issue.accept_cnt_reg_1\,
      I4 => \gen_arbiter.m_grant_enc_i_reg[0]\,
      O => \gen_single_issue.accept_cnt_reg_0\
    );
\gen_arbiter.last_rr_hot[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF000000000000"
    )
        port map (
      I0 => \gen_single_issue.accept_cnt_reg_1\,
      I1 => \^m_payload_i_reg[34]\,
      I2 => s_axi_rready(0),
      I3 => \gen_single_issue.accept_cnt\,
      I4 => \gen_arbiter.m_grant_enc_i_reg[0]\,
      I5 => valid_qual_i140_in,
      O => \s_axi_rready[1]\
    );
\gen_arbiter.m_target_hot_i[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => ADDRESS_HIT_0,
      O => match
    );
\gen_arbiter.qual_reg[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF0000FFFFFFFF"
    )
        port map (
      I0 => \gen_single_issue.accept_cnt_reg_1\,
      I1 => \^m_payload_i_reg[34]\,
      I2 => s_axi_rready(0),
      I3 => \gen_single_issue.accept_cnt\,
      I4 => valid_qual_i140_in,
      I5 => s_axi_arvalid(0),
      O => D(0)
    );
\gen_single_issue.accept_cnt_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFF00"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^m_payload_i_reg[34]\,
      I2 => \gen_single_issue.accept_cnt_reg_1\,
      I3 => Q(0),
      I4 => \gen_single_issue.accept_cnt\,
      O => \gen_single_issue.accept_cnt_i_1__2_n_0\
    );
\gen_single_issue.accept_cnt_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.accept_cnt_i_1__2_n_0\,
      Q => \gen_single_issue.accept_cnt\,
      R => SR(0)
    );
\gen_single_issue.active_target_enc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_enc_reg[0]_0\,
      Q => \^gen_single_issue.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_issue.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_enc_reg[1]_0\,
      Q => \^gen_single_issue.active_target_enc\(1),
      R => SR(0)
    );
\gen_single_issue.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_hot_reg[0]_0\,
      Q => \gen_single_issue.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_rdata[32]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(36),
      I1 => st_mr_rmesg(2),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[33]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(37),
      I1 => st_mr_rmesg(3),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[34]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(4),
      I1 => st_mr_rmesg(38),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[35]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(5),
      I1 => st_mr_rmesg(39),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[36]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(6),
      I1 => st_mr_rmesg(40),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[37]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(41),
      I1 => st_mr_rmesg(7),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[38]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(42),
      I1 => st_mr_rmesg(8),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[39]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(43),
      I1 => st_mr_rmesg(9),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[40]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(44),
      I1 => st_mr_rmesg(10),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[41]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(11),
      I1 => st_mr_rmesg(45),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(9)
    );
\s_axi_rdata[42]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(12),
      I1 => st_mr_rmesg(46),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[43]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(13),
      I1 => st_mr_rmesg(47),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[44]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(14),
      I1 => st_mr_rmesg(48),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[45]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(49),
      I1 => st_mr_rmesg(15),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[46]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(16),
      I1 => st_mr_rmesg(50),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[47]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(17),
      I1 => st_mr_rmesg(51),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[48]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(52),
      I1 => st_mr_rmesg(18),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[49]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(53),
      I1 => st_mr_rmesg(19),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[50]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(54),
      I1 => st_mr_rmesg(20),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[51]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(55),
      I1 => st_mr_rmesg(21),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[52]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(56),
      I1 => st_mr_rmesg(22),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[53]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(57),
      I1 => st_mr_rmesg(23),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[54]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(24),
      I1 => st_mr_rmesg(58),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[55]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(25),
      I1 => st_mr_rmesg(59),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[56]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(60),
      I1 => st_mr_rmesg(26),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[57]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(27),
      I1 => st_mr_rmesg(61),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[58]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(28),
      I1 => st_mr_rmesg(62),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[59]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(29),
      I1 => st_mr_rmesg(63),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[60]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(30),
      I1 => st_mr_rmesg(64),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[61]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => st_mr_rmesg(65),
      I1 => st_mr_rmesg(31),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[62]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(32),
      I1 => st_mr_rmesg(66),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[63]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(33),
      I1 => st_mr_rmesg(67),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rdata(31)
    );
\s_axi_rlast[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => st_mr_rlast(0),
      I1 => st_mr_rlast(1),
      I2 => st_mr_rlast(2),
      I3 => \^gen_single_issue.active_target_enc\(1),
      I4 => \^gen_single_issue.active_target_enc\(0),
      O => \^m_payload_i_reg[34]\
    );
\s_axi_rresp[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(0),
      I1 => st_mr_rmesg(34),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(1),
      I1 => st_mr_rmesg(35),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_rresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized2\ is
  port (
    \gen_single_issue.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_issue.active_target_enc_reg[1]_0\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_hot_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[0]_0\ : in STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[1]_1\ : in STD_LOGIC;
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bmesg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized2\ : entity is "axi_crossbar_v2_1_19_si_transactor";
end \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized2\;

architecture STRUCTURE of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized2\ is
  signal \gen_single_issue.accept_cnt\ : STD_LOGIC;
  signal \gen_single_issue.accept_cnt_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_single_issue.accept_cnt_i_2__1_n_0\ : STD_LOGIC;
  signal \^gen_single_issue.active_target_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[1]_i_3\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \gen_single_issue.accept_cnt_i_2__1\ : label is "soft_lutpair106";
begin
  \gen_single_issue.active_target_enc\(1 downto 0) <= \^gen_single_issue.active_target_enc\(1 downto 0);
\gen_arbiter.qual_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A00FFFF"
    )
        port map (
      I0 => s_axi_bvalid(0),
      I1 => \^gen_single_issue.active_target_enc\(1),
      I2 => \^gen_single_issue.active_target_enc\(0),
      I3 => s_axi_bready(0),
      I4 => \gen_single_issue.accept_cnt\,
      O => \gen_single_issue.active_target_enc_reg[1]_0\
    );
\gen_single_issue.accept_cnt_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFD55FCFCFC00"
    )
        port map (
      I0 => \gen_single_issue.accept_cnt_i_2__1_n_0\,
      I1 => m_ready_d(0),
      I2 => ss_aa_awready(0),
      I3 => m_ready_d(1),
      I4 => ss_wr_awready_1,
      I5 => \gen_single_issue.accept_cnt\,
      O => \gen_single_issue.accept_cnt_i_1__1_n_0\
    );
\gen_single_issue.accept_cnt_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \^gen_single_issue.active_target_enc\(0),
      I2 => \^gen_single_issue.active_target_enc\(1),
      I3 => s_axi_bvalid(0),
      O => \gen_single_issue.accept_cnt_i_2__1_n_0\
    );
\gen_single_issue.accept_cnt_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.accept_cnt_i_1__1_n_0\,
      Q => \gen_single_issue.accept_cnt\,
      R => SR(0)
    );
\gen_single_issue.active_target_enc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_enc_reg[0]_0\,
      Q => \^gen_single_issue.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_issue.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_enc_reg[1]_1\,
      Q => \^gen_single_issue.active_target_enc\(1),
      R => SR(0)
    );
\gen_single_issue.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_issue.active_target_hot_reg[0]_0\,
      Q => \gen_single_issue.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_bresp[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33E2"
    )
        port map (
      I0 => st_mr_bmesg(0),
      I1 => \^gen_single_issue.active_target_enc\(0),
      I2 => st_mr_bmesg(2),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33E2"
    )
        port map (
      I0 => st_mr_bmesg(1),
      I1 => \^gen_single_issue.active_target_enc\(0),
      I2 => st_mr_bmesg(3),
      I3 => \^gen_single_issue.active_target_enc\(1),
      O => s_axi_bresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized3\ is
  port (
    \gen_single_thread.active_target_enc\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.s_avalid_en\ : out STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]_0\ : out STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[0]_0\ : out STD_LOGIC;
    match : out STD_LOGIC;
    \s_axi_araddr[95]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_single_thread.active_target_hot_reg[0]_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_reg[1]_0\ : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_qual_i142_in : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_grant_enc_i_reg[0]\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.m_target_hot_i_reg[2]\ : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[2]_0\ : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[2]_1\ : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[2]_2\ : in STD_LOGIC;
    st_mr_rmesg : in STD_LOGIC_VECTOR ( 67 downto 0 );
    st_mr_rlast : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized3\ : entity is "axi_crossbar_v2_1_19_si_transactor";
end \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized3\;

architecture STRUCTURE of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized3\ is
  signal \gen_arbiter.qual_reg[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.accept_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \^gen_single_thread.active_target_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gen_single_thread.s_avalid_en\ : STD_LOGIC;
  signal \^match\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_7\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[2]_i_6__0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[0]_i_1__1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[1]_i_1__1\ : label is "soft_lutpair113";
begin
  \gen_single_thread.active_target_enc\(1 downto 0) <= \^gen_single_thread.active_target_enc\(1 downto 0);
  \gen_single_thread.s_avalid_en\ <= \^gen_single_thread.s_avalid_en\;
  match <= \^match\;
\gen_arbiter.any_grant_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i_reg[0]\,
      I1 => p_2_in,
      I2 => \gen_single_thread.accept_cnt\(0),
      I3 => \gen_single_thread.accept_cnt\(1),
      O => \gen_single_thread.accept_cnt_reg[0]_0\
    );
\gen_arbiter.last_rr_hot[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00000000000000"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(1),
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => p_2_in,
      I3 => \^gen_single_thread.s_avalid_en\,
      I4 => \gen_arbiter.m_grant_enc_i_reg[0]\,
      I5 => valid_qual_i142_in,
      O => \gen_single_thread.accept_cnt_reg[1]_0\
    );
\gen_arbiter.m_target_hot_i[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^match\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      O => \s_axi_araddr[95]\
    );
\gen_arbiter.m_target_hot_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80008000FFFF8000"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i_reg[2]\,
      I1 => \gen_arbiter.m_target_hot_i_reg[2]_0\,
      I2 => \gen_arbiter.m_target_hot_i_reg[2]_1\,
      I3 => \gen_arbiter.m_target_hot_i_reg[2]_2\,
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(0),
      O => \^match\
    );
\gen_arbiter.qual_reg[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD000000FFFFFFFF"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(1),
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => p_2_in,
      I3 => valid_qual_i142_in,
      I4 => \^gen_single_thread.s_avalid_en\,
      I5 => s_axi_arvalid(0),
      O => D(0)
    );
\gen_arbiter.qual_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F4FBF0FFF0F0F"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => \gen_arbiter.qual_reg[2]_i_6__0_n_0\,
      I3 => \^gen_single_thread.active_target_enc\(0),
      I4 => \^gen_single_thread.active_target_enc\(1),
      I5 => \^match\,
      O => \^gen_single_thread.s_avalid_en\
    );
\gen_arbiter.qual_reg[2]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(0),
      I1 => \gen_single_thread.accept_cnt\(1),
      O => \gen_arbiter.qual_reg[2]_i_6__0_n_0\
    );
\gen_single_thread.accept_cnt[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A558"
    )
        port map (
      I0 => p_2_in,
      I1 => \gen_single_thread.accept_cnt\(1),
      I2 => \gen_single_thread.accept_cnt\(0),
      I3 => Q(0),
      O => \gen_single_thread.accept_cnt[0]_i_1__1_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9CC4"
    )
        port map (
      I0 => p_2_in,
      I1 => \gen_single_thread.accept_cnt\(1),
      I2 => \gen_single_thread.accept_cnt\(0),
      I3 => Q(0),
      O => \gen_single_thread.accept_cnt[1]_i_1__1_n_0\
    );
\gen_single_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.accept_cnt[0]_i_1__1_n_0\,
      Q => \gen_single_thread.accept_cnt\(0),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.accept_cnt[1]_i_1__1_n_0\,
      Q => \gen_single_thread.accept_cnt\(1),
      R => SR(0)
    );
\gen_single_thread.active_target_enc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.active_target_enc_reg[0]_0\,
      Q => \^gen_single_thread.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_thread.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.active_target_enc_reg[1]_0\,
      Q => \^gen_single_thread.active_target_enc\(1),
      R => SR(0)
    );
\gen_single_thread.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.active_target_hot_reg[0]_0\,
      Q => \gen_single_thread.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_rdata[64]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(2),
      I1 => st_mr_rmesg(36),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[65]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(3),
      I1 => st_mr_rmesg(37),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[66]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(4),
      I1 => st_mr_rmesg(38),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[67]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(5),
      I1 => st_mr_rmesg(39),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[68]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(6),
      I1 => st_mr_rmesg(40),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[69]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(7),
      I1 => st_mr_rmesg(41),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[70]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(8),
      I1 => st_mr_rmesg(42),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[71]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(9),
      I1 => st_mr_rmesg(43),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[72]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(10),
      I1 => st_mr_rmesg(44),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[73]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(11),
      I1 => st_mr_rmesg(45),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(9)
    );
\s_axi_rdata[74]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(12),
      I1 => st_mr_rmesg(46),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[75]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(13),
      I1 => st_mr_rmesg(47),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[76]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(14),
      I1 => st_mr_rmesg(48),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[77]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(15),
      I1 => st_mr_rmesg(49),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[78]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(16),
      I1 => st_mr_rmesg(50),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[79]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(17),
      I1 => st_mr_rmesg(51),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[80]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(18),
      I1 => st_mr_rmesg(52),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[81]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(19),
      I1 => st_mr_rmesg(53),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[82]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(20),
      I1 => st_mr_rmesg(54),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[83]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(21),
      I1 => st_mr_rmesg(55),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[84]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(22),
      I1 => st_mr_rmesg(56),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[85]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(23),
      I1 => st_mr_rmesg(57),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[86]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(24),
      I1 => st_mr_rmesg(58),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[87]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(25),
      I1 => st_mr_rmesg(59),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[88]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(26),
      I1 => st_mr_rmesg(60),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[89]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(27),
      I1 => st_mr_rmesg(61),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[90]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(28),
      I1 => st_mr_rmesg(62),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[91]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(29),
      I1 => st_mr_rmesg(63),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[92]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(30),
      I1 => st_mr_rmesg(64),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[93]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(31),
      I1 => st_mr_rmesg(65),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[94]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(32),
      I1 => st_mr_rmesg(66),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[95]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(33),
      I1 => st_mr_rmesg(67),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(31)
    );
\s_axi_rlast[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B0B3808"
    )
        port map (
      I0 => st_mr_rlast(1),
      I1 => \^gen_single_thread.active_target_enc\(0),
      I2 => \^gen_single_thread.active_target_enc\(1),
      I3 => st_mr_rlast(2),
      I4 => st_mr_rlast(0),
      O => s_axi_rlast(0)
    );
\s_axi_rresp[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(0),
      I1 => st_mr_rmesg(34),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(1),
      I1 => st_mr_rmesg(35),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized4\ is
  port (
    \gen_single_thread.active_target_enc\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.accept_cnt_reg[5]_0\ : out STD_LOGIC;
    \s_axi_awvalid[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_single_thread.active_target_hot_reg[0]_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_reg[1]_0\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]\ : in STD_LOGIC;
    valid_qual_i142_in : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.accept_cnt_reg[4]_0\ : in STD_LOGIC;
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_2 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    match : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[5]_1\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[5]_2\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[5]_3\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bmesg : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized4\ : entity is "axi_crossbar_v2_1_19_si_transactor";
end \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized4\;

architecture STRUCTURE of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized4\ is
  signal \gen_arbiter.last_rr_hot[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt_reg\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^gen_single_thread.active_target_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.s_avalid_en__0\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[3]_i_5__0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[0]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[3]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[5]_i_4\ : label is "soft_lutpair114";
begin
  \gen_single_thread.active_target_enc\(1 downto 0) <= \^gen_single_thread.active_target_enc\(1 downto 0);
\gen_arbiter.last_rr_hot[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00000000000000"
    )
        port map (
      I0 => \gen_arbiter.last_rr_hot[3]_i_5__0_n_0\,
      I1 => \gen_single_thread.accept_cnt_reg\(5),
      I2 => p_2_in,
      I3 => \gen_single_thread.s_avalid_en__0\,
      I4 => \gen_arbiter.grant_hot_reg[2]\,
      I5 => valid_qual_i142_in,
      O => \gen_single_thread.accept_cnt_reg[5]_0\
    );
\gen_arbiter.last_rr_hot[3]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(2),
      I1 => \gen_single_thread.accept_cnt_reg\(4),
      I2 => \gen_single_thread.accept_cnt_reg\(3),
      I3 => \gen_single_thread.accept_cnt_reg\(1),
      I4 => \gen_single_thread.accept_cnt_reg\(0),
      O => \gen_arbiter.last_rr_hot[3]_i_5__0_n_0\
    );
\gen_arbiter.qual_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDDDDDFDDDFDDD"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => m_ready_d(0),
      I2 => valid_qual_i142_in,
      I3 => \gen_single_thread.s_avalid_en__0\,
      I4 => p_2_in,
      I5 => \gen_arbiter.qual_reg[2]_i_5_n_0\,
      O => \s_axi_awvalid[2]\(0)
    );
\gen_arbiter.qual_reg[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F4FBF0FFF0F0F"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => \gen_single_thread.accept_cnt[5]_i_3_n_0\,
      I3 => \^gen_single_thread.active_target_enc\(0),
      I4 => \^gen_single_thread.active_target_enc\(1),
      I5 => match,
      O => \gen_single_thread.s_avalid_en__0\
    );
\gen_arbiter.qual_reg[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33320000FFF20000"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg[5]_1\,
      I1 => \^gen_single_thread.active_target_enc\(0),
      I2 => \gen_single_thread.accept_cnt_reg[5]_2\,
      I3 => \gen_single_thread.accept_cnt_reg[5]_3\,
      I4 => s_axi_bready(0),
      I5 => \^gen_single_thread.active_target_enc\(1),
      O => p_2_in
    );
\gen_arbiter.qual_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(5),
      I1 => \gen_single_thread.accept_cnt_reg\(0),
      I2 => \gen_single_thread.accept_cnt_reg\(1),
      I3 => \gen_single_thread.accept_cnt_reg\(3),
      I4 => \gen_single_thread.accept_cnt_reg\(4),
      I5 => \gen_single_thread.accept_cnt_reg\(2),
      O => \gen_arbiter.qual_reg[2]_i_5_n_0\
    );
\gen_single_thread.accept_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(0),
      O => \gen_single_thread.accept_cnt[0]_i_1_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669666966699999"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(1),
      I1 => \gen_single_thread.accept_cnt_reg\(0),
      I2 => ss_aa_awready(0),
      I3 => m_ready_d(0),
      I4 => m_ready_d(1),
      I5 => ss_wr_awready_2,
      O => \gen_single_thread.accept_cnt[1]_i_1_n_0\
    );
\gen_single_thread.accept_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(2),
      I1 => \gen_single_thread.accept_cnt_reg[4]_0\,
      I2 => \gen_single_thread.accept_cnt_reg\(1),
      I3 => \gen_single_thread.accept_cnt_reg\(0),
      O => \gen_single_thread.accept_cnt[2]_i_1_n_0\
    );
\gen_single_thread.accept_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(3),
      I1 => \gen_single_thread.accept_cnt_reg\(1),
      I2 => \gen_single_thread.accept_cnt_reg\(2),
      I3 => \gen_single_thread.accept_cnt_reg[4]_0\,
      I4 => \gen_single_thread.accept_cnt_reg\(0),
      O => \gen_single_thread.accept_cnt[3]_i_1_n_0\
    );
\gen_single_thread.accept_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE80000001"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(0),
      I1 => \gen_single_thread.accept_cnt_reg[4]_0\,
      I2 => \gen_single_thread.accept_cnt_reg\(1),
      I3 => \gen_single_thread.accept_cnt_reg\(3),
      I4 => \gen_single_thread.accept_cnt_reg\(2),
      I5 => \gen_single_thread.accept_cnt_reg\(4),
      O => \gen_single_thread.accept_cnt[4]_i_1_n_0\
    );
\gen_single_thread.accept_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5558555855588888"
    )
        port map (
      I0 => p_2_in,
      I1 => \gen_single_thread.accept_cnt[5]_i_3_n_0\,
      I2 => ss_aa_awready(0),
      I3 => m_ready_d(0),
      I4 => m_ready_d(1),
      I5 => ss_wr_awready_2,
      O => \gen_single_thread.accept_cnt[5]_i_1_n_0\
    );
\gen_single_thread.accept_cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC9"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(4),
      I1 => \gen_single_thread.accept_cnt_reg\(5),
      I2 => \gen_single_thread.accept_cnt[5]_i_4_n_0\,
      I3 => \gen_single_thread.accept_cnt_reg\(3),
      O => \gen_single_thread.accept_cnt[5]_i_2_n_0\
    );
\gen_single_thread.accept_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(0),
      I1 => \gen_single_thread.accept_cnt_reg\(1),
      I2 => \gen_single_thread.accept_cnt_reg\(3),
      I3 => \gen_single_thread.accept_cnt_reg\(4),
      I4 => \gen_single_thread.accept_cnt_reg\(2),
      I5 => \gen_single_thread.accept_cnt_reg\(5),
      O => \gen_single_thread.accept_cnt[5]_i_3_n_0\
    );
\gen_single_thread.accept_cnt[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF00FE"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(0),
      I1 => \gen_single_thread.accept_cnt_reg[4]_0\,
      I2 => \gen_single_thread.accept_cnt_reg\(1),
      I3 => \gen_single_thread.accept_cnt_reg\(3),
      I4 => \gen_single_thread.accept_cnt_reg\(2),
      O => \gen_single_thread.accept_cnt[5]_i_4_n_0\
    );
\gen_single_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[5]_i_1_n_0\,
      D => \gen_single_thread.accept_cnt[0]_i_1_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(0),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[5]_i_1_n_0\,
      D => \gen_single_thread.accept_cnt[1]_i_1_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(1),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[5]_i_1_n_0\,
      D => \gen_single_thread.accept_cnt[2]_i_1_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(2),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[5]_i_1_n_0\,
      D => \gen_single_thread.accept_cnt[3]_i_1_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(3),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[5]_i_1_n_0\,
      D => \gen_single_thread.accept_cnt[4]_i_1_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(4),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[5]_i_1_n_0\,
      D => \gen_single_thread.accept_cnt[5]_i_2_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(5),
      R => SR(0)
    );
\gen_single_thread.active_target_enc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.active_target_enc_reg[0]_0\,
      Q => \^gen_single_thread.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_thread.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.active_target_enc_reg[1]_0\,
      Q => \^gen_single_thread.active_target_enc\(1),
      R => SR(0)
    );
\gen_single_thread.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.active_target_hot_reg[0]_0\,
      Q => \gen_single_thread.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_bresp[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33E2"
    )
        port map (
      I0 => st_mr_bmesg(0),
      I1 => \^gen_single_thread.active_target_enc\(0),
      I2 => st_mr_bmesg(2),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33E2"
    )
        port map (
      I0 => st_mr_bmesg(1),
      I1 => \^gen_single_thread.active_target_enc\(0),
      I2 => st_mr_bmesg(3),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_bresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized5\ is
  port (
    \gen_single_thread.active_target_enc\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.accept_cnt_reg[3]_0\ : out STD_LOGIC;
    \gen_single_thread.active_target_enc_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_araddr[127]\ : out STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[0]_0\ : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_single_thread.active_target_hot_reg[0]_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_reg[1]_1\ : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    \gen_arbiter.m_grant_enc_i_reg[0]\ : in STD_LOGIC;
    valid_qual_i145_in : in STD_LOGIC;
    match : in STD_LOGIC;
    \gen_arbiter.any_grant_i_3\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_rmesg : in STD_LOGIC_VECTOR ( 67 downto 0 );
    st_mr_rlast : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized5\ : entity is "axi_crossbar_v2_1_19_si_transactor";
end \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized5\;

architecture STRUCTURE of \mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized5\ is
  signal \gen_arbiter.any_grant_i_9_n_0\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gen_single_thread.active_target_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.s_avalid_en__1\ : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_9\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[3]_i_5\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[3]_i_9\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[1]_i_1__0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[2]_i_1__0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[3]_i_2\ : label is "soft_lutpair120";
begin
  \gen_single_thread.active_target_enc\(1 downto 0) <= \^gen_single_thread.active_target_enc\(1 downto 0);
  s_axi_rlast(0) <= \^s_axi_rlast\(0);
\gen_arbiter.any_grant_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0028AAAA0820AAAA"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i_reg[0]\,
      I1 => match,
      I2 => \^gen_single_thread.active_target_enc\(1),
      I3 => \^gen_single_thread.active_target_enc\(0),
      I4 => \gen_arbiter.qual_reg[3]_i_9_n_0\,
      I5 => \gen_arbiter.any_grant_i_3\,
      O => \gen_single_thread.active_target_enc_reg[1]_0\
    );
\gen_arbiter.any_grant_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101010101010"
    )
        port map (
      I0 => \gen_arbiter.any_grant_i_9_n_0\,
      I1 => \gen_single_thread.accept_cnt_reg\(0),
      I2 => \gen_single_thread.accept_cnt_reg\(3),
      I3 => \^s_axi_rlast\(0),
      I4 => s_axi_rvalid(0),
      I5 => s_axi_rready(0),
      O => \gen_single_thread.accept_cnt_reg[0]_0\
    );
\gen_arbiter.any_grant_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(2),
      I1 => \gen_single_thread.accept_cnt_reg\(1),
      O => \gen_arbiter.any_grant_i_9_n_0\
    );
\gen_arbiter.last_rr_hot[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00000000000000"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[3]_i_5_n_0\,
      I1 => \gen_single_thread.accept_cnt_reg\(3),
      I2 => p_2_in,
      I3 => \gen_arbiter.m_grant_enc_i_reg[0]\,
      I4 => \gen_single_thread.s_avalid_en__1\,
      I5 => valid_qual_i145_in,
      O => \gen_single_thread.accept_cnt_reg[3]_0\
    );
\gen_arbiter.m_target_hot_i[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => match,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      O => \s_axi_araddr[127]\
    );
\gen_arbiter.qual_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888088FFFFFFFF"
    )
        port map (
      I0 => valid_qual_i145_in,
      I1 => \gen_single_thread.s_avalid_en__1\,
      I2 => p_2_in,
      I3 => \gen_single_thread.accept_cnt_reg\(3),
      I4 => \gen_arbiter.qual_reg[3]_i_5_n_0\,
      I5 => s_axi_arvalid(0),
      O => D(0)
    );
\gen_arbiter.qual_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F4FBF0FFF0F0F"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => \gen_arbiter.qual_reg[3]_i_9_n_0\,
      I3 => \^gen_single_thread.active_target_enc\(0),
      I4 => \^gen_single_thread.active_target_enc\(1),
      I5 => match,
      O => \gen_single_thread.s_avalid_en__1\
    );
\gen_arbiter.qual_reg[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(1),
      I1 => \gen_single_thread.accept_cnt_reg\(2),
      I2 => \gen_single_thread.accept_cnt_reg\(0),
      O => \gen_arbiter.qual_reg[3]_i_5_n_0\
    );
\gen_arbiter.qual_reg[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(0),
      I1 => \gen_single_thread.accept_cnt_reg\(2),
      I2 => \gen_single_thread.accept_cnt_reg\(1),
      I3 => \gen_single_thread.accept_cnt_reg\(3),
      O => \gen_arbiter.qual_reg[3]_i_9_n_0\
    );
\gen_single_thread.accept_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(0),
      O => \gen_single_thread.accept_cnt[0]_i_1__0_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Q(0),
      I1 => \gen_single_thread.accept_cnt_reg\(1),
      I2 => \gen_single_thread.accept_cnt_reg\(0),
      O => \gen_single_thread.accept_cnt[1]_i_1__0_n_0\
    );
\gen_single_thread.accept_cnt[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(0),
      I1 => \gen_single_thread.accept_cnt_reg\(1),
      I2 => Q(0),
      I3 => \gen_single_thread.accept_cnt_reg\(2),
      O => \gen_single_thread.accept_cnt[2]_i_1__0_n_0\
    );
\gen_single_thread.accept_cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555AAAAAAA8"
    )
        port map (
      I0 => p_2_in,
      I1 => \gen_single_thread.accept_cnt_reg\(3),
      I2 => \gen_single_thread.accept_cnt_reg\(1),
      I3 => \gen_single_thread.accept_cnt_reg\(2),
      I4 => \gen_single_thread.accept_cnt_reg\(0),
      I5 => Q(0),
      O => \gen_single_thread.accept_cnt[3]_i_1__0_n_0\
    );
\gen_single_thread.accept_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCC9"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg\(2),
      I1 => \gen_single_thread.accept_cnt_reg\(3),
      I2 => Q(0),
      I3 => \gen_single_thread.accept_cnt_reg\(1),
      I4 => \gen_single_thread.accept_cnt_reg\(0),
      O => \gen_single_thread.accept_cnt[3]_i_2_n_0\
    );
\gen_single_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[3]_i_1__0_n_0\,
      D => \gen_single_thread.accept_cnt[0]_i_1__0_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(0),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[3]_i_1__0_n_0\,
      D => \gen_single_thread.accept_cnt[1]_i_1__0_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(1),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[3]_i_1__0_n_0\,
      D => \gen_single_thread.accept_cnt[2]_i_1__0_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(2),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[3]_i_1__0_n_0\,
      D => \gen_single_thread.accept_cnt[3]_i_2_n_0\,
      Q => \gen_single_thread.accept_cnt_reg\(3),
      R => SR(0)
    );
\gen_single_thread.active_target_enc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.active_target_enc_reg[0]_0\,
      Q => \^gen_single_thread.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_thread.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.active_target_enc_reg[1]_1\,
      Q => \^gen_single_thread.active_target_enc\(1),
      R => SR(0)
    );
\gen_single_thread.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_single_thread.active_target_hot_reg[0]_0\,
      Q => \gen_single_thread.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_rdata[100]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(6),
      I1 => st_mr_rmesg(40),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[101]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(7),
      I1 => st_mr_rmesg(41),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[102]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(8),
      I1 => st_mr_rmesg(42),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[103]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(9),
      I1 => st_mr_rmesg(43),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[104]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(10),
      I1 => st_mr_rmesg(44),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[105]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(11),
      I1 => st_mr_rmesg(45),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(9)
    );
\s_axi_rdata[106]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(12),
      I1 => st_mr_rmesg(46),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[107]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(13),
      I1 => st_mr_rmesg(47),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[108]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(14),
      I1 => st_mr_rmesg(48),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[109]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(15),
      I1 => st_mr_rmesg(49),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[110]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(16),
      I1 => st_mr_rmesg(50),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[111]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(17),
      I1 => st_mr_rmesg(51),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[112]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(18),
      I1 => st_mr_rmesg(52),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[113]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(19),
      I1 => st_mr_rmesg(53),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[114]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(20),
      I1 => st_mr_rmesg(54),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[115]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(21),
      I1 => st_mr_rmesg(55),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[116]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(22),
      I1 => st_mr_rmesg(56),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[117]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(23),
      I1 => st_mr_rmesg(57),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[118]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(24),
      I1 => st_mr_rmesg(58),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[119]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(25),
      I1 => st_mr_rmesg(59),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[120]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(26),
      I1 => st_mr_rmesg(60),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[121]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(27),
      I1 => st_mr_rmesg(61),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[122]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(28),
      I1 => st_mr_rmesg(62),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[123]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(29),
      I1 => st_mr_rmesg(63),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[124]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(30),
      I1 => st_mr_rmesg(64),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[125]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(31),
      I1 => st_mr_rmesg(65),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[126]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(32),
      I1 => st_mr_rmesg(66),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[127]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(33),
      I1 => st_mr_rmesg(67),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(31)
    );
\s_axi_rdata[96]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(2),
      I1 => st_mr_rmesg(36),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[97]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => st_mr_rmesg(3),
      I1 => st_mr_rmesg(37),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[98]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(4),
      I1 => st_mr_rmesg(38),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[99]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(5),
      I1 => st_mr_rmesg(39),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rdata(3)
    );
\s_axi_rlast[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B0B3808"
    )
        port map (
      I0 => st_mr_rlast(1),
      I1 => \^gen_single_thread.active_target_enc\(0),
      I2 => \^gen_single_thread.active_target_enc\(1),
      I3 => st_mr_rlast(2),
      I4 => st_mr_rlast(0),
      O => \^s_axi_rlast\(0)
    );
\s_axi_rresp[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(0),
      I1 => st_mr_rmesg(34),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FCA"
    )
        port map (
      I0 => st_mr_rmesg(1),
      I1 => st_mr_rmesg(35),
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \^gen_single_thread.active_target_enc\(1),
      O => s_axi_rresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_splitter is
  port (
    s_ready_i_reg : out STD_LOGIC;
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_ready_i_reg_0 : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awvalid[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC;
    s_ready_i_reg_1 : out STD_LOGIC;
    match : in STD_LOGIC;
    ss_wr_awready_0 : in STD_LOGIC;
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC;
    \gen_single_issue.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \valid_qual_i1__1\ : in STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]\ : in STD_LOGIC;
    st_aa_awtarget_enc_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_splitter : entity is "axi_crossbar_v2_1_19_splitter";
end mcu_xbar_0_axi_crossbar_v2_1_19_splitter;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_splitter is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[0]_i_1__0\ : label is "soft_lutpair101";
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^m_ready_d\(1),
      I1 => s_axi_awvalid(0),
      O => \m_ready_d_reg[1]_0\
    );
\gen_arbiter.qual_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d\(0),
      I2 => \valid_qual_i1__1\,
      I3 => \gen_arbiter.qual_reg_reg[0]\,
      O => \s_axi_awvalid[0]\(0)
    );
\gen_single_issue.active_target_enc[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFFA8A8A800"
    )
        port map (
      I0 => st_aa_awtarget_enc_0(0),
      I1 => ss_wr_awready_0,
      I2 => \^m_ready_d\(1),
      I3 => ss_aa_awready(0),
      I4 => \^m_ready_d\(0),
      I5 => \gen_single_issue.active_target_enc\(0),
      O => s_ready_i_reg_1
    );
\gen_single_issue.active_target_enc[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757FF54545400"
    )
        port map (
      I0 => match,
      I1 => ss_wr_awready_0,
      I2 => \^m_ready_d\(1),
      I3 => ss_aa_awready(0),
      I4 => \^m_ready_d\(0),
      I5 => \gen_single_issue.active_target_enc\(1),
      O => s_ready_i_reg
    );
\gen_single_issue.active_target_hot[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFFA8A8A800"
    )
        port map (
      I0 => ADDRESS_HIT_0,
      I1 => ss_wr_awready_0,
      I2 => \^m_ready_d\(1),
      I3 => ss_aa_awready(0),
      I4 => \^m_ready_d\(0),
      I5 => \gen_single_issue.active_target_hot\(0),
      O => s_ready_i_reg_0
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000C00080000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_0,
      I3 => \^m_ready_d\(1),
      I4 => ss_aa_awready(0),
      I5 => \^m_ready_d\(0),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CC80"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_0,
      I3 => \^m_ready_d\(1),
      I4 => ss_aa_awready(0),
      I5 => \^m_ready_d\(0),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
\s_axi_awready[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => ss_wr_awready_0,
      I1 => \^m_ready_d\(1),
      I2 => ss_aa_awready(0),
      I3 => \^m_ready_d\(0),
      O => s_axi_awready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_splitter_3 is
  port (
    s_ready_i_reg : out STD_LOGIC;
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_ready_i_reg_0 : out STD_LOGIC;
    \s_axi_awvalid[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC;
    s_ready_i_reg_1 : out STD_LOGIC;
    match : in STD_LOGIC;
    ss_wr_awready_1 : in STD_LOGIC;
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC;
    \gen_single_issue.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_qual_i140_in : in STD_LOGIC;
    \gen_arbiter.qual_reg_reg[1]\ : in STD_LOGIC;
    st_aa_awtarget_enc_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_splitter_3 : entity is "axi_crossbar_v2_1_19_splitter";
end mcu_xbar_0_axi_crossbar_v2_1_19_splitter_3;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_splitter_3 is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[1]_i_1\ : label is "soft_lutpair107";
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\FSM_onehot_state[3]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^m_ready_d\(1),
      I1 => s_axi_awvalid(0),
      O => \m_ready_d_reg[1]_0\
    );
\gen_arbiter.qual_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d\(0),
      I2 => valid_qual_i140_in,
      I3 => \gen_arbiter.qual_reg_reg[1]\,
      O => \s_axi_awvalid[1]\(0)
    );
\gen_single_issue.active_target_enc[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFFA8A8A800"
    )
        port map (
      I0 => st_aa_awtarget_enc_2(0),
      I1 => ss_wr_awready_1,
      I2 => \^m_ready_d\(1),
      I3 => ss_aa_awready(0),
      I4 => \^m_ready_d\(0),
      I5 => \gen_single_issue.active_target_enc\(0),
      O => s_ready_i_reg_1
    );
\gen_single_issue.active_target_enc[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757FF54545400"
    )
        port map (
      I0 => match,
      I1 => ss_wr_awready_1,
      I2 => \^m_ready_d\(1),
      I3 => ss_aa_awready(0),
      I4 => \^m_ready_d\(0),
      I5 => \gen_single_issue.active_target_enc\(1),
      O => s_ready_i_reg
    );
\gen_single_issue.active_target_hot[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFFA8A8A800"
    )
        port map (
      I0 => ADDRESS_HIT_0,
      I1 => ss_wr_awready_1,
      I2 => \^m_ready_d\(1),
      I3 => ss_aa_awready(0),
      I4 => \^m_ready_d\(0),
      I5 => \gen_single_issue.active_target_hot\(0),
      O => s_ready_i_reg_0
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000C00080000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_1,
      I3 => \^m_ready_d\(1),
      I4 => ss_aa_awready(0),
      I5 => \^m_ready_d\(0),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CC80"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_1,
      I3 => \^m_ready_d\(1),
      I4 => ss_aa_awready(0),
      I5 => \^m_ready_d\(0),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
\s_axi_awready[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => ss_wr_awready_1,
      I1 => \^m_ready_d\(1),
      I2 => ss_aa_awready(0),
      I3 => \^m_ready_d\(0),
      O => s_axi_awready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_splitter_5 is
  port (
    s_ready_i_reg : out STD_LOGIC;
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_ready_i_reg_0 : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC;
    \s_axi_awaddr[95]\ : out STD_LOGIC;
    match : in STD_LOGIC;
    ss_wr_awready_2 : in STD_LOGIC;
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC;
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_splitter_5 : entity is "axi_crossbar_v2_1_19_splitter";
end mcu_xbar_0_axi_crossbar_v2_1_19_splitter_5;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_splitter_5 is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \s_axi_awready[2]_INST_0\ : label is "soft_lutpair116";
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
  s_axi_awready(0) <= \^s_axi_awready\(0);
\FSM_onehot_state[3]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^m_ready_d\(1),
      I1 => s_axi_awvalid(0),
      O => \m_ready_d_reg[1]_0\
    );
\gen_single_thread.active_target_enc[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
        port map (
      I0 => match,
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(0),
      I3 => \^s_axi_awready\(0),
      I4 => \gen_single_thread.active_target_enc\(0),
      O => \s_axi_awaddr[95]\
    );
\gen_single_thread.active_target_enc[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757FF54545400"
    )
        port map (
      I0 => match,
      I1 => ss_wr_awready_2,
      I2 => \^m_ready_d\(1),
      I3 => \^m_ready_d\(0),
      I4 => ss_aa_awready(0),
      I5 => \gen_single_thread.active_target_enc\(1),
      O => s_ready_i_reg
    );
\gen_single_thread.active_target_hot[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFFA8A8A800"
    )
        port map (
      I0 => ADDRESS_HIT_0,
      I1 => ss_wr_awready_2,
      I2 => \^m_ready_d\(1),
      I3 => \^m_ready_d\(0),
      I4 => ss_aa_awready(0),
      I5 => \gen_single_thread.active_target_hot\(0),
      O => s_ready_i_reg_0
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0008000C0000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_2,
      I3 => \^m_ready_d\(1),
      I4 => \^m_ready_d\(0),
      I5 => ss_aa_awready(0),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CC80"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_2,
      I3 => \^m_ready_d\(1),
      I4 => \^m_ready_d\(0),
      I5 => ss_aa_awready(0),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
\s_axi_awready[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => ss_wr_awready_2,
      I1 => \^m_ready_d\(1),
      I2 => \^m_ready_d\(0),
      I3 => ss_aa_awready(0),
      O => \^s_axi_awready\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_splitter_6 is
  port (
    \m_ready_d_reg[1]_0\ : out STD_LOGIC;
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[0]_0\ : out STD_LOGIC;
    \mi_awready_mux__1\ : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    \m_ready_d_reg[1]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_ready_d_reg[0]_1\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_splitter_6 : entity is "axi_crossbar_v2_1_19_splitter";
end mcu_xbar_0_axi_crossbar_v2_1_19_splitter_6;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_splitter_6 is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_ready_d[0]_i_3\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \m_ready_d[1]_i_1\ : label is "soft_lutpair123";
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^m_ready_d\(0),
      I1 => aa_sa_awvalid,
      O => \m_ready_d_reg[0]_0\
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEAAAA"
    )
        port map (
      I0 => \^m_ready_d\(0),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => aa_sa_awvalid,
      I5 => \m_ready_d_reg[0]_1\,
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^m_ready_d\(1),
      I1 => \mi_awready_mux__1\,
      O => \m_ready_d_reg[1]_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0C0800"
    )
        port map (
      I0 => aa_sa_awvalid,
      I1 => aresetn_d,
      I2 => \m_ready_d_reg[1]_1\,
      I3 => \mi_awready_mux__1\,
      I4 => \^m_ready_d\(1),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl is
  port (
    \gen_rep[0].fifoaddr_reg[1]\ : out STD_LOGIC;
    st_aa_awtarget_enc_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    push : in STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl;

architecture STRUCTURE of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl is
  signal \^st_aa_awtarget_enc_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  st_aa_awtarget_enc_2(0) <= \^st_aa_awtarget_enc_2\(0);
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => push,
      CLK => aclk,
      D => \^st_aa_awtarget_enc_2\(0),
      Q => \gen_rep[0].fifoaddr_reg[1]\,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(0),
      O => \^st_aa_awtarget_enc_2\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_10 is
  port (
    \gen_rep[0].fifoaddr_reg[1]\ : out STD_LOGIC;
    st_aa_awtarget_enc_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    push : in STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_10 : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_10;

architecture STRUCTURE of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_10 is
  signal \^st_aa_awtarget_enc_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  st_aa_awtarget_enc_0(0) <= \^st_aa_awtarget_enc_0\(0);
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => push,
      CLK => aclk,
      D => \^st_aa_awtarget_enc_0\(0),
      Q => \gen_rep[0].fifoaddr_reg[1]\,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(0),
      O => \^st_aa_awtarget_enc_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_11 is
  port (
    push : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    match : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_s1 : in STD_LOGIC;
    \storage_data1_reg[1]\ : in STD_LOGIC;
    ss_wr_awready_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_2\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_11 : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_11;

architecture STRUCTURE of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_11 is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__7_n_0\ : STD_LOGIC;
  signal \^m_aready__1\ : STD_LOGIC;
  signal \^match\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__7\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_1__4\ : label is "soft_lutpair102";
begin
  \m_aready__1\ <= \^m_aready__1\;
  match <= \^match\;
  push <= \^push\;
\gen_arbiter.m_target_hot_i[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => ADDRESS_HIT_0,
      O => \^match\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__7_n_0\,
      Q => p_2_out,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F880000"
    )
        port map (
      I0 => Q(0),
      I1 => ss_wr_awready_0,
      I2 => \^m_aready__1\,
      I3 => Q(1),
      I4 => s_axi_awvalid(0),
      I5 => m_ready_d(0),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^match\,
      O => \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__7_n_0\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808000008000"
    )
        port map (
      I0 => s_axi_wlast(0),
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => s_axi_wvalid(0),
      I3 => \FSM_onehot_state_reg[1]_0\,
      I4 => \FSM_onehot_state_reg[1]_1\,
      I5 => \FSM_onehot_state_reg[1]_2\,
      O => \^m_aready__1\
    );
\storage_data1[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \^match\,
      I1 => p_2_out,
      I2 => Q(0),
      I3 => load_s1,
      I4 => \storage_data1_reg[1]\,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_12 is
  port (
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    push : in STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_12 : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_12;

architecture STRUCTURE of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_12 is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\ : STD_LOGIC;
  signal \storage_data1[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => A(1 downto 0),
      CE => push,
      CLK => aclk,
      D => aa_wm_awgrant_enc(0),
      Q => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\storage_data1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[0]_i_2__0_n_0\,
      I1 => Q(0),
      I2 => \storage_data1_reg[0]\,
      I3 => \m_aready__1\,
      I4 => \storage_data1_reg[0]_0\,
      I5 => \storage_data1_reg[0]_1\,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      I1 => Q(0),
      I2 => aa_wm_awgrant_enc(0),
      O => \storage_data1[0]_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_13 is
  port (
    push : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    wm_mr_wlast_2 : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_primitive_shifter.gen_srls[0].srl_inst_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : in STD_LOGIC;
    p_14_in : in STD_LOGIC;
    \storage_data1_reg[1]\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_gen_axi.write_cs[2]_i_3\ : in STD_LOGIC;
    \storage_data1_reg[1]_0\ : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    \storage_data1_reg[1]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_13 : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_13;

architecture STRUCTURE of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_13 is
  signal \^m_aready__1\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \storage_data1[1]_i_2__4_n_0\ : STD_LOGIC;
  signal \^wm_mr_wlast_2\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  \m_aready__1\ <= \^m_aready__1\;
  push <= \^push\;
  wm_mr_wlast_2 <= \^wm_mr_wlast_2\;
\FSM_onehot_gen_axi.write_cs[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => s_axi_wlast(0),
      I1 => s_axi_wlast(1),
      I2 => \FSM_onehot_gen_axi.write_cs[2]_i_3\,
      I3 => \storage_data1_reg[1]_0\,
      I4 => s_axi_wlast(2),
      O => \^wm_mr_wlast_2\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => A(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => aa_wm_awgrant_enc(0),
      Q => p_2_out,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000400000"
    )
        port map (
      I0 => \^m_aready__1\,
      I1 => Q(1),
      I2 => aa_sa_awvalid,
      I3 => m_ready_d(0),
      I4 => \gen_primitive_shifter.gen_srls[0].srl_inst_0\(0),
      I5 => Q(0),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^wm_mr_wlast_2\,
      I1 => m_avalid,
      I2 => p_14_in,
      I3 => \storage_data1_reg[1]\,
      O => \^m_aready__1\
    );
\storage_data1[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[1]_i_2__4_n_0\,
      I1 => Q(0),
      I2 => \storage_data1_reg[1]_1\,
      I3 => \^m_aready__1\,
      I4 => \storage_data1_reg[1]_2\,
      I5 => \storage_data1_reg[1]_0\,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[1]_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_out,
      I1 => Q(0),
      I2 => aa_wm_awgrant_enc(0),
      O => \storage_data1[1]_i_2__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_8 is
  port (
    push : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    match : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_s1 : in STD_LOGIC;
    \storage_data1_reg[1]\ : in STD_LOGIC;
    ss_wr_awready_1 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_2\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_8 : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_8;

architecture STRUCTURE of mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_8 is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__6_n_0\ : STD_LOGIC;
  signal \^m_aready__1\ : STD_LOGIC;
  signal \^match\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__6\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_1__3\ : label is "soft_lutpair108";
begin
  \m_aready__1\ <= \^m_aready__1\;
  match <= \^match\;
  push <= \^push\;
\gen_arbiter.m_target_hot_i[2]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => ADDRESS_HIT_0,
      O => \^match\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__6_n_0\,
      Q => p_2_out,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F880000"
    )
        port map (
      I0 => Q(0),
      I1 => ss_wr_awready_1,
      I2 => \^m_aready__1\,
      I3 => Q(1),
      I4 => s_axi_awvalid(0),
      I5 => m_ready_d(0),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^match\,
      O => \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__6_n_0\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808000008000"
    )
        port map (
      I0 => s_axi_wlast(0),
      I1 => s_axi_wvalid(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => \FSM_onehot_state_reg[1]_0\,
      I4 => \FSM_onehot_state_reg[1]_1\,
      I5 => \FSM_onehot_state_reg[1]_2\,
      O => \^m_aready__1\
    );
\storage_data1[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \^match\,
      I1 => p_2_out,
      I2 => Q(0),
      I3 => load_s1,
      I4 => \storage_data1_reg[1]\,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1\ is
  port (
    \s_axi_awaddr[95]\ : out STD_LOGIC;
    push : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_s1 : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1\ : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1\ is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\ : STD_LOGIC;
  signal st_aa_awtarget_enc_4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => Q(4 downto 0),
      CE => push,
      CLK => aclk,
      D => st_aa_awtarget_enc_4(0),
      Q => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(0),
      O => st_aa_awtarget_enc_4(0)
    );
\storage_data1[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F022FFFFF0220000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(0),
      I2 => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      I3 => \storage_data1_reg[0]\(0),
      I4 => load_s1,
      I5 => \storage_data1_reg[0]_0\,
      O => \s_axi_awaddr[95]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_19\ is
  port (
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    push : in STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    aclk : in STD_LOGIC;
    \storage_data1_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_s1 : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_19\ : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_19\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_19\ is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => Q(4 downto 0),
      CE => push,
      CLK => aclk,
      D => aa_wm_awgrant_enc(0),
      Q => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      I1 => \storage_data1_reg[0]\(0),
      I2 => aa_wm_awgrant_enc(0),
      I3 => load_s1,
      I4 => \storage_data1_reg[0]_0\,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_20\ is
  port (
    push : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    aclk : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[0]\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]_0\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]_1\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \storage_data1_reg[1]\ : in STD_LOGIC;
    m_axi_wlast_0_sp_1 : in STD_LOGIC;
    load_s1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_20\ : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_20\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_20\ is
  signal \^m_aready__1\ : STD_LOGIC;
  signal \^m_axi_wlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_axi_wlast_0_sn_1 : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  \m_aready__1\ <= \^m_aready__1\;
  m_axi_wlast(0) <= \^m_axi_wlast\(0);
  m_axi_wlast_0_sn_1 <= m_axi_wlast_0_sp_1;
  push <= \^push\;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => Q(4 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => aa_wm_awgrant_enc(0),
      Q => p_2_out,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000400000"
    )
        port map (
      I0 => \^m_aready__1\,
      I1 => \gen_rep[0].fifoaddr_reg[3]\(1),
      I2 => aa_sa_awvalid,
      I3 => m_ready_d(0),
      I4 => \gen_rep[0].fifoaddr_reg[3]_0\(0),
      I5 => \gen_rep[0].fifoaddr_reg[3]\(0),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
        port map (
      I0 => \^m_axi_wlast\(0),
      I1 => m_avalid,
      I2 => m_axi_wready(0),
      I3 => \gen_rep[0].fifoaddr_reg[0]\,
      I4 => \gen_rep[0].fifoaddr_reg[0]_0\,
      I5 => \gen_rep[0].fifoaddr_reg[0]_1\,
      O => \^m_aready__1\
    );
\m_axi_wlast[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B380B08"
    )
        port map (
      I0 => s_axi_wlast(2),
      I1 => \storage_data1_reg[1]\,
      I2 => m_axi_wlast_0_sn_1,
      I3 => s_axi_wlast(0),
      I4 => s_axi_wlast(1),
      O => \^m_axi_wlast\(0)
    );
\storage_data1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_2_out,
      I1 => \gen_rep[0].fifoaddr_reg[3]\(0),
      I2 => aa_wm_awgrant_enc(0),
      I3 => load_s1,
      I4 => \storage_data1_reg[1]\,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_7\ is
  port (
    push : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    match : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    aclk : in STD_LOGIC;
    s_ready_i_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_s1 : in STD_LOGIC;
    \storage_data1_reg[1]\ : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_1 : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC;
    s_ready_i_reg_3 : in STD_LOGIC;
    s_ready_i_reg_4 : in STD_LOGIC;
    \storage_data1_reg[1]_0\ : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    \storage_data1_reg[1]_2\ : in STD_LOGIC;
    \storage_data1_reg[1]_3\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_7\ : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_7\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_7\ is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5_n_0\ : STD_LOGIC;
  signal \^m_aready__1\ : STD_LOGIC;
  signal \^match\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_1__2\ : label is "soft_lutpair117";
begin
  \m_aready__1\ <= \^m_aready__1\;
  match <= \^match\;
  push <= \^push\;
\gen_arbiter.m_target_hot_i[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80008000FFFF8000"
    )
        port map (
      I0 => \storage_data1_reg[1]_0\,
      I1 => \storage_data1_reg[1]_1\,
      I2 => \storage_data1_reg[1]_2\,
      I3 => \storage_data1_reg[1]_3\,
      I4 => s_axi_awaddr(1),
      I5 => s_axi_awaddr(0),
      O => \^match\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => Q(4 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5_n_0\,
      Q => p_2_out,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F880000"
    )
        port map (
      I0 => s_ready_i_reg(0),
      I1 => s_ready_i_reg_0,
      I2 => \^m_aready__1\,
      I3 => s_ready_i_reg(1),
      I4 => s_axi_awvalid(0),
      I5 => m_ready_d(0),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^match\,
      O => \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5_n_0\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808000008000"
    )
        port map (
      I0 => s_axi_wlast(0),
      I1 => s_axi_wvalid(0),
      I2 => s_ready_i_reg_1,
      I3 => s_ready_i_reg_2,
      I4 => s_ready_i_reg_3,
      I5 => s_ready_i_reg_4,
      O => \^m_aready__1\
    );
\storage_data1[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \^match\,
      I1 => p_2_out,
      I2 => s_ready_i_reg(0),
      I3 => load_s1,
      I4 => \storage_data1_reg[1]\,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3\ is
  port (
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    push : in STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3\ : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3\ is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\ : STD_LOGIC;
  signal \storage_data1[0]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 3) => B"00",
      A(2 downto 0) => A(2 downto 0),
      CE => push,
      CLK => aclk,
      D => aa_wm_awgrant_enc(0),
      Q => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\storage_data1[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[0]_i_2_n_0\,
      I1 => Q(0),
      I2 => \storage_data1_reg[0]\,
      I3 => \m_aready__1\,
      I4 => \storage_data1_reg[0]_0\,
      I5 => \storage_data1_reg[0]_1\,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      I1 => Q(0),
      I2 => aa_wm_awgrant_enc(0),
      O => \storage_data1[0]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3_16\ is
  port (
    push : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    s_axi_wlast_2_sp_1 : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_primitive_shifter.gen_srls[0].srl_inst_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[1]_0\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \storage_data1_reg[1]_2\ : in STD_LOGIC;
    \m_axi_wlast[1]\ : in STD_LOGIC;
    \storage_data1_reg[1]_3\ : in STD_LOGIC;
    \storage_data1_reg[1]_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3_16\ : entity is "axi_data_fifo_v2_1_17_ndeep_srl";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3_16\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3_16\ is
  signal \^m_aready__1\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal s_axi_wlast_2_sn_1 : STD_LOGIC;
  signal \storage_data1[1]_i_2__3_n_0\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_wlast[1]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \s_axi_wready[1]_INST_0_i_2\ : label is "soft_lutpair67";
begin
  \m_aready__1\ <= \^m_aready__1\;
  push <= \^push\;
  s_axi_wlast_2_sp_1 <= s_axi_wlast_2_sn_1;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 3) => B"00",
      A(2 downto 0) => A(2 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => aa_wm_awgrant_enc(0),
      Q => p_2_out,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000400000"
    )
        port map (
      I0 => \^m_aready__1\,
      I1 => Q(1),
      I2 => aa_sa_awvalid,
      I3 => m_ready_d(0),
      I4 => \gen_primitive_shifter.gen_srls[0].srl_inst_0\(0),
      I5 => Q(0),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wlast_2_sn_1,
      I1 => \storage_data1_reg[1]_0\,
      I2 => m_axi_wready(0),
      I3 => \storage_data1_reg[1]_1\,
      O => \^m_aready__1\
    );
\m_axi_wlast[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B380B08"
    )
        port map (
      I0 => s_axi_wlast(2),
      I1 => \storage_data1_reg[1]_2\,
      I2 => \m_axi_wlast[1]\,
      I3 => s_axi_wlast(0),
      I4 => s_axi_wlast(1),
      O => s_axi_wlast_2_sn_1
    );
\s_axi_wready[1]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axi_wlast[1]\,
      I1 => \storage_data1_reg[1]_2\,
      O => \storage_data1_reg[0]\
    );
\s_axi_wready[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \storage_data1_reg[1]_2\,
      I1 => \m_axi_wlast[1]\,
      O => \storage_data1_reg[1]\
    );
\storage_data1[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[1]_i_2__3_n_0\,
      I1 => Q(0),
      I2 => \storage_data1_reg[1]_3\,
      I3 => \^m_aready__1\,
      I4 => \storage_data1_reg[1]_4\,
      I5 => \storage_data1_reg[1]_2\,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[1]_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_out,
      I1 => Q(0),
      I2 => aa_wm_awgrant_enc(0),
      O => \storage_data1[1]_i_2__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1\ is
  port (
    p_0_in : out STD_LOGIC;
    mi_bready_2 : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    \s_axi_awaddr[31]\ : out STD_LOGIC;
    \valid_qual_i1__1_0\ : out STD_LOGIC;
    valid_qual_i140_in_1 : out STD_LOGIC;
    valid_qual_i142_in_2 : out STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[1]\ : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \aresetn_d_reg[1]_1\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]_0\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]_1\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]_2\ : in STD_LOGIC;
    \valid_qual_i3__2_7\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0_8 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRESS_HIT_0_9 : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRESS_HIT_0_10 : in STD_LOGIC;
    \gen_arbiter.qual_reg_reg[2]\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc_12\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid_1_sp_1 : in STD_LOGIC;
    \s_axi_bvalid[1]_0\ : in STD_LOGIC;
    \s_axi_bvalid[2]\ : in STD_LOGIC;
    \s_axi_bvalid[2]_0\ : in STD_LOGIC;
    p_24_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_18_axic_register_slice";
end \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1\;

architecture STRUCTURE of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1\ is
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[2]_0\ : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal m_valid_i_i_3_n_0 : STD_LOGIC;
  signal \^mi_bready_2\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal p_0_in60_in : STD_LOGIC;
  signal s_axi_bvalid_1_sn_1 : STD_LOGIC;
  signal \s_ready_i_i_1__2_n_0\ : STD_LOGIC;
  signal st_mr_bid : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^valid_qual_i140_in_1\ : STD_LOGIC;
  signal \^valid_qual_i1__1_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[1]_i_5\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[2]_i_9\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m_valid_i_i_2__0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \s_axi_bvalid[0]_INST_0_i_2\ : label is "soft_lutpair94";
begin
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  \m_payload_i_reg[2]_0\ <= \^m_payload_i_reg[2]_0\;
  mi_bready_2 <= \^mi_bready_2\;
  p_0_in <= \^p_0_in\;
  s_axi_bvalid_1_sn_1 <= s_axi_bvalid_1_sp_1;
  valid_qual_i140_in_1 <= \^valid_qual_i140_in_1\;
  \valid_qual_i1__1_0\ <= \^valid_qual_i1__1_0\;
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[1]_1\,
      Q => \^aresetn_d_reg[1]_0\,
      R => '0'
    );
\gen_arbiter.last_rr_hot[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \^valid_qual_i1__1_0\,
      I1 => \gen_arbiter.grant_hot_reg[2]\,
      I2 => \gen_arbiter.grant_hot_reg[2]_0\,
      I3 => \^valid_qual_i140_in_1\,
      I4 => \gen_arbiter.grant_hot_reg[2]_1\,
      I5 => \gen_arbiter.grant_hot_reg[2]_2\,
      O => \s_axi_awaddr[31]\
    );
\gen_arbiter.qual_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAFCF0CCAA"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[1]_i_4_n_0\,
      I1 => \valid_qual_i3__2_7\(0),
      I2 => \valid_qual_i3__2_7\(1),
      I3 => ADDRESS_HIT_0_8,
      I4 => s_axi_awaddr(1),
      I5 => s_axi_awaddr(0),
      O => \^valid_qual_i1__1_0\
    );
\gen_arbiter.qual_reg[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAFCF0CCAA"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[1]_i_4_n_0\,
      I1 => \valid_qual_i3__2_7\(0),
      I2 => \valid_qual_i3__2_7\(1),
      I3 => ADDRESS_HIT_0_9,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_awaddr(2),
      O => \^valid_qual_i140_in_1\
    );
\gen_arbiter.qual_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8888888FFFFFFFF"
    )
        port map (
      I0 => st_mr_bvalid(2),
      I1 => m_valid_i_i_3_n_0,
      I2 => s_axi_bready(2),
      I3 => \gen_single_thread.active_target_enc\(0),
      I4 => \gen_arbiter.qual_reg[1]_i_5_n_0\,
      I5 => w_issuing_cnt(0),
      O => \gen_arbiter.qual_reg[1]_i_4_n_0\
    );
\gen_arbiter.qual_reg[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_bid(5),
      I1 => st_mr_bid(4),
      O => \gen_arbiter.qual_reg[1]_i_5_n_0\
    );
\gen_arbiter.qual_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0DDDDFFF0FF00"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => \^m_payload_i_reg[2]_0\,
      I2 => \valid_qual_i3__2_7\(0),
      I3 => \valid_qual_i3__2_7\(1),
      I4 => ADDRESS_HIT_0_10,
      I5 => \gen_arbiter.qual_reg_reg[2]\,
      O => valid_qual_i142_in_2
    );
\gen_arbiter.qual_reg[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => st_mr_bvalid(2),
      I1 => \gen_single_thread.active_target_enc\(0),
      I2 => st_mr_bid(4),
      I3 => st_mr_bid(5),
      O => m_valid_i_reg_0
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_24_in(0),
      I1 => st_mr_bvalid(2),
      I2 => st_mr_bid(4),
      O => \m_payload_i[2]_i_1_n_0\
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => p_24_in(1),
      I1 => st_mr_bvalid(2),
      I2 => st_mr_bid(5),
      O => \m_payload_i[3]_i_1_n_0\
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[2]_i_1_n_0\,
      Q => st_mr_bid(4),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[3]_i_1_n_0\,
      Q => st_mr_bid(5),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_21_in,
      I1 => \^mi_bready_2\,
      I2 => p_0_in60_in,
      O => m_valid_i_i_1_n_0
    );
\m_valid_i_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      O => \^p_0_in\
    );
\m_valid_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => m_valid_i_i_3_n_0,
      I1 => s_axi_bready(2),
      I2 => \gen_single_thread.active_target_enc\(0),
      I3 => st_mr_bid(5),
      I4 => st_mr_bid(4),
      O => p_0_in60_in
    );
m_valid_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008888F000"
    )
        port map (
      I0 => s_axi_bready(1),
      I1 => \gen_single_issue.active_target_enc_11\(0),
      I2 => s_axi_bready(0),
      I3 => \gen_single_issue.active_target_enc_12\(0),
      I4 => st_mr_bid(4),
      I5 => st_mr_bid(5),
      O => m_valid_i_i_3_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_1_n_0,
      Q => st_mr_bvalid(2),
      R => \^p_0_in\
    );
\s_axi_bvalid[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \gen_single_issue.active_target_enc_12\(0),
      I1 => st_mr_bvalid(2),
      I2 => st_mr_bid(5),
      I3 => st_mr_bid(4),
      O => \gen_single_issue.active_target_enc_reg[1]\
    );
\s_axi_bvalid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAAAA"
    )
        port map (
      I0 => s_axi_bvalid_1_sn_1,
      I1 => st_mr_bvalid(2),
      I2 => \gen_single_issue.active_target_enc_11\(0),
      I3 => st_mr_bid(5),
      I4 => st_mr_bid(4),
      I5 => \s_axi_bvalid[1]_0\,
      O => s_axi_bvalid(0)
    );
\s_axi_bvalid[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF2000"
    )
        port map (
      I0 => st_mr_bid(5),
      I1 => st_mr_bid(4),
      I2 => \gen_single_thread.active_target_enc\(0),
      I3 => st_mr_bvalid(2),
      I4 => \s_axi_bvalid[2]\,
      I5 => \s_axi_bvalid[2]_0\,
      O => s_axi_bvalid(1)
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFF"
    )
        port map (
      I0 => \^m_payload_i_reg[2]_0\,
      I1 => p_21_in,
      I2 => st_mr_bvalid(2),
      I3 => \^aresetn_d_reg[1]_0\,
      O => \s_ready_i_i_1__2_n_0\
    );
\s_ready_i_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400000000000"
    )
        port map (
      I0 => st_mr_bid(4),
      I1 => st_mr_bid(5),
      I2 => \gen_single_thread.active_target_enc\(0),
      I3 => s_axi_bready(2),
      I4 => m_valid_i_i_3_n_0,
      I5 => st_mr_bvalid(2),
      O => \^m_payload_i_reg[2]_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__2_n_0\,
      Q => \^mi_bready_2\,
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_14\ is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    \valid_qual_i3__2_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    \m_payload_i_reg[2]_1\ : out STD_LOGIC;
    \m_payload_i_reg[2]_2\ : out STD_LOGIC;
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    \m_payload_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    \gen_arbiter.qual_reg[0]_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.qual_reg[0]_i_2_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_single_issue.active_target_enc_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_14\ : entity is "axi_register_slice_v2_1_18_axic_register_slice";
end \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_14\;

architecture STRUCTURE of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_14\ is
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_payload_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[2]_0\ : STD_LOGIC;
  signal \m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal p_0_in59_in : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \s_ready_i_i_2__4_n_0\ : STD_LOGIC;
  signal \s_ready_i_i_4__1_n_0\ : STD_LOGIC;
  signal st_mr_bid : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[2]_i_12\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_valid_i_i_2__1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \s_axi_bvalid[0]_INST_0_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \s_axi_bvalid[1]_INST_0_i_2\ : label is "soft_lutpair70";
begin
  m_axi_bready(0) <= \^m_axi_bready\(0);
  \m_payload_i_reg[2]_0\ <= \^m_payload_i_reg[2]_0\;
  p_1_in <= \^p_1_in\;
\aresetn_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => aresetn,
      O => \aresetn_d_reg[0]_0\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \aresetn_d_reg_n_0_[0]\,
      R => '0'
    );
\gen_arbiter.qual_reg[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => st_mr_bid(2),
      I1 => st_mr_bid(3),
      I2 => \gen_single_thread.active_target_enc\(0),
      I3 => s_axi_bready(2),
      O => \gen_arbiter.qual_reg[2]_i_12_n_0\
    );
\gen_arbiter.qual_reg[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFDFDFD"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[0]_i_2\(1),
      I1 => \gen_arbiter.qual_reg[0]_i_2_0\,
      I2 => \gen_arbiter.qual_reg[0]_i_2\(0),
      I3 => st_mr_bvalid(1),
      I4 => \s_ready_i_i_4__1_n_0\,
      I5 => \gen_arbiter.qual_reg[2]_i_12_n_0\,
      O => \valid_qual_i3__2_0\(0)
    );
\m_payload_i[3]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => st_mr_bvalid(1),
      O => \m_payload_i[3]_i_1__0_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1__0_n_0\,
      D => \m_payload_i_reg[3]_0\(0),
      Q => \m_payload_i_reg[1]_0\(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1__0_n_0\,
      D => \m_payload_i_reg[3]_0\(1),
      Q => \m_payload_i_reg[1]_0\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1__0_n_0\,
      D => \m_payload_i_reg[3]_0\(2),
      Q => st_mr_bid(2),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1__0_n_0\,
      D => \m_payload_i_reg[3]_0\(3),
      Q => st_mr_bid(3),
      R => '0'
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => p_0_in59_in,
      O => \m_valid_i_i_1__0_n_0\
    );
\m_valid_i_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => \s_ready_i_i_4__1_n_0\,
      I1 => s_axi_bready(2),
      I2 => \gen_single_thread.active_target_enc\(0),
      I3 => st_mr_bid(3),
      I4 => st_mr_bid(2),
      O => p_0_in59_in
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__0_n_0\,
      Q => st_mr_bvalid(1),
      R => p_0_in
    );
\s_axi_bvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => st_mr_bvalid(1),
      I1 => \gen_single_issue.active_target_enc_3\(0),
      I2 => st_mr_bid(3),
      I3 => st_mr_bid(2),
      O => m_valid_i_reg_0
    );
\s_axi_bvalid[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => st_mr_bid(2),
      I1 => \gen_single_issue.active_target_enc_2\(0),
      I2 => st_mr_bid(3),
      I3 => st_mr_bvalid(1),
      O => \m_payload_i_reg[2]_1\
    );
\s_axi_bvalid[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => st_mr_bid(2),
      I1 => \gen_single_thread.active_target_enc\(0),
      I2 => st_mr_bvalid(1),
      I3 => st_mr_bid(3),
      O => \m_payload_i_reg[2]_2\
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      O => \^p_1_in\
    );
\s_ready_i_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \^m_payload_i_reg[2]_0\,
      I1 => m_axi_bvalid(0),
      I2 => st_mr_bvalid(1),
      I3 => s_ready_i_reg_0,
      O => \s_ready_i_i_2__4_n_0\
    );
s_ready_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BFFFFFFFFFFF"
    )
        port map (
      I0 => st_mr_bid(2),
      I1 => st_mr_bid(3),
      I2 => \gen_single_thread.active_target_enc\(0),
      I3 => s_axi_bready(2),
      I4 => \s_ready_i_i_4__1_n_0\,
      I5 => st_mr_bvalid(1),
      O => \^m_payload_i_reg[2]_0\
    );
\s_ready_i_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08F008000800080"
    )
        port map (
      I0 => s_axi_bready(1),
      I1 => \gen_single_issue.active_target_enc_2\(0),
      I2 => st_mr_bid(2),
      I3 => st_mr_bid(3),
      I4 => s_axi_bready(0),
      I5 => \gen_single_issue.active_target_enc_3\(0),
      O => \s_ready_i_i_4__1_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_2__4_n_0\,
      Q => \^m_axi_bready\(0),
      R => \^p_1_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_17\ is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \valid_qual_i3__2_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    \m_payload_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    s_axi_bvalid_0_sp_1 : in STD_LOGIC;
    \gen_single_issue.active_target_hot_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_bvalid[0]_0\ : in STD_LOGIC;
    \gen_arbiter.qual_reg[0]_i_2\ : in STD_LOGIC;
    \gen_arbiter.qual_reg[0]_i_2_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_single_issue.active_target_hot_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_17\ : entity is "axi_register_slice_v2_1_18_axic_register_slice";
end \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_17\;

architecture STRUCTURE of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_17\ is
  signal \gen_arbiter.qual_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_payload_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[2]_0\ : STD_LOGIC;
  signal \m_valid_i_i_2__2_n_0\ : STD_LOGIC;
  signal \m_valid_i_i_3__0_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_0_sn_1 : STD_LOGIC;
  signal \s_ready_i_i_1__3_n_0\ : STD_LOGIC;
  signal \s_ready_i_i_3__0_n_0\ : STD_LOGIC;
  signal st_mr_bid : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[2]_i_10\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_valid_i_i_3__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_axi_bvalid[1]_INST_0_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \s_axi_bvalid[2]_INST_0_i_2\ : label is "soft_lutpair46";
begin
  m_axi_bready(0) <= \^m_axi_bready\(0);
  \m_payload_i_reg[2]_0\ <= \^m_payload_i_reg[2]_0\;
  s_axi_bvalid_0_sn_1 <= s_axi_bvalid_0_sp_1;
\gen_arbiter.qual_reg[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => st_mr_bid(0),
      I1 => st_mr_bid(1),
      I2 => \gen_single_thread.active_target_hot\(0),
      I3 => s_axi_bready(2),
      O => \gen_arbiter.qual_reg[2]_i_10_n_0\
    );
\gen_arbiter.qual_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE0FFFF"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[2]_i_10_n_0\,
      I1 => \s_ready_i_i_3__0_n_0\,
      I2 => st_mr_bvalid(0),
      I3 => \gen_arbiter.qual_reg[0]_i_2\,
      I4 => \gen_arbiter.qual_reg[0]_i_2_0\(1),
      I5 => \gen_arbiter.qual_reg[0]_i_2_0\(0),
      O => \valid_qual_i3__2_0\(0)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => st_mr_bvalid(0),
      O => \m_payload_i[3]_i_1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[3]_0\(0),
      Q => \m_payload_i_reg[1]_0\(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[3]_0\(1),
      Q => \m_payload_i_reg[1]_0\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[3]_0\(2),
      Q => st_mr_bid(0),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[3]_0\(3),
      Q => st_mr_bid(1),
      R => '0'
    );
\m_valid_i_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => \m_valid_i_i_3__0_n_0\,
      O => \m_valid_i_i_2__2_n_0\
    );
\m_valid_i_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => \s_ready_i_i_3__0_n_0\,
      I1 => s_axi_bready(2),
      I2 => \gen_single_thread.active_target_hot\(0),
      I3 => st_mr_bid(1),
      I4 => st_mr_bid(0),
      O => \m_valid_i_i_3__0_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_2__2_n_0\,
      Q => st_mr_bvalid(0),
      R => p_0_in
    );
\s_axi_bvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAEA"
    )
        port map (
      I0 => s_axi_bvalid_0_sn_1,
      I1 => \gen_single_issue.active_target_hot_2\(0),
      I2 => st_mr_bvalid(0),
      I3 => st_mr_bid(1),
      I4 => st_mr_bid(0),
      I5 => \s_axi_bvalid[0]_0\,
      O => s_axi_bvalid(0)
    );
\s_axi_bvalid[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => \gen_single_issue.active_target_hot_3\(0),
      I2 => st_mr_bid(1),
      I3 => st_mr_bid(0),
      O => m_valid_i_reg_0
    );
\s_axi_bvalid[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => \gen_single_thread.active_target_hot\(0),
      I2 => st_mr_bid(0),
      I3 => st_mr_bid(1),
      O => m_valid_i_reg_1
    );
\s_ready_i_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \^m_payload_i_reg[2]_0\,
      I1 => m_axi_bvalid(0),
      I2 => st_mr_bvalid(0),
      I3 => s_ready_i_reg_0,
      O => \s_ready_i_i_1__3_n_0\
    );
\s_ready_i_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BFFFFFFFFFFF"
    )
        port map (
      I0 => st_mr_bid(0),
      I1 => st_mr_bid(1),
      I2 => \gen_single_thread.active_target_hot\(0),
      I3 => s_axi_bready(2),
      I4 => \s_ready_i_i_3__0_n_0\,
      I5 => st_mr_bvalid(0),
      O => \^m_payload_i_reg[2]_0\
    );
\s_ready_i_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08F008000800080"
    )
        port map (
      I0 => s_axi_bready(1),
      I1 => \gen_single_issue.active_target_hot_3\(0),
      I2 => st_mr_bid(0),
      I3 => st_mr_bid(1),
      I4 => s_axi_bready(0),
      I5 => \gen_single_issue.active_target_hot_2\(0),
      O => \s_ready_i_i_3__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__3_n_0\,
      Q => \^m_axi_bready\(0),
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2\ is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    \m_payload_i_reg[34]_0\ : out STD_LOGIC;
    \gen_single_issue.accept_cnt_reg\ : out STD_LOGIC;
    valid_qual_i140_in : out STD_LOGIC;
    \valid_qual_i1__1\ : out STD_LOGIC;
    \s_axi_araddr[127]\ : out STD_LOGIC;
    valid_qual_i145_in : out STD_LOGIC;
    valid_qual_i142_in : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    m_valid_i_reg_2 : out STD_LOGIC;
    m_valid_i_reg_3 : out STD_LOGIC;
    m_valid_i_reg_4 : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_15_in : in STD_LOGIC;
    p_17_in : in STD_LOGIC;
    p_20_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.any_grant_reg\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_0\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_1\ : in STD_LOGIC;
    \gen_single_issue.accept_cnt\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_2\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_3\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_4\ : in STD_LOGIC;
    \gen_single_thread.s_avalid_en\ : in STD_LOGIC;
    \valid_qual_i3__2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRESS_HIT_0_3 : in STD_LOGIC;
    ADDRESS_HIT_0_4 : in STD_LOGIC;
    ADDRESS_HIT_0_5 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_single_issue.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_13\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_14\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_18_axic_register_slice";
end \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2\;

architecture STRUCTURE of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2\ is
  signal \gen_arbiter.qual_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_1__1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[34]_0\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal \m_valid_i_i_3__1_n_0\ : STD_LOGIC;
  signal m_valid_i_i_4_n_0 : STD_LOGIC;
  signal rready_carry : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \s_ready_i_i_1__4_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 36 downto 34 );
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal st_mr_rid : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal st_mr_rvalid : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^valid_qual_i140_in\ : STD_LOGIC;
  signal \^valid_qual_i142_in\ : STD_LOGIC;
  signal \^valid_qual_i145_in\ : STD_LOGIC;
  signal \^valid_qual_i1__1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[3]_i_6\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \gen_master_slots[2].r_issuing_cnt[16]_i_2\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_axi_rvalid[0]_INST_0_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_axi_rvalid[1]_INST_0_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s_axi_rvalid[2]_INST_0_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_axi_rvalid[3]_INST_0_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \skid_buffer[35]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \skid_buffer[36]_i_1\ : label is "soft_lutpair99";
begin
  \m_payload_i_reg[34]_0\ <= \^m_payload_i_reg[34]_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  valid_qual_i140_in <= \^valid_qual_i140_in\;
  valid_qual_i142_in <= \^valid_qual_i142_in\;
  valid_qual_i145_in <= \^valid_qual_i145_in\;
  \valid_qual_i1__1\ <= \^valid_qual_i1__1\;
\gen_arbiter.any_grant_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F888888888"
    )
        port map (
      I0 => \^valid_qual_i140_in\,
      I1 => \gen_arbiter.any_grant_reg\,
      I2 => \gen_arbiter.any_grant_reg_0\,
      I3 => \gen_arbiter.any_grant_reg_1\,
      I4 => \gen_single_issue.accept_cnt\,
      I5 => \^valid_qual_i1__1\,
      O => \gen_single_issue.accept_cnt_reg\
    );
\gen_arbiter.any_grant_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08080808080808"
    )
        port map (
      I0 => \^valid_qual_i145_in\,
      I1 => \gen_arbiter.any_grant_reg_2\,
      I2 => \gen_arbiter.any_grant_reg_3\,
      I3 => \^valid_qual_i142_in\,
      I4 => \gen_arbiter.any_grant_reg_4\,
      I5 => \gen_single_thread.s_avalid_en\,
      O => \s_axi_araddr[127]\
    );
\gen_arbiter.last_rr_hot[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFCF0CCAACCAA"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[3]_i_6_n_0\,
      I1 => \valid_qual_i3__2\(0),
      I2 => \valid_qual_i3__2\(1),
      I3 => ADDRESS_HIT_0_5,
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \^valid_qual_i1__1\
    );
\gen_arbiter.qual_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFCF0CCAACCAA"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[3]_i_6_n_0\,
      I1 => \valid_qual_i3__2\(0),
      I2 => \valid_qual_i3__2\(1),
      I3 => ADDRESS_HIT_0_4,
      I4 => s_axi_araddr(2),
      I5 => s_axi_araddr(3),
      O => \^valid_qual_i140_in\
    );
\gen_arbiter.qual_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAFCF0CCAA"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[3]_i_6_n_0\,
      I1 => \valid_qual_i3__2\(0),
      I2 => \valid_qual_i3__2\(1),
      I3 => ADDRESS_HIT_0_3,
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(4),
      O => \^valid_qual_i142_in\
    );
\gen_arbiter.qual_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAFCF0CCAA"
    )
        port map (
      I0 => \gen_arbiter.qual_reg[3]_i_6_n_0\,
      I1 => \valid_qual_i3__2\(0),
      I2 => \valid_qual_i3__2\(1),
      I3 => ADDRESS_HIT_0,
      I4 => s_axi_araddr(7),
      I5 => s_axi_araddr(6),
      O => \^valid_qual_i145_in\
    );
\gen_arbiter.qual_reg[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E000FFFF"
    )
        port map (
      I0 => \m_valid_i_i_3__1_n_0\,
      I1 => m_valid_i_i_4_n_0,
      I2 => \^m_payload_i_reg[34]_0\,
      I3 => st_mr_rvalid(2),
      I4 => r_issuing_cnt(0),
      O => \gen_arbiter.qual_reg[3]_i_6_n_0\
    );
\gen_master_slots[2].r_issuing_cnt[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => st_mr_rvalid(2),
      I1 => \^m_payload_i_reg[34]_0\,
      I2 => m_valid_i_i_4_n_0,
      I3 => \m_valid_i_i_3__1_n_0\,
      O => m_valid_i_reg_0
    );
\m_payload_i[34]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF444B0BBB000"
    )
        port map (
      I0 => rready_carry(11),
      I1 => st_mr_rvalid(2),
      I2 => p_17_in,
      I3 => \^s_ready_i_reg_0\,
      I4 => \skid_buffer_reg_n_0_[34]\,
      I5 => \^m_payload_i_reg[34]_0\,
      O => \m_payload_i[34]_i_1__1_n_0\
    );
\m_payload_i[35]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF444B0BBB000"
    )
        port map (
      I0 => rready_carry(11),
      I1 => st_mr_rvalid(2),
      I2 => p_20_in(0),
      I3 => \^s_ready_i_reg_0\,
      I4 => \skid_buffer_reg_n_0_[35]\,
      I5 => st_mr_rid(4),
      O => \m_payload_i[35]_i_1__1_n_0\
    );
\m_payload_i[36]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF444B0BBB000"
    )
        port map (
      I0 => rready_carry(11),
      I1 => st_mr_rvalid(2),
      I2 => p_20_in(1),
      I3 => \^s_ready_i_reg_0\,
      I4 => \skid_buffer_reg_n_0_[36]\,
      I5 => st_mr_rid(5),
      O => \m_payload_i[36]_i_1__1_n_0\
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[34]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[34]_0\,
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[35]_i_1__1_n_0\,
      Q => st_mr_rid(4),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[36]_i_1__1_n_0\,
      Q => st_mr_rid(5),
      R => '0'
    );
\m_valid_i_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => rready_carry(11),
      I1 => st_mr_rvalid(2),
      I2 => \^s_ready_i_reg_0\,
      I3 => p_15_in,
      O => m_valid_i0
    );
m_valid_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \m_valid_i_i_3__1_n_0\,
      I1 => m_valid_i_i_4_n_0,
      O => rready_carry(11)
    );
\m_valid_i_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88880000F0000000"
    )
        port map (
      I0 => \gen_single_thread.active_target_enc_13\(0),
      I1 => s_axi_rready(3),
      I2 => \gen_single_thread.active_target_enc_14\(0),
      I3 => s_axi_rready(2),
      I4 => st_mr_rid(5),
      I5 => st_mr_rid(4),
      O => \m_valid_i_i_3__1_n_0\
    );
m_valid_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008888F000"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \gen_single_issue.active_target_enc\(0),
      I2 => s_axi_rready(0),
      I3 => \gen_single_issue.active_target_enc_6\(0),
      I4 => st_mr_rid(4),
      I5 => st_mr_rid(5),
      O => m_valid_i_i_4_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => st_mr_rvalid(2),
      R => p_0_in
    );
\s_axi_rvalid[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => st_mr_rvalid(2),
      I1 => \gen_single_issue.active_target_enc_6\(0),
      I2 => st_mr_rid(5),
      I3 => st_mr_rid(4),
      O => m_valid_i_reg_1
    );
\s_axi_rvalid[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => st_mr_rvalid(2),
      I1 => \gen_single_issue.active_target_enc\(0),
      I2 => st_mr_rid(5),
      I3 => st_mr_rid(4),
      O => m_valid_i_reg_2
    );
\s_axi_rvalid[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => st_mr_rvalid(2),
      I1 => \gen_single_thread.active_target_enc_14\(0),
      I2 => st_mr_rid(4),
      I3 => st_mr_rid(5),
      O => m_valid_i_reg_3
    );
\s_axi_rvalid[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => st_mr_rvalid(2),
      I1 => \gen_single_thread.active_target_enc_13\(0),
      I2 => st_mr_rid(5),
      I3 => st_mr_rid(4),
      O => m_valid_i_reg_4
    );
\s_ready_i_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => rready_carry(11),
      I1 => st_mr_rvalid(2),
      I2 => \^s_ready_i_reg_0\,
      I3 => p_15_in,
      O => \s_ready_i_i_1__4_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__4_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => p_1_in
    );
\skid_buffer[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_17_in,
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\skid_buffer[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_20_in(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\skid_buffer[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_20_in(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(34),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(35),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(36),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_15\ is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_payload_i_reg[36]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]_0\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \valid_qual_i3__2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[35]_0\ : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    \m_payload_i_reg[35]_1\ : out STD_LOGIC;
    \m_payload_i_reg[35]_2\ : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[1].r_issuing_cnt_reg[8]\ : in STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[8]_0\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[1].r_issuing_cnt_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_single_issue.active_target_enc_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.accept_cnt_reg[0]\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[0]_0\ : in STD_LOGIC;
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_15\ : entity is "axi_register_slice_v2_1_18_axic_register_slice";
end \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_15\;

architecture STRUCTURE of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_15\ is
  signal \gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[34]_0\ : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal \^m_payload_i_reg[35]_1\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal rready_carry : STD_LOGIC_VECTOR ( 10 to 10 );
  signal \s_ready_i_i_1__5_n_0\ : STD_LOGIC;
  signal \s_ready_i_i_3__2_n_0\ : STD_LOGIC;
  signal s_ready_i_i_4_n_0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal st_mr_rid : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal st_mr_rvalid : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[10]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[11]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_2__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_axi_rvalid[0]_INST_0_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \s_axi_rvalid[1]_INST_0_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \s_axi_rvalid[2]_INST_0_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \s_axi_rvalid[3]_INST_0_i_1\ : label is "soft_lutpair72";
begin
  \m_payload_i_reg[34]_0\(34 downto 0) <= \^m_payload_i_reg[34]_0\(34 downto 0);
  \m_payload_i_reg[35]_1\ <= \^m_payload_i_reg[35]_1\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\gen_arbiter.qual_reg[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80000"
    )
        port map (
      I0 => s_axi_rready(2),
      I1 => \^m_payload_i_reg[35]_1\,
      I2 => \gen_single_thread.accept_cnt_reg[0]\,
      I3 => \gen_single_thread.accept_cnt_reg[0]_0\,
      I4 => s_axi_rlast(0),
      O => p_2_in
    );
\gen_arbiter.qual_reg[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDDDDDDDDDDDDD"
    )
        port map (
      I0 => Q(3),
      I1 => \gen_master_slots[1].r_issuing_cnt_reg[8]\,
      I2 => \s_ready_i_i_3__2_n_0\,
      I3 => s_ready_i_i_4_n_0,
      I4 => \^m_payload_i_reg[34]_0\(34),
      I5 => st_mr_rvalid(1),
      O => \valid_qual_i3__2\(0)
    );
\gen_master_slots[1].r_issuing_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD42"
    )
        port map (
      I0 => \gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => D(1)
    );
\gen_master_slots[1].r_issuing_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E00F0F0F0F0F0F0F"
    )
        port map (
      I0 => Q(3),
      I1 => \gen_master_slots[1].r_issuing_cnt_reg[8]\,
      I2 => \gen_master_slots[1].r_issuing_cnt_reg[8]_0\,
      I3 => st_mr_rvalid(1),
      I4 => \^m_payload_i_reg[34]_0\(34),
      I5 => rready_carry(10),
      O => E(0)
    );
\gen_master_slots[1].r_issuing_cnt[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFD4002"
    )
        port map (
      I0 => \gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      O => D(2)
    );
\gen_master_slots[1].r_issuing_cnt[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFFFFFFFFFFFF"
    )
        port map (
      I0 => rready_carry(10),
      I1 => \^m_payload_i_reg[34]_0\(34),
      I2 => st_mr_rvalid(1),
      I3 => m_axi_arready(0),
      I4 => \gen_master_slots[1].r_issuing_cnt_reg[10]\(0),
      I5 => aa_mi_arvalid,
      O => \gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0\
    );
\gen_master_slots[1].r_issuing_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0\,
      O => D(0)
    );
\m_payload_i[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rready_carry(10),
      I1 => st_mr_rvalid(1),
      O => p_1_in_0
    );
\m_payload_i[36]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(0),
      Q => \^m_payload_i_reg[34]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(10),
      Q => \^m_payload_i_reg[34]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(11),
      Q => \^m_payload_i_reg[34]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(12),
      Q => \^m_payload_i_reg[34]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(13),
      Q => \^m_payload_i_reg[34]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(14),
      Q => \^m_payload_i_reg[34]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(15),
      Q => \^m_payload_i_reg[34]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(16),
      Q => \^m_payload_i_reg[34]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(17),
      Q => \^m_payload_i_reg[34]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(18),
      Q => \^m_payload_i_reg[34]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(19),
      Q => \^m_payload_i_reg[34]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(1),
      Q => \^m_payload_i_reg[34]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(20),
      Q => \^m_payload_i_reg[34]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(21),
      Q => \^m_payload_i_reg[34]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(22),
      Q => \^m_payload_i_reg[34]_0\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(23),
      Q => \^m_payload_i_reg[34]_0\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(24),
      Q => \^m_payload_i_reg[34]_0\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(25),
      Q => \^m_payload_i_reg[34]_0\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(26),
      Q => \^m_payload_i_reg[34]_0\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(27),
      Q => \^m_payload_i_reg[34]_0\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(28),
      Q => \^m_payload_i_reg[34]_0\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(29),
      Q => \^m_payload_i_reg[34]_0\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(2),
      Q => \^m_payload_i_reg[34]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(30),
      Q => \^m_payload_i_reg[34]_0\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(31),
      Q => \^m_payload_i_reg[34]_0\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(32),
      Q => \^m_payload_i_reg[34]_0\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(33),
      Q => \^m_payload_i_reg[34]_0\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(34),
      Q => \^m_payload_i_reg[34]_0\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(35),
      Q => st_mr_rid(2),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(36),
      Q => st_mr_rid(3),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(3),
      Q => \^m_payload_i_reg[34]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(4),
      Q => \^m_payload_i_reg[34]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(5),
      Q => \^m_payload_i_reg[34]_0\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(6),
      Q => \^m_payload_i_reg[34]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(7),
      Q => \^m_payload_i_reg[34]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(8),
      Q => \^m_payload_i_reg[34]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(9),
      Q => \^m_payload_i_reg[34]_0\(9),
      R => '0'
    );
\m_valid_i_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => rready_carry(10),
      I1 => st_mr_rvalid(1),
      I2 => \^s_ready_i_reg_0\,
      I3 => m_axi_rvalid(0),
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => st_mr_rvalid(1),
      R => p_0_in
    );
\s_axi_rvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => st_mr_rid(3),
      I1 => st_mr_rid(2),
      I2 => st_mr_rvalid(1),
      I3 => \gen_single_issue.active_target_enc\(0),
      O => \m_payload_i_reg[36]_0\
    );
\s_axi_rvalid[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => st_mr_rid(2),
      I1 => \gen_single_issue.active_target_enc_1\(0),
      I2 => st_mr_rid(3),
      I3 => st_mr_rvalid(1),
      O => \m_payload_i_reg[35]_0\
    );
\s_axi_rvalid[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => st_mr_rid(2),
      I1 => \gen_single_thread.active_target_enc_5\(0),
      I2 => st_mr_rvalid(1),
      I3 => st_mr_rid(3),
      O => \^m_payload_i_reg[35]_1\
    );
\s_axi_rvalid[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => st_mr_rid(2),
      I1 => \gen_single_thread.active_target_enc_4\(0),
      I2 => st_mr_rvalid(1),
      I3 => st_mr_rid(3),
      O => \m_payload_i_reg[35]_2\
    );
\s_ready_i_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => rready_carry(10),
      I1 => st_mr_rvalid(1),
      I2 => \^s_ready_i_reg_0\,
      I3 => m_axi_rvalid(0),
      O => \s_ready_i_i_1__5_n_0\
    );
s_ready_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_ready_i_i_3__2_n_0\,
      I1 => s_ready_i_i_4_n_0,
      O => rready_carry(10)
    );
\s_ready_i_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88880000F0000000"
    )
        port map (
      I0 => \gen_single_thread.active_target_enc_4\(0),
      I1 => s_axi_rready(3),
      I2 => \gen_single_thread.active_target_enc_5\(0),
      I3 => s_axi_rready(2),
      I4 => st_mr_rid(3),
      I5 => st_mr_rid(2),
      O => \s_ready_i_i_3__2_n_0\
    );
s_ready_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008888F000"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \gen_single_issue.active_target_enc_1\(0),
      I2 => s_axi_rready(0),
      I3 => \gen_single_issue.active_target_enc\(0),
      I4 => st_mr_rid(2),
      I5 => st_mr_rid(3),
      O => s_ready_i_i_4_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__5_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => p_1_in
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_18\ is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_arvalid[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid_qual_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready_0_sp_1 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]_0\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \valid_qual_i3__2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[0]\ : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.accept_cnt\ : in STD_LOGIC;
    \valid_qual_i1__1\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid_0_sp_1 : in STD_LOGIC;
    \gen_single_issue.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rvalid[0]_0\ : in STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : in STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]_0\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_arvalid : in STD_LOGIC;
    \gen_single_issue.active_target_hot_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_1_sp_1 : in STD_LOGIC;
    \s_axi_rvalid[1]_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_hot_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_hot_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_2_sp_1 : in STD_LOGIC;
    \s_axi_rvalid[2]_0\ : in STD_LOGIC;
    \s_axi_rvalid[3]\ : in STD_LOGIC;
    \s_axi_rvalid[3]_0\ : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_single_issue.accept_cnt_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_18\ : entity is "axi_register_slice_v2_1_18_axic_register_slice";
end \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_18\;

architecture STRUCTURE of \mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_18\ is
  signal \gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[34]_0\ : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal m_valid_i0 : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal rready_carry : STD_LOGIC_VECTOR ( 9 to 9 );
  signal s_axi_rready_0_sn_1 : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_rvalid_0_sn_1 : STD_LOGIC;
  signal s_axi_rvalid_1_sn_1 : STD_LOGIC;
  signal s_axi_rvalid_2_sn_1 : STD_LOGIC;
  signal \s_ready_i_i_1__6_n_0\ : STD_LOGIC;
  signal \s_ready_i_i_3__1_n_0\ : STD_LOGIC;
  signal \s_ready_i_i_4__0_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal st_mr_rid : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_rvalid : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^valid_qual_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[3]_i_5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[3]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gen_single_issue.accept_cnt_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair63";
begin
  \m_payload_i_reg[34]_0\(34 downto 0) <= \^m_payload_i_reg[34]_0\(34 downto 0);
  s_axi_rready_0_sp_1 <= s_axi_rready_0_sn_1;
  s_axi_rvalid(2 downto 0) <= \^s_axi_rvalid\(2 downto 0);
  s_axi_rvalid_0_sn_1 <= s_axi_rvalid_0_sp_1;
  s_axi_rvalid_1_sn_1 <= s_axi_rvalid_1_sp_1;
  s_axi_rvalid_2_sn_1 <= s_axi_rvalid_2_sp_1;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  valid_qual_i(0) <= \^valid_qual_i\(0);
\gen_arbiter.last_rr_hot[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => \gen_single_issue.accept_cnt\,
      I2 => \valid_qual_i1__1\,
      O => \^valid_qual_i\(0)
    );
\gen_arbiter.qual_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^valid_qual_i\(0),
      I1 => s_axi_arvalid(0),
      O => \s_axi_arvalid[0]\(0)
    );
\gen_arbiter.qual_reg[2]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => \gen_single_thread.active_target_hot_5\(0),
      I2 => st_mr_rid(0),
      I3 => st_mr_rid(1),
      O => m_valid_i_reg_1
    );
\gen_arbiter.qual_reg[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_rready(3),
      I1 => \^s_axi_rvalid\(2),
      I2 => s_axi_rlast(1),
      O => p_2_in
    );
\gen_arbiter.qual_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDDDDDDDDDDDDD"
    )
        port map (
      I0 => Q(3),
      I1 => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      I2 => \s_ready_i_i_3__1_n_0\,
      I3 => \s_ready_i_i_4__0_n_0\,
      I4 => \^m_payload_i_reg[34]_0\(34),
      I5 => st_mr_rvalid(0),
      O => \valid_qual_i3__2\(0)
    );
\gen_master_slots[0].r_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0\,
      O => D(0)
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD42"
    )
        port map (
      I0 => \gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => D(1)
    );
\gen_master_slots[0].r_issuing_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E00F0F0F0F0F0F0F"
    )
        port map (
      I0 => Q(3),
      I1 => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      I2 => \gen_master_slots[0].r_issuing_cnt_reg[0]_0\,
      I3 => st_mr_rvalid(0),
      I4 => \^m_payload_i_reg[34]_0\(34),
      I5 => rready_carry(9),
      O => E(0)
    );
\gen_master_slots[0].r_issuing_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFD4002"
    )
        port map (
      I0 => \gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      O => D(2)
    );
\gen_master_slots[0].r_issuing_cnt[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFFFFFFFFFFFF"
    )
        port map (
      I0 => rready_carry(9),
      I1 => \^m_payload_i_reg[34]_0\(34),
      I2 => st_mr_rvalid(0),
      I3 => m_axi_arready(0),
      I4 => \gen_master_slots[0].r_issuing_cnt_reg[2]\(0),
      I5 => aa_mi_arvalid,
      O => \gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0\
    );
\gen_single_issue.accept_cnt_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => \gen_single_issue.accept_cnt_reg\(0),
      I2 => \gen_single_issue.accept_cnt\,
      O => \gen_arbiter.s_ready_i_reg[0]\
    );
\gen_single_issue.accept_cnt_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^s_axi_rvalid\(0),
      I2 => s_axi_rlast(0),
      O => s_axi_rready_0_sn_1
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rready_carry(9),
      I1 => st_mr_rvalid(0),
      O => p_1_in_0
    );
\m_payload_i[36]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(0),
      Q => \^m_payload_i_reg[34]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(10),
      Q => \^m_payload_i_reg[34]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(11),
      Q => \^m_payload_i_reg[34]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(12),
      Q => \^m_payload_i_reg[34]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(13),
      Q => \^m_payload_i_reg[34]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(14),
      Q => \^m_payload_i_reg[34]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(15),
      Q => \^m_payload_i_reg[34]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(16),
      Q => \^m_payload_i_reg[34]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(17),
      Q => \^m_payload_i_reg[34]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(18),
      Q => \^m_payload_i_reg[34]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(19),
      Q => \^m_payload_i_reg[34]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(1),
      Q => \^m_payload_i_reg[34]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(20),
      Q => \^m_payload_i_reg[34]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(21),
      Q => \^m_payload_i_reg[34]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(22),
      Q => \^m_payload_i_reg[34]_0\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(23),
      Q => \^m_payload_i_reg[34]_0\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(24),
      Q => \^m_payload_i_reg[34]_0\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(25),
      Q => \^m_payload_i_reg[34]_0\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(26),
      Q => \^m_payload_i_reg[34]_0\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(27),
      Q => \^m_payload_i_reg[34]_0\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(28),
      Q => \^m_payload_i_reg[34]_0\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(29),
      Q => \^m_payload_i_reg[34]_0\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(2),
      Q => \^m_payload_i_reg[34]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(30),
      Q => \^m_payload_i_reg[34]_0\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(31),
      Q => \^m_payload_i_reg[34]_0\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(32),
      Q => \^m_payload_i_reg[34]_0\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(33),
      Q => \^m_payload_i_reg[34]_0\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(34),
      Q => \^m_payload_i_reg[34]_0\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(35),
      Q => st_mr_rid(0),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(36),
      Q => st_mr_rid(1),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(3),
      Q => \^m_payload_i_reg[34]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(4),
      Q => \^m_payload_i_reg[34]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(5),
      Q => \^m_payload_i_reg[34]_0\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(6),
      Q => \^m_payload_i_reg[34]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(7),
      Q => \^m_payload_i_reg[34]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(8),
      Q => \^m_payload_i_reg[34]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(9),
      Q => \^m_payload_i_reg[34]_0\(9),
      R => '0'
    );
\m_valid_i_i_1__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => rready_carry(9),
      I1 => st_mr_rvalid(0),
      I2 => \^s_ready_i_reg_0\,
      I3 => m_axi_rvalid(0),
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => st_mr_rvalid(0),
      R => p_0_in
    );
\s_axi_rvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAEA"
    )
        port map (
      I0 => s_axi_rvalid_0_sn_1,
      I1 => st_mr_rvalid(0),
      I2 => \gen_single_issue.active_target_hot\(0),
      I3 => st_mr_rid(1),
      I4 => st_mr_rid(0),
      I5 => \s_axi_rvalid[0]_0\,
      O => \^s_axi_rvalid\(0)
    );
\s_axi_rvalid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAAAA"
    )
        port map (
      I0 => s_axi_rvalid_1_sn_1,
      I1 => st_mr_rvalid(0),
      I2 => \gen_single_issue.active_target_hot_1\(0),
      I3 => st_mr_rid(1),
      I4 => st_mr_rid(0),
      I5 => \s_axi_rvalid[1]_0\,
      O => m_valid_i_reg_0
    );
\s_axi_rvalid[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAAAA"
    )
        port map (
      I0 => s_axi_rvalid_2_sn_1,
      I1 => st_mr_rvalid(0),
      I2 => \gen_single_thread.active_target_hot_5\(0),
      I3 => st_mr_rid(0),
      I4 => st_mr_rid(1),
      I5 => \s_axi_rvalid[2]_0\,
      O => \^s_axi_rvalid\(1)
    );
\s_axi_rvalid[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => \s_axi_rvalid[3]\,
      I1 => st_mr_rvalid(0),
      I2 => \gen_single_thread.active_target_hot_4\(0),
      I3 => st_mr_rid(1),
      I4 => st_mr_rid(0),
      I5 => \s_axi_rvalid[3]_0\,
      O => \^s_axi_rvalid\(2)
    );
\s_ready_i_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => rready_carry(9),
      I1 => st_mr_rvalid(0),
      I2 => \^s_ready_i_reg_0\,
      I3 => m_axi_rvalid(0),
      O => \s_ready_i_i_1__6_n_0\
    );
\s_ready_i_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_ready_i_i_3__1_n_0\,
      I1 => \s_ready_i_i_4__0_n_0\,
      O => rready_carry(9)
    );
\s_ready_i_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88880000F0000000"
    )
        port map (
      I0 => \gen_single_thread.active_target_hot_4\(0),
      I1 => s_axi_rready(3),
      I2 => \gen_single_thread.active_target_hot_5\(0),
      I3 => s_axi_rready(2),
      I4 => st_mr_rid(1),
      I5 => st_mr_rid(0),
      O => \s_ready_i_i_3__1_n_0\
    );
\s_ready_i_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008888F000"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \gen_single_issue.active_target_hot_1\(0),
      I2 => s_axi_rready(0),
      I3 => \gen_single_issue.active_target_hot\(0),
      I4 => st_mr_rid(0),
      I5 => st_mr_rid(1),
      O => \s_ready_i_i_4__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__6_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => p_1_in
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo is
  port (
    st_aa_awtarget_enc_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    ss_wr_awready_1 : out STD_LOGIC;
    match : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \s_axi_wvalid[1]\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \storage_data1_reg[1]_1\ : out STD_LOGIC;
    \s_axi_wvalid[1]_0\ : out STD_LOGIC;
    \storage_data1_reg[0]_1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_wvalid[0]_INST_0_i_1\ : in STD_LOGIC;
    \m_axi_wvalid[0]_INST_0_i_1_0\ : in STD_LOGIC;
    m_select_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_gen_axi.write_cs[2]_i_5\ : in STD_LOGIC;
    \m_axi_wvalid[1]_INST_0_i_1\ : in STD_LOGIC;
    \m_axi_wvalid[1]_INST_0_i_1_0\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo : entity is "axi_data_fifo_v2_1_17_axic_reg_srl_fifo";
end mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo;

architecture STRUCTURE of mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo is
  signal \FSM_onehot_gen_axi.write_cs[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_1\ : STD_LOGIC;
  signal load_s1 : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__6_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^ss_wr_awready_1\ : STD_LOGIC;
  signal \^st_aa_awtarget_enc_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \storage_data1[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1__4\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2__4\ : label is "soft_lutpair110";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_1__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_2__0\ : label is "soft_lutpair111";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  ss_wr_awready_1 <= \^ss_wr_awready_1\;
  st_aa_awtarget_enc_2(0) <= \^st_aa_awtarget_enc_2\(0);
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
  \storage_data1_reg[1]_0\ <= \^storage_data1_reg[1]_0\;
\FSM_onehot_gen_axi.write_cs[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs[2]_i_8_n_0\,
      I1 => m_select_enc(1),
      I2 => m_select_enc(0),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      I5 => \FSM_onehot_gen_axi.write_cs[2]_i_5\,
      O => \storage_data1_reg[1]_1\
    );
\FSM_onehot_gen_axi.write_cs[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => \^m_valid_i_reg_0\,
      O => \FSM_onehot_gen_axi.write_cs[2]_i_8_n_0\
    );
\FSM_onehot_state[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => p_0_in8_in,
      O => \FSM_onehot_state[0]_i_1__4_n_0\
    );
\FSM_onehot_state[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => fifoaddr(1),
      I4 => \m_aready__1\,
      I5 => \FSM_onehot_state[1]_i_2__0_n_0\,
      O => \FSM_onehot_state[1]_i_1__2_n_0\
    );
\FSM_onehot_state[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_9_in,
      I1 => s_axi_awvalid(0),
      I2 => m_ready_d(0),
      O => \FSM_onehot_state[1]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF04F40FF4040"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3__2_n_0\,
      I2 => \m_aready__1\,
      I3 => m_valid_i_reg_1,
      I4 => p_9_in,
      I5 => p_0_in8_in,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2__4_n_0\
    );
\FSM_onehot_state[3]_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => fifoaddr(0),
      O => \FSM_onehot_state[3]_i_3__2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__4_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__2_n_0\,
      Q => p_0_in8_in,
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__4_n_0\,
      Q => p_9_in,
      S => areset_d1
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => m_select_enc_0(0),
      I1 => m_select_enc_0(1),
      I2 => \^storage_data1_reg[0]_0\,
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^m_valid_i_reg_0\,
      I5 => s_axi_wvalid(0),
      O => \storage_data1_reg[0]_1\
    );
\gen_rep[0].fifoaddr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => push,
      I1 => \gen_rep[0].fifoaddr[1]_i_2__0_n_0\,
      I2 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => \gen_rep[0].fifoaddr[1]_i_2__0_n_0\,
      I2 => push,
      I3 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \m_aready__1\,
      O => \gen_rep[0].fifoaddr[1]_i_2__0_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl
     port map (
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      \gen_rep[0].fifoaddr_reg[1]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      push => push,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      st_aa_awtarget_enc_2(0) => \^st_aa_awtarget_enc_2\(0)
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_8
     port map (
      ADDRESS_HIT_0 => ADDRESS_HIT_0,
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_1\,
      \FSM_onehot_state_reg[1]\ => \^m_valid_i_reg_0\,
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]_0\,
      \FSM_onehot_state_reg[1]_1\ => \^storage_data1_reg[0]_0\,
      \FSM_onehot_state_reg[1]_2\ => \FSM_onehot_state_reg[1]_1\,
      Q(1) => p_0_in8_in,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      load_s1 => load_s1,
      \m_aready__1\ => \m_aready__1\,
      m_ready_d(0) => m_ready_d(0),
      match => match,
      push => push,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_1 => \^ss_wr_awready_1\,
      \storage_data1_reg[1]\ => \^storage_data1_reg[1]_0\
    );
\m_axi_wvalid[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^storage_data1_reg[1]_0\,
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \m_axi_wvalid[0]_INST_0_i_1\,
      I5 => \m_axi_wvalid[0]_INST_0_i_1_0\,
      O => \s_axi_wvalid[1]\
    );
\m_axi_wvalid[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08000000"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^storage_data1_reg[1]_0\,
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \m_axi_wvalid[1]_INST_0_i_1\,
      I5 => \m_axi_wvalid[1]_INST_0_i_1_0\,
      O => \s_axi_wvalid[1]_0\
    );
\m_valid_i_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0E0C0EFF0E0C0E"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_9_in,
      I2 => m_valid_i_reg_1,
      I3 => \m_aready__1\,
      I4 => \FSM_onehot_state[3]_i_3__2_n_0\,
      I5 => push,
      O => \m_valid_i_i_1__6_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__6_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => areset_d1
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFDDDDDDDD"
    )
        port map (
      I0 => \gen_rep[0].fifoaddr[1]_i_2__0_n_0\,
      I1 => areset_d1,
      I2 => push,
      I3 => fifoaddr(1),
      I4 => fifoaddr(0),
      I5 => \^ss_wr_awready_1\,
      O => \s_ready_i_i_1__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__0_n_0\,
      Q => \^ss_wr_awready_1\,
      R => SR(0)
    );
\storage_data1[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^st_aa_awtarget_enc_2\(0),
      I3 => load_s1,
      I4 => \^storage_data1_reg[0]_0\,
      O => \storage_data1[0]_i_1__0_n_0\
    );
\storage_data1[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0FCECA0A0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_9_in,
      I2 => \m_aready__1\,
      I3 => p_0_in8_in,
      I4 => s_axi_awvalid(0),
      I5 => m_ready_d(0),
      O => load_s1
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \storage_data1[0]_i_1__0_n_0\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[1].srl_nx1_n_1\,
      Q => \^storage_data1_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo_9 is
  port (
    st_aa_awtarget_enc_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    ss_wr_awready_0 : out STD_LOGIC;
    match : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \storage_data1_reg[0]_1\ : out STD_LOGIC;
    \storage_data1_reg[1]_1\ : out STD_LOGIC;
    \storage_data1_reg[0]_2\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_select_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_select_enc_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo_9 : entity is "axi_data_fifo_v2_1_17_axic_reg_srl_fifo";
end mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo_9;

architecture STRUCTURE of mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo_9 is
  signal \FSM_onehot_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_1\ : STD_LOGIC;
  signal load_s1 : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__2_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal \^ss_wr_awready_0\ : STD_LOGIC;
  signal \^st_aa_awtarget_enc_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \storage_data1[0]_i_1_n_0\ : STD_LOGIC;
  signal \^storage_data1_reg[0]_1\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1__0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2__0\ : label is "soft_lutpair103";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_2\ : label is "soft_lutpair105";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  ss_wr_awready_0 <= \^ss_wr_awready_0\;
  st_aa_awtarget_enc_0(0) <= \^st_aa_awtarget_enc_0\(0);
  \storage_data1_reg[0]_1\ <= \^storage_data1_reg[0]_1\;
  \storage_data1_reg[1]_0\ <= \^storage_data1_reg[1]_0\;
\FSM_onehot_gen_axi.write_cs[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \^storage_data1_reg[1]_0\,
      I1 => \^storage_data1_reg[0]_1\,
      I2 => m_select_enc_0(0),
      I3 => m_select_enc_0(1),
      I4 => s_axi_wvalid(0),
      I5 => \^m_valid_i_reg_0\,
      O => \storage_data1_reg[1]_1\
    );
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => p_0_in8_in,
      O => \FSM_onehot_state[0]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => fifoaddr(1),
      I4 => \m_aready__1\,
      I5 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_9_in,
      I1 => s_axi_awvalid(0),
      I2 => m_ready_d(0),
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF04F40FF4040"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3__3_n_0\,
      I2 => \m_aready__1\,
      I3 => m_valid_i_reg_1,
      I4 => p_9_in,
      I5 => p_0_in8_in,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => fifoaddr(0),
      O => \FSM_onehot_state[3]_i_3__3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__0_n_0\,
      Q => p_0_in8_in,
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__0_n_0\,
      Q => p_9_in,
      S => areset_d1
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => push,
      I1 => \gen_rep[0].fifoaddr[1]_i_2_n_0\,
      I2 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => \gen_rep[0].fifoaddr[1]_i_2_n_0\,
      I2 => push,
      I3 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \m_aready__1\,
      O => \gen_rep[0].fifoaddr[1]_i_2_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_10
     port map (
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      \gen_rep[0].fifoaddr_reg[1]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      push => push,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      st_aa_awtarget_enc_0(0) => \^st_aa_awtarget_enc_0\(0)
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_11
     port map (
      ADDRESS_HIT_0 => ADDRESS_HIT_0,
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_1\,
      \FSM_onehot_state_reg[1]\ => \^m_valid_i_reg_0\,
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]_0\,
      \FSM_onehot_state_reg[1]_1\ => \^storage_data1_reg[0]_1\,
      \FSM_onehot_state_reg[1]_2\ => \FSM_onehot_state_reg[1]_1\,
      Q(1) => p_0_in8_in,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      load_s1 => load_s1,
      \m_aready__1\ => \m_aready__1\,
      m_ready_d(0) => m_ready_d(0),
      match => match,
      push => push,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_0 => \^ss_wr_awready_0\,
      \storage_data1_reg[1]\ => \^storage_data1_reg[1]_0\
    );
\m_axi_wvalid[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => m_select_enc(0),
      I1 => m_select_enc(1),
      I2 => \^storage_data1_reg[0]_1\,
      I3 => \^storage_data1_reg[1]_0\,
      I4 => s_axi_wvalid(0),
      I5 => \^m_valid_i_reg_0\,
      O => \storage_data1_reg[0]_0\
    );
\m_axi_wvalid[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => m_select_enc_1(0),
      I1 => m_select_enc_1(1),
      I2 => \^storage_data1_reg[0]_1\,
      I3 => \^storage_data1_reg[1]_0\,
      I4 => s_axi_wvalid(0),
      I5 => \^m_valid_i_reg_0\,
      O => \storage_data1_reg[0]_2\
    );
\m_valid_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0E0C0EFF0E0C0E"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_9_in,
      I2 => m_valid_i_reg_1,
      I3 => \m_aready__1\,
      I4 => \FSM_onehot_state[3]_i_3__3_n_0\,
      I5 => push,
      O => \m_valid_i_i_1__2_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__2_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => areset_d1
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFDDDDDDDD"
    )
        port map (
      I0 => \gen_rep[0].fifoaddr[1]_i_2_n_0\,
      I1 => areset_d1,
      I2 => push,
      I3 => fifoaddr(1),
      I4 => fifoaddr(0),
      I5 => \^ss_wr_awready_0\,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^ss_wr_awready_0\,
      R => SR(0)
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^st_aa_awtarget_enc_0\(0),
      I3 => load_s1,
      I4 => \^storage_data1_reg[0]_1\,
      O => \storage_data1[0]_i_1_n_0\
    );
\storage_data1[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0FCECA0A0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_9_in,
      I2 => \m_aready__1\,
      I3 => p_0_in8_in,
      I4 => s_axi_awvalid(0),
      I5 => m_ready_d(0),
      O => load_s1
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \storage_data1[0]_i_1_n_0\,
      Q => \^storage_data1_reg[0]_1\,
      R => '0'
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[1].srl_nx1_n_1\,
      Q => \^storage_data1_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized0\ is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    match : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]_1\ : out STD_LOGIC;
    \s_axi_wvalid[2]\ : out STD_LOGIC;
    \storage_data1_reg[1]_1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_avalid_0 : in STD_LOGIC;
    m_axi_wvalid_0_sp_1 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_wvalid[0]_0\ : in STD_LOGIC;
    \FSM_onehot_gen_axi.write_cs[2]_i_3\ : in STD_LOGIC;
    m_select_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_avalid_1 : in STD_LOGIC;
    m_axi_wvalid_1_sp_1 : in STD_LOGIC;
    \m_axi_wvalid[1]_0\ : in STD_LOGIC;
    m_select_enc_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_1 : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC;
    \storage_data1_reg[1]_2\ : in STD_LOGIC;
    \storage_data1_reg[1]_3\ : in STD_LOGIC;
    \storage_data1_reg[1]_4\ : in STD_LOGIC;
    \storage_data1_reg[1]_5\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized0\ : entity is "axi_data_fifo_v2_1_17_axic_reg_srl_fifo";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized0\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized0\ is
  signal \FSM_onehot_gen_axi.write_cs[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_1\ : STD_LOGIC;
  signal load_s1 : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal m_axi_wvalid_0_sn_1 : STD_LOGIC;
  signal m_axi_wvalid_1_sn_1 : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal m_valid_i_0 : STD_LOGIC;
  signal \m_valid_i_i_1__5_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \^s_axi_wvalid[2]\ : STD_LOGIC;
  signal \s_ready_i_i_1__7_n_0\ : STD_LOGIC;
  signal \s_ready_i_i_2__3_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1__1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[2]_i_1__1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[3]_i_1\ : label is "soft_lutpair119";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[2]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[3]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[4]\ : label is "1";
  attribute SOFT_HLUTNM of \s_ready_i_i_2__3\ : label is "soft_lutpair118";
begin
  SS(0) <= \^ss\(0);
  m_axi_wvalid_0_sn_1 <= m_axi_wvalid_0_sp_1;
  m_axi_wvalid_1_sn_1 <= m_axi_wvalid_1_sp_1;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  \s_axi_wvalid[2]\ <= \^s_axi_wvalid[2]\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
  \storage_data1_reg[1]_0\ <= \^storage_data1_reg[1]_0\;
\FSM_onehot_gen_axi.write_cs[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs[2]_i_3\,
      I1 => \FSM_onehot_gen_axi.write_cs[2]_i_7_n_0\,
      I2 => m_select_enc(0),
      I3 => m_select_enc(1),
      I4 => \^storage_data1_reg[0]_0\,
      I5 => \^storage_data1_reg[1]_0\,
      O => \storage_data1_reg[0]_1\
    );
\FSM_onehot_gen_axi.write_cs[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => \^m_valid_i_reg_0\,
      O => \FSM_onehot_gen_axi.write_cs[2]_i_7_n_0\
    );
\FSM_onehot_state[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => p_0_in8_in,
      O => \FSM_onehot_state[0]_i_1__3_n_0\
    );
\FSM_onehot_state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF404040404040"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3__1_n_0\,
      I2 => \m_aready__1\,
      I3 => m_ready_d(0),
      I4 => s_axi_awvalid(0),
      I5 => p_9_in,
      O => \FSM_onehot_state[1]_i_1__1_n_0\
    );
\FSM_onehot_state[3]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF04F40FF4040"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3__1_n_0\,
      I2 => \m_aready__1\,
      I3 => m_valid_i_reg_1,
      I4 => p_9_in,
      I5 => p_0_in8_in,
      O => m_valid_i_0
    );
\FSM_onehot_state[3]_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2__3_n_0\
    );
\FSM_onehot_state[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => fifoaddr(2),
      I1 => fifoaddr(3),
      I2 => fifoaddr(0),
      I3 => fifoaddr(1),
      I4 => fifoaddr(4),
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[3]_i_3__1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i_0,
      D => \FSM_onehot_state[0]_i_1__3_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i_0,
      D => \FSM_onehot_state[1]_i_1__1_n_0\,
      Q => p_0_in8_in,
      R => \^ss\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i_0,
      D => \FSM_onehot_state[3]_i_2__3_n_0\,
      Q => p_9_in,
      S => \^ss\(0)
    );
areset_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => SR(0),
      Q => \^ss\(0),
      R => '0'
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => m_select_enc_2(1),
      I1 => m_select_enc_2(0),
      I2 => \^storage_data1_reg[0]_0\,
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^m_valid_i_reg_0\,
      I5 => s_axi_wvalid(0),
      O => \storage_data1_reg[1]_1\
    );
\gen_rep[0].fifoaddr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => fifoaddr(0),
      I2 => push,
      O => \gen_rep[0].fifoaddr[1]_i_1__2_n_0\
    );
\gen_rep[0].fifoaddr[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => fifoaddr(2),
      I1 => fifoaddr(0),
      I2 => fifoaddr(1),
      I3 => push,
      O => \gen_rep[0].fifoaddr[2]_i_1__1_n_0\
    );
\gen_rep[0].fifoaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => fifoaddr(2),
      I3 => fifoaddr(1),
      I4 => fifoaddr(3),
      O => \gen_rep[0].fifoaddr[3]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB44FF4000400040"
    )
        port map (
      I0 => m_ready_d(0),
      I1 => s_axi_awvalid(0),
      I2 => p_0_in8_in,
      I3 => \m_aready__1\,
      I4 => \^s_ready_i_reg_0\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => p_0_out
    );
\gen_rep[0].fifoaddr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCC9"
    )
        port map (
      I0 => fifoaddr(3),
      I1 => fifoaddr(4),
      I2 => fifoaddr(1),
      I3 => fifoaddr(2),
      I4 => fifoaddr(0),
      I5 => push,
      O => \gen_rep[0].fifoaddr[4]_i_2_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[0]_i_1__1_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[1]_i_1__2_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[2]_i_1__1_n_0\,
      Q => fifoaddr(2),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[3]_i_1_n_0\,
      Q => fifoaddr(3),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[4]_i_2_n_0\,
      Q => fifoaddr(4),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1\
     port map (
      Q(4 downto 0) => fifoaddr(4 downto 0),
      aclk => aclk,
      load_s1 => load_s1,
      push => push,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      \s_axi_awaddr[95]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      \storage_data1_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \storage_data1_reg[0]_0\ => \^storage_data1_reg[0]_0\
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_7\
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_1\,
      Q(4 downto 0) => fifoaddr(4 downto 0),
      aclk => aclk,
      load_s1 => load_s1,
      \m_aready__1\ => \m_aready__1\,
      m_ready_d(0) => m_ready_d(0),
      match => match,
      push => push,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_ready_i_reg(1) => p_0_in8_in,
      s_ready_i_reg(0) => \FSM_onehot_state_reg_n_0_[0]\,
      s_ready_i_reg_0 => \^s_ready_i_reg_0\,
      s_ready_i_reg_1 => \^m_valid_i_reg_0\,
      s_ready_i_reg_2 => s_ready_i_reg_1,
      s_ready_i_reg_3 => \^storage_data1_reg[0]_0\,
      s_ready_i_reg_4 => s_ready_i_reg_2,
      \storage_data1_reg[1]\ => \^storage_data1_reg[1]_0\,
      \storage_data1_reg[1]_0\ => \storage_data1_reg[1]_2\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_3\,
      \storage_data1_reg[1]_2\ => \storage_data1_reg[1]_4\,
      \storage_data1_reg[1]_3\ => \storage_data1_reg[1]_5\
    );
\m_axi_wvalid[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_valid_i,
      I1 => m_avalid_0,
      O => m_axi_wvalid(0)
    );
\m_axi_wvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEAAAAAAAAA"
    )
        port map (
      I0 => m_axi_wvalid_0_sn_1,
      I1 => s_axi_wvalid(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      I5 => \m_axi_wvalid[0]_0\,
      O => m_valid_i
    );
\m_axi_wvalid[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_wvalid[2]\,
      I1 => m_avalid_1,
      O => m_axi_wvalid(1)
    );
\m_axi_wvalid[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => m_axi_wvalid_1_sn_1,
      I1 => s_axi_wvalid(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      I5 => \m_axi_wvalid[1]_0\,
      O => \^s_axi_wvalid[2]\
    );
\m_valid_i_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0E0C0EFF0E0C0E"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_9_in,
      I2 => m_valid_i_reg_1,
      I3 => \m_aready__1\,
      I4 => \FSM_onehot_state[3]_i_3__1_n_0\,
      I5 => push,
      O => \m_valid_i_i_1__5_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i_0,
      D => \m_valid_i_i_1__5_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => \^ss\(0)
    );
\s_ready_i_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFF8F8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \m_aready__1\,
      I2 => \^ss\(0),
      I3 => push,
      I4 => \s_ready_i_i_2__3_n_0\,
      I5 => \^s_ready_i_reg_0\,
      O => \s_ready_i_i_1__7_n_0\
    );
\s_ready_i_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => fifoaddr(2),
      I1 => fifoaddr(3),
      I2 => fifoaddr(4),
      I3 => fifoaddr(1),
      I4 => fifoaddr(0),
      O => \s_ready_i_i_2__3_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__7_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => SR(0)
    );
\storage_data1[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0FCECA0A0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_9_in,
      I2 => \m_aready__1\,
      I3 => p_0_in8_in,
      I4 => s_axi_awvalid(0),
      I5 => m_ready_d(0),
      O => load_s1
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[1].srl_nx1_n_1\,
      Q => \^storage_data1_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1\ is
  port (
    m_avalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]_1\ : out STD_LOGIC;
    \storage_data1_reg[1]_1\ : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    \storage_data1_reg[0]_2\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[0]_0\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]_1\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]_2\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1\ : entity is "axi_data_fifo_v2_1_17_axic_reg_srl_fifo";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1\ is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal fifoaddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_3\ : STD_LOGIC;
  signal load_s1 : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal \^m_avalid\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__1_n_0\ : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_1__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[2]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[3]_i_1__0\ : label is "soft_lutpair43";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[2]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[3]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[4]\ : label is "1";
  attribute SOFT_HLUTNM of \m_axi_wdata[10]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axi_wdata[13]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axi_wdata[14]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axi_wvalid[0]_INST_0_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_wready[0]_INST_0_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_wready[1]_INST_0_i_4\ : label is "soft_lutpair42";
begin
  m_avalid <= \^m_avalid\;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
  \storage_data1_reg[1]_0\ <= \^storage_data1_reg[1]_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550000"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => aa_sa_awvalid,
      I2 => m_ready_d(0),
      I3 => Q(0),
      I4 => p_0_in6_in,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF404040404040"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[1]_i_2__1_n_0\,
      I2 => \m_aready__1\,
      I3 => \FSM_onehot_state_reg[1]_0\,
      I4 => p_7_in,
      I5 => Q(0),
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => fifoaddr(2),
      I1 => fifoaddr(3),
      I2 => fifoaddr(0),
      I3 => fifoaddr(1),
      I4 => fifoaddr(4),
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_2__1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFAAAAAEAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_1_n_0\,
      I1 => aa_sa_awvalid,
      I2 => m_ready_d(0),
      I3 => Q(0),
      I4 => p_0_in6_in,
      I5 => \m_aready__1\,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0000"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => aa_sa_awvalid,
      I2 => m_ready_d(0),
      I3 => Q(0),
      I4 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => p_0_in6_in,
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2_n_0\,
      Q => p_7_in,
      S => areset_d1
    );
\gen_rep[0].fifoaddr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__2_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => fifoaddr(0),
      I2 => push,
      O => \gen_rep[0].fifoaddr[1]_i_1__1_n_0\
    );
\gen_rep[0].fifoaddr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => fifoaddr(2),
      I1 => fifoaddr(1),
      I2 => push,
      I3 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[2]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => push,
      I2 => fifoaddr(2),
      I3 => fifoaddr(1),
      I4 => fifoaddr(3),
      O => \gen_rep[0].fifoaddr[3]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAA2AA0C000800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => m_ready_d(0),
      I3 => aa_sa_awvalid,
      I4 => p_0_in6_in,
      I5 => \m_aready__1\,
      O => p_0_out
    );
\gen_rep[0].fifoaddr[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE80000001"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => push,
      I2 => fifoaddr(2),
      I3 => fifoaddr(1),
      I4 => fifoaddr(3),
      I5 => fifoaddr(4),
      O => \gen_rep[0].fifoaddr[4]_i_2__0_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[0]_i_1__2_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[1]_i_1__1_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[2]_i_1__0_n_0\,
      Q => fifoaddr(2),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[3]_i_1__0_n_0\,
      Q => fifoaddr(3),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[4]_i_2__0_n_0\,
      Q => fifoaddr(4),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_19\
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q(4 downto 0) => fifoaddr(4 downto 0),
      aa_wm_awgrant_enc(0) => aa_wm_awgrant_enc(0),
      aclk => aclk,
      load_s1 => load_s1,
      push => push,
      \storage_data1_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \storage_data1_reg[0]_0\ => \^storage_data1_reg[0]_0\
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_20\
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_3\,
      Q(4 downto 0) => fifoaddr(4 downto 0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(0) => aa_wm_awgrant_enc(1),
      aclk => aclk,
      \gen_rep[0].fifoaddr_reg[0]\ => \gen_rep[0].fifoaddr_reg[0]_0\,
      \gen_rep[0].fifoaddr_reg[0]_0\ => \gen_rep[0].fifoaddr_reg[0]_1\,
      \gen_rep[0].fifoaddr_reg[0]_1\ => \gen_rep[0].fifoaddr_reg[0]_2\,
      \gen_rep[0].fifoaddr_reg[3]\(1) => p_0_in6_in,
      \gen_rep[0].fifoaddr_reg[3]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \gen_rep[0].fifoaddr_reg[3]_0\(0) => Q(0),
      load_s1 => load_s1,
      \m_aready__1\ => \m_aready__1\,
      m_avalid => \^m_avalid\,
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wlast_0_sp_1 => \^storage_data1_reg[0]_0\,
      m_axi_wready(0) => m_axi_wready(0),
      m_ready_d(0) => m_ready_d(0),
      push => push,
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      \storage_data1_reg[1]\ => \^storage_data1_reg[1]_0\
    );
\m_axi_wdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => s_axi_wdata(32),
      I2 => s_axi_wdata(64),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(0)
    );
\m_axi_wdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => s_axi_wdata(42),
      I2 => s_axi_wdata(74),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(10)
    );
\m_axi_wdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => s_axi_wdata(43),
      I2 => s_axi_wdata(75),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(11)
    );
\m_axi_wdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => s_axi_wdata(44),
      I2 => s_axi_wdata(76),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(12)
    );
\m_axi_wdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => s_axi_wdata(45),
      I2 => s_axi_wdata(77),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(13)
    );
\m_axi_wdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => s_axi_wdata(46),
      I2 => s_axi_wdata(78),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(14)
    );
\m_axi_wdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => s_axi_wdata(47),
      I2 => s_axi_wdata(79),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(15)
    );
\m_axi_wdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => s_axi_wdata(48),
      I2 => s_axi_wdata(80),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(16)
    );
\m_axi_wdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => s_axi_wdata(49),
      I2 => s_axi_wdata(81),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(17)
    );
\m_axi_wdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => s_axi_wdata(50),
      I2 => s_axi_wdata(82),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(18)
    );
\m_axi_wdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => s_axi_wdata(51),
      I2 => s_axi_wdata(83),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(19)
    );
\m_axi_wdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => s_axi_wdata(33),
      I2 => s_axi_wdata(65),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(1)
    );
\m_axi_wdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => s_axi_wdata(52),
      I2 => s_axi_wdata(84),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(20)
    );
\m_axi_wdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => s_axi_wdata(53),
      I2 => s_axi_wdata(85),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(21)
    );
\m_axi_wdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => s_axi_wdata(54),
      I2 => s_axi_wdata(86),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(22)
    );
\m_axi_wdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => s_axi_wdata(55),
      I2 => s_axi_wdata(87),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(23)
    );
\m_axi_wdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => s_axi_wdata(56),
      I2 => s_axi_wdata(88),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(24)
    );
\m_axi_wdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => s_axi_wdata(57),
      I2 => s_axi_wdata(89),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(25)
    );
\m_axi_wdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => s_axi_wdata(58),
      I2 => s_axi_wdata(90),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(26)
    );
\m_axi_wdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => s_axi_wdata(59),
      I2 => s_axi_wdata(91),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(27)
    );
\m_axi_wdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => s_axi_wdata(60),
      I2 => s_axi_wdata(92),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(28)
    );
\m_axi_wdata[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => s_axi_wdata(61),
      I2 => s_axi_wdata(93),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(29)
    );
\m_axi_wdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => s_axi_wdata(34),
      I2 => s_axi_wdata(66),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(2)
    );
\m_axi_wdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => s_axi_wdata(62),
      I2 => s_axi_wdata(94),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(30)
    );
\m_axi_wdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => s_axi_wdata(63),
      I2 => s_axi_wdata(95),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(31)
    );
\m_axi_wdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => s_axi_wdata(35),
      I2 => s_axi_wdata(67),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(3)
    );
\m_axi_wdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => s_axi_wdata(36),
      I2 => s_axi_wdata(68),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(4)
    );
\m_axi_wdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => s_axi_wdata(37),
      I2 => s_axi_wdata(69),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(5)
    );
\m_axi_wdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => s_axi_wdata(38),
      I2 => s_axi_wdata(70),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(6)
    );
\m_axi_wdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => s_axi_wdata(39),
      I2 => s_axi_wdata(71),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(7)
    );
\m_axi_wdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => s_axi_wdata(40),
      I2 => s_axi_wdata(72),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(8)
    );
\m_axi_wdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => s_axi_wdata(41),
      I2 => s_axi_wdata(73),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(9)
    );
\m_axi_wstrb[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => s_axi_wstrb(4),
      I2 => s_axi_wstrb(8),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wstrb(0)
    );
\m_axi_wstrb[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => s_axi_wstrb(5),
      I2 => s_axi_wstrb(9),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wstrb(1)
    );
\m_axi_wstrb[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => s_axi_wstrb(6),
      I2 => s_axi_wstrb(10),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wstrb(2)
    );
\m_axi_wstrb[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => s_axi_wstrb(7),
      I2 => s_axi_wstrb(11),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wstrb(3)
    );
\m_axi_wvalid[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^storage_data1_reg[1]_0\,
      I1 => \^storage_data1_reg[0]_0\,
      O => \storage_data1_reg[1]_1\
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => p_0_in6_in,
      I2 => Q(0),
      I3 => m_ready_d(0),
      I4 => aa_sa_awvalid,
      I5 => \FSM_onehot_state[1]_i_1_n_0\,
      O => \m_valid_i_i_1__1_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__1_n_0\,
      Q => \^m_avalid\,
      R => areset_d1
    );
\s_axi_wready[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^storage_data1_reg[0]_0\,
      I1 => \^storage_data1_reg[1]_0\,
      O => \storage_data1_reg[0]_1\
    );
\s_axi_wready[1]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^storage_data1_reg[0]_0\,
      I1 => \^storage_data1_reg[1]_0\,
      O => \storage_data1_reg[0]_2\
    );
\s_axi_wready[2]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_avalid\,
      I1 => m_axi_wready(0),
      O => m_valid_i_reg_0
    );
\storage_data1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0FCECA0A0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_7_in,
      I2 => \m_aready__1\,
      I3 => p_0_in6_in,
      I4 => Q(0),
      I5 => \FSM_onehot_state_reg[1]_0\,
      O => load_s1
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[1].srl_nx1_n_3\,
      Q => \^storage_data1_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized2\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast_2_sp_1 : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    \storage_data1_reg[1]_1\ : out STD_LOGIC;
    \storage_data1_reg[0]_1\ : out STD_LOGIC;
    m_valid_i_reg_2 : out STD_LOGIC;
    m_valid_i_reg_3 : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_avalid_0 : in STD_LOGIC;
    s_axi_wready_0_sp_1 : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wready[0]_0\ : in STD_LOGIC;
    \s_axi_wready[0]_1\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[1]_2\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_avalid_1 : in STD_LOGIC;
    s_axi_wready_2_sp_1 : in STD_LOGIC;
    \s_axi_wready[2]_0\ : in STD_LOGIC;
    \s_axi_wready[2]_1\ : in STD_LOGIC;
    m_avalid_2 : in STD_LOGIC;
    s_axi_wready_1_sp_1 : in STD_LOGIC;
    \s_axi_wready[1]_0\ : in STD_LOGIC;
    \s_axi_wready[1]_1\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[2]_0\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[1]_3\ : in STD_LOGIC;
    \storage_data1_reg[1]_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized2\ : entity is "axi_data_fifo_v2_1_17_axic_reg_srl_fifo";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized2\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized2\ is
  signal \FSM_onehot_state[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4__3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[2]_i_4_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_5\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__4_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal push : STD_LOGIC;
  signal s_axi_wlast_2_sn_1 : STD_LOGIC;
  signal \s_axi_wready[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_wready[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_wready[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_wready[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal s_axi_wready_0_sn_1 : STD_LOGIC;
  signal s_axi_wready_1_sn_1 : STD_LOGIC;
  signal s_axi_wready_2_sn_1 : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  signal \^storage_data1_reg[0]_1\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_1\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[2]\ : label is "1";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_wdata[46]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \s_axi_wready[0]_INST_0_i_2\ : label is "soft_lutpair68";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_axi_wlast_2_sp_1 <= s_axi_wlast_2_sn_1;
  s_axi_wready_0_sn_1 <= s_axi_wready_0_sp_1;
  s_axi_wready_1_sn_1 <= s_axi_wready_1_sp_1;
  s_axi_wready_2_sn_1 <= s_axi_wready_2_sp_1;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
  \storage_data1_reg[0]_1\ <= \^storage_data1_reg[0]_1\;
  \storage_data1_reg[1]_0\ <= \^storage_data1_reg[1]_0\;
  \storage_data1_reg[1]_1\ <= \^storage_data1_reg[1]_1\;
\FSM_onehot_state[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550000"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => aa_sa_awvalid,
      I2 => m_ready_d(0),
      I3 => \FSM_onehot_state_reg[0]_0\(0),
      I4 => \^q\(1),
      O => \FSM_onehot_state[0]_i_1__2_n_0\
    );
\FSM_onehot_state[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8A00"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \FSM_onehot_state_reg[1]_0\,
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[3]_i_4__3_n_0\,
      I4 => \FSM_onehot_state_reg[1]_1\,
      O => \FSM_onehot_state[1]_i_1__4_n_0\
    );
\FSM_onehot_state[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA4AE8484"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \^q\(1),
      I2 => \FSM_onehot_state_reg[1]_0\,
      I3 => \^q\(0),
      I4 => \FSM_onehot_state[3]_i_4__3_n_0\,
      I5 => \FSM_onehot_state_reg[1]_1\,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => aa_sa_awvalid,
      I2 => m_ready_d(0),
      I3 => \FSM_onehot_state_reg[0]_0\(0),
      I4 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2__2_n_0\
    );
\FSM_onehot_state[3]_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => fifoaddr(0),
      I2 => fifoaddr(2),
      I3 => \^q\(0),
      O => \FSM_onehot_state[3]_i_4__3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__2_n_0\,
      Q => \^q\(0),
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__4_n_0\,
      Q => \^q\(1),
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__2_n_0\,
      Q => \^q\(2),
      S => areset_d1
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => m_axi_wready(0),
      I2 => \s_axi_wready[0]_0\,
      I3 => s_axi_wready_0_sn_1,
      I4 => \^storage_data1_reg[1]_0\,
      I5 => \^storage_data1_reg[0]_0\,
      O => m_valid_i_reg_1
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => m_axi_wready(0),
      I2 => \s_axi_wready[2]_0\,
      I3 => s_axi_wready_2_sn_1,
      I4 => \^storage_data1_reg[0]_0\,
      I5 => \^storage_data1_reg[1]_0\,
      O => m_valid_i_reg_2
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => m_axi_wready(0),
      I2 => \s_axi_wready[1]_0\,
      I3 => s_axi_wready_1_sn_1,
      I4 => \^storage_data1_reg[1]_0\,
      I5 => \^storage_data1_reg[0]_0\,
      O => m_valid_i_reg_3
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A55FBFFA5AA0400"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \^q\(1),
      I2 => \gen_rep[0].fifoaddr_reg[0]_0\,
      I3 => \FSM_onehot_state_reg[0]_0\(0),
      I4 => \^q\(0),
      I5 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFF5F740400A08"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => \^q\(0),
      I2 => \FSM_onehot_state_reg[1]_0\,
      I3 => \^q\(1),
      I4 => \m_aready__1\,
      I5 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7FFE80808001"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => fifoaddr(0),
      I2 => \gen_rep[0].fifoaddr[2]_i_2_n_0\,
      I3 => \gen_rep[0].fifoaddr_reg[2]_0\,
      I4 => \gen_rep[0].fifoaddr[2]_i_4_n_0\,
      I5 => fifoaddr(2),
      O => \gen_rep[0].fifoaddr[2]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \storage_data1_reg[1]_2\,
      I2 => m_axi_wready(0),
      I3 => \^m_valid_i_reg_0\,
      I4 => s_axi_wlast_2_sn_1,
      O => \gen_rep[0].fifoaddr[2]_i_2_n_0\
    );
\gen_rep[0].fifoaddr[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444444444444"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_0\,
      I1 => \^q\(1),
      I2 => \storage_data1_reg[1]_2\,
      I3 => m_axi_wready(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => s_axi_wlast_2_sn_1,
      O => \gen_rep[0].fifoaddr[2]_i_4_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[2]_i_1_n_0\,
      Q => fifoaddr(2),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3\
     port map (
      A(2 downto 0) => fifoaddr(2 downto 0),
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q(0) => \^q\(0),
      aa_wm_awgrant_enc(0) => aa_wm_awgrant_enc(0),
      aclk => aclk,
      \m_aready__1\ => \m_aready__1\,
      push => push,
      \storage_data1_reg[0]\ => \storage_data1_reg[1]_3\,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[1]_4\,
      \storage_data1_reg[0]_1\ => \^storage_data1_reg[0]_0\
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3_16\
     port map (
      A(2 downto 0) => fifoaddr(2 downto 0),
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_5\,
      Q(1 downto 0) => \^q\(1 downto 0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(0) => aa_wm_awgrant_enc(1),
      aclk => aclk,
      \gen_primitive_shifter.gen_srls[0].srl_inst_0\(0) => \FSM_onehot_state_reg[0]_0\(0),
      \m_aready__1\ => \m_aready__1\,
      \m_axi_wlast[1]\ => \^storage_data1_reg[0]_0\,
      m_axi_wready(0) => m_axi_wready(0),
      m_ready_d(0) => m_ready_d(0),
      push => push,
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wlast_2_sp_1 => s_axi_wlast_2_sn_1,
      \storage_data1_reg[0]\ => \^storage_data1_reg[0]_1\,
      \storage_data1_reg[1]\ => \^storage_data1_reg[1]_1\,
      \storage_data1_reg[1]_0\ => \^m_valid_i_reg_0\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_2\,
      \storage_data1_reg[1]_2\ => \^storage_data1_reg[1]_0\,
      \storage_data1_reg[1]_3\ => \storage_data1_reg[1]_3\,
      \storage_data1_reg[1]_4\ => \storage_data1_reg[1]_4\
    );
\m_axi_wdata[32]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => s_axi_wdata(32),
      I2 => s_axi_wdata(64),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(0)
    );
\m_axi_wdata[33]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => s_axi_wdata(33),
      I2 => s_axi_wdata(65),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(1)
    );
\m_axi_wdata[34]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => s_axi_wdata(34),
      I2 => s_axi_wdata(66),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(2)
    );
\m_axi_wdata[35]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => s_axi_wdata(35),
      I2 => s_axi_wdata(67),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(3)
    );
\m_axi_wdata[36]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => s_axi_wdata(36),
      I2 => s_axi_wdata(68),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(4)
    );
\m_axi_wdata[37]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => s_axi_wdata(37),
      I2 => s_axi_wdata(69),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(5)
    );
\m_axi_wdata[38]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => s_axi_wdata(38),
      I2 => s_axi_wdata(70),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(6)
    );
\m_axi_wdata[39]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => s_axi_wdata(39),
      I2 => s_axi_wdata(71),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(7)
    );
\m_axi_wdata[40]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => s_axi_wdata(40),
      I2 => s_axi_wdata(72),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(8)
    );
\m_axi_wdata[41]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => s_axi_wdata(41),
      I2 => s_axi_wdata(73),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(9)
    );
\m_axi_wdata[42]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => s_axi_wdata(42),
      I2 => s_axi_wdata(74),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(10)
    );
\m_axi_wdata[43]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => s_axi_wdata(43),
      I2 => s_axi_wdata(75),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(11)
    );
\m_axi_wdata[44]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => s_axi_wdata(44),
      I2 => s_axi_wdata(76),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(12)
    );
\m_axi_wdata[45]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => s_axi_wdata(45),
      I2 => s_axi_wdata(77),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(13)
    );
\m_axi_wdata[46]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => s_axi_wdata(46),
      I2 => s_axi_wdata(78),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(14)
    );
\m_axi_wdata[47]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => s_axi_wdata(47),
      I2 => s_axi_wdata(79),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(15)
    );
\m_axi_wdata[48]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => s_axi_wdata(48),
      I2 => s_axi_wdata(80),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(16)
    );
\m_axi_wdata[49]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => s_axi_wdata(49),
      I2 => s_axi_wdata(81),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(17)
    );
\m_axi_wdata[50]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => s_axi_wdata(50),
      I2 => s_axi_wdata(82),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(18)
    );
\m_axi_wdata[51]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => s_axi_wdata(51),
      I2 => s_axi_wdata(83),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(19)
    );
\m_axi_wdata[52]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => s_axi_wdata(52),
      I2 => s_axi_wdata(84),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(20)
    );
\m_axi_wdata[53]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => s_axi_wdata(53),
      I2 => s_axi_wdata(85),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(21)
    );
\m_axi_wdata[54]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => s_axi_wdata(54),
      I2 => s_axi_wdata(86),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(22)
    );
\m_axi_wdata[55]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => s_axi_wdata(55),
      I2 => s_axi_wdata(87),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(23)
    );
\m_axi_wdata[56]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => s_axi_wdata(56),
      I2 => s_axi_wdata(88),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(24)
    );
\m_axi_wdata[57]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => s_axi_wdata(57),
      I2 => s_axi_wdata(89),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(25)
    );
\m_axi_wdata[58]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => s_axi_wdata(58),
      I2 => s_axi_wdata(90),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(26)
    );
\m_axi_wdata[59]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => s_axi_wdata(59),
      I2 => s_axi_wdata(91),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(27)
    );
\m_axi_wdata[60]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => s_axi_wdata(60),
      I2 => s_axi_wdata(92),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(28)
    );
\m_axi_wdata[61]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => s_axi_wdata(61),
      I2 => s_axi_wdata(93),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(29)
    );
\m_axi_wdata[62]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => s_axi_wdata(62),
      I2 => s_axi_wdata(94),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(30)
    );
\m_axi_wdata[63]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => s_axi_wdata(63),
      I2 => s_axi_wdata(95),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wdata(31)
    );
\m_axi_wstrb[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => s_axi_wstrb(4),
      I2 => s_axi_wstrb(8),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wstrb(0)
    );
\m_axi_wstrb[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => s_axi_wstrb(5),
      I2 => s_axi_wstrb(9),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wstrb(1)
    );
\m_axi_wstrb[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => s_axi_wstrb(6),
      I2 => s_axi_wstrb(10),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wstrb(2)
    );
\m_axi_wstrb[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => s_axi_wstrb(7),
      I2 => s_axi_wstrb(11),
      I3 => \^storage_data1_reg[1]_0\,
      I4 => \^storage_data1_reg[0]_0\,
      O => m_axi_wstrb(3)
    );
\m_valid_i_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEEEAEAAFFAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_1\,
      I1 => \FSM_onehot_state[3]_i_4__3_n_0\,
      I2 => \^q\(0),
      I3 => \FSM_onehot_state_reg[1]_0\,
      I4 => \^q\(1),
      I5 => \m_aready__1\,
      O => \m_valid_i_i_1__4_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__4_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => areset_d1
    );
\s_axi_wready[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_axi_wready[0]_INST_0_i_1_n_0\,
      I1 => m_avalid_0,
      O => s_axi_wready(0)
    );
\s_axi_wready[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \s_axi_wready[0]_INST_0_i_2_n_0\,
      I1 => s_axi_wready_0_sn_1,
      I2 => m_axi_wready(0),
      I3 => \^m_valid_i_reg_0\,
      I4 => \s_axi_wready[0]_0\,
      I5 => \s_axi_wready[0]_1\,
      O => \s_axi_wready[0]_INST_0_i_1_n_0\
    );
\s_axi_wready[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^storage_data1_reg[0]_0\,
      I1 => \^storage_data1_reg[1]_0\,
      O => \s_axi_wready[0]_INST_0_i_2_n_0\
    );
\s_axi_wready[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_axi_wready[1]_INST_0_i_1_n_0\,
      I1 => m_avalid_2,
      O => s_axi_wready(1)
    );
\s_axi_wready[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \^storage_data1_reg[0]_1\,
      I1 => s_axi_wready_1_sn_1,
      I2 => m_axi_wready(0),
      I3 => \^m_valid_i_reg_0\,
      I4 => \s_axi_wready[1]_0\,
      I5 => \s_axi_wready[1]_1\,
      O => \s_axi_wready[1]_INST_0_i_1_n_0\
    );
\s_axi_wready[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_axi_wready[2]_INST_0_i_1_n_0\,
      I1 => m_avalid_1,
      O => s_axi_wready(2)
    );
\s_axi_wready[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \^storage_data1_reg[1]_1\,
      I1 => s_axi_wready_2_sn_1,
      I2 => m_axi_wready(0),
      I3 => \^m_valid_i_reg_0\,
      I4 => \s_axi_wready[2]_0\,
      I5 => \s_axi_wready[2]_1\,
      O => \s_axi_wready[2]_INST_0_i_1_n_0\
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[1].srl_nx1_n_5\,
      Q => \^storage_data1_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized3\ is
  port (
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \storage_data1_reg[1]_1\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_gen_axi.write_cs_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]_1\ : out STD_LOGIC;
    \storage_data1_reg[1]_2\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \s_axi_wready[0]_INST_0_i_1\ : in STD_LOGIC;
    \s_axi_wready[0]_INST_0_i_1_0\ : in STD_LOGIC;
    \s_axi_wready[0]_INST_0_i_1_1\ : in STD_LOGIC;
    \FSM_onehot_gen_axi.write_cs_reg[2]\ : in STD_LOGIC;
    \storage_data1_reg[1]_3\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_14_in : in STD_LOGIC;
    \s_axi_wready[2]_INST_0_i_1\ : in STD_LOGIC;
    \s_axi_wready[2]_INST_0_i_1_0\ : in STD_LOGIC;
    \s_axi_wready[1]_INST_0_i_1\ : in STD_LOGIC;
    \s_axi_wready[1]_INST_0_i_1_0\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_rep[0].fifoaddr_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[1]_4\ : in STD_LOGIC;
    \storage_data1_reg[1]_5\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized3\ : entity is "axi_data_fifo_v2_1_17_axic_reg_srl_fifo";
end \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized3\;

architecture STRUCTURE of \mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized3\ is
  signal \FSM_onehot_state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_3\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal m_avalid : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__3_n_0\ : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_axi_wready[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_1\ : STD_LOGIC;
  signal wm_mr_wlast_2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_axi.write_cs[2]_i_3\ : label is "soft_lutpair92";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute SOFT_HLUTNM of \s_axi_wready[2]_INST_0_i_4\ : label is "soft_lutpair92";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
  \storage_data1_reg[1]_1\ <= \^storage_data1_reg[1]_1\;
\FSM_onehot_gen_axi.write_cs[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => wm_mr_wlast_2,
      I1 => \FSM_onehot_gen_axi.write_cs_reg[2]\,
      I2 => m_avalid,
      I3 => \storage_data1_reg[1]_3\,
      O => \FSM_onehot_gen_axi.write_cs_reg[1]\
    );
\FSM_onehot_state[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550000"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => aa_sa_awvalid,
      I2 => m_ready_d(0),
      I3 => \FSM_onehot_state_reg[0]_0\(0),
      I4 => \^q\(0),
      O => \FSM_onehot_state[0]_i_1__1_n_0\
    );
\FSM_onehot_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0FFA020"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[3]_i_3__0_n_0\,
      I3 => \FSM_onehot_state_reg[1]_0\,
      I4 => \^q\(1),
      O => \FSM_onehot_state[1]_i_1__3_n_0\
    );
\FSM_onehot_state[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88FFFFAA884E44"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state[3]_i_3__0_n_0\,
      I4 => \FSM_onehot_state_reg[1]_0\,
      I5 => \^q\(1),
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0000"
    )
        port map (
      I0 => \^q\(0),
      I1 => aa_sa_awvalid,
      I2 => m_ready_d(0),
      I3 => \FSM_onehot_state_reg[0]_0\(0),
      I4 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2__1_n_0\
    );
\FSM_onehot_state[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => fifoaddr(0),
      O => \FSM_onehot_state[3]_i_3__0_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__3_n_0\,
      Q => \^q\(0),
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__1_n_0\,
      Q => \^q\(1),
      S => areset_d1
    );
\gen_rep[0].fifoaddr[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A55FBFFA5AA0400"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \^q\(0),
      I2 => \gen_rep[0].fifoaddr_reg[0]_0\,
      I3 => \FSM_onehot_state_reg[0]_0\(0),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFF5F740400A08"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg[1]_0\,
      I3 => \^q\(0),
      I4 => \m_aready__1\,
      I5 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_12
     port map (
      A(1 downto 0) => fifoaddr(1 downto 0),
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aa_wm_awgrant_enc(0) => aa_wm_awgrant_enc(0),
      aclk => aclk,
      \m_aready__1\ => \m_aready__1\,
      push => push,
      \storage_data1_reg[0]\ => \storage_data1_reg[1]_4\,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[1]_5\,
      \storage_data1_reg[0]_1\ => \^storage_data1_reg[0]_0\
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_13
     port map (
      A(1 downto 0) => fifoaddr(1 downto 0),
      \FSM_onehot_gen_axi.write_cs[2]_i_3\ => \^storage_data1_reg[0]_0\,
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_3\,
      Q(1) => \^q\(0),
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(0) => aa_wm_awgrant_enc(1),
      aclk => aclk,
      \gen_primitive_shifter.gen_srls[0].srl_inst_0\(0) => \FSM_onehot_state_reg[0]_0\(0),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => m_avalid,
      m_ready_d(0) => m_ready_d(0),
      p_14_in => p_14_in,
      push => push,
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      \storage_data1_reg[1]\ => \storage_data1_reg[1]_3\,
      \storage_data1_reg[1]_0\ => \^storage_data1_reg[1]_1\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_4\,
      \storage_data1_reg[1]_2\ => \storage_data1_reg[1]_5\,
      wm_mr_wlast_2 => wm_mr_wlast_2
    );
\m_valid_i_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2F2E2F233332222"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state_reg[1]_0\,
      I2 => \FSM_onehot_state[3]_i_3__0_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^q\(0),
      I5 => \m_aready__1\,
      O => \m_valid_i_i_1__3_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__3_n_0\,
      Q => m_avalid,
      R => areset_d1
    );
\s_axi_wready[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202FF000000"
    )
        port map (
      I0 => \s_axi_wready[2]_INST_0_i_4_n_0\,
      I1 => \^storage_data1_reg[1]_1\,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => \s_axi_wready[0]_INST_0_i_1\,
      I4 => \s_axi_wready[0]_INST_0_i_1_0\,
      I5 => \s_axi_wready[0]_INST_0_i_1_1\,
      O => \storage_data1_reg[1]_0\
    );
\s_axi_wready[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202020FF000000"
    )
        port map (
      I0 => \s_axi_wready[2]_INST_0_i_4_n_0\,
      I1 => \^storage_data1_reg[1]_1\,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => \s_axi_wready[1]_INST_0_i_1\,
      I4 => \s_axi_wready[0]_INST_0_i_1_0\,
      I5 => \s_axi_wready[1]_INST_0_i_1_0\,
      O => \storage_data1_reg[1]_2\
    );
\s_axi_wready[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202020FF000000"
    )
        port map (
      I0 => \s_axi_wready[2]_INST_0_i_4_n_0\,
      I1 => \^storage_data1_reg[0]_0\,
      I2 => \^storage_data1_reg[1]_1\,
      I3 => \s_axi_wready[2]_INST_0_i_1\,
      I4 => \s_axi_wready[0]_INST_0_i_1_0\,
      I5 => \s_axi_wready[2]_INST_0_i_1_0\,
      O => \storage_data1_reg[0]_1\
    );
\s_axi_wready[2]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_avalid,
      I1 => p_14_in,
      O => \s_axi_wready[2]_INST_0_i_4_n_0\
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[1].srl_nx1_n_3\,
      Q => \^storage_data1_reg[1]_1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg : out STD_LOGIC;
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_arvalid[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid_qual_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready_0_sp_1 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \valid_qual_i3__2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \valid_qual_i3__2_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    m_valid_i_reg_2 : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[0]\ : out STD_LOGIC;
    \m_payload_i_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.accept_cnt\ : in STD_LOGIC;
    \valid_qual_i1__1\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid_0_sp_1 : in STD_LOGIC;
    \gen_single_issue.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rvalid[0]_0\ : in STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : in STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]_0\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_arvalid : in STD_LOGIC;
    \gen_single_issue.active_target_hot_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid_0_sp_1 : in STD_LOGIC;
    \gen_single_issue.active_target_hot_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_bvalid[0]_0\ : in STD_LOGIC;
    \gen_arbiter.qual_reg[0]_i_2\ : in STD_LOGIC;
    \gen_arbiter.qual_reg[0]_i_2_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_single_issue.active_target_hot_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_1_sp_1 : in STD_LOGIC;
    \s_axi_rvalid[1]_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_hot_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_hot_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_2_sp_1 : in STD_LOGIC;
    \s_axi_rvalid[2]_0\ : in STD_LOGIC;
    \s_axi_rvalid[3]\ : in STD_LOGIC;
    \s_axi_rvalid[3]_0\ : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_single_issue.accept_cnt_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice : entity is "axi_register_slice_v2_1_18_axi_register_slice";
end mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice;

architecture STRUCTURE of mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice is
  signal s_axi_bvalid_0_sn_1 : STD_LOGIC;
  signal s_axi_rready_0_sn_1 : STD_LOGIC;
  signal s_axi_rvalid_0_sn_1 : STD_LOGIC;
  signal s_axi_rvalid_1_sn_1 : STD_LOGIC;
  signal s_axi_rvalid_2_sn_1 : STD_LOGIC;
begin
  s_axi_bvalid_0_sn_1 <= s_axi_bvalid_0_sp_1;
  s_axi_rready_0_sp_1 <= s_axi_rready_0_sn_1;
  s_axi_rvalid_0_sn_1 <= s_axi_rvalid_0_sp_1;
  s_axi_rvalid_1_sn_1 <= s_axi_rvalid_1_sp_1;
  s_axi_rvalid_2_sn_1 <= s_axi_rvalid_2_sp_1;
\b.b_pipe\: entity work.\mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_17\
     port map (
      aclk => aclk,
      \gen_arbiter.qual_reg[0]_i_2\ => \gen_arbiter.qual_reg[0]_i_2\,
      \gen_arbiter.qual_reg[0]_i_2_0\(1 downto 0) => \gen_arbiter.qual_reg[0]_i_2_0\(1 downto 0),
      \gen_single_issue.active_target_hot_2\(0) => \gen_single_issue.active_target_hot_2\(0),
      \gen_single_issue.active_target_hot_3\(0) => \gen_single_issue.active_target_hot_3\(0),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot\(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[1]_0\(1 downto 0) => \m_payload_i_reg[1]\(1 downto 0),
      \m_payload_i_reg[2]_0\ => \m_payload_i_reg[2]\,
      \m_payload_i_reg[3]_0\(3 downto 0) => \m_payload_i_reg[3]\(3 downto 0),
      m_valid_i_reg_0 => m_valid_i_reg_0,
      m_valid_i_reg_1 => m_valid_i_reg_1,
      p_0_in => p_0_in,
      p_1_in => p_1_in,
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      \s_axi_bvalid[0]_0\ => \s_axi_bvalid[0]_0\,
      s_axi_bvalid_0_sp_1 => s_axi_bvalid_0_sn_1,
      s_ready_i_reg_0 => s_ready_i_reg_0,
      \valid_qual_i3__2_0\(0) => \valid_qual_i3__2_0\(0)
    );
\r.r_pipe\: entity work.\mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_18\
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      \gen_arbiter.s_ready_i_reg[0]\ => \gen_arbiter.s_ready_i_reg[0]\,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      \gen_master_slots[0].r_issuing_cnt_reg[0]_0\ => \gen_master_slots[0].r_issuing_cnt_reg[0]_0\,
      \gen_master_slots[0].r_issuing_cnt_reg[2]\(0) => \gen_master_slots[0].r_issuing_cnt_reg[2]\(0),
      \gen_single_issue.accept_cnt\ => \gen_single_issue.accept_cnt\,
      \gen_single_issue.accept_cnt_reg\(0) => \gen_single_issue.accept_cnt_reg\(0),
      \gen_single_issue.active_target_hot\(0) => \gen_single_issue.active_target_hot\(0),
      \gen_single_issue.active_target_hot_1\(0) => \gen_single_issue.active_target_hot_1\(0),
      \gen_single_thread.active_target_hot_4\(0) => \gen_single_thread.active_target_hot_4\(0),
      \gen_single_thread.active_target_hot_5\(0) => \gen_single_thread.active_target_hot_5\(0),
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[34]_0\(34 downto 0) => \m_payload_i_reg[34]\(34 downto 0),
      m_valid_i_reg_0 => m_valid_i_reg,
      m_valid_i_reg_1 => m_valid_i_reg_2,
      p_0_in => p_0_in,
      p_1_in => p_1_in,
      p_2_in => p_2_in,
      s_axi_arvalid(0) => s_axi_arvalid(0),
      \s_axi_arvalid[0]\(0) => \s_axi_arvalid[0]\(0),
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(3 downto 0) => s_axi_rready(3 downto 0),
      s_axi_rready_0_sp_1 => s_axi_rready_0_sn_1,
      s_axi_rvalid(2 downto 0) => s_axi_rvalid(2 downto 0),
      \s_axi_rvalid[0]_0\ => \s_axi_rvalid[0]_0\,
      \s_axi_rvalid[1]_0\ => \s_axi_rvalid[1]_0\,
      \s_axi_rvalid[2]_0\ => \s_axi_rvalid[2]_0\,
      \s_axi_rvalid[3]\ => \s_axi_rvalid[3]\,
      \s_axi_rvalid[3]_0\ => \s_axi_rvalid[3]_0\,
      s_axi_rvalid_0_sp_1 => s_axi_rvalid_0_sn_1,
      s_axi_rvalid_1_sp_1 => s_axi_rvalid_1_sn_1,
      s_axi_rvalid_2_sp_1 => s_axi_rvalid_2_sn_1,
      s_ready_i_reg_0 => s_ready_i_reg,
      valid_qual_i(0) => valid_qual_i(0),
      \valid_qual_i1__1\ => \valid_qual_i1__1\,
      \valid_qual_i3__2\(0) => \valid_qual_i3__2\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_1 is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    s_ready_i_reg : out STD_LOGIC;
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_payload_i_reg[36]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \valid_qual_i3__2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \valid_qual_i3__2_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : out STD_LOGIC;
    \m_payload_i_reg[35]\ : out STD_LOGIC;
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    \m_payload_i_reg[2]_1\ : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    \m_payload_i_reg[35]_0\ : out STD_LOGIC;
    \m_payload_i_reg[35]_1\ : out STD_LOGIC;
    \aresetn_d_reg[0]\ : out STD_LOGIC;
    \m_payload_i_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[1].r_issuing_cnt_reg[8]\ : in STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[8]_0\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[1].r_issuing_cnt_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_single_issue.active_target_enc_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.qual_reg[0]_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.qual_reg[0]_i_2_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_single_issue.active_target_enc_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.accept_cnt_reg[0]\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[0]_0\ : in STD_LOGIC;
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \m_payload_i_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_1 : entity is "axi_register_slice_v2_1_18_axi_register_slice";
end mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_1;

architecture STRUCTURE of mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_1 is
  signal \^p_1_in\ : STD_LOGIC;
begin
  p_1_in <= \^p_1_in\;
\b.b_pipe\: entity work.\mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_14\
     port map (
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]_0\ => \aresetn_d_reg[0]\,
      \gen_arbiter.qual_reg[0]_i_2\(1 downto 0) => \gen_arbiter.qual_reg[0]_i_2\(1 downto 0),
      \gen_arbiter.qual_reg[0]_i_2_0\ => \gen_arbiter.qual_reg[0]_i_2_0\,
      \gen_single_issue.active_target_enc_2\(0) => \gen_single_issue.active_target_enc_2\(0),
      \gen_single_issue.active_target_enc_3\(0) => \gen_single_issue.active_target_enc_3\(0),
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc\(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[1]_0\(1 downto 0) => \m_payload_i_reg[1]\(1 downto 0),
      \m_payload_i_reg[2]_0\ => \m_payload_i_reg[2]\,
      \m_payload_i_reg[2]_1\ => \m_payload_i_reg[2]_0\,
      \m_payload_i_reg[2]_2\ => \m_payload_i_reg[2]_1\,
      \m_payload_i_reg[3]_0\(3 downto 0) => \m_payload_i_reg[3]\(3 downto 0),
      m_valid_i_reg_0 => m_valid_i_reg,
      p_0_in => p_0_in,
      p_1_in => \^p_1_in\,
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_ready_i_reg_0 => s_ready_i_reg_0,
      \valid_qual_i3__2_0\(0) => \valid_qual_i3__2_0\(0)
    );
\r.r_pipe\: entity work.\mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_15\
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      \gen_master_slots[1].r_issuing_cnt_reg[10]\(0) => \gen_master_slots[1].r_issuing_cnt_reg[10]\(0),
      \gen_master_slots[1].r_issuing_cnt_reg[8]\ => \gen_master_slots[1].r_issuing_cnt_reg[8]\,
      \gen_master_slots[1].r_issuing_cnt_reg[8]_0\ => \gen_master_slots[1].r_issuing_cnt_reg[8]_0\,
      \gen_single_issue.active_target_enc\(0) => \gen_single_issue.active_target_enc\(0),
      \gen_single_issue.active_target_enc_1\(0) => \gen_single_issue.active_target_enc_1\(0),
      \gen_single_thread.accept_cnt_reg[0]\ => \gen_single_thread.accept_cnt_reg[0]\,
      \gen_single_thread.accept_cnt_reg[0]_0\ => \gen_single_thread.accept_cnt_reg[0]_0\,
      \gen_single_thread.active_target_enc_4\(0) => \gen_single_thread.active_target_enc_4\(0),
      \gen_single_thread.active_target_enc_5\(0) => \gen_single_thread.active_target_enc_5\(0),
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[34]_0\(34 downto 0) => \m_payload_i_reg[34]\(34 downto 0),
      \m_payload_i_reg[35]_0\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[35]_1\ => \m_payload_i_reg[35]_0\,
      \m_payload_i_reg[35]_2\ => \m_payload_i_reg[35]_1\,
      \m_payload_i_reg[36]_0\ => \m_payload_i_reg[36]\,
      p_0_in => p_0_in,
      p_1_in => \^p_1_in\,
      p_2_in => p_2_in,
      s_axi_rlast(0) => s_axi_rlast(0),
      s_axi_rready(3 downto 0) => s_axi_rready(3 downto 0),
      s_ready_i_reg_0 => s_ready_i_reg,
      \valid_qual_i3__2\(0) => \valid_qual_i3__2\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_2 is
  port (
    p_0_in : out STD_LOGIC;
    mi_bready_2 : out STD_LOGIC;
    mi_rready_2 : out STD_LOGIC;
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    st_mr_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.accept_cnt_reg\ : out STD_LOGIC;
    valid_qual_i140_in : out STD_LOGIC;
    \valid_qual_i1__1\ : out STD_LOGIC;
    \s_axi_araddr[127]\ : out STD_LOGIC;
    valid_qual_i145_in : out STD_LOGIC;
    valid_qual_i142_in : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    \s_axi_awaddr[31]\ : out STD_LOGIC;
    \valid_qual_i1__1_0\ : out STD_LOGIC;
    valid_qual_i140_in_1 : out STD_LOGIC;
    valid_qual_i142_in_2 : out STD_LOGIC;
    \gen_single_issue.active_target_enc_reg[1]\ : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg_2 : out STD_LOGIC;
    m_valid_i_reg_3 : out STD_LOGIC;
    m_valid_i_reg_4 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \aresetn_d_reg[1]_0\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_15_in : in STD_LOGIC;
    p_17_in : in STD_LOGIC;
    p_20_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.any_grant_reg\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_0\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_1\ : in STD_LOGIC;
    \gen_single_issue.accept_cnt\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_2\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_3\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_4\ : in STD_LOGIC;
    \gen_single_thread.s_avalid_en\ : in STD_LOGIC;
    \valid_qual_i3__2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRESS_HIT_0_3 : in STD_LOGIC;
    ADDRESS_HIT_0_4 : in STD_LOGIC;
    ADDRESS_HIT_0_5 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_single_issue.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.grant_hot_reg[2]\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]_0\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]_1\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]_2\ : in STD_LOGIC;
    \valid_qual_i3__2_7\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0_8 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRESS_HIT_0_9 : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRESS_HIT_0_10 : in STD_LOGIC;
    \gen_arbiter.qual_reg_reg[2]\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_issue.active_target_enc_12\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid_1_sp_1 : in STD_LOGIC;
    \s_axi_bvalid[1]_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_13\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_bvalid[2]\ : in STD_LOGIC;
    \s_axi_bvalid[2]_0\ : in STD_LOGIC;
    p_24_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_2 : entity is "axi_register_slice_v2_1_18_axi_register_slice";
end mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_2;

architecture STRUCTURE of mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_2 is
  signal \^p_0_in\ : STD_LOGIC;
  signal s_axi_bvalid_1_sn_1 : STD_LOGIC;
begin
  p_0_in <= \^p_0_in\;
  s_axi_bvalid_1_sn_1 <= s_axi_bvalid_1_sp_1;
\b.b_pipe\: entity work.\mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1\
     port map (
      ADDRESS_HIT_0_10 => ADDRESS_HIT_0_10,
      ADDRESS_HIT_0_8 => ADDRESS_HIT_0_8,
      ADDRESS_HIT_0_9 => ADDRESS_HIT_0_9,
      aclk => aclk,
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_1\ => \aresetn_d_reg[1]_0\,
      \gen_arbiter.grant_hot_reg[2]\ => \gen_arbiter.grant_hot_reg[2]\,
      \gen_arbiter.grant_hot_reg[2]_0\ => \gen_arbiter.grant_hot_reg[2]_0\,
      \gen_arbiter.grant_hot_reg[2]_1\ => \gen_arbiter.grant_hot_reg[2]_1\,
      \gen_arbiter.grant_hot_reg[2]_2\ => \gen_arbiter.grant_hot_reg[2]_2\,
      \gen_arbiter.qual_reg_reg[2]\ => \gen_arbiter.qual_reg_reg[2]\,
      \gen_single_issue.active_target_enc_11\(0) => \gen_single_issue.active_target_enc_11\(0),
      \gen_single_issue.active_target_enc_12\(0) => \gen_single_issue.active_target_enc_12\(0),
      \gen_single_issue.active_target_enc_reg[1]\ => \gen_single_issue.active_target_enc_reg[1]\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc\(0),
      \m_payload_i_reg[2]_0\ => \m_payload_i_reg[2]\,
      m_valid_i_reg_0 => m_valid_i_reg_2,
      mi_bready_2 => mi_bready_2,
      p_0_in => \^p_0_in\,
      p_1_in => p_1_in,
      p_21_in => p_21_in,
      p_24_in(1 downto 0) => p_24_in(1 downto 0),
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      \s_axi_awaddr[31]\ => \s_axi_awaddr[31]\,
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      \s_axi_bvalid[1]_0\ => \s_axi_bvalid[1]_0\,
      \s_axi_bvalid[2]\ => \s_axi_bvalid[2]\,
      \s_axi_bvalid[2]_0\ => \s_axi_bvalid[2]_0\,
      s_axi_bvalid_1_sp_1 => s_axi_bvalid_1_sn_1,
      valid_qual_i140_in_1 => valid_qual_i140_in_1,
      valid_qual_i142_in_2 => valid_qual_i142_in_2,
      \valid_qual_i1__1_0\ => \valid_qual_i1__1_0\,
      \valid_qual_i3__2_7\(1 downto 0) => \valid_qual_i3__2_7\(1 downto 0),
      w_issuing_cnt(0) => w_issuing_cnt(0)
    );
\r.r_pipe\: entity work.\mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2\
     port map (
      ADDRESS_HIT_0 => ADDRESS_HIT_0,
      ADDRESS_HIT_0_3 => ADDRESS_HIT_0_3,
      ADDRESS_HIT_0_4 => ADDRESS_HIT_0_4,
      ADDRESS_HIT_0_5 => ADDRESS_HIT_0_5,
      aclk => aclk,
      \gen_arbiter.any_grant_reg\ => \gen_arbiter.any_grant_reg\,
      \gen_arbiter.any_grant_reg_0\ => \gen_arbiter.any_grant_reg_0\,
      \gen_arbiter.any_grant_reg_1\ => \gen_arbiter.any_grant_reg_1\,
      \gen_arbiter.any_grant_reg_2\ => \gen_arbiter.any_grant_reg_2\,
      \gen_arbiter.any_grant_reg_3\ => \gen_arbiter.any_grant_reg_3\,
      \gen_arbiter.any_grant_reg_4\ => \gen_arbiter.any_grant_reg_4\,
      \gen_single_issue.accept_cnt\ => \gen_single_issue.accept_cnt\,
      \gen_single_issue.accept_cnt_reg\ => \gen_single_issue.accept_cnt_reg\,
      \gen_single_issue.active_target_enc\(0) => \gen_single_issue.active_target_enc\(0),
      \gen_single_issue.active_target_enc_6\(0) => \gen_single_issue.active_target_enc_6\(0),
      \gen_single_thread.active_target_enc_13\(0) => \gen_single_thread.active_target_enc_13\(0),
      \gen_single_thread.active_target_enc_14\(0) => \gen_single_thread.active_target_enc_14\(0),
      \gen_single_thread.s_avalid_en\ => \gen_single_thread.s_avalid_en\,
      \m_payload_i_reg[34]_0\ => st_mr_rlast(0),
      m_valid_i_reg_0 => m_valid_i_reg,
      m_valid_i_reg_1 => m_valid_i_reg_0,
      m_valid_i_reg_2 => m_valid_i_reg_1,
      m_valid_i_reg_3 => m_valid_i_reg_3,
      m_valid_i_reg_4 => m_valid_i_reg_4,
      p_0_in => \^p_0_in\,
      p_15_in => p_15_in,
      p_17_in => p_17_in,
      p_1_in => p_1_in,
      p_20_in(1 downto 0) => p_20_in(1 downto 0),
      r_issuing_cnt(0) => r_issuing_cnt(0),
      s_axi_araddr(7 downto 0) => s_axi_araddr(7 downto 0),
      \s_axi_araddr[127]\ => \s_axi_araddr[127]\,
      s_axi_rready(3 downto 0) => s_axi_rready(3 downto 0),
      s_ready_i_reg_0 => mi_rready_2,
      valid_qual_i140_in => valid_qual_i140_in,
      valid_qual_i142_in => valid_qual_i142_in,
      valid_qual_i145_in => valid_qual_i145_in,
      \valid_qual_i1__1\ => \valid_qual_i1__1\,
      \valid_qual_i3__2\(1 downto 0) => \valid_qual_i3__2\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux is
  port (
    m_avalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_select_enc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[0]\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]_0\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]_1\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux : entity is "axi_crossbar_v2_1_19_wdata_mux";
end mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux is
begin
\gen_wmux.wmux_aw_fifo\: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1\
     port map (
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]\,
      Q(0) => Q(0),
      SR(0) => SR(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \gen_rep[0].fifoaddr_reg[0]_0\ => \gen_rep[0].fifoaddr_reg[0]\,
      \gen_rep[0].fifoaddr_reg[0]_1\ => \gen_rep[0].fifoaddr_reg[0]_0\,
      \gen_rep[0].fifoaddr_reg[0]_2\ => \gen_rep[0].fifoaddr_reg[0]_1\,
      m_avalid => m_avalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_ready_d(0) => m_ready_d(0),
      m_valid_i_reg_0 => m_valid_i_reg,
      s_axi_wdata(95 downto 0) => s_axi_wdata(95 downto 0),
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wstrb(11 downto 0) => s_axi_wstrb(11 downto 0),
      \storage_data1_reg[0]_0\ => m_select_enc(0),
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]\,
      \storage_data1_reg[0]_2\ => \storage_data1_reg[0]_0\,
      \storage_data1_reg[1]_0\ => m_select_enc(1),
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized0\ is
  port (
    m_avalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_select_enc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast_2_sp_1 : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[0]\ : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_avalid_0 : in STD_LOGIC;
    s_axi_wready_0_sp_1 : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wready[0]_0\ : in STD_LOGIC;
    \s_axi_wready[0]_1\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[1]_0\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_avalid_1 : in STD_LOGIC;
    s_axi_wready_2_sp_1 : in STD_LOGIC;
    \s_axi_wready[2]_0\ : in STD_LOGIC;
    \s_axi_wready[2]_1\ : in STD_LOGIC;
    m_avalid_2 : in STD_LOGIC;
    s_axi_wready_1_sp_1 : in STD_LOGIC;
    \s_axi_wready[1]_0\ : in STD_LOGIC;
    \s_axi_wready[1]_1\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[2]\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    \storage_data1_reg[1]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized0\ : entity is "axi_crossbar_v2_1_19_wdata_mux";
end \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized0\;

architecture STRUCTURE of \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized0\ is
  signal s_axi_wlast_2_sn_1 : STD_LOGIC;
  signal s_axi_wready_0_sn_1 : STD_LOGIC;
  signal s_axi_wready_1_sn_1 : STD_LOGIC;
  signal s_axi_wready_2_sn_1 : STD_LOGIC;
begin
  s_axi_wlast_2_sp_1 <= s_axi_wlast_2_sn_1;
  s_axi_wready_0_sn_1 <= s_axi_wready_0_sp_1;
  s_axi_wready_1_sn_1 <= s_axi_wready_1_sp_1;
  s_axi_wready_2_sn_1 <= s_axi_wready_2_sp_1;
\gen_wmux.wmux_aw_fifo\: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized2\
     port map (
      \FSM_onehot_state_reg[0]_0\(0) => \FSM_onehot_state_reg[0]\(0),
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]\,
      \FSM_onehot_state_reg[1]_1\ => \FSM_onehot_state_reg[1]_0\,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => SR(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \gen_rep[0].fifoaddr_reg[0]_0\ => \gen_rep[0].fifoaddr_reg[0]\,
      \gen_rep[0].fifoaddr_reg[2]_0\ => \gen_rep[0].fifoaddr_reg[2]\,
      m_avalid_0 => m_avalid_0,
      m_avalid_1 => m_avalid_1,
      m_avalid_2 => m_avalid_2,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_ready_d(0) => m_ready_d(0),
      m_valid_i_reg_0 => m_avalid,
      m_valid_i_reg_1 => m_valid_i_reg,
      m_valid_i_reg_2 => m_valid_i_reg_0,
      m_valid_i_reg_3 => m_valid_i_reg_1,
      s_axi_wdata(95 downto 0) => s_axi_wdata(95 downto 0),
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wlast_2_sp_1 => s_axi_wlast_2_sn_1,
      s_axi_wready(2 downto 0) => s_axi_wready(2 downto 0),
      \s_axi_wready[0]_0\ => \s_axi_wready[0]_0\,
      \s_axi_wready[0]_1\ => \s_axi_wready[0]_1\,
      \s_axi_wready[1]_0\ => \s_axi_wready[1]_0\,
      \s_axi_wready[1]_1\ => \s_axi_wready[1]_1\,
      \s_axi_wready[2]_0\ => \s_axi_wready[2]_0\,
      \s_axi_wready[2]_1\ => \s_axi_wready[2]_1\,
      s_axi_wready_0_sp_1 => s_axi_wready_0_sn_1,
      s_axi_wready_1_sp_1 => s_axi_wready_1_sn_1,
      s_axi_wready_2_sp_1 => s_axi_wready_2_sn_1,
      s_axi_wstrb(11 downto 0) => s_axi_wstrb(11 downto 0),
      \storage_data1_reg[0]_0\ => m_select_enc(0),
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]\,
      \storage_data1_reg[1]_0\ => m_select_enc(1),
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]\,
      \storage_data1_reg[1]_2\ => \storage_data1_reg[1]_0\,
      \storage_data1_reg[1]_3\ => \storage_data1_reg[1]_1\,
      \storage_data1_reg[1]_4\ => \storage_data1_reg[1]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized1\ is
  port (
    \storage_data1_reg[1]\ : out STD_LOGIC;
    m_select_enc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_gen_axi.write_cs_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \s_axi_wready[0]_INST_0_i_1\ : in STD_LOGIC;
    \s_axi_wready[0]_INST_0_i_1_0\ : in STD_LOGIC;
    \s_axi_wready[0]_INST_0_i_1_1\ : in STD_LOGIC;
    \FSM_onehot_gen_axi.write_cs_reg[2]\ : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_14_in : in STD_LOGIC;
    \s_axi_wready[2]_INST_0_i_1\ : in STD_LOGIC;
    \s_axi_wready[2]_INST_0_i_1_0\ : in STD_LOGIC;
    \s_axi_wready[1]_INST_0_i_1\ : in STD_LOGIC;
    \s_axi_wready[1]_INST_0_i_1_0\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_rep[0].fifoaddr_reg[0]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[1]_2\ : in STD_LOGIC;
    \storage_data1_reg[1]_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized1\ : entity is "axi_crossbar_v2_1_19_wdata_mux";
end \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized1\;

architecture STRUCTURE of \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized1\ is
begin
\gen_wmux.wmux_aw_fifo\: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized3\
     port map (
      \FSM_onehot_gen_axi.write_cs_reg[1]\ => \FSM_onehot_gen_axi.write_cs_reg[1]\,
      \FSM_onehot_gen_axi.write_cs_reg[2]\ => \FSM_onehot_gen_axi.write_cs_reg[2]\,
      \FSM_onehot_state_reg[0]_0\(0) => \FSM_onehot_state_reg[0]\(0),
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]\,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \gen_rep[0].fifoaddr_reg[0]_0\ => \gen_rep[0].fifoaddr_reg[0]\,
      m_ready_d(0) => m_ready_d(0),
      p_14_in => p_14_in,
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      \s_axi_wready[0]_INST_0_i_1\ => \s_axi_wready[0]_INST_0_i_1\,
      \s_axi_wready[0]_INST_0_i_1_0\ => \s_axi_wready[0]_INST_0_i_1_0\,
      \s_axi_wready[0]_INST_0_i_1_1\ => \s_axi_wready[0]_INST_0_i_1_1\,
      \s_axi_wready[1]_INST_0_i_1\ => \s_axi_wready[1]_INST_0_i_1\,
      \s_axi_wready[1]_INST_0_i_1_0\ => \s_axi_wready[1]_INST_0_i_1_0\,
      \s_axi_wready[2]_INST_0_i_1\ => \s_axi_wready[2]_INST_0_i_1\,
      \s_axi_wready[2]_INST_0_i_1_0\ => \s_axi_wready[2]_INST_0_i_1_0\,
      \storage_data1_reg[0]_0\ => m_select_enc(0),
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]\,
      \storage_data1_reg[1]_0\ => \storage_data1_reg[1]\,
      \storage_data1_reg[1]_1\ => m_select_enc(1),
      \storage_data1_reg[1]_2\ => \storage_data1_reg[1]_0\,
      \storage_data1_reg[1]_3\ => \storage_data1_reg[1]_1\,
      \storage_data1_reg[1]_4\ => \storage_data1_reg[1]_2\,
      \storage_data1_reg[1]_5\ => \storage_data1_reg[1]_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router is
  port (
    st_aa_awtarget_enc_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : out STD_LOGIC;
    ss_wr_awready_0 : out STD_LOGIC;
    match : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[0]\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \storage_data1_reg[0]_1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_select_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_select_enc_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router : entity is "axi_crossbar_v2_1_19_wdata_router";
end mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router is
begin
wrouter_aw_fifo: entity work.mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo_9
     port map (
      ADDRESS_HIT_0 => ADDRESS_HIT_0,
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]\,
      \FSM_onehot_state_reg[1]_1\ => \FSM_onehot_state_reg[1]_0\,
      SR(0) => SR(0),
      aclk => aclk,
      areset_d1 => areset_d1,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc(1 downto 0) => m_select_enc(1 downto 0),
      m_select_enc_0(1 downto 0) => m_select_enc_0(1 downto 0),
      m_select_enc_1(1 downto 0) => m_select_enc_1(1 downto 0),
      m_valid_i_reg_0 => m_avalid,
      m_valid_i_reg_1 => m_valid_i_reg,
      match => match,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      st_aa_awtarget_enc_0(0) => st_aa_awtarget_enc_0(0),
      \storage_data1_reg[0]_0\ => \storage_data1_reg[0]\,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]_0\,
      \storage_data1_reg[0]_2\ => \storage_data1_reg[0]_1\,
      \storage_data1_reg[1]_0\ => \storage_data1_reg[1]\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router_4 is
  port (
    st_aa_awtarget_enc_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : out STD_LOGIC;
    ss_wr_awready_1 : out STD_LOGIC;
    match : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \s_axi_wvalid[1]\ : out STD_LOGIC;
    \storage_data1_reg[0]\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \s_axi_wvalid[1]_0\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_wvalid[0]_INST_0_i_1\ : in STD_LOGIC;
    \m_axi_wvalid[0]_INST_0_i_1_0\ : in STD_LOGIC;
    m_select_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_gen_axi.write_cs[2]_i_5\ : in STD_LOGIC;
    \m_axi_wvalid[1]_INST_0_i_1\ : in STD_LOGIC;
    \m_axi_wvalid[1]_INST_0_i_1_0\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRESS_HIT_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router_4 : entity is "axi_crossbar_v2_1_19_wdata_router";
end mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router_4;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router_4 is
begin
wrouter_aw_fifo: entity work.mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo
     port map (
      ADDRESS_HIT_0 => ADDRESS_HIT_0,
      \FSM_onehot_gen_axi.write_cs[2]_i_5\ => \FSM_onehot_gen_axi.write_cs[2]_i_5\,
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]\,
      \FSM_onehot_state_reg[1]_1\ => \FSM_onehot_state_reg[1]_0\,
      SR(0) => SR(0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \m_axi_wvalid[0]_INST_0_i_1\ => \m_axi_wvalid[0]_INST_0_i_1\,
      \m_axi_wvalid[0]_INST_0_i_1_0\ => \m_axi_wvalid[0]_INST_0_i_1_0\,
      \m_axi_wvalid[1]_INST_0_i_1\ => \m_axi_wvalid[1]_INST_0_i_1\,
      \m_axi_wvalid[1]_INST_0_i_1_0\ => \m_axi_wvalid[1]_INST_0_i_1_0\,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc(1 downto 0) => m_select_enc(1 downto 0),
      m_select_enc_0(1 downto 0) => m_select_enc_0(1 downto 0),
      m_valid_i_reg_0 => m_avalid,
      m_valid_i_reg_1 => m_valid_i_reg,
      match => match,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      \s_axi_wvalid[1]\ => \s_axi_wvalid[1]\,
      \s_axi_wvalid[1]_0\ => \s_axi_wvalid[1]_0\,
      ss_wr_awready_1 => ss_wr_awready_1,
      st_aa_awtarget_enc_2(0) => st_aa_awtarget_enc_2(0),
      \storage_data1_reg[0]_0\ => \storage_data1_reg[0]\,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]_0\,
      \storage_data1_reg[1]_0\ => \storage_data1_reg[1]\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router__parameterized0\ is
  port (
    areset_d1 : out STD_LOGIC;
    m_avalid : out STD_LOGIC;
    ss_wr_awready_2 : out STD_LOGIC;
    match : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[0]\ : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \s_axi_wvalid[2]\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_avalid_0 : in STD_LOGIC;
    m_axi_wvalid_0_sp_1 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_wvalid[0]_0\ : in STD_LOGIC;
    \FSM_onehot_gen_axi.write_cs[2]_i_3\ : in STD_LOGIC;
    m_select_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_avalid_1 : in STD_LOGIC;
    m_axi_wvalid_1_sp_1 : in STD_LOGIC;
    \m_axi_wvalid[1]_0\ : in STD_LOGIC;
    m_select_enc_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    \storage_data1_reg[1]_2\ : in STD_LOGIC;
    \storage_data1_reg[1]_3\ : in STD_LOGIC;
    \storage_data1_reg[1]_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router__parameterized0\ : entity is "axi_crossbar_v2_1_19_wdata_router";
end \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router__parameterized0\;

architecture STRUCTURE of \mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router__parameterized0\ is
  signal m_axi_wvalid_0_sn_1 : STD_LOGIC;
  signal m_axi_wvalid_1_sn_1 : STD_LOGIC;
begin
  m_axi_wvalid_0_sn_1 <= m_axi_wvalid_0_sp_1;
  m_axi_wvalid_1_sn_1 <= m_axi_wvalid_1_sp_1;
wrouter_aw_fifo: entity work.\mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized0\
     port map (
      \FSM_onehot_gen_axi.write_cs[2]_i_3\ => \FSM_onehot_gen_axi.write_cs[2]_i_3\,
      SR(0) => SR(0),
      SS(0) => areset_d1,
      aclk => aclk,
      m_avalid_0 => m_avalid_0,
      m_avalid_1 => m_avalid_1,
      m_axi_wvalid(1 downto 0) => m_axi_wvalid(1 downto 0),
      \m_axi_wvalid[0]_0\ => \m_axi_wvalid[0]_0\,
      \m_axi_wvalid[1]_0\ => \m_axi_wvalid[1]_0\,
      m_axi_wvalid_0_sp_1 => m_axi_wvalid_0_sn_1,
      m_axi_wvalid_1_sp_1 => m_axi_wvalid_1_sn_1,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc(1 downto 0) => m_select_enc(1 downto 0),
      m_select_enc_2(1 downto 0) => m_select_enc_2(1 downto 0),
      m_valid_i_reg_0 => m_avalid,
      m_valid_i_reg_1 => m_valid_i_reg,
      match => match,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      \s_axi_wvalid[2]\ => \s_axi_wvalid[2]\,
      s_ready_i_reg_0 => ss_wr_awready_2,
      s_ready_i_reg_1 => s_ready_i_reg,
      s_ready_i_reg_2 => s_ready_i_reg_0,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[0]\,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]_0\,
      \storage_data1_reg[1]_0\ => \storage_data1_reg[1]\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_0\,
      \storage_data1_reg[1]_2\ => \storage_data1_reg[1]_1\,
      \storage_data1_reg[1]_3\ => \storage_data1_reg[1]_2\,
      \storage_data1_reg[1]_4\ => \storage_data1_reg[1]_3\,
      \storage_data1_reg[1]_5\ => \storage_data1_reg[1]_4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_crossbar is
  port (
    M_AXI_RREADY : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg : out STD_LOGIC;
    \m_payload_i_reg[34]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_arbiter.m_mesg_i_reg[63]\ : out STD_LOGIC_VECTOR ( 58 downto 0 );
    \gen_arbiter.m_mesg_i_reg[63]_0\ : out STD_LOGIC_VECTOR ( 58 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    aclk : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_crossbar : entity is "axi_crossbar_v2_1_19_crossbar";
end mcu_xbar_0_axi_crossbar_v2_1_19_crossbar;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_crossbar is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal aa_mi_artarget_hot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aa_mi_arvalid : STD_LOGIC;
  signal aa_mi_awtarget_hot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aa_sa_awvalid : STD_LOGIC;
  signal aa_wm_awgrant_enc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_arbiter_ar_n_10 : STD_LOGIC;
  signal addr_arbiter_ar_n_100 : STD_LOGIC;
  signal addr_arbiter_ar_n_101 : STD_LOGIC;
  signal addr_arbiter_ar_n_102 : STD_LOGIC;
  signal addr_arbiter_ar_n_103 : STD_LOGIC;
  signal addr_arbiter_ar_n_104 : STD_LOGIC;
  signal addr_arbiter_ar_n_13 : STD_LOGIC;
  signal addr_arbiter_ar_n_14 : STD_LOGIC;
  signal addr_arbiter_ar_n_2 : STD_LOGIC;
  signal addr_arbiter_ar_n_77 : STD_LOGIC;
  signal addr_arbiter_ar_n_78 : STD_LOGIC;
  signal addr_arbiter_ar_n_79 : STD_LOGIC;
  signal addr_arbiter_ar_n_8 : STD_LOGIC;
  signal addr_arbiter_ar_n_80 : STD_LOGIC;
  signal addr_arbiter_ar_n_82 : STD_LOGIC;
  signal addr_arbiter_ar_n_83 : STD_LOGIC;
  signal addr_arbiter_ar_n_84 : STD_LOGIC;
  signal addr_arbiter_ar_n_85 : STD_LOGIC;
  signal addr_arbiter_ar_n_86 : STD_LOGIC;
  signal addr_arbiter_ar_n_87 : STD_LOGIC;
  signal addr_arbiter_ar_n_88 : STD_LOGIC;
  signal addr_arbiter_ar_n_89 : STD_LOGIC;
  signal addr_arbiter_ar_n_92 : STD_LOGIC;
  signal addr_arbiter_ar_n_93 : STD_LOGIC;
  signal addr_arbiter_ar_n_94 : STD_LOGIC;
  signal addr_arbiter_ar_n_95 : STD_LOGIC;
  signal addr_arbiter_ar_n_96 : STD_LOGIC;
  signal addr_arbiter_ar_n_97 : STD_LOGIC;
  signal addr_arbiter_ar_n_98 : STD_LOGIC;
  signal addr_arbiter_ar_n_99 : STD_LOGIC;
  signal addr_arbiter_aw_n_11 : STD_LOGIC;
  signal addr_arbiter_aw_n_15 : STD_LOGIC;
  signal addr_arbiter_aw_n_16 : STD_LOGIC;
  signal addr_arbiter_aw_n_18 : STD_LOGIC;
  signal addr_arbiter_aw_n_19 : STD_LOGIC;
  signal addr_arbiter_aw_n_2 : STD_LOGIC;
  signal addr_arbiter_aw_n_20 : STD_LOGIC;
  signal addr_arbiter_aw_n_21 : STD_LOGIC;
  signal addr_arbiter_aw_n_22 : STD_LOGIC;
  signal addr_arbiter_aw_n_23 : STD_LOGIC;
  signal addr_arbiter_aw_n_24 : STD_LOGIC;
  signal addr_arbiter_aw_n_25 : STD_LOGIC;
  signal addr_arbiter_aw_n_26 : STD_LOGIC;
  signal addr_arbiter_aw_n_3 : STD_LOGIC;
  signal addr_arbiter_aw_n_30 : STD_LOGIC;
  signal addr_arbiter_aw_n_31 : STD_LOGIC;
  signal addr_arbiter_aw_n_32 : STD_LOGIC;
  signal addr_arbiter_aw_n_33 : STD_LOGIC;
  signal addr_arbiter_aw_n_34 : STD_LOGIC;
  signal addr_arbiter_aw_n_35 : STD_LOGIC;
  signal addr_arbiter_aw_n_36 : STD_LOGIC;
  signal addr_arbiter_aw_n_37 : STD_LOGIC;
  signal addr_arbiter_aw_n_38 : STD_LOGIC;
  signal addr_arbiter_aw_n_39 : STD_LOGIC;
  signal addr_arbiter_aw_n_40 : STD_LOGIC;
  signal addr_arbiter_aw_n_41 : STD_LOGIC;
  signal addr_arbiter_aw_n_42 : STD_LOGIC;
  signal addr_arbiter_aw_n_45 : STD_LOGIC;
  signal addr_arbiter_aw_n_46 : STD_LOGIC;
  signal addr_arbiter_aw_n_5 : STD_LOGIC;
  signal addr_arbiter_aw_n_6 : STD_LOGIC;
  signal addr_arbiter_aw_n_7 : STD_LOGIC;
  signal aresetn_d : STD_LOGIC;
  signal \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0\ : STD_LOGIC;
  signal \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_0\ : STD_LOGIC;
  signal \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_1\ : STD_LOGIC;
  signal \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_2\ : STD_LOGIC;
  signal \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_3\ : STD_LOGIC;
  signal \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4\ : STD_LOGIC;
  signal \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5\ : STD_LOGIC;
  signal \^gen_arbiter.m_mesg_i_reg[63]\ : STD_LOGIC_VECTOR ( 58 downto 0 );
  signal \^gen_arbiter.m_mesg_i_reg[63]_0\ : STD_LOGIC_VECTOR ( 58 downto 0 );
  signal \gen_decerr_slave.decerr_slave_inst_n_8\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_40\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_41\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_42\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_43\ : STD_LOGIC;
  signal \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_12\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_2\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_3\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_4\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_52\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_53\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_54\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_56\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_6\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_8\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_44\ : STD_LOGIC;
  signal \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_46\ : STD_LOGIC;
  signal \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_47\ : STD_LOGIC;
  signal \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_48\ : STD_LOGIC;
  signal \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_49\ : STD_LOGIC;
  signal \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_50\ : STD_LOGIC;
  signal \gen_master_slots[1].r_issuing_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_3\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_4\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_46\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_47\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_48\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_49\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_51\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_52\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_53\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_6\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_7\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_8\ : STD_LOGIC;
  signal \gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_0\ : STD_LOGIC;
  signal \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_3\ : STD_LOGIC;
  signal \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6\ : STD_LOGIC;
  signal \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_7\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_10\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_13\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_14\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_18\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_19\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_22\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_23\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_24\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_3\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_4\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_7\ : STD_LOGIC;
  signal \gen_single_issue.accept_cnt\ : STD_LOGIC;
  signal \gen_single_issue.active_target_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_issue.active_target_enc_17\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_issue.active_target_enc_22\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_issue.active_target_enc_24\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_issue.active_target_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_issue.active_target_hot_18\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_issue.active_target_hot_23\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_issue.active_target_hot_25\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.active_target_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.active_target_enc_31\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.active_target_enc_36\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.active_target_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.active_target_hot_30\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.active_target_hot_35\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.s_avalid_en\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_7\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_7\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_8\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_7\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_7\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_8\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_9\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_8\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.wdata_router_w_n_10\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.wdata_router_w_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.wdata_router_w_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.wdata_router_w_n_8\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.wdata_router_w_n_9\ : STD_LOGIC;
  signal \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_7\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_0_in6_in\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_0_in6_in_10\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_7_in\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_7_in_11\ : STD_LOGIC;
  signal m_avalid : STD_LOGIC;
  signal m_avalid_20 : STD_LOGIC;
  signal m_avalid_28 : STD_LOGIC;
  signal m_avalid_34 : STD_LOGIC;
  signal m_avalid_8 : STD_LOGIC;
  signal m_ready_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_26 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_32 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_37 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_select_enc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_select_enc_12 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_select_enc_7 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_valid_i_reg\ : STD_LOGIC;
  signal match : STD_LOGIC;
  signal match_16 : STD_LOGIC;
  signal match_19 : STD_LOGIC;
  signal match_21 : STD_LOGIC;
  signal match_27 : STD_LOGIC;
  signal match_29 : STD_LOGIC;
  signal match_33 : STD_LOGIC;
  signal mi_arready_2 : STD_LOGIC;
  signal mi_awready_2 : STD_LOGIC;
  signal \mi_awready_mux__1\ : STD_LOGIC;
  signal mi_bready_2 : STD_LOGIC;
  signal mi_rready_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_20_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_21_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal p_2_in_9 : STD_LOGIC;
  signal r_issuing_cnt : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal reset : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_rlast\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal splitter_aw_mi_n_0 : STD_LOGIC;
  signal splitter_aw_mi_n_3 : STD_LOGIC;
  signal ss_aa_awready : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ss_wr_awready_0 : STD_LOGIC;
  signal ss_wr_awready_1 : STD_LOGIC;
  signal ss_wr_awready_2 : STD_LOGIC;
  signal st_aa_awtarget_enc_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal st_aa_awtarget_enc_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal st_mr_bmesg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal st_mr_rlast : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal st_mr_rmesg : STD_LOGIC_VECTOR ( 69 downto 0 );
  signal valid_qual_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal valid_qual_i140_in : STD_LOGIC;
  signal valid_qual_i140_in_15 : STD_LOGIC;
  signal valid_qual_i142_in : STD_LOGIC;
  signal valid_qual_i142_in_13 : STD_LOGIC;
  signal valid_qual_i145_in : STD_LOGIC;
  signal \valid_qual_i1__1\ : STD_LOGIC;
  signal \valid_qual_i1__1_14\ : STD_LOGIC;
  signal \valid_qual_i3__2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \valid_qual_i3__2_6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_issuing_cnt : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wrouter_aw_fifo/areset_d1\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gen_arbiter.m_mesg_i_reg[63]\(58 downto 0) <= \^gen_arbiter.m_mesg_i_reg[63]\(58 downto 0);
  \gen_arbiter.m_mesg_i_reg[63]_0\(58 downto 0) <= \^gen_arbiter.m_mesg_i_reg[63]_0\(58 downto 0);
  m_valid_i_reg <= \^m_valid_i_reg\;
  s_axi_awready(2 downto 0) <= \^s_axi_awready\(2 downto 0);
  s_axi_bvalid(2 downto 0) <= \^s_axi_bvalid\(2 downto 0);
  s_axi_rlast(2 downto 0) <= \^s_axi_rlast\(2 downto 0);
  s_axi_rvalid(2 downto 0) <= \^s_axi_rvalid\(2 downto 0);
addr_arbiter_ar: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_2\,
      ADDRESS_HIT_0_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_1\,
      ADDRESS_HIT_0_1 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_0\,
      ADDRESS_HIT_0_2 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0\,
      D(3) => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_5\,
      D(2) => \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_3\,
      D(1) => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_3\,
      D(0) => \gen_master_slots[0].reg_slice_mi_n_6\,
      Q(3 downto 0) => \^q\(3 downto 0),
      SR(0) => reset,
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.any_grant_reg_0\ => \gen_master_slots[2].reg_slice_mi_n_7\,
      \gen_arbiter.any_grant_reg_1\ => \gen_master_slots[2].reg_slice_mi_n_10\,
      \gen_arbiter.last_rr_hot_reg[0]_0\ => addr_arbiter_ar_n_80,
      \gen_arbiter.last_rr_hot_reg[0]_1\ => addr_arbiter_ar_n_83,
      \gen_arbiter.last_rr_hot_reg[2]_0\ => addr_arbiter_ar_n_79,
      \gen_arbiter.last_rr_hot_reg[2]_1\ => addr_arbiter_ar_n_82,
      \gen_arbiter.m_grant_enc_i_reg[0]_0\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_5\,
      \gen_arbiter.m_grant_enc_i_reg[0]_1\ => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_3\,
      \gen_arbiter.m_grant_enc_i_reg[0]_2\ => \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_5\,
      \gen_arbiter.m_mesg_i_reg[0]_0\ => addr_arbiter_ar_n_77,
      \gen_arbiter.m_mesg_i_reg[1]_0\ => addr_arbiter_ar_n_14,
      \gen_arbiter.m_mesg_i_reg[63]_0\(58 downto 0) => \^gen_arbiter.m_mesg_i_reg[63]_0\(58 downto 0),
      \gen_arbiter.m_target_hot_i_reg[1]_0\ => \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_8\,
      \gen_arbiter.m_target_hot_i_reg[1]_1\ => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_6\,
      \gen_arbiter.m_target_hot_i_reg[2]_0\(2 downto 0) => aa_mi_artarget_hot(2 downto 0),
      \gen_arbiter.m_valid_i_reg_0\ => addr_arbiter_ar_n_78,
      \gen_arbiter.m_valid_i_reg_1\ => addr_arbiter_ar_n_89,
      \gen_arbiter.m_valid_i_reg_2\ => addr_arbiter_ar_n_92,
      \gen_arbiter.s_ready_i_reg[0]_0\ => addr_arbiter_ar_n_8,
      \gen_arbiter.s_ready_i_reg[0]_1\ => addr_arbiter_ar_n_100,
      \gen_arbiter.s_ready_i_reg[1]_0\ => addr_arbiter_ar_n_10,
      \gen_arbiter.s_ready_i_reg[1]_1\ => addr_arbiter_ar_n_102,
      \gen_arbiter.s_ready_i_reg[2]_0\ => addr_arbiter_ar_n_13,
      \gen_arbiter.s_ready_i_reg[2]_1\ => addr_arbiter_ar_n_103,
      \gen_arbiter.s_ready_i_reg[2]_2\ => addr_arbiter_ar_n_104,
      \gen_arbiter.s_ready_i_reg[3]_0\ => addr_arbiter_ar_n_2,
      \gen_arbiter.s_ready_i_reg[3]_1\ => addr_arbiter_ar_n_97,
      \gen_arbiter.s_ready_i_reg[3]_2\ => addr_arbiter_ar_n_98,
      \gen_axi.read_cs_reg[0]\ => addr_arbiter_ar_n_95,
      \gen_axi.s_axi_arready_i_reg\ => addr_arbiter_ar_n_96,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => addr_arbiter_ar_n_93,
      \gen_master_slots[1].r_issuing_cnt_reg[8]\ => addr_arbiter_ar_n_94,
      \gen_master_slots[2].r_issuing_cnt_reg[16]\ => \gen_master_slots[2].reg_slice_mi_n_5\,
      \gen_single_issue.active_target_enc\(1 downto 0) => \gen_single_issue.active_target_enc\(1 downto 0),
      \gen_single_issue.active_target_enc_8\(1 downto 0) => \gen_single_issue.active_target_enc_22\(1 downto 0),
      \gen_single_issue.active_target_hot\(0) => \gen_single_issue.active_target_hot\(0),
      \gen_single_issue.active_target_hot_3\(0) => \gen_single_issue.active_target_hot_23\(0),
      \gen_single_thread.active_target_enc\(1 downto 0) => \gen_single_thread.active_target_enc_36\(1 downto 0),
      \gen_single_thread.active_target_enc_9\(1 downto 0) => \gen_single_thread.active_target_enc\(1 downto 0),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_35\(0),
      \gen_single_thread.active_target_hot_4\(0) => \gen_single_thread.active_target_hot\(0),
      m_axi_arready(1 downto 0) => m_axi_arready(1 downto 0),
      m_axi_arvalid(1 downto 0) => m_axi_arvalid(1 downto 0),
      match => match,
      match_5 => match_29,
      match_6 => match_16,
      match_7 => match_21,
      mi_arready_2 => mi_arready_2,
      p_15_in => p_15_in,
      p_20_in(1 downto 0) => p_20_in(1 downto 0),
      r_issuing_cnt(6) => r_issuing_cnt(16),
      r_issuing_cnt(5 downto 3) => r_issuing_cnt(10 downto 8),
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      s_axi_araddr(127 downto 0) => s_axi_araddr(127 downto 0),
      s_axi_araddr_126_sp_1 => addr_arbiter_ar_n_84,
      s_axi_araddr_30_sp_1 => addr_arbiter_ar_n_99,
      s_axi_araddr_62_sp_1 => addr_arbiter_ar_n_101,
      s_axi_araddr_81_sp_1 => addr_arbiter_ar_n_86,
      s_axi_araddr_87_sp_1 => addr_arbiter_ar_n_85,
      s_axi_araddr_91_sp_1 => addr_arbiter_ar_n_87,
      s_axi_araddr_95_sp_1 => addr_arbiter_ar_n_88,
      s_axi_arburst(7 downto 0) => s_axi_arburst(7 downto 0),
      s_axi_arcache(15 downto 0) => s_axi_arcache(15 downto 0),
      s_axi_arlen(31 downto 0) => s_axi_arlen(31 downto 0),
      s_axi_arlock(3 downto 0) => s_axi_arlock(3 downto 0),
      s_axi_arprot(11 downto 0) => s_axi_arprot(11 downto 0),
      s_axi_arqos(15 downto 0) => s_axi_arqos(15 downto 0),
      s_axi_arsize(11 downto 0) => s_axi_arsize(11 downto 0),
      s_axi_arvalid(3 downto 0) => s_axi_arvalid(3 downto 0),
      valid_qual_i(0) => valid_qual_i(0)
    );
addr_arbiter_aw: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter_0
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5\,
      ADDRESS_HIT_0_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4\,
      ADDRESS_HIT_0_1 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_3\,
      D(2) => addr_arbiter_aw_n_5,
      D(1) => addr_arbiter_aw_n_6,
      D(0) => addr_arbiter_aw_n_7,
      E(0) => addr_arbiter_aw_n_16,
      \FSM_onehot_state_reg[0]\ => addr_arbiter_aw_n_41,
      \FSM_onehot_state_reg[1]\ => addr_arbiter_aw_n_37,
      \FSM_onehot_state_reg[1]_0\ => addr_arbiter_aw_n_40,
      \FSM_onehot_state_reg[1]_1\(2) => \gen_wmux.wmux_aw_fifo/p_7_in\,
      \FSM_onehot_state_reg[1]_1\(1) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      \FSM_onehot_state_reg[1]_1\(0) => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_44\,
      \FSM_onehot_state_reg[3]\ => addr_arbiter_aw_n_36,
      \FSM_onehot_state_reg[3]_0\ => addr_arbiter_aw_n_39,
      Q(2 downto 0) => aa_mi_awtarget_hot(2 downto 0),
      SR(0) => reset,
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.grant_hot_reg[2]_0\ => \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_3\,
      \gen_arbiter.grant_hot_reg[2]_1\ => \gen_master_slots[2].reg_slice_mi_n_14\,
      \gen_arbiter.last_rr_hot_reg[0]_0\ => addr_arbiter_aw_n_2,
      \gen_arbiter.last_rr_hot_reg[0]_1\ => addr_arbiter_aw_n_26,
      \gen_arbiter.last_rr_hot_reg[3]_0\ => addr_arbiter_aw_n_3,
      \gen_arbiter.m_mesg_i_reg[63]_0\(58 downto 0) => \^gen_arbiter.m_mesg_i_reg[63]\(58 downto 0),
      \gen_arbiter.m_target_hot_i_reg[1]_0\ => addr_arbiter_aw_n_35,
      \gen_arbiter.m_target_hot_i_reg[2]_0\ => addr_arbiter_aw_n_11,
      \gen_arbiter.m_target_hot_i_reg[2]_1\ => addr_arbiter_aw_n_15,
      \gen_arbiter.m_valid_i_reg_0\ => addr_arbiter_aw_n_38,
      \gen_arbiter.m_valid_i_reg_1\ => addr_arbiter_aw_n_42,
      \gen_arbiter.qual_reg_reg[2]_0\(2) => \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_4\,
      \gen_arbiter.qual_reg_reg[2]_0\(1) => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_4\,
      \gen_arbiter.qual_reg_reg[2]_0\(0) => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5\,
      \gen_axi.s_axi_awready_i_reg\ => addr_arbiter_aw_n_25,
      \gen_master_slots[0].w_issuing_cnt_reg[0]\(0) => addr_arbiter_aw_n_18,
      \gen_master_slots[0].w_issuing_cnt_reg[0]_0\ => \gen_master_slots[0].reg_slice_mi_n_2\,
      \gen_master_slots[0].w_issuing_cnt_reg[2]\ => addr_arbiter_aw_n_19,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(4) => addr_arbiter_aw_n_20,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(3) => addr_arbiter_aw_n_21,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(2) => addr_arbiter_aw_n_22,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(1) => addr_arbiter_aw_n_23,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(0) => addr_arbiter_aw_n_24,
      \gen_master_slots[1].w_issuing_cnt_reg[10]\ => addr_arbiter_aw_n_45,
      \gen_master_slots[1].w_issuing_cnt_reg[8]\ => \gen_master_slots[1].reg_slice_mi_n_3\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]\ => \gen_master_slots[2].reg_slice_mi_n_4\,
      m_axi_awready(1 downto 0) => m_axi_awready(1 downto 0),
      m_axi_awvalid(1 downto 0) => m_axi_awvalid(1 downto 0),
      m_ready_d(1 downto 0) => m_ready_d_37(1 downto 0),
      m_ready_d_4(0) => m_ready_d(0),
      m_ready_d_5(0) => m_ready_d_32(0),
      m_ready_d_6(0) => m_ready_d_26(0),
      \m_ready_d_reg[0]\ => splitter_aw_mi_n_0,
      \m_ready_d_reg[1]\ => addr_arbiter_aw_n_46,
      match => match_19,
      match_2 => match_27,
      match_3 => match_33,
      mi_awready_2 => mi_awready_2,
      \mi_awready_mux__1\ => \mi_awready_mux__1\,
      s_axi_awaddr(95 downto 0) => s_axi_awaddr(95 downto 0),
      s_axi_awaddr_81_sp_1 => addr_arbiter_aw_n_31,
      s_axi_awaddr_87_sp_1 => addr_arbiter_aw_n_30,
      s_axi_awaddr_91_sp_1 => addr_arbiter_aw_n_32,
      s_axi_awaddr_94_sp_1 => addr_arbiter_aw_n_34,
      s_axi_awaddr_95_sp_1 => addr_arbiter_aw_n_33,
      s_axi_awburst(5 downto 0) => s_axi_awburst(5 downto 0),
      s_axi_awcache(11 downto 0) => s_axi_awcache(11 downto 0),
      s_axi_awlen(23 downto 0) => s_axi_awlen(23 downto 0),
      s_axi_awlock(2 downto 0) => s_axi_awlock(2 downto 0),
      s_axi_awprot(8 downto 0) => s_axi_awprot(8 downto 0),
      s_axi_awqos(11 downto 0) => s_axi_awqos(11 downto 0),
      s_axi_awsize(8 downto 0) => s_axi_awsize(8 downto 0),
      s_axi_awvalid(2 downto 0) => s_axi_awvalid(2 downto 0),
      ss_aa_awready(2 downto 0) => ss_aa_awready(2 downto 0),
      st_aa_awtarget_enc_0(0) => st_aa_awtarget_enc_0(0),
      st_aa_awtarget_enc_2(0) => st_aa_awtarget_enc_2(0),
      \storage_data1_reg[1]\(1) => \gen_wmux.wmux_aw_fifo/p_7_in_11\,
      \storage_data1_reg[1]\(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in_10\,
      w_issuing_cnt(10) => w_issuing_cnt(16),
      w_issuing_cnt(9 downto 6) => w_issuing_cnt(11 downto 8),
      w_issuing_cnt(5 downto 0) => w_issuing_cnt(5 downto 0)
    );
aresetn_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => aresetn_d,
      R => '0'
    );
\gen_decerr_slave.decerr_slave_inst\: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_decerr_slave
     port map (
      \FSM_onehot_gen_axi.write_cs_reg[1]_0\ => \gen_decerr_slave.decerr_slave_inst_n_8\,
      \FSM_onehot_gen_axi.write_cs_reg[2]_0\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_3\,
      Q(0) => aa_mi_awtarget_hot(2),
      SR(0) => reset,
      aa_mi_arvalid => aa_mi_arvalid,
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_axi.read_cnt_reg[7]_0\(7 downto 0) => \^gen_arbiter.m_mesg_i_reg[63]_0\(41 downto 34),
      \gen_axi.read_cs_reg[0]_0\(0) => aa_mi_artarget_hot(2),
      \gen_axi.s_axi_arready_i_reg_0\ => addr_arbiter_ar_n_78,
      \gen_axi.s_axi_awready_i_reg_0\ => addr_arbiter_aw_n_25,
      \gen_axi.s_axi_bid_i_reg[1]_0\(1 downto 0) => \^gen_arbiter.m_mesg_i_reg[63]\(1 downto 0),
      \gen_axi.s_axi_rid_i_reg[0]_0\ => addr_arbiter_ar_n_77,
      \gen_axi.s_axi_rid_i_reg[1]_0\ => addr_arbiter_ar_n_14,
      \gen_axi.s_axi_rlast_i_reg_0\ => addr_arbiter_ar_n_95,
      m_ready_d(0) => m_ready_d_37(1),
      mi_arready_2 => mi_arready_2,
      mi_awready_2 => mi_awready_2,
      mi_bready_2 => mi_bready_2,
      mi_rready_2 => mi_rready_2,
      p_14_in => p_14_in,
      p_15_in => p_15_in,
      p_17_in => p_17_in,
      p_20_in(1 downto 0) => p_20_in(1 downto 0),
      p_21_in => p_21_in,
      p_24_in(1 downto 0) => p_24_in(1 downto 0)
    );
\gen_master_slots[0].gen_mi_write.wdata_mux_w\: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux
     port map (
      \FSM_onehot_state_reg[1]\ => splitter_aw_mi_n_3,
      Q(0) => aa_mi_awtarget_hot(0),
      SR(0) => reset,
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \gen_rep[0].fifoaddr_reg[0]\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_10\,
      \gen_rep[0].fifoaddr_reg[0]_0\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_9\,
      \gen_rep[0].fifoaddr_reg[0]_1\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5\,
      m_avalid => m_avalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_ready_d(0) => m_ready_d_37(0),
      m_select_enc(1 downto 0) => m_select_enc(1 downto 0),
      m_valid_i_reg => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_42\,
      s_axi_wdata(95 downto 0) => s_axi_wdata(95 downto 0),
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wstrb(11 downto 0) => s_axi_wstrb(11 downto 0),
      \storage_data1_reg[0]\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_40\,
      \storage_data1_reg[0]_0\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_43\,
      \storage_data1_reg[1]\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_41\
    );
\gen_master_slots[0].r_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_issuing_cnt(0),
      O => \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0\
    );
\gen_master_slots[0].r_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_master_slots[0].reg_slice_mi_n_12\,
      D => \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0\,
      Q => r_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_master_slots[0].reg_slice_mi_n_12\,
      D => \gen_master_slots[0].reg_slice_mi_n_5\,
      Q => r_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_master_slots[0].reg_slice_mi_n_12\,
      D => \gen_master_slots[0].reg_slice_mi_n_4\,
      Q => r_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_master_slots[0].reg_slice_mi_n_12\,
      D => \gen_master_slots[0].reg_slice_mi_n_3\,
      Q => r_issuing_cnt(3),
      R => reset
    );
\gen_master_slots[0].reg_slice_mi\: entity work.mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice
     port map (
      D(2) => \gen_master_slots[0].reg_slice_mi_n_3\,
      D(1) => \gen_master_slots[0].reg_slice_mi_n_4\,
      D(0) => \gen_master_slots[0].reg_slice_mi_n_5\,
      E(0) => \gen_master_slots[0].reg_slice_mi_n_12\,
      Q(3 downto 0) => r_issuing_cnt(3 downto 0),
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      \gen_arbiter.qual_reg[0]_i_2\ => addr_arbiter_aw_n_19,
      \gen_arbiter.qual_reg[0]_i_2_0\(1) => w_issuing_cnt(5),
      \gen_arbiter.qual_reg[0]_i_2_0\(0) => w_issuing_cnt(0),
      \gen_arbiter.s_ready_i_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_56\,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => addr_arbiter_ar_n_93,
      \gen_master_slots[0].r_issuing_cnt_reg[0]_0\ => addr_arbiter_ar_n_92,
      \gen_master_slots[0].r_issuing_cnt_reg[2]\(0) => aa_mi_artarget_hot(0),
      \gen_single_issue.accept_cnt\ => \gen_single_issue.accept_cnt\,
      \gen_single_issue.accept_cnt_reg\(0) => \^q\(0),
      \gen_single_issue.active_target_hot\(0) => \gen_single_issue.active_target_hot\(0),
      \gen_single_issue.active_target_hot_1\(0) => \gen_single_issue.active_target_hot_23\(0),
      \gen_single_issue.active_target_hot_2\(0) => \gen_single_issue.active_target_hot_18\(0),
      \gen_single_issue.active_target_hot_3\(0) => \gen_single_issue.active_target_hot_25\(0),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_30\(0),
      \gen_single_thread.active_target_hot_4\(0) => \gen_single_thread.active_target_hot_35\(0),
      \gen_single_thread.active_target_hot_5\(0) => \gen_single_thread.active_target_hot\(0),
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[1]\(1 downto 0) => st_mr_bmesg(1 downto 0),
      \m_payload_i_reg[2]\ => \gen_master_slots[0].reg_slice_mi_n_2\,
      \m_payload_i_reg[34]\(34) => st_mr_rlast(0),
      \m_payload_i_reg[34]\(33 downto 32) => st_mr_rmesg(1 downto 0),
      \m_payload_i_reg[34]\(31 downto 0) => st_mr_rmesg(34 downto 3),
      \m_payload_i_reg[3]\(3 downto 2) => m_axi_bid(1 downto 0),
      \m_payload_i_reg[3]\(1 downto 0) => m_axi_bresp(1 downto 0),
      m_valid_i_reg => \^m_valid_i_reg\,
      m_valid_i_reg_0 => \gen_master_slots[0].reg_slice_mi_n_52\,
      m_valid_i_reg_1 => \gen_master_slots[0].reg_slice_mi_n_53\,
      m_valid_i_reg_2 => \gen_master_slots[0].reg_slice_mi_n_54\,
      p_0_in => p_0_in,
      p_1_in => p_1_in,
      p_2_in => p_2_in,
      s_axi_arvalid(0) => s_axi_arvalid(0),
      \s_axi_arvalid[0]\(0) => \gen_master_slots[0].reg_slice_mi_n_6\,
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_bvalid(0) => \^s_axi_bvalid\(0),
      \s_axi_bvalid[0]_0\ => \gen_master_slots[2].reg_slice_mi_n_18\,
      s_axi_bvalid_0_sp_1 => \gen_master_slots[1].reg_slice_mi_n_46\,
      s_axi_rlast(1) => \^s_axi_rlast\(2),
      s_axi_rlast(0) => \^s_axi_rlast\(0),
      s_axi_rready(3 downto 0) => s_axi_rready(3 downto 0),
      s_axi_rready_0_sp_1 => \gen_master_slots[0].reg_slice_mi_n_8\,
      s_axi_rvalid(2 downto 0) => \^s_axi_rvalid\(2 downto 0),
      \s_axi_rvalid[0]_0\ => \gen_master_slots[2].reg_slice_mi_n_13\,
      \s_axi_rvalid[1]_0\ => \gen_master_slots[2].reg_slice_mi_n_19\,
      \s_axi_rvalid[2]_0\ => \gen_master_slots[2].reg_slice_mi_n_23\,
      \s_axi_rvalid[3]\ => \gen_master_slots[1].reg_slice_mi_n_52\,
      \s_axi_rvalid[3]_0\ => \gen_master_slots[2].reg_slice_mi_n_24\,
      s_axi_rvalid_0_sp_1 => \gen_master_slots[1].reg_slice_mi_n_7\,
      s_axi_rvalid_1_sp_1 => \gen_master_slots[1].reg_slice_mi_n_47\,
      s_axi_rvalid_2_sp_1 => \gen_master_slots[1].reg_slice_mi_n_51\,
      s_ready_i_reg => M_AXI_RREADY(0),
      s_ready_i_reg_0 => \gen_master_slots[2].reg_slice_mi_n_3\,
      valid_qual_i(0) => valid_qual_i(0),
      \valid_qual_i1__1\ => \valid_qual_i1__1_14\,
      \valid_qual_i3__2\(0) => \valid_qual_i3__2_6\(0),
      \valid_qual_i3__2_0\(0) => \valid_qual_i3__2\(0)
    );
\gen_master_slots[0].w_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_issuing_cnt(0),
      O => \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0\
    );
\gen_master_slots[0].w_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0\,
      Q => w_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => addr_arbiter_aw_n_24,
      Q => w_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => addr_arbiter_aw_n_23,
      Q => w_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => addr_arbiter_aw_n_22,
      Q => w_issuing_cnt(3),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => addr_arbiter_aw_n_21,
      Q => w_issuing_cnt(4),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => addr_arbiter_aw_n_20,
      Q => w_issuing_cnt(5),
      R => reset
    );
\gen_master_slots[1].gen_mi_write.wdata_mux_w\: entity work.\mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized0\
     port map (
      \FSM_onehot_state_reg[0]\(0) => aa_mi_awtarget_hot(1),
      \FSM_onehot_state_reg[1]\ => addr_arbiter_aw_n_42,
      \FSM_onehot_state_reg[1]_0\ => addr_arbiter_aw_n_35,
      Q(2) => \gen_wmux.wmux_aw_fifo/p_7_in\,
      Q(1) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      Q(0) => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_44\,
      SR(0) => reset,
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \gen_rep[0].fifoaddr_reg[0]\ => splitter_aw_mi_n_3,
      \gen_rep[0].fifoaddr_reg[2]\ => addr_arbiter_aw_n_41,
      m_avalid => m_avalid_8,
      m_avalid_0 => m_avalid_20,
      m_avalid_1 => m_avalid_34,
      m_avalid_2 => m_avalid_28,
      m_axi_wdata(31 downto 0) => m_axi_wdata(63 downto 32),
      m_axi_wready(0) => m_axi_wready(1),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(7 downto 4),
      m_ready_d(0) => m_ready_d_37(0),
      m_select_enc(1 downto 0) => m_select_enc_7(1 downto 0),
      m_valid_i_reg => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_46\,
      m_valid_i_reg_0 => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_49\,
      m_valid_i_reg_1 => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_50\,
      s_axi_wdata(95 downto 0) => s_axi_wdata(95 downto 0),
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wlast_2_sp_1 => m_axi_wlast(1),
      s_axi_wready(2 downto 0) => s_axi_wready(2 downto 0),
      \s_axi_wready[0]_0\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_6\,
      \s_axi_wready[0]_1\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_0\,
      \s_axi_wready[1]_0\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_6\,
      \s_axi_wready[1]_1\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_7\,
      \s_axi_wready[2]_0\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_5\,
      \s_axi_wready[2]_1\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6\,
      s_axi_wready_0_sp_1 => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\,
      s_axi_wready_1_sp_1 => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\,
      s_axi_wready_2_sp_1 => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_4\,
      s_axi_wstrb(11 downto 0) => s_axi_wstrb(11 downto 0),
      \storage_data1_reg[0]\ => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_48\,
      \storage_data1_reg[1]\ => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_47\,
      \storage_data1_reg[1]_0\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_9\,
      \storage_data1_reg[1]_1\ => addr_arbiter_aw_n_39,
      \storage_data1_reg[1]_2\ => addr_arbiter_aw_n_40
    );
\gen_master_slots[1].r_issuing_cnt[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_issuing_cnt(8),
      O => \gen_master_slots[1].r_issuing_cnt[8]_i_1_n_0\
    );
\gen_master_slots[1].r_issuing_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_master_slots[1].reg_slice_mi_n_8\,
      D => \gen_master_slots[1].reg_slice_mi_n_5\,
      Q => r_issuing_cnt(10),
      R => reset
    );
\gen_master_slots[1].r_issuing_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_master_slots[1].reg_slice_mi_n_8\,
      D => \gen_master_slots[1].reg_slice_mi_n_4\,
      Q => r_issuing_cnt(11),
      R => reset
    );
\gen_master_slots[1].r_issuing_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_master_slots[1].reg_slice_mi_n_8\,
      D => \gen_master_slots[1].r_issuing_cnt[8]_i_1_n_0\,
      Q => r_issuing_cnt(8),
      R => reset
    );
\gen_master_slots[1].r_issuing_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_master_slots[1].reg_slice_mi_n_8\,
      D => \gen_master_slots[1].reg_slice_mi_n_6\,
      Q => r_issuing_cnt(9),
      R => reset
    );
\gen_master_slots[1].reg_slice_mi\: entity work.mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_1
     port map (
      D(2) => \gen_master_slots[1].reg_slice_mi_n_4\,
      D(1) => \gen_master_slots[1].reg_slice_mi_n_5\,
      D(0) => \gen_master_slots[1].reg_slice_mi_n_6\,
      E(0) => \gen_master_slots[1].reg_slice_mi_n_8\,
      Q(3 downto 0) => r_issuing_cnt(11 downto 8),
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]\ => \gen_master_slots[1].reg_slice_mi_n_53\,
      \gen_arbiter.qual_reg[0]_i_2\(1) => w_issuing_cnt(11),
      \gen_arbiter.qual_reg[0]_i_2\(0) => w_issuing_cnt(8),
      \gen_arbiter.qual_reg[0]_i_2_0\ => addr_arbiter_aw_n_45,
      \gen_master_slots[1].r_issuing_cnt_reg[10]\(0) => aa_mi_artarget_hot(1),
      \gen_master_slots[1].r_issuing_cnt_reg[8]\ => addr_arbiter_ar_n_94,
      \gen_master_slots[1].r_issuing_cnt_reg[8]_0\ => addr_arbiter_ar_n_89,
      \gen_single_issue.active_target_enc\(0) => \gen_single_issue.active_target_enc\(0),
      \gen_single_issue.active_target_enc_1\(0) => \gen_single_issue.active_target_enc_22\(0),
      \gen_single_issue.active_target_enc_2\(0) => \gen_single_issue.active_target_enc_24\(0),
      \gen_single_issue.active_target_enc_3\(0) => \gen_single_issue.active_target_enc_17\(0),
      \gen_single_thread.accept_cnt_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_54\,
      \gen_single_thread.accept_cnt_reg[0]_0\ => \gen_master_slots[2].reg_slice_mi_n_23\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc_31\(0),
      \gen_single_thread.active_target_enc_4\(0) => \gen_single_thread.active_target_enc_36\(0),
      \gen_single_thread.active_target_enc_5\(0) => \gen_single_thread.active_target_enc\(0),
      m_axi_arready(0) => m_axi_arready(1),
      m_axi_bready(0) => m_axi_bready(1),
      m_axi_bvalid(0) => m_axi_bvalid(1),
      m_axi_rdata(31 downto 0) => m_axi_rdata(63 downto 32),
      m_axi_rid(1 downto 0) => m_axi_rid(3 downto 2),
      m_axi_rlast(0) => m_axi_rlast(1),
      m_axi_rresp(1 downto 0) => m_axi_rresp(3 downto 2),
      m_axi_rvalid(0) => m_axi_rvalid(1),
      \m_payload_i_reg[1]\(1 downto 0) => st_mr_bmesg(4 downto 3),
      \m_payload_i_reg[2]\ => \gen_master_slots[1].reg_slice_mi_n_3\,
      \m_payload_i_reg[2]_0\ => \gen_master_slots[1].reg_slice_mi_n_48\,
      \m_payload_i_reg[2]_1\ => \gen_master_slots[1].reg_slice_mi_n_49\,
      \m_payload_i_reg[34]\(34) => st_mr_rlast(1),
      \m_payload_i_reg[34]\(33 downto 32) => st_mr_rmesg(36 downto 35),
      \m_payload_i_reg[34]\(31 downto 0) => st_mr_rmesg(69 downto 38),
      \m_payload_i_reg[35]\ => \gen_master_slots[1].reg_slice_mi_n_47\,
      \m_payload_i_reg[35]_0\ => \gen_master_slots[1].reg_slice_mi_n_51\,
      \m_payload_i_reg[35]_1\ => \gen_master_slots[1].reg_slice_mi_n_52\,
      \m_payload_i_reg[36]\ => \gen_master_slots[1].reg_slice_mi_n_7\,
      \m_payload_i_reg[3]\(3 downto 2) => m_axi_bid(3 downto 2),
      \m_payload_i_reg[3]\(1 downto 0) => m_axi_bresp(3 downto 2),
      m_valid_i_reg => \gen_master_slots[1].reg_slice_mi_n_46\,
      p_0_in => p_0_in,
      p_1_in => p_1_in,
      p_2_in => p_2_in_9,
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_rlast(0) => \^s_axi_rlast\(1),
      s_axi_rready(3 downto 0) => s_axi_rready(3 downto 0),
      s_ready_i_reg => M_AXI_RREADY(1),
      s_ready_i_reg_0 => \gen_master_slots[2].reg_slice_mi_n_3\,
      \valid_qual_i3__2\(0) => \valid_qual_i3__2_6\(1),
      \valid_qual_i3__2_0\(0) => \valid_qual_i3__2\(1)
    );
\gen_master_slots[1].w_issuing_cnt[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_issuing_cnt(8),
      O => \gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0\
    );
\gen_master_slots[1].w_issuing_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_16,
      D => addr_arbiter_aw_n_6,
      Q => w_issuing_cnt(10),
      R => reset
    );
\gen_master_slots[1].w_issuing_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_16,
      D => addr_arbiter_aw_n_5,
      Q => w_issuing_cnt(11),
      R => reset
    );
\gen_master_slots[1].w_issuing_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_16,
      D => \gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0\,
      Q => w_issuing_cnt(8),
      R => reset
    );
\gen_master_slots[1].w_issuing_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_16,
      D => addr_arbiter_aw_n_7,
      Q => w_issuing_cnt(9),
      R => reset
    );
\gen_master_slots[2].gen_mi_write.wdata_mux_w\: entity work.\mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized1\
     port map (
      \FSM_onehot_gen_axi.write_cs_reg[1]\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_3\,
      \FSM_onehot_gen_axi.write_cs_reg[2]\ => \gen_decerr_slave.decerr_slave_inst_n_8\,
      \FSM_onehot_state_reg[0]\(0) => aa_mi_awtarget_hot(2),
      \FSM_onehot_state_reg[1]\ => addr_arbiter_aw_n_38,
      Q(1) => \gen_wmux.wmux_aw_fifo/p_7_in_11\,
      Q(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in_10\,
      SR(0) => reset,
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \gen_rep[0].fifoaddr_reg[0]\ => splitter_aw_mi_n_3,
      m_ready_d(0) => m_ready_d_37(0),
      m_select_enc(1 downto 0) => m_select_enc_12(1 downto 0),
      p_14_in => p_14_in,
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      \s_axi_wready[0]_INST_0_i_1\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_40\,
      \s_axi_wready[0]_INST_0_i_1_0\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_42\,
      \s_axi_wready[0]_INST_0_i_1_1\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\,
      \s_axi_wready[1]_INST_0_i_1\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_43\,
      \s_axi_wready[1]_INST_0_i_1_0\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\,
      \s_axi_wready[2]_INST_0_i_1\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_41\,
      \s_axi_wready[2]_INST_0_i_1_0\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_4\,
      \storage_data1_reg[0]\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6\,
      \storage_data1_reg[1]\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_0\,
      \storage_data1_reg[1]_0\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_7\,
      \storage_data1_reg[1]_1\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_8\,
      \storage_data1_reg[1]_2\ => addr_arbiter_aw_n_36,
      \storage_data1_reg[1]_3\ => addr_arbiter_aw_n_37
    );
\gen_master_slots[2].r_issuing_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_ar_n_96,
      Q => r_issuing_cnt(16),
      R => reset
    );
\gen_master_slots[2].reg_slice_mi\: entity work.mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_2
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_2\,
      ADDRESS_HIT_0_10 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_3\,
      ADDRESS_HIT_0_3 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0\,
      ADDRESS_HIT_0_4 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_0\,
      ADDRESS_HIT_0_5 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_1\,
      ADDRESS_HIT_0_8 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5\,
      ADDRESS_HIT_0_9 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4\,
      aclk => aclk,
      \aresetn_d_reg[1]\ => \gen_master_slots[2].reg_slice_mi_n_3\,
      \aresetn_d_reg[1]_0\ => \gen_master_slots[1].reg_slice_mi_n_53\,
      \gen_arbiter.any_grant_reg\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6\,
      \gen_arbiter.any_grant_reg_0\ => addr_arbiter_ar_n_79,
      \gen_arbiter.any_grant_reg_1\ => \gen_master_slots[0].reg_slice_mi_n_8\,
      \gen_arbiter.any_grant_reg_2\ => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_4\,
      \gen_arbiter.any_grant_reg_3\ => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_7\,
      \gen_arbiter.any_grant_reg_4\ => \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_6\,
      \gen_arbiter.grant_hot_reg[2]\ => addr_arbiter_aw_n_26,
      \gen_arbiter.grant_hot_reg[2]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3\,
      \gen_arbiter.grant_hot_reg[2]_1\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_3\,
      \gen_arbiter.grant_hot_reg[2]_2\ => addr_arbiter_aw_n_3,
      \gen_arbiter.qual_reg_reg[2]\ => addr_arbiter_aw_n_34,
      \gen_single_issue.accept_cnt\ => \gen_single_issue.accept_cnt\,
      \gen_single_issue.accept_cnt_reg\ => \gen_master_slots[2].reg_slice_mi_n_7\,
      \gen_single_issue.active_target_enc\(0) => \gen_single_issue.active_target_enc_22\(1),
      \gen_single_issue.active_target_enc_11\(0) => \gen_single_issue.active_target_enc_24\(1),
      \gen_single_issue.active_target_enc_12\(0) => \gen_single_issue.active_target_enc_17\(1),
      \gen_single_issue.active_target_enc_6\(0) => \gen_single_issue.active_target_enc\(1),
      \gen_single_issue.active_target_enc_reg[1]\ => \gen_master_slots[2].reg_slice_mi_n_18\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc_31\(1),
      \gen_single_thread.active_target_enc_13\(0) => \gen_single_thread.active_target_enc_36\(1),
      \gen_single_thread.active_target_enc_14\(0) => \gen_single_thread.active_target_enc\(1),
      \gen_single_thread.s_avalid_en\ => \gen_single_thread.s_avalid_en\,
      \m_payload_i_reg[2]\ => \gen_master_slots[2].reg_slice_mi_n_4\,
      m_valid_i_reg => \gen_master_slots[2].reg_slice_mi_n_5\,
      m_valid_i_reg_0 => \gen_master_slots[2].reg_slice_mi_n_13\,
      m_valid_i_reg_1 => \gen_master_slots[2].reg_slice_mi_n_19\,
      m_valid_i_reg_2 => \gen_master_slots[2].reg_slice_mi_n_22\,
      m_valid_i_reg_3 => \gen_master_slots[2].reg_slice_mi_n_23\,
      m_valid_i_reg_4 => \gen_master_slots[2].reg_slice_mi_n_24\,
      mi_bready_2 => mi_bready_2,
      mi_rready_2 => mi_rready_2,
      p_0_in => p_0_in,
      p_15_in => p_15_in,
      p_17_in => p_17_in,
      p_1_in => p_1_in,
      p_20_in(1 downto 0) => p_20_in(1 downto 0),
      p_21_in => p_21_in,
      p_24_in(1 downto 0) => p_24_in(1 downto 0),
      r_issuing_cnt(0) => r_issuing_cnt(16),
      s_axi_araddr(7 downto 6) => s_axi_araddr(127 downto 126),
      s_axi_araddr(5 downto 4) => s_axi_araddr(95 downto 94),
      s_axi_araddr(3 downto 2) => s_axi_araddr(63 downto 62),
      s_axi_araddr(1 downto 0) => s_axi_araddr(31 downto 30),
      \s_axi_araddr[127]\ => \gen_master_slots[2].reg_slice_mi_n_10\,
      s_axi_awaddr(3 downto 2) => s_axi_awaddr(63 downto 62),
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(31 downto 30),
      \s_axi_awaddr[31]\ => \gen_master_slots[2].reg_slice_mi_n_14\,
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_bvalid(1 downto 0) => \^s_axi_bvalid\(2 downto 1),
      \s_axi_bvalid[1]_0\ => \gen_master_slots[1].reg_slice_mi_n_48\,
      \s_axi_bvalid[2]\ => \gen_master_slots[1].reg_slice_mi_n_49\,
      \s_axi_bvalid[2]_0\ => \gen_master_slots[0].reg_slice_mi_n_53\,
      s_axi_bvalid_1_sp_1 => \gen_master_slots[0].reg_slice_mi_n_52\,
      s_axi_rready(3 downto 0) => s_axi_rready(3 downto 0),
      st_mr_rlast(0) => st_mr_rlast(2),
      valid_qual_i140_in => valid_qual_i140_in_15,
      valid_qual_i140_in_1 => valid_qual_i140_in,
      valid_qual_i142_in => valid_qual_i142_in_13,
      valid_qual_i142_in_2 => valid_qual_i142_in,
      valid_qual_i145_in => valid_qual_i145_in,
      \valid_qual_i1__1\ => \valid_qual_i1__1_14\,
      \valid_qual_i1__1_0\ => \valid_qual_i1__1\,
      \valid_qual_i3__2\(1 downto 0) => \valid_qual_i3__2_6\(1 downto 0),
      \valid_qual_i3__2_7\(1 downto 0) => \valid_qual_i3__2\(1 downto 0),
      w_issuing_cnt(0) => w_issuing_cnt(16)
    );
\gen_master_slots[2].w_issuing_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_46,
      Q => w_issuing_cnt(16),
      R => reset
    );
\gen_slave_slots[0].gen_si_read.si_transactor_ar\: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_1\,
      SR(0) => reset,
      aclk => aclk,
      \gen_single_issue.accept_cnt\ => \gen_single_issue.accept_cnt\,
      \gen_single_issue.accept_cnt_reg_0\ => \gen_master_slots[0].reg_slice_mi_n_56\,
      \gen_single_issue.active_target_enc\(1 downto 0) => \gen_single_issue.active_target_enc\(1 downto 0),
      \gen_single_issue.active_target_enc_reg[0]_0\ => addr_arbiter_ar_n_99,
      \gen_single_issue.active_target_enc_reg[1]_0\ => addr_arbiter_ar_n_100,
      \gen_single_issue.active_target_hot\(0) => \gen_single_issue.active_target_hot\(0),
      \gen_single_issue.active_target_hot_reg[0]_0\ => addr_arbiter_ar_n_8,
      match => match_16,
      s_axi_araddr(1 downto 0) => s_axi_araddr(31 downto 30),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rlast(0) => \^s_axi_rlast\(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      st_mr_rlast(2 downto 0) => st_mr_rlast(2 downto 0),
      st_mr_rmesg(67 downto 36) => st_mr_rmesg(69 downto 38),
      st_mr_rmesg(35 downto 2) => st_mr_rmesg(36 downto 3),
      st_mr_rmesg(1 downto 0) => st_mr_rmesg(1 downto 0)
    );
\gen_slave_slots[0].gen_si_write.si_transactor_aw\: entity work.\mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized0\
     port map (
      SR(0) => reset,
      aclk => aclk,
      \gen_single_issue.active_target_enc\(1 downto 0) => \gen_single_issue.active_target_enc_17\(1 downto 0),
      \gen_single_issue.active_target_enc_reg[0]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3\,
      \gen_single_issue.active_target_enc_reg[0]_1\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_7\,
      \gen_single_issue.active_target_enc_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0\,
      \gen_single_issue.active_target_hot\(0) => \gen_single_issue.active_target_hot_18\(0),
      \gen_single_issue.active_target_hot_reg[0]_0\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\,
      m_ready_d(1 downto 0) => m_ready_d(1 downto 0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid(0) => \^s_axi_bvalid\(0),
      ss_aa_awready(0) => ss_aa_awready(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      st_mr_bmesg(3 downto 2) => st_mr_bmesg(4 downto 3),
      st_mr_bmesg(1 downto 0) => st_mr_bmesg(1 downto 0)
    );
\gen_slave_slots[0].gen_si_write.splitter_aw_si\: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_splitter
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5\,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.qual_reg_reg[0]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3\,
      \gen_single_issue.active_target_enc\(1 downto 0) => \gen_single_issue.active_target_enc_17\(1 downto 0),
      \gen_single_issue.active_target_hot\(0) => \gen_single_issue.active_target_hot_18\(0),
      m_ready_d(1 downto 0) => m_ready_d(1 downto 0),
      \m_ready_d_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6\,
      match => match_19,
      s_axi_awready(0) => \^s_axi_awready\(0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      \s_axi_awvalid[0]\(0) => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5\,
      s_ready_i_reg => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0\,
      s_ready_i_reg_0 => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\,
      s_ready_i_reg_1 => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_7\,
      ss_aa_awready(0) => ss_aa_awready(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      st_aa_awtarget_enc_0(0) => st_aa_awtarget_enc_0(0),
      \valid_qual_i1__1\ => \valid_qual_i1__1\
    );
\gen_slave_slots[0].gen_si_write.wdata_router_w\: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5\,
      \FSM_onehot_state_reg[1]\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_0\,
      \FSM_onehot_state_reg[1]_0\ => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_46\,
      SR(0) => reset,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      m_avalid => m_avalid_20,
      m_ready_d(0) => m_ready_d(1),
      m_select_enc(1 downto 0) => m_select_enc(1 downto 0),
      m_select_enc_0(1 downto 0) => m_select_enc_12(1 downto 0),
      m_select_enc_1(1 downto 0) => m_select_enc_7(1 downto 0),
      m_valid_i_reg => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6\,
      match => match_19,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(31 downto 30),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      st_aa_awtarget_enc_0(0) => st_aa_awtarget_enc_0(0),
      \storage_data1_reg[0]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5\,
      \storage_data1_reg[0]_0\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_6\,
      \storage_data1_reg[0]_1\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_8\,
      \storage_data1_reg[1]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\,
      \storage_data1_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_7\
    );
\gen_slave_slots[1].gen_si_read.si_transactor_ar\: entity work.\mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized1\
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_0\,
      D(0) => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_3\,
      Q(0) => \^q\(1),
      SR(0) => reset,
      aclk => aclk,
      \gen_arbiter.m_grant_enc_i_reg[0]\ => addr_arbiter_ar_n_80,
      \gen_single_issue.accept_cnt_reg_0\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6\,
      \gen_single_issue.accept_cnt_reg_1\ => \^m_valid_i_reg\,
      \gen_single_issue.active_target_enc\(1 downto 0) => \gen_single_issue.active_target_enc_22\(1 downto 0),
      \gen_single_issue.active_target_enc_reg[0]_0\ => addr_arbiter_ar_n_101,
      \gen_single_issue.active_target_enc_reg[1]_0\ => addr_arbiter_ar_n_102,
      \gen_single_issue.active_target_hot\(0) => \gen_single_issue.active_target_hot_23\(0),
      \gen_single_issue.active_target_hot_reg[0]_0\ => addr_arbiter_ar_n_10,
      \m_payload_i_reg[34]\ => \m_payload_i_reg[34]\,
      match => match_21,
      s_axi_araddr(1 downto 0) => s_axi_araddr(63 downto 62),
      s_axi_arvalid(0) => s_axi_arvalid(1),
      s_axi_rdata(31 downto 0) => s_axi_rdata(63 downto 32),
      s_axi_rready(0) => s_axi_rready(1),
      \s_axi_rready[1]\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_5\,
      s_axi_rresp(1 downto 0) => s_axi_rresp(3 downto 2),
      st_mr_rlast(2 downto 0) => st_mr_rlast(2 downto 0),
      st_mr_rmesg(67 downto 36) => st_mr_rmesg(69 downto 38),
      st_mr_rmesg(35 downto 2) => st_mr_rmesg(36 downto 3),
      st_mr_rmesg(1 downto 0) => st_mr_rmesg(1 downto 0),
      valid_qual_i140_in => valid_qual_i140_in_15
    );
\gen_slave_slots[1].gen_si_write.si_transactor_aw\: entity work.\mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized2\
     port map (
      SR(0) => reset,
      aclk => aclk,
      \gen_single_issue.active_target_enc\(1 downto 0) => \gen_single_issue.active_target_enc_24\(1 downto 0),
      \gen_single_issue.active_target_enc_reg[0]_0\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_7\,
      \gen_single_issue.active_target_enc_reg[1]_0\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_3\,
      \gen_single_issue.active_target_enc_reg[1]_1\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0\,
      \gen_single_issue.active_target_hot\(0) => \gen_single_issue.active_target_hot_25\(0),
      \gen_single_issue.active_target_hot_reg[0]_0\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\,
      m_ready_d(1 downto 0) => m_ready_d_26(1 downto 0),
      s_axi_bready(0) => s_axi_bready(1),
      s_axi_bresp(1 downto 0) => s_axi_bresp(3 downto 2),
      s_axi_bvalid(0) => \^s_axi_bvalid\(1),
      ss_aa_awready(0) => ss_aa_awready(1),
      ss_wr_awready_1 => ss_wr_awready_1,
      st_mr_bmesg(3 downto 2) => st_mr_bmesg(4 downto 3),
      st_mr_bmesg(1 downto 0) => st_mr_bmesg(1 downto 0)
    );
\gen_slave_slots[1].gen_si_write.splitter_aw_si\: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_splitter_3
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4\,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.qual_reg_reg[1]\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_3\,
      \gen_single_issue.active_target_enc\(1 downto 0) => \gen_single_issue.active_target_enc_24\(1 downto 0),
      \gen_single_issue.active_target_hot\(0) => \gen_single_issue.active_target_hot_25\(0),
      m_ready_d(1 downto 0) => m_ready_d_26(1 downto 0),
      \m_ready_d_reg[1]_0\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_6\,
      match => match_27,
      s_axi_awready(0) => \^s_axi_awready\(1),
      s_axi_awvalid(0) => s_axi_awvalid(1),
      \s_axi_awvalid[1]\(0) => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_4\,
      s_ready_i_reg => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0\,
      s_ready_i_reg_0 => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\,
      s_ready_i_reg_1 => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_7\,
      ss_aa_awready(0) => ss_aa_awready(1),
      ss_wr_awready_1 => ss_wr_awready_1,
      st_aa_awtarget_enc_2(0) => st_aa_awtarget_enc_2(0),
      valid_qual_i140_in => valid_qual_i140_in
    );
\gen_slave_slots[1].gen_si_write.wdata_router_w\: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router_4
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4\,
      \FSM_onehot_gen_axi.write_cs[2]_i_5\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_7\,
      \FSM_onehot_state_reg[1]\ => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_7\,
      \FSM_onehot_state_reg[1]_0\ => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_50\,
      SR(0) => reset,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      m_avalid => m_avalid_28,
      \m_axi_wvalid[0]_INST_0_i_1\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_43\,
      \m_axi_wvalid[0]_INST_0_i_1_0\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5\,
      \m_axi_wvalid[1]_INST_0_i_1\ => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_48\,
      \m_axi_wvalid[1]_INST_0_i_1_0\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_8\,
      m_ready_d(0) => m_ready_d_26(1),
      m_select_enc(1 downto 0) => m_select_enc_12(1 downto 0),
      m_select_enc_0(1 downto 0) => m_select_enc(1 downto 0),
      m_valid_i_reg => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_6\,
      match => match_27,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(63 downto 62),
      s_axi_awvalid(0) => s_axi_awvalid(1),
      s_axi_wlast(0) => s_axi_wlast(1),
      s_axi_wvalid(0) => s_axi_wvalid(1),
      \s_axi_wvalid[1]\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_5\,
      \s_axi_wvalid[1]_0\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_8\,
      ss_wr_awready_1 => ss_wr_awready_1,
      st_aa_awtarget_enc_2(0) => st_aa_awtarget_enc_2(0),
      \storage_data1_reg[0]\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_6\,
      \storage_data1_reg[0]_0\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_9\,
      \storage_data1_reg[1]\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\,
      \storage_data1_reg[1]_0\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_7\
    );
\gen_slave_slots[2].gen_si_read.si_transactor_ar\: entity work.\mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized3\
     port map (
      D(0) => \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_3\,
      Q(0) => \^q\(2),
      SR(0) => reset,
      aclk => aclk,
      \gen_arbiter.m_grant_enc_i_reg[0]\ => addr_arbiter_ar_n_83,
      \gen_arbiter.m_target_hot_i_reg[2]\ => addr_arbiter_ar_n_88,
      \gen_arbiter.m_target_hot_i_reg[2]_0\ => addr_arbiter_ar_n_87,
      \gen_arbiter.m_target_hot_i_reg[2]_1\ => addr_arbiter_ar_n_86,
      \gen_arbiter.m_target_hot_i_reg[2]_2\ => addr_arbiter_ar_n_85,
      \gen_single_thread.accept_cnt_reg[0]_0\ => \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_6\,
      \gen_single_thread.accept_cnt_reg[1]_0\ => \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_5\,
      \gen_single_thread.active_target_enc\(1 downto 0) => \gen_single_thread.active_target_enc\(1 downto 0),
      \gen_single_thread.active_target_enc_reg[0]_0\ => addr_arbiter_ar_n_103,
      \gen_single_thread.active_target_enc_reg[1]_0\ => addr_arbiter_ar_n_104,
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot\(0),
      \gen_single_thread.active_target_hot_reg[0]_0\ => addr_arbiter_ar_n_13,
      \gen_single_thread.s_avalid_en\ => \gen_single_thread.s_avalid_en\,
      match => match_29,
      p_2_in => p_2_in_9,
      s_axi_araddr(1 downto 0) => s_axi_araddr(95 downto 94),
      \s_axi_araddr[95]\ => \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_8\,
      s_axi_arvalid(0) => s_axi_arvalid(2),
      s_axi_rdata(31 downto 0) => s_axi_rdata(95 downto 64),
      s_axi_rlast(0) => \^s_axi_rlast\(1),
      s_axi_rresp(1 downto 0) => s_axi_rresp(5 downto 4),
      st_mr_rlast(2 downto 0) => st_mr_rlast(2 downto 0),
      st_mr_rmesg(67 downto 36) => st_mr_rmesg(69 downto 38),
      st_mr_rmesg(35 downto 2) => st_mr_rmesg(36 downto 3),
      st_mr_rmesg(1 downto 0) => st_mr_rmesg(1 downto 0),
      valid_qual_i142_in => valid_qual_i142_in_13
    );
\gen_slave_slots[2].gen_si_write.si_transactor_aw\: entity work.\mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized4\
     port map (
      SR(0) => reset,
      aclk => aclk,
      \gen_arbiter.grant_hot_reg[2]\ => addr_arbiter_aw_n_2,
      \gen_single_thread.accept_cnt_reg[4]_0\ => \^s_axi_awready\(2),
      \gen_single_thread.accept_cnt_reg[5]_0\ => \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_3\,
      \gen_single_thread.accept_cnt_reg[5]_1\ => \gen_master_slots[2].reg_slice_mi_n_22\,
      \gen_single_thread.accept_cnt_reg[5]_2\ => \gen_master_slots[0].reg_slice_mi_n_53\,
      \gen_single_thread.accept_cnt_reg[5]_3\ => \gen_master_slots[1].reg_slice_mi_n_49\,
      \gen_single_thread.active_target_enc\(1 downto 0) => \gen_single_thread.active_target_enc_31\(1 downto 0),
      \gen_single_thread.active_target_enc_reg[0]_0\ => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_6\,
      \gen_single_thread.active_target_enc_reg[1]_0\ => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0\,
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_30\(0),
      \gen_single_thread.active_target_hot_reg[0]_0\ => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3\,
      m_ready_d(1 downto 0) => m_ready_d_32(1 downto 0),
      match => match_33,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(95 downto 94),
      s_axi_awvalid(0) => s_axi_awvalid(2),
      \s_axi_awvalid[2]\(0) => \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_4\,
      s_axi_bready(0) => s_axi_bready(2),
      s_axi_bresp(1 downto 0) => s_axi_bresp(5 downto 4),
      ss_aa_awready(0) => ss_aa_awready(2),
      ss_wr_awready_2 => ss_wr_awready_2,
      st_mr_bmesg(3 downto 2) => st_mr_bmesg(4 downto 3),
      st_mr_bmesg(1 downto 0) => st_mr_bmesg(1 downto 0),
      valid_qual_i142_in => valid_qual_i142_in
    );
\gen_slave_slots[2].gen_si_write.splitter_aw_si\: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_splitter_5
     port map (
      ADDRESS_HIT_0 => \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_3\,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_single_thread.active_target_enc\(1 downto 0) => \gen_single_thread.active_target_enc_31\(1 downto 0),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_30\(0),
      m_ready_d(1 downto 0) => m_ready_d_32(1 downto 0),
      \m_ready_d_reg[1]_0\ => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_5\,
      match => match_33,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(95 downto 94),
      \s_axi_awaddr[95]\ => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_6\,
      s_axi_awready(0) => \^s_axi_awready\(2),
      s_axi_awvalid(0) => s_axi_awvalid(2),
      s_ready_i_reg => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0\,
      s_ready_i_reg_0 => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3\,
      ss_aa_awready(0) => ss_aa_awready(2),
      ss_wr_awready_2 => ss_wr_awready_2
    );
\gen_slave_slots[2].gen_si_write.wdata_router_w\: entity work.\mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router__parameterized0\
     port map (
      \FSM_onehot_gen_axi.write_cs[2]_i_3\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_7\,
      SR(0) => reset,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      m_avalid => m_avalid_34,
      m_avalid_0 => m_avalid,
      m_avalid_1 => m_avalid_8,
      m_axi_wvalid(1 downto 0) => m_axi_wvalid(1 downto 0),
      \m_axi_wvalid[0]_0\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_41\,
      \m_axi_wvalid[1]_0\ => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_47\,
      m_axi_wvalid_0_sp_1 => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_5\,
      m_axi_wvalid_1_sp_1 => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_8\,
      m_ready_d(0) => m_ready_d_32(1),
      m_select_enc(1 downto 0) => m_select_enc_12(1 downto 0),
      m_select_enc_2(1 downto 0) => m_select_enc(1 downto 0),
      m_valid_i_reg => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_5\,
      match => match_33,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(95 downto 94),
      s_axi_awvalid(0) => s_axi_awvalid(2),
      s_axi_wlast(0) => s_axi_wlast(2),
      s_axi_wvalid(0) => s_axi_wvalid(2),
      \s_axi_wvalid[2]\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_9\,
      s_ready_i_reg => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6\,
      s_ready_i_reg_0 => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_49\,
      ss_wr_awready_2 => ss_wr_awready_2,
      \storage_data1_reg[0]\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_5\,
      \storage_data1_reg[0]_0\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_8\,
      \storage_data1_reg[1]\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_4\,
      \storage_data1_reg[1]_0\ => \gen_slave_slots[2].gen_si_write.wdata_router_w_n_10\,
      \storage_data1_reg[1]_1\ => addr_arbiter_aw_n_33,
      \storage_data1_reg[1]_2\ => addr_arbiter_aw_n_32,
      \storage_data1_reg[1]_3\ => addr_arbiter_aw_n_31,
      \storage_data1_reg[1]_4\ => addr_arbiter_aw_n_30
    );
\gen_slave_slots[3].gen_si_read.si_transactor_ar\: entity work.\mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized5\
     port map (
      D(0) => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_5\,
      Q(0) => \^q\(3),
      SR(0) => reset,
      aclk => aclk,
      \gen_arbiter.any_grant_i_3\ => addr_arbiter_ar_n_84,
      \gen_arbiter.m_grant_enc_i_reg[0]\ => addr_arbiter_ar_n_82,
      \gen_single_thread.accept_cnt_reg[0]_0\ => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_7\,
      \gen_single_thread.accept_cnt_reg[3]_0\ => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_3\,
      \gen_single_thread.active_target_enc\(1 downto 0) => \gen_single_thread.active_target_enc_36\(1 downto 0),
      \gen_single_thread.active_target_enc_reg[0]_0\ => addr_arbiter_ar_n_97,
      \gen_single_thread.active_target_enc_reg[1]_0\ => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_4\,
      \gen_single_thread.active_target_enc_reg[1]_1\ => addr_arbiter_ar_n_98,
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_35\(0),
      \gen_single_thread.active_target_hot_reg[0]_0\ => addr_arbiter_ar_n_2,
      match => match,
      p_2_in => p_2_in,
      s_axi_araddr(1 downto 0) => s_axi_araddr(127 downto 126),
      \s_axi_araddr[127]\ => \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_6\,
      s_axi_arvalid(0) => s_axi_arvalid(3),
      s_axi_rdata(31 downto 0) => s_axi_rdata(127 downto 96),
      s_axi_rlast(0) => \^s_axi_rlast\(2),
      s_axi_rready(0) => s_axi_rready(3),
      s_axi_rresp(1 downto 0) => s_axi_rresp(7 downto 6),
      s_axi_rvalid(0) => \^s_axi_rvalid\(2),
      st_mr_rlast(2 downto 0) => st_mr_rlast(2 downto 0),
      st_mr_rmesg(67 downto 36) => st_mr_rmesg(69 downto 38),
      st_mr_rmesg(35 downto 2) => st_mr_rmesg(36 downto 3),
      st_mr_rmesg(1 downto 0) => st_mr_rmesg(1 downto 0),
      valid_qual_i145_in => valid_qual_i145_in
    );
splitter_aw_mi: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_splitter_6
     port map (
      Q(2 downto 0) => aa_mi_awtarget_hot(2 downto 0),
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      m_ready_d(1 downto 0) => m_ready_d_37(1 downto 0),
      \m_ready_d_reg[0]_0\ => splitter_aw_mi_n_3,
      \m_ready_d_reg[0]_1\ => addr_arbiter_aw_n_11,
      \m_ready_d_reg[1]_0\ => splitter_aw_mi_n_0,
      \m_ready_d_reg[1]_1\ => addr_arbiter_aw_n_15,
      \mi_awready_mux__1\ => \mi_awready_mux__1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 2;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "64'b0000000000000000000000000001111000000000000000000000000000010000";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "128'b00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000001000001001000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : string;
  attribute C_M_AXI_READ_CONNECTIVITY of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "64'b0000000000000000000000000000111100000000000000000000000000001111";
  attribute C_M_AXI_READ_ISSUING : string;
  attribute C_M_AXI_READ_ISSUING of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "64'b0000000000000000000000000000100000000000000000000000000000001000";
  attribute C_M_AXI_SECURE : string;
  attribute C_M_AXI_SECURE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_WRITE_CONNECTIVITY : string;
  attribute C_M_AXI_WRITE_CONNECTIVITY of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "64'b0000000000000000000000000000011100000000000000000000000000000111";
  attribute C_M_AXI_WRITE_ISSUING : string;
  attribute C_M_AXI_WRITE_ISSUING of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "64'b0000000000000000000000000000100000000000000000000000000000100000";
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 2;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 4;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "128'b00000000000000000000000000000011000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "128'b00000000000000000000000000001000000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000001";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "128'b00000000000000000000000000000010000000000000000000000000001000000000000000000000000000000000000100000000000000000000000000000001";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "axi_crossbar_v2_1_19_axi_crossbar";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "2'b11";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "2'b11";
  attribute P_ONES : string;
  attribute P_ONES of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "4'b1111";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar : entity is "4'b0111";
end mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar;

architecture STRUCTURE of mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal \^m_axi_arburst\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^m_axi_arcache\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^m_axi_arid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_arlock\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_axi_arprot\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^m_axi_arqos\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^m_axi_arsize\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal \^m_axi_awburst\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^m_axi_awcache\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^m_axi_awid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \^m_axi_awlock\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_axi_awprot\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^m_axi_awqos\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^m_axi_awsize\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^s_axi_awready\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  m_axi_araddr(63 downto 32) <= \^m_axi_araddr\(63 downto 32);
  m_axi_araddr(31 downto 0) <= \^m_axi_araddr\(63 downto 32);
  m_axi_arburst(3 downto 2) <= \^m_axi_arburst\(3 downto 2);
  m_axi_arburst(1 downto 0) <= \^m_axi_arburst\(3 downto 2);
  m_axi_arcache(7 downto 4) <= \^m_axi_arcache\(7 downto 4);
  m_axi_arcache(3 downto 0) <= \^m_axi_arcache\(7 downto 4);
  m_axi_arid(3 downto 2) <= \^m_axi_arid\(1 downto 0);
  m_axi_arid(1 downto 0) <= \^m_axi_arid\(1 downto 0);
  m_axi_arlen(15 downto 8) <= \^m_axi_arlen\(7 downto 0);
  m_axi_arlen(7 downto 0) <= \^m_axi_arlen\(7 downto 0);
  m_axi_arlock(1) <= \^m_axi_arlock\(1);
  m_axi_arlock(0) <= \^m_axi_arlock\(1);
  m_axi_arprot(5 downto 3) <= \^m_axi_arprot\(5 downto 3);
  m_axi_arprot(2 downto 0) <= \^m_axi_arprot\(5 downto 3);
  m_axi_arqos(7 downto 4) <= \^m_axi_arqos\(7 downto 4);
  m_axi_arqos(3 downto 0) <= \^m_axi_arqos\(7 downto 4);
  m_axi_arregion(7) <= \<const0>\;
  m_axi_arregion(6) <= \<const0>\;
  m_axi_arregion(5) <= \<const0>\;
  m_axi_arregion(4) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(5 downto 3) <= \^m_axi_arsize\(5 downto 3);
  m_axi_arsize(2 downto 0) <= \^m_axi_arsize\(5 downto 3);
  m_axi_aruser(1) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awaddr(63 downto 32) <= \^m_axi_awaddr\(63 downto 32);
  m_axi_awaddr(31 downto 0) <= \^m_axi_awaddr\(63 downto 32);
  m_axi_awburst(3 downto 2) <= \^m_axi_awburst\(3 downto 2);
  m_axi_awburst(1 downto 0) <= \^m_axi_awburst\(3 downto 2);
  m_axi_awcache(7 downto 4) <= \^m_axi_awcache\(7 downto 4);
  m_axi_awcache(3 downto 0) <= \^m_axi_awcache\(7 downto 4);
  m_axi_awid(3 downto 2) <= \^m_axi_awid\(1 downto 0);
  m_axi_awid(1 downto 0) <= \^m_axi_awid\(1 downto 0);
  m_axi_awlen(15 downto 8) <= \^m_axi_awlen\(15 downto 8);
  m_axi_awlen(7 downto 0) <= \^m_axi_awlen\(15 downto 8);
  m_axi_awlock(1) <= \^m_axi_awlock\(1);
  m_axi_awlock(0) <= \^m_axi_awlock\(1);
  m_axi_awprot(5 downto 3) <= \^m_axi_awprot\(5 downto 3);
  m_axi_awprot(2 downto 0) <= \^m_axi_awprot\(5 downto 3);
  m_axi_awqos(7 downto 4) <= \^m_axi_awqos\(7 downto 4);
  m_axi_awqos(3 downto 0) <= \^m_axi_awqos\(7 downto 4);
  m_axi_awregion(7) <= \<const0>\;
  m_axi_awregion(6) <= \<const0>\;
  m_axi_awregion(5) <= \<const0>\;
  m_axi_awregion(4) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(5 downto 3) <= \^m_axi_awsize\(5 downto 3);
  m_axi_awsize(2 downto 0) <= \^m_axi_awsize\(5 downto 3);
  m_axi_awuser(1) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wuser(1) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  s_axi_awready(3) <= \<const0>\;
  s_axi_awready(2 downto 0) <= \^s_axi_awready\(2 downto 0);
  s_axi_bid(7) <= \<const0>\;
  s_axi_bid(6) <= \<const0>\;
  s_axi_bid(5) <= \<const0>\;
  s_axi_bid(4) <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(7) <= \<const0>\;
  s_axi_bresp(6) <= \<const0>\;
  s_axi_bresp(5 downto 0) <= \^s_axi_bresp\(5 downto 0);
  s_axi_buser(3) <= \<const0>\;
  s_axi_buser(2) <= \<const0>\;
  s_axi_buser(1) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid(3) <= \<const0>\;
  s_axi_bvalid(2 downto 0) <= \^s_axi_bvalid\(2 downto 0);
  s_axi_rid(7) <= \<const0>\;
  s_axi_rid(6) <= \<const0>\;
  s_axi_rid(5) <= \<const0>\;
  s_axi_rid(4) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_ruser(3) <= \<const0>\;
  s_axi_ruser(2) <= \<const0>\;
  s_axi_ruser(1) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_wready(3) <= \<const0>\;
  s_axi_wready(2 downto 0) <= \^s_axi_wready\(2 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_samd.crossbar_samd\: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_crossbar
     port map (
      M_AXI_RREADY(1 downto 0) => m_axi_rready(1 downto 0),
      Q(3 downto 0) => s_axi_arready(3 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \gen_arbiter.m_mesg_i_reg[63]\(58 downto 55) => \^m_axi_awqos\(7 downto 4),
      \gen_arbiter.m_mesg_i_reg[63]\(54 downto 51) => \^m_axi_awcache\(7 downto 4),
      \gen_arbiter.m_mesg_i_reg[63]\(50 downto 49) => \^m_axi_awburst\(3 downto 2),
      \gen_arbiter.m_mesg_i_reg[63]\(48 downto 46) => \^m_axi_awprot\(5 downto 3),
      \gen_arbiter.m_mesg_i_reg[63]\(45) => \^m_axi_awlock\(1),
      \gen_arbiter.m_mesg_i_reg[63]\(44 downto 42) => \^m_axi_awsize\(5 downto 3),
      \gen_arbiter.m_mesg_i_reg[63]\(41 downto 34) => \^m_axi_awlen\(15 downto 8),
      \gen_arbiter.m_mesg_i_reg[63]\(33 downto 2) => \^m_axi_awaddr\(63 downto 32),
      \gen_arbiter.m_mesg_i_reg[63]\(1 downto 0) => \^m_axi_awid\(1 downto 0),
      \gen_arbiter.m_mesg_i_reg[63]_0\(58 downto 55) => \^m_axi_arqos\(7 downto 4),
      \gen_arbiter.m_mesg_i_reg[63]_0\(54 downto 51) => \^m_axi_arcache\(7 downto 4),
      \gen_arbiter.m_mesg_i_reg[63]_0\(50 downto 49) => \^m_axi_arburst\(3 downto 2),
      \gen_arbiter.m_mesg_i_reg[63]_0\(48 downto 46) => \^m_axi_arprot\(5 downto 3),
      \gen_arbiter.m_mesg_i_reg[63]_0\(45) => \^m_axi_arlock\(1),
      \gen_arbiter.m_mesg_i_reg[63]_0\(44 downto 42) => \^m_axi_arsize\(5 downto 3),
      \gen_arbiter.m_mesg_i_reg[63]_0\(41 downto 34) => \^m_axi_arlen\(7 downto 0),
      \gen_arbiter.m_mesg_i_reg[63]_0\(33 downto 2) => \^m_axi_araddr\(63 downto 32),
      \gen_arbiter.m_mesg_i_reg[63]_0\(1 downto 0) => \^m_axi_arid\(1 downto 0),
      m_axi_arready(1 downto 0) => m_axi_arready(1 downto 0),
      m_axi_arvalid(1 downto 0) => m_axi_arvalid(1 downto 0),
      m_axi_awready(1 downto 0) => m_axi_awready(1 downto 0),
      m_axi_awvalid(1 downto 0) => m_axi_awvalid(1 downto 0),
      m_axi_bid(3 downto 0) => m_axi_bid(3 downto 0),
      m_axi_bready(1 downto 0) => m_axi_bready(1 downto 0),
      m_axi_bresp(3 downto 0) => m_axi_bresp(3 downto 0),
      m_axi_bvalid(1 downto 0) => m_axi_bvalid(1 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(1 downto 0) => m_axi_rlast(1 downto 0),
      m_axi_rresp(3 downto 0) => m_axi_rresp(3 downto 0),
      m_axi_rvalid(1 downto 0) => m_axi_rvalid(1 downto 0),
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wlast(1 downto 0) => m_axi_wlast(1 downto 0),
      m_axi_wready(1 downto 0) => m_axi_wready(1 downto 0),
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wvalid(1 downto 0) => m_axi_wvalid(1 downto 0),
      \m_payload_i_reg[34]\ => s_axi_rlast(1),
      m_valid_i_reg => s_axi_rvalid(1),
      s_axi_araddr(127 downto 0) => s_axi_araddr(127 downto 0),
      s_axi_arburst(7 downto 0) => s_axi_arburst(7 downto 0),
      s_axi_arcache(15 downto 0) => s_axi_arcache(15 downto 0),
      s_axi_arlen(31 downto 0) => s_axi_arlen(31 downto 0),
      s_axi_arlock(3 downto 0) => s_axi_arlock(3 downto 0),
      s_axi_arprot(11 downto 0) => s_axi_arprot(11 downto 0),
      s_axi_arqos(15 downto 0) => s_axi_arqos(15 downto 0),
      s_axi_arsize(11 downto 0) => s_axi_arsize(11 downto 0),
      s_axi_arvalid(3 downto 0) => s_axi_arvalid(3 downto 0),
      s_axi_awaddr(95 downto 0) => s_axi_awaddr(95 downto 0),
      s_axi_awburst(5 downto 0) => s_axi_awburst(5 downto 0),
      s_axi_awcache(11 downto 0) => s_axi_awcache(11 downto 0),
      s_axi_awlen(23 downto 0) => s_axi_awlen(23 downto 0),
      s_axi_awlock(2 downto 0) => s_axi_awlock(2 downto 0),
      s_axi_awprot(8 downto 0) => s_axi_awprot(8 downto 0),
      s_axi_awqos(11 downto 0) => s_axi_awqos(11 downto 0),
      s_axi_awready(2 downto 0) => \^s_axi_awready\(2 downto 0),
      s_axi_awsize(8 downto 0) => s_axi_awsize(8 downto 0),
      s_axi_awvalid(2 downto 0) => s_axi_awvalid(2 downto 0),
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_bresp(5 downto 0) => \^s_axi_bresp\(5 downto 0),
      s_axi_bvalid(2 downto 0) => \^s_axi_bvalid\(2 downto 0),
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rlast(2 downto 1) => s_axi_rlast(3 downto 2),
      s_axi_rlast(0) => s_axi_rlast(0),
      s_axi_rready(3 downto 0) => s_axi_rready(3 downto 0),
      s_axi_rresp(7 downto 0) => s_axi_rresp(7 downto 0),
      s_axi_rvalid(2 downto 1) => s_axi_rvalid(3 downto 2),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      s_axi_wdata(95 downto 0) => s_axi_wdata(95 downto 0),
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wready(2 downto 0) => \^s_axi_wready\(2 downto 0),
      s_axi_wstrb(11 downto 0) => s_axi_wstrb(11 downto 0),
      s_axi_wvalid(2 downto 0) => s_axi_wvalid(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_xbar_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_xbar_0 : entity is "mcu_xbar_0,axi_crossbar_v2_1_19_axi_crossbar,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mcu_xbar_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mcu_xbar_0 : entity is "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3";
end mcu_xbar_0;

architecture STRUCTURE of mcu_xbar_0 is
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 2;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of inst : label is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is "64'b0000000000000000000000000001111000000000000000000000000000010000";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of inst : label is "128'b00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000001000001001000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : string;
  attribute C_M_AXI_READ_CONNECTIVITY of inst : label is "64'b0000000000000000000000000000111100000000000000000000000000001111";
  attribute C_M_AXI_READ_ISSUING : string;
  attribute C_M_AXI_READ_ISSUING of inst : label is "64'b0000000000000000000000000000100000000000000000000000000000001000";
  attribute C_M_AXI_SECURE : string;
  attribute C_M_AXI_SECURE of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_WRITE_CONNECTIVITY : string;
  attribute C_M_AXI_WRITE_CONNECTIVITY of inst : label is "64'b0000000000000000000000000000011100000000000000000000000000000111";
  attribute C_M_AXI_WRITE_ISSUING : string;
  attribute C_M_AXI_WRITE_ISSUING of inst : label is "64'b0000000000000000000000000000100000000000000000000000000000100000";
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of inst : label is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of inst : label is 2;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of inst : label is 4;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of inst : label is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of inst : label is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of inst : label is "128'b00000000000000000000000000000011000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of inst : label is "128'b00000000000000000000000000001000000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000001";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of inst : label is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of inst : label is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of inst : label is "128'b00000000000000000000000000000010000000000000000000000000001000000000000000000000000000000000000100000000000000000000000000000001";
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of inst : label is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of inst : label is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of inst : label is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of inst : label is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of inst : label is "2'b11";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of inst : label is "2'b11";
  attribute P_ONES : string;
  attribute P_ONES of inst : label is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of inst : label is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of inst : label is "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of inst : label is "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of inst : label is "4'b1111";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of inst : label is "4'b0111";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREGION [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREGION [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1]";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 32, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THRE" & LF &
 "ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 32, PHASE 0, CLK_DOM" & LF &
 "AIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI ARADDR [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI ARADDR [31:0] [127:96]";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARBURST [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI ARBURST [1:0] [7:6]";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE [3:0] [15:12]";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI ARID [1:0] [7:6]";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 S02_AXI ARLEN [7:0] [23:16], xilinx.com:interface:aximm:1.0 S03_AXI ARLEN [7:0] [31:24]";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI ARPROT [2:0] [11:9]";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARQOS [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI ARQOS [3:0] [15:12]";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI ARREADY [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI ARSIZE [2:0] [11:9]";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI ARVALID [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI AWADDR [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI AWADDR [31:0] [127:96]";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWBURST [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI AWBURST [1:0] [7:6]";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE [3:0] [15:12]";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI AWID [1:0] [7:6]";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 S02_AXI AWLEN [7:0] [23:16], xilinx.com:interface:aximm:1.0 S03_AXI AWLEN [7:0] [31:24]";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI AWPROT [2:0] [11:9]";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWQOS [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI AWQOS [3:0] [15:12]";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI AWREADY [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE [2:0] [11:9]";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI AWVALID [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI BID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI BID [1:0] [7:6]";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI BREADY [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI BRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI BRESP [1:0] [7:6]";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI BVALID [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI RDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI RDATA [31:0] [127:96]";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI RID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI RID [1:0] [7:6]";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RLAST [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI RLAST [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI RREADY [0:0] [3:3]";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THRE" & LF &
 "ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DO" & LF &
 "MAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S02_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDIN" & LF &
 "G 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S03_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_" & LF &
 "BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI RRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI RRESP [1:0] [7:6]";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI RVALID [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI WDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI WDATA [31:0] [127:96]";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WLAST [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI WLAST [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI WREADY [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI WSTRB [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI WSTRB [3:0] [15:12]";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI WVALID [0:0] [3:3]";
begin
inst: entity work.mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(3 downto 0) => m_axi_arburst(3 downto 0),
      m_axi_arcache(7 downto 0) => m_axi_arcache(7 downto 0),
      m_axi_arid(3 downto 0) => m_axi_arid(3 downto 0),
      m_axi_arlen(15 downto 0) => m_axi_arlen(15 downto 0),
      m_axi_arlock(1 downto 0) => m_axi_arlock(1 downto 0),
      m_axi_arprot(5 downto 0) => m_axi_arprot(5 downto 0),
      m_axi_arqos(7 downto 0) => m_axi_arqos(7 downto 0),
      m_axi_arready(1 downto 0) => m_axi_arready(1 downto 0),
      m_axi_arregion(7 downto 0) => m_axi_arregion(7 downto 0),
      m_axi_arsize(5 downto 0) => m_axi_arsize(5 downto 0),
      m_axi_aruser(1 downto 0) => NLW_inst_m_axi_aruser_UNCONNECTED(1 downto 0),
      m_axi_arvalid(1 downto 0) => m_axi_arvalid(1 downto 0),
      m_axi_awaddr(63 downto 0) => m_axi_awaddr(63 downto 0),
      m_axi_awburst(3 downto 0) => m_axi_awburst(3 downto 0),
      m_axi_awcache(7 downto 0) => m_axi_awcache(7 downto 0),
      m_axi_awid(3 downto 0) => m_axi_awid(3 downto 0),
      m_axi_awlen(15 downto 0) => m_axi_awlen(15 downto 0),
      m_axi_awlock(1 downto 0) => m_axi_awlock(1 downto 0),
      m_axi_awprot(5 downto 0) => m_axi_awprot(5 downto 0),
      m_axi_awqos(7 downto 0) => m_axi_awqos(7 downto 0),
      m_axi_awready(1 downto 0) => m_axi_awready(1 downto 0),
      m_axi_awregion(7 downto 0) => m_axi_awregion(7 downto 0),
      m_axi_awsize(5 downto 0) => m_axi_awsize(5 downto 0),
      m_axi_awuser(1 downto 0) => NLW_inst_m_axi_awuser_UNCONNECTED(1 downto 0),
      m_axi_awvalid(1 downto 0) => m_axi_awvalid(1 downto 0),
      m_axi_bid(3 downto 0) => m_axi_bid(3 downto 0),
      m_axi_bready(1 downto 0) => m_axi_bready(1 downto 0),
      m_axi_bresp(3 downto 0) => m_axi_bresp(3 downto 0),
      m_axi_buser(1 downto 0) => B"00",
      m_axi_bvalid(1 downto 0) => m_axi_bvalid(1 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(1 downto 0) => m_axi_rlast(1 downto 0),
      m_axi_rready(1 downto 0) => m_axi_rready(1 downto 0),
      m_axi_rresp(3 downto 0) => m_axi_rresp(3 downto 0),
      m_axi_ruser(1 downto 0) => B"00",
      m_axi_rvalid(1 downto 0) => m_axi_rvalid(1 downto 0),
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast(1 downto 0) => m_axi_wlast(1 downto 0),
      m_axi_wready(1 downto 0) => m_axi_wready(1 downto 0),
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(1 downto 0) => NLW_inst_m_axi_wuser_UNCONNECTED(1 downto 0),
      m_axi_wvalid(1 downto 0) => m_axi_wvalid(1 downto 0),
      s_axi_araddr(127 downto 0) => s_axi_araddr(127 downto 0),
      s_axi_arburst(7 downto 0) => s_axi_arburst(7 downto 0),
      s_axi_arcache(15 downto 0) => s_axi_arcache(15 downto 0),
      s_axi_arid(7 downto 0) => s_axi_arid(7 downto 0),
      s_axi_arlen(31 downto 0) => s_axi_arlen(31 downto 0),
      s_axi_arlock(3 downto 0) => s_axi_arlock(3 downto 0),
      s_axi_arprot(11 downto 0) => s_axi_arprot(11 downto 0),
      s_axi_arqos(15 downto 0) => s_axi_arqos(15 downto 0),
      s_axi_arready(3 downto 0) => s_axi_arready(3 downto 0),
      s_axi_arsize(11 downto 0) => s_axi_arsize(11 downto 0),
      s_axi_aruser(3 downto 0) => B"0000",
      s_axi_arvalid(3 downto 0) => s_axi_arvalid(3 downto 0),
      s_axi_awaddr(127 downto 0) => s_axi_awaddr(127 downto 0),
      s_axi_awburst(7 downto 0) => s_axi_awburst(7 downto 0),
      s_axi_awcache(15 downto 0) => s_axi_awcache(15 downto 0),
      s_axi_awid(7 downto 0) => s_axi_awid(7 downto 0),
      s_axi_awlen(31 downto 0) => s_axi_awlen(31 downto 0),
      s_axi_awlock(3 downto 0) => s_axi_awlock(3 downto 0),
      s_axi_awprot(11 downto 0) => s_axi_awprot(11 downto 0),
      s_axi_awqos(15 downto 0) => s_axi_awqos(15 downto 0),
      s_axi_awready(3 downto 0) => s_axi_awready(3 downto 0),
      s_axi_awsize(11 downto 0) => s_axi_awsize(11 downto 0),
      s_axi_awuser(3 downto 0) => B"0000",
      s_axi_awvalid(3 downto 0) => s_axi_awvalid(3 downto 0),
      s_axi_bid(7 downto 0) => s_axi_bid(7 downto 0),
      s_axi_bready(3 downto 0) => s_axi_bready(3 downto 0),
      s_axi_bresp(7 downto 0) => s_axi_bresp(7 downto 0),
      s_axi_buser(3 downto 0) => NLW_inst_s_axi_buser_UNCONNECTED(3 downto 0),
      s_axi_bvalid(3 downto 0) => s_axi_bvalid(3 downto 0),
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(7 downto 0) => s_axi_rid(7 downto 0),
      s_axi_rlast(3 downto 0) => s_axi_rlast(3 downto 0),
      s_axi_rready(3 downto 0) => s_axi_rready(3 downto 0),
      s_axi_rresp(7 downto 0) => s_axi_rresp(7 downto 0),
      s_axi_ruser(3 downto 0) => NLW_inst_s_axi_ruser_UNCONNECTED(3 downto 0),
      s_axi_rvalid(3 downto 0) => s_axi_rvalid(3 downto 0),
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wid(7 downto 0) => B"00000000",
      s_axi_wlast(3 downto 0) => s_axi_wlast(3 downto 0),
      s_axi_wready(3 downto 0) => s_axi_wready(3 downto 0),
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wuser(3 downto 0) => B"0000",
      s_axi_wvalid(3 downto 0) => s_axi_wvalid(3 downto 0)
    );
end STRUCTURE;
