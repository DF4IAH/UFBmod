// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 28 18:10:01 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_xbar_0 -prefix
//               mcu_xbar_0_ mcu_xbar_0_sim_netlist.v
// Design      : mcu_xbar_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter
   (aa_mi_arvalid,
    SR,
    \gen_arbiter.s_ready_i_reg[3]_0 ,
    ADDRESS_HIT_0,
    Q,
    \gen_arbiter.s_ready_i_reg[0]_0 ,
    ADDRESS_HIT_0_0,
    \gen_arbiter.s_ready_i_reg[1]_0 ,
    ADDRESS_HIT_0_1,
    ADDRESS_HIT_0_2,
    \gen_arbiter.s_ready_i_reg[2]_0 ,
    \gen_arbiter.m_mesg_i_reg[1]_0 ,
    \gen_arbiter.m_mesg_i_reg[63]_0 ,
    \gen_arbiter.m_target_hot_i_reg[2]_0 ,
    \gen_arbiter.m_mesg_i_reg[0]_0 ,
    \gen_arbiter.m_valid_i_reg_0 ,
    \gen_arbiter.last_rr_hot_reg[2]_0 ,
    \gen_arbiter.last_rr_hot_reg[0]_0 ,
    match,
    \gen_arbiter.last_rr_hot_reg[2]_1 ,
    \gen_arbiter.last_rr_hot_reg[0]_1 ,
    s_axi_araddr_126_sp_1,
    s_axi_araddr_87_sp_1,
    s_axi_araddr_81_sp_1,
    s_axi_araddr_91_sp_1,
    s_axi_araddr_95_sp_1,
    \gen_arbiter.m_valid_i_reg_1 ,
    m_axi_arvalid,
    \gen_arbiter.m_valid_i_reg_2 ,
    \gen_master_slots[0].r_issuing_cnt_reg[0] ,
    \gen_master_slots[1].r_issuing_cnt_reg[8] ,
    \gen_axi.read_cs_reg[0] ,
    \gen_axi.s_axi_arready_i_reg ,
    \gen_arbiter.s_ready_i_reg[3]_1 ,
    \gen_arbiter.s_ready_i_reg[3]_2 ,
    s_axi_araddr_30_sp_1,
    \gen_arbiter.s_ready_i_reg[0]_1 ,
    s_axi_araddr_62_sp_1,
    \gen_arbiter.s_ready_i_reg[1]_1 ,
    \gen_arbiter.s_ready_i_reg[2]_1 ,
    \gen_arbiter.s_ready_i_reg[2]_2 ,
    aclk,
    \gen_single_thread.active_target_hot ,
    \gen_single_issue.active_target_hot ,
    \gen_single_issue.active_target_hot_3 ,
    \gen_single_thread.active_target_hot_4 ,
    p_15_in,
    mi_arready_2,
    p_20_in,
    aresetn_d,
    \gen_arbiter.any_grant_reg_0 ,
    \gen_arbiter.any_grant_reg_1 ,
    m_axi_arready,
    \gen_arbiter.m_grant_enc_i_reg[0]_0 ,
    valid_qual_i,
    \gen_arbiter.m_grant_enc_i_reg[0]_1 ,
    \gen_arbiter.m_grant_enc_i_reg[0]_2 ,
    match_5,
    match_6,
    match_7,
    \gen_arbiter.m_target_hot_i_reg[1]_0 ,
    \gen_arbiter.m_target_hot_i_reg[1]_1 ,
    s_axi_arvalid,
    s_axi_araddr,
    r_issuing_cnt,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arqos,
    \gen_master_slots[2].r_issuing_cnt_reg[16] ,
    \gen_single_thread.active_target_enc ,
    \gen_single_issue.active_target_enc ,
    \gen_single_issue.active_target_enc_8 ,
    \gen_single_thread.active_target_enc_9 ,
    D);
  output aa_mi_arvalid;
  output [0:0]SR;
  output \gen_arbiter.s_ready_i_reg[3]_0 ;
  output ADDRESS_HIT_0;
  output [3:0]Q;
  output \gen_arbiter.s_ready_i_reg[0]_0 ;
  output ADDRESS_HIT_0_0;
  output \gen_arbiter.s_ready_i_reg[1]_0 ;
  output ADDRESS_HIT_0_1;
  output ADDRESS_HIT_0_2;
  output \gen_arbiter.s_ready_i_reg[2]_0 ;
  output \gen_arbiter.m_mesg_i_reg[1]_0 ;
  output [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  output [2:0]\gen_arbiter.m_target_hot_i_reg[2]_0 ;
  output \gen_arbiter.m_mesg_i_reg[0]_0 ;
  output \gen_arbiter.m_valid_i_reg_0 ;
  output \gen_arbiter.last_rr_hot_reg[2]_0 ;
  output \gen_arbiter.last_rr_hot_reg[0]_0 ;
  output match;
  output \gen_arbiter.last_rr_hot_reg[2]_1 ;
  output \gen_arbiter.last_rr_hot_reg[0]_1 ;
  output s_axi_araddr_126_sp_1;
  output s_axi_araddr_87_sp_1;
  output s_axi_araddr_81_sp_1;
  output s_axi_araddr_91_sp_1;
  output s_axi_araddr_95_sp_1;
  output \gen_arbiter.m_valid_i_reg_1 ;
  output [1:0]m_axi_arvalid;
  output \gen_arbiter.m_valid_i_reg_2 ;
  output \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  output \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  output \gen_axi.read_cs_reg[0] ;
  output \gen_axi.s_axi_arready_i_reg ;
  output \gen_arbiter.s_ready_i_reg[3]_1 ;
  output \gen_arbiter.s_ready_i_reg[3]_2 ;
  output s_axi_araddr_30_sp_1;
  output \gen_arbiter.s_ready_i_reg[0]_1 ;
  output s_axi_araddr_62_sp_1;
  output \gen_arbiter.s_ready_i_reg[1]_1 ;
  output \gen_arbiter.s_ready_i_reg[2]_1 ;
  output \gen_arbiter.s_ready_i_reg[2]_2 ;
  input aclk;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]\gen_single_issue.active_target_hot ;
  input [0:0]\gen_single_issue.active_target_hot_3 ;
  input [0:0]\gen_single_thread.active_target_hot_4 ;
  input p_15_in;
  input mi_arready_2;
  input [1:0]p_20_in;
  input aresetn_d;
  input \gen_arbiter.any_grant_reg_0 ;
  input \gen_arbiter.any_grant_reg_1 ;
  input [1:0]m_axi_arready;
  input \gen_arbiter.m_grant_enc_i_reg[0]_0 ;
  input [0:0]valid_qual_i;
  input \gen_arbiter.m_grant_enc_i_reg[0]_1 ;
  input \gen_arbiter.m_grant_enc_i_reg[0]_2 ;
  input match_5;
  input match_6;
  input match_7;
  input \gen_arbiter.m_target_hot_i_reg[1]_0 ;
  input \gen_arbiter.m_target_hot_i_reg[1]_1 ;
  input [3:0]s_axi_arvalid;
  input [127:0]s_axi_araddr;
  input [6:0]r_issuing_cnt;
  input [31:0]s_axi_arlen;
  input [11:0]s_axi_arsize;
  input [3:0]s_axi_arlock;
  input [11:0]s_axi_arprot;
  input [7:0]s_axi_arburst;
  input [15:0]s_axi_arcache;
  input [15:0]s_axi_arqos;
  input \gen_master_slots[2].r_issuing_cnt_reg[16] ;
  input [1:0]\gen_single_thread.active_target_enc ;
  input [1:0]\gen_single_issue.active_target_enc ;
  input [1:0]\gen_single_issue.active_target_enc_8 ;
  input [1:0]\gen_single_thread.active_target_enc_9 ;
  input [3:0]D;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_0;
  wire ADDRESS_HIT_0_1;
  wire ADDRESS_HIT_0_2;
  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aa_mi_arvalid;
  wire aclk;
  wire aresetn_d;
  wire [1:0]f_hot2enc_return;
  wire \gen_arbiter.any_grant_i_1__0_n_0 ;
  wire \gen_arbiter.any_grant_reg_0 ;
  wire \gen_arbiter.any_grant_reg_1 ;
  wire \gen_arbiter.any_grant_reg_n_0 ;
  wire \gen_arbiter.grant_hot[3]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[3]_i_2_n_0 ;
  wire \gen_arbiter.grant_hot[3]_i_3_n_0 ;
  wire \gen_arbiter.grant_hot_reg_n_0_[0] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[1] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[2] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[3] ;
  wire \gen_arbiter.last_rr_hot[1]_i_2_n_0 ;
  wire \gen_arbiter.last_rr_hot[2]_i_2_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_10_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_3_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_8_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_9_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg[0]_0 ;
  wire \gen_arbiter.last_rr_hot_reg[0]_1 ;
  wire \gen_arbiter.last_rr_hot_reg[2]_0 ;
  wire \gen_arbiter.last_rr_hot_reg[2]_1 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_0 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_1 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_2 ;
  wire \gen_arbiter.m_mesg_i_reg[0]_0 ;
  wire \gen_arbiter.m_mesg_i_reg[1]_0 ;
  wire [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_10_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_11_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_12_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_13_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_6_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_7_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_8_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_9_n_0 ;
  wire \gen_arbiter.m_target_hot_i[1]_i_4_n_0 ;
  wire \gen_arbiter.m_target_hot_i[1]_i_5_n_0 ;
  wire \gen_arbiter.m_target_hot_i[1]_i_6_n_0 ;
  wire \gen_arbiter.m_target_hot_i[2]_i_10_n_0 ;
  wire \gen_arbiter.m_target_hot_i[2]_i_11_n_0 ;
  wire \gen_arbiter.m_target_hot_i[2]_i_12_n_0 ;
  wire \gen_arbiter.m_target_hot_i[2]_i_13_n_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[1]_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[1]_1 ;
  wire [2:0]\gen_arbiter.m_target_hot_i_reg[2]_0 ;
  wire \gen_arbiter.m_valid_i_i_1__0_n_0 ;
  wire \gen_arbiter.m_valid_i_reg_0 ;
  wire \gen_arbiter.m_valid_i_reg_1 ;
  wire \gen_arbiter.m_valid_i_reg_2 ;
  wire \gen_arbiter.s_ready_i[3]_i_1_n_0 ;
  wire \gen_arbiter.s_ready_i_reg[0]_0 ;
  wire \gen_arbiter.s_ready_i_reg[0]_1 ;
  wire \gen_arbiter.s_ready_i_reg[1]_0 ;
  wire \gen_arbiter.s_ready_i_reg[1]_1 ;
  wire \gen_arbiter.s_ready_i_reg[2]_0 ;
  wire \gen_arbiter.s_ready_i_reg[2]_1 ;
  wire \gen_arbiter.s_ready_i_reg[2]_2 ;
  wire \gen_arbiter.s_ready_i_reg[3]_0 ;
  wire \gen_arbiter.s_ready_i_reg[3]_1 ;
  wire \gen_arbiter.s_ready_i_reg[3]_2 ;
  wire \gen_axi.read_cs_reg[0] ;
  wire \gen_axi.s_axi_arready_i_reg ;
  wire \gen_axi.s_axi_rlast_i_i_4_n_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  wire \gen_master_slots[2].r_issuing_cnt_reg[16] ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire [1:0]\gen_single_issue.active_target_enc_8 ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire [0:0]\gen_single_issue.active_target_hot_3 ;
  wire [1:0]\gen_single_thread.active_target_enc ;
  wire [1:0]\gen_single_thread.active_target_enc_9 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_4 ;
  wire grant_hot;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_arvalid;
  wire [63:0]m_mesg_mux;
  wire [2:0]m_target_hot_mux;
  wire match;
  wire match_5;
  wire match_6;
  wire match_7;
  wire mi_arready_2;
  wire p_0_in38_in;
  wire p_15_in;
  wire p_1_in;
  wire [1:0]p_20_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_6_in29_in;
  wire p_7_in20_in;
  wire [3:0]qual_reg;
  wire [6:0]r_issuing_cnt;
  wire [127:0]s_axi_araddr;
  wire s_axi_araddr_126_sn_1;
  wire s_axi_araddr_30_sn_1;
  wire s_axi_araddr_62_sn_1;
  wire s_axi_araddr_81_sn_1;
  wire s_axi_araddr_87_sn_1;
  wire s_axi_araddr_91_sn_1;
  wire s_axi_araddr_95_sn_1;
  wire [7:0]s_axi_arburst;
  wire [15:0]s_axi_arcache;
  wire [31:0]s_axi_arlen;
  wire [3:0]s_axi_arlock;
  wire [11:0]s_axi_arprot;
  wire [15:0]s_axi_arqos;
  wire [11:0]s_axi_arsize;
  wire [3:0]s_axi_arvalid;
  wire [0:0]valid_qual_i;

  assign s_axi_araddr_126_sp_1 = s_axi_araddr_126_sn_1;
  assign s_axi_araddr_30_sp_1 = s_axi_araddr_30_sn_1;
  assign s_axi_araddr_62_sp_1 = s_axi_araddr_62_sn_1;
  assign s_axi_araddr_81_sp_1 = s_axi_araddr_81_sn_1;
  assign s_axi_araddr_87_sp_1 = s_axi_araddr_87_sn_1;
  assign s_axi_araddr_91_sp_1 = s_axi_araddr_91_sn_1;
  assign s_axi_araddr_95_sp_1 = s_axi_araddr_95_sn_1;
  LUT6 #(
    .INIT(64'hAAAA888000000000)) 
    \gen_arbiter.any_grant_i_1__0 
       (.I0(aresetn_d),
        .I1(\gen_arbiter.last_rr_hot[3]_i_3_n_0 ),
        .I2(\gen_arbiter.any_grant_reg_0 ),
        .I3(\gen_arbiter.any_grant_reg_1 ),
        .I4(\gen_arbiter.any_grant_reg_n_0 ),
        .I5(\gen_arbiter.grant_hot[3]_i_2_n_0 ),
        .O(\gen_arbiter.any_grant_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_arbiter.any_grant_i_8 
       (.I0(s_axi_araddr[126]),
        .I1(s_axi_araddr[127]),
        .O(s_axi_araddr_126_sn_1));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1__0_n_0 ),
        .Q(\gen_arbiter.any_grant_reg_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_arbiter.grant_hot[3]_i_1 
       (.I0(\gen_arbiter.grant_hot[3]_i_2_n_0 ),
        .I1(aresetn_d),
        .O(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h07770000FFFFFFFF)) 
    \gen_arbiter.grant_hot[3]_i_2 
       (.I0(\gen_arbiter.m_target_hot_i_reg[2]_0 [0]),
        .I1(m_axi_arready[0]),
        .I2(m_axi_arready[1]),
        .I3(\gen_arbiter.m_target_hot_i_reg[2]_0 [1]),
        .I4(\gen_arbiter.grant_hot[3]_i_3_n_0 ),
        .I5(aa_mi_arvalid),
        .O(\gen_arbiter.grant_hot[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_arbiter.grant_hot[3]_i_3 
       (.I0(\gen_arbiter.m_target_hot_i_reg[2]_0 [2]),
        .I1(mi_arready_2),
        .O(\gen_arbiter.grant_hot[3]_i_3_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .R(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .R(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[0]_1 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .R(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[3] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[2]_1 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[3] ),
        .R(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00020)) 
    \gen_arbiter.last_rr_hot[0]_i_1 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_10_n_0 ),
        .I1(p_6_in29_in),
        .I2(\gen_arbiter.last_rr_hot[3]_i_8_n_0 ),
        .I3(p_0_in38_in),
        .I4(p_5_in),
        .I5(p_6_in),
        .O(\gen_arbiter.last_rr_hot_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F400000000)) 
    \gen_arbiter.last_rr_hot[1]_i_1 
       (.I0(p_0_in38_in),
        .I1(\gen_arbiter.last_rr_hot[1]_i_2_n_0 ),
        .I2(\gen_arbiter.last_rr_hot[2]_i_2_n_0 ),
        .I3(\gen_arbiter.last_rr_hot[3]_i_8_n_0 ),
        .I4(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I5(p_7_in20_in),
        .O(\gen_arbiter.last_rr_hot_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \gen_arbiter.last_rr_hot[1]_i_2 
       (.I0(p_4_in),
        .I1(qual_reg[2]),
        .I2(s_axi_arvalid[2]),
        .I3(Q[2]),
        .O(\gen_arbiter.last_rr_hot[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00020)) 
    \gen_arbiter.last_rr_hot[2]_i_1 
       (.I0(\gen_arbiter.last_rr_hot[2]_i_2_n_0 ),
        .I1(\gen_arbiter.last_rr_hot[3]_i_8_n_0 ),
        .I2(p_6_in29_in),
        .I3(p_7_in20_in),
        .I4(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I5(p_4_in),
        .O(\gen_arbiter.last_rr_hot_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFBF00)) 
    \gen_arbiter.last_rr_hot[2]_i_2 
       (.I0(Q[3]),
        .I1(s_axi_arvalid[3]),
        .I2(qual_reg[3]),
        .I3(p_5_in),
        .I4(p_6_in),
        .O(\gen_arbiter.last_rr_hot[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_arbiter.last_rr_hot[2]_i_3 
       (.I0(Q[1]),
        .I1(s_axi_arvalid[1]),
        .I2(qual_reg[1]),
        .O(p_7_in20_in));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA888)) 
    \gen_arbiter.last_rr_hot[3]_i_1 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_3_n_0 ),
        .I1(\gen_arbiter.m_grant_enc_i_reg[0]_0 ),
        .I2(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .I3(valid_qual_i),
        .I4(\gen_arbiter.m_grant_enc_i_reg[0]_1 ),
        .I5(\gen_arbiter.m_grant_enc_i_reg[0]_2 ),
        .O(grant_hot));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFBF00)) 
    \gen_arbiter.last_rr_hot[3]_i_10 
       (.I0(Q[1]),
        .I1(s_axi_arvalid[1]),
        .I2(qual_reg[1]),
        .I3(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I4(p_4_in),
        .O(\gen_arbiter.last_rr_hot[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_arbiter.last_rr_hot[3]_i_11 
       (.I0(Q[2]),
        .I1(s_axi_arvalid[2]),
        .I2(qual_reg[2]),
        .O(p_6_in29_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_arbiter.last_rr_hot[3]_i_12 
       (.I0(Q[3]),
        .I1(s_axi_arvalid[3]),
        .I2(qual_reg[3]),
        .O(p_0_in38_in));
  LUT6 #(
    .INIT(64'hFFFF00F400000000)) 
    \gen_arbiter.last_rr_hot[3]_i_2 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_8_n_0 ),
        .I1(\gen_arbiter.last_rr_hot[3]_i_9_n_0 ),
        .I2(\gen_arbiter.last_rr_hot[3]_i_10_n_0 ),
        .I3(p_6_in29_in),
        .I4(p_5_in),
        .I5(p_0_in38_in),
        .O(\gen_arbiter.last_rr_hot_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h11111110)) 
    \gen_arbiter.last_rr_hot[3]_i_3 
       (.I0(aa_mi_arvalid),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .I3(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .I4(f_hot2enc_return[1]),
        .O(\gen_arbiter.last_rr_hot[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_arbiter.last_rr_hot[3]_i_8 
       (.I0(Q[0]),
        .I1(s_axi_arvalid[0]),
        .I2(qual_reg[0]),
        .O(\gen_arbiter.last_rr_hot[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAA2A)) 
    \gen_arbiter.last_rr_hot[3]_i_9 
       (.I0(p_6_in),
        .I1(qual_reg[1]),
        .I2(s_axi_arvalid[1]),
        .I3(Q[1]),
        .O(\gen_arbiter.last_rr_hot[3]_i_9_n_0 ));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SR));
  FDRE \gen_arbiter.last_rr_hot_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .Q(p_4_in),
        .R(SR));
  FDRE \gen_arbiter.last_rr_hot_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[0]_1 ),
        .Q(p_5_in),
        .R(SR));
  FDSE \gen_arbiter.last_rr_hot_reg[3] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[2]_1 ),
        .Q(p_6_in),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.m_grant_enc_i[0]_i_1 
       (.I0(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .I1(\gen_arbiter.last_rr_hot_reg[2]_1 ),
        .O(f_hot2enc_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.m_grant_enc_i[1]_i_1 
       (.I0(\gen_arbiter.last_rr_hot_reg[0]_1 ),
        .I1(\gen_arbiter.last_rr_hot_reg[2]_1 ),
        .O(f_hot2enc_return[1]));
  FDRE \gen_arbiter.m_grant_enc_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(f_hot2enc_return[0]),
        .Q(m_mesg_mux[0]),
        .R(SR));
  FDRE \gen_arbiter.m_grant_enc_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(f_hot2enc_return[1]),
        .Q(m_mesg_mux[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[10]_i_1__0 
       (.I0(s_axi_araddr[104]),
        .I1(s_axi_araddr[8]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[40]),
        .I5(s_axi_araddr[72]),
        .O(m_mesg_mux[10]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[11]_i_1__0 
       (.I0(s_axi_araddr[105]),
        .I1(s_axi_araddr[9]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[41]),
        .I5(s_axi_araddr[73]),
        .O(m_mesg_mux[11]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[12]_i_1__0 
       (.I0(s_axi_araddr[106]),
        .I1(s_axi_araddr[10]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[42]),
        .I5(s_axi_araddr[74]),
        .O(m_mesg_mux[12]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[13]_i_1__0 
       (.I0(s_axi_araddr[107]),
        .I1(s_axi_araddr[11]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[43]),
        .I5(s_axi_araddr[75]),
        .O(m_mesg_mux[13]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[14]_i_1__0 
       (.I0(s_axi_araddr[108]),
        .I1(s_axi_araddr[12]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[44]),
        .I5(s_axi_araddr[76]),
        .O(m_mesg_mux[14]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[15]_i_1__0 
       (.I0(s_axi_araddr[109]),
        .I1(s_axi_araddr[13]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[45]),
        .I5(s_axi_araddr[77]),
        .O(m_mesg_mux[15]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[16]_i_1__0 
       (.I0(s_axi_araddr[110]),
        .I1(s_axi_araddr[14]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[46]),
        .I5(s_axi_araddr[78]),
        .O(m_mesg_mux[16]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[17]_i_1__0 
       (.I0(s_axi_araddr[111]),
        .I1(s_axi_araddr[15]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[47]),
        .I5(s_axi_araddr[79]),
        .O(m_mesg_mux[17]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[18]_i_1__0 
       (.I0(s_axi_araddr[112]),
        .I1(s_axi_araddr[16]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[48]),
        .I5(s_axi_araddr[80]),
        .O(m_mesg_mux[18]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[19]_i_1__0 
       (.I0(s_axi_araddr[113]),
        .I1(s_axi_araddr[17]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[49]),
        .I5(s_axi_araddr[81]),
        .O(m_mesg_mux[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[1]_i_1 
       (.I0(aresetn_d),
        .O(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[1]_i_1__0 
       (.I0(aa_mi_arvalid),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[20]_i_1__0 
       (.I0(s_axi_araddr[114]),
        .I1(s_axi_araddr[18]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[50]),
        .I5(s_axi_araddr[82]),
        .O(m_mesg_mux[20]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[21]_i_1__0 
       (.I0(s_axi_araddr[115]),
        .I1(s_axi_araddr[19]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[51]),
        .I5(s_axi_araddr[83]),
        .O(m_mesg_mux[21]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[22]_i_1__0 
       (.I0(s_axi_araddr[116]),
        .I1(s_axi_araddr[20]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[52]),
        .I5(s_axi_araddr[84]),
        .O(m_mesg_mux[22]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[23]_i_1__0 
       (.I0(s_axi_araddr[117]),
        .I1(s_axi_araddr[21]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[53]),
        .I5(s_axi_araddr[85]),
        .O(m_mesg_mux[23]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[24]_i_1__0 
       (.I0(s_axi_araddr[118]),
        .I1(s_axi_araddr[22]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[54]),
        .I5(s_axi_araddr[86]),
        .O(m_mesg_mux[24]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[25]_i_1__0 
       (.I0(s_axi_araddr[119]),
        .I1(s_axi_araddr[23]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[55]),
        .I5(s_axi_araddr[87]),
        .O(m_mesg_mux[25]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[26]_i_1__0 
       (.I0(s_axi_araddr[120]),
        .I1(s_axi_araddr[24]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[56]),
        .I5(s_axi_araddr[88]),
        .O(m_mesg_mux[26]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[27]_i_1__0 
       (.I0(s_axi_araddr[121]),
        .I1(s_axi_araddr[25]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[57]),
        .I5(s_axi_araddr[89]),
        .O(m_mesg_mux[27]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[28]_i_1__0 
       (.I0(s_axi_araddr[122]),
        .I1(s_axi_araddr[26]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[58]),
        .I5(s_axi_araddr[90]),
        .O(m_mesg_mux[28]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[29]_i_1__0 
       (.I0(s_axi_araddr[123]),
        .I1(s_axi_araddr[27]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[59]),
        .I5(s_axi_araddr[91]),
        .O(m_mesg_mux[29]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[2]_i_1__0 
       (.I0(s_axi_araddr[96]),
        .I1(s_axi_araddr[0]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[32]),
        .I5(s_axi_araddr[64]),
        .O(m_mesg_mux[2]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[30]_i_1__0 
       (.I0(s_axi_araddr[124]),
        .I1(s_axi_araddr[28]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[60]),
        .I5(s_axi_araddr[92]),
        .O(m_mesg_mux[30]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[31]_i_1__0 
       (.I0(s_axi_araddr[125]),
        .I1(s_axi_araddr[29]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[61]),
        .I5(s_axi_araddr[93]),
        .O(m_mesg_mux[31]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[32]_i_1__0 
       (.I0(s_axi_araddr[126]),
        .I1(s_axi_araddr[30]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[62]),
        .I5(s_axi_araddr[94]),
        .O(m_mesg_mux[32]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[33]_i_1__0 
       (.I0(s_axi_araddr[127]),
        .I1(s_axi_araddr[31]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[63]),
        .I5(s_axi_araddr[95]),
        .O(m_mesg_mux[33]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[34]_i_1__0 
       (.I0(s_axi_arlen[24]),
        .I1(s_axi_arlen[0]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arlen[8]),
        .I5(s_axi_arlen[16]),
        .O(m_mesg_mux[34]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[35]_i_1__0 
       (.I0(s_axi_arlen[25]),
        .I1(s_axi_arlen[1]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arlen[9]),
        .I5(s_axi_arlen[17]),
        .O(m_mesg_mux[35]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[36]_i_1__0 
       (.I0(s_axi_arlen[26]),
        .I1(s_axi_arlen[2]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arlen[10]),
        .I5(s_axi_arlen[18]),
        .O(m_mesg_mux[36]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[37]_i_1__0 
       (.I0(s_axi_arlen[27]),
        .I1(s_axi_arlen[3]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arlen[11]),
        .I5(s_axi_arlen[19]),
        .O(m_mesg_mux[37]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[38]_i_1__0 
       (.I0(s_axi_arlen[28]),
        .I1(s_axi_arlen[4]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arlen[12]),
        .I5(s_axi_arlen[20]),
        .O(m_mesg_mux[38]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[39]_i_1__0 
       (.I0(s_axi_arlen[29]),
        .I1(s_axi_arlen[5]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arlen[13]),
        .I5(s_axi_arlen[21]),
        .O(m_mesg_mux[39]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[3]_i_1__0 
       (.I0(s_axi_araddr[97]),
        .I1(s_axi_araddr[1]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[33]),
        .I5(s_axi_araddr[65]),
        .O(m_mesg_mux[3]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[40]_i_1__0 
       (.I0(s_axi_arlen[30]),
        .I1(s_axi_arlen[6]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arlen[14]),
        .I5(s_axi_arlen[22]),
        .O(m_mesg_mux[40]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[41]_i_1__0 
       (.I0(s_axi_arlen[31]),
        .I1(s_axi_arlen[7]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arlen[15]),
        .I5(s_axi_arlen[23]),
        .O(m_mesg_mux[41]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[42]_i_1__0 
       (.I0(s_axi_arsize[9]),
        .I1(s_axi_arsize[0]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arsize[3]),
        .I5(s_axi_arsize[6]),
        .O(m_mesg_mux[42]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[43]_i_1__0 
       (.I0(s_axi_arsize[10]),
        .I1(s_axi_arsize[1]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arsize[4]),
        .I5(s_axi_arsize[7]),
        .O(m_mesg_mux[43]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[44]_i_1__0 
       (.I0(s_axi_arsize[11]),
        .I1(s_axi_arsize[2]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arsize[5]),
        .I5(s_axi_arsize[8]),
        .O(m_mesg_mux[44]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[45]_i_1__0 
       (.I0(s_axi_arlock[3]),
        .I1(s_axi_arlock[0]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arlock[1]),
        .I5(s_axi_arlock[2]),
        .O(m_mesg_mux[45]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[47]_i_1__0 
       (.I0(s_axi_arprot[9]),
        .I1(s_axi_arprot[0]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arprot[3]),
        .I5(s_axi_arprot[6]),
        .O(m_mesg_mux[47]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[48]_i_1__0 
       (.I0(s_axi_arprot[10]),
        .I1(s_axi_arprot[1]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arprot[4]),
        .I5(s_axi_arprot[7]),
        .O(m_mesg_mux[48]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[49]_i_1__0 
       (.I0(s_axi_arprot[11]),
        .I1(s_axi_arprot[2]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arprot[5]),
        .I5(s_axi_arprot[8]),
        .O(m_mesg_mux[49]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[4]_i_1__0 
       (.I0(s_axi_araddr[98]),
        .I1(s_axi_araddr[2]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[34]),
        .I5(s_axi_araddr[66]),
        .O(m_mesg_mux[4]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[54]_i_1__0 
       (.I0(s_axi_arburst[6]),
        .I1(s_axi_arburst[0]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arburst[2]),
        .I5(s_axi_arburst[4]),
        .O(m_mesg_mux[54]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[55]_i_1__0 
       (.I0(s_axi_arburst[7]),
        .I1(s_axi_arburst[1]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arburst[3]),
        .I5(s_axi_arburst[5]),
        .O(m_mesg_mux[55]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[56]_i_1__0 
       (.I0(s_axi_arcache[12]),
        .I1(s_axi_arcache[0]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arcache[4]),
        .I5(s_axi_arcache[8]),
        .O(m_mesg_mux[56]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[57]_i_1__0 
       (.I0(s_axi_arcache[13]),
        .I1(s_axi_arcache[1]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arcache[5]),
        .I5(s_axi_arcache[9]),
        .O(m_mesg_mux[57]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[58]_i_1__0 
       (.I0(s_axi_arcache[14]),
        .I1(s_axi_arcache[2]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arcache[6]),
        .I5(s_axi_arcache[10]),
        .O(m_mesg_mux[58]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[59]_i_1__0 
       (.I0(s_axi_arcache[15]),
        .I1(s_axi_arcache[3]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arcache[7]),
        .I5(s_axi_arcache[11]),
        .O(m_mesg_mux[59]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[5]_i_1__0 
       (.I0(s_axi_araddr[99]),
        .I1(s_axi_araddr[3]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[35]),
        .I5(s_axi_araddr[67]),
        .O(m_mesg_mux[5]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[60]_i_1__0 
       (.I0(s_axi_arqos[12]),
        .I1(s_axi_arqos[0]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arqos[4]),
        .I5(s_axi_arqos[8]),
        .O(m_mesg_mux[60]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[61]_i_1__0 
       (.I0(s_axi_arqos[13]),
        .I1(s_axi_arqos[1]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arqos[5]),
        .I5(s_axi_arqos[9]),
        .O(m_mesg_mux[61]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[62]_i_1__0 
       (.I0(s_axi_arqos[14]),
        .I1(s_axi_arqos[2]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arqos[6]),
        .I5(s_axi_arqos[10]),
        .O(m_mesg_mux[62]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[63]_i_1__0 
       (.I0(s_axi_arqos[15]),
        .I1(s_axi_arqos[3]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_arqos[7]),
        .I5(s_axi_arqos[11]),
        .O(m_mesg_mux[63]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[6]_i_1__0 
       (.I0(s_axi_araddr[100]),
        .I1(s_axi_araddr[4]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[36]),
        .I5(s_axi_araddr[68]),
        .O(m_mesg_mux[6]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[7]_i_1__0 
       (.I0(s_axi_araddr[101]),
        .I1(s_axi_araddr[5]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[37]),
        .I5(s_axi_araddr[69]),
        .O(m_mesg_mux[7]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[8]_i_1__0 
       (.I0(s_axi_araddr[102]),
        .I1(s_axi_araddr[6]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[38]),
        .I5(s_axi_araddr[70]),
        .O(m_mesg_mux[8]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[9]_i_1__0 
       (.I0(s_axi_araddr[103]),
        .I1(s_axi_araddr[7]),
        .I2(m_mesg_mux[1]),
        .I3(m_mesg_mux[0]),
        .I4(s_axi_araddr[39]),
        .I5(s_axi_araddr[71]),
        .O(m_mesg_mux[9]));
  FDRE \gen_arbiter.m_mesg_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[0]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[10]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [10]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[11]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [11]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[12]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [12]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[13]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [13]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[14]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [14]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[15]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [15]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[16]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [16]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[17]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [17]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[18]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [18]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[19]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [19]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[1]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [1]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[20]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [20]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[21]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [21]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[22]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [22]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[23]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [23]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[24]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [24]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[25]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [25]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[26]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [26]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[27]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [27]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[28]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [28]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[29]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [29]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[2]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [2]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[30]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [30]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[31]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [31]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[32]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [32]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[33]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [33]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[34]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [34]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[35]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [35]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[36]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [36]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[37]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [37]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[38]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [38]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[39]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [39]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[3]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [3]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[40]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [40]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[41]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [41]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[42]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [42]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[43]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [43]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[44]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [44]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[45] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[45]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [45]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[47]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [46]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[48]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [47]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[49] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[49]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [48]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[4]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [4]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[54]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [49]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[55]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [50]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[56]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [51]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[57]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [52]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[58]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [53]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[59]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [54]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[5]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [5]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[60]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [55]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[61]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [56]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[62]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [57]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[63] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[63]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [58]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[6]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [6]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[7]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [7]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[8]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [8]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[9]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF00CCCCAAAAF0F0)) 
    \gen_arbiter.m_target_hot_i[0]_i_1 
       (.I0(ADDRESS_HIT_0_2),
        .I1(ADDRESS_HIT_0_1),
        .I2(ADDRESS_HIT_0_0),
        .I3(ADDRESS_HIT_0),
        .I4(f_hot2enc_return[1]),
        .I5(f_hot2enc_return[0]),
        .O(m_target_hot_mux[0]));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[0]_i_10 
       (.I0(s_axi_araddr[23]),
        .I1(s_axi_araddr[22]),
        .I2(s_axi_araddr[20]),
        .I3(s_axi_araddr[21]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[0]_i_11 
       (.I0(s_axi_araddr[17]),
        .I1(s_axi_araddr[16]),
        .I2(s_axi_araddr[19]),
        .I3(s_axi_araddr[18]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[0]_i_12 
       (.I0(s_axi_araddr[27]),
        .I1(s_axi_araddr[26]),
        .I2(s_axi_araddr[25]),
        .I3(s_axi_araddr[24]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_arbiter.m_target_hot_i[0]_i_13 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_araddr[30]),
        .I2(s_axi_araddr[29]),
        .I3(s_axi_araddr[28]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_target_hot_i[0]_i_2 
       (.I0(s_axi_araddr_87_sn_1),
        .I1(s_axi_araddr_81_sn_1),
        .I2(s_axi_araddr_91_sn_1),
        .I3(s_axi_araddr_95_sn_1),
        .O(ADDRESS_HIT_0_2));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_target_hot_i[0]_i_3 
       (.I0(\gen_arbiter.m_target_hot_i[0]_i_6_n_0 ),
        .I1(\gen_arbiter.m_target_hot_i[0]_i_7_n_0 ),
        .I2(\gen_arbiter.m_target_hot_i[0]_i_8_n_0 ),
        .I3(\gen_arbiter.m_target_hot_i[0]_i_9_n_0 ),
        .O(ADDRESS_HIT_0_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_target_hot_i[0]_i_4 
       (.I0(\gen_arbiter.m_target_hot_i[0]_i_10_n_0 ),
        .I1(\gen_arbiter.m_target_hot_i[0]_i_11_n_0 ),
        .I2(\gen_arbiter.m_target_hot_i[0]_i_12_n_0 ),
        .I3(\gen_arbiter.m_target_hot_i[0]_i_13_n_0 ),
        .O(ADDRESS_HIT_0_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_target_hot_i[0]_i_5 
       (.I0(\gen_arbiter.m_target_hot_i[2]_i_13_n_0 ),
        .I1(\gen_arbiter.m_target_hot_i[2]_i_12_n_0 ),
        .I2(\gen_arbiter.m_target_hot_i[2]_i_11_n_0 ),
        .I3(\gen_arbiter.m_target_hot_i[2]_i_10_n_0 ),
        .O(ADDRESS_HIT_0));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[0]_i_6 
       (.I0(s_axi_araddr[55]),
        .I1(s_axi_araddr[54]),
        .I2(s_axi_araddr[52]),
        .I3(s_axi_araddr[53]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[0]_i_7 
       (.I0(s_axi_araddr[49]),
        .I1(s_axi_araddr[48]),
        .I2(s_axi_araddr[51]),
        .I3(s_axi_araddr[50]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[0]_i_8 
       (.I0(s_axi_araddr[59]),
        .I1(s_axi_araddr[58]),
        .I2(s_axi_araddr[57]),
        .I3(s_axi_araddr[56]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_arbiter.m_target_hot_i[0]_i_9 
       (.I0(s_axi_araddr[63]),
        .I1(s_axi_araddr[62]),
        .I2(s_axi_araddr[61]),
        .I3(s_axi_araddr[60]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \gen_arbiter.m_target_hot_i[1]_i_1 
       (.I0(\gen_arbiter.m_target_hot_i_reg[1]_0 ),
        .I1(f_hot2enc_return[1]),
        .I2(f_hot2enc_return[0]),
        .I3(\gen_arbiter.m_target_hot_i_reg[1]_1 ),
        .I4(\gen_arbiter.m_target_hot_i[1]_i_4_n_0 ),
        .O(m_target_hot_mux[1]));
  LUT6 #(
    .INIT(64'h000000008F808080)) 
    \gen_arbiter.m_target_hot_i[1]_i_4 
       (.I0(\gen_arbiter.m_target_hot_i[1]_i_5_n_0 ),
        .I1(match_7),
        .I2(f_hot2enc_return[0]),
        .I3(\gen_arbiter.m_target_hot_i[1]_i_6_n_0 ),
        .I4(match_6),
        .I5(f_hot2enc_return[1]),
        .O(\gen_arbiter.m_target_hot_i[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_target_hot_i[1]_i_5 
       (.I0(s_axi_araddr[63]),
        .I1(s_axi_araddr[62]),
        .O(\gen_arbiter.m_target_hot_i[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_target_hot_i[1]_i_6 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_araddr[30]),
        .O(\gen_arbiter.m_target_hot_i[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3300550F33FF550F)) 
    \gen_arbiter.m_target_hot_i[2]_i_1 
       (.I0(match_5),
        .I1(match),
        .I2(match_6),
        .I3(f_hot2enc_return[1]),
        .I4(f_hot2enc_return[0]),
        .I5(match_7),
        .O(m_target_hot_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_arbiter.m_target_hot_i[2]_i_10 
       (.I0(s_axi_araddr[127]),
        .I1(s_axi_araddr[126]),
        .I2(s_axi_araddr[125]),
        .I3(s_axi_araddr[124]),
        .O(\gen_arbiter.m_target_hot_i[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[2]_i_11 
       (.I0(s_axi_araddr[123]),
        .I1(s_axi_araddr[122]),
        .I2(s_axi_araddr[121]),
        .I3(s_axi_araddr[120]),
        .O(\gen_arbiter.m_target_hot_i[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[2]_i_12 
       (.I0(s_axi_araddr[113]),
        .I1(s_axi_araddr[112]),
        .I2(s_axi_araddr[115]),
        .I3(s_axi_araddr[114]),
        .O(\gen_arbiter.m_target_hot_i[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[2]_i_13 
       (.I0(s_axi_araddr[119]),
        .I1(s_axi_araddr[118]),
        .I2(s_axi_araddr[116]),
        .I3(s_axi_araddr[117]),
        .O(\gen_arbiter.m_target_hot_i[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80008000FFFF8000)) 
    \gen_arbiter.m_target_hot_i[2]_i_3 
       (.I0(\gen_arbiter.m_target_hot_i[2]_i_10_n_0 ),
        .I1(\gen_arbiter.m_target_hot_i[2]_i_11_n_0 ),
        .I2(\gen_arbiter.m_target_hot_i[2]_i_12_n_0 ),
        .I3(\gen_arbiter.m_target_hot_i[2]_i_13_n_0 ),
        .I4(s_axi_araddr[127]),
        .I5(s_axi_araddr[126]),
        .O(match));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_arbiter.m_target_hot_i[2]_i_6 
       (.I0(s_axi_araddr[95]),
        .I1(s_axi_araddr[94]),
        .I2(s_axi_araddr[93]),
        .I3(s_axi_araddr[92]),
        .O(s_axi_araddr_95_sn_1));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[2]_i_7 
       (.I0(s_axi_araddr[91]),
        .I1(s_axi_araddr[90]),
        .I2(s_axi_araddr[89]),
        .I3(s_axi_araddr[88]),
        .O(s_axi_araddr_91_sn_1));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[2]_i_8 
       (.I0(s_axi_araddr[81]),
        .I1(s_axi_araddr[80]),
        .I2(s_axi_araddr[83]),
        .I3(s_axi_araddr[82]),
        .O(s_axi_araddr_81_sn_1));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[2]_i_9 
       (.I0(s_axi_araddr[87]),
        .I1(s_axi_araddr[86]),
        .I2(s_axi_araddr[84]),
        .I3(s_axi_araddr[85]),
        .O(s_axi_araddr_87_sn_1));
  FDRE \gen_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[0]),
        .Q(\gen_arbiter.m_target_hot_i_reg[2]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[1]),
        .Q(\gen_arbiter.m_target_hot_i_reg[2]_0 [1]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[2]),
        .Q(\gen_arbiter.m_target_hot_i_reg[2]_0 [2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \gen_arbiter.m_valid_i_i_1__0 
       (.I0(\gen_arbiter.any_grant_reg_n_0 ),
        .I1(aa_mi_arvalid),
        .I2(\gen_arbiter.grant_hot[3]_i_2_n_0 ),
        .O(\gen_arbiter.m_valid_i_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_i_1__0_n_0 ),
        .Q(aa_mi_arvalid),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(qual_reg[0]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(qual_reg[1]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(qual_reg[2]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(qual_reg[3]),
        .R(SR));
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_arbiter.s_ready_i[3]_i_1 
       (.I0(\gen_arbiter.any_grant_reg_n_0 ),
        .I1(aa_mi_arvalid),
        .I2(aresetn_d),
        .O(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gen_axi.s_axi_arready_i_i_2 
       (.I0(aa_mi_arvalid),
        .I1(\gen_arbiter.m_target_hot_i_reg[2]_0 [2]),
        .I2(mi_arready_2),
        .I3(p_15_in),
        .O(\gen_arbiter.m_valid_i_reg_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \gen_axi.s_axi_rid_i[0]_i_1 
       (.I0(\gen_arbiter.m_mesg_i_reg[63]_0 [0]),
        .I1(p_15_in),
        .I2(mi_arready_2),
        .I3(\gen_arbiter.m_target_hot_i_reg[2]_0 [2]),
        .I4(aa_mi_arvalid),
        .I5(p_20_in[0]),
        .O(\gen_arbiter.m_mesg_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \gen_axi.s_axi_rid_i[1]_i_1 
       (.I0(\gen_arbiter.m_mesg_i_reg[63]_0 [1]),
        .I1(p_15_in),
        .I2(mi_arready_2),
        .I3(\gen_arbiter.m_target_hot_i_reg[2]_0 [2]),
        .I4(aa_mi_arvalid),
        .I5(p_20_in[1]),
        .O(\gen_arbiter.m_mesg_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_axi.s_axi_rlast_i_i_2 
       (.I0(\gen_axi.s_axi_rlast_i_i_4_n_0 ),
        .I1(p_15_in),
        .I2(\gen_arbiter.m_mesg_i_reg[63]_0 [34]),
        .I3(\gen_arbiter.m_mesg_i_reg[63]_0 [35]),
        .O(\gen_axi.read_cs_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_axi.s_axi_rlast_i_i_4 
       (.I0(\gen_arbiter.m_mesg_i_reg[63]_0 [36]),
        .I1(\gen_arbiter.m_mesg_i_reg[63]_0 [37]),
        .I2(\gen_arbiter.m_mesg_i_reg[63]_0 [38]),
        .I3(\gen_arbiter.m_mesg_i_reg[63]_0 [39]),
        .I4(\gen_arbiter.m_mesg_i_reg[63]_0 [41]),
        .I5(\gen_arbiter.m_mesg_i_reg[63]_0 [40]),
        .O(\gen_axi.s_axi_rlast_i_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_3 
       (.I0(r_issuing_cnt[0]),
        .I1(r_issuing_cnt[1]),
        .I2(r_issuing_cnt[2]),
        .O(\gen_master_slots[0].r_issuing_cnt_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_4 
       (.I0(aa_mi_arvalid),
        .I1(\gen_arbiter.m_target_hot_i_reg[2]_0 [0]),
        .I2(m_axi_arready[0]),
        .O(\gen_arbiter.m_valid_i_reg_2 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_3 
       (.I0(r_issuing_cnt[3]),
        .I1(r_issuing_cnt[4]),
        .I2(r_issuing_cnt[5]),
        .O(\gen_master_slots[1].r_issuing_cnt_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_4 
       (.I0(aa_mi_arvalid),
        .I1(\gen_arbiter.m_target_hot_i_reg[2]_0 [1]),
        .I2(m_axi_arready[1]),
        .O(\gen_arbiter.m_valid_i_reg_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F808000)) 
    \gen_master_slots[2].r_issuing_cnt[16]_i_1 
       (.I0(mi_arready_2),
        .I1(\gen_arbiter.m_target_hot_i_reg[2]_0 [2]),
        .I2(aa_mi_arvalid),
        .I3(\gen_master_slots[2].r_issuing_cnt_reg[16] ),
        .I4(r_issuing_cnt[6]),
        .O(\gen_axi.s_axi_arready_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \gen_single_issue.active_target_enc[0]_i_1 
       (.I0(s_axi_araddr[30]),
        .I1(s_axi_araddr[31]),
        .I2(match_6),
        .I3(Q[0]),
        .I4(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_araddr_30_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \gen_single_issue.active_target_enc[0]_i_1__2 
       (.I0(s_axi_araddr[62]),
        .I1(s_axi_araddr[63]),
        .I2(match_7),
        .I3(Q[1]),
        .I4(\gen_single_issue.active_target_enc_8 [0]),
        .O(s_axi_araddr_62_sn_1));
  LUT3 #(
    .INIT(8'h74)) 
    \gen_single_issue.active_target_enc[1]_i_1 
       (.I0(match_6),
        .I1(Q[0]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .O(\gen_arbiter.s_ready_i_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_single_issue.active_target_enc[1]_i_1__0 
       (.I0(match_7),
        .I1(Q[1]),
        .I2(\gen_single_issue.active_target_enc_8 [1]),
        .O(\gen_arbiter.s_ready_i_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_issue.active_target_hot[0]_i_1 
       (.I0(ADDRESS_HIT_0_0),
        .I1(Q[0]),
        .I2(\gen_single_issue.active_target_hot ),
        .O(\gen_arbiter.s_ready_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_issue.active_target_hot[0]_i_1__0 
       (.I0(ADDRESS_HIT_0_1),
        .I1(Q[1]),
        .I2(\gen_single_issue.active_target_hot_3 ),
        .O(\gen_arbiter.s_ready_i_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_target_enc[0]_i_1 
       (.I0(\gen_arbiter.m_target_hot_i_reg[1]_1 ),
        .I1(Q[3]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .O(\gen_arbiter.s_ready_i_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_target_enc[0]_i_1__1 
       (.I0(\gen_arbiter.m_target_hot_i_reg[1]_0 ),
        .I1(Q[2]),
        .I2(\gen_single_thread.active_target_enc_9 [0]),
        .O(\gen_arbiter.s_ready_i_reg[2]_1 ));
  LUT3 #(
    .INIT(8'h74)) 
    \gen_single_thread.active_target_enc[1]_i_1 
       (.I0(match),
        .I1(Q[3]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .O(\gen_arbiter.s_ready_i_reg[3]_2 ));
  LUT3 #(
    .INIT(8'h74)) 
    \gen_single_thread.active_target_enc[1]_i_1__0 
       (.I0(match_5),
        .I1(Q[2]),
        .I2(\gen_single_thread.active_target_enc_9 [1]),
        .O(\gen_arbiter.s_ready_i_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_target_hot[0]_i_1 
       (.I0(ADDRESS_HIT_0),
        .I1(Q[3]),
        .I2(\gen_single_thread.active_target_hot ),
        .O(\gen_arbiter.s_ready_i_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_target_hot[0]_i_1__0 
       (.I0(ADDRESS_HIT_0_2),
        .I1(Q[2]),
        .I2(\gen_single_thread.active_target_hot_4 ),
        .O(\gen_arbiter.s_ready_i_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arvalid[0]_INST_0 
       (.I0(aa_mi_arvalid),
        .I1(\gen_arbiter.m_target_hot_i_reg[2]_0 [0]),
        .O(m_axi_arvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arvalid[1]_INST_0 
       (.I0(aa_mi_arvalid),
        .I1(\gen_arbiter.m_target_hot_i_reg[2]_0 [1]),
        .O(m_axi_arvalid[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_addr_arbiter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter_0
   (aa_wm_awgrant_enc,
    \gen_arbiter.last_rr_hot_reg[0]_0 ,
    \gen_arbiter.last_rr_hot_reg[3]_0 ,
    aa_sa_awvalid,
    D,
    ADDRESS_HIT_0,
    ADDRESS_HIT_0_0,
    ADDRESS_HIT_0_1,
    \gen_arbiter.m_target_hot_i_reg[2]_0 ,
    Q,
    \gen_arbiter.m_target_hot_i_reg[2]_1 ,
    E,
    mi_awready_mux__1,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    \gen_master_slots[0].w_issuing_cnt_reg[2] ,
    \gen_master_slots[0].w_issuing_cnt_reg[4] ,
    \gen_axi.s_axi_awready_i_reg ,
    \gen_arbiter.last_rr_hot_reg[0]_1 ,
    ss_aa_awready,
    s_axi_awaddr_87_sp_1,
    s_axi_awaddr_81_sp_1,
    s_axi_awaddr_91_sp_1,
    s_axi_awaddr_95_sp_1,
    s_axi_awaddr_94_sp_1,
    \gen_arbiter.m_target_hot_i_reg[1]_0 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[1] ,
    \gen_arbiter.m_valid_i_reg_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[0] ,
    \gen_arbiter.m_valid_i_reg_1 ,
    m_axi_awvalid,
    \gen_master_slots[1].w_issuing_cnt_reg[10] ,
    \m_ready_d_reg[1] ,
    \gen_arbiter.m_mesg_i_reg[63]_0 ,
    SR,
    aclk,
    w_issuing_cnt,
    s_axi_awaddr,
    st_aa_awtarget_enc_0,
    st_aa_awtarget_enc_2,
    aresetn_d,
    \gen_arbiter.grant_hot_reg[2]_0 ,
    \gen_arbiter.grant_hot_reg[2]_1 ,
    \m_ready_d_reg[0] ,
    m_ready_d,
    \gen_master_slots[1].w_issuing_cnt_reg[8] ,
    m_axi_awready,
    mi_awready_2,
    \gen_master_slots[0].w_issuing_cnt_reg[0]_0 ,
    match,
    match_2,
    match_3,
    s_axi_awvalid,
    m_ready_d_4,
    m_ready_d_5,
    m_ready_d_6,
    \FSM_onehot_state_reg[1]_1 ,
    \storage_data1_reg[1] ,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen,
    \gen_master_slots[2].w_issuing_cnt_reg[16] ,
    \gen_arbiter.qual_reg_reg[2]_0 );
  output [1:0]aa_wm_awgrant_enc;
  output \gen_arbiter.last_rr_hot_reg[0]_0 ;
  output \gen_arbiter.last_rr_hot_reg[3]_0 ;
  output aa_sa_awvalid;
  output [2:0]D;
  output ADDRESS_HIT_0;
  output ADDRESS_HIT_0_0;
  output ADDRESS_HIT_0_1;
  output \gen_arbiter.m_target_hot_i_reg[2]_0 ;
  output [2:0]Q;
  output \gen_arbiter.m_target_hot_i_reg[2]_1 ;
  output [0:0]E;
  output mi_awready_mux__1;
  output [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0] ;
  output \gen_master_slots[0].w_issuing_cnt_reg[2] ;
  output [4:0]\gen_master_slots[0].w_issuing_cnt_reg[4] ;
  output \gen_axi.s_axi_awready_i_reg ;
  output \gen_arbiter.last_rr_hot_reg[0]_1 ;
  output [2:0]ss_aa_awready;
  output s_axi_awaddr_87_sp_1;
  output s_axi_awaddr_81_sp_1;
  output s_axi_awaddr_91_sp_1;
  output s_axi_awaddr_95_sp_1;
  output s_axi_awaddr_94_sp_1;
  output \gen_arbiter.m_target_hot_i_reg[1]_0 ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[1] ;
  output \gen_arbiter.m_valid_i_reg_0 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[1]_0 ;
  output \FSM_onehot_state_reg[0] ;
  output \gen_arbiter.m_valid_i_reg_1 ;
  output [1:0]m_axi_awvalid;
  output \gen_master_slots[1].w_issuing_cnt_reg[10] ;
  output \m_ready_d_reg[1] ;
  output [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  input [0:0]SR;
  input aclk;
  input [10:0]w_issuing_cnt;
  input [95:0]s_axi_awaddr;
  input [0:0]st_aa_awtarget_enc_0;
  input [0:0]st_aa_awtarget_enc_2;
  input aresetn_d;
  input \gen_arbiter.grant_hot_reg[2]_0 ;
  input \gen_arbiter.grant_hot_reg[2]_1 ;
  input \m_ready_d_reg[0] ;
  input [1:0]m_ready_d;
  input \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  input [1:0]m_axi_awready;
  input mi_awready_2;
  input \gen_master_slots[0].w_issuing_cnt_reg[0]_0 ;
  input match;
  input match_2;
  input match_3;
  input [2:0]s_axi_awvalid;
  input [0:0]m_ready_d_4;
  input [0:0]m_ready_d_5;
  input [0:0]m_ready_d_6;
  input [2:0]\FSM_onehot_state_reg[1]_1 ;
  input [1:0]\storage_data1_reg[1] ;
  input [11:0]s_axi_awqos;
  input [11:0]s_axi_awcache;
  input [5:0]s_axi_awburst;
  input [8:0]s_axi_awprot;
  input [2:0]s_axi_awlock;
  input [8:0]s_axi_awsize;
  input [23:0]s_axi_awlen;
  input \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  input [2:0]\gen_arbiter.qual_reg_reg[2]_0 ;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_0;
  wire ADDRESS_HIT_0_1;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [2:0]\FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.any_grant_i_1_n_0 ;
  wire \gen_arbiter.any_grant_reg_n_0 ;
  wire \gen_arbiter.grant_hot[0]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[1]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[2]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[2]_i_2_n_0 ;
  wire \gen_arbiter.grant_hot[2]_i_3_n_0 ;
  wire \gen_arbiter.grant_hot_reg[2]_0 ;
  wire \gen_arbiter.grant_hot_reg[2]_1 ;
  wire \gen_arbiter.grant_hot_reg_n_0_[0] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[1] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[2] ;
  wire \gen_arbiter.last_rr_hot[0]_i_3_n_0 ;
  wire \gen_arbiter.last_rr_hot[0]_i_4_n_0 ;
  wire \gen_arbiter.last_rr_hot[0]_i_5_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg[0]_0 ;
  wire \gen_arbiter.last_rr_hot_reg[0]_1 ;
  wire \gen_arbiter.last_rr_hot_reg[3]_0 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire \gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ;
  wire \gen_arbiter.m_mesg_i[0]_i_1_n_0 ;
  wire \gen_arbiter.m_mesg_i[1]_i_3_n_0 ;
  wire [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_10__0_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_11__0_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_12__0_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_5__0_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_6__0_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_7__0_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_8__0_n_0 ;
  wire \gen_arbiter.m_target_hot_i[0]_i_9__0_n_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[1]_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[2]_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[2]_1 ;
  wire \gen_arbiter.m_valid_i_i_1_n_0 ;
  wire \gen_arbiter.m_valid_i_i_2_n_0 ;
  wire \gen_arbiter.m_valid_i_reg_0 ;
  wire \gen_arbiter.m_valid_i_reg_1 ;
  wire [2:0]\gen_arbiter.qual_reg_reg[2]_0 ;
  wire \gen_arbiter.s_ready_i[0]_i_1_n_0 ;
  wire \gen_arbiter.s_ready_i[1]_i_1_n_0 ;
  wire \gen_arbiter.s_ready_i[2]_i_1_n_0 ;
  wire \gen_axi.s_axi_awready_i_reg ;
  wire \gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0 ;
  wire \gen_master_slots[0].w_issuing_cnt[5]_i_4_n_0 ;
  wire \gen_master_slots[0].w_issuing_cnt[5]_i_5_n_0 ;
  wire [0:0]\gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[0]_0 ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[2] ;
  wire [4:0]\gen_master_slots[0].w_issuing_cnt_reg[4] ;
  wire \gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0 ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[10] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  wire grant_hot;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [63:2]m_mesg_mux;
  wire [1:0]m_ready_d;
  wire [0:0]m_ready_d_4;
  wire [0:0]m_ready_d_5;
  wire [0:0]m_ready_d_6;
  wire \m_ready_d_reg[0] ;
  wire \m_ready_d_reg[1] ;
  wire [2:0]m_target_hot_mux;
  wire match;
  wire match_2;
  wire match_3;
  wire mi_awready_2;
  wire mi_awready_mux__1;
  wire p_1_in;
  wire p_39_in;
  wire p_6_in;
  wire p_7_in20_in;
  wire [2:0]qual_reg;
  wire [95:0]s_axi_awaddr;
  wire s_axi_awaddr_81_sn_1;
  wire s_axi_awaddr_87_sn_1;
  wire s_axi_awaddr_91_sn_1;
  wire s_axi_awaddr_94_sn_1;
  wire s_axi_awaddr_95_sn_1;
  wire [5:0]s_axi_awburst;
  wire [11:0]s_axi_awcache;
  wire [23:0]s_axi_awlen;
  wire [2:0]s_axi_awlock;
  wire [8:0]s_axi_awprot;
  wire [11:0]s_axi_awqos;
  wire [8:0]s_axi_awsize;
  wire [2:0]s_axi_awvalid;
  wire [2:0]ss_aa_awready;
  wire [0:0]st_aa_awtarget_enc_0;
  wire [0:0]st_aa_awtarget_enc_2;
  wire [1:0]\storage_data1_reg[1] ;
  wire [10:0]w_issuing_cnt;

  assign s_axi_awaddr_81_sp_1 = s_axi_awaddr_81_sn_1;
  assign s_axi_awaddr_87_sp_1 = s_axi_awaddr_87_sn_1;
  assign s_axi_awaddr_91_sp_1 = s_axi_awaddr_91_sn_1;
  assign s_axi_awaddr_94_sp_1 = s_axi_awaddr_94_sn_1;
  assign s_axi_awaddr_95_sp_1 = s_axi_awaddr_95_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(aa_sa_awvalid),
        .I1(m_ready_d[0]),
        .I2(Q[1]),
        .O(\gen_arbiter.m_valid_i_reg_1 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_state[3]_i_4__2 
       (.I0(aa_sa_awvalid),
        .I1(m_ready_d[0]),
        .I2(Q[2]),
        .O(\gen_arbiter.m_valid_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state_reg[1]_1 [2]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d[0]),
        .O(\gen_arbiter.m_target_hot_i_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAA888000000000)) 
    \gen_arbiter.any_grant_i_1 
       (.I0(aresetn_d),
        .I1(\gen_arbiter.grant_hot[2]_i_2_n_0 ),
        .I2(\gen_arbiter.grant_hot_reg[2]_0 ),
        .I3(\gen_arbiter.grant_hot_reg[2]_1 ),
        .I4(\gen_arbiter.any_grant_reg_n_0 ),
        .I5(\gen_arbiter.m_valid_i_i_2_n_0 ),
        .O(\gen_arbiter.any_grant_i_1_n_0 ));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1_n_0 ),
        .Q(\gen_arbiter.any_grant_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FEAA02AA)) 
    \gen_arbiter.grant_hot[0]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I1(\gen_arbiter.grant_hot_reg[2]_1 ),
        .I2(\gen_arbiter.grant_hot_reg[2]_0 ),
        .I3(\gen_arbiter.grant_hot[2]_i_2_n_0 ),
        .I4(\gen_arbiter.last_rr_hot_reg[0]_1 ),
        .I5(\gen_arbiter.grant_hot[2]_i_3_n_0 ),
        .O(\gen_arbiter.grant_hot[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEAA02AA)) 
    \gen_arbiter.grant_hot[1]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .I1(\gen_arbiter.grant_hot_reg[2]_1 ),
        .I2(\gen_arbiter.grant_hot_reg[2]_0 ),
        .I3(\gen_arbiter.grant_hot[2]_i_2_n_0 ),
        .I4(\gen_arbiter.last_rr_hot_reg[3]_0 ),
        .I5(\gen_arbiter.grant_hot[2]_i_3_n_0 ),
        .O(\gen_arbiter.grant_hot[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEAA02AA)) 
    \gen_arbiter.grant_hot[2]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .I1(\gen_arbiter.grant_hot_reg[2]_1 ),
        .I2(\gen_arbiter.grant_hot_reg[2]_0 ),
        .I3(\gen_arbiter.grant_hot[2]_i_2_n_0 ),
        .I4(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .I5(\gen_arbiter.grant_hot[2]_i_3_n_0 ),
        .O(\gen_arbiter.grant_hot[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \gen_arbiter.grant_hot[2]_i_2 
       (.I0(aa_sa_awvalid),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(\gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ),
        .I3(\gen_arbiter.last_rr_hot_reg[0]_1 ),
        .O(\gen_arbiter.grant_hot[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_arbiter.grant_hot[2]_i_3 
       (.I0(\gen_arbiter.m_valid_i_i_2_n_0 ),
        .I1(aresetn_d),
        .O(\gen_arbiter.grant_hot[2]_i_3_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[0]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_arbiter.grant_hot_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[1]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_arbiter.grant_hot_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[2]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF04000000000)) 
    \gen_arbiter.last_rr_hot[0]_i_1__0 
       (.I0(p_7_in20_in),
        .I1(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I2(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(\gen_arbiter.last_rr_hot[0]_i_4_n_0 ),
        .I5(\gen_arbiter.last_rr_hot[0]_i_5_n_0 ),
        .O(\gen_arbiter.last_rr_hot_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_arbiter.last_rr_hot[0]_i_2 
       (.I0(s_axi_awvalid[1]),
        .I1(qual_reg[1]),
        .I2(ss_aa_awready[1]),
        .I3(m_ready_d_6),
        .O(p_7_in20_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gen_arbiter.last_rr_hot[0]_i_3 
       (.I0(s_axi_awvalid[2]),
        .I1(qual_reg[2]),
        .I2(ss_aa_awready[2]),
        .I3(m_ready_d_5),
        .O(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.last_rr_hot[0]_i_4 
       (.I0(p_6_in),
        .I1(aa_wm_awgrant_enc[1]),
        .O(\gen_arbiter.last_rr_hot[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_arbiter.last_rr_hot[0]_i_5 
       (.I0(s_axi_awvalid[0]),
        .I1(qual_reg[0]),
        .I2(ss_aa_awready[0]),
        .I3(m_ready_d_4),
        .O(\gen_arbiter.last_rr_hot[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000E000E000E0000)) 
    \gen_arbiter.last_rr_hot[3]_i_1__0 
       (.I0(\gen_arbiter.last_rr_hot_reg[0]_1 ),
        .I1(\gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ),
        .I2(\gen_arbiter.any_grant_reg_n_0 ),
        .I3(aa_sa_awvalid),
        .I4(\gen_arbiter.grant_hot_reg[2]_0 ),
        .I5(\gen_arbiter.grant_hot_reg[2]_1 ),
        .O(grant_hot));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.last_rr_hot[3]_i_2__0 
       (.I0(\gen_arbiter.last_rr_hot_reg[3]_0 ),
        .I1(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .O(\gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[0]_1 ),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SR));
  FDSE \gen_arbiter.last_rr_hot_reg[3] 
       (.C(aclk),
        .CE(grant_hot),
        .D(1'b0),
        .Q(p_6_in),
        .S(SR));
  LUT6 #(
    .INIT(64'hCCCCCCCC0C0C0C08)) 
    \gen_arbiter.m_grant_enc_i[0]_i_1__0 
       (.I0(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .I1(p_7_in20_in),
        .I2(\gen_arbiter.last_rr_hot[0]_i_5_n_0 ),
        .I3(p_6_in),
        .I4(aa_wm_awgrant_enc[1]),
        .I5(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(\gen_arbiter.last_rr_hot_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hEFFF0000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_2 
       (.I0(m_ready_d_5),
        .I1(ss_aa_awready[2]),
        .I2(qual_reg[2]),
        .I3(s_axi_awvalid[2]),
        .I4(aa_wm_awgrant_enc[0]),
        .O(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF000000F4)) 
    \gen_arbiter.m_grant_enc_i[1]_i_1__0 
       (.I0(\gen_arbiter.last_rr_hot[0]_i_5_n_0 ),
        .I1(\gen_arbiter.last_rr_hot[0]_i_4_n_0 ),
        .I2(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I3(p_7_in20_in),
        .I4(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ),
        .I5(aa_wm_awgrant_enc[0]),
        .O(\gen_arbiter.last_rr_hot_reg[0]_0 ));
  FDRE \gen_arbiter.m_grant_enc_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[3]_0 ),
        .Q(aa_wm_awgrant_enc[0]),
        .R(SR));
  FDRE \gen_arbiter.m_grant_enc_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .Q(aa_wm_awgrant_enc[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_mesg_i[0]_i_1 
       (.I0(aa_wm_awgrant_enc[0]),
        .I1(aa_wm_awgrant_enc[1]),
        .O(\gen_arbiter.m_mesg_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[10]_i_1 
       (.I0(s_axi_awaddr[72]),
        .I1(s_axi_awaddr[8]),
        .I2(s_axi_awaddr[40]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[10]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[11]_i_1 
       (.I0(s_axi_awaddr[73]),
        .I1(s_axi_awaddr[9]),
        .I2(s_axi_awaddr[41]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[11]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[12]_i_1 
       (.I0(s_axi_awaddr[74]),
        .I1(s_axi_awaddr[10]),
        .I2(s_axi_awaddr[42]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[12]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[13]_i_1 
       (.I0(s_axi_awaddr[75]),
        .I1(s_axi_awaddr[11]),
        .I2(s_axi_awaddr[43]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[13]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[14]_i_1 
       (.I0(s_axi_awaddr[76]),
        .I1(s_axi_awaddr[12]),
        .I2(s_axi_awaddr[44]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[14]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[15]_i_1 
       (.I0(s_axi_awaddr[77]),
        .I1(s_axi_awaddr[13]),
        .I2(s_axi_awaddr[45]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[15]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[16]_i_1 
       (.I0(s_axi_awaddr[78]),
        .I1(s_axi_awaddr[14]),
        .I2(s_axi_awaddr[46]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[16]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[17]_i_1 
       (.I0(s_axi_awaddr[79]),
        .I1(s_axi_awaddr[15]),
        .I2(s_axi_awaddr[47]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[17]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[18]_i_1 
       (.I0(s_axi_awaddr[80]),
        .I1(s_axi_awaddr[16]),
        .I2(s_axi_awaddr[48]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[18]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[19]_i_1 
       (.I0(s_axi_awaddr[81]),
        .I1(s_axi_awaddr[17]),
        .I2(s_axi_awaddr[49]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[1]_i_2 
       (.I0(aa_sa_awvalid),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_mesg_i[1]_i_3 
       (.I0(aa_wm_awgrant_enc[1]),
        .I1(aa_wm_awgrant_enc[0]),
        .O(\gen_arbiter.m_mesg_i[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[20]_i_1 
       (.I0(s_axi_awaddr[82]),
        .I1(s_axi_awaddr[18]),
        .I2(s_axi_awaddr[50]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[20]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[21]_i_1 
       (.I0(s_axi_awaddr[83]),
        .I1(s_axi_awaddr[19]),
        .I2(s_axi_awaddr[51]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[21]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[22]_i_1 
       (.I0(s_axi_awaddr[84]),
        .I1(s_axi_awaddr[20]),
        .I2(s_axi_awaddr[52]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[22]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[23]_i_1 
       (.I0(s_axi_awaddr[85]),
        .I1(s_axi_awaddr[21]),
        .I2(s_axi_awaddr[53]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[23]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[24]_i_1 
       (.I0(s_axi_awaddr[86]),
        .I1(s_axi_awaddr[22]),
        .I2(s_axi_awaddr[54]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[24]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[25]_i_1 
       (.I0(s_axi_awaddr[87]),
        .I1(s_axi_awaddr[23]),
        .I2(s_axi_awaddr[55]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[25]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[26]_i_1 
       (.I0(s_axi_awaddr[88]),
        .I1(s_axi_awaddr[24]),
        .I2(s_axi_awaddr[56]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[26]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[27]_i_1 
       (.I0(s_axi_awaddr[89]),
        .I1(s_axi_awaddr[25]),
        .I2(s_axi_awaddr[57]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[27]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[28]_i_1 
       (.I0(s_axi_awaddr[90]),
        .I1(s_axi_awaddr[26]),
        .I2(s_axi_awaddr[58]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[28]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[29]_i_1 
       (.I0(s_axi_awaddr[91]),
        .I1(s_axi_awaddr[27]),
        .I2(s_axi_awaddr[59]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[2]_i_1 
       (.I0(s_axi_awaddr[64]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[32]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[2]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[30]_i_1 
       (.I0(s_axi_awaddr[92]),
        .I1(s_axi_awaddr[28]),
        .I2(s_axi_awaddr[60]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[30]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[31]_i_1 
       (.I0(s_axi_awaddr[93]),
        .I1(s_axi_awaddr[29]),
        .I2(s_axi_awaddr[61]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[31]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[32]_i_1 
       (.I0(s_axi_awaddr[94]),
        .I1(s_axi_awaddr[30]),
        .I2(s_axi_awaddr[62]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[32]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[33]_i_1 
       (.I0(s_axi_awaddr[95]),
        .I1(s_axi_awaddr[31]),
        .I2(s_axi_awaddr[63]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[33]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[34]_i_1 
       (.I0(s_axi_awlen[16]),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awlen[8]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[34]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[35]_i_1 
       (.I0(s_axi_awlen[17]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awlen[9]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[35]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[36]_i_1 
       (.I0(s_axi_awlen[18]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awlen[10]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[36]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[37]_i_1 
       (.I0(s_axi_awlen[19]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awlen[11]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[37]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[38]_i_1 
       (.I0(s_axi_awlen[20]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awlen[12]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[38]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[39]_i_1 
       (.I0(s_axi_awlen[21]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awlen[13]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[39]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[3]_i_1 
       (.I0(s_axi_awaddr[65]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[33]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[3]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[40]_i_1 
       (.I0(s_axi_awlen[22]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awlen[14]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[40]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[41]_i_1 
       (.I0(s_axi_awlen[23]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awlen[15]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[41]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[42]_i_1 
       (.I0(s_axi_awsize[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[3]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[42]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[43]_i_1 
       (.I0(s_axi_awsize[7]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[4]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[43]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[44]_i_1 
       (.I0(s_axi_awsize[8]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[5]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[44]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[45]_i_1 
       (.I0(s_axi_awlock[2]),
        .I1(s_axi_awlock[0]),
        .I2(s_axi_awlock[1]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[45]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[47]_i_1 
       (.I0(s_axi_awprot[6]),
        .I1(s_axi_awprot[0]),
        .I2(s_axi_awprot[3]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[47]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[48]_i_1 
       (.I0(s_axi_awprot[7]),
        .I1(s_axi_awprot[1]),
        .I2(s_axi_awprot[4]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[48]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[49]_i_1 
       (.I0(s_axi_awprot[8]),
        .I1(s_axi_awprot[2]),
        .I2(s_axi_awprot[5]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[49]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[4]_i_1 
       (.I0(s_axi_awaddr[66]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[34]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[4]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[54]_i_1 
       (.I0(s_axi_awburst[4]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awburst[2]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[54]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[55]_i_1 
       (.I0(s_axi_awburst[5]),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[3]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[55]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[56]_i_1 
       (.I0(s_axi_awcache[8]),
        .I1(s_axi_awcache[0]),
        .I2(s_axi_awcache[4]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[56]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[57]_i_1 
       (.I0(s_axi_awcache[9]),
        .I1(s_axi_awcache[1]),
        .I2(s_axi_awcache[5]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[57]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[58]_i_1 
       (.I0(s_axi_awcache[10]),
        .I1(s_axi_awcache[2]),
        .I2(s_axi_awcache[6]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[58]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[59]_i_1 
       (.I0(s_axi_awcache[11]),
        .I1(s_axi_awcache[3]),
        .I2(s_axi_awcache[7]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[59]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[5]_i_1 
       (.I0(s_axi_awaddr[67]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_awaddr[35]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[5]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[60]_i_1 
       (.I0(s_axi_awqos[8]),
        .I1(s_axi_awqos[0]),
        .I2(s_axi_awqos[4]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[60]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[61]_i_1 
       (.I0(s_axi_awqos[9]),
        .I1(s_axi_awqos[1]),
        .I2(s_axi_awqos[5]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[61]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[62]_i_1 
       (.I0(s_axi_awqos[10]),
        .I1(s_axi_awqos[2]),
        .I2(s_axi_awqos[6]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[62]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[63]_i_1 
       (.I0(s_axi_awqos[11]),
        .I1(s_axi_awqos[3]),
        .I2(s_axi_awqos[7]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[63]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[6]_i_1 
       (.I0(s_axi_awaddr[68]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_awaddr[36]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[6]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[7]_i_1 
       (.I0(s_axi_awaddr[69]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_awaddr[37]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[7]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[8]_i_1 
       (.I0(s_axi_awaddr[70]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_awaddr[38]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[8]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \gen_arbiter.m_mesg_i[9]_i_1 
       (.I0(s_axi_awaddr[71]),
        .I1(s_axi_awaddr[7]),
        .I2(s_axi_awaddr[39]),
        .I3(aa_wm_awgrant_enc[0]),
        .I4(aa_wm_awgrant_enc[1]),
        .O(m_mesg_mux[9]));
  FDRE \gen_arbiter.m_mesg_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\gen_arbiter.m_mesg_i[0]_i_1_n_0 ),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[10]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [10]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[11]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [11]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[12]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [12]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[13]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [13]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[14]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [14]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[15]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [15]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[16]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [16]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[17]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [17]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[18]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [18]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[19]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [19]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\gen_arbiter.m_mesg_i[1]_i_3_n_0 ),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [1]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[20]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [20]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[21]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [21]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[22]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [22]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[23]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [23]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[24]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [24]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[25]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [25]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[26]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [26]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[27]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [27]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[28]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [28]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[29]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [29]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[2]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [2]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[30]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [30]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[31]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [31]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[32]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [32]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[33]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [33]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[34]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [34]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[35]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [35]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[36]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [36]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[37]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [37]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[38]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [38]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[39]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [39]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[3]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [3]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[40]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [40]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[41]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [41]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[42]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [42]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[43]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [43]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[44]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [44]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[45] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[45]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [45]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[47]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [46]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[48]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [47]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[49] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[49]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [48]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[4]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [4]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[54]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [49]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[55]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [50]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[56]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [51]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[57]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [52]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[58]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [53]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[59]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [54]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[5]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [5]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[60]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [55]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[61]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [56]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[62]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [57]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[63] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[63]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [58]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[6]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [6]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[7]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [7]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[8]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [8]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[9]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[0]_i_10__0 
       (.I0(s_axi_awaddr[49]),
        .I1(s_axi_awaddr[48]),
        .I2(s_axi_awaddr[51]),
        .I3(s_axi_awaddr[50]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[0]_i_11__0 
       (.I0(s_axi_awaddr[59]),
        .I1(s_axi_awaddr[58]),
        .I2(s_axi_awaddr[57]),
        .I3(s_axi_awaddr[56]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_arbiter.m_target_hot_i[0]_i_12__0 
       (.I0(s_axi_awaddr[63]),
        .I1(s_axi_awaddr[62]),
        .I2(s_axi_awaddr[61]),
        .I3(s_axi_awaddr[60]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00F0CCAA)) 
    \gen_arbiter.m_target_hot_i[0]_i_1__0 
       (.I0(ADDRESS_HIT_0),
        .I1(ADDRESS_HIT_0_0),
        .I2(ADDRESS_HIT_0_1),
        .I3(\gen_arbiter.last_rr_hot_reg[3]_0 ),
        .I4(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .O(m_target_hot_mux[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_target_hot_i[0]_i_2__0 
       (.I0(\gen_arbiter.m_target_hot_i[0]_i_5__0_n_0 ),
        .I1(\gen_arbiter.m_target_hot_i[0]_i_6__0_n_0 ),
        .I2(\gen_arbiter.m_target_hot_i[0]_i_7__0_n_0 ),
        .I3(\gen_arbiter.m_target_hot_i[0]_i_8__0_n_0 ),
        .O(ADDRESS_HIT_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_target_hot_i[0]_i_3__0 
       (.I0(\gen_arbiter.m_target_hot_i[0]_i_9__0_n_0 ),
        .I1(\gen_arbiter.m_target_hot_i[0]_i_10__0_n_0 ),
        .I2(\gen_arbiter.m_target_hot_i[0]_i_11__0_n_0 ),
        .I3(\gen_arbiter.m_target_hot_i[0]_i_12__0_n_0 ),
        .O(ADDRESS_HIT_0_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_target_hot_i[0]_i_4__0 
       (.I0(s_axi_awaddr_87_sn_1),
        .I1(s_axi_awaddr_81_sn_1),
        .I2(s_axi_awaddr_91_sn_1),
        .I3(s_axi_awaddr_95_sn_1),
        .O(ADDRESS_HIT_0_1));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[0]_i_5__0 
       (.I0(s_axi_awaddr[23]),
        .I1(s_axi_awaddr[22]),
        .I2(s_axi_awaddr[20]),
        .I3(s_axi_awaddr[21]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[0]_i_6__0 
       (.I0(s_axi_awaddr[17]),
        .I1(s_axi_awaddr[16]),
        .I2(s_axi_awaddr[19]),
        .I3(s_axi_awaddr[18]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[0]_i_7__0 
       (.I0(s_axi_awaddr[27]),
        .I1(s_axi_awaddr[26]),
        .I2(s_axi_awaddr[25]),
        .I3(s_axi_awaddr[24]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_arbiter.m_target_hot_i[0]_i_8__0 
       (.I0(s_axi_awaddr[31]),
        .I1(s_axi_awaddr[30]),
        .I2(s_axi_awaddr[29]),
        .I3(s_axi_awaddr[28]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[0]_i_9__0 
       (.I0(s_axi_awaddr[55]),
        .I1(s_axi_awaddr[54]),
        .I2(s_axi_awaddr[52]),
        .I3(s_axi_awaddr[53]),
        .O(\gen_arbiter.m_target_hot_i[0]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'h00002222FF00F0F0)) 
    \gen_arbiter.m_target_hot_i[1]_i_1__0 
       (.I0(s_axi_awaddr[95]),
        .I1(s_axi_awaddr[94]),
        .I2(st_aa_awtarget_enc_0),
        .I3(st_aa_awtarget_enc_2),
        .I4(\gen_arbiter.last_rr_hot_reg[3]_0 ),
        .I5(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .O(m_target_hot_mux[1]));
  LUT5 #(
    .INIT(32'h00350F35)) 
    \gen_arbiter.m_target_hot_i[2]_i_1__0 
       (.I0(match),
        .I1(match_2),
        .I2(\gen_arbiter.last_rr_hot_reg[3]_0 ),
        .I3(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .I4(match_3),
        .O(m_target_hot_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_arbiter.m_target_hot_i[2]_i_5__0 
       (.I0(s_axi_awaddr[95]),
        .I1(s_axi_awaddr[94]),
        .I2(s_axi_awaddr[93]),
        .I3(s_axi_awaddr[92]),
        .O(s_axi_awaddr_95_sn_1));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[2]_i_6__0 
       (.I0(s_axi_awaddr[91]),
        .I1(s_axi_awaddr[90]),
        .I2(s_axi_awaddr[89]),
        .I3(s_axi_awaddr[88]),
        .O(s_axi_awaddr_91_sn_1));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[2]_i_7__0 
       (.I0(s_axi_awaddr[81]),
        .I1(s_axi_awaddr[80]),
        .I2(s_axi_awaddr[83]),
        .I3(s_axi_awaddr[82]),
        .O(s_axi_awaddr_81_sn_1));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_arbiter.m_target_hot_i[2]_i_8__0 
       (.I0(s_axi_awaddr[87]),
        .I1(s_axi_awaddr[86]),
        .I2(s_axi_awaddr[84]),
        .I3(s_axi_awaddr[85]),
        .O(s_axi_awaddr_87_sn_1));
  FDRE \gen_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[2]),
        .Q(Q[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \gen_arbiter.m_valid_i_i_1 
       (.I0(\gen_arbiter.any_grant_reg_n_0 ),
        .I1(aa_sa_awvalid),
        .I2(\gen_arbiter.m_valid_i_i_2_n_0 ),
        .O(\gen_arbiter.m_valid_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \gen_arbiter.m_valid_i_i_2 
       (.I0(aa_sa_awvalid),
        .I1(\m_ready_d_reg[0] ),
        .I2(m_ready_d[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\gen_arbiter.m_valid_i_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_i_1_n_0 ),
        .Q(aa_sa_awvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.qual_reg[2]_i_11 
       (.I0(w_issuing_cnt[8]),
        .I1(w_issuing_cnt[7]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_arbiter.qual_reg[2]_i_8 
       (.I0(s_axi_awaddr[94]),
        .I1(s_axi_awaddr[95]),
        .O(s_axi_awaddr_94_sn_1));
  FDRE \gen_arbiter.qual_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[2]_0 [0]),
        .Q(qual_reg[0]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[2]_0 [1]),
        .Q(qual_reg[1]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[2]_0 [2]),
        .Q(qual_reg[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[0]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I1(aresetn_d),
        .I2(aa_sa_awvalid),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[1]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .I1(aresetn_d),
        .I2(aa_sa_awvalid),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[2]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .I1(aresetn_d),
        .I2(aa_sa_awvalid),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[0]_i_1_n_0 ),
        .Q(ss_aa_awready[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[1]_i_1_n_0 ),
        .Q(ss_aa_awready[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[2]_i_1_n_0 ),
        .Q(ss_aa_awready[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gen_axi.s_axi_awready_i_i_2 
       (.I0(mi_awready_2),
        .I1(Q[2]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d[1]),
        .O(\gen_axi.s_axi_awready_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_master_slots[0].w_issuing_cnt[1]_i_1 
       (.I0(w_issuing_cnt[1]),
        .I1(w_issuing_cnt[0]),
        .I2(\gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0 ),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_master_slots[0].w_issuing_cnt[2]_i_1 
       (.I0(w_issuing_cnt[2]),
        .I1(w_issuing_cnt[0]),
        .I2(w_issuing_cnt[1]),
        .I3(\gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0 ),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_1 
       (.I0(w_issuing_cnt[3]),
        .I1(w_issuing_cnt[1]),
        .I2(w_issuing_cnt[2]),
        .I3(w_issuing_cnt[0]),
        .I4(\gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0 ),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_2 
       (.I0(\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ),
        .I1(m_ready_d[1]),
        .I2(aa_sa_awvalid),
        .I3(Q[0]),
        .I4(m_axi_awready[0]),
        .O(\gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_master_slots[0].w_issuing_cnt[4]_i_1 
       (.I0(\gen_master_slots[0].w_issuing_cnt[5]_i_5_n_0 ),
        .I1(w_issuing_cnt[3]),
        .I2(w_issuing_cnt[4]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[4] [3]));
  LUT5 #(
    .INIT(32'h00FFFE00)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_1 
       (.I0(w_issuing_cnt[0]),
        .I1(w_issuing_cnt[5]),
        .I2(\gen_master_slots[0].w_issuing_cnt_reg[2] ),
        .I3(\gen_master_slots[0].w_issuing_cnt[5]_i_4_n_0 ),
        .I4(\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6CC9)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_2 
       (.I0(w_issuing_cnt[4]),
        .I1(w_issuing_cnt[5]),
        .I2(\gen_master_slots[0].w_issuing_cnt[5]_i_5_n_0 ),
        .I3(w_issuing_cnt[3]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[4] [4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_3 
       (.I0(w_issuing_cnt[2]),
        .I1(w_issuing_cnt[1]),
        .I2(w_issuing_cnt[3]),
        .I3(w_issuing_cnt[4]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_4 
       (.I0(m_axi_awready[0]),
        .I1(Q[0]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d[1]),
        .O(\gen_master_slots[0].w_issuing_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h80FF00FE)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_5 
       (.I0(\gen_master_slots[0].w_issuing_cnt[3]_i_2_n_0 ),
        .I1(w_issuing_cnt[0]),
        .I2(w_issuing_cnt[1]),
        .I3(w_issuing_cnt[3]),
        .I4(w_issuing_cnt[2]),
        .O(\gen_master_slots[0].w_issuing_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \gen_master_slots[1].w_issuing_cnt[10]_i_1 
       (.I0(\gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0 ),
        .I1(w_issuing_cnt[7]),
        .I2(w_issuing_cnt[6]),
        .I3(w_issuing_cnt[8]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFFE)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_1 
       (.I0(w_issuing_cnt[6]),
        .I1(w_issuing_cnt[8]),
        .I2(w_issuing_cnt[7]),
        .I3(w_issuing_cnt[9]),
        .I4(p_39_in),
        .I5(\gen_master_slots[1].w_issuing_cnt_reg[8] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hBFFD4002)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_2 
       (.I0(\gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0 ),
        .I1(w_issuing_cnt[7]),
        .I2(w_issuing_cnt[6]),
        .I3(w_issuing_cnt[8]),
        .I4(w_issuing_cnt[9]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_3 
       (.I0(m_axi_awready[1]),
        .I1(Q[1]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d[1]),
        .O(p_39_in));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_4 
       (.I0(\gen_master_slots[1].w_issuing_cnt_reg[8] ),
        .I1(m_ready_d[1]),
        .I2(aa_sa_awvalid),
        .I3(Q[1]),
        .I4(m_axi_awready[1]),
        .O(\gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gen_master_slots[1].w_issuing_cnt[9]_i_1 
       (.I0(w_issuing_cnt[7]),
        .I1(w_issuing_cnt[6]),
        .I2(\gen_master_slots[1].w_issuing_cnt[11]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6555555510000000)) 
    \gen_master_slots[2].w_issuing_cnt[16]_i_1 
       (.I0(\gen_master_slots[2].w_issuing_cnt_reg[16] ),
        .I1(m_ready_d[1]),
        .I2(aa_sa_awvalid),
        .I3(Q[2]),
        .I4(mi_awready_2),
        .I5(w_issuing_cnt[10]),
        .O(\m_ready_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_rep[0].fifoaddr[2]_i_3 
       (.I0(\FSM_onehot_state_reg[1]_1 [0]),
        .I1(Q[1]),
        .I2(m_ready_d[0]),
        .I3(aa_sa_awvalid),
        .O(\FSM_onehot_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axi_awvalid[0]_INST_0 
       (.I0(Q[0]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d[1]),
        .O(m_axi_awvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axi_awvalid[1]_INST_0 
       (.I0(Q[1]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d[1]),
        .O(m_axi_awvalid[1]));
  LUT6 #(
    .INIT(64'hAAAAAAA8FFFFFFFF)) 
    \m_ready_d[0]_i_2 
       (.I0(\m_ready_d_reg[0] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(m_ready_d[0]),
        .I5(aresetn_d),
        .O(\gen_arbiter.m_target_hot_i_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_ready_d[1]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(m_ready_d[0]),
        .O(\gen_arbiter.m_target_hot_i_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_ready_d[1]_i_3 
       (.I0(Q[0]),
        .I1(m_axi_awready[0]),
        .I2(Q[2]),
        .I3(mi_awready_2),
        .I4(m_axi_awready[1]),
        .I5(Q[1]),
        .O(mi_awready_mux__1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \storage_data1[1]_i_3 
       (.I0(\storage_data1_reg[1] [1]),
        .I1(Q[2]),
        .I2(m_ready_d[0]),
        .I3(aa_sa_awvalid),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \storage_data1[1]_i_3__0 
       (.I0(\FSM_onehot_state_reg[1]_1 [2]),
        .I1(Q[1]),
        .I2(m_ready_d[0]),
        .I3(aa_sa_awvalid),
        .O(\FSM_onehot_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \storage_data1[1]_i_4 
       (.I0(\storage_data1_reg[1] [0]),
        .I1(Q[2]),
        .I2(m_ready_d[0]),
        .I3(aa_sa_awvalid),
        .O(\FSM_onehot_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \storage_data1[1]_i_4__0 
       (.I0(\FSM_onehot_state_reg[1]_1 [1]),
        .I1(Q[1]),
        .I2(m_ready_d[0]),
        .I3(aa_sa_awvalid),
        .O(\FSM_onehot_state_reg[1]_0 ));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "2" *) 
(* C_AXI_PROTOCOL = "0" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_CONNECTIVITY_MODE = "1" *) (* C_DEBUG = "1" *) 
(* C_FAMILY = "artix7" *) (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000001111000000000000000000000000000010000" *) (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000001000001001000000000000000000000" *) 
(* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000111100000000000000000000000000001111" *) (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000100000000000000000000000000000001000" *) (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_WRITE_CONNECTIVITY = "64'b0000000000000000000000000000011100000000000000000000000000000111" *) (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000100000000000000000000000000000100000" *) (* C_NUM_ADDR_RANGES = "1" *) 
(* C_NUM_MASTER_SLOTS = "2" *) (* C_NUM_SLAVE_SLOTS = "4" *) (* C_R_REGISTER = "0" *) 
(* C_S_AXI_ARB_PRIORITY = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_BASE_ID = "128'b00000000000000000000000000000011000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000" *) (* C_S_AXI_READ_ACCEPTANCE = "128'b00000000000000000000000000001000000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000001" *) 
(* C_S_AXI_SINGLE_THREAD = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_THREAD_ID_WIDTH = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_WRITE_ACCEPTANCE = "128'b00000000000000000000000000000010000000000000000000000000001000000000000000000000000000000000000100000000000000000000000000000001" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_ADDR_DECODE = "1" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b010" *) 
(* P_FAMILY = "artix7" *) (* P_INCR = "2'b01" *) (* P_LEN = "8" *) 
(* P_LOCK = "1" *) (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* P_M_AXI_SUPPORTS_READ = "2'b11" *) 
(* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) (* P_RANGE_CHECK = "1" *) 
(* P_S_AXI_BASE_ID = "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_HIGH_ID = "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_SUPPORTS_READ = "4'b1111" *) 
(* P_S_AXI_SUPPORTS_WRITE = "4'b0111" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [7:0]s_axi_awid;
  input [127:0]s_axi_awaddr;
  input [31:0]s_axi_awlen;
  input [11:0]s_axi_awsize;
  input [7:0]s_axi_awburst;
  input [3:0]s_axi_awlock;
  input [15:0]s_axi_awcache;
  input [11:0]s_axi_awprot;
  input [15:0]s_axi_awqos;
  input [3:0]s_axi_awuser;
  input [3:0]s_axi_awvalid;
  output [3:0]s_axi_awready;
  input [7:0]s_axi_wid;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [3:0]s_axi_wlast;
  input [3:0]s_axi_wuser;
  input [3:0]s_axi_wvalid;
  output [3:0]s_axi_wready;
  output [7:0]s_axi_bid;
  output [7:0]s_axi_bresp;
  output [3:0]s_axi_buser;
  output [3:0]s_axi_bvalid;
  input [3:0]s_axi_bready;
  input [7:0]s_axi_arid;
  input [127:0]s_axi_araddr;
  input [31:0]s_axi_arlen;
  input [11:0]s_axi_arsize;
  input [7:0]s_axi_arburst;
  input [3:0]s_axi_arlock;
  input [15:0]s_axi_arcache;
  input [11:0]s_axi_arprot;
  input [15:0]s_axi_arqos;
  input [3:0]s_axi_aruser;
  input [3:0]s_axi_arvalid;
  output [3:0]s_axi_arready;
  output [7:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [7:0]s_axi_rresp;
  output [3:0]s_axi_rlast;
  output [3:0]s_axi_ruser;
  output [3:0]s_axi_rvalid;
  input [3:0]s_axi_rready;
  output [3:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [15:0]m_axi_awlen;
  output [5:0]m_axi_awsize;
  output [3:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [7:0]m_axi_awcache;
  output [5:0]m_axi_awprot;
  output [7:0]m_axi_awregion;
  output [7:0]m_axi_awqos;
  output [1:0]m_axi_awuser;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wlast;
  output [1:0]m_axi_wuser;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [3:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_buser;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [3:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [15:0]m_axi_arlen;
  output [5:0]m_axi_arsize;
  output [3:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [7:0]m_axi_arcache;
  output [5:0]m_axi_arprot;
  output [7:0]m_axi_arregion;
  output [7:0]m_axi_arqos;
  output [1:0]m_axi_aruser;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rlast;
  input [1:0]m_axi_ruser;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [63:32]\^m_axi_araddr ;
  wire [3:2]\^m_axi_arburst ;
  wire [7:4]\^m_axi_arcache ;
  wire [1:0]\^m_axi_arid ;
  wire [7:0]\^m_axi_arlen ;
  wire [1:1]\^m_axi_arlock ;
  wire [5:3]\^m_axi_arprot ;
  wire [7:4]\^m_axi_arqos ;
  wire [1:0]m_axi_arready;
  wire [5:3]\^m_axi_arsize ;
  wire [1:0]m_axi_arvalid;
  wire [63:32]\^m_axi_awaddr ;
  wire [3:2]\^m_axi_awburst ;
  wire [7:4]\^m_axi_awcache ;
  wire [1:0]\^m_axi_awid ;
  wire [15:8]\^m_axi_awlen ;
  wire [1:1]\^m_axi_awlock ;
  wire [5:3]\^m_axi_awprot ;
  wire [7:4]\^m_axi_awqos ;
  wire [1:0]m_axi_awready;
  wire [5:3]\^m_axi_awsize ;
  wire [1:0]m_axi_awvalid;
  wire [3:0]m_axi_bid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire [1:0]m_axi_rlast;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire [1:0]m_axi_wlast;
  wire [1:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [127:0]s_axi_araddr;
  wire [7:0]s_axi_arburst;
  wire [15:0]s_axi_arcache;
  wire [31:0]s_axi_arlen;
  wire [3:0]s_axi_arlock;
  wire [11:0]s_axi_arprot;
  wire [15:0]s_axi_arqos;
  wire [3:0]s_axi_arready;
  wire [11:0]s_axi_arsize;
  wire [3:0]s_axi_arvalid;
  wire [127:0]s_axi_awaddr;
  wire [7:0]s_axi_awburst;
  wire [15:0]s_axi_awcache;
  wire [31:0]s_axi_awlen;
  wire [3:0]s_axi_awlock;
  wire [11:0]s_axi_awprot;
  wire [15:0]s_axi_awqos;
  wire [2:0]\^s_axi_awready ;
  wire [11:0]s_axi_awsize;
  wire [3:0]s_axi_awvalid;
  wire [3:0]s_axi_bready;
  wire [5:0]\^s_axi_bresp ;
  wire [2:0]\^s_axi_bvalid ;
  wire [127:0]s_axi_rdata;
  wire [3:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire [7:0]s_axi_rresp;
  wire [3:0]s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire [3:0]s_axi_wlast;
  wire [2:0]\^s_axi_wready ;
  wire [15:0]s_axi_wstrb;
  wire [3:0]s_axi_wvalid;

  assign m_axi_araddr[63:32] = \^m_axi_araddr [63:32];
  assign m_axi_araddr[31:0] = \^m_axi_araddr [63:32];
  assign m_axi_arburst[3:2] = \^m_axi_arburst [3:2];
  assign m_axi_arburst[1:0] = \^m_axi_arburst [3:2];
  assign m_axi_arcache[7:4] = \^m_axi_arcache [7:4];
  assign m_axi_arcache[3:0] = \^m_axi_arcache [7:4];
  assign m_axi_arid[3:2] = \^m_axi_arid [1:0];
  assign m_axi_arid[1:0] = \^m_axi_arid [1:0];
  assign m_axi_arlen[15:8] = \^m_axi_arlen [7:0];
  assign m_axi_arlen[7:0] = \^m_axi_arlen [7:0];
  assign m_axi_arlock[1] = \^m_axi_arlock [1];
  assign m_axi_arlock[0] = \^m_axi_arlock [1];
  assign m_axi_arprot[5:3] = \^m_axi_arprot [5:3];
  assign m_axi_arprot[2:0] = \^m_axi_arprot [5:3];
  assign m_axi_arqos[7:4] = \^m_axi_arqos [7:4];
  assign m_axi_arqos[3:0] = \^m_axi_arqos [7:4];
  assign m_axi_arregion[7] = \<const0> ;
  assign m_axi_arregion[6] = \<const0> ;
  assign m_axi_arregion[5] = \<const0> ;
  assign m_axi_arregion[4] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[5:3] = \^m_axi_arsize [5:3];
  assign m_axi_arsize[2:0] = \^m_axi_arsize [5:3];
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[63:32] = \^m_axi_awaddr [63:32];
  assign m_axi_awaddr[31:0] = \^m_axi_awaddr [63:32];
  assign m_axi_awburst[3:2] = \^m_axi_awburst [3:2];
  assign m_axi_awburst[1:0] = \^m_axi_awburst [3:2];
  assign m_axi_awcache[7:4] = \^m_axi_awcache [7:4];
  assign m_axi_awcache[3:0] = \^m_axi_awcache [7:4];
  assign m_axi_awid[3:2] = \^m_axi_awid [1:0];
  assign m_axi_awid[1:0] = \^m_axi_awid [1:0];
  assign m_axi_awlen[15:8] = \^m_axi_awlen [15:8];
  assign m_axi_awlen[7:0] = \^m_axi_awlen [15:8];
  assign m_axi_awlock[1] = \^m_axi_awlock [1];
  assign m_axi_awlock[0] = \^m_axi_awlock [1];
  assign m_axi_awprot[5:3] = \^m_axi_awprot [5:3];
  assign m_axi_awprot[2:0] = \^m_axi_awprot [5:3];
  assign m_axi_awqos[7:4] = \^m_axi_awqos [7:4];
  assign m_axi_awqos[3:0] = \^m_axi_awqos [7:4];
  assign m_axi_awregion[7] = \<const0> ;
  assign m_axi_awregion[6] = \<const0> ;
  assign m_axi_awregion[5] = \<const0> ;
  assign m_axi_awregion[4] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[5:3] = \^m_axi_awsize [5:3];
  assign m_axi_awsize[2:0] = \^m_axi_awsize [5:3];
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wuser[1] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_awready[3] = \<const0> ;
  assign s_axi_awready[2:0] = \^s_axi_awready [2:0];
  assign s_axi_bid[7] = \<const0> ;
  assign s_axi_bid[6] = \<const0> ;
  assign s_axi_bid[5] = \<const0> ;
  assign s_axi_bid[4] = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[7] = \<const0> ;
  assign s_axi_bresp[6] = \<const0> ;
  assign s_axi_bresp[5:0] = \^s_axi_bresp [5:0];
  assign s_axi_buser[3] = \<const0> ;
  assign s_axi_buser[2] = \<const0> ;
  assign s_axi_buser[1] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid[3] = \<const0> ;
  assign s_axi_bvalid[2:0] = \^s_axi_bvalid [2:0];
  assign s_axi_rid[7] = \<const0> ;
  assign s_axi_rid[6] = \<const0> ;
  assign s_axi_rid[5] = \<const0> ;
  assign s_axi_rid[4] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_ruser[3] = \<const0> ;
  assign s_axi_ruser[2] = \<const0> ;
  assign s_axi_ruser[1] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready[3] = \<const0> ;
  assign s_axi_wready[2:0] = \^s_axi_wready [2:0];
  GND GND
       (.G(\<const0> ));
  mcu_xbar_0_axi_crossbar_v2_1_19_crossbar \gen_samd.crossbar_samd 
       (.M_AXI_RREADY(m_axi_rready),
        .Q(s_axi_arready),
        .aclk(aclk),
        .aresetn(aresetn),
        .\gen_arbiter.m_mesg_i_reg[63] ({\^m_axi_awqos ,\^m_axi_awcache ,\^m_axi_awburst ,\^m_axi_awprot ,\^m_axi_awlock ,\^m_axi_awsize ,\^m_axi_awlen ,\^m_axi_awaddr ,\^m_axi_awid }),
        .\gen_arbiter.m_mesg_i_reg[63]_0 ({\^m_axi_arqos ,\^m_axi_arcache ,\^m_axi_arburst ,\^m_axi_arprot ,\^m_axi_arlock ,\^m_axi_arsize ,\^m_axi_arlen ,\^m_axi_araddr ,\^m_axi_arid }),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_payload_i_reg[34] (s_axi_rlast[1]),
        .m_valid_i_reg(s_axi_rvalid[1]),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[95:0]),
        .s_axi_awburst(s_axi_awburst[5:0]),
        .s_axi_awcache(s_axi_awcache[11:0]),
        .s_axi_awlen(s_axi_awlen[23:0]),
        .s_axi_awlock(s_axi_awlock[2:0]),
        .s_axi_awprot(s_axi_awprot[8:0]),
        .s_axi_awqos(s_axi_awqos[11:0]),
        .s_axi_awready(\^s_axi_awready ),
        .s_axi_awsize(s_axi_awsize[8:0]),
        .s_axi_awvalid(s_axi_awvalid[2:0]),
        .s_axi_bready(s_axi_bready[2:0]),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(\^s_axi_bvalid ),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast({s_axi_rlast[3:2],s_axi_rlast[0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid({s_axi_rvalid[3:2],s_axi_rvalid[0]}),
        .s_axi_wdata(s_axi_wdata[95:0]),
        .s_axi_wlast(s_axi_wlast[2:0]),
        .s_axi_wready(\^s_axi_wready ),
        .s_axi_wstrb(s_axi_wstrb[11:0]),
        .s_axi_wvalid(s_axi_wvalid[2:0]));
endmodule

module mcu_xbar_0_axi_crossbar_v2_1_19_crossbar
   (M_AXI_RREADY,
    m_valid_i_reg,
    \m_payload_i_reg[34] ,
    Q,
    \gen_arbiter.m_mesg_i_reg[63] ,
    \gen_arbiter.m_mesg_i_reg[63]_0 ,
    m_axi_bready,
    s_axi_rresp,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_rlast,
    s_axi_awready,
    s_axi_bvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_awvalid,
    m_axi_arvalid,
    s_axi_bresp,
    m_axi_bvalid,
    m_axi_rvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_awaddr,
    aclk,
    m_axi_bid,
    m_axi_bresp,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    s_axi_awvalid,
    aresetn,
    m_axi_arready,
    m_axi_awready,
    s_axi_araddr,
    s_axi_bready,
    s_axi_wdata,
    s_axi_wstrb,
    m_axi_wready,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arlock,
    s_axi_arprot,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arqos);
  output [1:0]M_AXI_RREADY;
  output m_valid_i_reg;
  output \m_payload_i_reg[34] ;
  output [3:0]Q;
  output [58:0]\gen_arbiter.m_mesg_i_reg[63] ;
  output [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  output [1:0]m_axi_bready;
  output [7:0]s_axi_rresp;
  output [127:0]s_axi_rdata;
  output [2:0]s_axi_rvalid;
  output [2:0]s_axi_rlast;
  output [2:0]s_axi_awready;
  output [2:0]s_axi_bvalid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wlast;
  output [1:0]m_axi_wvalid;
  output [2:0]s_axi_wready;
  output [1:0]m_axi_awvalid;
  output [1:0]m_axi_arvalid;
  output [5:0]s_axi_bresp;
  input [1:0]m_axi_bvalid;
  input [1:0]m_axi_rvalid;
  input [3:0]s_axi_rready;
  input [3:0]s_axi_arvalid;
  input [95:0]s_axi_awaddr;
  input aclk;
  input [3:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [3:0]m_axi_rid;
  input [1:0]m_axi_rlast;
  input [3:0]m_axi_rresp;
  input [63:0]m_axi_rdata;
  input [2:0]s_axi_awvalid;
  input aresetn;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_awready;
  input [127:0]s_axi_araddr;
  input [2:0]s_axi_bready;
  input [95:0]s_axi_wdata;
  input [11:0]s_axi_wstrb;
  input [1:0]m_axi_wready;
  input [2:0]s_axi_wlast;
  input [2:0]s_axi_wvalid;
  input [11:0]s_axi_awqos;
  input [11:0]s_axi_awcache;
  input [5:0]s_axi_awburst;
  input [8:0]s_axi_awprot;
  input [2:0]s_axi_awlock;
  input [8:0]s_axi_awsize;
  input [23:0]s_axi_awlen;
  input [31:0]s_axi_arlen;
  input [11:0]s_axi_arsize;
  input [3:0]s_axi_arlock;
  input [11:0]s_axi_arprot;
  input [7:0]s_axi_arburst;
  input [15:0]s_axi_arcache;
  input [15:0]s_axi_arqos;

  wire [1:0]M_AXI_RREADY;
  wire [3:0]Q;
  wire [2:0]aa_mi_artarget_hot;
  wire aa_mi_arvalid;
  wire [2:0]aa_mi_awtarget_hot;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire addr_arbiter_ar_n_10;
  wire addr_arbiter_ar_n_100;
  wire addr_arbiter_ar_n_101;
  wire addr_arbiter_ar_n_102;
  wire addr_arbiter_ar_n_103;
  wire addr_arbiter_ar_n_104;
  wire addr_arbiter_ar_n_13;
  wire addr_arbiter_ar_n_14;
  wire addr_arbiter_ar_n_2;
  wire addr_arbiter_ar_n_77;
  wire addr_arbiter_ar_n_78;
  wire addr_arbiter_ar_n_79;
  wire addr_arbiter_ar_n_8;
  wire addr_arbiter_ar_n_80;
  wire addr_arbiter_ar_n_82;
  wire addr_arbiter_ar_n_83;
  wire addr_arbiter_ar_n_84;
  wire addr_arbiter_ar_n_85;
  wire addr_arbiter_ar_n_86;
  wire addr_arbiter_ar_n_87;
  wire addr_arbiter_ar_n_88;
  wire addr_arbiter_ar_n_89;
  wire addr_arbiter_ar_n_92;
  wire addr_arbiter_ar_n_93;
  wire addr_arbiter_ar_n_94;
  wire addr_arbiter_ar_n_95;
  wire addr_arbiter_ar_n_96;
  wire addr_arbiter_ar_n_97;
  wire addr_arbiter_ar_n_98;
  wire addr_arbiter_ar_n_99;
  wire addr_arbiter_aw_n_11;
  wire addr_arbiter_aw_n_15;
  wire addr_arbiter_aw_n_16;
  wire addr_arbiter_aw_n_18;
  wire addr_arbiter_aw_n_19;
  wire addr_arbiter_aw_n_2;
  wire addr_arbiter_aw_n_20;
  wire addr_arbiter_aw_n_21;
  wire addr_arbiter_aw_n_22;
  wire addr_arbiter_aw_n_23;
  wire addr_arbiter_aw_n_24;
  wire addr_arbiter_aw_n_25;
  wire addr_arbiter_aw_n_26;
  wire addr_arbiter_aw_n_3;
  wire addr_arbiter_aw_n_30;
  wire addr_arbiter_aw_n_31;
  wire addr_arbiter_aw_n_32;
  wire addr_arbiter_aw_n_33;
  wire addr_arbiter_aw_n_34;
  wire addr_arbiter_aw_n_35;
  wire addr_arbiter_aw_n_36;
  wire addr_arbiter_aw_n_37;
  wire addr_arbiter_aw_n_38;
  wire addr_arbiter_aw_n_39;
  wire addr_arbiter_aw_n_40;
  wire addr_arbiter_aw_n_41;
  wire addr_arbiter_aw_n_42;
  wire addr_arbiter_aw_n_45;
  wire addr_arbiter_aw_n_46;
  wire addr_arbiter_aw_n_5;
  wire addr_arbiter_aw_n_6;
  wire addr_arbiter_aw_n_7;
  wire aresetn;
  wire aresetn_d;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_0 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_1 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_2 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_3 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5 ;
  wire [58:0]\gen_arbiter.m_mesg_i_reg[63] ;
  wire [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  wire \gen_decerr_slave.decerr_slave_inst_n_8 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_40 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_41 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_42 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_43 ;
  wire \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ;
  wire \gen_master_slots[0].reg_slice_mi_n_12 ;
  wire \gen_master_slots[0].reg_slice_mi_n_2 ;
  wire \gen_master_slots[0].reg_slice_mi_n_3 ;
  wire \gen_master_slots[0].reg_slice_mi_n_4 ;
  wire \gen_master_slots[0].reg_slice_mi_n_5 ;
  wire \gen_master_slots[0].reg_slice_mi_n_52 ;
  wire \gen_master_slots[0].reg_slice_mi_n_53 ;
  wire \gen_master_slots[0].reg_slice_mi_n_54 ;
  wire \gen_master_slots[0].reg_slice_mi_n_56 ;
  wire \gen_master_slots[0].reg_slice_mi_n_6 ;
  wire \gen_master_slots[0].reg_slice_mi_n_8 ;
  wire \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_44 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_46 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_47 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_48 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_49 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_50 ;
  wire \gen_master_slots[1].r_issuing_cnt[8]_i_1_n_0 ;
  wire \gen_master_slots[1].reg_slice_mi_n_3 ;
  wire \gen_master_slots[1].reg_slice_mi_n_4 ;
  wire \gen_master_slots[1].reg_slice_mi_n_46 ;
  wire \gen_master_slots[1].reg_slice_mi_n_47 ;
  wire \gen_master_slots[1].reg_slice_mi_n_48 ;
  wire \gen_master_slots[1].reg_slice_mi_n_49 ;
  wire \gen_master_slots[1].reg_slice_mi_n_5 ;
  wire \gen_master_slots[1].reg_slice_mi_n_51 ;
  wire \gen_master_slots[1].reg_slice_mi_n_52 ;
  wire \gen_master_slots[1].reg_slice_mi_n_53 ;
  wire \gen_master_slots[1].reg_slice_mi_n_6 ;
  wire \gen_master_slots[1].reg_slice_mi_n_7 ;
  wire \gen_master_slots[1].reg_slice_mi_n_8 ;
  wire \gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_0 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_3 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_7 ;
  wire \gen_master_slots[2].reg_slice_mi_n_10 ;
  wire \gen_master_slots[2].reg_slice_mi_n_13 ;
  wire \gen_master_slots[2].reg_slice_mi_n_14 ;
  wire \gen_master_slots[2].reg_slice_mi_n_18 ;
  wire \gen_master_slots[2].reg_slice_mi_n_19 ;
  wire \gen_master_slots[2].reg_slice_mi_n_22 ;
  wire \gen_master_slots[2].reg_slice_mi_n_23 ;
  wire \gen_master_slots[2].reg_slice_mi_n_24 ;
  wire \gen_master_slots[2].reg_slice_mi_n_3 ;
  wire \gen_master_slots[2].reg_slice_mi_n_4 ;
  wire \gen_master_slots[2].reg_slice_mi_n_5 ;
  wire \gen_master_slots[2].reg_slice_mi_n_7 ;
  wire \gen_single_issue.accept_cnt ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire [1:0]\gen_single_issue.active_target_enc_17 ;
  wire [1:0]\gen_single_issue.active_target_enc_22 ;
  wire [1:0]\gen_single_issue.active_target_enc_24 ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire [0:0]\gen_single_issue.active_target_hot_18 ;
  wire [0:0]\gen_single_issue.active_target_hot_23 ;
  wire [0:0]\gen_single_issue.active_target_hot_25 ;
  wire [1:0]\gen_single_thread.active_target_enc ;
  wire [1:0]\gen_single_thread.active_target_enc_31 ;
  wire [1:0]\gen_single_thread.active_target_enc_36 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_30 ;
  wire [0:0]\gen_single_thread.active_target_hot_35 ;
  wire \gen_single_thread.s_avalid_en ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_7 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_6 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_7 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_8 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_3 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_5 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_3 ;
  wire \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3 ;
  wire \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_4 ;
  wire \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_6 ;
  wire \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_7 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_5 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_6 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_7 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_8 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_9 ;
  wire \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_3 ;
  wire \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_5 ;
  wire \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_6 ;
  wire \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_8 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_3 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_4 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_5 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_6 ;
  wire \gen_slave_slots[2].gen_si_write.wdata_router_w_n_10 ;
  wire \gen_slave_slots[2].gen_si_write.wdata_router_w_n_4 ;
  wire \gen_slave_slots[2].gen_si_write.wdata_router_w_n_5 ;
  wire \gen_slave_slots[2].gen_si_write.wdata_router_w_n_8 ;
  wire \gen_slave_slots[2].gen_si_write.wdata_router_w_n_9 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_3 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_4 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_5 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_6 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_7 ;
  wire \gen_wmux.wmux_aw_fifo/p_0_in6_in ;
  wire \gen_wmux.wmux_aw_fifo/p_0_in6_in_10 ;
  wire \gen_wmux.wmux_aw_fifo/p_7_in ;
  wire \gen_wmux.wmux_aw_fifo/p_7_in_11 ;
  wire m_avalid;
  wire m_avalid_20;
  wire m_avalid_28;
  wire m_avalid_34;
  wire m_avalid_8;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_arvalid;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [3:0]m_axi_bid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire [1:0]m_axi_rlast;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire [1:0]m_axi_wlast;
  wire [1:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire \m_payload_i_reg[34] ;
  wire [1:0]m_ready_d;
  wire [1:0]m_ready_d_26;
  wire [1:0]m_ready_d_32;
  wire [1:0]m_ready_d_37;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_12;
  wire [1:0]m_select_enc_7;
  wire m_valid_i_reg;
  wire match;
  wire match_16;
  wire match_19;
  wire match_21;
  wire match_27;
  wire match_29;
  wire match_33;
  wire mi_arready_2;
  wire mi_awready_2;
  wire mi_awready_mux__1;
  wire mi_bready_2;
  wire mi_rready_2;
  wire p_0_in;
  wire p_14_in;
  wire p_15_in;
  wire p_17_in;
  wire p_1_in;
  wire [1:0]p_20_in;
  wire p_21_in;
  wire [1:0]p_24_in;
  wire p_2_in;
  wire p_2_in_9;
  wire [16:0]r_issuing_cnt;
  wire reset;
  wire [127:0]s_axi_araddr;
  wire [7:0]s_axi_arburst;
  wire [15:0]s_axi_arcache;
  wire [31:0]s_axi_arlen;
  wire [3:0]s_axi_arlock;
  wire [11:0]s_axi_arprot;
  wire [15:0]s_axi_arqos;
  wire [11:0]s_axi_arsize;
  wire [3:0]s_axi_arvalid;
  wire [95:0]s_axi_awaddr;
  wire [5:0]s_axi_awburst;
  wire [11:0]s_axi_awcache;
  wire [23:0]s_axi_awlen;
  wire [2:0]s_axi_awlock;
  wire [8:0]s_axi_awprot;
  wire [11:0]s_axi_awqos;
  wire [2:0]s_axi_awready;
  wire [8:0]s_axi_awsize;
  wire [2:0]s_axi_awvalid;
  wire [2:0]s_axi_bready;
  wire [5:0]s_axi_bresp;
  wire [2:0]s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [2:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire [7:0]s_axi_rresp;
  wire [2:0]s_axi_rvalid;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [2:0]s_axi_wready;
  wire [11:0]s_axi_wstrb;
  wire [2:0]s_axi_wvalid;
  wire splitter_aw_mi_n_0;
  wire splitter_aw_mi_n_3;
  wire [2:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire ss_wr_awready_1;
  wire ss_wr_awready_2;
  wire [0:0]st_aa_awtarget_enc_0;
  wire [0:0]st_aa_awtarget_enc_2;
  wire [4:0]st_mr_bmesg;
  wire [2:0]st_mr_rlast;
  wire [69:0]st_mr_rmesg;
  wire [0:0]valid_qual_i;
  wire valid_qual_i140_in;
  wire valid_qual_i140_in_15;
  wire valid_qual_i142_in;
  wire valid_qual_i142_in_13;
  wire valid_qual_i145_in;
  wire valid_qual_i1__1;
  wire valid_qual_i1__1_14;
  wire [1:0]valid_qual_i3__2;
  wire [1:0]valid_qual_i3__2_6;
  wire [16:0]w_issuing_cnt;
  wire \wrouter_aw_fifo/areset_d1 ;

  mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter addr_arbiter_ar
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_2 ),
        .ADDRESS_HIT_0_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_1 ),
        .ADDRESS_HIT_0_1(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_0 ),
        .ADDRESS_HIT_0_2(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .D({\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_5 ,\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_3 ,\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_3 ,\gen_master_slots[0].reg_slice_mi_n_6 }),
        .Q(Q),
        .SR(reset),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.any_grant_reg_0 (\gen_master_slots[2].reg_slice_mi_n_7 ),
        .\gen_arbiter.any_grant_reg_1 (\gen_master_slots[2].reg_slice_mi_n_10 ),
        .\gen_arbiter.last_rr_hot_reg[0]_0 (addr_arbiter_ar_n_80),
        .\gen_arbiter.last_rr_hot_reg[0]_1 (addr_arbiter_ar_n_83),
        .\gen_arbiter.last_rr_hot_reg[2]_0 (addr_arbiter_ar_n_79),
        .\gen_arbiter.last_rr_hot_reg[2]_1 (addr_arbiter_ar_n_82),
        .\gen_arbiter.m_grant_enc_i_reg[0]_0 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_5 ),
        .\gen_arbiter.m_grant_enc_i_reg[0]_1 (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_3 ),
        .\gen_arbiter.m_grant_enc_i_reg[0]_2 (\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_5 ),
        .\gen_arbiter.m_mesg_i_reg[0]_0 (addr_arbiter_ar_n_77),
        .\gen_arbiter.m_mesg_i_reg[1]_0 (addr_arbiter_ar_n_14),
        .\gen_arbiter.m_mesg_i_reg[63]_0 (\gen_arbiter.m_mesg_i_reg[63]_0 ),
        .\gen_arbiter.m_target_hot_i_reg[1]_0 (\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_8 ),
        .\gen_arbiter.m_target_hot_i_reg[1]_1 (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_6 ),
        .\gen_arbiter.m_target_hot_i_reg[2]_0 (aa_mi_artarget_hot),
        .\gen_arbiter.m_valid_i_reg_0 (addr_arbiter_ar_n_78),
        .\gen_arbiter.m_valid_i_reg_1 (addr_arbiter_ar_n_89),
        .\gen_arbiter.m_valid_i_reg_2 (addr_arbiter_ar_n_92),
        .\gen_arbiter.s_ready_i_reg[0]_0 (addr_arbiter_ar_n_8),
        .\gen_arbiter.s_ready_i_reg[0]_1 (addr_arbiter_ar_n_100),
        .\gen_arbiter.s_ready_i_reg[1]_0 (addr_arbiter_ar_n_10),
        .\gen_arbiter.s_ready_i_reg[1]_1 (addr_arbiter_ar_n_102),
        .\gen_arbiter.s_ready_i_reg[2]_0 (addr_arbiter_ar_n_13),
        .\gen_arbiter.s_ready_i_reg[2]_1 (addr_arbiter_ar_n_103),
        .\gen_arbiter.s_ready_i_reg[2]_2 (addr_arbiter_ar_n_104),
        .\gen_arbiter.s_ready_i_reg[3]_0 (addr_arbiter_ar_n_2),
        .\gen_arbiter.s_ready_i_reg[3]_1 (addr_arbiter_ar_n_97),
        .\gen_arbiter.s_ready_i_reg[3]_2 (addr_arbiter_ar_n_98),
        .\gen_axi.read_cs_reg[0] (addr_arbiter_ar_n_95),
        .\gen_axi.s_axi_arready_i_reg (addr_arbiter_ar_n_96),
        .\gen_master_slots[0].r_issuing_cnt_reg[0] (addr_arbiter_ar_n_93),
        .\gen_master_slots[1].r_issuing_cnt_reg[8] (addr_arbiter_ar_n_94),
        .\gen_master_slots[2].r_issuing_cnt_reg[16] (\gen_master_slots[2].reg_slice_mi_n_5 ),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc ),
        .\gen_single_issue.active_target_enc_8 (\gen_single_issue.active_target_enc_22 ),
        .\gen_single_issue.active_target_hot (\gen_single_issue.active_target_hot ),
        .\gen_single_issue.active_target_hot_3 (\gen_single_issue.active_target_hot_23 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_36 ),
        .\gen_single_thread.active_target_enc_9 (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_35 ),
        .\gen_single_thread.active_target_hot_4 (\gen_single_thread.active_target_hot ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .match(match),
        .match_5(match_29),
        .match_6(match_16),
        .match_7(match_21),
        .mi_arready_2(mi_arready_2),
        .p_15_in(p_15_in),
        .p_20_in(p_20_in),
        .r_issuing_cnt({r_issuing_cnt[16],r_issuing_cnt[10:8],r_issuing_cnt[2:0]}),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_araddr_126_sp_1(addr_arbiter_ar_n_84),
        .s_axi_araddr_30_sp_1(addr_arbiter_ar_n_99),
        .s_axi_araddr_62_sp_1(addr_arbiter_ar_n_101),
        .s_axi_araddr_81_sp_1(addr_arbiter_ar_n_86),
        .s_axi_araddr_87_sp_1(addr_arbiter_ar_n_85),
        .s_axi_araddr_91_sp_1(addr_arbiter_ar_n_87),
        .s_axi_araddr_95_sp_1(addr_arbiter_ar_n_88),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .valid_qual_i(valid_qual_i));
  mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter_0 addr_arbiter_aw
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5 ),
        .ADDRESS_HIT_0_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4 ),
        .ADDRESS_HIT_0_1(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_3 ),
        .D({addr_arbiter_aw_n_5,addr_arbiter_aw_n_6,addr_arbiter_aw_n_7}),
        .E(addr_arbiter_aw_n_16),
        .\FSM_onehot_state_reg[0] (addr_arbiter_aw_n_41),
        .\FSM_onehot_state_reg[1] (addr_arbiter_aw_n_37),
        .\FSM_onehot_state_reg[1]_0 (addr_arbiter_aw_n_40),
        .\FSM_onehot_state_reg[1]_1 ({\gen_wmux.wmux_aw_fifo/p_7_in ,\gen_wmux.wmux_aw_fifo/p_0_in6_in ,\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_44 }),
        .\FSM_onehot_state_reg[3] (addr_arbiter_aw_n_36),
        .\FSM_onehot_state_reg[3]_0 (addr_arbiter_aw_n_39),
        .Q(aa_mi_awtarget_hot),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.grant_hot_reg[2]_0 (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_arbiter.grant_hot_reg[2]_1 (\gen_master_slots[2].reg_slice_mi_n_14 ),
        .\gen_arbiter.last_rr_hot_reg[0]_0 (addr_arbiter_aw_n_2),
        .\gen_arbiter.last_rr_hot_reg[0]_1 (addr_arbiter_aw_n_26),
        .\gen_arbiter.last_rr_hot_reg[3]_0 (addr_arbiter_aw_n_3),
        .\gen_arbiter.m_mesg_i_reg[63]_0 (\gen_arbiter.m_mesg_i_reg[63] ),
        .\gen_arbiter.m_target_hot_i_reg[1]_0 (addr_arbiter_aw_n_35),
        .\gen_arbiter.m_target_hot_i_reg[2]_0 (addr_arbiter_aw_n_11),
        .\gen_arbiter.m_target_hot_i_reg[2]_1 (addr_arbiter_aw_n_15),
        .\gen_arbiter.m_valid_i_reg_0 (addr_arbiter_aw_n_38),
        .\gen_arbiter.m_valid_i_reg_1 (addr_arbiter_aw_n_42),
        .\gen_arbiter.qual_reg_reg[2]_0 ({\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_4 ,\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_4 ,\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 }),
        .\gen_axi.s_axi_awready_i_reg (addr_arbiter_aw_n_25),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (addr_arbiter_aw_n_18),
        .\gen_master_slots[0].w_issuing_cnt_reg[0]_0 (\gen_master_slots[0].reg_slice_mi_n_2 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[2] (addr_arbiter_aw_n_19),
        .\gen_master_slots[0].w_issuing_cnt_reg[4] ({addr_arbiter_aw_n_20,addr_arbiter_aw_n_21,addr_arbiter_aw_n_22,addr_arbiter_aw_n_23,addr_arbiter_aw_n_24}),
        .\gen_master_slots[1].w_issuing_cnt_reg[10] (addr_arbiter_aw_n_45),
        .\gen_master_slots[1].w_issuing_cnt_reg[8] (\gen_master_slots[1].reg_slice_mi_n_3 ),
        .\gen_master_slots[2].w_issuing_cnt_reg[16] (\gen_master_slots[2].reg_slice_mi_n_4 ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_ready_d(m_ready_d_37),
        .m_ready_d_4(m_ready_d[0]),
        .m_ready_d_5(m_ready_d_32[0]),
        .m_ready_d_6(m_ready_d_26[0]),
        .\m_ready_d_reg[0] (splitter_aw_mi_n_0),
        .\m_ready_d_reg[1] (addr_arbiter_aw_n_46),
        .match(match_19),
        .match_2(match_27),
        .match_3(match_33),
        .mi_awready_2(mi_awready_2),
        .mi_awready_mux__1(mi_awready_mux__1),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awaddr_81_sp_1(addr_arbiter_aw_n_31),
        .s_axi_awaddr_87_sp_1(addr_arbiter_aw_n_30),
        .s_axi_awaddr_91_sp_1(addr_arbiter_aw_n_32),
        .s_axi_awaddr_94_sp_1(addr_arbiter_aw_n_34),
        .s_axi_awaddr_95_sp_1(addr_arbiter_aw_n_33),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .ss_aa_awready(ss_aa_awready),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2),
        .\storage_data1_reg[1] ({\gen_wmux.wmux_aw_fifo/p_7_in_11 ,\gen_wmux.wmux_aw_fifo/p_0_in6_in_10 }),
        .w_issuing_cnt({w_issuing_cnt[16],w_issuing_cnt[11:8],w_issuing_cnt[5:0]}));
  FDRE #(
    .INIT(1'b0)) 
    aresetn_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_d),
        .R(1'b0));
  mcu_xbar_0_axi_crossbar_v2_1_19_decerr_slave \gen_decerr_slave.decerr_slave_inst 
       (.\FSM_onehot_gen_axi.write_cs_reg[1]_0 (\gen_decerr_slave.decerr_slave_inst_n_8 ),
        .\FSM_onehot_gen_axi.write_cs_reg[2]_0 (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_3 ),
        .Q(aa_mi_awtarget_hot[2]),
        .SR(reset),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_axi.read_cnt_reg[7]_0 (\gen_arbiter.m_mesg_i_reg[63]_0 [41:34]),
        .\gen_axi.read_cs_reg[0]_0 (aa_mi_artarget_hot[2]),
        .\gen_axi.s_axi_arready_i_reg_0 (addr_arbiter_ar_n_78),
        .\gen_axi.s_axi_awready_i_reg_0 (addr_arbiter_aw_n_25),
        .\gen_axi.s_axi_bid_i_reg[1]_0 (\gen_arbiter.m_mesg_i_reg[63] [1:0]),
        .\gen_axi.s_axi_rid_i_reg[0]_0 (addr_arbiter_ar_n_77),
        .\gen_axi.s_axi_rid_i_reg[1]_0 (addr_arbiter_ar_n_14),
        .\gen_axi.s_axi_rlast_i_reg_0 (addr_arbiter_ar_n_95),
        .m_ready_d(m_ready_d_37[1]),
        .mi_arready_2(mi_arready_2),
        .mi_awready_2(mi_awready_2),
        .mi_bready_2(mi_bready_2),
        .mi_rready_2(mi_rready_2),
        .p_14_in(p_14_in),
        .p_15_in(p_15_in),
        .p_17_in(p_17_in),
        .p_20_in(p_20_in),
        .p_21_in(p_21_in),
        .p_24_in(p_24_in));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux \gen_master_slots[0].gen_mi_write.wdata_mux_w 
       (.\FSM_onehot_state_reg[1] (splitter_aw_mi_n_3),
        .Q(aa_mi_awtarget_hot[0]),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_rep[0].fifoaddr_reg[0] (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_10 ),
        .\gen_rep[0].fifoaddr_reg[0]_0 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_9 ),
        .\gen_rep[0].fifoaddr_reg[0]_1 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ),
        .m_avalid(m_avalid),
        .m_axi_wdata(m_axi_wdata[31:0]),
        .m_axi_wlast(m_axi_wlast[0]),
        .m_axi_wready(m_axi_wready[0]),
        .m_axi_wstrb(m_axi_wstrb[3:0]),
        .m_ready_d(m_ready_d_37[0]),
        .m_select_enc(m_select_enc),
        .m_valid_i_reg(\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_42 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .\storage_data1_reg[0] (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_40 ),
        .\storage_data1_reg[0]_0 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_43 ),
        .\storage_data1_reg[1] (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_41 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].r_issuing_cnt[0]_i_1 
       (.I0(r_issuing_cnt[0]),
        .O(\gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_12 ),
        .D(\gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ),
        .Q(r_issuing_cnt[0]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_12 ),
        .D(\gen_master_slots[0].reg_slice_mi_n_5 ),
        .Q(r_issuing_cnt[1]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_12 ),
        .D(\gen_master_slots[0].reg_slice_mi_n_4 ),
        .Q(r_issuing_cnt[2]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_12 ),
        .D(\gen_master_slots[0].reg_slice_mi_n_3 ),
        .Q(r_issuing_cnt[3]),
        .R(reset));
  mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice \gen_master_slots[0].reg_slice_mi 
       (.D({\gen_master_slots[0].reg_slice_mi_n_3 ,\gen_master_slots[0].reg_slice_mi_n_4 ,\gen_master_slots[0].reg_slice_mi_n_5 }),
        .E(\gen_master_slots[0].reg_slice_mi_n_12 ),
        .Q(r_issuing_cnt[3:0]),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aclk(aclk),
        .\gen_arbiter.qual_reg[0]_i_2 (addr_arbiter_aw_n_19),
        .\gen_arbiter.qual_reg[0]_i_2_0 ({w_issuing_cnt[5],w_issuing_cnt[0]}),
        .\gen_arbiter.s_ready_i_reg[0] (\gen_master_slots[0].reg_slice_mi_n_56 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0] (addr_arbiter_ar_n_93),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_0 (addr_arbiter_ar_n_92),
        .\gen_master_slots[0].r_issuing_cnt_reg[2] (aa_mi_artarget_hot[0]),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt ),
        .\gen_single_issue.accept_cnt_reg (Q[0]),
        .\gen_single_issue.active_target_hot (\gen_single_issue.active_target_hot ),
        .\gen_single_issue.active_target_hot_1 (\gen_single_issue.active_target_hot_23 ),
        .\gen_single_issue.active_target_hot_2 (\gen_single_issue.active_target_hot_18 ),
        .\gen_single_issue.active_target_hot_3 (\gen_single_issue.active_target_hot_25 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_30 ),
        .\gen_single_thread.active_target_hot_4 (\gen_single_thread.active_target_hot_35 ),
        .\gen_single_thread.active_target_hot_5 (\gen_single_thread.active_target_hot ),
        .m_axi_arready(m_axi_arready[0]),
        .m_axi_bready(m_axi_bready[0]),
        .m_axi_bvalid(m_axi_bvalid[0]),
        .m_axi_rdata(m_axi_rdata[31:0]),
        .m_axi_rid(m_axi_rid[1:0]),
        .m_axi_rlast(m_axi_rlast[0]),
        .m_axi_rresp(m_axi_rresp[1:0]),
        .m_axi_rvalid(m_axi_rvalid[0]),
        .\m_payload_i_reg[1] (st_mr_bmesg[1:0]),
        .\m_payload_i_reg[2] (\gen_master_slots[0].reg_slice_mi_n_2 ),
        .\m_payload_i_reg[34] ({st_mr_rlast[0],st_mr_rmesg[1:0],st_mr_rmesg[34:3]}),
        .\m_payload_i_reg[3] ({m_axi_bid[1:0],m_axi_bresp[1:0]}),
        .m_valid_i_reg(m_valid_i_reg),
        .m_valid_i_reg_0(\gen_master_slots[0].reg_slice_mi_n_52 ),
        .m_valid_i_reg_1(\gen_master_slots[0].reg_slice_mi_n_53 ),
        .m_valid_i_reg_2(\gen_master_slots[0].reg_slice_mi_n_54 ),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in),
        .s_axi_arvalid(s_axi_arvalid[0]),
        .\s_axi_arvalid[0] (\gen_master_slots[0].reg_slice_mi_n_6 ),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid[0]),
        .\s_axi_bvalid[0]_0 (\gen_master_slots[2].reg_slice_mi_n_18 ),
        .s_axi_bvalid_0_sp_1(\gen_master_slots[1].reg_slice_mi_n_46 ),
        .s_axi_rlast({s_axi_rlast[2],s_axi_rlast[0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0_sp_1(\gen_master_slots[0].reg_slice_mi_n_8 ),
        .s_axi_rvalid(s_axi_rvalid),
        .\s_axi_rvalid[0]_0 (\gen_master_slots[2].reg_slice_mi_n_13 ),
        .\s_axi_rvalid[1]_0 (\gen_master_slots[2].reg_slice_mi_n_19 ),
        .\s_axi_rvalid[2]_0 (\gen_master_slots[2].reg_slice_mi_n_23 ),
        .\s_axi_rvalid[3] (\gen_master_slots[1].reg_slice_mi_n_52 ),
        .\s_axi_rvalid[3]_0 (\gen_master_slots[2].reg_slice_mi_n_24 ),
        .s_axi_rvalid_0_sp_1(\gen_master_slots[1].reg_slice_mi_n_7 ),
        .s_axi_rvalid_1_sp_1(\gen_master_slots[1].reg_slice_mi_n_47 ),
        .s_axi_rvalid_2_sp_1(\gen_master_slots[1].reg_slice_mi_n_51 ),
        .s_ready_i_reg(M_AXI_RREADY[0]),
        .s_ready_i_reg_0(\gen_master_slots[2].reg_slice_mi_n_3 ),
        .valid_qual_i(valid_qual_i),
        .valid_qual_i1__1(valid_qual_i1__1_14),
        .valid_qual_i3__2(valid_qual_i3__2_6[0]),
        .valid_qual_i3__2_0(valid_qual_i3__2[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].w_issuing_cnt[0]_i_1 
       (.I0(w_issuing_cnt[0]),
        .O(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_18),
        .D(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ),
        .Q(w_issuing_cnt[0]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_18),
        .D(addr_arbiter_aw_n_24),
        .Q(w_issuing_cnt[1]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[2] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_18),
        .D(addr_arbiter_aw_n_23),
        .Q(w_issuing_cnt[2]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[3] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_18),
        .D(addr_arbiter_aw_n_22),
        .Q(w_issuing_cnt[3]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[4] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_18),
        .D(addr_arbiter_aw_n_21),
        .Q(w_issuing_cnt[4]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[5] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_18),
        .D(addr_arbiter_aw_n_20),
        .Q(w_issuing_cnt[5]),
        .R(reset));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized0 \gen_master_slots[1].gen_mi_write.wdata_mux_w 
       (.\FSM_onehot_state_reg[0] (aa_mi_awtarget_hot[1]),
        .\FSM_onehot_state_reg[1] (addr_arbiter_aw_n_42),
        .\FSM_onehot_state_reg[1]_0 (addr_arbiter_aw_n_35),
        .Q({\gen_wmux.wmux_aw_fifo/p_7_in ,\gen_wmux.wmux_aw_fifo/p_0_in6_in ,\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_44 }),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_rep[0].fifoaddr_reg[0] (splitter_aw_mi_n_3),
        .\gen_rep[0].fifoaddr_reg[2] (addr_arbiter_aw_n_41),
        .m_avalid(m_avalid_8),
        .m_avalid_0(m_avalid_20),
        .m_avalid_1(m_avalid_34),
        .m_avalid_2(m_avalid_28),
        .m_axi_wdata(m_axi_wdata[63:32]),
        .m_axi_wready(m_axi_wready[1]),
        .m_axi_wstrb(m_axi_wstrb[7:4]),
        .m_ready_d(m_ready_d_37[0]),
        .m_select_enc(m_select_enc_7),
        .m_valid_i_reg(\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_46 ),
        .m_valid_i_reg_0(\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_49 ),
        .m_valid_i_reg_1(\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_50 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wlast_2_sp_1(m_axi_wlast[1]),
        .s_axi_wready(s_axi_wready),
        .\s_axi_wready[0]_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_6 ),
        .\s_axi_wready[0]_1 (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_0 ),
        .\s_axi_wready[1]_0 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_6 ),
        .\s_axi_wready[1]_1 (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_7 ),
        .\s_axi_wready[2]_0 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_5 ),
        .\s_axi_wready[2]_1 (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6 ),
        .s_axi_wready_0_sp_1(\gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ),
        .s_axi_wready_1_sp_1(\gen_slave_slots[1].gen_si_write.wdata_router_w_n_4 ),
        .s_axi_wready_2_sp_1(\gen_slave_slots[2].gen_si_write.wdata_router_w_n_4 ),
        .s_axi_wstrb(s_axi_wstrb),
        .\storage_data1_reg[0] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_48 ),
        .\storage_data1_reg[1] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_47 ),
        .\storage_data1_reg[1]_0 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_9 ),
        .\storage_data1_reg[1]_1 (addr_arbiter_aw_n_39),
        .\storage_data1_reg[1]_2 (addr_arbiter_aw_n_40));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[1].r_issuing_cnt[8]_i_1 
       (.I0(r_issuing_cnt[8]),
        .O(\gen_master_slots[1].r_issuing_cnt[8]_i_1_n_0 ));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[10] 
       (.C(aclk),
        .CE(\gen_master_slots[1].reg_slice_mi_n_8 ),
        .D(\gen_master_slots[1].reg_slice_mi_n_5 ),
        .Q(r_issuing_cnt[10]),
        .R(reset));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[11] 
       (.C(aclk),
        .CE(\gen_master_slots[1].reg_slice_mi_n_8 ),
        .D(\gen_master_slots[1].reg_slice_mi_n_4 ),
        .Q(r_issuing_cnt[11]),
        .R(reset));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[8] 
       (.C(aclk),
        .CE(\gen_master_slots[1].reg_slice_mi_n_8 ),
        .D(\gen_master_slots[1].r_issuing_cnt[8]_i_1_n_0 ),
        .Q(r_issuing_cnt[8]),
        .R(reset));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[9] 
       (.C(aclk),
        .CE(\gen_master_slots[1].reg_slice_mi_n_8 ),
        .D(\gen_master_slots[1].reg_slice_mi_n_6 ),
        .Q(r_issuing_cnt[9]),
        .R(reset));
  mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_1 \gen_master_slots[1].reg_slice_mi 
       (.D({\gen_master_slots[1].reg_slice_mi_n_4 ,\gen_master_slots[1].reg_slice_mi_n_5 ,\gen_master_slots[1].reg_slice_mi_n_6 }),
        .E(\gen_master_slots[1].reg_slice_mi_n_8 ),
        .Q(r_issuing_cnt[11:8]),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0] (\gen_master_slots[1].reg_slice_mi_n_53 ),
        .\gen_arbiter.qual_reg[0]_i_2 ({w_issuing_cnt[11],w_issuing_cnt[8]}),
        .\gen_arbiter.qual_reg[0]_i_2_0 (addr_arbiter_aw_n_45),
        .\gen_master_slots[1].r_issuing_cnt_reg[10] (aa_mi_artarget_hot[1]),
        .\gen_master_slots[1].r_issuing_cnt_reg[8] (addr_arbiter_ar_n_94),
        .\gen_master_slots[1].r_issuing_cnt_reg[8]_0 (addr_arbiter_ar_n_89),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc [0]),
        .\gen_single_issue.active_target_enc_1 (\gen_single_issue.active_target_enc_22 [0]),
        .\gen_single_issue.active_target_enc_2 (\gen_single_issue.active_target_enc_24 [0]),
        .\gen_single_issue.active_target_enc_3 (\gen_single_issue.active_target_enc_17 [0]),
        .\gen_single_thread.accept_cnt_reg[0] (\gen_master_slots[0].reg_slice_mi_n_54 ),
        .\gen_single_thread.accept_cnt_reg[0]_0 (\gen_master_slots[2].reg_slice_mi_n_23 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_31 [0]),
        .\gen_single_thread.active_target_enc_4 (\gen_single_thread.active_target_enc_36 [0]),
        .\gen_single_thread.active_target_enc_5 (\gen_single_thread.active_target_enc [0]),
        .m_axi_arready(m_axi_arready[1]),
        .m_axi_bready(m_axi_bready[1]),
        .m_axi_bvalid(m_axi_bvalid[1]),
        .m_axi_rdata(m_axi_rdata[63:32]),
        .m_axi_rid(m_axi_rid[3:2]),
        .m_axi_rlast(m_axi_rlast[1]),
        .m_axi_rresp(m_axi_rresp[3:2]),
        .m_axi_rvalid(m_axi_rvalid[1]),
        .\m_payload_i_reg[1] (st_mr_bmesg[4:3]),
        .\m_payload_i_reg[2] (\gen_master_slots[1].reg_slice_mi_n_3 ),
        .\m_payload_i_reg[2]_0 (\gen_master_slots[1].reg_slice_mi_n_48 ),
        .\m_payload_i_reg[2]_1 (\gen_master_slots[1].reg_slice_mi_n_49 ),
        .\m_payload_i_reg[34] ({st_mr_rlast[1],st_mr_rmesg[36:35],st_mr_rmesg[69:38]}),
        .\m_payload_i_reg[35] (\gen_master_slots[1].reg_slice_mi_n_47 ),
        .\m_payload_i_reg[35]_0 (\gen_master_slots[1].reg_slice_mi_n_51 ),
        .\m_payload_i_reg[35]_1 (\gen_master_slots[1].reg_slice_mi_n_52 ),
        .\m_payload_i_reg[36] (\gen_master_slots[1].reg_slice_mi_n_7 ),
        .\m_payload_i_reg[3] ({m_axi_bid[3:2],m_axi_bresp[3:2]}),
        .m_valid_i_reg(\gen_master_slots[1].reg_slice_mi_n_46 ),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in_9),
        .s_axi_bready(s_axi_bready),
        .s_axi_rlast(s_axi_rlast[1]),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg(M_AXI_RREADY[1]),
        .s_ready_i_reg_0(\gen_master_slots[2].reg_slice_mi_n_3 ),
        .valid_qual_i3__2(valid_qual_i3__2_6[1]),
        .valid_qual_i3__2_0(valid_qual_i3__2[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[1].w_issuing_cnt[8]_i_1 
       (.I0(w_issuing_cnt[8]),
        .O(\gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0 ));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[10] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_16),
        .D(addr_arbiter_aw_n_6),
        .Q(w_issuing_cnt[10]),
        .R(reset));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[11] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_16),
        .D(addr_arbiter_aw_n_5),
        .Q(w_issuing_cnt[11]),
        .R(reset));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[8] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_16),
        .D(\gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0 ),
        .Q(w_issuing_cnt[8]),
        .R(reset));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[9] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_16),
        .D(addr_arbiter_aw_n_7),
        .Q(w_issuing_cnt[9]),
        .R(reset));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized1 \gen_master_slots[2].gen_mi_write.wdata_mux_w 
       (.\FSM_onehot_gen_axi.write_cs_reg[1] (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_3 ),
        .\FSM_onehot_gen_axi.write_cs_reg[2] (\gen_decerr_slave.decerr_slave_inst_n_8 ),
        .\FSM_onehot_state_reg[0] (aa_mi_awtarget_hot[2]),
        .\FSM_onehot_state_reg[1] (addr_arbiter_aw_n_38),
        .Q({\gen_wmux.wmux_aw_fifo/p_7_in_11 ,\gen_wmux.wmux_aw_fifo/p_0_in6_in_10 }),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_rep[0].fifoaddr_reg[0] (splitter_aw_mi_n_3),
        .m_ready_d(m_ready_d_37[0]),
        .m_select_enc(m_select_enc_12),
        .p_14_in(p_14_in),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wready[0]_INST_0_i_1 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_40 ),
        .\s_axi_wready[0]_INST_0_i_1_0 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_42 ),
        .\s_axi_wready[0]_INST_0_i_1_1 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ),
        .\s_axi_wready[1]_INST_0_i_1 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_43 ),
        .\s_axi_wready[1]_INST_0_i_1_0 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_4 ),
        .\s_axi_wready[2]_INST_0_i_1 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_41 ),
        .\s_axi_wready[2]_INST_0_i_1_0 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_4 ),
        .\storage_data1_reg[0] (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6 ),
        .\storage_data1_reg[1] (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_0 ),
        .\storage_data1_reg[1]_0 (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_7 ),
        .\storage_data1_reg[1]_1 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_8 ),
        .\storage_data1_reg[1]_2 (addr_arbiter_aw_n_36),
        .\storage_data1_reg[1]_3 (addr_arbiter_aw_n_37));
  FDRE \gen_master_slots[2].r_issuing_cnt_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_ar_n_96),
        .Q(r_issuing_cnt[16]),
        .R(reset));
  mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_2 \gen_master_slots[2].reg_slice_mi 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_2 ),
        .ADDRESS_HIT_0_10(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_3 ),
        .ADDRESS_HIT_0_3(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .ADDRESS_HIT_0_4(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_0 ),
        .ADDRESS_HIT_0_5(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_1 ),
        .ADDRESS_HIT_0_8(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5 ),
        .ADDRESS_HIT_0_9(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4 ),
        .aclk(aclk),
        .\aresetn_d_reg[1] (\gen_master_slots[2].reg_slice_mi_n_3 ),
        .\aresetn_d_reg[1]_0 (\gen_master_slots[1].reg_slice_mi_n_53 ),
        .\gen_arbiter.any_grant_reg (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6 ),
        .\gen_arbiter.any_grant_reg_0 (addr_arbiter_ar_n_79),
        .\gen_arbiter.any_grant_reg_1 (\gen_master_slots[0].reg_slice_mi_n_8 ),
        .\gen_arbiter.any_grant_reg_2 (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_4 ),
        .\gen_arbiter.any_grant_reg_3 (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_7 ),
        .\gen_arbiter.any_grant_reg_4 (\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_6 ),
        .\gen_arbiter.grant_hot_reg[2] (addr_arbiter_aw_n_26),
        .\gen_arbiter.grant_hot_reg[2]_0 (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_arbiter.grant_hot_reg[2]_1 (\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_arbiter.grant_hot_reg[2]_2 (addr_arbiter_aw_n_3),
        .\gen_arbiter.qual_reg_reg[2] (addr_arbiter_aw_n_34),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt ),
        .\gen_single_issue.accept_cnt_reg (\gen_master_slots[2].reg_slice_mi_n_7 ),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc_22 [1]),
        .\gen_single_issue.active_target_enc_11 (\gen_single_issue.active_target_enc_24 [1]),
        .\gen_single_issue.active_target_enc_12 (\gen_single_issue.active_target_enc_17 [1]),
        .\gen_single_issue.active_target_enc_6 (\gen_single_issue.active_target_enc [1]),
        .\gen_single_issue.active_target_enc_reg[1] (\gen_master_slots[2].reg_slice_mi_n_18 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_31 [1]),
        .\gen_single_thread.active_target_enc_13 (\gen_single_thread.active_target_enc_36 [1]),
        .\gen_single_thread.active_target_enc_14 (\gen_single_thread.active_target_enc [1]),
        .\gen_single_thread.s_avalid_en (\gen_single_thread.s_avalid_en ),
        .\m_payload_i_reg[2] (\gen_master_slots[2].reg_slice_mi_n_4 ),
        .m_valid_i_reg(\gen_master_slots[2].reg_slice_mi_n_5 ),
        .m_valid_i_reg_0(\gen_master_slots[2].reg_slice_mi_n_13 ),
        .m_valid_i_reg_1(\gen_master_slots[2].reg_slice_mi_n_19 ),
        .m_valid_i_reg_2(\gen_master_slots[2].reg_slice_mi_n_22 ),
        .m_valid_i_reg_3(\gen_master_slots[2].reg_slice_mi_n_23 ),
        .m_valid_i_reg_4(\gen_master_slots[2].reg_slice_mi_n_24 ),
        .mi_bready_2(mi_bready_2),
        .mi_rready_2(mi_rready_2),
        .p_0_in(p_0_in),
        .p_15_in(p_15_in),
        .p_17_in(p_17_in),
        .p_1_in(p_1_in),
        .p_20_in(p_20_in),
        .p_21_in(p_21_in),
        .p_24_in(p_24_in),
        .r_issuing_cnt(r_issuing_cnt[16]),
        .s_axi_araddr({s_axi_araddr[127:126],s_axi_araddr[95:94],s_axi_araddr[63:62],s_axi_araddr[31:30]}),
        .\s_axi_araddr[127] (\gen_master_slots[2].reg_slice_mi_n_10 ),
        .s_axi_awaddr({s_axi_awaddr[63:62],s_axi_awaddr[31:30]}),
        .\s_axi_awaddr[31] (\gen_master_slots[2].reg_slice_mi_n_14 ),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid[2:1]),
        .\s_axi_bvalid[1]_0 (\gen_master_slots[1].reg_slice_mi_n_48 ),
        .\s_axi_bvalid[2] (\gen_master_slots[1].reg_slice_mi_n_49 ),
        .\s_axi_bvalid[2]_0 (\gen_master_slots[0].reg_slice_mi_n_53 ),
        .s_axi_bvalid_1_sp_1(\gen_master_slots[0].reg_slice_mi_n_52 ),
        .s_axi_rready(s_axi_rready),
        .st_mr_rlast(st_mr_rlast[2]),
        .valid_qual_i140_in(valid_qual_i140_in_15),
        .valid_qual_i140_in_1(valid_qual_i140_in),
        .valid_qual_i142_in(valid_qual_i142_in_13),
        .valid_qual_i142_in_2(valid_qual_i142_in),
        .valid_qual_i145_in(valid_qual_i145_in),
        .valid_qual_i1__1(valid_qual_i1__1_14),
        .valid_qual_i1__1_0(valid_qual_i1__1),
        .valid_qual_i3__2(valid_qual_i3__2_6),
        .valid_qual_i3__2_7(valid_qual_i3__2),
        .w_issuing_cnt(w_issuing_cnt[16]));
  FDRE \gen_master_slots[2].w_issuing_cnt_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_aw_n_46),
        .Q(w_issuing_cnt[16]),
        .R(reset));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor \gen_slave_slots[0].gen_si_read.si_transactor_ar 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_1 ),
        .SR(reset),
        .aclk(aclk),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt ),
        .\gen_single_issue.accept_cnt_reg_0 (\gen_master_slots[0].reg_slice_mi_n_56 ),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc ),
        .\gen_single_issue.active_target_enc_reg[0]_0 (addr_arbiter_ar_n_99),
        .\gen_single_issue.active_target_enc_reg[1]_0 (addr_arbiter_ar_n_100),
        .\gen_single_issue.active_target_hot (\gen_single_issue.active_target_hot ),
        .\gen_single_issue.active_target_hot_reg[0]_0 (addr_arbiter_ar_n_8),
        .match(match_16),
        .s_axi_araddr(s_axi_araddr[31:30]),
        .s_axi_rdata(s_axi_rdata[31:0]),
        .s_axi_rlast(s_axi_rlast[0]),
        .s_axi_rresp(s_axi_rresp[1:0]),
        .st_mr_rlast(st_mr_rlast),
        .st_mr_rmesg({st_mr_rmesg[69:38],st_mr_rmesg[36:3],st_mr_rmesg[1:0]}));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized0 \gen_slave_slots[0].gen_si_write.si_transactor_aw 
       (.SR(reset),
        .aclk(aclk),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc_17 ),
        .\gen_single_issue.active_target_enc_reg[0]_0 (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_single_issue.active_target_enc_reg[0]_1 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_7 ),
        .\gen_single_issue.active_target_enc_reg[1]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ),
        .\gen_single_issue.active_target_hot (\gen_single_issue.active_target_hot_18 ),
        .\gen_single_issue.active_target_hot_reg[0]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ),
        .m_ready_d(m_ready_d),
        .s_axi_bready(s_axi_bready[0]),
        .s_axi_bresp(s_axi_bresp[1:0]),
        .s_axi_bvalid(s_axi_bvalid[0]),
        .ss_aa_awready(ss_aa_awready[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .st_mr_bmesg({st_mr_bmesg[4:3],st_mr_bmesg[1:0]}));
  mcu_xbar_0_axi_crossbar_v2_1_19_splitter \gen_slave_slots[0].gen_si_write.splitter_aw_si 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5 ),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.qual_reg_reg[0] (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc_17 ),
        .\gen_single_issue.active_target_hot (\gen_single_issue.active_target_hot_18 ),
        .m_ready_d(m_ready_d),
        .\m_ready_d_reg[1]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6 ),
        .match(match_19),
        .s_axi_awready(s_axi_awready[0]),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .\s_axi_awvalid[0] (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ),
        .s_ready_i_reg(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ),
        .s_ready_i_reg_0(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ),
        .s_ready_i_reg_1(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_7 ),
        .ss_aa_awready(ss_aa_awready[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0),
        .valid_qual_i1__1(valid_qual_i1__1));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router \gen_slave_slots[0].gen_si_write.wdata_router_w 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_5 ),
        .\FSM_onehot_state_reg[1] (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_0 ),
        .\FSM_onehot_state_reg[1]_0 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_46 ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .m_avalid(m_avalid_20),
        .m_ready_d(m_ready_d[1]),
        .m_select_enc(m_select_enc),
        .m_select_enc_0(m_select_enc_12),
        .m_select_enc_1(m_select_enc_7),
        .m_valid_i_reg(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6 ),
        .match(match_19),
        .s_axi_awaddr(s_axi_awaddr[31:30]),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .s_axi_wlast(s_axi_wlast[0]),
        .s_axi_wvalid(s_axi_wvalid[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0),
        .\storage_data1_reg[0] (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ),
        .\storage_data1_reg[0]_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_6 ),
        .\storage_data1_reg[0]_1 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_8 ),
        .\storage_data1_reg[1] (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ),
        .\storage_data1_reg[1]_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_7 ));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized1 \gen_slave_slots[1].gen_si_read.si_transactor_ar 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_0 ),
        .D(\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_3 ),
        .Q(Q[1]),
        .SR(reset),
        .aclk(aclk),
        .\gen_arbiter.m_grant_enc_i_reg[0] (addr_arbiter_ar_n_80),
        .\gen_single_issue.accept_cnt_reg_0 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6 ),
        .\gen_single_issue.accept_cnt_reg_1 (m_valid_i_reg),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc_22 ),
        .\gen_single_issue.active_target_enc_reg[0]_0 (addr_arbiter_ar_n_101),
        .\gen_single_issue.active_target_enc_reg[1]_0 (addr_arbiter_ar_n_102),
        .\gen_single_issue.active_target_hot (\gen_single_issue.active_target_hot_23 ),
        .\gen_single_issue.active_target_hot_reg[0]_0 (addr_arbiter_ar_n_10),
        .\m_payload_i_reg[34] (\m_payload_i_reg[34] ),
        .match(match_21),
        .s_axi_araddr(s_axi_araddr[63:62]),
        .s_axi_arvalid(s_axi_arvalid[1]),
        .s_axi_rdata(s_axi_rdata[63:32]),
        .s_axi_rready(s_axi_rready[1]),
        .\s_axi_rready[1] (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_5 ),
        .s_axi_rresp(s_axi_rresp[3:2]),
        .st_mr_rlast(st_mr_rlast),
        .st_mr_rmesg({st_mr_rmesg[69:38],st_mr_rmesg[36:3],st_mr_rmesg[1:0]}),
        .valid_qual_i140_in(valid_qual_i140_in_15));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized2 \gen_slave_slots[1].gen_si_write.si_transactor_aw 
       (.SR(reset),
        .aclk(aclk),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc_24 ),
        .\gen_single_issue.active_target_enc_reg[0]_0 (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_7 ),
        .\gen_single_issue.active_target_enc_reg[1]_0 (\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_single_issue.active_target_enc_reg[1]_1 (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0 ),
        .\gen_single_issue.active_target_hot (\gen_single_issue.active_target_hot_25 ),
        .\gen_single_issue.active_target_hot_reg[0]_0 (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3 ),
        .m_ready_d(m_ready_d_26),
        .s_axi_bready(s_axi_bready[1]),
        .s_axi_bresp(s_axi_bresp[3:2]),
        .s_axi_bvalid(s_axi_bvalid[1]),
        .ss_aa_awready(ss_aa_awready[1]),
        .ss_wr_awready_1(ss_wr_awready_1),
        .st_mr_bmesg({st_mr_bmesg[4:3],st_mr_bmesg[1:0]}));
  mcu_xbar_0_axi_crossbar_v2_1_19_splitter_3 \gen_slave_slots[1].gen_si_write.splitter_aw_si 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4 ),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.qual_reg_reg[1] (\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc_24 ),
        .\gen_single_issue.active_target_hot (\gen_single_issue.active_target_hot_25 ),
        .m_ready_d(m_ready_d_26),
        .\m_ready_d_reg[1]_0 (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_6 ),
        .match(match_27),
        .s_axi_awready(s_axi_awready[1]),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .\s_axi_awvalid[1] (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_4 ),
        .s_ready_i_reg(\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0 ),
        .s_ready_i_reg_0(\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3 ),
        .s_ready_i_reg_1(\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_7 ),
        .ss_aa_awready(ss_aa_awready[1]),
        .ss_wr_awready_1(ss_wr_awready_1),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2),
        .valid_qual_i140_in(valid_qual_i140_in));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router_4 \gen_slave_slots[1].gen_si_write.wdata_router_w 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_4 ),
        .\FSM_onehot_gen_axi.write_cs[2]_i_5 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_7 ),
        .\FSM_onehot_state_reg[1] (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_7 ),
        .\FSM_onehot_state_reg[1]_0 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_50 ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .m_avalid(m_avalid_28),
        .\m_axi_wvalid[0]_INST_0_i_1 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_43 ),
        .\m_axi_wvalid[0]_INST_0_i_1_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ),
        .\m_axi_wvalid[1]_INST_0_i_1 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_48 ),
        .\m_axi_wvalid[1]_INST_0_i_1_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_8 ),
        .m_ready_d(m_ready_d_26[1]),
        .m_select_enc(m_select_enc_12),
        .m_select_enc_0(m_select_enc),
        .m_valid_i_reg(\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_6 ),
        .match(match_27),
        .s_axi_awaddr(s_axi_awaddr[63:62]),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .s_axi_wlast(s_axi_wlast[1]),
        .s_axi_wvalid(s_axi_wvalid[1]),
        .\s_axi_wvalid[1] (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_5 ),
        .\s_axi_wvalid[1]_0 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_8 ),
        .ss_wr_awready_1(ss_wr_awready_1),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2),
        .\storage_data1_reg[0] (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_6 ),
        .\storage_data1_reg[0]_0 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_9 ),
        .\storage_data1_reg[1] (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_4 ),
        .\storage_data1_reg[1]_0 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_7 ));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized3 \gen_slave_slots[2].gen_si_read.si_transactor_ar 
       (.D(\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_3 ),
        .Q(Q[2]),
        .SR(reset),
        .aclk(aclk),
        .\gen_arbiter.m_grant_enc_i_reg[0] (addr_arbiter_ar_n_83),
        .\gen_arbiter.m_target_hot_i_reg[2] (addr_arbiter_ar_n_88),
        .\gen_arbiter.m_target_hot_i_reg[2]_0 (addr_arbiter_ar_n_87),
        .\gen_arbiter.m_target_hot_i_reg[2]_1 (addr_arbiter_ar_n_86),
        .\gen_arbiter.m_target_hot_i_reg[2]_2 (addr_arbiter_ar_n_85),
        .\gen_single_thread.accept_cnt_reg[0]_0 (\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_6 ),
        .\gen_single_thread.accept_cnt_reg[1]_0 (\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_5 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (addr_arbiter_ar_n_103),
        .\gen_single_thread.active_target_enc_reg[1]_0 (addr_arbiter_ar_n_104),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (addr_arbiter_ar_n_13),
        .\gen_single_thread.s_avalid_en (\gen_single_thread.s_avalid_en ),
        .match(match_29),
        .p_2_in(p_2_in_9),
        .s_axi_araddr(s_axi_araddr[95:94]),
        .\s_axi_araddr[95] (\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_8 ),
        .s_axi_arvalid(s_axi_arvalid[2]),
        .s_axi_rdata(s_axi_rdata[95:64]),
        .s_axi_rlast(s_axi_rlast[1]),
        .s_axi_rresp(s_axi_rresp[5:4]),
        .st_mr_rlast(st_mr_rlast),
        .st_mr_rmesg({st_mr_rmesg[69:38],st_mr_rmesg[36:3],st_mr_rmesg[1:0]}),
        .valid_qual_i142_in(valid_qual_i142_in_13));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized4 \gen_slave_slots[2].gen_si_write.si_transactor_aw 
       (.SR(reset),
        .aclk(aclk),
        .\gen_arbiter.grant_hot_reg[2] (addr_arbiter_aw_n_2),
        .\gen_single_thread.accept_cnt_reg[4]_0 (s_axi_awready[2]),
        .\gen_single_thread.accept_cnt_reg[5]_0 (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_single_thread.accept_cnt_reg[5]_1 (\gen_master_slots[2].reg_slice_mi_n_22 ),
        .\gen_single_thread.accept_cnt_reg[5]_2 (\gen_master_slots[0].reg_slice_mi_n_53 ),
        .\gen_single_thread.accept_cnt_reg[5]_3 (\gen_master_slots[1].reg_slice_mi_n_49 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_31 ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_6 ),
        .\gen_single_thread.active_target_enc_reg[1]_0 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_30 ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3 ),
        .m_ready_d(m_ready_d_32),
        .match(match_33),
        .s_axi_awaddr(s_axi_awaddr[95:94]),
        .s_axi_awvalid(s_axi_awvalid[2]),
        .\s_axi_awvalid[2] (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_4 ),
        .s_axi_bready(s_axi_bready[2]),
        .s_axi_bresp(s_axi_bresp[5:4]),
        .ss_aa_awready(ss_aa_awready[2]),
        .ss_wr_awready_2(ss_wr_awready_2),
        .st_mr_bmesg({st_mr_bmesg[4:3],st_mr_bmesg[1:0]}),
        .valid_qual_i142_in(valid_qual_i142_in));
  mcu_xbar_0_axi_crossbar_v2_1_19_splitter_5 \gen_slave_slots[2].gen_si_write.splitter_aw_si 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_3 ),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_31 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_30 ),
        .m_ready_d(m_ready_d_32),
        .\m_ready_d_reg[1]_0 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_5 ),
        .match(match_33),
        .s_axi_awaddr(s_axi_awaddr[95:94]),
        .\s_axi_awaddr[95] (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_6 ),
        .s_axi_awready(s_axi_awready[2]),
        .s_axi_awvalid(s_axi_awvalid[2]),
        .s_ready_i_reg(\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0 ),
        .s_ready_i_reg_0(\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3 ),
        .ss_aa_awready(ss_aa_awready[2]),
        .ss_wr_awready_2(ss_wr_awready_2));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router__parameterized0 \gen_slave_slots[2].gen_si_write.wdata_router_w 
       (.\FSM_onehot_gen_axi.write_cs[2]_i_3 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_7 ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .m_avalid(m_avalid_34),
        .m_avalid_0(m_avalid),
        .m_avalid_1(m_avalid_8),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_axi_wvalid[0]_0 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_41 ),
        .\m_axi_wvalid[1]_0 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_47 ),
        .m_axi_wvalid_0_sp_1(\gen_slave_slots[1].gen_si_write.wdata_router_w_n_5 ),
        .m_axi_wvalid_1_sp_1(\gen_slave_slots[1].gen_si_write.wdata_router_w_n_8 ),
        .m_ready_d(m_ready_d_32[1]),
        .m_select_enc(m_select_enc_12),
        .m_select_enc_2(m_select_enc),
        .m_valid_i_reg(\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_5 ),
        .match(match_33),
        .s_axi_awaddr(s_axi_awaddr[95:94]),
        .s_axi_awvalid(s_axi_awvalid[2]),
        .s_axi_wlast(s_axi_wlast[2]),
        .s_axi_wvalid(s_axi_wvalid[2]),
        .\s_axi_wvalid[2] (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_9 ),
        .s_ready_i_reg(\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6 ),
        .s_ready_i_reg_0(\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_49 ),
        .ss_wr_awready_2(ss_wr_awready_2),
        .\storage_data1_reg[0] (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_5 ),
        .\storage_data1_reg[0]_0 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_8 ),
        .\storage_data1_reg[1] (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_4 ),
        .\storage_data1_reg[1]_0 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_10 ),
        .\storage_data1_reg[1]_1 (addr_arbiter_aw_n_33),
        .\storage_data1_reg[1]_2 (addr_arbiter_aw_n_32),
        .\storage_data1_reg[1]_3 (addr_arbiter_aw_n_31),
        .\storage_data1_reg[1]_4 (addr_arbiter_aw_n_30));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized5 \gen_slave_slots[3].gen_si_read.si_transactor_ar 
       (.D(\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_5 ),
        .Q(Q[3]),
        .SR(reset),
        .aclk(aclk),
        .\gen_arbiter.any_grant_i_3 (addr_arbiter_ar_n_84),
        .\gen_arbiter.m_grant_enc_i_reg[0] (addr_arbiter_ar_n_82),
        .\gen_single_thread.accept_cnt_reg[0]_0 (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_7 ),
        .\gen_single_thread.accept_cnt_reg[3]_0 (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_3 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_36 ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (addr_arbiter_ar_n_97),
        .\gen_single_thread.active_target_enc_reg[1]_0 (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_4 ),
        .\gen_single_thread.active_target_enc_reg[1]_1 (addr_arbiter_ar_n_98),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_35 ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (addr_arbiter_ar_n_2),
        .match(match),
        .p_2_in(p_2_in),
        .s_axi_araddr(s_axi_araddr[127:126]),
        .\s_axi_araddr[127] (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_6 ),
        .s_axi_arvalid(s_axi_arvalid[3]),
        .s_axi_rdata(s_axi_rdata[127:96]),
        .s_axi_rlast(s_axi_rlast[2]),
        .s_axi_rready(s_axi_rready[3]),
        .s_axi_rresp(s_axi_rresp[7:6]),
        .s_axi_rvalid(s_axi_rvalid[2]),
        .st_mr_rlast(st_mr_rlast),
        .st_mr_rmesg({st_mr_rmesg[69:38],st_mr_rmesg[36:3],st_mr_rmesg[1:0]}),
        .valid_qual_i145_in(valid_qual_i145_in));
  mcu_xbar_0_axi_crossbar_v2_1_19_splitter_6 splitter_aw_mi
       (.Q(aa_mi_awtarget_hot),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .m_ready_d(m_ready_d_37),
        .\m_ready_d_reg[0]_0 (splitter_aw_mi_n_3),
        .\m_ready_d_reg[0]_1 (addr_arbiter_aw_n_11),
        .\m_ready_d_reg[1]_0 (splitter_aw_mi_n_0),
        .\m_ready_d_reg[1]_1 (addr_arbiter_aw_n_15),
        .mi_awready_mux__1(mi_awready_mux__1));
endmodule

module mcu_xbar_0_axi_crossbar_v2_1_19_decerr_slave
   (p_20_in,
    mi_awready_2,
    p_14_in,
    p_21_in,
    p_15_in,
    mi_arready_2,
    p_17_in,
    \FSM_onehot_gen_axi.write_cs_reg[1]_0 ,
    p_24_in,
    SR,
    \gen_axi.s_axi_rid_i_reg[1]_0 ,
    aclk,
    \gen_axi.s_axi_rid_i_reg[0]_0 ,
    aresetn_d,
    mi_rready_2,
    \gen_axi.s_axi_arready_i_reg_0 ,
    \gen_axi.read_cs_reg[0]_0 ,
    aa_mi_arvalid,
    \gen_axi.read_cnt_reg[7]_0 ,
    m_ready_d,
    aa_sa_awvalid,
    Q,
    \gen_axi.s_axi_awready_i_reg_0 ,
    mi_bready_2,
    \FSM_onehot_gen_axi.write_cs_reg[2]_0 ,
    \gen_axi.s_axi_rlast_i_reg_0 ,
    \gen_axi.s_axi_bid_i_reg[1]_0 );
  output [1:0]p_20_in;
  output mi_awready_2;
  output p_14_in;
  output p_21_in;
  output p_15_in;
  output mi_arready_2;
  output p_17_in;
  output \FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  output [1:0]p_24_in;
  input [0:0]SR;
  input \gen_axi.s_axi_rid_i_reg[1]_0 ;
  input aclk;
  input \gen_axi.s_axi_rid_i_reg[0]_0 ;
  input aresetn_d;
  input mi_rready_2;
  input \gen_axi.s_axi_arready_i_reg_0 ;
  input [0:0]\gen_axi.read_cs_reg[0]_0 ;
  input aa_mi_arvalid;
  input [7:0]\gen_axi.read_cnt_reg[7]_0 ;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]Q;
  input \gen_axi.s_axi_awready_i_reg_0 ;
  input mi_bready_2;
  input \FSM_onehot_gen_axi.write_cs_reg[2]_0 ;
  input \gen_axi.s_axi_rlast_i_reg_0 ;
  input [1:0]\gen_axi.s_axi_bid_i_reg[1]_0 ;

  wire \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[2]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ;
  wire \FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_mi_arvalid;
  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire \gen_axi.read_cnt[4]_i_2_n_0 ;
  wire \gen_axi.read_cnt[5]_i_2_n_0 ;
  wire \gen_axi.read_cnt[7]_i_1_n_0 ;
  wire \gen_axi.read_cnt[7]_i_3_n_0 ;
  wire \gen_axi.read_cnt[7]_i_4_n_0 ;
  wire [0:0]\gen_axi.read_cnt_reg ;
  wire [7:0]\gen_axi.read_cnt_reg[7]_0 ;
  wire [7:1]\gen_axi.read_cnt_reg__0 ;
  wire \gen_axi.read_cs[0]_i_1_n_0 ;
  wire [0:0]\gen_axi.read_cs_reg[0]_0 ;
  wire \gen_axi.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_arready_i_reg_0 ;
  wire \gen_axi.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_awready_i_reg_0 ;
  wire \gen_axi.s_axi_bid_i[0]_i_1_n_0 ;
  wire \gen_axi.s_axi_bid_i[1]_i_1_n_0 ;
  wire [1:0]\gen_axi.s_axi_bid_i_reg[1]_0 ;
  wire \gen_axi.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.s_axi_rid_i_reg[0]_0 ;
  wire \gen_axi.s_axi_rid_i_reg[1]_0 ;
  wire \gen_axi.s_axi_rlast_i_i_1_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_3_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_5_n_0 ;
  wire \gen_axi.s_axi_rlast_i_reg_0 ;
  wire \gen_axi.s_axi_wready_i_i_1_n_0 ;
  wire [0:0]m_ready_d;
  wire mi_arready_2;
  wire mi_awready_2;
  wire mi_bready_2;
  wire mi_rready_2;
  wire [7:0]p_0_in;
  wire p_14_in;
  wire p_15_in;
  wire p_17_in;
  wire [1:0]p_20_in;
  wire p_21_in;
  wire [1:0]p_24_in;

  LUT5 #(
    .INIT(32'hCCDDCCC8)) 
    \FSM_onehot_gen_axi.write_cs[0]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I2(mi_bready_2),
        .I3(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABBBAAAAA888)) 
    \FSM_onehot_gen_axi.write_cs[1]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ),
        .I2(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I3(mi_bready_2),
        .I4(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .I5(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8B8)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .I1(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ),
        .I2(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I3(mi_bready_2),
        .I4(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_2 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I1(m_ready_d),
        .I2(aa_sa_awvalid),
        .I3(Q),
        .I4(mi_awready_2),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_axi.write_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_axi.read_cnt[0]_i_1 
       (.I0(\gen_axi.read_cnt_reg ),
        .I1(p_15_in),
        .I2(\gen_axi.read_cnt_reg[7]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \gen_axi.read_cnt[1]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [1]),
        .I1(p_15_in),
        .I2(\gen_axi.read_cnt_reg ),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFC03AAAA)) 
    \gen_axi.read_cnt[2]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [2]),
        .I1(\gen_axi.read_cnt_reg ),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg__0 [2]),
        .I4(p_15_in),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFC0003AAAAAAAA)) 
    \gen_axi.read_cnt[3]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [3]),
        .I1(\gen_axi.read_cnt_reg__0 [2]),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg ),
        .I4(\gen_axi.read_cnt_reg__0 [3]),
        .I5(p_15_in),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[4]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [4]),
        .I1(\gen_axi.read_cnt[4]_i_2_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [4]),
        .I3(p_15_in),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_axi.read_cnt[4]_i_2 
       (.I0(\gen_axi.read_cnt_reg__0 [2]),
        .I1(\gen_axi.read_cnt_reg__0 [1]),
        .I2(\gen_axi.read_cnt_reg ),
        .I3(\gen_axi.read_cnt_reg__0 [3]),
        .O(\gen_axi.read_cnt[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[5]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [5]),
        .I1(\gen_axi.read_cnt_reg__0 [5]),
        .I2(\gen_axi.read_cnt[5]_i_2_n_0 ),
        .I3(p_15_in),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_axi.read_cnt[5]_i_2 
       (.I0(\gen_axi.read_cnt_reg__0 [3]),
        .I1(\gen_axi.read_cnt_reg ),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg__0 [2]),
        .I4(\gen_axi.read_cnt_reg__0 [4]),
        .O(\gen_axi.read_cnt[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[6]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [6]),
        .I1(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [6]),
        .I3(p_15_in),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    \gen_axi.read_cnt[7]_i_1 
       (.I0(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I1(mi_rready_2),
        .I2(p_15_in),
        .I3(mi_arready_2),
        .I4(\gen_axi.read_cs_reg[0]_0 ),
        .I5(aa_mi_arvalid),
        .O(\gen_axi.read_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFC03AAAA)) 
    \gen_axi.read_cnt[7]_i_2 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [7]),
        .I1(\gen_axi.read_cnt_reg__0 [6]),
        .I2(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I3(\gen_axi.read_cnt_reg__0 [7]),
        .I4(p_15_in),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_axi.read_cnt[7]_i_3 
       (.I0(\gen_axi.read_cnt_reg__0 [6]),
        .I1(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [7]),
        .O(\gen_axi.read_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_axi.read_cnt[7]_i_4 
       (.I0(\gen_axi.read_cnt_reg__0 [5]),
        .I1(\gen_axi.read_cnt_reg__0 [4]),
        .I2(\gen_axi.read_cnt_reg__0 [2]),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .I4(\gen_axi.read_cnt_reg ),
        .I5(\gen_axi.read_cnt_reg__0 [3]),
        .O(\gen_axi.read_cnt[7]_i_4_n_0 ));
  FDRE \gen_axi.read_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\gen_axi.read_cnt_reg ),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\gen_axi.read_cnt_reg__0 [1]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\gen_axi.read_cnt_reg__0 [2]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\gen_axi.read_cnt_reg__0 [3]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\gen_axi.read_cnt_reg__0 [4]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\gen_axi.read_cnt_reg__0 [5]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[6] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\gen_axi.read_cnt_reg__0 [6]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[7] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\gen_axi.read_cnt_reg__0 [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hBFB0B0B0B0B0B0B0)) 
    \gen_axi.read_cs[0]_i_1 
       (.I0(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I1(mi_rready_2),
        .I2(p_15_in),
        .I3(mi_arready_2),
        .I4(\gen_axi.read_cs_reg[0]_0 ),
        .I5(aa_mi_arvalid),
        .O(\gen_axi.read_cs[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.read_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.read_cs[0]_i_1_n_0 ),
        .Q(p_15_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAA08AA00000000)) 
    \gen_axi.s_axi_arready_i_i_1 
       (.I0(aresetn_d),
        .I1(mi_rready_2),
        .I2(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I3(p_15_in),
        .I4(mi_arready_2),
        .I5(\gen_axi.s_axi_arready_i_reg_0 ),
        .O(\gen_axi.s_axi_arready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_arready_i_i_1_n_0 ),
        .Q(mi_arready_2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEEF000)) 
    \gen_axi.s_axi_awready_i_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .I1(\gen_axi.s_axi_awready_i_reg_0 ),
        .I2(mi_bready_2),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I5(mi_awready_2),
        .O(\gen_axi.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_awready_i_i_1_n_0 ),
        .Q(mi_awready_2),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_axi.s_axi_bid_i[0]_i_1 
       (.I0(\gen_axi.s_axi_bid_i_reg[1]_0 [0]),
        .I1(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ),
        .I2(p_24_in[0]),
        .O(\gen_axi.s_axi_bid_i[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_axi.s_axi_bid_i[1]_i_1 
       (.I0(\gen_axi.s_axi_bid_i_reg[1]_0 [1]),
        .I1(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ),
        .I2(p_24_in[1]),
        .O(\gen_axi.s_axi_bid_i[1]_i_1_n_0 ));
  FDRE \gen_axi.s_axi_bid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bid_i[0]_i_1_n_0 ),
        .Q(p_24_in[0]),
        .R(SR));
  FDRE \gen_axi.s_axi_bid_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bid_i[1]_i_1_n_0 ),
        .Q(p_24_in[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \gen_axi.s_axi_bvalid_i_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .I1(mi_bready_2),
        .I2(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I3(p_21_in),
        .O(\gen_axi.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bvalid_i_i_1_n_0 ),
        .Q(p_21_in),
        .R(SR));
  FDRE \gen_axi.s_axi_rid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rid_i_reg[0]_0 ),
        .Q(p_20_in[0]),
        .R(SR));
  FDRE \gen_axi.s_axi_rid_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rid_i_reg[1]_0 ),
        .Q(p_20_in[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \gen_axi.s_axi_rlast_i_i_1 
       (.I0(p_15_in),
        .I1(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I2(\gen_axi.s_axi_rlast_i_reg_0 ),
        .I3(\gen_axi.s_axi_rlast_i_i_3_n_0 ),
        .I4(p_17_in),
        .O(\gen_axi.s_axi_rlast_i_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \gen_axi.s_axi_rlast_i_i_3 
       (.I0(\gen_axi.read_cnt_reg__0 [2]),
        .I1(\gen_axi.read_cnt_reg__0 [1]),
        .I2(mi_rready_2),
        .I3(\gen_axi.s_axi_rlast_i_i_5_n_0 ),
        .I4(\gen_axi.s_axi_arready_i_reg_0 ),
        .O(\gen_axi.s_axi_rlast_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gen_axi.s_axi_rlast_i_i_5 
       (.I0(\gen_axi.read_cnt_reg__0 [3]),
        .I1(\gen_axi.read_cnt_reg__0 [4]),
        .I2(\gen_axi.read_cnt_reg__0 [5]),
        .I3(\gen_axi.read_cnt_reg__0 [6]),
        .I4(\gen_axi.read_cnt_reg__0 [7]),
        .I5(p_15_in),
        .O(\gen_axi.s_axi_rlast_i_i_5_n_0 ));
  FDRE \gen_axi.s_axi_rlast_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rlast_i_i_1_n_0 ),
        .Q(p_17_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_axi.s_axi_wready_i_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .I2(p_14_in),
        .O(\gen_axi.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_wready_i_i_1_n_0 ),
        .Q(p_14_in),
        .R(SR));
endmodule

module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor
   (\gen_single_issue.active_target_hot ,
    \gen_single_issue.accept_cnt ,
    \gen_single_issue.active_target_enc ,
    s_axi_rresp,
    s_axi_rdata,
    s_axi_rlast,
    match,
    SR,
    \gen_single_issue.active_target_hot_reg[0]_0 ,
    aclk,
    \gen_single_issue.accept_cnt_reg_0 ,
    \gen_single_issue.active_target_enc_reg[0]_0 ,
    \gen_single_issue.active_target_enc_reg[1]_0 ,
    st_mr_rmesg,
    st_mr_rlast,
    s_axi_araddr,
    ADDRESS_HIT_0);
  output [0:0]\gen_single_issue.active_target_hot ;
  output \gen_single_issue.accept_cnt ;
  output [1:0]\gen_single_issue.active_target_enc ;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output [0:0]s_axi_rlast;
  output match;
  input [0:0]SR;
  input \gen_single_issue.active_target_hot_reg[0]_0 ;
  input aclk;
  input \gen_single_issue.accept_cnt_reg_0 ;
  input \gen_single_issue.active_target_enc_reg[0]_0 ;
  input \gen_single_issue.active_target_enc_reg[1]_0 ;
  input [67:0]st_mr_rmesg;
  input [2:0]st_mr_rlast;
  input [1:0]s_axi_araddr;
  input ADDRESS_HIT_0;

  wire ADDRESS_HIT_0;
  wire [0:0]SR;
  wire aclk;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_reg_0 ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire \gen_single_issue.active_target_enc_reg[0]_0 ;
  wire \gen_single_issue.active_target_enc_reg[1]_0 ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire \gen_single_issue.active_target_hot_reg[0]_0 ;
  wire match;
  wire [1:0]s_axi_araddr;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire [2:0]st_mr_rlast;
  wire [67:0]st_mr_rmesg;

  LUT3 #(
    .INIT(8'hF4)) 
    \gen_arbiter.m_target_hot_i[2]_i_4 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(ADDRESS_HIT_0),
        .O(match));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.accept_cnt_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.accept_cnt_reg_0 ),
        .Q(\gen_single_issue.accept_cnt ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_issue.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_enc_reg[1]_0 ),
        .Q(\gen_single_issue.active_target_enc [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_issue.active_target_hot ),
        .R(SR));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(st_mr_rmesg[36]),
        .I1(st_mr_rmesg[2]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(st_mr_rmesg[12]),
        .I1(st_mr_rmesg[46]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[10]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(st_mr_rmesg[13]),
        .I1(st_mr_rmesg[47]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[11]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(st_mr_rmesg[14]),
        .I1(st_mr_rmesg[48]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[12]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(st_mr_rmesg[49]),
        .I1(st_mr_rmesg[15]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[13]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(st_mr_rmesg[16]),
        .I1(st_mr_rmesg[50]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[14]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(st_mr_rmesg[17]),
        .I1(st_mr_rmesg[51]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[15]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(st_mr_rmesg[52]),
        .I1(st_mr_rmesg[18]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[16]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(st_mr_rmesg[53]),
        .I1(st_mr_rmesg[19]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[17]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(st_mr_rmesg[54]),
        .I1(st_mr_rmesg[20]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[18]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(st_mr_rmesg[55]),
        .I1(st_mr_rmesg[21]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[19]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(st_mr_rmesg[37]),
        .I1(st_mr_rmesg[3]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[1]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(st_mr_rmesg[56]),
        .I1(st_mr_rmesg[22]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[20]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(st_mr_rmesg[57]),
        .I1(st_mr_rmesg[23]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[21]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(st_mr_rmesg[24]),
        .I1(st_mr_rmesg[58]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[22]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(st_mr_rmesg[25]),
        .I1(st_mr_rmesg[59]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[23]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(st_mr_rmesg[60]),
        .I1(st_mr_rmesg[26]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[24]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(st_mr_rmesg[27]),
        .I1(st_mr_rmesg[61]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[25]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(st_mr_rmesg[28]),
        .I1(st_mr_rmesg[62]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[26]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(st_mr_rmesg[29]),
        .I1(st_mr_rmesg[63]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[27]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(st_mr_rmesg[30]),
        .I1(st_mr_rmesg[64]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[28]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(st_mr_rmesg[65]),
        .I1(st_mr_rmesg[31]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[29]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(st_mr_rmesg[4]),
        .I1(st_mr_rmesg[38]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[2]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(st_mr_rmesg[32]),
        .I1(st_mr_rmesg[66]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[30]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(st_mr_rmesg[33]),
        .I1(st_mr_rmesg[67]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[31]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(st_mr_rmesg[5]),
        .I1(st_mr_rmesg[39]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[3]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(st_mr_rmesg[6]),
        .I1(st_mr_rmesg[40]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[4]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(st_mr_rmesg[41]),
        .I1(st_mr_rmesg[7]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[5]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(st_mr_rmesg[42]),
        .I1(st_mr_rmesg[8]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[6]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(st_mr_rmesg[43]),
        .I1(st_mr_rmesg[9]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[7]));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(st_mr_rmesg[44]),
        .I1(st_mr_rmesg[10]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_rdata[8]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(st_mr_rmesg[11]),
        .I1(st_mr_rmesg[45]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[9]));
  LUT5 #(
    .INIT(32'h3B0B3808)) 
    \s_axi_rlast[0]_INST_0 
       (.I0(st_mr_rlast[1]),
        .I1(\gen_single_issue.active_target_enc [0]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(st_mr_rlast[2]),
        .I4(st_mr_rlast[0]),
        .O(s_axi_rlast));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(st_mr_rmesg[0]),
        .I1(st_mr_rmesg[34]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rresp[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(st_mr_rmesg[1]),
        .I1(st_mr_rmesg[35]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized0
   (\gen_single_issue.active_target_hot ,
    \gen_single_issue.active_target_enc ,
    \gen_single_issue.active_target_enc_reg[0]_0 ,
    s_axi_bresp,
    SR,
    \gen_single_issue.active_target_hot_reg[0]_0 ,
    aclk,
    \gen_single_issue.active_target_enc_reg[0]_1 ,
    \gen_single_issue.active_target_enc_reg[1]_0 ,
    s_axi_bvalid,
    s_axi_bready,
    st_mr_bmesg,
    m_ready_d,
    ss_aa_awready,
    ss_wr_awready_0);
  output [0:0]\gen_single_issue.active_target_hot ;
  output [1:0]\gen_single_issue.active_target_enc ;
  output \gen_single_issue.active_target_enc_reg[0]_0 ;
  output [1:0]s_axi_bresp;
  input [0:0]SR;
  input \gen_single_issue.active_target_hot_reg[0]_0 ;
  input aclk;
  input \gen_single_issue.active_target_enc_reg[0]_1 ;
  input \gen_single_issue.active_target_enc_reg[1]_0 ;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [3:0]st_mr_bmesg;
  input [1:0]m_ready_d;
  input [0:0]ss_aa_awready;
  input ss_wr_awready_0;

  wire [0:0]SR;
  wire aclk;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_i_1__0_n_0 ;
  wire \gen_single_issue.accept_cnt_i_2__0_n_0 ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire \gen_single_issue.active_target_enc_reg[0]_0 ;
  wire \gen_single_issue.active_target_enc_reg[0]_1 ;
  wire \gen_single_issue.active_target_enc_reg[1]_0 ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire \gen_single_issue.active_target_hot_reg[0]_0 ;
  wire [1:0]m_ready_d;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire [3:0]st_mr_bmesg;

  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h2A00FFFF)) 
    \gen_arbiter.qual_reg[0]_i_3 
       (.I0(s_axi_bvalid),
        .I1(\gen_single_issue.active_target_enc [0]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(s_axi_bready),
        .I4(\gen_single_issue.accept_cnt ),
        .O(\gen_single_issue.active_target_enc_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFDFDFD55FCFCFC00)) 
    \gen_single_issue.accept_cnt_i_1__0 
       (.I0(\gen_single_issue.accept_cnt_i_2__0_n_0 ),
        .I1(m_ready_d[0]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[1]),
        .I4(ss_wr_awready_0),
        .I5(\gen_single_issue.accept_cnt ),
        .O(\gen_single_issue.accept_cnt_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \gen_single_issue.accept_cnt_i_2__0 
       (.I0(s_axi_bready),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(s_axi_bvalid),
        .O(\gen_single_issue.accept_cnt_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.accept_cnt_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.accept_cnt_i_1__0_n_0 ),
        .Q(\gen_single_issue.accept_cnt ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_enc_reg[0]_1 ),
        .Q(\gen_single_issue.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_enc_reg[1]_0 ),
        .Q(\gen_single_issue.active_target_enc [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_issue.active_target_hot ),
        .R(SR));
  LUT4 #(
    .INIT(16'h33E2)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(st_mr_bmesg[0]),
        .I1(\gen_single_issue.active_target_enc [0]),
        .I2(st_mr_bmesg[2]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'h33E2)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(st_mr_bmesg[1]),
        .I1(\gen_single_issue.active_target_enc [0]),
        .I2(st_mr_bmesg[3]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_bresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized1
   (\gen_single_issue.active_target_hot ,
    \gen_single_issue.active_target_enc ,
    D,
    \m_payload_i_reg[34] ,
    \s_axi_rready[1] ,
    \gen_single_issue.accept_cnt_reg_0 ,
    s_axi_rresp,
    s_axi_rdata,
    match,
    SR,
    \gen_single_issue.active_target_hot_reg[0]_0 ,
    aclk,
    \gen_single_issue.active_target_enc_reg[0]_0 ,
    \gen_single_issue.active_target_enc_reg[1]_0 ,
    \gen_single_issue.accept_cnt_reg_1 ,
    s_axi_rready,
    valid_qual_i140_in,
    s_axi_arvalid,
    \gen_arbiter.m_grant_enc_i_reg[0] ,
    Q,
    st_mr_rmesg,
    st_mr_rlast,
    s_axi_araddr,
    ADDRESS_HIT_0);
  output [0:0]\gen_single_issue.active_target_hot ;
  output [1:0]\gen_single_issue.active_target_enc ;
  output [0:0]D;
  output \m_payload_i_reg[34] ;
  output \s_axi_rready[1] ;
  output \gen_single_issue.accept_cnt_reg_0 ;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output match;
  input [0:0]SR;
  input \gen_single_issue.active_target_hot_reg[0]_0 ;
  input aclk;
  input \gen_single_issue.active_target_enc_reg[0]_0 ;
  input \gen_single_issue.active_target_enc_reg[1]_0 ;
  input \gen_single_issue.accept_cnt_reg_1 ;
  input [0:0]s_axi_rready;
  input valid_qual_i140_in;
  input [0:0]s_axi_arvalid;
  input \gen_arbiter.m_grant_enc_i_reg[0] ;
  input [0:0]Q;
  input [67:0]st_mr_rmesg;
  input [2:0]st_mr_rlast;
  input [1:0]s_axi_araddr;
  input ADDRESS_HIT_0;

  wire ADDRESS_HIT_0;
  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.m_grant_enc_i_reg[0] ;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_i_1__2_n_0 ;
  wire \gen_single_issue.accept_cnt_reg_0 ;
  wire \gen_single_issue.accept_cnt_reg_1 ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire \gen_single_issue.active_target_enc_reg[0]_0 ;
  wire \gen_single_issue.active_target_enc_reg[1]_0 ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire \gen_single_issue.active_target_hot_reg[0]_0 ;
  wire \m_payload_i_reg[34] ;
  wire match;
  wire [1:0]s_axi_araddr;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire \s_axi_rready[1] ;
  wire [1:0]s_axi_rresp;
  wire [2:0]st_mr_rlast;
  wire [67:0]st_mr_rmesg;
  wire valid_qual_i140_in;

  LUT5 #(
    .INIT(32'hD5550000)) 
    \gen_arbiter.any_grant_i_4 
       (.I0(\gen_single_issue.accept_cnt ),
        .I1(s_axi_rready),
        .I2(\m_payload_i_reg[34] ),
        .I3(\gen_single_issue.accept_cnt_reg_1 ),
        .I4(\gen_arbiter.m_grant_enc_i_reg[0] ),
        .O(\gen_single_issue.accept_cnt_reg_0 ));
  LUT6 #(
    .INIT(64'h80FF000000000000)) 
    \gen_arbiter.last_rr_hot[3]_i_4__0 
       (.I0(\gen_single_issue.accept_cnt_reg_1 ),
        .I1(\m_payload_i_reg[34] ),
        .I2(s_axi_rready),
        .I3(\gen_single_issue.accept_cnt ),
        .I4(\gen_arbiter.m_grant_enc_i_reg[0] ),
        .I5(valid_qual_i140_in),
        .O(\s_axi_rready[1] ));
  LUT3 #(
    .INIT(8'hF4)) 
    \gen_arbiter.m_target_hot_i[2]_i_5 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(ADDRESS_HIT_0),
        .O(match));
  LUT6 #(
    .INIT(64'h80FF0000FFFFFFFF)) 
    \gen_arbiter.qual_reg[1]_i_1__0 
       (.I0(\gen_single_issue.accept_cnt_reg_1 ),
        .I1(\m_payload_i_reg[34] ),
        .I2(s_axi_rready),
        .I3(\gen_single_issue.accept_cnt ),
        .I4(valid_qual_i140_in),
        .I5(s_axi_arvalid),
        .O(D));
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    \gen_single_issue.accept_cnt_i_1__2 
       (.I0(s_axi_rready),
        .I1(\m_payload_i_reg[34] ),
        .I2(\gen_single_issue.accept_cnt_reg_1 ),
        .I3(Q),
        .I4(\gen_single_issue.accept_cnt ),
        .O(\gen_single_issue.accept_cnt_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.accept_cnt_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.accept_cnt_i_1__2_n_0 ),
        .Q(\gen_single_issue.accept_cnt ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_issue.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_enc_reg[1]_0 ),
        .Q(\gen_single_issue.active_target_enc [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_issue.active_target_hot ),
        .R(SR));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[32]_INST_0 
       (.I0(st_mr_rmesg[36]),
        .I1(st_mr_rmesg[2]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[0]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[33]_INST_0 
       (.I0(st_mr_rmesg[37]),
        .I1(st_mr_rmesg[3]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[1]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[34]_INST_0 
       (.I0(st_mr_rmesg[4]),
        .I1(st_mr_rmesg[38]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[2]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[35]_INST_0 
       (.I0(st_mr_rmesg[5]),
        .I1(st_mr_rmesg[39]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[3]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[36]_INST_0 
       (.I0(st_mr_rmesg[6]),
        .I1(st_mr_rmesg[40]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[4]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[37]_INST_0 
       (.I0(st_mr_rmesg[41]),
        .I1(st_mr_rmesg[7]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[5]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[38]_INST_0 
       (.I0(st_mr_rmesg[42]),
        .I1(st_mr_rmesg[8]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[6]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[39]_INST_0 
       (.I0(st_mr_rmesg[43]),
        .I1(st_mr_rmesg[9]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[7]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[40]_INST_0 
       (.I0(st_mr_rmesg[44]),
        .I1(st_mr_rmesg[10]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[8]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[41]_INST_0 
       (.I0(st_mr_rmesg[11]),
        .I1(st_mr_rmesg[45]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[9]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[42]_INST_0 
       (.I0(st_mr_rmesg[12]),
        .I1(st_mr_rmesg[46]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[10]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[43]_INST_0 
       (.I0(st_mr_rmesg[13]),
        .I1(st_mr_rmesg[47]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[11]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[44]_INST_0 
       (.I0(st_mr_rmesg[14]),
        .I1(st_mr_rmesg[48]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[12]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[45]_INST_0 
       (.I0(st_mr_rmesg[49]),
        .I1(st_mr_rmesg[15]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[13]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[46]_INST_0 
       (.I0(st_mr_rmesg[16]),
        .I1(st_mr_rmesg[50]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[14]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[47]_INST_0 
       (.I0(st_mr_rmesg[17]),
        .I1(st_mr_rmesg[51]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[15]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[48]_INST_0 
       (.I0(st_mr_rmesg[52]),
        .I1(st_mr_rmesg[18]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[16]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[49]_INST_0 
       (.I0(st_mr_rmesg[53]),
        .I1(st_mr_rmesg[19]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[17]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[50]_INST_0 
       (.I0(st_mr_rmesg[54]),
        .I1(st_mr_rmesg[20]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[18]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[51]_INST_0 
       (.I0(st_mr_rmesg[55]),
        .I1(st_mr_rmesg[21]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[19]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[52]_INST_0 
       (.I0(st_mr_rmesg[56]),
        .I1(st_mr_rmesg[22]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[20]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[53]_INST_0 
       (.I0(st_mr_rmesg[57]),
        .I1(st_mr_rmesg[23]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[21]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[54]_INST_0 
       (.I0(st_mr_rmesg[24]),
        .I1(st_mr_rmesg[58]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[22]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[55]_INST_0 
       (.I0(st_mr_rmesg[25]),
        .I1(st_mr_rmesg[59]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[23]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[56]_INST_0 
       (.I0(st_mr_rmesg[60]),
        .I1(st_mr_rmesg[26]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[24]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[57]_INST_0 
       (.I0(st_mr_rmesg[27]),
        .I1(st_mr_rmesg[61]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[25]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[58]_INST_0 
       (.I0(st_mr_rmesg[28]),
        .I1(st_mr_rmesg[62]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[26]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[59]_INST_0 
       (.I0(st_mr_rmesg[29]),
        .I1(st_mr_rmesg[63]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[27]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[60]_INST_0 
       (.I0(st_mr_rmesg[30]),
        .I1(st_mr_rmesg[64]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[28]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[61]_INST_0 
       (.I0(st_mr_rmesg[65]),
        .I1(st_mr_rmesg[31]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[29]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[62]_INST_0 
       (.I0(st_mr_rmesg[32]),
        .I1(st_mr_rmesg[66]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[30]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[63]_INST_0 
       (.I0(st_mr_rmesg[33]),
        .I1(st_mr_rmesg[67]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[31]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s_axi_rlast[1]_INST_0 
       (.I0(st_mr_rlast[0]),
        .I1(st_mr_rlast[1]),
        .I2(st_mr_rlast[2]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .I4(\gen_single_issue.active_target_enc [0]),
        .O(\m_payload_i_reg[34] ));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[2]_INST_0 
       (.I0(st_mr_rmesg[0]),
        .I1(st_mr_rmesg[34]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rresp[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[3]_INST_0 
       (.I0(st_mr_rmesg[1]),
        .I1(st_mr_rmesg[35]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized2
   (\gen_single_issue.active_target_hot ,
    \gen_single_issue.active_target_enc ,
    \gen_single_issue.active_target_enc_reg[1]_0 ,
    s_axi_bresp,
    SR,
    \gen_single_issue.active_target_hot_reg[0]_0 ,
    aclk,
    \gen_single_issue.active_target_enc_reg[0]_0 ,
    \gen_single_issue.active_target_enc_reg[1]_1 ,
    s_axi_bvalid,
    s_axi_bready,
    st_mr_bmesg,
    m_ready_d,
    ss_aa_awready,
    ss_wr_awready_1);
  output [0:0]\gen_single_issue.active_target_hot ;
  output [1:0]\gen_single_issue.active_target_enc ;
  output \gen_single_issue.active_target_enc_reg[1]_0 ;
  output [1:0]s_axi_bresp;
  input [0:0]SR;
  input \gen_single_issue.active_target_hot_reg[0]_0 ;
  input aclk;
  input \gen_single_issue.active_target_enc_reg[0]_0 ;
  input \gen_single_issue.active_target_enc_reg[1]_1 ;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [3:0]st_mr_bmesg;
  input [1:0]m_ready_d;
  input [0:0]ss_aa_awready;
  input ss_wr_awready_1;

  wire [0:0]SR;
  wire aclk;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_i_1__1_n_0 ;
  wire \gen_single_issue.accept_cnt_i_2__1_n_0 ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire \gen_single_issue.active_target_enc_reg[0]_0 ;
  wire \gen_single_issue.active_target_enc_reg[1]_0 ;
  wire \gen_single_issue.active_target_enc_reg[1]_1 ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire \gen_single_issue.active_target_hot_reg[0]_0 ;
  wire [1:0]m_ready_d;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_1;
  wire [3:0]st_mr_bmesg;

  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h2A00FFFF)) 
    \gen_arbiter.qual_reg[1]_i_3 
       (.I0(s_axi_bvalid),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(s_axi_bready),
        .I4(\gen_single_issue.accept_cnt ),
        .O(\gen_single_issue.active_target_enc_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFDFDFD55FCFCFC00)) 
    \gen_single_issue.accept_cnt_i_1__1 
       (.I0(\gen_single_issue.accept_cnt_i_2__1_n_0 ),
        .I1(m_ready_d[0]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[1]),
        .I4(ss_wr_awready_1),
        .I5(\gen_single_issue.accept_cnt ),
        .O(\gen_single_issue.accept_cnt_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \gen_single_issue.accept_cnt_i_2__1 
       (.I0(s_axi_bready),
        .I1(\gen_single_issue.active_target_enc [0]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(s_axi_bvalid),
        .O(\gen_single_issue.accept_cnt_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.accept_cnt_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.accept_cnt_i_1__1_n_0 ),
        .Q(\gen_single_issue.accept_cnt ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_issue.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_enc_reg[1]_1 ),
        .Q(\gen_single_issue.active_target_enc [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_issue.active_target_hot ),
        .R(SR));
  LUT4 #(
    .INIT(16'h33E2)) 
    \s_axi_bresp[2]_INST_0 
       (.I0(st_mr_bmesg[0]),
        .I1(\gen_single_issue.active_target_enc [0]),
        .I2(st_mr_bmesg[2]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'h33E2)) 
    \s_axi_bresp[3]_INST_0 
       (.I0(st_mr_bmesg[1]),
        .I1(\gen_single_issue.active_target_enc [0]),
        .I2(st_mr_bmesg[3]),
        .I3(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_bresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized3
   (\gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_hot ,
    D,
    \gen_single_thread.s_avalid_en ,
    \gen_single_thread.accept_cnt_reg[1]_0 ,
    \gen_single_thread.accept_cnt_reg[0]_0 ,
    match,
    \s_axi_araddr[95] ,
    s_axi_rresp,
    s_axi_rdata,
    s_axi_rlast,
    SR,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    aclk,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    \gen_single_thread.active_target_enc_reg[1]_0 ,
    p_2_in,
    Q,
    valid_qual_i142_in,
    s_axi_arvalid,
    \gen_arbiter.m_grant_enc_i_reg[0] ,
    s_axi_araddr,
    \gen_arbiter.m_target_hot_i_reg[2] ,
    \gen_arbiter.m_target_hot_i_reg[2]_0 ,
    \gen_arbiter.m_target_hot_i_reg[2]_1 ,
    \gen_arbiter.m_target_hot_i_reg[2]_2 ,
    st_mr_rmesg,
    st_mr_rlast);
  output [1:0]\gen_single_thread.active_target_enc ;
  output [0:0]\gen_single_thread.active_target_hot ;
  output [0:0]D;
  output \gen_single_thread.s_avalid_en ;
  output \gen_single_thread.accept_cnt_reg[1]_0 ;
  output \gen_single_thread.accept_cnt_reg[0]_0 ;
  output match;
  output \s_axi_araddr[95] ;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output [0:0]s_axi_rlast;
  input [0:0]SR;
  input \gen_single_thread.active_target_enc_reg[0]_0 ;
  input aclk;
  input \gen_single_thread.active_target_hot_reg[0]_0 ;
  input \gen_single_thread.active_target_enc_reg[1]_0 ;
  input p_2_in;
  input [0:0]Q;
  input valid_qual_i142_in;
  input [0:0]s_axi_arvalid;
  input \gen_arbiter.m_grant_enc_i_reg[0] ;
  input [1:0]s_axi_araddr;
  input \gen_arbiter.m_target_hot_i_reg[2] ;
  input \gen_arbiter.m_target_hot_i_reg[2]_0 ;
  input \gen_arbiter.m_target_hot_i_reg[2]_1 ;
  input \gen_arbiter.m_target_hot_i_reg[2]_2 ;
  input [67:0]st_mr_rmesg;
  input [2:0]st_mr_rlast;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.m_grant_enc_i_reg[0] ;
  wire \gen_arbiter.m_target_hot_i_reg[2] ;
  wire \gen_arbiter.m_target_hot_i_reg[2]_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[2]_1 ;
  wire \gen_arbiter.m_target_hot_i_reg[2]_2 ;
  wire \gen_arbiter.qual_reg[2]_i_6__0_n_0 ;
  wire [1:0]\gen_single_thread.accept_cnt ;
  wire \gen_single_thread.accept_cnt[0]_i_1__1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__1_n_0 ;
  wire \gen_single_thread.accept_cnt_reg[0]_0 ;
  wire \gen_single_thread.accept_cnt_reg[1]_0 ;
  wire [1:0]\gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_reg[0]_0 ;
  wire \gen_single_thread.active_target_enc_reg[1]_0 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.s_avalid_en ;
  wire match;
  wire p_2_in;
  wire [1:0]s_axi_araddr;
  wire \s_axi_araddr[95] ;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire [2:0]st_mr_rlast;
  wire [67:0]st_mr_rmesg;
  wire valid_qual_i142_in;

  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \gen_arbiter.any_grant_i_7 
       (.I0(\gen_arbiter.m_grant_enc_i_reg[0] ),
        .I1(p_2_in),
        .I2(\gen_single_thread.accept_cnt [0]),
        .I3(\gen_single_thread.accept_cnt [1]),
        .O(\gen_single_thread.accept_cnt_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFD00000000000000)) 
    \gen_arbiter.last_rr_hot[3]_i_7 
       (.I0(\gen_single_thread.accept_cnt [1]),
        .I1(\gen_single_thread.accept_cnt [0]),
        .I2(p_2_in),
        .I3(\gen_single_thread.s_avalid_en ),
        .I4(\gen_arbiter.m_grant_enc_i_reg[0] ),
        .I5(valid_qual_i142_in),
        .O(\gen_single_thread.accept_cnt_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_arbiter.m_target_hot_i[1]_i_2 
       (.I0(match),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .O(\s_axi_araddr[95] ));
  LUT6 #(
    .INIT(64'h80008000FFFF8000)) 
    \gen_arbiter.m_target_hot_i[2]_i_2 
       (.I0(\gen_arbiter.m_target_hot_i_reg[2] ),
        .I1(\gen_arbiter.m_target_hot_i_reg[2]_0 ),
        .I2(\gen_arbiter.m_target_hot_i_reg[2]_1 ),
        .I3(\gen_arbiter.m_target_hot_i_reg[2]_2 ),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[0]),
        .O(match));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    \gen_arbiter.qual_reg[2]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt [1]),
        .I1(\gen_single_thread.accept_cnt [0]),
        .I2(p_2_in),
        .I3(valid_qual_i142_in),
        .I4(\gen_single_thread.s_avalid_en ),
        .I5(s_axi_arvalid),
        .O(D));
  LUT6 #(
    .INIT(64'h0F0F4FBF0FFF0F0F)) 
    \gen_arbiter.qual_reg[2]_i_4 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(\gen_arbiter.qual_reg[2]_i_6__0_n_0 ),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(match),
        .O(\gen_single_thread.s_avalid_en ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.qual_reg[2]_i_6__0 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .O(\gen_arbiter.qual_reg[2]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hA558)) 
    \gen_single_thread.accept_cnt[0]_i_1__1 
       (.I0(p_2_in),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(\gen_single_thread.accept_cnt [0]),
        .I3(Q),
        .O(\gen_single_thread.accept_cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h9CC4)) 
    \gen_single_thread.accept_cnt[1]_i_1__1 
       (.I0(p_2_in),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(\gen_single_thread.accept_cnt [0]),
        .I3(Q),
        .O(\gen_single_thread.accept_cnt[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[0]_i_1__1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[1]_i_1__1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .Q(\gen_single_thread.active_target_enc [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_hot ),
        .R(SR));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[64]_INST_0 
       (.I0(st_mr_rmesg[2]),
        .I1(st_mr_rmesg[36]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[0]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[65]_INST_0 
       (.I0(st_mr_rmesg[3]),
        .I1(st_mr_rmesg[37]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[1]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[66]_INST_0 
       (.I0(st_mr_rmesg[4]),
        .I1(st_mr_rmesg[38]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[2]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[67]_INST_0 
       (.I0(st_mr_rmesg[5]),
        .I1(st_mr_rmesg[39]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[3]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[68]_INST_0 
       (.I0(st_mr_rmesg[6]),
        .I1(st_mr_rmesg[40]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[4]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[69]_INST_0 
       (.I0(st_mr_rmesg[7]),
        .I1(st_mr_rmesg[41]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[5]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[70]_INST_0 
       (.I0(st_mr_rmesg[8]),
        .I1(st_mr_rmesg[42]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[6]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[71]_INST_0 
       (.I0(st_mr_rmesg[9]),
        .I1(st_mr_rmesg[43]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[7]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[72]_INST_0 
       (.I0(st_mr_rmesg[10]),
        .I1(st_mr_rmesg[44]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[8]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[73]_INST_0 
       (.I0(st_mr_rmesg[11]),
        .I1(st_mr_rmesg[45]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[9]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[74]_INST_0 
       (.I0(st_mr_rmesg[12]),
        .I1(st_mr_rmesg[46]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[10]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[75]_INST_0 
       (.I0(st_mr_rmesg[13]),
        .I1(st_mr_rmesg[47]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[11]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[76]_INST_0 
       (.I0(st_mr_rmesg[14]),
        .I1(st_mr_rmesg[48]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[12]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[77]_INST_0 
       (.I0(st_mr_rmesg[15]),
        .I1(st_mr_rmesg[49]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[13]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[78]_INST_0 
       (.I0(st_mr_rmesg[16]),
        .I1(st_mr_rmesg[50]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[14]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[79]_INST_0 
       (.I0(st_mr_rmesg[17]),
        .I1(st_mr_rmesg[51]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[15]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[80]_INST_0 
       (.I0(st_mr_rmesg[18]),
        .I1(st_mr_rmesg[52]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[16]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[81]_INST_0 
       (.I0(st_mr_rmesg[19]),
        .I1(st_mr_rmesg[53]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[17]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[82]_INST_0 
       (.I0(st_mr_rmesg[20]),
        .I1(st_mr_rmesg[54]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[18]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[83]_INST_0 
       (.I0(st_mr_rmesg[21]),
        .I1(st_mr_rmesg[55]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[19]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[84]_INST_0 
       (.I0(st_mr_rmesg[22]),
        .I1(st_mr_rmesg[56]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[20]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[85]_INST_0 
       (.I0(st_mr_rmesg[23]),
        .I1(st_mr_rmesg[57]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[21]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[86]_INST_0 
       (.I0(st_mr_rmesg[24]),
        .I1(st_mr_rmesg[58]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[22]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[87]_INST_0 
       (.I0(st_mr_rmesg[25]),
        .I1(st_mr_rmesg[59]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[23]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[88]_INST_0 
       (.I0(st_mr_rmesg[26]),
        .I1(st_mr_rmesg[60]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[24]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[89]_INST_0 
       (.I0(st_mr_rmesg[27]),
        .I1(st_mr_rmesg[61]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[25]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[90]_INST_0 
       (.I0(st_mr_rmesg[28]),
        .I1(st_mr_rmesg[62]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[26]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[91]_INST_0 
       (.I0(st_mr_rmesg[29]),
        .I1(st_mr_rmesg[63]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[27]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[92]_INST_0 
       (.I0(st_mr_rmesg[30]),
        .I1(st_mr_rmesg[64]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[28]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[93]_INST_0 
       (.I0(st_mr_rmesg[31]),
        .I1(st_mr_rmesg[65]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[29]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[94]_INST_0 
       (.I0(st_mr_rmesg[32]),
        .I1(st_mr_rmesg[66]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[30]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[95]_INST_0 
       (.I0(st_mr_rmesg[33]),
        .I1(st_mr_rmesg[67]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[31]));
  LUT5 #(
    .INIT(32'h3B0B3808)) 
    \s_axi_rlast[2]_INST_0 
       (.I0(st_mr_rlast[1]),
        .I1(\gen_single_thread.active_target_enc [0]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(st_mr_rlast[2]),
        .I4(st_mr_rlast[0]),
        .O(s_axi_rlast));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[4]_INST_0 
       (.I0(st_mr_rmesg[0]),
        .I1(st_mr_rmesg[34]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rresp[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[5]_INST_0 
       (.I0(st_mr_rmesg[1]),
        .I1(st_mr_rmesg[35]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized4
   (\gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.accept_cnt_reg[5]_0 ,
    \s_axi_awvalid[2] ,
    s_axi_bresp,
    SR,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    aclk,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    \gen_single_thread.active_target_enc_reg[1]_0 ,
    \gen_arbiter.grant_hot_reg[2] ,
    valid_qual_i142_in,
    s_axi_awvalid,
    m_ready_d,
    \gen_single_thread.accept_cnt_reg[4]_0 ,
    ss_aa_awready,
    ss_wr_awready_2,
    s_axi_awaddr,
    match,
    \gen_single_thread.accept_cnt_reg[5]_1 ,
    \gen_single_thread.accept_cnt_reg[5]_2 ,
    \gen_single_thread.accept_cnt_reg[5]_3 ,
    s_axi_bready,
    st_mr_bmesg);
  output [1:0]\gen_single_thread.active_target_enc ;
  output [0:0]\gen_single_thread.active_target_hot ;
  output \gen_single_thread.accept_cnt_reg[5]_0 ;
  output [0:0]\s_axi_awvalid[2] ;
  output [1:0]s_axi_bresp;
  input [0:0]SR;
  input \gen_single_thread.active_target_enc_reg[0]_0 ;
  input aclk;
  input \gen_single_thread.active_target_hot_reg[0]_0 ;
  input \gen_single_thread.active_target_enc_reg[1]_0 ;
  input \gen_arbiter.grant_hot_reg[2] ;
  input valid_qual_i142_in;
  input [0:0]s_axi_awvalid;
  input [1:0]m_ready_d;
  input \gen_single_thread.accept_cnt_reg[4]_0 ;
  input [0:0]ss_aa_awready;
  input ss_wr_awready_2;
  input [1:0]s_axi_awaddr;
  input match;
  input \gen_single_thread.accept_cnt_reg[5]_1 ;
  input \gen_single_thread.accept_cnt_reg[5]_2 ;
  input \gen_single_thread.accept_cnt_reg[5]_3 ;
  input [0:0]s_axi_bready;
  input [3:0]st_mr_bmesg;

  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.grant_hot_reg[2] ;
  wire \gen_arbiter.last_rr_hot[3]_i_5__0_n_0 ;
  wire \gen_arbiter.qual_reg[2]_i_5_n_0 ;
  wire \gen_single_thread.accept_cnt[0]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[2]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[4]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[5]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[5]_i_2_n_0 ;
  wire \gen_single_thread.accept_cnt[5]_i_3_n_0 ;
  wire \gen_single_thread.accept_cnt[5]_i_4_n_0 ;
  wire [5:0]\gen_single_thread.accept_cnt_reg ;
  wire \gen_single_thread.accept_cnt_reg[4]_0 ;
  wire \gen_single_thread.accept_cnt_reg[5]_0 ;
  wire \gen_single_thread.accept_cnt_reg[5]_1 ;
  wire \gen_single_thread.accept_cnt_reg[5]_2 ;
  wire \gen_single_thread.accept_cnt_reg[5]_3 ;
  wire [1:0]\gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_reg[0]_0 ;
  wire \gen_single_thread.active_target_enc_reg[1]_0 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.s_avalid_en__0 ;
  wire [1:0]m_ready_d;
  wire match;
  wire p_2_in;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]\s_axi_awvalid[2] ;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_2;
  wire [3:0]st_mr_bmesg;
  wire valid_qual_i142_in;

  LUT6 #(
    .INIT(64'hFB00000000000000)) 
    \gen_arbiter.last_rr_hot[3]_i_3__0 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_5__0_n_0 ),
        .I1(\gen_single_thread.accept_cnt_reg [5]),
        .I2(p_2_in),
        .I3(\gen_single_thread.s_avalid_en__0 ),
        .I4(\gen_arbiter.grant_hot_reg[2] ),
        .I5(valid_qual_i142_in),
        .O(\gen_single_thread.accept_cnt_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_arbiter.last_rr_hot[3]_i_5__0 
       (.I0(\gen_single_thread.accept_cnt_reg [2]),
        .I1(\gen_single_thread.accept_cnt_reg [4]),
        .I2(\gen_single_thread.accept_cnt_reg [3]),
        .I3(\gen_single_thread.accept_cnt_reg [1]),
        .I4(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_arbiter.last_rr_hot[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFDDDDDDDFDDDFDDD)) 
    \gen_arbiter.qual_reg[2]_i_1 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[0]),
        .I2(valid_qual_i142_in),
        .I3(\gen_single_thread.s_avalid_en__0 ),
        .I4(p_2_in),
        .I5(\gen_arbiter.qual_reg[2]_i_5_n_0 ),
        .O(\s_axi_awvalid[2] ));
  LUT6 #(
    .INIT(64'h0F0F4FBF0FFF0F0F)) 
    \gen_arbiter.qual_reg[2]_i_3__0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(\gen_single_thread.accept_cnt[5]_i_3_n_0 ),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(match),
        .O(\gen_single_thread.s_avalid_en__0 ));
  LUT6 #(
    .INIT(64'h33320000FFF20000)) 
    \gen_arbiter.qual_reg[2]_i_4__0 
       (.I0(\gen_single_thread.accept_cnt_reg[5]_1 ),
        .I1(\gen_single_thread.active_target_enc [0]),
        .I2(\gen_single_thread.accept_cnt_reg[5]_2 ),
        .I3(\gen_single_thread.accept_cnt_reg[5]_3 ),
        .I4(s_axi_bready),
        .I5(\gen_single_thread.active_target_enc [1]),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \gen_arbiter.qual_reg[2]_i_5 
       (.I0(\gen_single_thread.accept_cnt_reg [5]),
        .I1(\gen_single_thread.accept_cnt_reg [0]),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [4]),
        .I5(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_arbiter.qual_reg[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6669666966699999)) 
    \gen_single_thread.accept_cnt[1]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(\gen_single_thread.accept_cnt_reg [0]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .I4(m_ready_d[1]),
        .I5(ss_wr_awready_2),
        .O(\gen_single_thread.accept_cnt[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_single_thread.accept_cnt[2]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [2]),
        .I1(\gen_single_thread.accept_cnt_reg[4]_0 ),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_single_thread.accept_cnt[3]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [3]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg[4]_0 ),
        .I4(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFE80000001)) 
    \gen_single_thread.accept_cnt[4]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg[4]_0 ),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [2]),
        .I5(\gen_single_thread.accept_cnt_reg [4]),
        .O(\gen_single_thread.accept_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5558555855588888)) 
    \gen_single_thread.accept_cnt[5]_i_1 
       (.I0(p_2_in),
        .I1(\gen_single_thread.accept_cnt[5]_i_3_n_0 ),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .I4(m_ready_d[1]),
        .I5(ss_wr_awready_2),
        .O(\gen_single_thread.accept_cnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6CC9)) 
    \gen_single_thread.accept_cnt[5]_i_2 
       (.I0(\gen_single_thread.accept_cnt_reg [4]),
        .I1(\gen_single_thread.accept_cnt_reg [5]),
        .I2(\gen_single_thread.accept_cnt[5]_i_4_n_0 ),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_single_thread.accept_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_single_thread.accept_cnt[5]_i_3 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [3]),
        .I3(\gen_single_thread.accept_cnt_reg [4]),
        .I4(\gen_single_thread.accept_cnt_reg [2]),
        .I5(\gen_single_thread.accept_cnt_reg [5]),
        .O(\gen_single_thread.accept_cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h80FF00FE)) 
    \gen_single_thread.accept_cnt[5]_i_4 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg[4]_0 ),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[5]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[5]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[1]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[5]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[2]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[5]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[3]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[5]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[4]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[5]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[5]_i_2_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[1]_0 ),
        .Q(\gen_single_thread.active_target_enc [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_hot ),
        .R(SR));
  LUT4 #(
    .INIT(16'h33E2)) 
    \s_axi_bresp[4]_INST_0 
       (.I0(st_mr_bmesg[0]),
        .I1(\gen_single_thread.active_target_enc [0]),
        .I2(st_mr_bmesg[2]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'h33E2)) 
    \s_axi_bresp[5]_INST_0 
       (.I0(st_mr_bmesg[1]),
        .I1(\gen_single_thread.active_target_enc [0]),
        .I2(st_mr_bmesg[3]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_bresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized5
   (\gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.accept_cnt_reg[3]_0 ,
    \gen_single_thread.active_target_enc_reg[1]_0 ,
    D,
    \s_axi_araddr[127] ,
    \gen_single_thread.accept_cnt_reg[0]_0 ,
    s_axi_rlast,
    s_axi_rresp,
    s_axi_rdata,
    SR,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    aclk,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    \gen_single_thread.active_target_enc_reg[1]_1 ,
    p_2_in,
    \gen_arbiter.m_grant_enc_i_reg[0] ,
    valid_qual_i145_in,
    match,
    \gen_arbiter.any_grant_i_3 ,
    s_axi_arvalid,
    s_axi_araddr,
    Q,
    s_axi_rvalid,
    s_axi_rready,
    st_mr_rmesg,
    st_mr_rlast);
  output [1:0]\gen_single_thread.active_target_enc ;
  output [0:0]\gen_single_thread.active_target_hot ;
  output \gen_single_thread.accept_cnt_reg[3]_0 ;
  output \gen_single_thread.active_target_enc_reg[1]_0 ;
  output [0:0]D;
  output \s_axi_araddr[127] ;
  output \gen_single_thread.accept_cnt_reg[0]_0 ;
  output [0:0]s_axi_rlast;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input \gen_single_thread.active_target_enc_reg[0]_0 ;
  input aclk;
  input \gen_single_thread.active_target_hot_reg[0]_0 ;
  input \gen_single_thread.active_target_enc_reg[1]_1 ;
  input p_2_in;
  input \gen_arbiter.m_grant_enc_i_reg[0] ;
  input valid_qual_i145_in;
  input match;
  input \gen_arbiter.any_grant_i_3 ;
  input [0:0]s_axi_arvalid;
  input [1:0]s_axi_araddr;
  input [0:0]Q;
  input [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  input [67:0]st_mr_rmesg;
  input [2:0]st_mr_rlast;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.any_grant_i_3 ;
  wire \gen_arbiter.any_grant_i_9_n_0 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0] ;
  wire \gen_arbiter.qual_reg[3]_i_5_n_0 ;
  wire \gen_arbiter.qual_reg[3]_i_9_n_0 ;
  wire \gen_single_thread.accept_cnt[0]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[2]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_2_n_0 ;
  wire [3:0]\gen_single_thread.accept_cnt_reg ;
  wire \gen_single_thread.accept_cnt_reg[0]_0 ;
  wire \gen_single_thread.accept_cnt_reg[3]_0 ;
  wire [1:0]\gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_reg[0]_0 ;
  wire \gen_single_thread.active_target_enc_reg[1]_0 ;
  wire \gen_single_thread.active_target_enc_reg[1]_1 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.s_avalid_en__1 ;
  wire match;
  wire p_2_in;
  wire [1:0]s_axi_araddr;
  wire \s_axi_araddr[127] ;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [2:0]st_mr_rlast;
  wire [67:0]st_mr_rmesg;
  wire valid_qual_i145_in;

  LUT6 #(
    .INIT(64'h0028AAAA0820AAAA)) 
    \gen_arbiter.any_grant_i_5 
       (.I0(\gen_arbiter.m_grant_enc_i_reg[0] ),
        .I1(match),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_arbiter.qual_reg[3]_i_9_n_0 ),
        .I5(\gen_arbiter.any_grant_i_3 ),
        .O(\gen_single_thread.active_target_enc_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0010101010101010)) 
    \gen_arbiter.any_grant_i_6 
       (.I0(\gen_arbiter.any_grant_i_9_n_0 ),
        .I1(\gen_single_thread.accept_cnt_reg [0]),
        .I2(\gen_single_thread.accept_cnt_reg [3]),
        .I3(s_axi_rlast),
        .I4(s_axi_rvalid),
        .I5(s_axi_rready),
        .O(\gen_single_thread.accept_cnt_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.any_grant_i_9 
       (.I0(\gen_single_thread.accept_cnt_reg [2]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_arbiter.any_grant_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFB00000000000000)) 
    \gen_arbiter.last_rr_hot[3]_i_6 
       (.I0(\gen_arbiter.qual_reg[3]_i_5_n_0 ),
        .I1(\gen_single_thread.accept_cnt_reg [3]),
        .I2(p_2_in),
        .I3(\gen_arbiter.m_grant_enc_i_reg[0] ),
        .I4(\gen_single_thread.s_avalid_en__1 ),
        .I5(valid_qual_i145_in),
        .O(\gen_single_thread.accept_cnt_reg[3]_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_arbiter.m_target_hot_i[1]_i_3 
       (.I0(match),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .O(\s_axi_araddr[127] ));
  LUT6 #(
    .INIT(64'h88888088FFFFFFFF)) 
    \gen_arbiter.qual_reg[3]_i_1 
       (.I0(valid_qual_i145_in),
        .I1(\gen_single_thread.s_avalid_en__1 ),
        .I2(p_2_in),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_arbiter.qual_reg[3]_i_5_n_0 ),
        .I5(s_axi_arvalid),
        .O(D));
  LUT6 #(
    .INIT(64'h0F0F4FBF0FFF0F0F)) 
    \gen_arbiter.qual_reg[3]_i_3 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(\gen_arbiter.qual_reg[3]_i_9_n_0 ),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(match),
        .O(\gen_single_thread.s_avalid_en__1 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_arbiter.qual_reg[3]_i_5 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(\gen_single_thread.accept_cnt_reg [2]),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_arbiter.qual_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_arbiter.qual_reg[3]_i_9 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [2]),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_arbiter.qual_reg[3]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_single_thread.accept_cnt[1]_i_1__0 
       (.I0(Q),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_single_thread.accept_cnt[2]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(Q),
        .I3(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h55555555AAAAAAA8)) 
    \gen_single_thread.accept_cnt[3]_i_1__0 
       (.I0(p_2_in),
        .I1(\gen_single_thread.accept_cnt_reg [3]),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [2]),
        .I4(\gen_single_thread.accept_cnt_reg [0]),
        .I5(Q),
        .O(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h6CCCCCC9)) 
    \gen_single_thread.accept_cnt[3]_i_2 
       (.I0(\gen_single_thread.accept_cnt_reg [2]),
        .I1(\gen_single_thread.accept_cnt_reg [3]),
        .I2(Q),
        .I3(\gen_single_thread.accept_cnt_reg [1]),
        .I4(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[2]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[3]_i_2_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[1]_1 ),
        .Q(\gen_single_thread.active_target_enc [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_hot ),
        .R(SR));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[100]_INST_0 
       (.I0(st_mr_rmesg[6]),
        .I1(st_mr_rmesg[40]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[4]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[101]_INST_0 
       (.I0(st_mr_rmesg[7]),
        .I1(st_mr_rmesg[41]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[5]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[102]_INST_0 
       (.I0(st_mr_rmesg[8]),
        .I1(st_mr_rmesg[42]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[6]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[103]_INST_0 
       (.I0(st_mr_rmesg[9]),
        .I1(st_mr_rmesg[43]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[7]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[104]_INST_0 
       (.I0(st_mr_rmesg[10]),
        .I1(st_mr_rmesg[44]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[8]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[105]_INST_0 
       (.I0(st_mr_rmesg[11]),
        .I1(st_mr_rmesg[45]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[9]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[106]_INST_0 
       (.I0(st_mr_rmesg[12]),
        .I1(st_mr_rmesg[46]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[10]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[107]_INST_0 
       (.I0(st_mr_rmesg[13]),
        .I1(st_mr_rmesg[47]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[11]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[108]_INST_0 
       (.I0(st_mr_rmesg[14]),
        .I1(st_mr_rmesg[48]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[12]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[109]_INST_0 
       (.I0(st_mr_rmesg[15]),
        .I1(st_mr_rmesg[49]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[13]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[110]_INST_0 
       (.I0(st_mr_rmesg[16]),
        .I1(st_mr_rmesg[50]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[14]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[111]_INST_0 
       (.I0(st_mr_rmesg[17]),
        .I1(st_mr_rmesg[51]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[15]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[112]_INST_0 
       (.I0(st_mr_rmesg[18]),
        .I1(st_mr_rmesg[52]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[16]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[113]_INST_0 
       (.I0(st_mr_rmesg[19]),
        .I1(st_mr_rmesg[53]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[17]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[114]_INST_0 
       (.I0(st_mr_rmesg[20]),
        .I1(st_mr_rmesg[54]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[18]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[115]_INST_0 
       (.I0(st_mr_rmesg[21]),
        .I1(st_mr_rmesg[55]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[19]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[116]_INST_0 
       (.I0(st_mr_rmesg[22]),
        .I1(st_mr_rmesg[56]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[20]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[117]_INST_0 
       (.I0(st_mr_rmesg[23]),
        .I1(st_mr_rmesg[57]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[21]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[118]_INST_0 
       (.I0(st_mr_rmesg[24]),
        .I1(st_mr_rmesg[58]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[22]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[119]_INST_0 
       (.I0(st_mr_rmesg[25]),
        .I1(st_mr_rmesg[59]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[23]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[120]_INST_0 
       (.I0(st_mr_rmesg[26]),
        .I1(st_mr_rmesg[60]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[24]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[121]_INST_0 
       (.I0(st_mr_rmesg[27]),
        .I1(st_mr_rmesg[61]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[25]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[122]_INST_0 
       (.I0(st_mr_rmesg[28]),
        .I1(st_mr_rmesg[62]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[26]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[123]_INST_0 
       (.I0(st_mr_rmesg[29]),
        .I1(st_mr_rmesg[63]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[27]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[124]_INST_0 
       (.I0(st_mr_rmesg[30]),
        .I1(st_mr_rmesg[64]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[28]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[125]_INST_0 
       (.I0(st_mr_rmesg[31]),
        .I1(st_mr_rmesg[65]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[29]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[126]_INST_0 
       (.I0(st_mr_rmesg[32]),
        .I1(st_mr_rmesg[66]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[30]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[127]_INST_0 
       (.I0(st_mr_rmesg[33]),
        .I1(st_mr_rmesg[67]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[31]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[96]_INST_0 
       (.I0(st_mr_rmesg[2]),
        .I1(st_mr_rmesg[36]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[0]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \s_axi_rdata[97]_INST_0 
       (.I0(st_mr_rmesg[3]),
        .I1(st_mr_rmesg[37]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[1]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[98]_INST_0 
       (.I0(st_mr_rmesg[4]),
        .I1(st_mr_rmesg[38]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[2]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[99]_INST_0 
       (.I0(st_mr_rmesg[5]),
        .I1(st_mr_rmesg[39]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rdata[3]));
  LUT5 #(
    .INIT(32'h3B0B3808)) 
    \s_axi_rlast[3]_INST_0 
       (.I0(st_mr_rlast[1]),
        .I1(\gen_single_thread.active_target_enc [0]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(st_mr_rlast[2]),
        .I4(st_mr_rlast[0]),
        .O(s_axi_rlast));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[6]_INST_0 
       (.I0(st_mr_rmesg[0]),
        .I1(st_mr_rmesg[34]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rresp[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[7]_INST_0 
       (.I0(st_mr_rmesg[1]),
        .I1(st_mr_rmesg[35]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .O(s_axi_rresp[1]));
endmodule

module mcu_xbar_0_axi_crossbar_v2_1_19_splitter
   (s_ready_i_reg,
    m_ready_d,
    s_ready_i_reg_0,
    s_axi_awready,
    \s_axi_awvalid[0] ,
    \m_ready_d_reg[1]_0 ,
    s_ready_i_reg_1,
    match,
    ss_wr_awready_0,
    ss_aa_awready,
    \gen_single_issue.active_target_enc ,
    ADDRESS_HIT_0,
    \gen_single_issue.active_target_hot ,
    s_axi_awvalid,
    valid_qual_i1__1,
    \gen_arbiter.qual_reg_reg[0] ,
    st_aa_awtarget_enc_0,
    aresetn_d,
    aclk);
  output s_ready_i_reg;
  output [1:0]m_ready_d;
  output s_ready_i_reg_0;
  output [0:0]s_axi_awready;
  output [0:0]\s_axi_awvalid[0] ;
  output \m_ready_d_reg[1]_0 ;
  output s_ready_i_reg_1;
  input match;
  input ss_wr_awready_0;
  input [0:0]ss_aa_awready;
  input [1:0]\gen_single_issue.active_target_enc ;
  input ADDRESS_HIT_0;
  input [0:0]\gen_single_issue.active_target_hot ;
  input [0:0]s_axi_awvalid;
  input valid_qual_i1__1;
  input \gen_arbiter.qual_reg_reg[0] ;
  input [0:0]st_aa_awtarget_enc_0;
  input aresetn_d;
  input aclk;

  wire ADDRESS_HIT_0;
  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire match;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]\s_axi_awvalid[0] ;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire [0:0]st_aa_awtarget_enc_0;
  wire valid_qual_i1__1;

  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(m_ready_d[1]),
        .I1(s_axi_awvalid),
        .O(\m_ready_d_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFDDD)) 
    \gen_arbiter.qual_reg[0]_i_1__0 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[0]),
        .I2(valid_qual_i1__1),
        .I3(\gen_arbiter.qual_reg_reg[0] ),
        .O(\s_axi_awvalid[0] ));
  LUT6 #(
    .INIT(64'hABABABFFA8A8A800)) 
    \gen_single_issue.active_target_enc[0]_i_1__0 
       (.I0(st_aa_awtarget_enc_0),
        .I1(ss_wr_awready_0),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_issue.active_target_enc [0]),
        .O(s_ready_i_reg_1));
  LUT6 #(
    .INIT(64'h575757FF54545400)) 
    \gen_single_issue.active_target_enc[1]_i_1__2 
       (.I0(match),
        .I1(ss_wr_awready_0),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_issue.active_target_enc [1]),
        .O(s_ready_i_reg));
  LUT6 #(
    .INIT(64'hABABABFFA8A8A800)) 
    \gen_single_issue.active_target_hot[0]_i_1__2 
       (.I0(ADDRESS_HIT_0),
        .I1(ss_wr_awready_0),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_issue.active_target_hot ),
        .O(s_ready_i_reg_0));
  LUT6 #(
    .INIT(64'h000C000C00080000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_0),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CC80)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_0),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[0]_INST_0 
       (.I0(ss_wr_awready_0),
        .I1(m_ready_d[1]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_splitter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_splitter_3
   (s_ready_i_reg,
    m_ready_d,
    s_ready_i_reg_0,
    \s_axi_awvalid[1] ,
    s_axi_awready,
    \m_ready_d_reg[1]_0 ,
    s_ready_i_reg_1,
    match,
    ss_wr_awready_1,
    ss_aa_awready,
    \gen_single_issue.active_target_enc ,
    ADDRESS_HIT_0,
    \gen_single_issue.active_target_hot ,
    s_axi_awvalid,
    valid_qual_i140_in,
    \gen_arbiter.qual_reg_reg[1] ,
    st_aa_awtarget_enc_2,
    aresetn_d,
    aclk);
  output s_ready_i_reg;
  output [1:0]m_ready_d;
  output s_ready_i_reg_0;
  output [0:0]\s_axi_awvalid[1] ;
  output [0:0]s_axi_awready;
  output \m_ready_d_reg[1]_0 ;
  output s_ready_i_reg_1;
  input match;
  input ss_wr_awready_1;
  input [0:0]ss_aa_awready;
  input [1:0]\gen_single_issue.active_target_enc ;
  input ADDRESS_HIT_0;
  input [0:0]\gen_single_issue.active_target_hot ;
  input [0:0]s_axi_awvalid;
  input valid_qual_i140_in;
  input \gen_arbiter.qual_reg_reg[1] ;
  input [0:0]st_aa_awtarget_enc_2;
  input aresetn_d;
  input aclk;

  wire ADDRESS_HIT_0;
  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.qual_reg_reg[1] ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire match;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]\s_axi_awvalid[1] ;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_1;
  wire [0:0]st_aa_awtarget_enc_2;
  wire valid_qual_i140_in;

  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[3]_i_4__0 
       (.I0(m_ready_d[1]),
        .I1(s_axi_awvalid),
        .O(\m_ready_d_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hFDDD)) 
    \gen_arbiter.qual_reg[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[0]),
        .I2(valid_qual_i140_in),
        .I3(\gen_arbiter.qual_reg_reg[1] ),
        .O(\s_axi_awvalid[1] ));
  LUT6 #(
    .INIT(64'hABABABFFA8A8A800)) 
    \gen_single_issue.active_target_enc[0]_i_1__1 
       (.I0(st_aa_awtarget_enc_2),
        .I1(ss_wr_awready_1),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_issue.active_target_enc [0]),
        .O(s_ready_i_reg_1));
  LUT6 #(
    .INIT(64'h575757FF54545400)) 
    \gen_single_issue.active_target_enc[1]_i_1__1 
       (.I0(match),
        .I1(ss_wr_awready_1),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_issue.active_target_enc [1]),
        .O(s_ready_i_reg));
  LUT6 #(
    .INIT(64'hABABABFFA8A8A800)) 
    \gen_single_issue.active_target_hot[0]_i_1__1 
       (.I0(ADDRESS_HIT_0),
        .I1(ss_wr_awready_1),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_issue.active_target_hot ),
        .O(s_ready_i_reg_0));
  LUT6 #(
    .INIT(64'h000C000C00080000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_1),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CC80)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_1),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[1]_INST_0 
       (.I0(ss_wr_awready_1),
        .I1(m_ready_d[1]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_splitter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_splitter_5
   (s_ready_i_reg,
    m_ready_d,
    s_ready_i_reg_0,
    s_axi_awready,
    \m_ready_d_reg[1]_0 ,
    \s_axi_awaddr[95] ,
    match,
    ss_wr_awready_2,
    ss_aa_awready,
    \gen_single_thread.active_target_enc ,
    ADDRESS_HIT_0,
    \gen_single_thread.active_target_hot ,
    s_axi_awvalid,
    s_axi_awaddr,
    aresetn_d,
    aclk);
  output s_ready_i_reg;
  output [1:0]m_ready_d;
  output s_ready_i_reg_0;
  output [0:0]s_axi_awready;
  output \m_ready_d_reg[1]_0 ;
  output \s_axi_awaddr[95] ;
  input match;
  input ss_wr_awready_2;
  input [0:0]ss_aa_awready;
  input [1:0]\gen_single_thread.active_target_enc ;
  input ADDRESS_HIT_0;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]s_axi_awvalid;
  input [1:0]s_axi_awaddr;
  input aresetn_d;
  input aclk;

  wire ADDRESS_HIT_0;
  wire aclk;
  wire aresetn_d;
  wire [1:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire match;
  wire [1:0]s_axi_awaddr;
  wire \s_axi_awaddr[95] ;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_2;

  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[3]_i_4__1 
       (.I0(m_ready_d[1]),
        .I1(s_axi_awvalid),
        .O(\m_ready_d_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \gen_single_thread.active_target_enc[0]_i_1__0 
       (.I0(match),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awready),
        .I4(\gen_single_thread.active_target_enc [0]),
        .O(\s_axi_awaddr[95] ));
  LUT6 #(
    .INIT(64'h575757FF54545400)) 
    \gen_single_thread.active_target_enc[1]_i_1__1 
       (.I0(match),
        .I1(ss_wr_awready_2),
        .I2(m_ready_d[1]),
        .I3(m_ready_d[0]),
        .I4(ss_aa_awready),
        .I5(\gen_single_thread.active_target_enc [1]),
        .O(s_ready_i_reg));
  LUT6 #(
    .INIT(64'hABABABFFA8A8A800)) 
    \gen_single_thread.active_target_hot[0]_i_1__1 
       (.I0(ADDRESS_HIT_0),
        .I1(ss_wr_awready_2),
        .I2(m_ready_d[1]),
        .I3(m_ready_d[0]),
        .I4(ss_aa_awready),
        .I5(\gen_single_thread.active_target_hot ),
        .O(s_ready_i_reg_0));
  LUT6 #(
    .INIT(64'h000C0008000C0000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_2),
        .I3(m_ready_d[1]),
        .I4(m_ready_d[0]),
        .I5(ss_aa_awready),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CC80)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_2),
        .I3(m_ready_d[1]),
        .I4(m_ready_d[0]),
        .I5(ss_aa_awready),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[2]_INST_0 
       (.I0(ss_wr_awready_2),
        .I1(m_ready_d[1]),
        .I2(m_ready_d[0]),
        .I3(ss_aa_awready),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_splitter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_splitter_6
   (\m_ready_d_reg[1]_0 ,
    m_ready_d,
    \m_ready_d_reg[0]_0 ,
    mi_awready_mux__1,
    aa_sa_awvalid,
    aresetn_d,
    \m_ready_d_reg[1]_1 ,
    Q,
    \m_ready_d_reg[0]_1 ,
    aclk);
  output \m_ready_d_reg[1]_0 ;
  output [1:0]m_ready_d;
  output \m_ready_d_reg[0]_0 ;
  input mi_awready_mux__1;
  input aa_sa_awvalid;
  input aresetn_d;
  input \m_ready_d_reg[1]_1 ;
  input [2:0]Q;
  input \m_ready_d_reg[0]_1 ;
  input aclk;

  wire [2:0]Q;
  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[0]_1 ;
  wire \m_ready_d_reg[1]_0 ;
  wire \m_ready_d_reg[1]_1 ;
  wire mi_awready_mux__1;

  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(m_ready_d[0]),
        .I1(aa_sa_awvalid),
        .O(\m_ready_d_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFEAAAA)) 
    \m_ready_d[0]_i_1 
       (.I0(m_ready_d[0]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(aa_sa_awvalid),
        .I5(\m_ready_d_reg[0]_1 ),
        .O(\m_ready_d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_ready_d[0]_i_3 
       (.I0(m_ready_d[1]),
        .I1(mi_awready_mux__1),
        .O(\m_ready_d_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h0C0C0800)) 
    \m_ready_d[1]_i_1 
       (.I0(aa_sa_awvalid),
        .I1(aresetn_d),
        .I2(\m_ready_d_reg[1]_1 ),
        .I3(mi_awready_mux__1),
        .I4(m_ready_d[1]),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
endmodule

module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux
   (m_avalid,
    m_axi_wdata,
    m_select_enc,
    m_axi_wstrb,
    m_axi_wlast,
    \storage_data1_reg[0] ,
    \storage_data1_reg[1] ,
    m_valid_i_reg,
    \storage_data1_reg[0]_0 ,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    s_axi_wdata,
    s_axi_wstrb,
    Q,
    \FSM_onehot_state_reg[1] ,
    aa_sa_awvalid,
    m_ready_d,
    m_axi_wready,
    \gen_rep[0].fifoaddr_reg[0] ,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    \gen_rep[0].fifoaddr_reg[0]_1 ,
    s_axi_wlast,
    SR);
  output m_avalid;
  output [31:0]m_axi_wdata;
  output [1:0]m_select_enc;
  output [3:0]m_axi_wstrb;
  output [0:0]m_axi_wlast;
  output \storage_data1_reg[0] ;
  output \storage_data1_reg[1] ;
  output m_valid_i_reg;
  output \storage_data1_reg[0]_0 ;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input [95:0]s_axi_wdata;
  input [11:0]s_axi_wstrb;
  input [0:0]Q;
  input \FSM_onehot_state_reg[1] ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [0:0]m_axi_wready;
  input \gen_rep[0].fifoaddr_reg[0] ;
  input \gen_rep[0].fifoaddr_reg[0]_0 ;
  input \gen_rep[0].fifoaddr_reg[0]_1 ;
  input [2:0]s_axi_wlast;
  input [0:0]SR;

  wire \FSM_onehot_state_reg[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire \gen_rep[0].fifoaddr_reg[0] ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_1 ;
  wire m_avalid;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire m_valid_i_reg;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [11:0]s_axi_wstrb;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[1] ;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1 \gen_wmux.wmux_aw_fifo 
       (.\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .Q(Q),
        .SR(SR),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_rep[0].fifoaddr_reg[0]_0 (\gen_rep[0].fifoaddr_reg[0] ),
        .\gen_rep[0].fifoaddr_reg[0]_1 (\gen_rep[0].fifoaddr_reg[0]_0 ),
        .\gen_rep[0].fifoaddr_reg[0]_2 (\gen_rep[0].fifoaddr_reg[0]_1 ),
        .m_avalid(m_avalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_ready_d(m_ready_d),
        .m_valid_i_reg_0(m_valid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .\storage_data1_reg[0]_0 (m_select_enc[0]),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0] ),
        .\storage_data1_reg[0]_2 (\storage_data1_reg[0]_0 ),
        .\storage_data1_reg[1]_0 (m_select_enc[1]),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_mux" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized0
   (m_avalid,
    s_axi_wready,
    m_axi_wdata,
    m_select_enc,
    m_axi_wstrb,
    Q,
    s_axi_wlast_2_sp_1,
    m_valid_i_reg,
    \storage_data1_reg[1] ,
    \storage_data1_reg[0] ,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    m_avalid_0,
    s_axi_wready_0_sp_1,
    m_axi_wready,
    \s_axi_wready[0]_0 ,
    \s_axi_wready[0]_1 ,
    s_axi_wdata,
    s_axi_wstrb,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    aa_sa_awvalid,
    m_ready_d,
    \FSM_onehot_state_reg[0] ,
    \storage_data1_reg[1]_0 ,
    s_axi_wlast,
    m_avalid_1,
    s_axi_wready_2_sp_1,
    \s_axi_wready[2]_0 ,
    \s_axi_wready[2]_1 ,
    m_avalid_2,
    s_axi_wready_1_sp_1,
    \s_axi_wready[1]_0 ,
    \s_axi_wready[1]_1 ,
    \gen_rep[0].fifoaddr_reg[2] ,
    \gen_rep[0].fifoaddr_reg[0] ,
    SR,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[1]_2 );
  output m_avalid;
  output [2:0]s_axi_wready;
  output [31:0]m_axi_wdata;
  output [1:0]m_select_enc;
  output [3:0]m_axi_wstrb;
  output [2:0]Q;
  output s_axi_wlast_2_sp_1;
  output m_valid_i_reg;
  output \storage_data1_reg[1] ;
  output \storage_data1_reg[0] ;
  output m_valid_i_reg_0;
  output m_valid_i_reg_1;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input m_avalid_0;
  input s_axi_wready_0_sp_1;
  input [0:0]m_axi_wready;
  input \s_axi_wready[0]_0 ;
  input \s_axi_wready[0]_1 ;
  input [95:0]s_axi_wdata;
  input [11:0]s_axi_wstrb;
  input \FSM_onehot_state_reg[1] ;
  input \FSM_onehot_state_reg[1]_0 ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [0:0]\FSM_onehot_state_reg[0] ;
  input \storage_data1_reg[1]_0 ;
  input [2:0]s_axi_wlast;
  input m_avalid_1;
  input s_axi_wready_2_sp_1;
  input \s_axi_wready[2]_0 ;
  input \s_axi_wready[2]_1 ;
  input m_avalid_2;
  input s_axi_wready_1_sp_1;
  input \s_axi_wready[1]_0 ;
  input \s_axi_wready[1]_1 ;
  input \gen_rep[0].fifoaddr_reg[2] ;
  input \gen_rep[0].fifoaddr_reg[0] ;
  input [0:0]SR;
  input \storage_data1_reg[1]_1 ;
  input \storage_data1_reg[1]_2 ;

  wire [0:0]\FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire \gen_rep[0].fifoaddr_reg[0] ;
  wire \gen_rep[0].fifoaddr_reg[2] ;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire m_avalid_2;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire s_axi_wlast_2_sn_1;
  wire [2:0]s_axi_wready;
  wire \s_axi_wready[0]_0 ;
  wire \s_axi_wready[0]_1 ;
  wire \s_axi_wready[1]_0 ;
  wire \s_axi_wready[1]_1 ;
  wire \s_axi_wready[2]_0 ;
  wire \s_axi_wready[2]_1 ;
  wire s_axi_wready_0_sn_1;
  wire s_axi_wready_1_sn_1;
  wire s_axi_wready_2_sn_1;
  wire [11:0]s_axi_wstrb;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;

  assign s_axi_wlast_2_sp_1 = s_axi_wlast_2_sn_1;
  assign s_axi_wready_0_sn_1 = s_axi_wready_0_sp_1;
  assign s_axi_wready_1_sn_1 = s_axi_wready_1_sp_1;
  assign s_axi_wready_2_sn_1 = s_axi_wready_2_sp_1;
  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized2 \gen_wmux.wmux_aw_fifo 
       (.\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state_reg[0] ),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .\FSM_onehot_state_reg[1]_1 (\FSM_onehot_state_reg[1]_0 ),
        .Q(Q),
        .SR(SR),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_rep[0].fifoaddr_reg[0]_0 (\gen_rep[0].fifoaddr_reg[0] ),
        .\gen_rep[0].fifoaddr_reg[2]_0 (\gen_rep[0].fifoaddr_reg[2] ),
        .m_avalid_0(m_avalid_0),
        .m_avalid_1(m_avalid_1),
        .m_avalid_2(m_avalid_2),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_ready_d(m_ready_d),
        .m_valid_i_reg_0(m_avalid),
        .m_valid_i_reg_1(m_valid_i_reg),
        .m_valid_i_reg_2(m_valid_i_reg_0),
        .m_valid_i_reg_3(m_valid_i_reg_1),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wlast_2_sp_1(s_axi_wlast_2_sn_1),
        .s_axi_wready(s_axi_wready),
        .\s_axi_wready[0]_0 (\s_axi_wready[0]_0 ),
        .\s_axi_wready[0]_1 (\s_axi_wready[0]_1 ),
        .\s_axi_wready[1]_0 (\s_axi_wready[1]_0 ),
        .\s_axi_wready[1]_1 (\s_axi_wready[1]_1 ),
        .\s_axi_wready[2]_0 (\s_axi_wready[2]_0 ),
        .\s_axi_wready[2]_1 (\s_axi_wready[2]_1 ),
        .s_axi_wready_0_sp_1(s_axi_wready_0_sn_1),
        .s_axi_wready_1_sp_1(s_axi_wready_1_sn_1),
        .s_axi_wready_2_sp_1(s_axi_wready_2_sn_1),
        .s_axi_wstrb(s_axi_wstrb),
        .\storage_data1_reg[0]_0 (m_select_enc[0]),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0] ),
        .\storage_data1_reg[1]_0 (m_select_enc[1]),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_0 ),
        .\storage_data1_reg[1]_3 (\storage_data1_reg[1]_1 ),
        .\storage_data1_reg[1]_4 (\storage_data1_reg[1]_2 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_mux" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized1
   (\storage_data1_reg[1] ,
    m_select_enc,
    \FSM_onehot_gen_axi.write_cs_reg[1] ,
    Q,
    \storage_data1_reg[0] ,
    \storage_data1_reg[1]_0 ,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    \s_axi_wready[0]_INST_0_i_1 ,
    \s_axi_wready[0]_INST_0_i_1_0 ,
    \s_axi_wready[0]_INST_0_i_1_1 ,
    \FSM_onehot_gen_axi.write_cs_reg[2] ,
    \storage_data1_reg[1]_1 ,
    \FSM_onehot_state_reg[1] ,
    aa_sa_awvalid,
    m_ready_d,
    \FSM_onehot_state_reg[0] ,
    p_14_in,
    \s_axi_wready[2]_INST_0_i_1 ,
    \s_axi_wready[2]_INST_0_i_1_0 ,
    \s_axi_wready[1]_INST_0_i_1 ,
    \s_axi_wready[1]_INST_0_i_1_0 ,
    s_axi_wlast,
    \gen_rep[0].fifoaddr_reg[0] ,
    SR,
    \storage_data1_reg[1]_2 ,
    \storage_data1_reg[1]_3 );
  output \storage_data1_reg[1] ;
  output [1:0]m_select_enc;
  output \FSM_onehot_gen_axi.write_cs_reg[1] ;
  output [1:0]Q;
  output \storage_data1_reg[0] ;
  output \storage_data1_reg[1]_0 ;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input \s_axi_wready[0]_INST_0_i_1 ;
  input \s_axi_wready[0]_INST_0_i_1_0 ;
  input \s_axi_wready[0]_INST_0_i_1_1 ;
  input \FSM_onehot_gen_axi.write_cs_reg[2] ;
  input \storage_data1_reg[1]_1 ;
  input \FSM_onehot_state_reg[1] ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [0:0]\FSM_onehot_state_reg[0] ;
  input p_14_in;
  input \s_axi_wready[2]_INST_0_i_1 ;
  input \s_axi_wready[2]_INST_0_i_1_0 ;
  input \s_axi_wready[1]_INST_0_i_1 ;
  input \s_axi_wready[1]_INST_0_i_1_0 ;
  input [2:0]s_axi_wlast;
  input \gen_rep[0].fifoaddr_reg[0] ;
  input [0:0]SR;
  input \storage_data1_reg[1]_2 ;
  input \storage_data1_reg[1]_3 ;

  wire \FSM_onehot_gen_axi.write_cs_reg[1] ;
  wire \FSM_onehot_gen_axi.write_cs_reg[2] ;
  wire [0:0]\FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire \gen_rep[0].fifoaddr_reg[0] ;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire p_14_in;
  wire [2:0]s_axi_wlast;
  wire \s_axi_wready[0]_INST_0_i_1 ;
  wire \s_axi_wready[0]_INST_0_i_1_0 ;
  wire \s_axi_wready[0]_INST_0_i_1_1 ;
  wire \s_axi_wready[1]_INST_0_i_1 ;
  wire \s_axi_wready[1]_INST_0_i_1_0 ;
  wire \s_axi_wready[2]_INST_0_i_1 ;
  wire \s_axi_wready[2]_INST_0_i_1_0 ;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire \storage_data1_reg[1]_3 ;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized3 \gen_wmux.wmux_aw_fifo 
       (.\FSM_onehot_gen_axi.write_cs_reg[1] (\FSM_onehot_gen_axi.write_cs_reg[1] ),
        .\FSM_onehot_gen_axi.write_cs_reg[2] (\FSM_onehot_gen_axi.write_cs_reg[2] ),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state_reg[0] ),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .Q(Q),
        .SR(SR),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_rep[0].fifoaddr_reg[0]_0 (\gen_rep[0].fifoaddr_reg[0] ),
        .m_ready_d(m_ready_d),
        .p_14_in(p_14_in),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wready[0]_INST_0_i_1 (\s_axi_wready[0]_INST_0_i_1 ),
        .\s_axi_wready[0]_INST_0_i_1_0 (\s_axi_wready[0]_INST_0_i_1_0 ),
        .\s_axi_wready[0]_INST_0_i_1_1 (\s_axi_wready[0]_INST_0_i_1_1 ),
        .\s_axi_wready[1]_INST_0_i_1 (\s_axi_wready[1]_INST_0_i_1 ),
        .\s_axi_wready[1]_INST_0_i_1_0 (\s_axi_wready[1]_INST_0_i_1_0 ),
        .\s_axi_wready[2]_INST_0_i_1 (\s_axi_wready[2]_INST_0_i_1 ),
        .\s_axi_wready[2]_INST_0_i_1_0 (\s_axi_wready[2]_INST_0_i_1_0 ),
        .\storage_data1_reg[0]_0 (m_select_enc[0]),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0] ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (m_select_enc[1]),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_0 ),
        .\storage_data1_reg[1]_3 (\storage_data1_reg[1]_1 ),
        .\storage_data1_reg[1]_4 (\storage_data1_reg[1]_2 ),
        .\storage_data1_reg[1]_5 (\storage_data1_reg[1]_3 ));
endmodule

module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router
   (st_aa_awtarget_enc_0,
    m_avalid,
    ss_wr_awready_0,
    match,
    \storage_data1_reg[1] ,
    \storage_data1_reg[0] ,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[0]_1 ,
    aclk,
    areset_d1,
    SR,
    m_select_enc,
    s_axi_wvalid,
    s_axi_awvalid,
    m_ready_d,
    m_valid_i_reg,
    s_axi_wlast,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    m_select_enc_0,
    m_select_enc_1,
    s_axi_awaddr,
    ADDRESS_HIT_0);
  output [0:0]st_aa_awtarget_enc_0;
  output m_avalid;
  output ss_wr_awready_0;
  output match;
  output \storage_data1_reg[1] ;
  output \storage_data1_reg[0] ;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[0]_1 ;
  input aclk;
  input areset_d1;
  input [0:0]SR;
  input [1:0]m_select_enc;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input m_valid_i_reg;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1] ;
  input \FSM_onehot_state_reg[1]_0 ;
  input [1:0]m_select_enc_0;
  input [1:0]m_select_enc_1;
  input [1:0]s_axi_awaddr;
  input ADDRESS_HIT_0;

  wire ADDRESS_HIT_0;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire m_avalid;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_0;
  wire [1:0]m_select_enc_1;
  wire m_valid_i_reg;
  wire match;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_0;
  wire [0:0]st_aa_awtarget_enc_0;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo_9 wrouter_aw_fifo
       (.ADDRESS_HIT_0(ADDRESS_HIT_0),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .\FSM_onehot_state_reg[1]_1 (\FSM_onehot_state_reg[1]_0 ),
        .SR(SR),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_0(m_select_enc_0),
        .m_select_enc_1(m_select_enc_1),
        .m_valid_i_reg_0(m_avalid),
        .m_valid_i_reg_1(m_valid_i_reg),
        .match(match),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .ss_wr_awready_0(ss_wr_awready_0),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0] ),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0]_0 ),
        .\storage_data1_reg[0]_2 (\storage_data1_reg[0]_1 ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_router" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router_4
   (st_aa_awtarget_enc_2,
    m_avalid,
    ss_wr_awready_1,
    match,
    \storage_data1_reg[1] ,
    \s_axi_wvalid[1] ,
    \storage_data1_reg[0] ,
    \storage_data1_reg[1]_0 ,
    \s_axi_wvalid[1]_0 ,
    \storage_data1_reg[0]_0 ,
    aclk,
    areset_d1,
    SR,
    s_axi_wvalid,
    \m_axi_wvalid[0]_INST_0_i_1 ,
    \m_axi_wvalid[0]_INST_0_i_1_0 ,
    m_select_enc,
    \FSM_onehot_gen_axi.write_cs[2]_i_5 ,
    \m_axi_wvalid[1]_INST_0_i_1 ,
    \m_axi_wvalid[1]_INST_0_i_1_0 ,
    s_axi_awvalid,
    m_ready_d,
    m_valid_i_reg,
    s_axi_wlast,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    m_select_enc_0,
    s_axi_awaddr,
    ADDRESS_HIT_0);
  output [0:0]st_aa_awtarget_enc_2;
  output m_avalid;
  output ss_wr_awready_1;
  output match;
  output \storage_data1_reg[1] ;
  output \s_axi_wvalid[1] ;
  output \storage_data1_reg[0] ;
  output \storage_data1_reg[1]_0 ;
  output \s_axi_wvalid[1]_0 ;
  output \storage_data1_reg[0]_0 ;
  input aclk;
  input areset_d1;
  input [0:0]SR;
  input [0:0]s_axi_wvalid;
  input \m_axi_wvalid[0]_INST_0_i_1 ;
  input \m_axi_wvalid[0]_INST_0_i_1_0 ;
  input [1:0]m_select_enc;
  input \FSM_onehot_gen_axi.write_cs[2]_i_5 ;
  input \m_axi_wvalid[1]_INST_0_i_1 ;
  input \m_axi_wvalid[1]_INST_0_i_1_0 ;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input m_valid_i_reg;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1] ;
  input \FSM_onehot_state_reg[1]_0 ;
  input [1:0]m_select_enc_0;
  input [1:0]s_axi_awaddr;
  input ADDRESS_HIT_0;

  wire ADDRESS_HIT_0;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_5 ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire m_avalid;
  wire \m_axi_wvalid[0]_INST_0_i_1 ;
  wire \m_axi_wvalid[0]_INST_0_i_1_0 ;
  wire \m_axi_wvalid[1]_INST_0_i_1 ;
  wire \m_axi_wvalid[1]_INST_0_i_1_0 ;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_0;
  wire m_valid_i_reg;
  wire match;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire \s_axi_wvalid[1] ;
  wire \s_axi_wvalid[1]_0 ;
  wire ss_wr_awready_1;
  wire [0:0]st_aa_awtarget_enc_2;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo wrouter_aw_fifo
       (.ADDRESS_HIT_0(ADDRESS_HIT_0),
        .\FSM_onehot_gen_axi.write_cs[2]_i_5 (\FSM_onehot_gen_axi.write_cs[2]_i_5 ),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .\FSM_onehot_state_reg[1]_1 (\FSM_onehot_state_reg[1]_0 ),
        .SR(SR),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\m_axi_wvalid[0]_INST_0_i_1 (\m_axi_wvalid[0]_INST_0_i_1 ),
        .\m_axi_wvalid[0]_INST_0_i_1_0 (\m_axi_wvalid[0]_INST_0_i_1_0 ),
        .\m_axi_wvalid[1]_INST_0_i_1 (\m_axi_wvalid[1]_INST_0_i_1 ),
        .\m_axi_wvalid[1]_INST_0_i_1_0 (\m_axi_wvalid[1]_INST_0_i_1_0 ),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_0(m_select_enc_0),
        .m_valid_i_reg_0(m_avalid),
        .m_valid_i_reg_1(m_valid_i_reg),
        .match(match),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .\s_axi_wvalid[1] (\s_axi_wvalid[1] ),
        .\s_axi_wvalid[1]_0 (\s_axi_wvalid[1]_0 ),
        .ss_wr_awready_1(ss_wr_awready_1),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0] ),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0]_0 ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_router" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router__parameterized0
   (areset_d1,
    m_avalid,
    ss_wr_awready_2,
    match,
    \storage_data1_reg[1] ,
    \storage_data1_reg[0] ,
    m_axi_wvalid,
    \storage_data1_reg[0]_0 ,
    \s_axi_wvalid[2] ,
    \storage_data1_reg[1]_0 ,
    aclk,
    SR,
    s_axi_awaddr,
    m_avalid_0,
    m_axi_wvalid_0_sp_1,
    s_axi_wvalid,
    \m_axi_wvalid[0]_0 ,
    \FSM_onehot_gen_axi.write_cs[2]_i_3 ,
    m_select_enc,
    m_avalid_1,
    m_axi_wvalid_1_sp_1,
    \m_axi_wvalid[1]_0 ,
    m_select_enc_2,
    s_axi_awvalid,
    m_ready_d,
    m_valid_i_reg,
    s_axi_wlast,
    s_ready_i_reg,
    s_ready_i_reg_0,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[1]_2 ,
    \storage_data1_reg[1]_3 ,
    \storage_data1_reg[1]_4 );
  output areset_d1;
  output m_avalid;
  output ss_wr_awready_2;
  output match;
  output \storage_data1_reg[1] ;
  output \storage_data1_reg[0] ;
  output [1:0]m_axi_wvalid;
  output \storage_data1_reg[0]_0 ;
  output \s_axi_wvalid[2] ;
  output \storage_data1_reg[1]_0 ;
  input aclk;
  input [0:0]SR;
  input [1:0]s_axi_awaddr;
  input m_avalid_0;
  input m_axi_wvalid_0_sp_1;
  input [0:0]s_axi_wvalid;
  input \m_axi_wvalid[0]_0 ;
  input \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  input [1:0]m_select_enc;
  input m_avalid_1;
  input m_axi_wvalid_1_sp_1;
  input \m_axi_wvalid[1]_0 ;
  input [1:0]m_select_enc_2;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input m_valid_i_reg;
  input [0:0]s_axi_wlast;
  input s_ready_i_reg;
  input s_ready_i_reg_0;
  input \storage_data1_reg[1]_1 ;
  input \storage_data1_reg[1]_2 ;
  input \storage_data1_reg[1]_3 ;
  input \storage_data1_reg[1]_4 ;

  wire \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire [1:0]m_axi_wvalid;
  wire \m_axi_wvalid[0]_0 ;
  wire \m_axi_wvalid[1]_0 ;
  wire m_axi_wvalid_0_sn_1;
  wire m_axi_wvalid_1_sn_1;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_2;
  wire m_valid_i_reg;
  wire match;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire \s_axi_wvalid[2] ;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire ss_wr_awready_2;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire \storage_data1_reg[1]_3 ;
  wire \storage_data1_reg[1]_4 ;

  assign m_axi_wvalid_0_sn_1 = m_axi_wvalid_0_sp_1;
  assign m_axi_wvalid_1_sn_1 = m_axi_wvalid_1_sp_1;
  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized0 wrouter_aw_fifo
       (.\FSM_onehot_gen_axi.write_cs[2]_i_3 (\FSM_onehot_gen_axi.write_cs[2]_i_3 ),
        .SR(SR),
        .SS(areset_d1),
        .aclk(aclk),
        .m_avalid_0(m_avalid_0),
        .m_avalid_1(m_avalid_1),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_axi_wvalid[0]_0 (\m_axi_wvalid[0]_0 ),
        .\m_axi_wvalid[1]_0 (\m_axi_wvalid[1]_0 ),
        .m_axi_wvalid_0_sp_1(m_axi_wvalid_0_sn_1),
        .m_axi_wvalid_1_sp_1(m_axi_wvalid_1_sn_1),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_2(m_select_enc_2),
        .m_valid_i_reg_0(m_avalid),
        .m_valid_i_reg_1(m_valid_i_reg),
        .match(match),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .\s_axi_wvalid[2] (\s_axi_wvalid[2] ),
        .s_ready_i_reg_0(ss_wr_awready_2),
        .s_ready_i_reg_1(s_ready_i_reg),
        .s_ready_i_reg_2(s_ready_i_reg_0),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0] ),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0]_0 ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_0 ),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_1 ),
        .\storage_data1_reg[1]_3 (\storage_data1_reg[1]_2 ),
        .\storage_data1_reg[1]_4 (\storage_data1_reg[1]_3 ),
        .\storage_data1_reg[1]_5 (\storage_data1_reg[1]_4 ));
endmodule

module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo
   (st_aa_awtarget_enc_2,
    m_valid_i_reg_0,
    ss_wr_awready_1,
    match,
    \storage_data1_reg[1]_0 ,
    \s_axi_wvalid[1] ,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[1]_1 ,
    \s_axi_wvalid[1]_0 ,
    \storage_data1_reg[0]_1 ,
    aclk,
    areset_d1,
    SR,
    s_axi_wvalid,
    \m_axi_wvalid[0]_INST_0_i_1 ,
    \m_axi_wvalid[0]_INST_0_i_1_0 ,
    m_select_enc,
    \FSM_onehot_gen_axi.write_cs[2]_i_5 ,
    \m_axi_wvalid[1]_INST_0_i_1 ,
    \m_axi_wvalid[1]_INST_0_i_1_0 ,
    s_axi_awvalid,
    m_ready_d,
    m_valid_i_reg_1,
    s_axi_wlast,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    m_select_enc_0,
    s_axi_awaddr,
    ADDRESS_HIT_0);
  output [0:0]st_aa_awtarget_enc_2;
  output m_valid_i_reg_0;
  output ss_wr_awready_1;
  output match;
  output \storage_data1_reg[1]_0 ;
  output \s_axi_wvalid[1] ;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[1]_1 ;
  output \s_axi_wvalid[1]_0 ;
  output \storage_data1_reg[0]_1 ;
  input aclk;
  input areset_d1;
  input [0:0]SR;
  input [0:0]s_axi_wvalid;
  input \m_axi_wvalid[0]_INST_0_i_1 ;
  input \m_axi_wvalid[0]_INST_0_i_1_0 ;
  input [1:0]m_select_enc;
  input \FSM_onehot_gen_axi.write_cs[2]_i_5 ;
  input \m_axi_wvalid[1]_INST_0_i_1 ;
  input \m_axi_wvalid[1]_INST_0_i_1_0 ;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input m_valid_i_reg_1;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1]_0 ;
  input \FSM_onehot_state_reg[1]_1 ;
  input [1:0]m_select_enc_0;
  input [1:0]s_axi_awaddr;
  input ADDRESS_HIT_0;

  wire ADDRESS_HIT_0;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_5 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_8_n_0 ;
  wire \FSM_onehot_state[0]_i_1__4_n_0 ;
  wire \FSM_onehot_state[1]_i_1__2_n_0 ;
  wire \FSM_onehot_state[1]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_2__4_n_0 ;
  wire \FSM_onehot_state[3]_i_3__2_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_2__0_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_1 ;
  wire load_s1;
  wire m_aready__1;
  wire \m_axi_wvalid[0]_INST_0_i_1 ;
  wire \m_axi_wvalid[0]_INST_0_i_1_0 ;
  wire \m_axi_wvalid[1]_INST_0_i_1 ;
  wire \m_axi_wvalid[1]_INST_0_i_1_0 ;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_0;
  wire m_valid_i;
  wire m_valid_i_i_1__6_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire p_0_in8_in;
  wire p_9_in;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire \s_axi_wvalid[1] ;
  wire \s_axi_wvalid[1]_0 ;
  wire s_ready_i_i_1__0_n_0;
  wire ss_wr_awready_1;
  wire [0:0]st_aa_awtarget_enc_2;
  wire \storage_data1[0]_i_1__0_n_0 ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_6 
       (.I0(\FSM_onehot_gen_axi.write_cs[2]_i_8_n_0 ),
        .I1(m_select_enc[1]),
        .I2(m_select_enc[0]),
        .I3(\storage_data1_reg[0]_0 ),
        .I4(\storage_data1_reg[1]_0 ),
        .I5(\FSM_onehot_gen_axi.write_cs[2]_i_5 ),
        .O(\storage_data1_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_8 
       (.I0(s_axi_wvalid),
        .I1(m_valid_i_reg_0),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h7500)) 
    \FSM_onehot_state[0]_i_1__4 
       (.I0(m_aready__1),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(p_0_in8_in),
        .O(\FSM_onehot_state[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(fifoaddr[1]),
        .I4(m_aready__1),
        .I5(\FSM_onehot_state[1]_i_2__0_n_0 ),
        .O(\FSM_onehot_state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[1]_i_2__0 
       (.I0(p_9_in),
        .I1(s_axi_awvalid),
        .I2(m_ready_d),
        .O(\FSM_onehot_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF04F40FF4040)) 
    \FSM_onehot_state[3]_i_1__4 
       (.I0(push),
        .I1(\FSM_onehot_state[3]_i_3__2_n_0 ),
        .I2(m_aready__1),
        .I3(m_valid_i_reg_1),
        .I4(p_9_in),
        .I5(p_0_in8_in),
        .O(m_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \FSM_onehot_state[3]_i_2__4 
       (.I0(p_0_in8_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2__4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[3]_i_3__2 
       (.I0(fifoaddr[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[0]),
        .O(\FSM_onehot_state[3]_i_3__2_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__4_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__2_n_0 ),
        .Q(p_0_in8_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__4_n_0 ),
        .Q(p_9_in),
        .S(areset_d1));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_4__2 
       (.I0(m_select_enc_0[0]),
        .I1(m_select_enc_0[1]),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(m_valid_i_reg_0),
        .I5(s_axi_wvalid),
        .O(\storage_data1_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_rep[0].fifoaddr[0]_i_1__0 
       (.I0(push),
        .I1(\gen_rep[0].fifoaddr[1]_i_2__0_n_0 ),
        .I2(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_rep[0].fifoaddr[1]_i_1__0 
       (.I0(fifoaddr[0]),
        .I1(\gen_rep[0].fifoaddr[1]_i_2__0_n_0 ),
        .I2(push),
        .I3(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_rep[0].fifoaddr[1]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_aready__1),
        .O(\gen_rep[0].fifoaddr[1]_i_2__0_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl \gen_srls[0].gen_rep[0].srl_nx1 
       (.aclk(aclk),
        .fifoaddr(fifoaddr),
        .\gen_rep[0].fifoaddr_reg[1] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .st_aa_awtarget_enc_2(st_aa_awtarget_enc_2));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_8 \gen_srls[0].gen_rep[1].srl_nx1 
       (.ADDRESS_HIT_0(ADDRESS_HIT_0),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_1 ),
        .\FSM_onehot_state_reg[1] (m_valid_i_reg_0),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1]_0 ),
        .\FSM_onehot_state_reg[1]_1 (\storage_data1_reg[0]_0 ),
        .\FSM_onehot_state_reg[1]_2 (\FSM_onehot_state_reg[1]_1 ),
        .Q({p_0_in8_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_ready_d(m_ready_d),
        .match(match),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .ss_wr_awready_1(ss_wr_awready_1),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \m_axi_wvalid[0]_INST_0_i_2 
       (.I0(s_axi_wvalid),
        .I1(m_valid_i_reg_0),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(\storage_data1_reg[0]_0 ),
        .I4(\m_axi_wvalid[0]_INST_0_i_1 ),
        .I5(\m_axi_wvalid[0]_INST_0_i_1_0 ),
        .O(\s_axi_wvalid[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \m_axi_wvalid[1]_INST_0_i_2 
       (.I0(s_axi_wvalid),
        .I1(m_valid_i_reg_0),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(\storage_data1_reg[0]_0 ),
        .I4(\m_axi_wvalid[1]_INST_0_i_1 ),
        .I5(\m_axi_wvalid[1]_INST_0_i_1_0 ),
        .O(\s_axi_wvalid[1]_0 ));
  LUT6 #(
    .INIT(64'h0C0E0C0EFF0E0C0E)) 
    m_valid_i_i_1__6
       (.I0(p_0_in8_in),
        .I1(p_9_in),
        .I2(m_valid_i_reg_1),
        .I3(m_aready__1),
        .I4(\FSM_onehot_state[3]_i_3__2_n_0 ),
        .I5(push),
        .O(m_valid_i_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__6_n_0),
        .Q(m_valid_i_reg_0),
        .R(areset_d1));
  LUT6 #(
    .INIT(64'hFFFFDFFFDDDDDDDD)) 
    s_ready_i_i_1__0
       (.I0(\gen_rep[0].fifoaddr[1]_i_2__0_n_0 ),
        .I1(areset_d1),
        .I2(push),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[0]),
        .I5(ss_wr_awready_1),
        .O(s_ready_i_i_1__0_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(ss_wr_awready_1),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1__0 
       (.I0(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(st_aa_awtarget_enc_2),
        .I3(load_s1),
        .I4(\storage_data1_reg[0]_0 ),
        .O(\storage_data1[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0FCECA0A0)) 
    \storage_data1[1]_i_2__2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_9_in),
        .I2(m_aready__1),
        .I3(p_0_in8_in),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[0]_i_1__0_n_0 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_1 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo_9
   (st_aa_awtarget_enc_0,
    m_valid_i_reg_0,
    ss_wr_awready_0,
    match,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[0]_1 ,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[0]_2 ,
    aclk,
    areset_d1,
    SR,
    m_select_enc,
    s_axi_wvalid,
    s_axi_awvalid,
    m_ready_d,
    m_valid_i_reg_1,
    s_axi_wlast,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    m_select_enc_0,
    m_select_enc_1,
    s_axi_awaddr,
    ADDRESS_HIT_0);
  output [0:0]st_aa_awtarget_enc_0;
  output m_valid_i_reg_0;
  output ss_wr_awready_0;
  output match;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[0]_1 ;
  output \storage_data1_reg[1]_1 ;
  output \storage_data1_reg[0]_2 ;
  input aclk;
  input areset_d1;
  input [0:0]SR;
  input [1:0]m_select_enc;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input m_valid_i_reg_1;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1]_0 ;
  input \FSM_onehot_state_reg[1]_1 ;
  input [1:0]m_select_enc_0;
  input [1:0]m_select_enc_1;
  input [1:0]s_axi_awaddr;
  input ADDRESS_HIT_0;

  wire ADDRESS_HIT_0;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_3__3_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_2_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_1 ;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_0;
  wire [1:0]m_select_enc_1;
  wire m_valid_i;
  wire m_valid_i_i_1__2_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire p_0_in8_in;
  wire p_9_in;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_i_1_n_0;
  wire ss_wr_awready_0;
  wire [0:0]st_aa_awtarget_enc_0;
  wire \storage_data1[0]_i_1_n_0 ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[0]_2 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;

  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_9 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(\storage_data1_reg[0]_1 ),
        .I2(m_select_enc_0[0]),
        .I3(m_select_enc_0[1]),
        .I4(s_axi_wvalid),
        .I5(m_valid_i_reg_0),
        .O(\storage_data1_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h7500)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(m_aready__1),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(p_0_in8_in),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(fifoaddr[1]),
        .I4(m_aready__1),
        .I5(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(p_9_in),
        .I1(s_axi_awvalid),
        .I2(m_ready_d),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF04F40FF4040)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(push),
        .I1(\FSM_onehot_state[3]_i_3__3_n_0 ),
        .I2(m_aready__1),
        .I3(m_valid_i_reg_1),
        .I4(p_9_in),
        .I5(p_0_in8_in),
        .O(m_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(p_0_in8_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[3]_i_3__3 
       (.I0(fifoaddr[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[0]),
        .O(\FSM_onehot_state[3]_i_3__3_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(p_0_in8_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .Q(p_9_in),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(push),
        .I1(\gen_rep[0].fifoaddr[1]_i_2_n_0 ),
        .I2(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(fifoaddr[0]),
        .I1(\gen_rep[0].fifoaddr[1]_i_2_n_0 ),
        .I2(push),
        .I3(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_rep[0].fifoaddr[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_aready__1),
        .O(\gen_rep[0].fifoaddr[1]_i_2_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_10 \gen_srls[0].gen_rep[0].srl_nx1 
       (.aclk(aclk),
        .fifoaddr(fifoaddr),
        .\gen_rep[0].fifoaddr_reg[1] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .st_aa_awtarget_enc_0(st_aa_awtarget_enc_0));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_11 \gen_srls[0].gen_rep[1].srl_nx1 
       (.ADDRESS_HIT_0(ADDRESS_HIT_0),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_1 ),
        .\FSM_onehot_state_reg[1] (m_valid_i_reg_0),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1]_0 ),
        .\FSM_onehot_state_reg[1]_1 (\storage_data1_reg[0]_1 ),
        .\FSM_onehot_state_reg[1]_2 (\FSM_onehot_state_reg[1]_1 ),
        .Q({p_0_in8_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_ready_d(m_ready_d),
        .match(match),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .ss_wr_awready_0(ss_wr_awready_0),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \m_axi_wvalid[0]_INST_0_i_4 
       (.I0(m_select_enc[0]),
        .I1(m_select_enc[1]),
        .I2(\storage_data1_reg[0]_1 ),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(s_axi_wvalid),
        .I5(m_valid_i_reg_0),
        .O(\storage_data1_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \m_axi_wvalid[1]_INST_0_i_3 
       (.I0(m_select_enc_1[0]),
        .I1(m_select_enc_1[1]),
        .I2(\storage_data1_reg[0]_1 ),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(s_axi_wvalid),
        .I5(m_valid_i_reg_0),
        .O(\storage_data1_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0C0E0C0EFF0E0C0E)) 
    m_valid_i_i_1__2
       (.I0(p_0_in8_in),
        .I1(p_9_in),
        .I2(m_valid_i_reg_1),
        .I3(m_aready__1),
        .I4(\FSM_onehot_state[3]_i_3__3_n_0 ),
        .I5(push),
        .O(m_valid_i_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__2_n_0),
        .Q(m_valid_i_reg_0),
        .R(areset_d1));
  LUT6 #(
    .INIT(64'hFFFFDFFFDDDDDDDD)) 
    s_ready_i_i_1
       (.I0(\gen_rep[0].fifoaddr[1]_i_2_n_0 ),
        .I1(areset_d1),
        .I2(push),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[0]),
        .I5(ss_wr_awready_0),
        .O(s_ready_i_i_1_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(ss_wr_awready_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1 
       (.I0(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(st_aa_awtarget_enc_0),
        .I3(load_s1),
        .I4(\storage_data1_reg[0]_1 ),
        .O(\storage_data1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0FCECA0A0)) 
    \storage_data1[1]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_9_in),
        .I2(m_aready__1),
        .I3(p_0_in8_in),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[0]_i_1_n_0 ),
        .Q(\storage_data1_reg[0]_1 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_1 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized0
   (SS,
    m_valid_i_reg_0,
    s_ready_i_reg_0,
    match,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[0]_0 ,
    m_axi_wvalid,
    \storage_data1_reg[0]_1 ,
    \s_axi_wvalid[2] ,
    \storage_data1_reg[1]_1 ,
    aclk,
    SR,
    s_axi_awaddr,
    m_avalid_0,
    m_axi_wvalid_0_sp_1,
    s_axi_wvalid,
    \m_axi_wvalid[0]_0 ,
    \FSM_onehot_gen_axi.write_cs[2]_i_3 ,
    m_select_enc,
    m_avalid_1,
    m_axi_wvalid_1_sp_1,
    \m_axi_wvalid[1]_0 ,
    m_select_enc_2,
    s_axi_awvalid,
    m_ready_d,
    m_valid_i_reg_1,
    s_axi_wlast,
    s_ready_i_reg_1,
    s_ready_i_reg_2,
    \storage_data1_reg[1]_2 ,
    \storage_data1_reg[1]_3 ,
    \storage_data1_reg[1]_4 ,
    \storage_data1_reg[1]_5 );
  output [0:0]SS;
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output match;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[0]_0 ;
  output [1:0]m_axi_wvalid;
  output \storage_data1_reg[0]_1 ;
  output \s_axi_wvalid[2] ;
  output \storage_data1_reg[1]_1 ;
  input aclk;
  input [0:0]SR;
  input [1:0]s_axi_awaddr;
  input m_avalid_0;
  input m_axi_wvalid_0_sp_1;
  input [0:0]s_axi_wvalid;
  input \m_axi_wvalid[0]_0 ;
  input \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  input [1:0]m_select_enc;
  input m_avalid_1;
  input m_axi_wvalid_1_sp_1;
  input \m_axi_wvalid[1]_0 ;
  input [1:0]m_select_enc_2;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input m_valid_i_reg_1;
  input [0:0]s_axi_wlast;
  input s_ready_i_reg_1;
  input s_ready_i_reg_2;
  input \storage_data1_reg[1]_2 ;
  input \storage_data1_reg[1]_3 ;
  input \storage_data1_reg[1]_4 ;
  input \storage_data1_reg[1]_5 ;

  wire \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_7_n_0 ;
  wire \FSM_onehot_state[0]_i_1__3_n_0 ;
  wire \FSM_onehot_state[1]_i_1__1_n_0 ;
  wire \FSM_onehot_state[3]_i_2__3_n_0 ;
  wire \FSM_onehot_state[3]_i_3__1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]SR;
  wire [0:0]SS;
  wire aclk;
  wire [4:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__2_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr[3]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[4]_i_2_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_1 ;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid_0;
  wire m_avalid_1;
  wire [1:0]m_axi_wvalid;
  wire \m_axi_wvalid[0]_0 ;
  wire \m_axi_wvalid[1]_0 ;
  wire m_axi_wvalid_0_sn_1;
  wire m_axi_wvalid_1_sn_1;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_2;
  wire m_valid_i;
  wire m_valid_i_0;
  wire m_valid_i_i_1__5_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire p_0_in8_in;
  wire p_0_out;
  wire p_9_in;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire \s_axi_wvalid[2] ;
  wire s_ready_i_i_1__7_n_0;
  wire s_ready_i_i_2__3_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire s_ready_i_reg_2;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire \storage_data1_reg[1]_3 ;
  wire \storage_data1_reg[1]_4 ;
  wire \storage_data1_reg[1]_5 ;

  assign m_axi_wvalid_0_sn_1 = m_axi_wvalid_0_sp_1;
  assign m_axi_wvalid_1_sn_1 = m_axi_wvalid_1_sp_1;
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_5 
       (.I0(\FSM_onehot_gen_axi.write_cs[2]_i_3 ),
        .I1(\FSM_onehot_gen_axi.write_cs[2]_i_7_n_0 ),
        .I2(m_select_enc[0]),
        .I3(m_select_enc[1]),
        .I4(\storage_data1_reg[0]_0 ),
        .I5(\storage_data1_reg[1]_0 ),
        .O(\storage_data1_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_7 
       (.I0(s_axi_wvalid),
        .I1(m_valid_i_reg_0),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7500)) 
    \FSM_onehot_state[0]_i_1__3 
       (.I0(m_aready__1),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(p_0_in8_in),
        .O(\FSM_onehot_state[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(push),
        .I1(\FSM_onehot_state[3]_i_3__1_n_0 ),
        .I2(m_aready__1),
        .I3(m_ready_d),
        .I4(s_axi_awvalid),
        .I5(p_9_in),
        .O(\FSM_onehot_state[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF04F40FF4040)) 
    \FSM_onehot_state[3]_i_1__3 
       (.I0(push),
        .I1(\FSM_onehot_state[3]_i_3__1_n_0 ),
        .I2(m_aready__1),
        .I3(m_valid_i_reg_1),
        .I4(p_9_in),
        .I5(p_0_in8_in),
        .O(m_valid_i_0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \FSM_onehot_state[3]_i_2__3 
       (.I0(p_0_in8_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state[3]_i_3__1 
       (.I0(fifoaddr[2]),
        .I1(fifoaddr[3]),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[4]),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[3]_i_3__1_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i_0),
        .D(\FSM_onehot_state[0]_i_1__3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i_0),
        .D(\FSM_onehot_state[1]_i_1__1_n_0 ),
        .Q(p_0_in8_in),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i_0),
        .D(\FSM_onehot_state[3]_i_2__3_n_0 ),
        .Q(p_9_in),
        .S(SS));
  FDRE areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(SS),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__0 
       (.I0(m_select_enc_2[1]),
        .I1(m_select_enc_2[0]),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(m_valid_i_reg_0),
        .I5(s_axi_wvalid),
        .O(\storage_data1_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1__1 
       (.I0(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_rep[0].fifoaddr[1]_i_1__2 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(push),
        .O(\gen_rep[0].fifoaddr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_rep[0].fifoaddr[2]_i_1__1 
       (.I0(fifoaddr[2]),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[1]),
        .I3(push),
        .O(\gen_rep[0].fifoaddr[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_rep[0].fifoaddr[3]_i_1 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[2]),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[3]),
        .O(\gen_rep[0].fifoaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB44FF4000400040)) 
    \gen_rep[0].fifoaddr[4]_i_1__0 
       (.I0(m_ready_d),
        .I1(s_axi_awvalid),
        .I2(p_0_in8_in),
        .I3(m_aready__1),
        .I4(s_ready_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(p_0_out));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCC9)) 
    \gen_rep[0].fifoaddr[4]_i_2 
       (.I0(fifoaddr[3]),
        .I1(fifoaddr[4]),
        .I2(fifoaddr[1]),
        .I3(fifoaddr[2]),
        .I4(fifoaddr[0]),
        .I5(push),
        .O(\gen_rep[0].fifoaddr[4]_i_2_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[0]_i_1__1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[1]_i_1__2_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[2]_i_1__1_n_0 ),
        .Q(fifoaddr[2]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[3] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[3]_i_1_n_0 ),
        .Q(fifoaddr[3]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[4] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[4]_i_2_n_0 ),
        .Q(fifoaddr[4]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1 \gen_srls[0].gen_rep[0].srl_nx1 
       (.Q(fifoaddr),
        .aclk(aclk),
        .load_s1(load_s1),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[95] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .\storage_data1_reg[0] (\FSM_onehot_state_reg_n_0_[0] ),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0]_0 ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_7 \gen_srls[0].gen_rep[1].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_1 ),
        .Q(fifoaddr),
        .aclk(aclk),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_ready_d(m_ready_d),
        .match(match),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg({p_0_in8_in,\FSM_onehot_state_reg_n_0_[0] }),
        .s_ready_i_reg_0(s_ready_i_reg_0),
        .s_ready_i_reg_1(m_valid_i_reg_0),
        .s_ready_i_reg_2(s_ready_i_reg_1),
        .s_ready_i_reg_3(\storage_data1_reg[0]_0 ),
        .s_ready_i_reg_4(s_ready_i_reg_2),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_0 ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1]_2 ),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_3 ),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_4 ),
        .\storage_data1_reg[1]_3 (\storage_data1_reg[1]_5 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_wvalid[0]_INST_0 
       (.I0(m_valid_i),
        .I1(m_avalid_0),
        .O(m_axi_wvalid[0]));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    \m_axi_wvalid[0]_INST_0_i_1 
       (.I0(m_axi_wvalid_0_sn_1),
        .I1(s_axi_wvalid),
        .I2(m_valid_i_reg_0),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .I5(\m_axi_wvalid[0]_0 ),
        .O(m_valid_i));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_wvalid[1]_INST_0 
       (.I0(\s_axi_wvalid[2] ),
        .I1(m_avalid_1),
        .O(m_axi_wvalid[1]));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \m_axi_wvalid[1]_INST_0_i_1 
       (.I0(m_axi_wvalid_1_sn_1),
        .I1(s_axi_wvalid),
        .I2(m_valid_i_reg_0),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .I5(\m_axi_wvalid[1]_0 ),
        .O(\s_axi_wvalid[2] ));
  LUT6 #(
    .INIT(64'h0C0E0C0EFF0E0C0E)) 
    m_valid_i_i_1__5
       (.I0(p_0_in8_in),
        .I1(p_9_in),
        .I2(m_valid_i_reg_1),
        .I3(m_aready__1),
        .I4(\FSM_onehot_state[3]_i_3__1_n_0 ),
        .I5(push),
        .O(m_valid_i_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i_0),
        .D(m_valid_i_i_1__5_n_0),
        .Q(m_valid_i_reg_0),
        .R(SS));
  LUT6 #(
    .INIT(64'hF8FFFFFFF8F8F8F8)) 
    s_ready_i_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_aready__1),
        .I2(SS),
        .I3(push),
        .I4(s_ready_i_i_2__3_n_0),
        .I5(s_ready_i_reg_0),
        .O(s_ready_i_i_1__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    s_ready_i_i_2__3
       (.I0(fifoaddr[2]),
        .I1(fifoaddr[3]),
        .I2(fifoaddr[4]),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[0]),
        .O(s_ready_i_i_2__3_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__7_n_0),
        .Q(s_ready_i_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hA0A0A0A0FCECA0A0)) 
    \storage_data1[1]_i_2__1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_9_in),
        .I2(m_aready__1),
        .I3(p_0_in8_in),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_1 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1
   (m_avalid,
    m_axi_wdata,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[0]_0 ,
    m_axi_wstrb,
    m_axi_wlast,
    \storage_data1_reg[0]_1 ,
    \storage_data1_reg[1]_1 ,
    m_valid_i_reg_0,
    \storage_data1_reg[0]_2 ,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    s_axi_wdata,
    s_axi_wstrb,
    Q,
    \FSM_onehot_state_reg[1]_0 ,
    aa_sa_awvalid,
    m_ready_d,
    m_axi_wready,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    \gen_rep[0].fifoaddr_reg[0]_1 ,
    \gen_rep[0].fifoaddr_reg[0]_2 ,
    s_axi_wlast,
    SR);
  output m_avalid;
  output [31:0]m_axi_wdata;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[0]_0 ;
  output [3:0]m_axi_wstrb;
  output [0:0]m_axi_wlast;
  output \storage_data1_reg[0]_1 ;
  output \storage_data1_reg[1]_1 ;
  output m_valid_i_reg_0;
  output \storage_data1_reg[0]_2 ;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input [95:0]s_axi_wdata;
  input [11:0]s_axi_wstrb;
  input [0:0]Q;
  input \FSM_onehot_state_reg[1]_0 ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [0:0]m_axi_wready;
  input \gen_rep[0].fifoaddr_reg[0]_0 ;
  input \gen_rep[0].fifoaddr_reg[0]_1 ;
  input \gen_rep[0].fifoaddr_reg[0]_2 ;
  input [2:0]s_axi_wlast;
  input [0:0]SR;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2__1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [4:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1__2_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[3]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[4]_i_2__0_n_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_1 ;
  wire \gen_rep[0].fifoaddr_reg[0]_2 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_3 ;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1__1_n_0;
  wire m_valid_i_reg_0;
  wire p_0_in6_in;
  wire p_0_out;
  wire p_7_in;
  wire push;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [11:0]s_axi_wstrb;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[0]_2 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;

  LUT5 #(
    .INIT(32'h5D550000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(m_aready__1),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d),
        .I3(Q),
        .I4(p_0_in6_in),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(push),
        .I1(\FSM_onehot_state[1]_i_2__1_n_0 ),
        .I2(m_aready__1),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(p_7_in),
        .I5(Q),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state[1]_i_2__1 
       (.I0(fifoaddr[2]),
        .I1(fifoaddr[3]),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[4]),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFAAAAAEAAAAAA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[1]_i_1_n_0 ),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d),
        .I3(Q),
        .I4(p_0_in6_in),
        .I5(m_aready__1),
        .O(m_valid_i));
  LUT5 #(
    .INIT(32'hA2AA0000)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(p_0_in6_in),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d),
        .I3(Q),
        .I4(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(p_0_in6_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2_n_0 ),
        .Q(p_7_in),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1__2 
       (.I0(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_rep[0].fifoaddr[1]_i_1__1 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(push),
        .O(\gen_rep[0].fifoaddr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_rep[0].fifoaddr[2]_i_1__0 
       (.I0(fifoaddr[2]),
        .I1(fifoaddr[1]),
        .I2(push),
        .I3(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_rep[0].fifoaddr[3]_i_1__0 
       (.I0(fifoaddr[0]),
        .I1(push),
        .I2(fifoaddr[2]),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[3]),
        .O(\gen_rep[0].fifoaddr[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAA2AA0C000800)) 
    \gen_rep[0].fifoaddr[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q),
        .I2(m_ready_d),
        .I3(aa_sa_awvalid),
        .I4(p_0_in6_in),
        .I5(m_aready__1),
        .O(p_0_out));
  LUT6 #(
    .INIT(64'h7FFFFFFE80000001)) 
    \gen_rep[0].fifoaddr[4]_i_2__0 
       (.I0(fifoaddr[0]),
        .I1(push),
        .I2(fifoaddr[2]),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[3]),
        .I5(fifoaddr[4]),
        .O(\gen_rep[0].fifoaddr[4]_i_2__0_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[0]_i_1__2_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[1]_i_1__1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[2]_i_1__0_n_0 ),
        .Q(fifoaddr[2]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[3] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[3]_i_1__0_n_0 ),
        .Q(fifoaddr[3]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[4] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[4]_i_2__0_n_0 ),
        .Q(fifoaddr[4]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_19 \gen_srls[0].gen_rep[0].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(fifoaddr),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[0]),
        .aclk(aclk),
        .load_s1(load_s1),
        .push(push),
        .\storage_data1_reg[0] (\FSM_onehot_state_reg_n_0_[0] ),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0]_0 ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_20 \gen_srls[0].gen_rep[1].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .Q(fifoaddr),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[1]),
        .aclk(aclk),
        .\gen_rep[0].fifoaddr_reg[0] (\gen_rep[0].fifoaddr_reg[0]_0 ),
        .\gen_rep[0].fifoaddr_reg[0]_0 (\gen_rep[0].fifoaddr_reg[0]_1 ),
        .\gen_rep[0].fifoaddr_reg[0]_1 (\gen_rep[0].fifoaddr_reg[0]_2 ),
        .\gen_rep[0].fifoaddr_reg[3] ({p_0_in6_in,\FSM_onehot_state_reg_n_0_[0] }),
        .\gen_rep[0].fifoaddr_reg[3]_0 (Q),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_avalid(m_avalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wlast_0_sp_1(\storage_data1_reg[0]_0 ),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[0]_INST_0 
       (.I0(s_axi_wdata[0]),
        .I1(s_axi_wdata[32]),
        .I2(s_axi_wdata[64]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[10]_INST_0 
       (.I0(s_axi_wdata[10]),
        .I1(s_axi_wdata[42]),
        .I2(s_axi_wdata[74]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[10]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[11]_INST_0 
       (.I0(s_axi_wdata[11]),
        .I1(s_axi_wdata[43]),
        .I2(s_axi_wdata[75]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[11]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[12]_INST_0 
       (.I0(s_axi_wdata[12]),
        .I1(s_axi_wdata[44]),
        .I2(s_axi_wdata[76]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[13]_INST_0 
       (.I0(s_axi_wdata[13]),
        .I1(s_axi_wdata[45]),
        .I2(s_axi_wdata[77]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[14]_INST_0 
       (.I0(s_axi_wdata[14]),
        .I1(s_axi_wdata[46]),
        .I2(s_axi_wdata[78]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[14]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[15]_INST_0 
       (.I0(s_axi_wdata[15]),
        .I1(s_axi_wdata[47]),
        .I2(s_axi_wdata[79]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[15]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[16]_INST_0 
       (.I0(s_axi_wdata[16]),
        .I1(s_axi_wdata[48]),
        .I2(s_axi_wdata[80]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[16]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[17]_INST_0 
       (.I0(s_axi_wdata[17]),
        .I1(s_axi_wdata[49]),
        .I2(s_axi_wdata[81]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[17]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[18]_INST_0 
       (.I0(s_axi_wdata[18]),
        .I1(s_axi_wdata[50]),
        .I2(s_axi_wdata[82]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[18]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[19]_INST_0 
       (.I0(s_axi_wdata[19]),
        .I1(s_axi_wdata[51]),
        .I2(s_axi_wdata[83]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[19]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[1]_INST_0 
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wdata[33]),
        .I2(s_axi_wdata[65]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[20]_INST_0 
       (.I0(s_axi_wdata[20]),
        .I1(s_axi_wdata[52]),
        .I2(s_axi_wdata[84]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[20]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[21]_INST_0 
       (.I0(s_axi_wdata[21]),
        .I1(s_axi_wdata[53]),
        .I2(s_axi_wdata[85]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[21]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[22]_INST_0 
       (.I0(s_axi_wdata[22]),
        .I1(s_axi_wdata[54]),
        .I2(s_axi_wdata[86]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[22]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[23]_INST_0 
       (.I0(s_axi_wdata[23]),
        .I1(s_axi_wdata[55]),
        .I2(s_axi_wdata[87]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[23]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[24]_INST_0 
       (.I0(s_axi_wdata[24]),
        .I1(s_axi_wdata[56]),
        .I2(s_axi_wdata[88]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[24]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[25]_INST_0 
       (.I0(s_axi_wdata[25]),
        .I1(s_axi_wdata[57]),
        .I2(s_axi_wdata[89]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[25]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[26]_INST_0 
       (.I0(s_axi_wdata[26]),
        .I1(s_axi_wdata[58]),
        .I2(s_axi_wdata[90]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[26]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[27]_INST_0 
       (.I0(s_axi_wdata[27]),
        .I1(s_axi_wdata[59]),
        .I2(s_axi_wdata[91]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[27]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[28]_INST_0 
       (.I0(s_axi_wdata[28]),
        .I1(s_axi_wdata[60]),
        .I2(s_axi_wdata[92]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[28]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[29]_INST_0 
       (.I0(s_axi_wdata[29]),
        .I1(s_axi_wdata[61]),
        .I2(s_axi_wdata[93]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[29]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[2]_INST_0 
       (.I0(s_axi_wdata[2]),
        .I1(s_axi_wdata[34]),
        .I2(s_axi_wdata[66]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[30]_INST_0 
       (.I0(s_axi_wdata[30]),
        .I1(s_axi_wdata[62]),
        .I2(s_axi_wdata[94]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[30]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[31]_INST_0 
       (.I0(s_axi_wdata[31]),
        .I1(s_axi_wdata[63]),
        .I2(s_axi_wdata[95]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[31]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[3]_INST_0 
       (.I0(s_axi_wdata[3]),
        .I1(s_axi_wdata[35]),
        .I2(s_axi_wdata[67]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[4]_INST_0 
       (.I0(s_axi_wdata[4]),
        .I1(s_axi_wdata[36]),
        .I2(s_axi_wdata[68]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[5]_INST_0 
       (.I0(s_axi_wdata[5]),
        .I1(s_axi_wdata[37]),
        .I2(s_axi_wdata[69]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[6]_INST_0 
       (.I0(s_axi_wdata[6]),
        .I1(s_axi_wdata[38]),
        .I2(s_axi_wdata[70]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[7]_INST_0 
       (.I0(s_axi_wdata[7]),
        .I1(s_axi_wdata[39]),
        .I2(s_axi_wdata[71]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[8]_INST_0 
       (.I0(s_axi_wdata[8]),
        .I1(s_axi_wdata[40]),
        .I2(s_axi_wdata[72]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[8]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[9]_INST_0 
       (.I0(s_axi_wdata[9]),
        .I1(s_axi_wdata[41]),
        .I2(s_axi_wdata[73]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[9]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(s_axi_wstrb[0]),
        .I1(s_axi_wstrb[4]),
        .I2(s_axi_wstrb[8]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wstrb[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(s_axi_wstrb[1]),
        .I1(s_axi_wstrb[5]),
        .I2(s_axi_wstrb[9]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wstrb[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(s_axi_wstrb[2]),
        .I1(s_axi_wstrb[6]),
        .I2(s_axi_wstrb[10]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wstrb[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(s_axi_wstrb[3]),
        .I1(s_axi_wstrb[7]),
        .I2(s_axi_wstrb[11]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_wvalid[0]_INST_0_i_3 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(\storage_data1_reg[0]_0 ),
        .O(\storage_data1_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    m_valid_i_i_1__1
       (.I0(m_aready__1),
        .I1(p_0_in6_in),
        .I2(Q),
        .I3(m_ready_d),
        .I4(aa_sa_awvalid),
        .I5(\FSM_onehot_state[1]_i_1_n_0 ),
        .O(m_valid_i_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__1_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_axi_wready[0]_INST_0_i_4 
       (.I0(\storage_data1_reg[0]_0 ),
        .I1(\storage_data1_reg[1]_0 ),
        .O(\storage_data1_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[1]_INST_0_i_4 
       (.I0(\storage_data1_reg[0]_0 ),
        .I1(\storage_data1_reg[1]_0 ),
        .O(\storage_data1_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[2]_INST_0_i_5 
       (.I0(m_avalid),
        .I1(m_axi_wready),
        .O(m_valid_i_reg_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0FCECA0A0)) 
    \storage_data1[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_7_in),
        .I2(m_aready__1),
        .I3(p_0_in6_in),
        .I4(Q),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized2
   (m_valid_i_reg_0,
    s_axi_wready,
    m_axi_wdata,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[0]_0 ,
    m_axi_wstrb,
    Q,
    s_axi_wlast_2_sp_1,
    m_valid_i_reg_1,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[0]_1 ,
    m_valid_i_reg_2,
    m_valid_i_reg_3,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    m_avalid_0,
    s_axi_wready_0_sp_1,
    m_axi_wready,
    \s_axi_wready[0]_0 ,
    \s_axi_wready[0]_1 ,
    s_axi_wdata,
    s_axi_wstrb,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    aa_sa_awvalid,
    m_ready_d,
    \FSM_onehot_state_reg[0]_0 ,
    \storage_data1_reg[1]_2 ,
    s_axi_wlast,
    m_avalid_1,
    s_axi_wready_2_sp_1,
    \s_axi_wready[2]_0 ,
    \s_axi_wready[2]_1 ,
    m_avalid_2,
    s_axi_wready_1_sp_1,
    \s_axi_wready[1]_0 ,
    \s_axi_wready[1]_1 ,
    \gen_rep[0].fifoaddr_reg[2]_0 ,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    SR,
    \storage_data1_reg[1]_3 ,
    \storage_data1_reg[1]_4 );
  output m_valid_i_reg_0;
  output [2:0]s_axi_wready;
  output [31:0]m_axi_wdata;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[0]_0 ;
  output [3:0]m_axi_wstrb;
  output [2:0]Q;
  output s_axi_wlast_2_sp_1;
  output m_valid_i_reg_1;
  output \storage_data1_reg[1]_1 ;
  output \storage_data1_reg[0]_1 ;
  output m_valid_i_reg_2;
  output m_valid_i_reg_3;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input m_avalid_0;
  input s_axi_wready_0_sp_1;
  input [0:0]m_axi_wready;
  input \s_axi_wready[0]_0 ;
  input \s_axi_wready[0]_1 ;
  input [95:0]s_axi_wdata;
  input [11:0]s_axi_wstrb;
  input \FSM_onehot_state_reg[1]_0 ;
  input \FSM_onehot_state_reg[1]_1 ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input \storage_data1_reg[1]_2 ;
  input [2:0]s_axi_wlast;
  input m_avalid_1;
  input s_axi_wready_2_sp_1;
  input \s_axi_wready[2]_0 ;
  input \s_axi_wready[2]_1 ;
  input m_avalid_2;
  input s_axi_wready_1_sp_1;
  input \s_axi_wready[1]_0 ;
  input \s_axi_wready[1]_1 ;
  input \gen_rep[0].fifoaddr_reg[2]_0 ;
  input \gen_rep[0].fifoaddr_reg[0]_0 ;
  input [0:0]SR;
  input \storage_data1_reg[1]_3 ;
  input \storage_data1_reg[1]_4 ;

  wire \FSM_onehot_state[0]_i_1__2_n_0 ;
  wire \FSM_onehot_state[1]_i_1__4_n_0 ;
  wire \FSM_onehot_state[3]_i_2__2_n_0 ;
  wire \FSM_onehot_state[3]_i_4__3_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [2:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_2_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_4_n_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire \gen_rep[0].fifoaddr_reg[2]_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_5 ;
  wire m_aready__1;
  wire m_avalid_0;
  wire m_avalid_1;
  wire m_avalid_2;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1__4_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire m_valid_i_reg_3;
  wire push;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire s_axi_wlast_2_sn_1;
  wire [2:0]s_axi_wready;
  wire \s_axi_wready[0]_0 ;
  wire \s_axi_wready[0]_1 ;
  wire \s_axi_wready[0]_INST_0_i_1_n_0 ;
  wire \s_axi_wready[0]_INST_0_i_2_n_0 ;
  wire \s_axi_wready[1]_0 ;
  wire \s_axi_wready[1]_1 ;
  wire \s_axi_wready[1]_INST_0_i_1_n_0 ;
  wire \s_axi_wready[2]_0 ;
  wire \s_axi_wready[2]_1 ;
  wire \s_axi_wready[2]_INST_0_i_1_n_0 ;
  wire s_axi_wready_0_sn_1;
  wire s_axi_wready_1_sn_1;
  wire s_axi_wready_2_sn_1;
  wire [11:0]s_axi_wstrb;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire \storage_data1_reg[1]_3 ;
  wire \storage_data1_reg[1]_4 ;

  assign s_axi_wlast_2_sp_1 = s_axi_wlast_2_sn_1;
  assign s_axi_wready_0_sn_1 = s_axi_wready_0_sp_1;
  assign s_axi_wready_1_sn_1 = s_axi_wready_1_sp_1;
  assign s_axi_wready_2_sn_1 = s_axi_wready_2_sp_1;
  LUT5 #(
    .INIT(32'h5D550000)) 
    \FSM_onehot_state[0]_i_1__2 
       (.I0(m_aready__1),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(Q[1]),
        .O(\FSM_onehot_state[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8A00)) 
    \FSM_onehot_state[1]_i_1__4 
       (.I0(m_aready__1),
        .I1(\FSM_onehot_state_reg[1]_0 ),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[3]_i_4__3_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_1 ),
        .O(\FSM_onehot_state[1]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA4AE8484)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(m_aready__1),
        .I1(Q[1]),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[3]_i_4__3_n_0 ),
        .I5(\FSM_onehot_state_reg[1]_1 ),
        .O(m_valid_i));
  LUT5 #(
    .INIT(32'hA2AA0000)) 
    \FSM_onehot_state[3]_i_2__2 
       (.I0(Q[1]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_state[3]_i_4__3 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[2]),
        .I3(Q[0]),
        .O(\FSM_onehot_state[3]_i_4__3_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__2_n_0 ),
        .Q(Q[2]),
        .S(areset_d1));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_4 
       (.I0(m_valid_i_reg_0),
        .I1(m_axi_wready),
        .I2(\s_axi_wready[0]_0 ),
        .I3(s_axi_wready_0_sn_1),
        .I4(\storage_data1_reg[1]_0 ),
        .I5(\storage_data1_reg[0]_0 ),
        .O(m_valid_i_reg_1));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_4__0 
       (.I0(m_valid_i_reg_0),
        .I1(m_axi_wready),
        .I2(\s_axi_wready[2]_0 ),
        .I3(s_axi_wready_2_sn_1),
        .I4(\storage_data1_reg[0]_0 ),
        .I5(\storage_data1_reg[1]_0 ),
        .O(m_valid_i_reg_2));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_4__1 
       (.I0(m_valid_i_reg_0),
        .I1(m_axi_wready),
        .I2(\s_axi_wready[1]_0 ),
        .I3(s_axi_wready_1_sn_1),
        .I4(\storage_data1_reg[1]_0 ),
        .I5(\storage_data1_reg[0]_0 ),
        .O(m_valid_i_reg_3));
  LUT6 #(
    .INIT(64'h5A55FBFFA5AA0400)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(m_aready__1),
        .I1(Q[1]),
        .I2(\gen_rep[0].fifoaddr_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(Q[0]),
        .I5(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFF5F740400A08)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(fifoaddr[0]),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .I3(Q[1]),
        .I4(m_aready__1),
        .I5(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7FFE80808001)) 
    \gen_rep[0].fifoaddr[2]_i_1 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(\gen_rep[0].fifoaddr[2]_i_2_n_0 ),
        .I3(\gen_rep[0].fifoaddr_reg[2]_0 ),
        .I4(\gen_rep[0].fifoaddr[2]_i_4_n_0 ),
        .I5(fifoaddr[2]),
        .O(\gen_rep[0].fifoaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gen_rep[0].fifoaddr[2]_i_2 
       (.I0(Q[0]),
        .I1(\storage_data1_reg[1]_2 ),
        .I2(m_axi_wready),
        .I3(m_valid_i_reg_0),
        .I4(s_axi_wlast_2_sn_1),
        .O(\gen_rep[0].fifoaddr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0444444444444444)) 
    \gen_rep[0].fifoaddr[2]_i_4 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(Q[1]),
        .I2(\storage_data1_reg[1]_2 ),
        .I3(m_axi_wready),
        .I4(m_valid_i_reg_0),
        .I5(s_axi_wlast_2_sn_1),
        .O(\gen_rep[0].fifoaddr[2]_i_4_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[2]_i_1_n_0 ),
        .Q(fifoaddr[2]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3 \gen_srls[0].gen_rep[0].srl_nx1 
       (.A(fifoaddr),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(Q[0]),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[0]),
        .aclk(aclk),
        .m_aready__1(m_aready__1),
        .push(push),
        .\storage_data1_reg[0] (\storage_data1_reg[1]_3 ),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[1]_4 ),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0]_0 ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3_16 \gen_srls[0].gen_rep[1].srl_nx1 
       (.A(fifoaddr),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_5 ),
        .Q(Q[1:0]),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[1]),
        .aclk(aclk),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_0 (\FSM_onehot_state_reg[0]_0 ),
        .m_aready__1(m_aready__1),
        .\m_axi_wlast[1] (\storage_data1_reg[0]_0 ),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wlast_2_sp_1(s_axi_wlast_2_sn_1),
        .\storage_data1_reg[0] (\storage_data1_reg[0]_1 ),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_1 ),
        .\storage_data1_reg[1]_0 (m_valid_i_reg_0),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_2 ),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_0 ),
        .\storage_data1_reg[1]_3 (\storage_data1_reg[1]_3 ),
        .\storage_data1_reg[1]_4 (\storage_data1_reg[1]_4 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[32]_INST_0 
       (.I0(s_axi_wdata[0]),
        .I1(s_axi_wdata[32]),
        .I2(s_axi_wdata[64]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[33]_INST_0 
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wdata[33]),
        .I2(s_axi_wdata[65]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[34]_INST_0 
       (.I0(s_axi_wdata[2]),
        .I1(s_axi_wdata[34]),
        .I2(s_axi_wdata[66]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[35]_INST_0 
       (.I0(s_axi_wdata[3]),
        .I1(s_axi_wdata[35]),
        .I2(s_axi_wdata[67]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[36]_INST_0 
       (.I0(s_axi_wdata[4]),
        .I1(s_axi_wdata[36]),
        .I2(s_axi_wdata[68]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[37]_INST_0 
       (.I0(s_axi_wdata[5]),
        .I1(s_axi_wdata[37]),
        .I2(s_axi_wdata[69]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[38]_INST_0 
       (.I0(s_axi_wdata[6]),
        .I1(s_axi_wdata[38]),
        .I2(s_axi_wdata[70]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[39]_INST_0 
       (.I0(s_axi_wdata[7]),
        .I1(s_axi_wdata[39]),
        .I2(s_axi_wdata[71]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[40]_INST_0 
       (.I0(s_axi_wdata[8]),
        .I1(s_axi_wdata[40]),
        .I2(s_axi_wdata[72]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[8]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[41]_INST_0 
       (.I0(s_axi_wdata[9]),
        .I1(s_axi_wdata[41]),
        .I2(s_axi_wdata[73]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[9]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[42]_INST_0 
       (.I0(s_axi_wdata[10]),
        .I1(s_axi_wdata[42]),
        .I2(s_axi_wdata[74]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[10]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[43]_INST_0 
       (.I0(s_axi_wdata[11]),
        .I1(s_axi_wdata[43]),
        .I2(s_axi_wdata[75]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[11]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[44]_INST_0 
       (.I0(s_axi_wdata[12]),
        .I1(s_axi_wdata[44]),
        .I2(s_axi_wdata[76]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[12]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[45]_INST_0 
       (.I0(s_axi_wdata[13]),
        .I1(s_axi_wdata[45]),
        .I2(s_axi_wdata[77]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[46]_INST_0 
       (.I0(s_axi_wdata[14]),
        .I1(s_axi_wdata[46]),
        .I2(s_axi_wdata[78]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[14]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[47]_INST_0 
       (.I0(s_axi_wdata[15]),
        .I1(s_axi_wdata[47]),
        .I2(s_axi_wdata[79]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[15]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[48]_INST_0 
       (.I0(s_axi_wdata[16]),
        .I1(s_axi_wdata[48]),
        .I2(s_axi_wdata[80]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[16]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[49]_INST_0 
       (.I0(s_axi_wdata[17]),
        .I1(s_axi_wdata[49]),
        .I2(s_axi_wdata[81]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[17]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[50]_INST_0 
       (.I0(s_axi_wdata[18]),
        .I1(s_axi_wdata[50]),
        .I2(s_axi_wdata[82]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[18]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[51]_INST_0 
       (.I0(s_axi_wdata[19]),
        .I1(s_axi_wdata[51]),
        .I2(s_axi_wdata[83]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[19]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[52]_INST_0 
       (.I0(s_axi_wdata[20]),
        .I1(s_axi_wdata[52]),
        .I2(s_axi_wdata[84]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[20]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[53]_INST_0 
       (.I0(s_axi_wdata[21]),
        .I1(s_axi_wdata[53]),
        .I2(s_axi_wdata[85]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[21]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[54]_INST_0 
       (.I0(s_axi_wdata[22]),
        .I1(s_axi_wdata[54]),
        .I2(s_axi_wdata[86]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[22]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[55]_INST_0 
       (.I0(s_axi_wdata[23]),
        .I1(s_axi_wdata[55]),
        .I2(s_axi_wdata[87]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[23]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[56]_INST_0 
       (.I0(s_axi_wdata[24]),
        .I1(s_axi_wdata[56]),
        .I2(s_axi_wdata[88]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[24]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[57]_INST_0 
       (.I0(s_axi_wdata[25]),
        .I1(s_axi_wdata[57]),
        .I2(s_axi_wdata[89]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[25]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[58]_INST_0 
       (.I0(s_axi_wdata[26]),
        .I1(s_axi_wdata[58]),
        .I2(s_axi_wdata[90]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[26]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[59]_INST_0 
       (.I0(s_axi_wdata[27]),
        .I1(s_axi_wdata[59]),
        .I2(s_axi_wdata[91]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[27]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[60]_INST_0 
       (.I0(s_axi_wdata[28]),
        .I1(s_axi_wdata[60]),
        .I2(s_axi_wdata[92]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[28]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[61]_INST_0 
       (.I0(s_axi_wdata[29]),
        .I1(s_axi_wdata[61]),
        .I2(s_axi_wdata[93]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[29]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[62]_INST_0 
       (.I0(s_axi_wdata[30]),
        .I1(s_axi_wdata[62]),
        .I2(s_axi_wdata[94]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[30]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wdata[63]_INST_0 
       (.I0(s_axi_wdata[31]),
        .I1(s_axi_wdata[63]),
        .I2(s_axi_wdata[95]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wdata[31]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wstrb[4]_INST_0 
       (.I0(s_axi_wstrb[0]),
        .I1(s_axi_wstrb[4]),
        .I2(s_axi_wstrb[8]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wstrb[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wstrb[5]_INST_0 
       (.I0(s_axi_wstrb[1]),
        .I1(s_axi_wstrb[5]),
        .I2(s_axi_wstrb[9]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wstrb[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wstrb[6]_INST_0 
       (.I0(s_axi_wstrb[2]),
        .I1(s_axi_wstrb[6]),
        .I2(s_axi_wstrb[10]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wstrb[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_axi_wstrb[7]_INST_0 
       (.I0(s_axi_wstrb[3]),
        .I1(s_axi_wstrb[7]),
        .I2(s_axi_wstrb[11]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\storage_data1_reg[0]_0 ),
        .O(m_axi_wstrb[3]));
  LUT6 #(
    .INIT(64'hEEAEEEAEAAFFAAAA)) 
    m_valid_i_i_1__4
       (.I0(\FSM_onehot_state_reg[1]_1 ),
        .I1(\FSM_onehot_state[3]_i_4__3_n_0 ),
        .I2(Q[0]),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(Q[1]),
        .I5(m_aready__1),
        .O(m_valid_i_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__4_n_0),
        .Q(m_valid_i_reg_0),
        .R(areset_d1));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[0]_INST_0 
       (.I0(\s_axi_wready[0]_INST_0_i_1_n_0 ),
        .I1(m_avalid_0),
        .O(s_axi_wready[0]));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    \s_axi_wready[0]_INST_0_i_1 
       (.I0(\s_axi_wready[0]_INST_0_i_2_n_0 ),
        .I1(s_axi_wready_0_sn_1),
        .I2(m_axi_wready),
        .I3(m_valid_i_reg_0),
        .I4(\s_axi_wready[0]_0 ),
        .I5(\s_axi_wready[0]_1 ),
        .O(\s_axi_wready[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_axi_wready[0]_INST_0_i_2 
       (.I0(\storage_data1_reg[0]_0 ),
        .I1(\storage_data1_reg[1]_0 ),
        .O(\s_axi_wready[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[1]_INST_0 
       (.I0(\s_axi_wready[1]_INST_0_i_1_n_0 ),
        .I1(m_avalid_2),
        .O(s_axi_wready[1]));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    \s_axi_wready[1]_INST_0_i_1 
       (.I0(\storage_data1_reg[0]_1 ),
        .I1(s_axi_wready_1_sn_1),
        .I2(m_axi_wready),
        .I3(m_valid_i_reg_0),
        .I4(\s_axi_wready[1]_0 ),
        .I5(\s_axi_wready[1]_1 ),
        .O(\s_axi_wready[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[2]_INST_0 
       (.I0(\s_axi_wready[2]_INST_0_i_1_n_0 ),
        .I1(m_avalid_1),
        .O(s_axi_wready[2]));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    \s_axi_wready[2]_INST_0_i_1 
       (.I0(\storage_data1_reg[1]_1 ),
        .I1(s_axi_wready_2_sn_1),
        .I2(m_axi_wready),
        .I3(m_valid_i_reg_0),
        .I4(\s_axi_wready[2]_0 ),
        .I5(\s_axi_wready[2]_1 ),
        .O(\s_axi_wready[2]_INST_0_i_1_n_0 ));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_5 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized3
   (\storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[0]_0 ,
    \FSM_onehot_gen_axi.write_cs_reg[1] ,
    Q,
    \storage_data1_reg[0]_1 ,
    \storage_data1_reg[1]_2 ,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    \s_axi_wready[0]_INST_0_i_1 ,
    \s_axi_wready[0]_INST_0_i_1_0 ,
    \s_axi_wready[0]_INST_0_i_1_1 ,
    \FSM_onehot_gen_axi.write_cs_reg[2] ,
    \storage_data1_reg[1]_3 ,
    \FSM_onehot_state_reg[1]_0 ,
    aa_sa_awvalid,
    m_ready_d,
    \FSM_onehot_state_reg[0]_0 ,
    p_14_in,
    \s_axi_wready[2]_INST_0_i_1 ,
    \s_axi_wready[2]_INST_0_i_1_0 ,
    \s_axi_wready[1]_INST_0_i_1 ,
    \s_axi_wready[1]_INST_0_i_1_0 ,
    s_axi_wlast,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    SR,
    \storage_data1_reg[1]_4 ,
    \storage_data1_reg[1]_5 );
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[1]_1 ;
  output \storage_data1_reg[0]_0 ;
  output \FSM_onehot_gen_axi.write_cs_reg[1] ;
  output [1:0]Q;
  output \storage_data1_reg[0]_1 ;
  output \storage_data1_reg[1]_2 ;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input \s_axi_wready[0]_INST_0_i_1 ;
  input \s_axi_wready[0]_INST_0_i_1_0 ;
  input \s_axi_wready[0]_INST_0_i_1_1 ;
  input \FSM_onehot_gen_axi.write_cs_reg[2] ;
  input \storage_data1_reg[1]_3 ;
  input \FSM_onehot_state_reg[1]_0 ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input p_14_in;
  input \s_axi_wready[2]_INST_0_i_1 ;
  input \s_axi_wready[2]_INST_0_i_1_0 ;
  input \s_axi_wready[1]_INST_0_i_1 ;
  input \s_axi_wready[1]_INST_0_i_1_0 ;
  input [2:0]s_axi_wlast;
  input \gen_rep[0].fifoaddr_reg[0]_0 ;
  input [0:0]SR;
  input \storage_data1_reg[1]_4 ;
  input \storage_data1_reg[1]_5 ;

  wire \FSM_onehot_gen_axi.write_cs_reg[1] ;
  wire \FSM_onehot_gen_axi.write_cs_reg[2] ;
  wire \FSM_onehot_state[0]_i_1__1_n_0 ;
  wire \FSM_onehot_state[1]_i_1__3_n_0 ;
  wire \FSM_onehot_state[3]_i_2__1_n_0 ;
  wire \FSM_onehot_state[3]_i_3__0_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_3 ;
  wire m_aready__1;
  wire m_avalid;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1__3_n_0;
  wire p_14_in;
  wire push;
  wire [2:0]s_axi_wlast;
  wire \s_axi_wready[0]_INST_0_i_1 ;
  wire \s_axi_wready[0]_INST_0_i_1_0 ;
  wire \s_axi_wready[0]_INST_0_i_1_1 ;
  wire \s_axi_wready[1]_INST_0_i_1 ;
  wire \s_axi_wready[1]_INST_0_i_1_0 ;
  wire \s_axi_wready[2]_INST_0_i_1 ;
  wire \s_axi_wready[2]_INST_0_i_1_0 ;
  wire \s_axi_wready[2]_INST_0_i_4_n_0 ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire \storage_data1_reg[1]_3 ;
  wire \storage_data1_reg[1]_4 ;
  wire \storage_data1_reg[1]_5 ;
  wire wm_mr_wlast_2;

  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_3 
       (.I0(wm_mr_wlast_2),
        .I1(\FSM_onehot_gen_axi.write_cs_reg[2] ),
        .I2(m_avalid),
        .I3(\storage_data1_reg[1]_3 ),
        .O(\FSM_onehot_gen_axi.write_cs_reg[1] ));
  LUT5 #(
    .INIT(32'h5D550000)) 
    \FSM_onehot_state[0]_i_1__1 
       (.I0(m_aready__1),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(Q[0]),
        .O(\FSM_onehot_state[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hA0FFA020)) 
    \FSM_onehot_state[1]_i_1__3 
       (.I0(m_aready__1),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[3]_i_3__0_n_0 ),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(Q[1]),
        .O(\FSM_onehot_state[1]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hAA88FFFFAA884E44)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(m_aready__1),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[3]_i_3__0_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .I5(Q[1]),
        .O(m_valid_i));
  LUT5 #(
    .INIT(32'hA2AA0000)) 
    \FSM_onehot_state[3]_i_2__1 
       (.I0(Q[0]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[3]_i_3__0 
       (.I0(fifoaddr[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[0]),
        .O(\FSM_onehot_state[3]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__3_n_0 ),
        .Q(Q[0]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__1_n_0 ),
        .Q(Q[1]),
        .S(areset_d1));
  LUT6 #(
    .INIT(64'h5A55FBFFA5AA0400)) 
    \gen_rep[0].fifoaddr[0]_i_1__0 
       (.I0(m_aready__1),
        .I1(Q[0]),
        .I2(\gen_rep[0].fifoaddr_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFF5F740400A08)) 
    \gen_rep[0].fifoaddr[1]_i_1__0 
       (.I0(fifoaddr[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .I3(Q[0]),
        .I4(m_aready__1),
        .I5(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_12 \gen_srls[0].gen_rep[0].srl_nx1 
       (.A(fifoaddr),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[0]),
        .aclk(aclk),
        .m_aready__1(m_aready__1),
        .push(push),
        .\storage_data1_reg[0] (\storage_data1_reg[1]_4 ),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[1]_5 ),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0]_0 ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_13 \gen_srls[0].gen_rep[1].srl_nx1 
       (.A(fifoaddr),
        .\FSM_onehot_gen_axi.write_cs[2]_i_3 (\storage_data1_reg[0]_0 ),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .Q({Q[0],\FSM_onehot_state_reg_n_0_[0] }),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[1]),
        .aclk(aclk),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_0 (\FSM_onehot_state_reg[0]_0 ),
        .m_aready__1(m_aready__1),
        .m_avalid(m_avalid),
        .m_ready_d(m_ready_d),
        .p_14_in(p_14_in),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_3 ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1]_1 ),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_4 ),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_5 ),
        .wm_mr_wlast_2(wm_mr_wlast_2));
  LUT6 #(
    .INIT(64'hE2F2E2F233332222)) 
    m_valid_i_i_1__3
       (.I0(Q[1]),
        .I1(\FSM_onehot_state_reg[1]_0 ),
        .I2(\FSM_onehot_state[3]_i_3__0_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(Q[0]),
        .I5(m_aready__1),
        .O(m_valid_i_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__3_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  LUT6 #(
    .INIT(64'h02020202FF000000)) 
    \s_axi_wready[0]_INST_0_i_3 
       (.I0(\s_axi_wready[2]_INST_0_i_4_n_0 ),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(\s_axi_wready[0]_INST_0_i_1 ),
        .I4(\s_axi_wready[0]_INST_0_i_1_0 ),
        .I5(\s_axi_wready[0]_INST_0_i_1_1 ),
        .O(\storage_data1_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h20202020FF000000)) 
    \s_axi_wready[1]_INST_0_i_3 
       (.I0(\s_axi_wready[2]_INST_0_i_4_n_0 ),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(\s_axi_wready[1]_INST_0_i_1 ),
        .I4(\s_axi_wready[0]_INST_0_i_1_0 ),
        .I5(\s_axi_wready[1]_INST_0_i_1_0 ),
        .O(\storage_data1_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h20202020FF000000)) 
    \s_axi_wready[2]_INST_0_i_3 
       (.I0(\s_axi_wready[2]_INST_0_i_4_n_0 ),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(\storage_data1_reg[1]_1 ),
        .I3(\s_axi_wready[2]_INST_0_i_1 ),
        .I4(\s_axi_wready[0]_INST_0_i_1_0 ),
        .I5(\s_axi_wready[2]_INST_0_i_1_0 ),
        .O(\storage_data1_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[2]_INST_0_i_4 
       (.I0(m_avalid),
        .I1(p_14_in),
        .O(\s_axi_wready[2]_INST_0_i_4_n_0 ));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .Q(\storage_data1_reg[1]_1 ),
        .R(1'b0));
endmodule

module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl
   (\gen_rep[0].fifoaddr_reg[1] ,
    st_aa_awtarget_enc_2,
    push,
    fifoaddr,
    aclk,
    s_axi_awaddr);
  output \gen_rep[0].fifoaddr_reg[1] ;
  output [0:0]st_aa_awtarget_enc_2;
  input push;
  input [1:0]fifoaddr;
  input aclk;
  input [1:0]s_axi_awaddr;

  wire aclk;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr_reg[1] ;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]st_aa_awtarget_enc_2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(st_aa_awtarget_enc_2),
        .Q(\gen_rep[0].fifoaddr_reg[1] ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__3 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[0]),
        .O(st_aa_awtarget_enc_2));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_10
   (\gen_rep[0].fifoaddr_reg[1] ,
    st_aa_awtarget_enc_0,
    push,
    fifoaddr,
    aclk,
    s_axi_awaddr);
  output \gen_rep[0].fifoaddr_reg[1] ;
  output [0:0]st_aa_awtarget_enc_0;
  input push;
  input [1:0]fifoaddr;
  input aclk;
  input [1:0]s_axi_awaddr;

  wire aclk;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr_reg[1] ;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]st_aa_awtarget_enc_0;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(st_aa_awtarget_enc_0),
        .Q(\gen_rep[0].fifoaddr_reg[1] ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__4 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[0]),
        .O(st_aa_awtarget_enc_0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_11
   (push,
    \FSM_onehot_state_reg[0] ,
    match,
    m_aready__1,
    fifoaddr,
    aclk,
    Q,
    load_s1,
    \storage_data1_reg[1] ,
    ss_wr_awready_0,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wlast,
    \FSM_onehot_state_reg[1] ,
    s_axi_wvalid,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    \FSM_onehot_state_reg[1]_2 ,
    s_axi_awaddr,
    ADDRESS_HIT_0);
  output push;
  output \FSM_onehot_state_reg[0] ;
  output match;
  output m_aready__1;
  input [1:0]fifoaddr;
  input aclk;
  input [1:0]Q;
  input load_s1;
  input \storage_data1_reg[1] ;
  input ss_wr_awready_0;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]s_axi_wvalid;
  input \FSM_onehot_state_reg[1]_0 ;
  input \FSM_onehot_state_reg[1]_1 ;
  input \FSM_onehot_state_reg[1]_2 ;
  input [1:0]s_axi_awaddr;
  input ADDRESS_HIT_0;

  wire ADDRESS_HIT_0;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[1]_2 ;
  wire [1:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__7_n_0 ;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]m_ready_d;
  wire match;
  wire p_2_out;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_0;
  wire \storage_data1_reg[1] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hF4)) 
    \gen_arbiter.m_target_hot_i[2]_i_2__0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(ADDRESS_HIT_0),
        .O(match));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__7_n_0 ),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h000000008F880000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__0 
       (.I0(Q[0]),
        .I1(ss_wr_awready_0),
        .I2(m_aready__1),
        .I3(Q[1]),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(push));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__7 
       (.I0(match),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'h8080808000008000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3 
       (.I0(s_axi_wlast),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(\FSM_onehot_state_reg[1]_1 ),
        .I5(\FSM_onehot_state_reg[1]_2 ),
        .O(m_aready__1));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \storage_data1[1]_i_1__4 
       (.I0(match),
        .I1(p_2_out),
        .I2(Q[0]),
        .I3(load_s1),
        .I4(\storage_data1_reg[1] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_12
   (\FSM_onehot_state_reg[0] ,
    push,
    aa_wm_awgrant_enc,
    A,
    aclk,
    Q,
    \storage_data1_reg[0] ,
    m_aready__1,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[0]_1 );
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [0:0]aa_wm_awgrant_enc;
  input [1:0]A;
  input aclk;
  input [0:0]Q;
  input \storage_data1_reg[0] ;
  input m_aready__1;
  input \storage_data1_reg[0]_0 ;
  input \storage_data1_reg[0]_1 ;

  wire [1:0]A;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]Q;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire m_aready__1;
  wire push;
  wire \storage_data1[0]_i_2__0_n_0 ;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,A}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'hAAAFABAFAAA0A8A0)) 
    \storage_data1[0]_i_1__1 
       (.I0(\storage_data1[0]_i_2__0_n_0 ),
        .I1(Q),
        .I2(\storage_data1_reg[0] ),
        .I3(m_aready__1),
        .I4(\storage_data1_reg[0]_0 ),
        .I5(\storage_data1_reg[0]_1 ),
        .O(\FSM_onehot_state_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \storage_data1[0]_i_2__0 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I1(Q),
        .I2(aa_wm_awgrant_enc),
        .O(\storage_data1[0]_i_2__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_13
   (push,
    m_aready__1,
    wm_mr_wlast_2,
    \FSM_onehot_state_reg[0] ,
    aa_wm_awgrant_enc,
    A,
    aclk,
    Q,
    aa_sa_awvalid,
    m_ready_d,
    \gen_primitive_shifter.gen_srls[0].srl_inst_0 ,
    m_avalid,
    p_14_in,
    \storage_data1_reg[1] ,
    s_axi_wlast,
    \FSM_onehot_gen_axi.write_cs[2]_i_3 ,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[1]_2 );
  output push;
  output m_aready__1;
  output wm_mr_wlast_2;
  output \FSM_onehot_state_reg[0] ;
  input [0:0]aa_wm_awgrant_enc;
  input [1:0]A;
  input aclk;
  input [1:0]Q;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  input m_avalid;
  input p_14_in;
  input \storage_data1_reg[1] ;
  input [2:0]s_axi_wlast;
  input \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  input \storage_data1_reg[1]_0 ;
  input \storage_data1_reg[1]_1 ;
  input \storage_data1_reg[1]_2 ;

  wire [1:0]A;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  wire \FSM_onehot_state_reg[0] ;
  wire [1:0]Q;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  wire m_aready__1;
  wire m_avalid;
  wire [0:0]m_ready_d;
  wire p_14_in;
  wire p_2_out;
  wire push;
  wire [2:0]s_axi_wlast;
  wire \storage_data1[1]_i_2__4_n_0 ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire wm_mr_wlast_2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_4 
       (.I0(s_axi_wlast[0]),
        .I1(s_axi_wlast[1]),
        .I2(\FSM_onehot_gen_axi.write_cs[2]_i_3 ),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(s_axi_wlast[2]),
        .O(wm_mr_wlast_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,A}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h00F0000000400000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__1 
       (.I0(m_aready__1),
        .I1(Q[1]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .I4(\gen_primitive_shifter.gen_srls[0].srl_inst_0 ),
        .I5(Q[0]),
        .O(push));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 
       (.I0(wm_mr_wlast_2),
        .I1(m_avalid),
        .I2(p_14_in),
        .I3(\storage_data1_reg[1] ),
        .O(m_aready__1));
  LUT6 #(
    .INIT(64'hAAAFABAFAAA0A8A0)) 
    \storage_data1[1]_i_1__1 
       (.I0(\storage_data1[1]_i_2__4_n_0 ),
        .I1(Q[0]),
        .I2(\storage_data1_reg[1]_1 ),
        .I3(m_aready__1),
        .I4(\storage_data1_reg[1]_2 ),
        .I5(\storage_data1_reg[1]_0 ),
        .O(\FSM_onehot_state_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \storage_data1[1]_i_2__4 
       (.I0(p_2_out),
        .I1(Q[0]),
        .I2(aa_wm_awgrant_enc),
        .O(\storage_data1[1]_i_2__4_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_8
   (push,
    \FSM_onehot_state_reg[0] ,
    match,
    m_aready__1,
    fifoaddr,
    aclk,
    Q,
    load_s1,
    \storage_data1_reg[1] ,
    ss_wr_awready_1,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wlast,
    s_axi_wvalid,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    \FSM_onehot_state_reg[1]_2 ,
    s_axi_awaddr,
    ADDRESS_HIT_0);
  output push;
  output \FSM_onehot_state_reg[0] ;
  output match;
  output m_aready__1;
  input [1:0]fifoaddr;
  input aclk;
  input [1:0]Q;
  input load_s1;
  input \storage_data1_reg[1] ;
  input ss_wr_awready_1;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input \FSM_onehot_state_reg[1] ;
  input \FSM_onehot_state_reg[1]_0 ;
  input \FSM_onehot_state_reg[1]_1 ;
  input \FSM_onehot_state_reg[1]_2 ;
  input [1:0]s_axi_awaddr;
  input ADDRESS_HIT_0;

  wire ADDRESS_HIT_0;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[1]_2 ;
  wire [1:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__6_n_0 ;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]m_ready_d;
  wire match;
  wire p_2_out;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_1;
  wire \storage_data1_reg[1] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hF4)) 
    \gen_arbiter.m_target_hot_i[2]_i_3__0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(ADDRESS_HIT_0),
        .O(match));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__6_n_0 ),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h000000008F880000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__4 
       (.I0(Q[0]),
        .I1(ss_wr_awready_1),
        .I2(m_aready__1),
        .I3(Q[1]),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(push));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__6 
       (.I0(match),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h8080808000008000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 
       (.I0(s_axi_wlast),
        .I1(s_axi_wvalid),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(\FSM_onehot_state_reg[1]_1 ),
        .I5(\FSM_onehot_state_reg[1]_2 ),
        .O(m_aready__1));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \storage_data1[1]_i_1__3 
       (.I0(match),
        .I1(p_2_out),
        .I2(Q[0]),
        .I3(load_s1),
        .I4(\storage_data1_reg[1] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1
   (\s_axi_awaddr[95] ,
    push,
    Q,
    aclk,
    s_axi_awaddr,
    \storage_data1_reg[0] ,
    load_s1,
    \storage_data1_reg[0]_0 );
  output \s_axi_awaddr[95] ;
  input push;
  input [4:0]Q;
  input aclk;
  input [1:0]s_axi_awaddr;
  input [0:0]\storage_data1_reg[0] ;
  input load_s1;
  input \storage_data1_reg[0]_0 ;

  wire [4:0]Q;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire load_s1;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire \s_axi_awaddr[95] ;
  wire [0:0]st_aa_awtarget_enc_4;
  wire [0:0]\storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(st_aa_awtarget_enc_4),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__2 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[0]),
        .O(st_aa_awtarget_enc_4));
  LUT6 #(
    .INIT(64'hF022FFFFF0220000)) 
    \storage_data1[0]_i_1__2 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[0]),
        .I2(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I3(\storage_data1_reg[0] ),
        .I4(load_s1),
        .I5(\storage_data1_reg[0]_0 ),
        .O(\s_axi_awaddr[95] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_19
   (\FSM_onehot_state_reg[0] ,
    push,
    aa_wm_awgrant_enc,
    Q,
    aclk,
    \storage_data1_reg[0] ,
    load_s1,
    \storage_data1_reg[0]_0 );
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [0:0]aa_wm_awgrant_enc;
  input [4:0]Q;
  input aclk;
  input [0:0]\storage_data1_reg[0] ;
  input load_s1;
  input \storage_data1_reg[0]_0 ;

  wire \FSM_onehot_state_reg[0] ;
  wire [4:0]Q;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire load_s1;
  wire push;
  wire [0:0]\storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I1(\storage_data1_reg[0] ),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[0]_0 ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_20
   (push,
    m_aready__1,
    m_axi_wlast,
    \FSM_onehot_state_reg[0] ,
    aa_wm_awgrant_enc,
    Q,
    aclk,
    \gen_rep[0].fifoaddr_reg[3] ,
    aa_sa_awvalid,
    m_ready_d,
    \gen_rep[0].fifoaddr_reg[3]_0 ,
    m_avalid,
    m_axi_wready,
    \gen_rep[0].fifoaddr_reg[0] ,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    \gen_rep[0].fifoaddr_reg[0]_1 ,
    s_axi_wlast,
    \storage_data1_reg[1] ,
    m_axi_wlast_0_sp_1,
    load_s1);
  output push;
  output m_aready__1;
  output [0:0]m_axi_wlast;
  output \FSM_onehot_state_reg[0] ;
  input [0:0]aa_wm_awgrant_enc;
  input [4:0]Q;
  input aclk;
  input [1:0]\gen_rep[0].fifoaddr_reg[3] ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [0:0]\gen_rep[0].fifoaddr_reg[3]_0 ;
  input m_avalid;
  input [0:0]m_axi_wready;
  input \gen_rep[0].fifoaddr_reg[0] ;
  input \gen_rep[0].fifoaddr_reg[0]_0 ;
  input \gen_rep[0].fifoaddr_reg[0]_1 ;
  input [2:0]s_axi_wlast;
  input \storage_data1_reg[1] ;
  input m_axi_wlast_0_sp_1;
  input load_s1;

  wire \FSM_onehot_state_reg[0] ;
  wire [4:0]Q;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire \gen_rep[0].fifoaddr_reg[0] ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_1 ;
  wire [1:0]\gen_rep[0].fifoaddr_reg[3] ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[3]_0 ;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid;
  wire [0:0]m_axi_wlast;
  wire m_axi_wlast_0_sn_1;
  wire [0:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire p_2_out;
  wire push;
  wire [2:0]s_axi_wlast;
  wire \storage_data1_reg[1] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  assign m_axi_wlast_0_sn_1 = m_axi_wlast_0_sp_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h00F0000000400000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1 
       (.I0(m_aready__1),
        .I1(\gen_rep[0].fifoaddr_reg[3] [1]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .I4(\gen_rep[0].fifoaddr_reg[3]_0 ),
        .I5(\gen_rep[0].fifoaddr_reg[3] [0]),
        .O(push));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2 
       (.I0(m_axi_wlast),
        .I1(m_avalid),
        .I2(m_axi_wready),
        .I3(\gen_rep[0].fifoaddr_reg[0] ),
        .I4(\gen_rep[0].fifoaddr_reg[0]_0 ),
        .I5(\gen_rep[0].fifoaddr_reg[0]_1 ),
        .O(m_aready__1));
  LUT5 #(
    .INIT(32'h3B380B08)) 
    \m_axi_wlast[0]_INST_0 
       (.I0(s_axi_wlast[2]),
        .I1(\storage_data1_reg[1] ),
        .I2(m_axi_wlast_0_sn_1),
        .I3(s_axi_wlast[0]),
        .I4(s_axi_wlast[1]),
        .O(m_axi_wlast));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[1]_i_1 
       (.I0(p_2_out),
        .I1(\gen_rep[0].fifoaddr_reg[3] [0]),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[1] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_7
   (push,
    \FSM_onehot_state_reg[0] ,
    match,
    m_aready__1,
    Q,
    aclk,
    s_ready_i_reg,
    load_s1,
    \storage_data1_reg[1] ,
    s_ready_i_reg_0,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wlast,
    s_axi_wvalid,
    s_ready_i_reg_1,
    s_ready_i_reg_2,
    s_ready_i_reg_3,
    s_ready_i_reg_4,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[1]_2 ,
    \storage_data1_reg[1]_3 ,
    s_axi_awaddr);
  output push;
  output \FSM_onehot_state_reg[0] ;
  output match;
  output m_aready__1;
  input [4:0]Q;
  input aclk;
  input [1:0]s_ready_i_reg;
  input load_s1;
  input \storage_data1_reg[1] ;
  input s_ready_i_reg_0;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input s_ready_i_reg_1;
  input s_ready_i_reg_2;
  input s_ready_i_reg_3;
  input s_ready_i_reg_4;
  input \storage_data1_reg[1]_0 ;
  input \storage_data1_reg[1]_1 ;
  input \storage_data1_reg[1]_2 ;
  input \storage_data1_reg[1]_3 ;
  input [1:0]s_axi_awaddr;

  wire \FSM_onehot_state_reg[0] ;
  wire [4:0]Q;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5_n_0 ;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]m_ready_d;
  wire match;
  wire p_2_out;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire [1:0]s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire s_ready_i_reg_2;
  wire s_ready_i_reg_3;
  wire s_ready_i_reg_4;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire \storage_data1_reg[1]_3 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h80008000FFFF8000)) 
    \gen_arbiter.m_target_hot_i[2]_i_4__0 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[1]_2 ),
        .I3(\storage_data1_reg[1]_3 ),
        .I4(s_axi_awaddr[1]),
        .I5(s_axi_awaddr[0]),
        .O(match));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5_n_0 ),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h000000008F880000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__3 
       (.I0(s_ready_i_reg[0]),
        .I1(s_ready_i_reg_0),
        .I2(m_aready__1),
        .I3(s_ready_i_reg[1]),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(push));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5 
       (.I0(match),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h8080808000008000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__1 
       (.I0(s_axi_wlast),
        .I1(s_axi_wvalid),
        .I2(s_ready_i_reg_1),
        .I3(s_ready_i_reg_2),
        .I4(s_ready_i_reg_3),
        .I5(s_ready_i_reg_4),
        .O(m_aready__1));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \storage_data1[1]_i_1__2 
       (.I0(match),
        .I1(p_2_out),
        .I2(s_ready_i_reg[0]),
        .I3(load_s1),
        .I4(\storage_data1_reg[1] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3
   (\FSM_onehot_state_reg[0] ,
    push,
    aa_wm_awgrant_enc,
    A,
    aclk,
    Q,
    \storage_data1_reg[0] ,
    m_aready__1,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[0]_1 );
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [0:0]aa_wm_awgrant_enc;
  input [2:0]A;
  input aclk;
  input [0:0]Q;
  input \storage_data1_reg[0] ;
  input m_aready__1;
  input \storage_data1_reg[0]_0 ;
  input \storage_data1_reg[0]_1 ;

  wire [2:0]A;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]Q;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire m_aready__1;
  wire push;
  wire \storage_data1[0]_i_2_n_0 ;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,A}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'hAAAFABAFAAA0A8A0)) 
    \storage_data1[0]_i_1__0 
       (.I0(\storage_data1[0]_i_2_n_0 ),
        .I1(Q),
        .I2(\storage_data1_reg[0] ),
        .I3(m_aready__1),
        .I4(\storage_data1_reg[0]_0 ),
        .I5(\storage_data1_reg[0]_1 ),
        .O(\FSM_onehot_state_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \storage_data1[0]_i_2 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I1(Q),
        .I2(aa_wm_awgrant_enc),
        .O(\storage_data1[0]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3_16
   (push,
    m_aready__1,
    s_axi_wlast_2_sp_1,
    \storage_data1_reg[1] ,
    \storage_data1_reg[0] ,
    \FSM_onehot_state_reg[0] ,
    aa_wm_awgrant_enc,
    A,
    aclk,
    Q,
    aa_sa_awvalid,
    m_ready_d,
    \gen_primitive_shifter.gen_srls[0].srl_inst_0 ,
    \storage_data1_reg[1]_0 ,
    m_axi_wready,
    \storage_data1_reg[1]_1 ,
    s_axi_wlast,
    \storage_data1_reg[1]_2 ,
    \m_axi_wlast[1] ,
    \storage_data1_reg[1]_3 ,
    \storage_data1_reg[1]_4 );
  output push;
  output m_aready__1;
  output s_axi_wlast_2_sp_1;
  output \storage_data1_reg[1] ;
  output \storage_data1_reg[0] ;
  output \FSM_onehot_state_reg[0] ;
  input [0:0]aa_wm_awgrant_enc;
  input [2:0]A;
  input aclk;
  input [1:0]Q;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  input \storage_data1_reg[1]_0 ;
  input [0:0]m_axi_wready;
  input \storage_data1_reg[1]_1 ;
  input [2:0]s_axi_wlast;
  input \storage_data1_reg[1]_2 ;
  input \m_axi_wlast[1] ;
  input \storage_data1_reg[1]_3 ;
  input \storage_data1_reg[1]_4 ;

  wire [2:0]A;
  wire \FSM_onehot_state_reg[0] ;
  wire [1:0]Q;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_0 ;
  wire m_aready__1;
  wire \m_axi_wlast[1] ;
  wire [0:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire p_2_out;
  wire push;
  wire [2:0]s_axi_wlast;
  wire s_axi_wlast_2_sn_1;
  wire \storage_data1[1]_i_2__3_n_0 ;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire \storage_data1_reg[1]_3 ;
  wire \storage_data1_reg[1]_4 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  assign s_axi_wlast_2_sp_1 = s_axi_wlast_2_sn_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,A}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h00F0000000400000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__2 
       (.I0(m_aready__1),
        .I1(Q[1]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .I4(\gen_primitive_shifter.gen_srls[0].srl_inst_0 ),
        .I5(Q[0]),
        .O(push));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__1 
       (.I0(s_axi_wlast_2_sn_1),
        .I1(\storage_data1_reg[1]_0 ),
        .I2(m_axi_wready),
        .I3(\storage_data1_reg[1]_1 ),
        .O(m_aready__1));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h3B380B08)) 
    \m_axi_wlast[1]_INST_0 
       (.I0(s_axi_wlast[2]),
        .I1(\storage_data1_reg[1]_2 ),
        .I2(\m_axi_wlast[1] ),
        .I3(s_axi_wlast[0]),
        .I4(s_axi_wlast[1]),
        .O(s_axi_wlast_2_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[1]_INST_0_i_2 
       (.I0(\m_axi_wlast[1] ),
        .I1(\storage_data1_reg[1]_2 ),
        .O(\storage_data1_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[2]_INST_0_i_2 
       (.I0(\storage_data1_reg[1]_2 ),
        .I1(\m_axi_wlast[1] ),
        .O(\storage_data1_reg[1] ));
  LUT6 #(
    .INIT(64'hAAAFABAFAAA0A8A0)) 
    \storage_data1[1]_i_1__0 
       (.I0(\storage_data1[1]_i_2__3_n_0 ),
        .I1(Q[0]),
        .I2(\storage_data1_reg[1]_3 ),
        .I3(m_aready__1),
        .I4(\storage_data1_reg[1]_4 ),
        .I5(\storage_data1_reg[1]_2 ),
        .O(\FSM_onehot_state_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \storage_data1[1]_i_2__3 
       (.I0(p_2_out),
        .I1(Q[0]),
        .I2(aa_wm_awgrant_enc),
        .O(\storage_data1[1]_i_2__3_n_0 ));
endmodule

module mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice
   (m_axi_bready,
    s_ready_i_reg,
    \m_payload_i_reg[2] ,
    D,
    \s_axi_arvalid[0] ,
    valid_qual_i,
    s_axi_rready_0_sp_1,
    s_axi_rvalid,
    E,
    \m_payload_i_reg[34] ,
    valid_qual_i3__2,
    s_axi_bvalid,
    valid_qual_i3__2_0,
    m_valid_i_reg,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    m_valid_i_reg_2,
    p_2_in,
    \gen_arbiter.s_ready_i_reg[0] ,
    \m_payload_i_reg[1] ,
    p_0_in,
    aclk,
    p_1_in,
    m_axi_bvalid,
    s_ready_i_reg_0,
    Q,
    m_axi_rvalid,
    s_axi_arvalid,
    \gen_single_issue.accept_cnt ,
    valid_qual_i1__1,
    s_axi_rready,
    s_axi_rlast,
    s_axi_rvalid_0_sp_1,
    \gen_single_issue.active_target_hot ,
    \s_axi_rvalid[0]_0 ,
    \gen_master_slots[0].r_issuing_cnt_reg[0] ,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ,
    m_axi_arready,
    \gen_master_slots[0].r_issuing_cnt_reg[2] ,
    aa_mi_arvalid,
    \gen_single_issue.active_target_hot_1 ,
    s_axi_bvalid_0_sp_1,
    \gen_single_issue.active_target_hot_2 ,
    \s_axi_bvalid[0]_0 ,
    \gen_arbiter.qual_reg[0]_i_2 ,
    \gen_arbiter.qual_reg[0]_i_2_0 ,
    \gen_single_thread.active_target_hot ,
    s_axi_bready,
    \gen_single_issue.active_target_hot_3 ,
    s_axi_rvalid_1_sp_1,
    \s_axi_rvalid[1]_0 ,
    \gen_single_thread.active_target_hot_4 ,
    \gen_single_thread.active_target_hot_5 ,
    s_axi_rvalid_2_sp_1,
    \s_axi_rvalid[2]_0 ,
    \s_axi_rvalid[3] ,
    \s_axi_rvalid[3]_0 ,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    \gen_single_issue.accept_cnt_reg ,
    \m_payload_i_reg[3] );
  output [0:0]m_axi_bready;
  output s_ready_i_reg;
  output \m_payload_i_reg[2] ;
  output [2:0]D;
  output [0:0]\s_axi_arvalid[0] ;
  output [0:0]valid_qual_i;
  output s_axi_rready_0_sp_1;
  output [2:0]s_axi_rvalid;
  output [0:0]E;
  output [34:0]\m_payload_i_reg[34] ;
  output [0:0]valid_qual_i3__2;
  output [0:0]s_axi_bvalid;
  output [0:0]valid_qual_i3__2_0;
  output m_valid_i_reg;
  output m_valid_i_reg_0;
  output m_valid_i_reg_1;
  output m_valid_i_reg_2;
  output p_2_in;
  output \gen_arbiter.s_ready_i_reg[0] ;
  output [1:0]\m_payload_i_reg[1] ;
  input p_0_in;
  input aclk;
  input p_1_in;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;
  input [3:0]Q;
  input [0:0]m_axi_rvalid;
  input [0:0]s_axi_arvalid;
  input \gen_single_issue.accept_cnt ;
  input valid_qual_i1__1;
  input [3:0]s_axi_rready;
  input [1:0]s_axi_rlast;
  input s_axi_rvalid_0_sp_1;
  input [0:0]\gen_single_issue.active_target_hot ;
  input \s_axi_rvalid[0]_0 ;
  input \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  input \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  input [0:0]m_axi_arready;
  input [0:0]\gen_master_slots[0].r_issuing_cnt_reg[2] ;
  input aa_mi_arvalid;
  input [0:0]\gen_single_issue.active_target_hot_1 ;
  input s_axi_bvalid_0_sp_1;
  input [0:0]\gen_single_issue.active_target_hot_2 ;
  input \s_axi_bvalid[0]_0 ;
  input \gen_arbiter.qual_reg[0]_i_2 ;
  input [1:0]\gen_arbiter.qual_reg[0]_i_2_0 ;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [2:0]s_axi_bready;
  input [0:0]\gen_single_issue.active_target_hot_3 ;
  input s_axi_rvalid_1_sp_1;
  input \s_axi_rvalid[1]_0 ;
  input [0:0]\gen_single_thread.active_target_hot_4 ;
  input [0:0]\gen_single_thread.active_target_hot_5 ;
  input s_axi_rvalid_2_sp_1;
  input \s_axi_rvalid[2]_0 ;
  input \s_axi_rvalid[3] ;
  input \s_axi_rvalid[3]_0 ;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;
  input [0:0]\gen_single_issue.accept_cnt_reg ;
  input [3:0]\m_payload_i_reg[3] ;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire aa_mi_arvalid;
  wire aclk;
  wire \gen_arbiter.qual_reg[0]_i_2 ;
  wire [1:0]\gen_arbiter.qual_reg[0]_i_2_0 ;
  wire \gen_arbiter.s_ready_i_reg[0] ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  wire [0:0]\gen_master_slots[0].r_issuing_cnt_reg[2] ;
  wire \gen_single_issue.accept_cnt ;
  wire [0:0]\gen_single_issue.accept_cnt_reg ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire [0:0]\gen_single_issue.active_target_hot_1 ;
  wire [0:0]\gen_single_issue.active_target_hot_2 ;
  wire [0:0]\gen_single_issue.active_target_hot_3 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_4 ;
  wire [0:0]\gen_single_thread.active_target_hot_5 ;
  wire [0:0]m_axi_arready;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [1:0]\m_payload_i_reg[1] ;
  wire \m_payload_i_reg[2] ;
  wire [34:0]\m_payload_i_reg[34] ;
  wire [3:0]\m_payload_i_reg[3] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire [0:0]s_axi_arvalid;
  wire [0:0]\s_axi_arvalid[0] ;
  wire [2:0]s_axi_bready;
  wire [0:0]s_axi_bvalid;
  wire \s_axi_bvalid[0]_0 ;
  wire s_axi_bvalid_0_sn_1;
  wire [1:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire s_axi_rready_0_sn_1;
  wire [2:0]s_axi_rvalid;
  wire \s_axi_rvalid[0]_0 ;
  wire \s_axi_rvalid[1]_0 ;
  wire \s_axi_rvalid[2]_0 ;
  wire \s_axi_rvalid[3] ;
  wire \s_axi_rvalid[3]_0 ;
  wire s_axi_rvalid_0_sn_1;
  wire s_axi_rvalid_1_sn_1;
  wire s_axi_rvalid_2_sn_1;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [0:0]valid_qual_i;
  wire valid_qual_i1__1;
  wire [0:0]valid_qual_i3__2;
  wire [0:0]valid_qual_i3__2_0;

  assign s_axi_bvalid_0_sn_1 = s_axi_bvalid_0_sp_1;
  assign s_axi_rready_0_sp_1 = s_axi_rready_0_sn_1;
  assign s_axi_rvalid_0_sn_1 = s_axi_rvalid_0_sp_1;
  assign s_axi_rvalid_1_sn_1 = s_axi_rvalid_1_sp_1;
  assign s_axi_rvalid_2_sn_1 = s_axi_rvalid_2_sp_1;
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_17 \b.b_pipe 
       (.aclk(aclk),
        .\gen_arbiter.qual_reg[0]_i_2 (\gen_arbiter.qual_reg[0]_i_2 ),
        .\gen_arbiter.qual_reg[0]_i_2_0 (\gen_arbiter.qual_reg[0]_i_2_0 ),
        .\gen_single_issue.active_target_hot_2 (\gen_single_issue.active_target_hot_2 ),
        .\gen_single_issue.active_target_hot_3 (\gen_single_issue.active_target_hot_3 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[1]_0 (\m_payload_i_reg[1] ),
        .\m_payload_i_reg[2]_0 (\m_payload_i_reg[2] ),
        .\m_payload_i_reg[3]_0 (\m_payload_i_reg[3] ),
        .m_valid_i_reg_0(m_valid_i_reg_0),
        .m_valid_i_reg_1(m_valid_i_reg_1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_axi_bvalid[0]_0 (\s_axi_bvalid[0]_0 ),
        .s_axi_bvalid_0_sp_1(s_axi_bvalid_0_sn_1),
        .s_ready_i_reg_0(s_ready_i_reg_0),
        .valid_qual_i3__2_0(valid_qual_i3__2_0));
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_18 \r.r_pipe 
       (.D(D),
        .E(E),
        .Q(Q),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aclk(aclk),
        .\gen_arbiter.s_ready_i_reg[0] (\gen_arbiter.s_ready_i_reg[0] ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0] (\gen_master_slots[0].r_issuing_cnt_reg[0] ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_0 (\gen_master_slots[0].r_issuing_cnt_reg[0]_0 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[2] (\gen_master_slots[0].r_issuing_cnt_reg[2] ),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt ),
        .\gen_single_issue.accept_cnt_reg (\gen_single_issue.accept_cnt_reg ),
        .\gen_single_issue.active_target_hot (\gen_single_issue.active_target_hot ),
        .\gen_single_issue.active_target_hot_1 (\gen_single_issue.active_target_hot_1 ),
        .\gen_single_thread.active_target_hot_4 (\gen_single_thread.active_target_hot_4 ),
        .\gen_single_thread.active_target_hot_5 (\gen_single_thread.active_target_hot_5 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[34]_0 (\m_payload_i_reg[34] ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_2),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in),
        .s_axi_arvalid(s_axi_arvalid),
        .\s_axi_arvalid[0] (\s_axi_arvalid[0] ),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0_sp_1(s_axi_rready_0_sn_1),
        .s_axi_rvalid(s_axi_rvalid),
        .\s_axi_rvalid[0]_0 (\s_axi_rvalid[0]_0 ),
        .\s_axi_rvalid[1]_0 (\s_axi_rvalid[1]_0 ),
        .\s_axi_rvalid[2]_0 (\s_axi_rvalid[2]_0 ),
        .\s_axi_rvalid[3] (\s_axi_rvalid[3] ),
        .\s_axi_rvalid[3]_0 (\s_axi_rvalid[3]_0 ),
        .s_axi_rvalid_0_sp_1(s_axi_rvalid_0_sn_1),
        .s_axi_rvalid_1_sp_1(s_axi_rvalid_1_sn_1),
        .s_axi_rvalid_2_sp_1(s_axi_rvalid_2_sn_1),
        .s_ready_i_reg_0(s_ready_i_reg),
        .valid_qual_i(valid_qual_i),
        .valid_qual_i1__1(valid_qual_i1__1),
        .valid_qual_i3__2(valid_qual_i3__2));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axi_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_1
   (m_axi_bready,
    p_1_in,
    s_ready_i_reg,
    \m_payload_i_reg[2] ,
    D,
    \m_payload_i_reg[36] ,
    E,
    \m_payload_i_reg[34] ,
    valid_qual_i3__2,
    valid_qual_i3__2_0,
    m_valid_i_reg,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[2]_0 ,
    \m_payload_i_reg[2]_1 ,
    p_2_in,
    \m_payload_i_reg[35]_0 ,
    \m_payload_i_reg[35]_1 ,
    \aresetn_d_reg[0] ,
    \m_payload_i_reg[1] ,
    p_0_in,
    aclk,
    aresetn,
    m_axi_bvalid,
    s_ready_i_reg_0,
    Q,
    m_axi_rvalid,
    \gen_single_issue.active_target_enc ,
    \gen_master_slots[1].r_issuing_cnt_reg[8] ,
    \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ,
    m_axi_arready,
    \gen_master_slots[1].r_issuing_cnt_reg[10] ,
    aa_mi_arvalid,
    s_axi_rready,
    \gen_single_issue.active_target_enc_1 ,
    \gen_arbiter.qual_reg[0]_i_2 ,
    \gen_arbiter.qual_reg[0]_i_2_0 ,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    \gen_single_issue.active_target_enc_2 ,
    \gen_single_issue.active_target_enc_3 ,
    \gen_single_thread.active_target_enc_4 ,
    \gen_single_thread.active_target_enc_5 ,
    \gen_single_thread.accept_cnt_reg[0] ,
    \gen_single_thread.accept_cnt_reg[0]_0 ,
    s_axi_rlast,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    \m_payload_i_reg[3] );
  output [0:0]m_axi_bready;
  output p_1_in;
  output s_ready_i_reg;
  output \m_payload_i_reg[2] ;
  output [2:0]D;
  output \m_payload_i_reg[36] ;
  output [0:0]E;
  output [34:0]\m_payload_i_reg[34] ;
  output [0:0]valid_qual_i3__2;
  output [0:0]valid_qual_i3__2_0;
  output m_valid_i_reg;
  output \m_payload_i_reg[35] ;
  output \m_payload_i_reg[2]_0 ;
  output \m_payload_i_reg[2]_1 ;
  output p_2_in;
  output \m_payload_i_reg[35]_0 ;
  output \m_payload_i_reg[35]_1 ;
  output \aresetn_d_reg[0] ;
  output [1:0]\m_payload_i_reg[1] ;
  input p_0_in;
  input aclk;
  input aresetn;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;
  input [3:0]Q;
  input [0:0]m_axi_rvalid;
  input [0:0]\gen_single_issue.active_target_enc ;
  input \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  input \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  input [0:0]m_axi_arready;
  input [0:0]\gen_master_slots[1].r_issuing_cnt_reg[10] ;
  input aa_mi_arvalid;
  input [3:0]s_axi_rready;
  input [0:0]\gen_single_issue.active_target_enc_1 ;
  input [1:0]\gen_arbiter.qual_reg[0]_i_2 ;
  input \gen_arbiter.qual_reg[0]_i_2_0 ;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [2:0]s_axi_bready;
  input [0:0]\gen_single_issue.active_target_enc_2 ;
  input [0:0]\gen_single_issue.active_target_enc_3 ;
  input [0:0]\gen_single_thread.active_target_enc_4 ;
  input [0:0]\gen_single_thread.active_target_enc_5 ;
  input \gen_single_thread.accept_cnt_reg[0] ;
  input \gen_single_thread.accept_cnt_reg[0]_0 ;
  input [0:0]s_axi_rlast;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;
  input [3:0]\m_payload_i_reg[3] ;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire aa_mi_arvalid;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0] ;
  wire [1:0]\gen_arbiter.qual_reg[0]_i_2 ;
  wire \gen_arbiter.qual_reg[0]_i_2_0 ;
  wire [0:0]\gen_master_slots[1].r_issuing_cnt_reg[10] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  wire [0:0]\gen_single_issue.active_target_enc ;
  wire [0:0]\gen_single_issue.active_target_enc_1 ;
  wire [0:0]\gen_single_issue.active_target_enc_2 ;
  wire [0:0]\gen_single_issue.active_target_enc_3 ;
  wire \gen_single_thread.accept_cnt_reg[0] ;
  wire \gen_single_thread.accept_cnt_reg[0]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_enc_4 ;
  wire [0:0]\gen_single_thread.active_target_enc_5 ;
  wire [0:0]m_axi_arready;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [1:0]\m_payload_i_reg[1] ;
  wire \m_payload_i_reg[2] ;
  wire \m_payload_i_reg[2]_0 ;
  wire \m_payload_i_reg[2]_1 ;
  wire [34:0]\m_payload_i_reg[34] ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[35]_1 ;
  wire \m_payload_i_reg[36] ;
  wire [3:0]\m_payload_i_reg[3] ;
  wire m_valid_i_reg;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire [2:0]s_axi_bready;
  wire [0:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [0:0]valid_qual_i3__2;
  wire [0:0]valid_qual_i3__2_0;

  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_14 \b.b_pipe 
       (.aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0]_0 (\aresetn_d_reg[0] ),
        .\gen_arbiter.qual_reg[0]_i_2 (\gen_arbiter.qual_reg[0]_i_2 ),
        .\gen_arbiter.qual_reg[0]_i_2_0 (\gen_arbiter.qual_reg[0]_i_2_0 ),
        .\gen_single_issue.active_target_enc_2 (\gen_single_issue.active_target_enc_2 ),
        .\gen_single_issue.active_target_enc_3 (\gen_single_issue.active_target_enc_3 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[1]_0 (\m_payload_i_reg[1] ),
        .\m_payload_i_reg[2]_0 (\m_payload_i_reg[2] ),
        .\m_payload_i_reg[2]_1 (\m_payload_i_reg[2]_0 ),
        .\m_payload_i_reg[2]_2 (\m_payload_i_reg[2]_1 ),
        .\m_payload_i_reg[3]_0 (\m_payload_i_reg[3] ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg_0(s_ready_i_reg_0),
        .valid_qual_i3__2_0(valid_qual_i3__2_0));
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_15 \r.r_pipe 
       (.D(D),
        .E(E),
        .Q(Q),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aclk(aclk),
        .\gen_master_slots[1].r_issuing_cnt_reg[10] (\gen_master_slots[1].r_issuing_cnt_reg[10] ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8] (\gen_master_slots[1].r_issuing_cnt_reg[8] ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8]_0 (\gen_master_slots[1].r_issuing_cnt_reg[8]_0 ),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc ),
        .\gen_single_issue.active_target_enc_1 (\gen_single_issue.active_target_enc_1 ),
        .\gen_single_thread.accept_cnt_reg[0] (\gen_single_thread.accept_cnt_reg[0] ),
        .\gen_single_thread.accept_cnt_reg[0]_0 (\gen_single_thread.accept_cnt_reg[0]_0 ),
        .\gen_single_thread.active_target_enc_4 (\gen_single_thread.active_target_enc_4 ),
        .\gen_single_thread.active_target_enc_5 (\gen_single_thread.active_target_enc_5 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[34]_0 (\m_payload_i_reg[34] ),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[35]_1 (\m_payload_i_reg[35]_0 ),
        .\m_payload_i_reg[35]_2 (\m_payload_i_reg[35]_1 ),
        .\m_payload_i_reg[36]_0 (\m_payload_i_reg[36] ),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg_0(s_ready_i_reg),
        .valid_qual_i3__2(valid_qual_i3__2));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axi_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_2
   (p_0_in,
    mi_bready_2,
    mi_rready_2,
    \aresetn_d_reg[1] ,
    \m_payload_i_reg[2] ,
    m_valid_i_reg,
    st_mr_rlast,
    \gen_single_issue.accept_cnt_reg ,
    valid_qual_i140_in,
    valid_qual_i1__1,
    \s_axi_araddr[127] ,
    valid_qual_i145_in,
    valid_qual_i142_in,
    m_valid_i_reg_0,
    \s_axi_awaddr[31] ,
    valid_qual_i1__1_0,
    valid_qual_i140_in_1,
    valid_qual_i142_in_2,
    \gen_single_issue.active_target_enc_reg[1] ,
    m_valid_i_reg_1,
    s_axi_bvalid,
    m_valid_i_reg_2,
    m_valid_i_reg_3,
    m_valid_i_reg_4,
    aclk,
    p_1_in,
    \aresetn_d_reg[1]_0 ,
    p_21_in,
    p_15_in,
    p_17_in,
    p_20_in,
    \gen_arbiter.any_grant_reg ,
    \gen_arbiter.any_grant_reg_0 ,
    \gen_arbiter.any_grant_reg_1 ,
    \gen_single_issue.accept_cnt ,
    \gen_arbiter.any_grant_reg_2 ,
    \gen_arbiter.any_grant_reg_3 ,
    \gen_arbiter.any_grant_reg_4 ,
    \gen_single_thread.s_avalid_en ,
    valid_qual_i3__2,
    ADDRESS_HIT_0,
    s_axi_araddr,
    ADDRESS_HIT_0_3,
    ADDRESS_HIT_0_4,
    ADDRESS_HIT_0_5,
    r_issuing_cnt,
    s_axi_rready,
    \gen_single_issue.active_target_enc ,
    \gen_single_issue.active_target_enc_6 ,
    \gen_arbiter.grant_hot_reg[2] ,
    \gen_arbiter.grant_hot_reg[2]_0 ,
    \gen_arbiter.grant_hot_reg[2]_1 ,
    \gen_arbiter.grant_hot_reg[2]_2 ,
    valid_qual_i3__2_7,
    ADDRESS_HIT_0_8,
    s_axi_awaddr,
    ADDRESS_HIT_0_9,
    w_issuing_cnt,
    ADDRESS_HIT_0_10,
    \gen_arbiter.qual_reg_reg[2] ,
    s_axi_bready,
    \gen_single_thread.active_target_enc ,
    \gen_single_issue.active_target_enc_11 ,
    \gen_single_issue.active_target_enc_12 ,
    s_axi_bvalid_1_sp_1,
    \s_axi_bvalid[1]_0 ,
    \gen_single_thread.active_target_enc_13 ,
    \gen_single_thread.active_target_enc_14 ,
    \s_axi_bvalid[2] ,
    \s_axi_bvalid[2]_0 ,
    p_24_in);
  output p_0_in;
  output mi_bready_2;
  output mi_rready_2;
  output \aresetn_d_reg[1] ;
  output \m_payload_i_reg[2] ;
  output m_valid_i_reg;
  output [0:0]st_mr_rlast;
  output \gen_single_issue.accept_cnt_reg ;
  output valid_qual_i140_in;
  output valid_qual_i1__1;
  output \s_axi_araddr[127] ;
  output valid_qual_i145_in;
  output valid_qual_i142_in;
  output m_valid_i_reg_0;
  output \s_axi_awaddr[31] ;
  output valid_qual_i1__1_0;
  output valid_qual_i140_in_1;
  output valid_qual_i142_in_2;
  output \gen_single_issue.active_target_enc_reg[1] ;
  output m_valid_i_reg_1;
  output [1:0]s_axi_bvalid;
  output m_valid_i_reg_2;
  output m_valid_i_reg_3;
  output m_valid_i_reg_4;
  input aclk;
  input p_1_in;
  input \aresetn_d_reg[1]_0 ;
  input p_21_in;
  input p_15_in;
  input p_17_in;
  input [1:0]p_20_in;
  input \gen_arbiter.any_grant_reg ;
  input \gen_arbiter.any_grant_reg_0 ;
  input \gen_arbiter.any_grant_reg_1 ;
  input \gen_single_issue.accept_cnt ;
  input \gen_arbiter.any_grant_reg_2 ;
  input \gen_arbiter.any_grant_reg_3 ;
  input \gen_arbiter.any_grant_reg_4 ;
  input \gen_single_thread.s_avalid_en ;
  input [1:0]valid_qual_i3__2;
  input ADDRESS_HIT_0;
  input [7:0]s_axi_araddr;
  input ADDRESS_HIT_0_3;
  input ADDRESS_HIT_0_4;
  input ADDRESS_HIT_0_5;
  input [0:0]r_issuing_cnt;
  input [3:0]s_axi_rready;
  input [0:0]\gen_single_issue.active_target_enc ;
  input [0:0]\gen_single_issue.active_target_enc_6 ;
  input \gen_arbiter.grant_hot_reg[2] ;
  input \gen_arbiter.grant_hot_reg[2]_0 ;
  input \gen_arbiter.grant_hot_reg[2]_1 ;
  input \gen_arbiter.grant_hot_reg[2]_2 ;
  input [1:0]valid_qual_i3__2_7;
  input ADDRESS_HIT_0_8;
  input [3:0]s_axi_awaddr;
  input ADDRESS_HIT_0_9;
  input [0:0]w_issuing_cnt;
  input ADDRESS_HIT_0_10;
  input \gen_arbiter.qual_reg_reg[2] ;
  input [2:0]s_axi_bready;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [0:0]\gen_single_issue.active_target_enc_11 ;
  input [0:0]\gen_single_issue.active_target_enc_12 ;
  input s_axi_bvalid_1_sp_1;
  input \s_axi_bvalid[1]_0 ;
  input [0:0]\gen_single_thread.active_target_enc_13 ;
  input [0:0]\gen_single_thread.active_target_enc_14 ;
  input \s_axi_bvalid[2] ;
  input \s_axi_bvalid[2]_0 ;
  input [1:0]p_24_in;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_10;
  wire ADDRESS_HIT_0_3;
  wire ADDRESS_HIT_0_4;
  wire ADDRESS_HIT_0_5;
  wire ADDRESS_HIT_0_8;
  wire ADDRESS_HIT_0_9;
  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire \gen_arbiter.any_grant_reg ;
  wire \gen_arbiter.any_grant_reg_0 ;
  wire \gen_arbiter.any_grant_reg_1 ;
  wire \gen_arbiter.any_grant_reg_2 ;
  wire \gen_arbiter.any_grant_reg_3 ;
  wire \gen_arbiter.any_grant_reg_4 ;
  wire \gen_arbiter.grant_hot_reg[2] ;
  wire \gen_arbiter.grant_hot_reg[2]_0 ;
  wire \gen_arbiter.grant_hot_reg[2]_1 ;
  wire \gen_arbiter.grant_hot_reg[2]_2 ;
  wire \gen_arbiter.qual_reg_reg[2] ;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_reg ;
  wire [0:0]\gen_single_issue.active_target_enc ;
  wire [0:0]\gen_single_issue.active_target_enc_11 ;
  wire [0:0]\gen_single_issue.active_target_enc_12 ;
  wire [0:0]\gen_single_issue.active_target_enc_6 ;
  wire \gen_single_issue.active_target_enc_reg[1] ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_enc_13 ;
  wire [0:0]\gen_single_thread.active_target_enc_14 ;
  wire \gen_single_thread.s_avalid_en ;
  wire \m_payload_i_reg[2] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire m_valid_i_reg_3;
  wire m_valid_i_reg_4;
  wire mi_bready_2;
  wire mi_rready_2;
  wire p_0_in;
  wire p_15_in;
  wire p_17_in;
  wire p_1_in;
  wire [1:0]p_20_in;
  wire p_21_in;
  wire [1:0]p_24_in;
  wire [0:0]r_issuing_cnt;
  wire [7:0]s_axi_araddr;
  wire \s_axi_araddr[127] ;
  wire [3:0]s_axi_awaddr;
  wire \s_axi_awaddr[31] ;
  wire [2:0]s_axi_bready;
  wire [1:0]s_axi_bvalid;
  wire \s_axi_bvalid[1]_0 ;
  wire \s_axi_bvalid[2] ;
  wire \s_axi_bvalid[2]_0 ;
  wire s_axi_bvalid_1_sn_1;
  wire [3:0]s_axi_rready;
  wire [0:0]st_mr_rlast;
  wire valid_qual_i140_in;
  wire valid_qual_i140_in_1;
  wire valid_qual_i142_in;
  wire valid_qual_i142_in_2;
  wire valid_qual_i145_in;
  wire valid_qual_i1__1;
  wire valid_qual_i1__1_0;
  wire [1:0]valid_qual_i3__2;
  wire [1:0]valid_qual_i3__2_7;
  wire [0:0]w_issuing_cnt;

  assign s_axi_bvalid_1_sn_1 = s_axi_bvalid_1_sp_1;
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1 \b.b_pipe 
       (.ADDRESS_HIT_0_10(ADDRESS_HIT_0_10),
        .ADDRESS_HIT_0_8(ADDRESS_HIT_0_8),
        .ADDRESS_HIT_0_9(ADDRESS_HIT_0_9),
        .aclk(aclk),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .\aresetn_d_reg[1]_1 (\aresetn_d_reg[1]_0 ),
        .\gen_arbiter.grant_hot_reg[2] (\gen_arbiter.grant_hot_reg[2] ),
        .\gen_arbiter.grant_hot_reg[2]_0 (\gen_arbiter.grant_hot_reg[2]_0 ),
        .\gen_arbiter.grant_hot_reg[2]_1 (\gen_arbiter.grant_hot_reg[2]_1 ),
        .\gen_arbiter.grant_hot_reg[2]_2 (\gen_arbiter.grant_hot_reg[2]_2 ),
        .\gen_arbiter.qual_reg_reg[2] (\gen_arbiter.qual_reg_reg[2] ),
        .\gen_single_issue.active_target_enc_11 (\gen_single_issue.active_target_enc_11 ),
        .\gen_single_issue.active_target_enc_12 (\gen_single_issue.active_target_enc_12 ),
        .\gen_single_issue.active_target_enc_reg[1] (\gen_single_issue.active_target_enc_reg[1] ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\m_payload_i_reg[2]_0 (\m_payload_i_reg[2] ),
        .m_valid_i_reg_0(m_valid_i_reg_2),
        .mi_bready_2(mi_bready_2),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_21_in(p_21_in),
        .p_24_in(p_24_in),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[31] (\s_axi_awaddr[31] ),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_axi_bvalid[1]_0 (\s_axi_bvalid[1]_0 ),
        .\s_axi_bvalid[2] (\s_axi_bvalid[2] ),
        .\s_axi_bvalid[2]_0 (\s_axi_bvalid[2]_0 ),
        .s_axi_bvalid_1_sp_1(s_axi_bvalid_1_sn_1),
        .valid_qual_i140_in_1(valid_qual_i140_in_1),
        .valid_qual_i142_in_2(valid_qual_i142_in_2),
        .valid_qual_i1__1_0(valid_qual_i1__1_0),
        .valid_qual_i3__2_7(valid_qual_i3__2_7),
        .w_issuing_cnt(w_issuing_cnt));
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2 \r.r_pipe 
       (.ADDRESS_HIT_0(ADDRESS_HIT_0),
        .ADDRESS_HIT_0_3(ADDRESS_HIT_0_3),
        .ADDRESS_HIT_0_4(ADDRESS_HIT_0_4),
        .ADDRESS_HIT_0_5(ADDRESS_HIT_0_5),
        .aclk(aclk),
        .\gen_arbiter.any_grant_reg (\gen_arbiter.any_grant_reg ),
        .\gen_arbiter.any_grant_reg_0 (\gen_arbiter.any_grant_reg_0 ),
        .\gen_arbiter.any_grant_reg_1 (\gen_arbiter.any_grant_reg_1 ),
        .\gen_arbiter.any_grant_reg_2 (\gen_arbiter.any_grant_reg_2 ),
        .\gen_arbiter.any_grant_reg_3 (\gen_arbiter.any_grant_reg_3 ),
        .\gen_arbiter.any_grant_reg_4 (\gen_arbiter.any_grant_reg_4 ),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt ),
        .\gen_single_issue.accept_cnt_reg (\gen_single_issue.accept_cnt_reg ),
        .\gen_single_issue.active_target_enc (\gen_single_issue.active_target_enc ),
        .\gen_single_issue.active_target_enc_6 (\gen_single_issue.active_target_enc_6 ),
        .\gen_single_thread.active_target_enc_13 (\gen_single_thread.active_target_enc_13 ),
        .\gen_single_thread.active_target_enc_14 (\gen_single_thread.active_target_enc_14 ),
        .\gen_single_thread.s_avalid_en (\gen_single_thread.s_avalid_en ),
        .\m_payload_i_reg[34]_0 (st_mr_rlast),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .m_valid_i_reg_2(m_valid_i_reg_1),
        .m_valid_i_reg_3(m_valid_i_reg_3),
        .m_valid_i_reg_4(m_valid_i_reg_4),
        .p_0_in(p_0_in),
        .p_15_in(p_15_in),
        .p_17_in(p_17_in),
        .p_1_in(p_1_in),
        .p_20_in(p_20_in),
        .r_issuing_cnt(r_issuing_cnt),
        .s_axi_araddr(s_axi_araddr),
        .\s_axi_araddr[127] (\s_axi_araddr[127] ),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg_0(mi_rready_2),
        .valid_qual_i140_in(valid_qual_i140_in),
        .valid_qual_i142_in(valid_qual_i142_in),
        .valid_qual_i145_in(valid_qual_i145_in),
        .valid_qual_i1__1(valid_qual_i1__1),
        .valid_qual_i3__2(valid_qual_i3__2));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1
   (p_0_in,
    mi_bready_2,
    \aresetn_d_reg[1]_0 ,
    \m_payload_i_reg[2]_0 ,
    \s_axi_awaddr[31] ,
    valid_qual_i1__1_0,
    valid_qual_i140_in_1,
    valid_qual_i142_in_2,
    \gen_single_issue.active_target_enc_reg[1] ,
    s_axi_bvalid,
    m_valid_i_reg_0,
    aclk,
    p_1_in,
    \aresetn_d_reg[1]_1 ,
    p_21_in,
    \gen_arbiter.grant_hot_reg[2] ,
    \gen_arbiter.grant_hot_reg[2]_0 ,
    \gen_arbiter.grant_hot_reg[2]_1 ,
    \gen_arbiter.grant_hot_reg[2]_2 ,
    valid_qual_i3__2_7,
    ADDRESS_HIT_0_8,
    s_axi_awaddr,
    ADDRESS_HIT_0_9,
    w_issuing_cnt,
    ADDRESS_HIT_0_10,
    \gen_arbiter.qual_reg_reg[2] ,
    s_axi_bready,
    \gen_single_thread.active_target_enc ,
    \gen_single_issue.active_target_enc_11 ,
    \gen_single_issue.active_target_enc_12 ,
    s_axi_bvalid_1_sp_1,
    \s_axi_bvalid[1]_0 ,
    \s_axi_bvalid[2] ,
    \s_axi_bvalid[2]_0 ,
    p_24_in);
  output p_0_in;
  output mi_bready_2;
  output \aresetn_d_reg[1]_0 ;
  output \m_payload_i_reg[2]_0 ;
  output \s_axi_awaddr[31] ;
  output valid_qual_i1__1_0;
  output valid_qual_i140_in_1;
  output valid_qual_i142_in_2;
  output \gen_single_issue.active_target_enc_reg[1] ;
  output [1:0]s_axi_bvalid;
  output m_valid_i_reg_0;
  input aclk;
  input p_1_in;
  input \aresetn_d_reg[1]_1 ;
  input p_21_in;
  input \gen_arbiter.grant_hot_reg[2] ;
  input \gen_arbiter.grant_hot_reg[2]_0 ;
  input \gen_arbiter.grant_hot_reg[2]_1 ;
  input \gen_arbiter.grant_hot_reg[2]_2 ;
  input [1:0]valid_qual_i3__2_7;
  input ADDRESS_HIT_0_8;
  input [3:0]s_axi_awaddr;
  input ADDRESS_HIT_0_9;
  input [0:0]w_issuing_cnt;
  input ADDRESS_HIT_0_10;
  input \gen_arbiter.qual_reg_reg[2] ;
  input [2:0]s_axi_bready;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [0:0]\gen_single_issue.active_target_enc_11 ;
  input [0:0]\gen_single_issue.active_target_enc_12 ;
  input s_axi_bvalid_1_sp_1;
  input \s_axi_bvalid[1]_0 ;
  input \s_axi_bvalid[2] ;
  input \s_axi_bvalid[2]_0 ;
  input [1:0]p_24_in;

  wire ADDRESS_HIT_0_10;
  wire ADDRESS_HIT_0_8;
  wire ADDRESS_HIT_0_9;
  wire aclk;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire \gen_arbiter.grant_hot_reg[2] ;
  wire \gen_arbiter.grant_hot_reg[2]_0 ;
  wire \gen_arbiter.grant_hot_reg[2]_1 ;
  wire \gen_arbiter.grant_hot_reg[2]_2 ;
  wire \gen_arbiter.qual_reg[1]_i_4_n_0 ;
  wire \gen_arbiter.qual_reg[1]_i_5_n_0 ;
  wire \gen_arbiter.qual_reg_reg[2] ;
  wire [0:0]\gen_single_issue.active_target_enc_11 ;
  wire [0:0]\gen_single_issue.active_target_enc_12 ;
  wire \gen_single_issue.active_target_enc_reg[1] ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire \m_payload_i[2]_i_1_n_0 ;
  wire \m_payload_i[3]_i_1_n_0 ;
  wire \m_payload_i_reg[2]_0 ;
  wire m_valid_i_i_1_n_0;
  wire m_valid_i_i_3_n_0;
  wire m_valid_i_reg_0;
  wire mi_bready_2;
  wire p_0_in;
  wire p_0_in60_in;
  wire p_1_in;
  wire p_21_in;
  wire [1:0]p_24_in;
  wire [3:0]s_axi_awaddr;
  wire \s_axi_awaddr[31] ;
  wire [2:0]s_axi_bready;
  wire [1:0]s_axi_bvalid;
  wire \s_axi_bvalid[1]_0 ;
  wire \s_axi_bvalid[2] ;
  wire \s_axi_bvalid[2]_0 ;
  wire s_axi_bvalid_1_sn_1;
  wire s_ready_i_i_1__2_n_0;
  wire [5:4]st_mr_bid;
  wire [2:2]st_mr_bvalid;
  wire valid_qual_i140_in_1;
  wire valid_qual_i142_in_2;
  wire valid_qual_i1__1_0;
  wire [1:0]valid_qual_i3__2_7;
  wire [0:0]w_issuing_cnt;

  assign s_axi_bvalid_1_sn_1 = s_axi_bvalid_1_sp_1;
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[1]_1 ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \gen_arbiter.last_rr_hot[3]_i_4 
       (.I0(valid_qual_i1__1_0),
        .I1(\gen_arbiter.grant_hot_reg[2] ),
        .I2(\gen_arbiter.grant_hot_reg[2]_0 ),
        .I3(valid_qual_i140_in_1),
        .I4(\gen_arbiter.grant_hot_reg[2]_1 ),
        .I5(\gen_arbiter.grant_hot_reg[2]_2 ),
        .O(\s_axi_awaddr[31] ));
  LUT6 #(
    .INIT(64'hCCAACCAAFCF0CCAA)) 
    \gen_arbiter.qual_reg[0]_i_2 
       (.I0(\gen_arbiter.qual_reg[1]_i_4_n_0 ),
        .I1(valid_qual_i3__2_7[0]),
        .I2(valid_qual_i3__2_7[1]),
        .I3(ADDRESS_HIT_0_8),
        .I4(s_axi_awaddr[1]),
        .I5(s_axi_awaddr[0]),
        .O(valid_qual_i1__1_0));
  LUT6 #(
    .INIT(64'hCCAACCAAFCF0CCAA)) 
    \gen_arbiter.qual_reg[1]_i_2__0 
       (.I0(\gen_arbiter.qual_reg[1]_i_4_n_0 ),
        .I1(valid_qual_i3__2_7[0]),
        .I2(valid_qual_i3__2_7[1]),
        .I3(ADDRESS_HIT_0_9),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[2]),
        .O(valid_qual_i140_in_1));
  LUT6 #(
    .INIT(64'hA8888888FFFFFFFF)) 
    \gen_arbiter.qual_reg[1]_i_4 
       (.I0(st_mr_bvalid),
        .I1(m_valid_i_i_3_n_0),
        .I2(s_axi_bready[2]),
        .I3(\gen_single_thread.active_target_enc ),
        .I4(\gen_arbiter.qual_reg[1]_i_5_n_0 ),
        .I5(w_issuing_cnt),
        .O(\gen_arbiter.qual_reg[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.qual_reg[1]_i_5 
       (.I0(st_mr_bid[5]),
        .I1(st_mr_bid[4]),
        .O(\gen_arbiter.qual_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0DDDDFFF0FF00)) 
    \gen_arbiter.qual_reg[2]_i_2 
       (.I0(w_issuing_cnt),
        .I1(\m_payload_i_reg[2]_0 ),
        .I2(valid_qual_i3__2_7[0]),
        .I3(valid_qual_i3__2_7[1]),
        .I4(ADDRESS_HIT_0_10),
        .I5(\gen_arbiter.qual_reg_reg[2] ),
        .O(valid_qual_i142_in_2));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.qual_reg[2]_i_9 
       (.I0(st_mr_bvalid),
        .I1(\gen_single_thread.active_target_enc ),
        .I2(st_mr_bid[4]),
        .I3(st_mr_bid[5]),
        .O(m_valid_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[2]_i_1 
       (.I0(p_24_in[0]),
        .I1(st_mr_bvalid),
        .I2(st_mr_bid[4]),
        .O(\m_payload_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[3]_i_1 
       (.I0(p_24_in[1]),
        .I1(st_mr_bvalid),
        .I2(st_mr_bid[5]),
        .O(\m_payload_i[3]_i_1_n_0 ));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[2]_i_1_n_0 ),
        .Q(st_mr_bid[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[3]_i_1_n_0 ),
        .Q(st_mr_bid[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8B)) 
    m_valid_i_i_1
       (.I0(p_21_in),
        .I1(mi_bready_2),
        .I2(p_0_in60_in),
        .O(m_valid_i_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_valid_i_i_1__7
       (.I0(\aresetn_d_reg[1]_0 ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    m_valid_i_i_2__0
       (.I0(m_valid_i_i_3_n_0),
        .I1(s_axi_bready[2]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(st_mr_bid[5]),
        .I4(st_mr_bid[4]),
        .O(p_0_in60_in));
  LUT6 #(
    .INIT(64'h000000008888F000)) 
    m_valid_i_i_3
       (.I0(s_axi_bready[1]),
        .I1(\gen_single_issue.active_target_enc_11 ),
        .I2(s_axi_bready[0]),
        .I3(\gen_single_issue.active_target_enc_12 ),
        .I4(st_mr_bid[4]),
        .I5(st_mr_bid[5]),
        .O(m_valid_i_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(st_mr_bvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_bvalid[0]_INST_0_i_2 
       (.I0(\gen_single_issue.active_target_enc_12 ),
        .I1(st_mr_bvalid),
        .I2(st_mr_bid[5]),
        .I3(st_mr_bid[4]),
        .O(\gen_single_issue.active_target_enc_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAAAAA)) 
    \s_axi_bvalid[1]_INST_0 
       (.I0(s_axi_bvalid_1_sn_1),
        .I1(st_mr_bvalid),
        .I2(\gen_single_issue.active_target_enc_11 ),
        .I3(st_mr_bid[5]),
        .I4(st_mr_bid[4]),
        .I5(\s_axi_bvalid[1]_0 ),
        .O(s_axi_bvalid[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2000)) 
    \s_axi_bvalid[2]_INST_0 
       (.I0(st_mr_bid[5]),
        .I1(st_mr_bid[4]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(st_mr_bvalid),
        .I4(\s_axi_bvalid[2] ),
        .I5(\s_axi_bvalid[2]_0 ),
        .O(s_axi_bvalid[1]));
  LUT4 #(
    .INIT(16'hABFF)) 
    s_ready_i_i_1__2
       (.I0(\m_payload_i_reg[2]_0 ),
        .I1(p_21_in),
        .I2(st_mr_bvalid),
        .I3(\aresetn_d_reg[1]_0 ),
        .O(s_ready_i_i_1__2_n_0));
  LUT6 #(
    .INIT(64'hFFFF400000000000)) 
    s_ready_i_i_2__1
       (.I0(st_mr_bid[4]),
        .I1(st_mr_bid[5]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(s_axi_bready[2]),
        .I4(m_valid_i_i_3_n_0),
        .I5(st_mr_bvalid),
        .O(\m_payload_i_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__2_n_0),
        .Q(mi_bready_2),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_14
   (m_axi_bready,
    p_1_in,
    \m_payload_i_reg[2]_0 ,
    valid_qual_i3__2_0,
    m_valid_i_reg_0,
    \m_payload_i_reg[2]_1 ,
    \m_payload_i_reg[2]_2 ,
    \aresetn_d_reg[0]_0 ,
    \m_payload_i_reg[1]_0 ,
    p_0_in,
    aclk,
    aresetn,
    m_axi_bvalid,
    s_ready_i_reg_0,
    \gen_arbiter.qual_reg[0]_i_2 ,
    \gen_arbiter.qual_reg[0]_i_2_0 ,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    \gen_single_issue.active_target_enc_2 ,
    \gen_single_issue.active_target_enc_3 ,
    \m_payload_i_reg[3]_0 );
  output [0:0]m_axi_bready;
  output p_1_in;
  output \m_payload_i_reg[2]_0 ;
  output [0:0]valid_qual_i3__2_0;
  output m_valid_i_reg_0;
  output \m_payload_i_reg[2]_1 ;
  output \m_payload_i_reg[2]_2 ;
  output \aresetn_d_reg[0]_0 ;
  output [1:0]\m_payload_i_reg[1]_0 ;
  input p_0_in;
  input aclk;
  input aresetn;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;
  input [1:0]\gen_arbiter.qual_reg[0]_i_2 ;
  input \gen_arbiter.qual_reg[0]_i_2_0 ;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [2:0]s_axi_bready;
  input [0:0]\gen_single_issue.active_target_enc_2 ;
  input [0:0]\gen_single_issue.active_target_enc_3 ;
  input [3:0]\m_payload_i_reg[3]_0 ;

  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0]_0 ;
  wire \aresetn_d_reg_n_0_[0] ;
  wire [1:0]\gen_arbiter.qual_reg[0]_i_2 ;
  wire \gen_arbiter.qual_reg[0]_i_2_0 ;
  wire \gen_arbiter.qual_reg[2]_i_12_n_0 ;
  wire [0:0]\gen_single_issue.active_target_enc_2 ;
  wire [0:0]\gen_single_issue.active_target_enc_3 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i[3]_i_1__0_n_0 ;
  wire [1:0]\m_payload_i_reg[1]_0 ;
  wire \m_payload_i_reg[2]_0 ;
  wire \m_payload_i_reg[2]_1 ;
  wire \m_payload_i_reg[2]_2 ;
  wire [3:0]\m_payload_i_reg[3]_0 ;
  wire m_valid_i_i_1__0_n_0;
  wire m_valid_i_reg_0;
  wire p_0_in;
  wire p_0_in59_in;
  wire p_1_in;
  wire [2:0]s_axi_bready;
  wire s_ready_i_i_2__4_n_0;
  wire s_ready_i_i_4__1_n_0;
  wire s_ready_i_reg_0;
  wire [3:2]st_mr_bid;
  wire [1:1]st_mr_bvalid;
  wire [0:0]valid_qual_i3__2_0;

  LUT2 #(
    .INIT(4'h8)) 
    \aresetn_d[1]_i_1 
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(aresetn),
        .O(\aresetn_d_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_arbiter.qual_reg[2]_i_12 
       (.I0(st_mr_bid[2]),
        .I1(st_mr_bid[3]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(s_axi_bready[2]),
        .O(\gen_arbiter.qual_reg[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFDFDFD)) 
    \gen_arbiter.qual_reg[2]_i_7 
       (.I0(\gen_arbiter.qual_reg[0]_i_2 [1]),
        .I1(\gen_arbiter.qual_reg[0]_i_2_0 ),
        .I2(\gen_arbiter.qual_reg[0]_i_2 [0]),
        .I3(st_mr_bvalid),
        .I4(s_ready_i_i_4__1_n_0),
        .I5(\gen_arbiter.qual_reg[2]_i_12_n_0 ),
        .O(valid_qual_i3__2_0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[3]_i_1__0 
       (.I0(st_mr_bvalid),
        .O(\m_payload_i[3]_i_1__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[3]_0 [0]),
        .Q(\m_payload_i_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[3]_0 [1]),
        .Q(\m_payload_i_reg[1]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[3]_0 [2]),
        .Q(st_mr_bid[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[3]_0 [3]),
        .Q(st_mr_bid[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8B)) 
    m_valid_i_i_1__0
       (.I0(m_axi_bvalid),
        .I1(m_axi_bready),
        .I2(p_0_in59_in),
        .O(m_valid_i_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    m_valid_i_i_2__1
       (.I0(s_ready_i_i_4__1_n_0),
        .I1(s_axi_bready[2]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(st_mr_bid[3]),
        .I4(st_mr_bid[2]),
        .O(p_0_in59_in));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__0_n_0),
        .Q(st_mr_bvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \s_axi_bvalid[0]_INST_0_i_1 
       (.I0(st_mr_bvalid),
        .I1(\gen_single_issue.active_target_enc_3 ),
        .I2(st_mr_bid[3]),
        .I3(st_mr_bid[2]),
        .O(m_valid_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_bvalid[1]_INST_0_i_2 
       (.I0(st_mr_bid[2]),
        .I1(\gen_single_issue.active_target_enc_2 ),
        .I2(st_mr_bid[3]),
        .I3(st_mr_bvalid),
        .O(\m_payload_i_reg[2]_1 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_bvalid[2]_INST_0_i_1 
       (.I0(st_mr_bid[2]),
        .I1(\gen_single_thread.active_target_enc ),
        .I2(st_mr_bvalid),
        .I3(st_mr_bid[3]),
        .O(\m_payload_i_reg[2]_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    s_ready_i_i_1__1
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .O(p_1_in));
  LUT4 #(
    .INIT(16'h57FF)) 
    s_ready_i_i_2__4
       (.I0(\m_payload_i_reg[2]_0 ),
        .I1(m_axi_bvalid),
        .I2(st_mr_bvalid),
        .I3(s_ready_i_reg_0),
        .O(s_ready_i_i_2__4_n_0));
  LUT6 #(
    .INIT(64'h0000BFFFFFFFFFFF)) 
    s_ready_i_i_3
       (.I0(st_mr_bid[2]),
        .I1(st_mr_bid[3]),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(s_axi_bready[2]),
        .I4(s_ready_i_i_4__1_n_0),
        .I5(st_mr_bvalid),
        .O(\m_payload_i_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF08F008000800080)) 
    s_ready_i_i_4__1
       (.I0(s_axi_bready[1]),
        .I1(\gen_single_issue.active_target_enc_2 ),
        .I2(st_mr_bid[2]),
        .I3(st_mr_bid[3]),
        .I4(s_axi_bready[0]),
        .I5(\gen_single_issue.active_target_enc_3 ),
        .O(s_ready_i_i_4__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_2__4_n_0),
        .Q(m_axi_bready),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_17
   (m_axi_bready,
    \m_payload_i_reg[2]_0 ,
    s_axi_bvalid,
    valid_qual_i3__2_0,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    \m_payload_i_reg[1]_0 ,
    p_0_in,
    aclk,
    p_1_in,
    m_axi_bvalid,
    s_ready_i_reg_0,
    s_axi_bvalid_0_sp_1,
    \gen_single_issue.active_target_hot_2 ,
    \s_axi_bvalid[0]_0 ,
    \gen_arbiter.qual_reg[0]_i_2 ,
    \gen_arbiter.qual_reg[0]_i_2_0 ,
    \gen_single_thread.active_target_hot ,
    s_axi_bready,
    \gen_single_issue.active_target_hot_3 ,
    \m_payload_i_reg[3]_0 );
  output [0:0]m_axi_bready;
  output \m_payload_i_reg[2]_0 ;
  output [0:0]s_axi_bvalid;
  output [0:0]valid_qual_i3__2_0;
  output m_valid_i_reg_0;
  output m_valid_i_reg_1;
  output [1:0]\m_payload_i_reg[1]_0 ;
  input p_0_in;
  input aclk;
  input p_1_in;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;
  input s_axi_bvalid_0_sp_1;
  input [0:0]\gen_single_issue.active_target_hot_2 ;
  input \s_axi_bvalid[0]_0 ;
  input \gen_arbiter.qual_reg[0]_i_2 ;
  input [1:0]\gen_arbiter.qual_reg[0]_i_2_0 ;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [2:0]s_axi_bready;
  input [0:0]\gen_single_issue.active_target_hot_3 ;
  input [3:0]\m_payload_i_reg[3]_0 ;

  wire aclk;
  wire \gen_arbiter.qual_reg[0]_i_2 ;
  wire [1:0]\gen_arbiter.qual_reg[0]_i_2_0 ;
  wire \gen_arbiter.qual_reg[2]_i_10_n_0 ;
  wire [0:0]\gen_single_issue.active_target_hot_2 ;
  wire [0:0]\gen_single_issue.active_target_hot_3 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i[3]_i_1_n_0 ;
  wire [1:0]\m_payload_i_reg[1]_0 ;
  wire \m_payload_i_reg[2]_0 ;
  wire [3:0]\m_payload_i_reg[3]_0 ;
  wire m_valid_i_i_2__2_n_0;
  wire m_valid_i_i_3__0_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire p_0_in;
  wire p_1_in;
  wire [2:0]s_axi_bready;
  wire [0:0]s_axi_bvalid;
  wire \s_axi_bvalid[0]_0 ;
  wire s_axi_bvalid_0_sn_1;
  wire s_ready_i_i_1__3_n_0;
  wire s_ready_i_i_3__0_n_0;
  wire s_ready_i_reg_0;
  wire [1:0]st_mr_bid;
  wire [0:0]st_mr_bvalid;
  wire [0:0]valid_qual_i3__2_0;

  assign s_axi_bvalid_0_sn_1 = s_axi_bvalid_0_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_arbiter.qual_reg[2]_i_10 
       (.I0(st_mr_bid[0]),
        .I1(st_mr_bid[1]),
        .I2(\gen_single_thread.active_target_hot ),
        .I3(s_axi_bready[2]),
        .O(\gen_arbiter.qual_reg[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0FFFF)) 
    \gen_arbiter.qual_reg[2]_i_6 
       (.I0(\gen_arbiter.qual_reg[2]_i_10_n_0 ),
        .I1(s_ready_i_i_3__0_n_0),
        .I2(st_mr_bvalid),
        .I3(\gen_arbiter.qual_reg[0]_i_2 ),
        .I4(\gen_arbiter.qual_reg[0]_i_2_0 [1]),
        .I5(\gen_arbiter.qual_reg[0]_i_2_0 [0]),
        .O(valid_qual_i3__2_0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[3]_i_1 
       (.I0(st_mr_bvalid),
        .O(\m_payload_i[3]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(\m_payload_i_reg[3]_0 [0]),
        .Q(\m_payload_i_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(\m_payload_i_reg[3]_0 [1]),
        .Q(\m_payload_i_reg[1]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(\m_payload_i_reg[3]_0 [2]),
        .Q(st_mr_bid[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(\m_payload_i_reg[3]_0 [3]),
        .Q(st_mr_bid[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8B)) 
    m_valid_i_i_2__2
       (.I0(m_axi_bvalid),
        .I1(m_axi_bready),
        .I2(m_valid_i_i_3__0_n_0),
        .O(m_valid_i_i_2__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    m_valid_i_i_3__0
       (.I0(s_ready_i_i_3__0_n_0),
        .I1(s_axi_bready[2]),
        .I2(\gen_single_thread.active_target_hot ),
        .I3(st_mr_bid[1]),
        .I4(st_mr_bid[0]),
        .O(m_valid_i_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_2__2_n_0),
        .Q(st_mr_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAEA)) 
    \s_axi_bvalid[0]_INST_0 
       (.I0(s_axi_bvalid_0_sn_1),
        .I1(\gen_single_issue.active_target_hot_2 ),
        .I2(st_mr_bvalid),
        .I3(st_mr_bid[1]),
        .I4(st_mr_bid[0]),
        .I5(\s_axi_bvalid[0]_0 ),
        .O(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_bvalid[1]_INST_0_i_1 
       (.I0(st_mr_bvalid),
        .I1(\gen_single_issue.active_target_hot_3 ),
        .I2(st_mr_bid[1]),
        .I3(st_mr_bid[0]),
        .O(m_valid_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_bvalid[2]_INST_0_i_2 
       (.I0(st_mr_bvalid),
        .I1(\gen_single_thread.active_target_hot ),
        .I2(st_mr_bid[0]),
        .I3(st_mr_bid[1]),
        .O(m_valid_i_reg_1));
  LUT4 #(
    .INIT(16'h57FF)) 
    s_ready_i_i_1__3
       (.I0(\m_payload_i_reg[2]_0 ),
        .I1(m_axi_bvalid),
        .I2(st_mr_bvalid),
        .I3(s_ready_i_reg_0),
        .O(s_ready_i_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0000BFFFFFFFFFFF)) 
    s_ready_i_i_2__2
       (.I0(st_mr_bid[0]),
        .I1(st_mr_bid[1]),
        .I2(\gen_single_thread.active_target_hot ),
        .I3(s_axi_bready[2]),
        .I4(s_ready_i_i_3__0_n_0),
        .I5(st_mr_bvalid),
        .O(\m_payload_i_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF08F008000800080)) 
    s_ready_i_i_3__0
       (.I0(s_axi_bready[1]),
        .I1(\gen_single_issue.active_target_hot_3 ),
        .I2(st_mr_bid[0]),
        .I3(st_mr_bid[1]),
        .I4(s_axi_bready[0]),
        .I5(\gen_single_issue.active_target_hot_2 ),
        .O(s_ready_i_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__3_n_0),
        .Q(m_axi_bready),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2
   (s_ready_i_reg_0,
    m_valid_i_reg_0,
    \m_payload_i_reg[34]_0 ,
    \gen_single_issue.accept_cnt_reg ,
    valid_qual_i140_in,
    valid_qual_i1__1,
    \s_axi_araddr[127] ,
    valid_qual_i145_in,
    valid_qual_i142_in,
    m_valid_i_reg_1,
    m_valid_i_reg_2,
    m_valid_i_reg_3,
    m_valid_i_reg_4,
    p_0_in,
    aclk,
    p_1_in,
    p_15_in,
    p_17_in,
    p_20_in,
    \gen_arbiter.any_grant_reg ,
    \gen_arbiter.any_grant_reg_0 ,
    \gen_arbiter.any_grant_reg_1 ,
    \gen_single_issue.accept_cnt ,
    \gen_arbiter.any_grant_reg_2 ,
    \gen_arbiter.any_grant_reg_3 ,
    \gen_arbiter.any_grant_reg_4 ,
    \gen_single_thread.s_avalid_en ,
    valid_qual_i3__2,
    ADDRESS_HIT_0,
    s_axi_araddr,
    ADDRESS_HIT_0_3,
    ADDRESS_HIT_0_4,
    ADDRESS_HIT_0_5,
    r_issuing_cnt,
    s_axi_rready,
    \gen_single_issue.active_target_enc ,
    \gen_single_issue.active_target_enc_6 ,
    \gen_single_thread.active_target_enc_13 ,
    \gen_single_thread.active_target_enc_14 );
  output s_ready_i_reg_0;
  output m_valid_i_reg_0;
  output \m_payload_i_reg[34]_0 ;
  output \gen_single_issue.accept_cnt_reg ;
  output valid_qual_i140_in;
  output valid_qual_i1__1;
  output \s_axi_araddr[127] ;
  output valid_qual_i145_in;
  output valid_qual_i142_in;
  output m_valid_i_reg_1;
  output m_valid_i_reg_2;
  output m_valid_i_reg_3;
  output m_valid_i_reg_4;
  input p_0_in;
  input aclk;
  input p_1_in;
  input p_15_in;
  input p_17_in;
  input [1:0]p_20_in;
  input \gen_arbiter.any_grant_reg ;
  input \gen_arbiter.any_grant_reg_0 ;
  input \gen_arbiter.any_grant_reg_1 ;
  input \gen_single_issue.accept_cnt ;
  input \gen_arbiter.any_grant_reg_2 ;
  input \gen_arbiter.any_grant_reg_3 ;
  input \gen_arbiter.any_grant_reg_4 ;
  input \gen_single_thread.s_avalid_en ;
  input [1:0]valid_qual_i3__2;
  input ADDRESS_HIT_0;
  input [7:0]s_axi_araddr;
  input ADDRESS_HIT_0_3;
  input ADDRESS_HIT_0_4;
  input ADDRESS_HIT_0_5;
  input [0:0]r_issuing_cnt;
  input [3:0]s_axi_rready;
  input [0:0]\gen_single_issue.active_target_enc ;
  input [0:0]\gen_single_issue.active_target_enc_6 ;
  input [0:0]\gen_single_thread.active_target_enc_13 ;
  input [0:0]\gen_single_thread.active_target_enc_14 ;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_3;
  wire ADDRESS_HIT_0_4;
  wire ADDRESS_HIT_0_5;
  wire aclk;
  wire \gen_arbiter.any_grant_reg ;
  wire \gen_arbiter.any_grant_reg_0 ;
  wire \gen_arbiter.any_grant_reg_1 ;
  wire \gen_arbiter.any_grant_reg_2 ;
  wire \gen_arbiter.any_grant_reg_3 ;
  wire \gen_arbiter.any_grant_reg_4 ;
  wire \gen_arbiter.qual_reg[3]_i_6_n_0 ;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_reg ;
  wire [0:0]\gen_single_issue.active_target_enc ;
  wire [0:0]\gen_single_issue.active_target_enc_6 ;
  wire [0:0]\gen_single_thread.active_target_enc_13 ;
  wire [0:0]\gen_single_thread.active_target_enc_14 ;
  wire \gen_single_thread.s_avalid_en ;
  wire \m_payload_i[34]_i_1__1_n_0 ;
  wire \m_payload_i[35]_i_1__1_n_0 ;
  wire \m_payload_i[36]_i_1__1_n_0 ;
  wire \m_payload_i_reg[34]_0 ;
  wire m_valid_i0;
  wire m_valid_i_i_3__1_n_0;
  wire m_valid_i_i_4_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire m_valid_i_reg_3;
  wire m_valid_i_reg_4;
  wire p_0_in;
  wire p_15_in;
  wire p_17_in;
  wire p_1_in;
  wire [1:0]p_20_in;
  wire [0:0]r_issuing_cnt;
  wire [11:11]rready_carry;
  wire [7:0]s_axi_araddr;
  wire \s_axi_araddr[127] ;
  wire [3:0]s_axi_rready;
  wire s_ready_i_i_1__4_n_0;
  wire s_ready_i_reg_0;
  wire [36:34]skid_buffer;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire [5:4]st_mr_rid;
  wire [2:2]st_mr_rvalid;
  wire valid_qual_i140_in;
  wire valid_qual_i142_in;
  wire valid_qual_i145_in;
  wire valid_qual_i1__1;
  wire [1:0]valid_qual_i3__2;

  LUT6 #(
    .INIT(64'hF888F8F888888888)) 
    \gen_arbiter.any_grant_i_2 
       (.I0(valid_qual_i140_in),
        .I1(\gen_arbiter.any_grant_reg ),
        .I2(\gen_arbiter.any_grant_reg_0 ),
        .I3(\gen_arbiter.any_grant_reg_1 ),
        .I4(\gen_single_issue.accept_cnt ),
        .I5(valid_qual_i1__1),
        .O(\gen_single_issue.accept_cnt_reg ));
  LUT6 #(
    .INIT(64'hFF08080808080808)) 
    \gen_arbiter.any_grant_i_3 
       (.I0(valid_qual_i145_in),
        .I1(\gen_arbiter.any_grant_reg_2 ),
        .I2(\gen_arbiter.any_grant_reg_3 ),
        .I3(valid_qual_i142_in),
        .I4(\gen_arbiter.any_grant_reg_4 ),
        .I5(\gen_single_thread.s_avalid_en ),
        .O(\s_axi_araddr[127] ));
  LUT6 #(
    .INIT(64'hCCAAFCF0CCAACCAA)) 
    \gen_arbiter.last_rr_hot[3]_i_13 
       (.I0(\gen_arbiter.qual_reg[3]_i_6_n_0 ),
        .I1(valid_qual_i3__2[0]),
        .I2(valid_qual_i3__2[1]),
        .I3(ADDRESS_HIT_0_5),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(valid_qual_i1__1));
  LUT6 #(
    .INIT(64'hCCAAFCF0CCAACCAA)) 
    \gen_arbiter.qual_reg[1]_i_2 
       (.I0(\gen_arbiter.qual_reg[3]_i_6_n_0 ),
        .I1(valid_qual_i3__2[0]),
        .I2(valid_qual_i3__2[1]),
        .I3(ADDRESS_HIT_0_4),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[3]),
        .O(valid_qual_i140_in));
  LUT6 #(
    .INIT(64'hCCAACCAAFCF0CCAA)) 
    \gen_arbiter.qual_reg[2]_i_3 
       (.I0(\gen_arbiter.qual_reg[3]_i_6_n_0 ),
        .I1(valid_qual_i3__2[0]),
        .I2(valid_qual_i3__2[1]),
        .I3(ADDRESS_HIT_0_3),
        .I4(s_axi_araddr[5]),
        .I5(s_axi_araddr[4]),
        .O(valid_qual_i142_in));
  LUT6 #(
    .INIT(64'hCCAACCAAFCF0CCAA)) 
    \gen_arbiter.qual_reg[3]_i_2 
       (.I0(\gen_arbiter.qual_reg[3]_i_6_n_0 ),
        .I1(valid_qual_i3__2[0]),
        .I2(valid_qual_i3__2[1]),
        .I3(ADDRESS_HIT_0),
        .I4(s_axi_araddr[7]),
        .I5(s_axi_araddr[6]),
        .O(valid_qual_i145_in));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hE000FFFF)) 
    \gen_arbiter.qual_reg[3]_i_6 
       (.I0(m_valid_i_i_3__1_n_0),
        .I1(m_valid_i_i_4_n_0),
        .I2(\m_payload_i_reg[34]_0 ),
        .I3(st_mr_rvalid),
        .I4(r_issuing_cnt),
        .O(\gen_arbiter.qual_reg[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h777F)) 
    \gen_master_slots[2].r_issuing_cnt[16]_i_2 
       (.I0(st_mr_rvalid),
        .I1(\m_payload_i_reg[34]_0 ),
        .I2(m_valid_i_i_4_n_0),
        .I3(m_valid_i_i_3__1_n_0),
        .O(m_valid_i_reg_0));
  LUT6 #(
    .INIT(64'hF4FFF444B0BBB000)) 
    \m_payload_i[34]_i_1__1 
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(p_17_in),
        .I3(s_ready_i_reg_0),
        .I4(\skid_buffer_reg_n_0_[34] ),
        .I5(\m_payload_i_reg[34]_0 ),
        .O(\m_payload_i[34]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF444B0BBB000)) 
    \m_payload_i[35]_i_1__1 
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(p_20_in[0]),
        .I3(s_ready_i_reg_0),
        .I4(\skid_buffer_reg_n_0_[35] ),
        .I5(st_mr_rid[4]),
        .O(\m_payload_i[35]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF444B0BBB000)) 
    \m_payload_i[36]_i_1__1 
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(p_20_in[1]),
        .I3(s_ready_i_reg_0),
        .I4(\skid_buffer_reg_n_0_[36] ),
        .I5(st_mr_rid[5]),
        .O(\m_payload_i[36]_i_1__1_n_0 ));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[34]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[34]_0 ),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[35]_i_1__1_n_0 ),
        .Q(st_mr_rid[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[36]_i_1__1_n_0 ),
        .Q(st_mr_rid[5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF4F)) 
    m_valid_i_i_1__8
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(s_ready_i_reg_0),
        .I3(p_15_in),
        .O(m_valid_i0));
  LUT2 #(
    .INIT(4'hE)) 
    m_valid_i_i_2
       (.I0(m_valid_i_i_3__1_n_0),
        .I1(m_valid_i_i_4_n_0),
        .O(rready_carry));
  LUT6 #(
    .INIT(64'h88880000F0000000)) 
    m_valid_i_i_3__1
       (.I0(\gen_single_thread.active_target_enc_13 ),
        .I1(s_axi_rready[3]),
        .I2(\gen_single_thread.active_target_enc_14 ),
        .I3(s_axi_rready[2]),
        .I4(st_mr_rid[5]),
        .I5(st_mr_rid[4]),
        .O(m_valid_i_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h000000008888F000)) 
    m_valid_i_i_4
       (.I0(s_axi_rready[1]),
        .I1(\gen_single_issue.active_target_enc ),
        .I2(s_axi_rready[0]),
        .I3(\gen_single_issue.active_target_enc_6 ),
        .I4(st_mr_rid[4]),
        .I5(st_mr_rid[5]),
        .O(m_valid_i_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i0),
        .Q(st_mr_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_rvalid[0]_INST_0_i_2 
       (.I0(st_mr_rvalid),
        .I1(\gen_single_issue.active_target_enc_6 ),
        .I2(st_mr_rid[5]),
        .I3(st_mr_rid[4]),
        .O(m_valid_i_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_rvalid[1]_INST_0_i_2 
       (.I0(st_mr_rvalid),
        .I1(\gen_single_issue.active_target_enc ),
        .I2(st_mr_rid[5]),
        .I3(st_mr_rid[4]),
        .O(m_valid_i_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_rvalid[2]_INST_0_i_2 
       (.I0(st_mr_rvalid),
        .I1(\gen_single_thread.active_target_enc_14 ),
        .I2(st_mr_rid[4]),
        .I3(st_mr_rid[5]),
        .O(m_valid_i_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_rvalid[3]_INST_0_i_2 
       (.I0(st_mr_rvalid),
        .I1(\gen_single_thread.active_target_enc_13 ),
        .I2(st_mr_rid[5]),
        .I3(st_mr_rid[4]),
        .O(m_valid_i_reg_4));
  LUT4 #(
    .INIT(16'hBBFB)) 
    s_ready_i_i_1__4
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(s_ready_i_reg_0),
        .I3(p_15_in),
        .O(s_ready_i_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__4_n_0),
        .Q(s_ready_i_reg_0),
        .R(p_1_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[34]_i_1 
       (.I0(p_17_in),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[35]_i_1 
       (.I0(p_20_in[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(skid_buffer[35]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[36]_i_1 
       (.I0(p_20_in[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[36] ),
        .O(skid_buffer[36]));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[34]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[35]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[36]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_15
   (s_ready_i_reg_0,
    D,
    \m_payload_i_reg[36]_0 ,
    E,
    \m_payload_i_reg[34]_0 ,
    valid_qual_i3__2,
    \m_payload_i_reg[35]_0 ,
    p_2_in,
    \m_payload_i_reg[35]_1 ,
    \m_payload_i_reg[35]_2 ,
    p_0_in,
    aclk,
    p_1_in,
    Q,
    m_axi_rvalid,
    \gen_single_issue.active_target_enc ,
    \gen_master_slots[1].r_issuing_cnt_reg[8] ,
    \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ,
    m_axi_arready,
    \gen_master_slots[1].r_issuing_cnt_reg[10] ,
    aa_mi_arvalid,
    s_axi_rready,
    \gen_single_issue.active_target_enc_1 ,
    \gen_single_thread.active_target_enc_4 ,
    \gen_single_thread.active_target_enc_5 ,
    \gen_single_thread.accept_cnt_reg[0] ,
    \gen_single_thread.accept_cnt_reg[0]_0 ,
    s_axi_rlast,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata);
  output s_ready_i_reg_0;
  output [2:0]D;
  output \m_payload_i_reg[36]_0 ;
  output [0:0]E;
  output [34:0]\m_payload_i_reg[34]_0 ;
  output [0:0]valid_qual_i3__2;
  output \m_payload_i_reg[35]_0 ;
  output p_2_in;
  output \m_payload_i_reg[35]_1 ;
  output \m_payload_i_reg[35]_2 ;
  input p_0_in;
  input aclk;
  input p_1_in;
  input [3:0]Q;
  input [0:0]m_axi_rvalid;
  input [0:0]\gen_single_issue.active_target_enc ;
  input \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  input \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  input [0:0]m_axi_arready;
  input [0:0]\gen_master_slots[1].r_issuing_cnt_reg[10] ;
  input aa_mi_arvalid;
  input [3:0]s_axi_rready;
  input [0:0]\gen_single_issue.active_target_enc_1 ;
  input [0:0]\gen_single_thread.active_target_enc_4 ;
  input [0:0]\gen_single_thread.active_target_enc_5 ;
  input \gen_single_thread.accept_cnt_reg[0] ;
  input \gen_single_thread.accept_cnt_reg[0]_0 ;
  input [0:0]s_axi_rlast;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire aa_mi_arvalid;
  wire aclk;
  wire \gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ;
  wire [0:0]\gen_master_slots[1].r_issuing_cnt_reg[10] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  wire [0:0]\gen_single_issue.active_target_enc ;
  wire [0:0]\gen_single_issue.active_target_enc_1 ;
  wire \gen_single_thread.accept_cnt_reg[0] ;
  wire \gen_single_thread.accept_cnt_reg[0]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc_4 ;
  wire [0:0]\gen_single_thread.active_target_enc_5 ;
  wire [0:0]m_axi_arready;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [34:0]\m_payload_i_reg[34]_0 ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[35]_1 ;
  wire \m_payload_i_reg[35]_2 ;
  wire \m_payload_i_reg[36]_0 ;
  wire m_valid_i0;
  wire p_0_in;
  wire p_1_in;
  wire p_1_in_0;
  wire p_2_in;
  wire [10:10]rready_carry;
  wire [0:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire s_ready_i_i_1__5_n_0;
  wire s_ready_i_i_3__2_n_0;
  wire s_ready_i_i_4_n_0;
  wire s_ready_i_reg_0;
  wire [36:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire [3:2]st_mr_rid;
  wire [1:1]st_mr_rvalid;
  wire [0:0]valid_qual_i3__2;

  LUT5 #(
    .INIT(32'hAAA80000)) 
    \gen_arbiter.qual_reg[2]_i_2__0 
       (.I0(s_axi_rready[2]),
        .I1(\m_payload_i_reg[35]_1 ),
        .I2(\gen_single_thread.accept_cnt_reg[0] ),
        .I3(\gen_single_thread.accept_cnt_reg[0]_0 ),
        .I4(s_axi_rlast),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hFFFDDDDDDDDDDDDD)) 
    \gen_arbiter.qual_reg[3]_i_8 
       (.I0(Q[3]),
        .I1(\gen_master_slots[1].r_issuing_cnt_reg[8] ),
        .I2(s_ready_i_i_3__2_n_0),
        .I3(s_ready_i_i_4_n_0),
        .I4(\m_payload_i_reg[34]_0 [34]),
        .I5(st_mr_rvalid),
        .O(valid_qual_i3__2));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \gen_master_slots[1].r_issuing_cnt[10]_i_1 
       (.I0(\gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hE00F0F0F0F0F0F0F)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_1 
       (.I0(Q[3]),
        .I1(\gen_master_slots[1].r_issuing_cnt_reg[8] ),
        .I2(\gen_master_slots[1].r_issuing_cnt_reg[8]_0 ),
        .I3(st_mr_rvalid),
        .I4(\m_payload_i_reg[34]_0 [34]),
        .I5(rready_carry),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hBFFD4002)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_2 
       (.I0(\gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h80FFFFFFFFFFFFFF)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_5 
       (.I0(rready_carry),
        .I1(\m_payload_i_reg[34]_0 [34]),
        .I2(st_mr_rvalid),
        .I3(m_axi_arready),
        .I4(\gen_master_slots[1].r_issuing_cnt_reg[10] ),
        .I5(aa_mi_arvalid),
        .O(\gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gen_master_slots[1].r_issuing_cnt[9]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1__0 
       (.I0(m_axi_rdata[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1__0 
       (.I0(m_axi_rdata[10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1__0 
       (.I0(m_axi_rdata[11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1__0 
       (.I0(m_axi_rdata[12]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1__0 
       (.I0(m_axi_rdata[13]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1__0 
       (.I0(m_axi_rdata[14]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1__0 
       (.I0(m_axi_rdata[15]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1__0 
       (.I0(m_axi_rdata[16]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1__0 
       (.I0(m_axi_rdata[17]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(skid_buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1__0 
       (.I0(m_axi_rdata[18]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1__0 
       (.I0(m_axi_rdata[19]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1__0 
       (.I0(m_axi_rdata[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1__0 
       (.I0(m_axi_rdata[20]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(skid_buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1__0 
       (.I0(m_axi_rdata[21]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(skid_buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1__0 
       (.I0(m_axi_rdata[22]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(skid_buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1__0 
       (.I0(m_axi_rdata[23]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(skid_buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1__0 
       (.I0(m_axi_rdata[24]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1__0 
       (.I0(m_axi_rdata[25]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1__0 
       (.I0(m_axi_rdata[26]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1__0 
       (.I0(m_axi_rdata[27]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1__0 
       (.I0(m_axi_rdata[28]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1__0 
       (.I0(m_axi_rdata[29]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1__0 
       (.I0(m_axi_rdata[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1__0 
       (.I0(m_axi_rdata[30]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_1__0 
       (.I0(m_axi_rdata[31]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1__0 
       (.I0(m_axi_rresp[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(skid_buffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1__0 
       (.I0(m_axi_rresp[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1__0 
       (.I0(m_axi_rlast),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_1__0 
       (.I0(m_axi_rid[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(skid_buffer[35]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[36]_i_1 
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .O(p_1_in_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[36]_i_2__0 
       (.I0(m_axi_rid[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[36] ),
        .O(skid_buffer[36]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__2 
       (.I0(m_axi_rdata[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1__0 
       (.I0(m_axi_rdata[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1__0 
       (.I0(m_axi_rdata[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1__0 
       (.I0(m_axi_rdata[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1__0 
       (.I0(m_axi_rdata[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1__0 
       (.I0(m_axi_rdata[8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1__0 
       (.I0(m_axi_rdata[9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[0]),
        .Q(\m_payload_i_reg[34]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[10]),
        .Q(\m_payload_i_reg[34]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[11]),
        .Q(\m_payload_i_reg[34]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[12]),
        .Q(\m_payload_i_reg[34]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[13]),
        .Q(\m_payload_i_reg[34]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[14]),
        .Q(\m_payload_i_reg[34]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[15]),
        .Q(\m_payload_i_reg[34]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[16]),
        .Q(\m_payload_i_reg[34]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[17]),
        .Q(\m_payload_i_reg[34]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[18]),
        .Q(\m_payload_i_reg[34]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[19]),
        .Q(\m_payload_i_reg[34]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[1]),
        .Q(\m_payload_i_reg[34]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[20]),
        .Q(\m_payload_i_reg[34]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[21]),
        .Q(\m_payload_i_reg[34]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[22]),
        .Q(\m_payload_i_reg[34]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[23]),
        .Q(\m_payload_i_reg[34]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[24]),
        .Q(\m_payload_i_reg[34]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[25]),
        .Q(\m_payload_i_reg[34]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[26]),
        .Q(\m_payload_i_reg[34]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[27]),
        .Q(\m_payload_i_reg[34]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[28]),
        .Q(\m_payload_i_reg[34]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[29]),
        .Q(\m_payload_i_reg[34]_0 [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[2]),
        .Q(\m_payload_i_reg[34]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[30]),
        .Q(\m_payload_i_reg[34]_0 [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[31]),
        .Q(\m_payload_i_reg[34]_0 [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[32]),
        .Q(\m_payload_i_reg[34]_0 [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[33]),
        .Q(\m_payload_i_reg[34]_0 [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[34]),
        .Q(\m_payload_i_reg[34]_0 [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[35]),
        .Q(st_mr_rid[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[36]),
        .Q(st_mr_rid[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[3]),
        .Q(\m_payload_i_reg[34]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[4]),
        .Q(\m_payload_i_reg[34]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[5]),
        .Q(\m_payload_i_reg[34]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[6]),
        .Q(\m_payload_i_reg[34]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[7]),
        .Q(\m_payload_i_reg[34]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[8]),
        .Q(\m_payload_i_reg[34]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[9]),
        .Q(\m_payload_i_reg[34]_0 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF4F)) 
    m_valid_i_i_1__9
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .O(m_valid_i0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i0),
        .Q(st_mr_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_rvalid[0]_INST_0_i_1 
       (.I0(st_mr_rid[3]),
        .I1(st_mr_rid[2]),
        .I2(st_mr_rvalid),
        .I3(\gen_single_issue.active_target_enc ),
        .O(\m_payload_i_reg[36]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_rvalid[1]_INST_0_i_1 
       (.I0(st_mr_rid[2]),
        .I1(\gen_single_issue.active_target_enc_1 ),
        .I2(st_mr_rid[3]),
        .I3(st_mr_rvalid),
        .O(\m_payload_i_reg[35]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_rvalid[2]_INST_0_i_1 
       (.I0(st_mr_rid[2]),
        .I1(\gen_single_thread.active_target_enc_5 ),
        .I2(st_mr_rvalid),
        .I3(st_mr_rid[3]),
        .O(\m_payload_i_reg[35]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_rvalid[3]_INST_0_i_1 
       (.I0(st_mr_rid[2]),
        .I1(\gen_single_thread.active_target_enc_4 ),
        .I2(st_mr_rvalid),
        .I3(st_mr_rid[3]),
        .O(\m_payload_i_reg[35]_2 ));
  LUT4 #(
    .INIT(16'hBBFB)) 
    s_ready_i_i_1__5
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .O(s_ready_i_i_1__5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_ready_i_i_2
       (.I0(s_ready_i_i_3__2_n_0),
        .I1(s_ready_i_i_4_n_0),
        .O(rready_carry));
  LUT6 #(
    .INIT(64'h88880000F0000000)) 
    s_ready_i_i_3__2
       (.I0(\gen_single_thread.active_target_enc_4 ),
        .I1(s_axi_rready[3]),
        .I2(\gen_single_thread.active_target_enc_5 ),
        .I3(s_axi_rready[2]),
        .I4(st_mr_rid[3]),
        .I5(st_mr_rid[2]),
        .O(s_ready_i_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h000000008888F000)) 
    s_ready_i_i_4
       (.I0(s_axi_rready[1]),
        .I1(\gen_single_issue.active_target_enc_1 ),
        .I2(s_axi_rready[0]),
        .I3(\gen_single_issue.active_target_enc ),
        .I4(st_mr_rid[2]),
        .I5(st_mr_rid[3]),
        .O(s_ready_i_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__5_n_0),
        .Q(s_ready_i_reg_0),
        .R(p_1_in));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[0]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[1]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rlast),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[0]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[1]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_18
   (s_ready_i_reg_0,
    D,
    \s_axi_arvalid[0] ,
    valid_qual_i,
    s_axi_rready_0_sp_1,
    s_axi_rvalid,
    E,
    \m_payload_i_reg[34]_0 ,
    valid_qual_i3__2,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    p_2_in,
    \gen_arbiter.s_ready_i_reg[0] ,
    p_0_in,
    aclk,
    p_1_in,
    Q,
    m_axi_rvalid,
    s_axi_arvalid,
    \gen_single_issue.accept_cnt ,
    valid_qual_i1__1,
    s_axi_rready,
    s_axi_rlast,
    s_axi_rvalid_0_sp_1,
    \gen_single_issue.active_target_hot ,
    \s_axi_rvalid[0]_0 ,
    \gen_master_slots[0].r_issuing_cnt_reg[0] ,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ,
    m_axi_arready,
    \gen_master_slots[0].r_issuing_cnt_reg[2] ,
    aa_mi_arvalid,
    \gen_single_issue.active_target_hot_1 ,
    s_axi_rvalid_1_sp_1,
    \s_axi_rvalid[1]_0 ,
    \gen_single_thread.active_target_hot_4 ,
    \gen_single_thread.active_target_hot_5 ,
    s_axi_rvalid_2_sp_1,
    \s_axi_rvalid[2]_0 ,
    \s_axi_rvalid[3] ,
    \s_axi_rvalid[3]_0 ,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    \gen_single_issue.accept_cnt_reg );
  output s_ready_i_reg_0;
  output [2:0]D;
  output [0:0]\s_axi_arvalid[0] ;
  output [0:0]valid_qual_i;
  output s_axi_rready_0_sp_1;
  output [2:0]s_axi_rvalid;
  output [0:0]E;
  output [34:0]\m_payload_i_reg[34]_0 ;
  output [0:0]valid_qual_i3__2;
  output m_valid_i_reg_0;
  output m_valid_i_reg_1;
  output p_2_in;
  output \gen_arbiter.s_ready_i_reg[0] ;
  input p_0_in;
  input aclk;
  input p_1_in;
  input [3:0]Q;
  input [0:0]m_axi_rvalid;
  input [0:0]s_axi_arvalid;
  input \gen_single_issue.accept_cnt ;
  input valid_qual_i1__1;
  input [3:0]s_axi_rready;
  input [1:0]s_axi_rlast;
  input s_axi_rvalid_0_sp_1;
  input [0:0]\gen_single_issue.active_target_hot ;
  input \s_axi_rvalid[0]_0 ;
  input \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  input \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  input [0:0]m_axi_arready;
  input [0:0]\gen_master_slots[0].r_issuing_cnt_reg[2] ;
  input aa_mi_arvalid;
  input [0:0]\gen_single_issue.active_target_hot_1 ;
  input s_axi_rvalid_1_sp_1;
  input \s_axi_rvalid[1]_0 ;
  input [0:0]\gen_single_thread.active_target_hot_4 ;
  input [0:0]\gen_single_thread.active_target_hot_5 ;
  input s_axi_rvalid_2_sp_1;
  input \s_axi_rvalid[2]_0 ;
  input \s_axi_rvalid[3] ;
  input \s_axi_rvalid[3]_0 ;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;
  input [0:0]\gen_single_issue.accept_cnt_reg ;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire aa_mi_arvalid;
  wire aclk;
  wire \gen_arbiter.s_ready_i_reg[0] ;
  wire \gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  wire [0:0]\gen_master_slots[0].r_issuing_cnt_reg[2] ;
  wire \gen_single_issue.accept_cnt ;
  wire [0:0]\gen_single_issue.accept_cnt_reg ;
  wire [0:0]\gen_single_issue.active_target_hot ;
  wire [0:0]\gen_single_issue.active_target_hot_1 ;
  wire [0:0]\gen_single_thread.active_target_hot_4 ;
  wire [0:0]\gen_single_thread.active_target_hot_5 ;
  wire [0:0]m_axi_arready;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [34:0]\m_payload_i_reg[34]_0 ;
  wire m_valid_i0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire p_0_in;
  wire p_1_in;
  wire p_1_in_0;
  wire p_2_in;
  wire [9:9]rready_carry;
  wire [0:0]s_axi_arvalid;
  wire [0:0]\s_axi_arvalid[0] ;
  wire [1:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire s_axi_rready_0_sn_1;
  wire [2:0]s_axi_rvalid;
  wire \s_axi_rvalid[0]_0 ;
  wire \s_axi_rvalid[1]_0 ;
  wire \s_axi_rvalid[2]_0 ;
  wire \s_axi_rvalid[3] ;
  wire \s_axi_rvalid[3]_0 ;
  wire s_axi_rvalid_0_sn_1;
  wire s_axi_rvalid_1_sn_1;
  wire s_axi_rvalid_2_sn_1;
  wire s_ready_i_i_1__6_n_0;
  wire s_ready_i_i_3__1_n_0;
  wire s_ready_i_i_4__0_n_0;
  wire s_ready_i_reg_0;
  wire [36:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire [1:0]st_mr_rid;
  wire [0:0]st_mr_rvalid;
  wire [0:0]valid_qual_i;
  wire valid_qual_i1__1;
  wire [0:0]valid_qual_i3__2;

  assign s_axi_rready_0_sp_1 = s_axi_rready_0_sn_1;
  assign s_axi_rvalid_0_sn_1 = s_axi_rvalid_0_sp_1;
  assign s_axi_rvalid_1_sn_1 = s_axi_rvalid_1_sp_1;
  assign s_axi_rvalid_2_sn_1 = s_axi_rvalid_2_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \gen_arbiter.last_rr_hot[3]_i_5 
       (.I0(s_axi_rready_0_sn_1),
        .I1(\gen_single_issue.accept_cnt ),
        .I2(valid_qual_i1__1),
        .O(valid_qual_i));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_arbiter.qual_reg[0]_i_1 
       (.I0(valid_qual_i),
        .I1(s_axi_arvalid),
        .O(\s_axi_arvalid[0] ));
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.qual_reg[2]_i_5__0 
       (.I0(st_mr_rvalid),
        .I1(\gen_single_thread.active_target_hot_5 ),
        .I2(st_mr_rid[0]),
        .I3(st_mr_rid[1]),
        .O(m_valid_i_reg_1));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_arbiter.qual_reg[3]_i_4 
       (.I0(s_axi_rready[3]),
        .I1(s_axi_rvalid[2]),
        .I2(s_axi_rlast[1]),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hFFFDDDDDDDDDDDDD)) 
    \gen_arbiter.qual_reg[3]_i_7 
       (.I0(Q[3]),
        .I1(\gen_master_slots[0].r_issuing_cnt_reg[0] ),
        .I2(s_ready_i_i_3__1_n_0),
        .I3(s_ready_i_i_4__0_n_0),
        .I4(\m_payload_i_reg[34]_0 [34]),
        .I5(st_mr_rvalid),
        .O(valid_qual_i3__2));
  LUT3 #(
    .INIT(8'h96)) 
    \gen_master_slots[0].r_issuing_cnt[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \gen_master_slots[0].r_issuing_cnt[2]_i_1 
       (.I0(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hE00F0F0F0F0F0F0F)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_1 
       (.I0(Q[3]),
        .I1(\gen_master_slots[0].r_issuing_cnt_reg[0] ),
        .I2(\gen_master_slots[0].r_issuing_cnt_reg[0]_0 ),
        .I3(st_mr_rvalid),
        .I4(\m_payload_i_reg[34]_0 [34]),
        .I5(rready_carry),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hBFFD4002)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_2 
       (.I0(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h80FFFFFFFFFFFFFF)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_5 
       (.I0(rready_carry),
        .I1(\m_payload_i_reg[34]_0 [34]),
        .I2(st_mr_rvalid),
        .I3(m_axi_arready),
        .I4(\gen_master_slots[0].r_issuing_cnt_reg[2] ),
        .I5(aa_mi_arvalid),
        .O(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \gen_single_issue.accept_cnt_i_1 
       (.I0(s_axi_rready_0_sn_1),
        .I1(\gen_single_issue.accept_cnt_reg ),
        .I2(\gen_single_issue.accept_cnt ),
        .O(\gen_arbiter.s_ready_i_reg[0] ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_single_issue.accept_cnt_i_2 
       (.I0(s_axi_rready[0]),
        .I1(s_axi_rvalid[0]),
        .I2(s_axi_rlast[0]),
        .O(s_axi_rready_0_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1 
       (.I0(m_axi_rdata[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1 
       (.I0(m_axi_rdata[10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1 
       (.I0(m_axi_rdata[11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1 
       (.I0(m_axi_rdata[12]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1 
       (.I0(m_axi_rdata[13]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1 
       (.I0(m_axi_rdata[14]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1 
       (.I0(m_axi_rdata[15]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1 
       (.I0(m_axi_rdata[16]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1 
       (.I0(m_axi_rdata[17]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(skid_buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1 
       (.I0(m_axi_rdata[18]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1 
       (.I0(m_axi_rdata[19]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1 
       (.I0(m_axi_rdata[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1 
       (.I0(m_axi_rdata[20]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(skid_buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1 
       (.I0(m_axi_rdata[21]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(skid_buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1 
       (.I0(m_axi_rdata[22]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(skid_buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1 
       (.I0(m_axi_rdata[23]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(skid_buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1 
       (.I0(m_axi_rdata[24]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1 
       (.I0(m_axi_rdata[25]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1 
       (.I0(m_axi_rdata[26]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1 
       (.I0(m_axi_rdata[27]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1 
       (.I0(m_axi_rdata[28]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1 
       (.I0(m_axi_rdata[29]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1 
       (.I0(m_axi_rdata[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1 
       (.I0(m_axi_rdata[30]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_1 
       (.I0(m_axi_rdata[31]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1 
       (.I0(m_axi_rresp[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(skid_buffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1 
       (.I0(m_axi_rresp[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1 
       (.I0(m_axi_rlast),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_1 
       (.I0(m_axi_rid[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(skid_buffer[35]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[36]_i_1__0 
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .O(p_1_in_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[36]_i_2 
       (.I0(m_axi_rid[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[36] ),
        .O(skid_buffer[36]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__1 
       (.I0(m_axi_rdata[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1 
       (.I0(m_axi_rdata[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1 
       (.I0(m_axi_rdata[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1 
       (.I0(m_axi_rdata[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1 
       (.I0(m_axi_rdata[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1 
       (.I0(m_axi_rdata[8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1 
       (.I0(m_axi_rdata[9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[0]),
        .Q(\m_payload_i_reg[34]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[10]),
        .Q(\m_payload_i_reg[34]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[11]),
        .Q(\m_payload_i_reg[34]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[12]),
        .Q(\m_payload_i_reg[34]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[13]),
        .Q(\m_payload_i_reg[34]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[14]),
        .Q(\m_payload_i_reg[34]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[15]),
        .Q(\m_payload_i_reg[34]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[16]),
        .Q(\m_payload_i_reg[34]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[17]),
        .Q(\m_payload_i_reg[34]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[18]),
        .Q(\m_payload_i_reg[34]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[19]),
        .Q(\m_payload_i_reg[34]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[1]),
        .Q(\m_payload_i_reg[34]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[20]),
        .Q(\m_payload_i_reg[34]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[21]),
        .Q(\m_payload_i_reg[34]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[22]),
        .Q(\m_payload_i_reg[34]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[23]),
        .Q(\m_payload_i_reg[34]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[24]),
        .Q(\m_payload_i_reg[34]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[25]),
        .Q(\m_payload_i_reg[34]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[26]),
        .Q(\m_payload_i_reg[34]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[27]),
        .Q(\m_payload_i_reg[34]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[28]),
        .Q(\m_payload_i_reg[34]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[29]),
        .Q(\m_payload_i_reg[34]_0 [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[2]),
        .Q(\m_payload_i_reg[34]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[30]),
        .Q(\m_payload_i_reg[34]_0 [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[31]),
        .Q(\m_payload_i_reg[34]_0 [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[32]),
        .Q(\m_payload_i_reg[34]_0 [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[33]),
        .Q(\m_payload_i_reg[34]_0 [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[34]),
        .Q(\m_payload_i_reg[34]_0 [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[35]),
        .Q(st_mr_rid[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[36]),
        .Q(st_mr_rid[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[3]),
        .Q(\m_payload_i_reg[34]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[4]),
        .Q(\m_payload_i_reg[34]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[5]),
        .Q(\m_payload_i_reg[34]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[6]),
        .Q(\m_payload_i_reg[34]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[7]),
        .Q(\m_payload_i_reg[34]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[8]),
        .Q(\m_payload_i_reg[34]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[9]),
        .Q(\m_payload_i_reg[34]_0 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF4F)) 
    m_valid_i_i_1__10
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .O(m_valid_i0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i0),
        .Q(st_mr_rvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAEA)) 
    \s_axi_rvalid[0]_INST_0 
       (.I0(s_axi_rvalid_0_sn_1),
        .I1(st_mr_rvalid),
        .I2(\gen_single_issue.active_target_hot ),
        .I3(st_mr_rid[1]),
        .I4(st_mr_rid[0]),
        .I5(\s_axi_rvalid[0]_0 ),
        .O(s_axi_rvalid[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAAAAA)) 
    \s_axi_rvalid[1]_INST_0 
       (.I0(s_axi_rvalid_1_sn_1),
        .I1(st_mr_rvalid),
        .I2(\gen_single_issue.active_target_hot_1 ),
        .I3(st_mr_rid[1]),
        .I4(st_mr_rid[0]),
        .I5(\s_axi_rvalid[1]_0 ),
        .O(m_valid_i_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAAAAA)) 
    \s_axi_rvalid[2]_INST_0 
       (.I0(s_axi_rvalid_2_sn_1),
        .I1(st_mr_rvalid),
        .I2(\gen_single_thread.active_target_hot_5 ),
        .I3(st_mr_rid[0]),
        .I4(st_mr_rid[1]),
        .I5(\s_axi_rvalid[2]_0 ),
        .O(s_axi_rvalid[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \s_axi_rvalid[3]_INST_0 
       (.I0(\s_axi_rvalid[3] ),
        .I1(st_mr_rvalid),
        .I2(\gen_single_thread.active_target_hot_4 ),
        .I3(st_mr_rid[1]),
        .I4(st_mr_rid[0]),
        .I5(\s_axi_rvalid[3]_0 ),
        .O(s_axi_rvalid[2]));
  LUT4 #(
    .INIT(16'hBBFB)) 
    s_ready_i_i_1__6
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .O(s_ready_i_i_1__6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_ready_i_i_2__0
       (.I0(s_ready_i_i_3__1_n_0),
        .I1(s_ready_i_i_4__0_n_0),
        .O(rready_carry));
  LUT6 #(
    .INIT(64'h88880000F0000000)) 
    s_ready_i_i_3__1
       (.I0(\gen_single_thread.active_target_hot_4 ),
        .I1(s_axi_rready[3]),
        .I2(\gen_single_thread.active_target_hot_5 ),
        .I3(s_axi_rready[2]),
        .I4(st_mr_rid[1]),
        .I5(st_mr_rid[0]),
        .O(s_ready_i_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h000000008888F000)) 
    s_ready_i_i_4__0
       (.I0(s_axi_rready[1]),
        .I1(\gen_single_issue.active_target_hot_1 ),
        .I2(s_axi_rready[0]),
        .I3(\gen_single_issue.active_target_hot ),
        .I4(st_mr_rid[0]),
        .I5(st_mr_rid[1]),
        .O(s_ready_i_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__6_n_0),
        .Q(s_ready_i_reg_0),
        .R(p_1_in));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[0]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[1]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rlast),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[0]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[1]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "mcu_xbar_0,axi_crossbar_v2_1_19_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_xbar_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI AWID [1:0] [7:6]" *) input [7:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI AWADDR [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI AWADDR [31:0] [127:96]" *) input [127:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 S02_AXI AWLEN [7:0] [23:16], xilinx.com:interface:aximm:1.0 S03_AXI AWLEN [7:0] [31:24]" *) input [31:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE [2:0] [11:9]" *) input [11:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWBURST [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI AWBURST [1:0] [7:6]" *) input [7:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK [0:0] [3:3]" *) input [3:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE [3:0] [15:12]" *) input [15:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI AWPROT [2:0] [11:9]" *) input [11:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWQOS [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI AWQOS [3:0] [15:12]" *) input [15:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI AWVALID [0:0] [3:3]" *) input [3:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI AWREADY [0:0] [3:3]" *) output [3:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI WDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI WDATA [31:0] [127:96]" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI WSTRB [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI WSTRB [3:0] [15:12]" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WLAST [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI WLAST [0:0] [3:3]" *) input [3:0]s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI WVALID [0:0] [3:3]" *) input [3:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI WREADY [0:0] [3:3]" *) output [3:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI BID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI BID [1:0] [7:6]" *) output [7:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI BRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI BRESP [1:0] [7:6]" *) output [7:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI BVALID [0:0] [3:3]" *) output [3:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI BREADY [0:0] [3:3]" *) input [3:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI ARID [1:0] [7:6]" *) input [7:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI ARADDR [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI ARADDR [31:0] [127:96]" *) input [127:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 S02_AXI ARLEN [7:0] [23:16], xilinx.com:interface:aximm:1.0 S03_AXI ARLEN [7:0] [31:24]" *) input [31:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI ARSIZE [2:0] [11:9]" *) input [11:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARBURST [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI ARBURST [1:0] [7:6]" *) input [7:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK [0:0] [3:3]" *) input [3:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE [3:0] [15:12]" *) input [15:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI ARPROT [2:0] [11:9]" *) input [11:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARQOS [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI ARQOS [3:0] [15:12]" *) input [15:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI ARVALID [0:0] [3:3]" *) input [3:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI ARREADY [0:0] [3:3]" *) output [3:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI RID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI RID [1:0] [7:6]" *) output [7:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI RDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI RDATA [31:0] [127:96]" *) output [127:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI RRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI RRESP [1:0] [7:6]" *) output [7:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RLAST [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI RLAST [0:0] [3:3]" *) output [3:0]s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI RVALID [0:0] [3:3]" *) output [3:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI RREADY [0:0] [3:3]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S02_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S03_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWID [1:0] [3:2]" *) output [3:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32]" *) output [63:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLEN [7:0] [15:8]" *) output [15:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE [2:0] [5:3]" *) output [5:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWBURST [1:0] [3:2]" *) output [3:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK [0:0] [1:1]" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE [3:0] [7:4]" *) output [7:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3]" *) output [5:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREGION [3:0] [7:4]" *) output [7:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWQOS [3:0] [7:4]" *) output [7:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1]" *) output [1:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1]" *) input [1:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32]" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4]" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WLAST [0:0] [1:1]" *) output [1:0]m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1]" *) output [1:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1]" *) input [1:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BID [1:0] [3:2]" *) input [3:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2]" *) input [3:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1]" *) input [1:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1]" *) output [1:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARID [1:0] [3:2]" *) output [3:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32]" *) output [63:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLEN [7:0] [15:8]" *) output [15:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE [2:0] [5:3]" *) output [5:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARBURST [1:0] [3:2]" *) output [3:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK [0:0] [1:1]" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE [3:0] [7:4]" *) output [7:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3]" *) output [5:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREGION [3:0] [7:4]" *) output [7:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARQOS [3:0] [7:4]" *) output [7:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1]" *) output [1:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1]" *) input [1:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RID [1:0] [3:2]" *) input [3:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32]" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2]" *) input [3:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RLAST [0:0] [1:1]" *) input [1:0]m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1]" *) input [1:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 32, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 32, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [63:0]m_axi_araddr;
  wire [3:0]m_axi_arburst;
  wire [7:0]m_axi_arcache;
  wire [3:0]m_axi_arid;
  wire [15:0]m_axi_arlen;
  wire [1:0]m_axi_arlock;
  wire [5:0]m_axi_arprot;
  wire [7:0]m_axi_arqos;
  wire [1:0]m_axi_arready;
  wire [7:0]m_axi_arregion;
  wire [5:0]m_axi_arsize;
  wire [1:0]m_axi_arvalid;
  wire [63:0]m_axi_awaddr;
  wire [3:0]m_axi_awburst;
  wire [7:0]m_axi_awcache;
  wire [3:0]m_axi_awid;
  wire [15:0]m_axi_awlen;
  wire [1:0]m_axi_awlock;
  wire [5:0]m_axi_awprot;
  wire [7:0]m_axi_awqos;
  wire [1:0]m_axi_awready;
  wire [7:0]m_axi_awregion;
  wire [5:0]m_axi_awsize;
  wire [1:0]m_axi_awvalid;
  wire [3:0]m_axi_bid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire [1:0]m_axi_rlast;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire [1:0]m_axi_wlast;
  wire [1:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [127:0]s_axi_araddr;
  wire [7:0]s_axi_arburst;
  wire [15:0]s_axi_arcache;
  wire [7:0]s_axi_arid;
  wire [31:0]s_axi_arlen;
  wire [3:0]s_axi_arlock;
  wire [11:0]s_axi_arprot;
  wire [15:0]s_axi_arqos;
  wire [3:0]s_axi_arready;
  wire [11:0]s_axi_arsize;
  wire [3:0]s_axi_arvalid;
  wire [127:0]s_axi_awaddr;
  wire [7:0]s_axi_awburst;
  wire [15:0]s_axi_awcache;
  wire [7:0]s_axi_awid;
  wire [31:0]s_axi_awlen;
  wire [3:0]s_axi_awlock;
  wire [11:0]s_axi_awprot;
  wire [15:0]s_axi_awqos;
  wire [3:0]s_axi_awready;
  wire [11:0]s_axi_awsize;
  wire [3:0]s_axi_awvalid;
  wire [7:0]s_axi_bid;
  wire [3:0]s_axi_bready;
  wire [7:0]s_axi_bresp;
  wire [3:0]s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [7:0]s_axi_rid;
  wire [3:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire [7:0]s_axi_rresp;
  wire [3:0]s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire [3:0]s_axi_wlast;
  wire [3:0]s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [3:0]s_axi_wvalid;
  wire [1:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "2" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CONNECTIVITY_MODE = "1" *) 
  (* C_DEBUG = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000001111000000000000000000000000000010000" *) 
  (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000001000001001000000000000000000000" *) 
  (* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000111100000000000000000000000000001111" *) 
  (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000100000000000000000000000000000001000" *) 
  (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_WRITE_CONNECTIVITY = "64'b0000000000000000000000000000011100000000000000000000000000000111" *) 
  (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000100000000000000000000000000000100000" *) 
  (* C_NUM_ADDR_RANGES = "1" *) 
  (* C_NUM_MASTER_SLOTS = "2" *) 
  (* C_NUM_SLAVE_SLOTS = "4" *) 
  (* C_R_REGISTER = "0" *) 
  (* C_S_AXI_ARB_PRIORITY = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_BASE_ID = "128'b00000000000000000000000000000011000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000" *) 
  (* C_S_AXI_READ_ACCEPTANCE = "128'b00000000000000000000000000001000000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_S_AXI_SINGLE_THREAD = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_THREAD_ID_WIDTH = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_WRITE_ACCEPTANCE = "128'b00000000000000000000000000000010000000000000000000000000001000000000000000000000000000000000000100000000000000000000000000000001" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ADDR_DECODE = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_FAMILY = "artix7" *) 
  (* P_INCR = "2'b01" *) 
  (* P_LEN = "8" *) 
  (* P_LOCK = "1" *) 
  (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_M_AXI_SUPPORTS_READ = "2'b11" *) 
  (* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) 
  (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
  (* P_RANGE_CHECK = "1" *) 
  (* P_S_AXI_BASE_ID = "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_HIGH_ID = "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_SUPPORTS_READ = "4'b1111" *) 
  (* P_S_AXI_SUPPORTS_WRITE = "4'b0111" *) 
  mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[1:0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[1:0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser({1'b0,1'b0}),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser({1'b0,1'b0}),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[1:0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[3:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[3:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
