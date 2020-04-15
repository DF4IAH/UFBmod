// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:23:58 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_dmr_1_ONEWIRE_0/mcu_dmr_1_ONEWIRE_0_sim_netlist.v
// Design      : mcu_dmr_1_ONEWIRE_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_dmr_1_ONEWIRE_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mcu_dmr_1_ONEWIRE_0
   (a,
    d,
    dpra,
    clk,
    we,
    qspo_srst,
    qdpo_srst,
    qspo,
    qdpo);
  input [3:0]a;
  input [31:0]d;
  input [3:0]dpra;
  input clk;
  input we;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire [3:0]a;
  wire clk;
  wire [31:0]d;
  wire [3:0]dpra;
  wire [31:0]qdpo;
  wire qdpo_srst;
  wire [31:0]qspo;
  wire qspo_srst;
  wire we;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_dpo = "0" *) 
  (* c_has_dpra = "1" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qdpo = "1" *) 
  (* c_has_qdpo_ce = "0" *) 
  (* c_has_qdpo_clk = "0" *) 
  (* c_has_qdpo_rst = "0" *) 
  (* c_has_qdpo_srst = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "1" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "1" *) 
  (* c_reg_dpra_input = "1" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra(dpra),
        .i_ce(1'b1),
        .qdpo(qdpo),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(qdpo_srst),
        .qspo(qspo),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(qspo_srst),
        .spo(NLW_U0_spo_UNCONNECTED[31:0]),
        .we(we));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "16" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "1" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "1" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "1" *) 
(* C_HAS_QSPO = "1" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "1" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_MEM_TYPE = "2" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "0" *) (* C_REG_A_D_INPUTS = "1" *) (* C_REG_DPRA_INPUT = "1" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [3:0]a;
  input [31:0]d;
  input [3:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [3:0]a;
  wire clk;
  wire [31:0]d;
  wire [3:0]dpra;
  wire [31:0]qdpo;
  wire qdpo_srst;
  wire [31:0]qspo;
  wire qspo_srst;
  wire we;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpra(dpra),
        .qdpo(qdpo),
        .qdpo_srst(qdpo_srst),
        .qspo(qspo),
        .qspo_srst(qspo_srst),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module mcu_dmr_1_ONEWIRE_0_dist_mem_gen_v8_0_13_synth
   (qspo,
    qdpo,
    d,
    clk,
    a,
    dpra,
    we,
    qspo_srst,
    qdpo_srst);
  output [31:0]qspo;
  output [31:0]qdpo;
  input [31:0]d;
  input clk;
  input [3:0]a;
  input [3:0]dpra;
  input we;
  input qspo_srst;
  input qdpo_srst;

  wire [3:0]a;
  wire clk;
  wire [31:0]d;
  wire [3:0]dpra;
  wire [31:0]qdpo;
  wire qdpo_srst;
  wire [31:0]qspo;
  wire qspo_srst;
  wire we;

  mcu_dmr_1_ONEWIRE_0_dpram \gen_dp_ram.dpram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpra(dpra),
        .qdpo(qdpo),
        .qdpo_srst(qdpo_srst),
        .qspo(qspo),
        .qspo_srst(qspo_srst),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dpram" *) 
module mcu_dmr_1_ONEWIRE_0_dpram
   (qspo,
    qdpo,
    d,
    clk,
    a,
    dpra,
    we,
    qspo_srst,
    qdpo_srst);
  output [31:0]qspo;
  output [31:0]qdpo;
  input [31:0]d;
  input clk;
  input [3:0]a;
  input [3:0]dpra;
  input we;
  input qspo_srst;
  input qdpo_srst;

  wire [3:0]a;
  wire [3:0]a_reg;
  wire clk;
  wire [31:0]d;
  wire [31:0]d_reg;
  wire [3:0]dpra;
  wire [3:0]dpra_reg;
  wire [31:0]qdpo_input;
  (* RTL_KEEP = "true" *) wire [31:0]qdpo_int;
  wire qdpo_srst;
  wire [31:0]qspo_input;
  (* RTL_KEEP = "true" *) wire [31:0]qspo_int;
  wire qspo_srst;
  wire we;
  wire we_reg;

  assign qdpo[31:0] = qdpo_int;
  assign qspo[31:0] = qspo_int;
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(a[0]),
        .Q(a_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(a[1]),
        .Q(a_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a[2]),
        .Q(a_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(a[3]),
        .Q(a_reg[3]),
        .R(1'b0));
  FDRE \d_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d[0]),
        .Q(d_reg[0]),
        .R(1'b0));
  FDRE \d_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(d[10]),
        .Q(d_reg[10]),
        .R(1'b0));
  FDRE \d_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(d[11]),
        .Q(d_reg[11]),
        .R(1'b0));
  FDRE \d_reg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(d[12]),
        .Q(d_reg[12]),
        .R(1'b0));
  FDRE \d_reg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(d[13]),
        .Q(d_reg[13]),
        .R(1'b0));
  FDRE \d_reg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(d[14]),
        .Q(d_reg[14]),
        .R(1'b0));
  FDRE \d_reg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(d[15]),
        .Q(d_reg[15]),
        .R(1'b0));
  FDRE \d_reg_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(d[16]),
        .Q(d_reg[16]),
        .R(1'b0));
  FDRE \d_reg_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(d[17]),
        .Q(d_reg[17]),
        .R(1'b0));
  FDRE \d_reg_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(d[18]),
        .Q(d_reg[18]),
        .R(1'b0));
  FDRE \d_reg_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(d[19]),
        .Q(d_reg[19]),
        .R(1'b0));
  FDRE \d_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d[1]),
        .Q(d_reg[1]),
        .R(1'b0));
  FDRE \d_reg_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(d[20]),
        .Q(d_reg[20]),
        .R(1'b0));
  FDRE \d_reg_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(d[21]),
        .Q(d_reg[21]),
        .R(1'b0));
  FDRE \d_reg_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(d[22]),
        .Q(d_reg[22]),
        .R(1'b0));
  FDRE \d_reg_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(d[23]),
        .Q(d_reg[23]),
        .R(1'b0));
  FDRE \d_reg_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(d[24]),
        .Q(d_reg[24]),
        .R(1'b0));
  FDRE \d_reg_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(d[25]),
        .Q(d_reg[25]),
        .R(1'b0));
  FDRE \d_reg_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(d[26]),
        .Q(d_reg[26]),
        .R(1'b0));
  FDRE \d_reg_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(d[27]),
        .Q(d_reg[27]),
        .R(1'b0));
  FDRE \d_reg_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(d[28]),
        .Q(d_reg[28]),
        .R(1'b0));
  FDRE \d_reg_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(d[29]),
        .Q(d_reg[29]),
        .R(1'b0));
  FDRE \d_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d[2]),
        .Q(d_reg[2]),
        .R(1'b0));
  FDRE \d_reg_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(d[30]),
        .Q(d_reg[30]),
        .R(1'b0));
  FDRE \d_reg_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(d[31]),
        .Q(d_reg[31]),
        .R(1'b0));
  FDRE \d_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(d[3]),
        .Q(d_reg[3]),
        .R(1'b0));
  FDRE \d_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(d[4]),
        .Q(d_reg[4]),
        .R(1'b0));
  FDRE \d_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(d[5]),
        .Q(d_reg[5]),
        .R(1'b0));
  FDRE \d_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(d[6]),
        .Q(d_reg[6]),
        .R(1'b0));
  FDRE \d_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(d[7]),
        .Q(d_reg[7]),
        .R(1'b0));
  FDRE \d_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(d[8]),
        .Q(d_reg[8]),
        .R(1'b0));
  FDRE \d_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(d[9]),
        .Q(d_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dpra_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(dpra[0]),
        .Q(dpra_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dpra_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(dpra[1]),
        .Q(dpra_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dpra_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(dpra[2]),
        .Q(dpra_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dpra_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(dpra[3]),
        .Q(dpra_reg[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[0]),
        .Q(qdpo_int[0]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[10]),
        .Q(qdpo_int[10]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[11]),
        .Q(qdpo_int[11]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[12]),
        .Q(qdpo_int[12]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[13]),
        .Q(qdpo_int[13]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[14]),
        .Q(qdpo_int[14]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[15]),
        .Q(qdpo_int[15]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[16]),
        .Q(qdpo_int[16]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[17]),
        .Q(qdpo_int[17]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[18]),
        .Q(qdpo_int[18]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[19]),
        .Q(qdpo_int[19]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[1]),
        .Q(qdpo_int[1]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[20]),
        .Q(qdpo_int[20]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[21]),
        .Q(qdpo_int[21]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[22]),
        .Q(qdpo_int[22]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[23]),
        .Q(qdpo_int[23]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[24]),
        .Q(qdpo_int[24]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[25]),
        .Q(qdpo_int[25]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[26]),
        .Q(qdpo_int[26]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[27]),
        .Q(qdpo_int[27]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[28]),
        .Q(qdpo_int[28]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[29]),
        .Q(qdpo_int[29]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[2]),
        .Q(qdpo_int[2]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[30]),
        .Q(qdpo_int[30]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[31]),
        .Q(qdpo_int[31]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[3]),
        .Q(qdpo_int[3]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[4]),
        .Q(qdpo_int[4]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[5]),
        .Q(qdpo_int[5]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[6]),
        .Q(qdpo_int[6]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[7]),
        .Q(qdpo_int[7]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[8]),
        .Q(qdpo_int[8]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qdpo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(qdpo_input[9]),
        .Q(qdpo_int[9]),
        .R(qdpo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[0]),
        .Q(qspo_int[0]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[10]),
        .Q(qspo_int[10]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[11]),
        .Q(qspo_int[11]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[12]),
        .Q(qspo_int[12]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[13]),
        .Q(qspo_int[13]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[14]),
        .Q(qspo_int[14]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[15]),
        .Q(qspo_int[15]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[16]),
        .Q(qspo_int[16]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[17]),
        .Q(qspo_int[17]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[18]),
        .Q(qspo_int[18]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[19]),
        .Q(qspo_int[19]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[1]),
        .Q(qspo_int[1]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[20]),
        .Q(qspo_int[20]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[21]),
        .Q(qspo_int[21]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[22]),
        .Q(qspo_int[22]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[23]),
        .Q(qspo_int[23]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[24]),
        .Q(qspo_int[24]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[25]),
        .Q(qspo_int[25]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[26]),
        .Q(qspo_int[26]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[27]),
        .Q(qspo_int[27]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[28]),
        .Q(qspo_int[28]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[29]),
        .Q(qspo_int[29]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[2]),
        .Q(qspo_int[2]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[30]),
        .Q(qspo_int[30]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[31]),
        .Q(qspo_int[31]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[3]),
        .Q(qspo_int[3]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[4]),
        .Q(qspo_int[4]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[5]),
        .Q(qspo_int[5]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[6]),
        .Q(qspo_int[6]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[7]),
        .Q(qspo_int[7]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[8]),
        .Q(qspo_int[8]),
        .R(qspo_srst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(qspo_input[9]),
        .Q(qspo_int[9]),
        .R(qspo_srst));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[0]),
        .DPO(qdpo_input[0]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[0]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_10_10
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[10]),
        .DPO(qdpo_input[10]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[10]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_11_11
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[11]),
        .DPO(qdpo_input[11]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[11]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_12_12
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[12]),
        .DPO(qdpo_input[12]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[12]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_13_13
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[13]),
        .DPO(qdpo_input[13]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[13]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_14_14
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[14]),
        .DPO(qdpo_input[14]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[14]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_15_15
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[15]),
        .DPO(qdpo_input[15]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[15]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_16_16
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[16]),
        .DPO(qdpo_input[16]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[16]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_17_17
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[17]),
        .DPO(qdpo_input[17]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[17]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_18_18
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[18]),
        .DPO(qdpo_input[18]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[18]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_19_19
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[19]),
        .DPO(qdpo_input[19]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[19]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_1_1
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[1]),
        .DPO(qdpo_input[1]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[1]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_20_20
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[20]),
        .DPO(qdpo_input[20]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[20]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_21_21
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[21]),
        .DPO(qdpo_input[21]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[21]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_22_22
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[22]),
        .DPO(qdpo_input[22]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[22]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_23_23
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[23]),
        .DPO(qdpo_input[23]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[23]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_24_24
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[24]),
        .DPO(qdpo_input[24]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[24]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_25_25
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[25]),
        .DPO(qdpo_input[25]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[25]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_26_26
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[26]),
        .DPO(qdpo_input[26]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[26]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_27_27
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[27]),
        .DPO(qdpo_input[27]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[27]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_28_28
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[28]),
        .DPO(qdpo_input[28]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[28]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_29_29
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[29]),
        .DPO(qdpo_input[29]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[29]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_2_2
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[2]),
        .DPO(qdpo_input[2]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[2]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_30_30
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[30]),
        .DPO(qdpo_input[30]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[30]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_31_31
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[31]),
        .DPO(qdpo_input[31]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[31]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_3_3
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[3]),
        .DPO(qdpo_input[3]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[3]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_4_4
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[4]),
        .DPO(qdpo_input[4]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[4]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_5_5
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[5]),
        .DPO(qdpo_input[5]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[5]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_6_6
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[6]),
        .DPO(qdpo_input[6]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[6]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_7_7
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[7]),
        .DPO(qdpo_input[7]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[7]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_8_8
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[8]),
        .DPO(qdpo_input[8]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[8]),
        .WCLK(clk),
        .WE(we_reg));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_9_9
       (.A0(a_reg[0]),
        .A1(a_reg[1]),
        .A2(a_reg[2]),
        .A3(a_reg[3]),
        .A4(1'b0),
        .D(d_reg[9]),
        .DPO(qdpo_input[9]),
        .DPRA0(dpra_reg[0]),
        .DPRA1(dpra_reg[1]),
        .DPRA2(dpra_reg[2]),
        .DPRA3(dpra_reg[3]),
        .DPRA4(1'b0),
        .SPO(qspo_input[9]),
        .WCLK(clk),
        .WE(we_reg));
  FDRE we_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(we),
        .Q(we_reg),
        .R(1'b0));
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
