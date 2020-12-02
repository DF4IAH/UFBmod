// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Sat Nov 28 22:34:10 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Encoder/UFBmod_Encoder_sim_netlist.v
// Design      : UFBmod_Encoder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* hw_handoff = "UFBmod_Encoder.hwdef" *) 
(* NotValidForBitStream *)
module UFBmod_Encoder
   (TRX_dds_tx_rf09_inc,
    TRX_dds_tx_rf09_ptt,
    clk_100MHz,
    decoder_rx09_chAll_active,
    decoder_rx09_chAll_sql_open,
    encoder_pull_FIFO_dump,
    encoder_pull_data_len,
    encoder_pull_do_start,
    pulldata_tx09_byteData,
    pulldata_tx09_en,
    reset_100MHz);
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.TRX_DDS_TX_RF09_INC DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.TRX_DDS_TX_RF09_INC, LAYERED_METADATA undef" *) output [25:0]TRX_dds_tx_rf09_inc;
  output TRX_dds_tx_rf09_ptt;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET reset_100MHz, CLK_DOMAIN UFBmod_Encoder_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_100MHz;
  input [7:0]decoder_rx09_chAll_active;
  input [7:0]decoder_rx09_chAll_sql_open;
  input encoder_pull_FIFO_dump;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.ENCODER_PULL_DATA_LEN DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.ENCODER_PULL_DATA_LEN, LAYERED_METADATA undef" *) input [6:0]encoder_pull_data_len;
  input encoder_pull_do_start;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.PULLDATA_TX09_BYTEDATA DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.PULLDATA_TX09_BYTEDATA, LAYERED_METADATA undef" *) input [7:0]pulldata_tx09_byteData;
  output pulldata_tx09_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RESET_100MHZ RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RESET_100MHZ, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_100MHz;

  wire [25:0]TRX_dds_tx_rf09_inc;
  wire TRX_dds_tx_rf09_ptt;
  wire clk_100MHz;
  wire [7:0]decoder_rx09_chAll_active;
  wire [7:0]decoder_rx09_chAll_sql_open;
  wire encoder_pull_FIFO_dump;
  wire [6:0]encoder_pull_data_len;
  wire encoder_pull_do_start;
  wire [7:0]pulldata_tx09_byteData;
  wire pulldata_tx09_en;
  wire reset_100MHz;

  (* CHECK_LICENSE_TYPE = "UFBmod_Encoder_UFBmod_tx09_Encoder_0_0,UFBmod_tx09_Encoder_FSM,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "UFBmod_tx09_Encoder_FSM,Vivado 2020.1.1" *) 
  UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 UFBmod_tx09_Encoder_0
       (.clk(clk_100MHz),
        .dds_tx09_inc(TRX_dds_tx_rf09_inc),
        .dds_tx09_ptt(TRX_dds_tx_rf09_ptt),
        .decoder_rx09_chAll_active(decoder_rx09_chAll_active),
        .decoder_rx09_chAll_sql_open(decoder_rx09_chAll_sql_open),
        .encoder_pull_FIFO_dump(encoder_pull_FIFO_dump),
        .encoder_pull_data_len(encoder_pull_data_len),
        .encoder_pull_do_start(encoder_pull_do_start),
        .pulldata_tx09_byteData(pulldata_tx09_byteData),
        .pulldata_tx09_en(pulldata_tx09_en),
        .reset(reset_100MHz));
endmodule

(* CHECK_LICENSE_TYPE = "UFBmod_Encoder_UFBmod_tx09_Encoder_0_0,UFBmod_tx09_Encoder_FSM,{}" *) (* ORIG_REF_NAME = "UFBmod_Encoder_UFBmod_tx09_Encoder_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "UFBmod_tx09_Encoder_FSM,Vivado 2020.1.1" *) 
module UFBmod_Encoder_UFBmod_Encoder_UFBmod_tx09_Encoder_0_0
   (reset,
    clk,
    decoder_rx09_chAll_sql_open,
    decoder_rx09_chAll_active,
    encoder_pull_FIFO_dump,
    encoder_pull_do_start,
    encoder_pull_data_len,
    pulldata_tx09_en,
    pulldata_tx09_byteData,
    dds_tx09_inc,
    dds_tx09_ptt);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN UFBmod_Encoder_clk_100MHz, INSERT_VIP 0" *) input clk;
  input [7:0]decoder_rx09_chAll_sql_open;
  input [7:0]decoder_rx09_chAll_active;
  input encoder_pull_FIFO_dump;
  input encoder_pull_do_start;
  input [6:0]encoder_pull_data_len;
  output pulldata_tx09_en;
  input [7:0]pulldata_tx09_byteData;
  output [25:0]dds_tx09_inc;
  output dds_tx09_ptt;

  wire clk;
  wire [25:0]dds_tx09_inc;
  wire dds_tx09_ptt;
  wire [7:0]decoder_rx09_chAll_active;
  wire [7:0]decoder_rx09_chAll_sql_open;
  wire encoder_pull_FIFO_dump;
  wire [6:0]encoder_pull_data_len;
  wire encoder_pull_do_start;
  wire [7:0]pulldata_tx09_byteData;
  wire pulldata_tx09_en;
  wire reset;

  UFBmod_Encoder_UFBmod_tx09_Encoder_FSM U0
       (.clk(clk),
        .dds_tx09_inc(dds_tx09_inc[25:1]),
        .\dds_tx09_inc_reg[0]_0 (dds_tx09_inc[0]),
        .dds_tx09_ptt(dds_tx09_ptt),
        .decoder_rx09_chAll_active(decoder_rx09_chAll_active),
        .decoder_rx09_chAll_sql_open(decoder_rx09_chAll_sql_open),
        .encoder_pull_FIFO_dump(encoder_pull_FIFO_dump),
        .encoder_pull_data_len(encoder_pull_data_len[4:0]),
        .encoder_pull_do_start(encoder_pull_do_start),
        .pulldata_tx09_byteData(pulldata_tx09_byteData[4:0]),
        .pulldata_tx09_en(pulldata_tx09_en),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "UFBmod_tx09_Encoder_FSM" *) 
module UFBmod_Encoder_UFBmod_tx09_Encoder_FSM
   (\dds_tx09_inc_reg[0]_0 ,
    dds_tx09_inc,
    pulldata_tx09_en,
    dds_tx09_ptt,
    reset,
    clk,
    pulldata_tx09_byteData,
    encoder_pull_FIFO_dump,
    encoder_pull_do_start,
    encoder_pull_data_len,
    decoder_rx09_chAll_active,
    decoder_rx09_chAll_sql_open);
  output \dds_tx09_inc_reg[0]_0 ;
  output [24:0]dds_tx09_inc;
  output pulldata_tx09_en;
  output dds_tx09_ptt;
  input reset;
  input clk;
  input [4:0]pulldata_tx09_byteData;
  input encoder_pull_FIFO_dump;
  input encoder_pull_do_start;
  input [4:0]encoder_pull_data_len;
  input [7:0]decoder_rx09_chAll_active;
  input [7:0]decoder_rx09_chAll_sql_open;

  wire byteBit_cnt1__2;
  wire \byteBit_cnt[0]_i_1_n_0 ;
  wire \byteBit_cnt[1]_i_1_n_0 ;
  wire \byteBit_cnt[1]_i_2_n_0 ;
  wire \byteBit_cnt[2]_i_1_n_0 ;
  wire \byteBit_cnt[2]_i_2_n_0 ;
  wire \byteBit_cnt[2]_i_3_n_0 ;
  wire \byteBit_cnt[2]_i_4_n_0 ;
  wire \byteBit_cnt_reg_n_0_[0] ;
  wire \byteBit_cnt_reg_n_0_[1] ;
  wire \byteBit_cnt_reg_n_0_[2] ;
  wire byteBit_sub1_out;
  wire \byteBit_sub[0]_i_1_n_0 ;
  wire \byteBit_sub[0]_i_2_n_0 ;
  wire \byteBit_sub_reg_n_0_[0] ;
  wire clk;
  wire data0;
  wire dds_current_freq0_carry_i_1_n_0;
  wire dds_current_freq0_carry_i_2_n_0;
  wire dds_current_freq0_carry_n_2;
  wire dds_current_freq0_carry_n_3;
  wire [31:26]dds_current_inc;
  wire dds_new_freq;
  wire dds_new_freq0__3;
  wire \dds_new_freq[0]_i_1_n_0 ;
  wire \dds_new_freq[0]_i_2_n_0 ;
  wire \dds_new_freq[1]_i_1_n_0 ;
  wire \dds_new_freq[1]_i_2_n_0 ;
  wire \dds_new_freq[1]_i_3_n_0 ;
  wire \dds_new_freq[2]_i_2_n_0 ;
  wire \dds_new_freq[2]_i_3_n_0 ;
  wire \dds_new_freq[2]_i_4_n_0 ;
  wire \dds_new_freq[3]_i_1_n_0 ;
  wire \dds_new_freq[3]_i_2_n_0 ;
  wire \dds_new_freq[3]_i_3_n_0 ;
  wire \dds_new_freq[4]_i_2_n_0 ;
  wire \dds_new_freq[4]_i_3_n_0 ;
  wire \dds_new_freq[4]_i_4_n_0 ;
  wire \dds_new_freq[4]_i_5_n_0 ;
  wire \dds_new_freq[4]_i_6_n_0 ;
  wire \dds_new_freq[4]_i_7_n_0 ;
  wire \dds_new_freq[4]_i_8_n_0 ;
  wire \dds_new_freq_reg[2]_i_1_n_0 ;
  wire \dds_new_freq_reg_n_0_[0] ;
  wire \dds_new_freq_reg_n_0_[1] ;
  wire \dds_new_freq_reg_n_0_[2] ;
  wire \dds_new_freq_reg_n_0_[3] ;
  wire \dds_new_freq_reg_n_0_[4] ;
  wire dds_new_inc;
  wire \dds_new_inc[16]_i_2_n_0 ;
  wire \dds_new_inc[17]_i_1_n_0 ;
  wire \dds_new_inc[18]_i_1_n_0 ;
  wire \dds_new_inc[19]_i_1_n_0 ;
  wire \dds_new_inc[20]_i_1_n_0 ;
  wire \dds_new_inc_reg_n_0_[16] ;
  wire \dds_new_inc_reg_n_0_[17] ;
  wire \dds_new_inc_reg_n_0_[18] ;
  wire \dds_new_inc_reg_n_0_[19] ;
  wire \dds_new_inc_reg_n_0_[20] ;
  wire [24:0]dds_tx09_inc;
  wire dds_tx09_inc1_carry__0_i_1_n_0;
  wire dds_tx09_inc1_carry__0_i_2_n_0;
  wire dds_tx09_inc1_carry__0_i_3_n_0;
  wire dds_tx09_inc1_carry__0_i_4_n_0;
  wire dds_tx09_inc1_carry__0_n_0;
  wire dds_tx09_inc1_carry__0_n_1;
  wire dds_tx09_inc1_carry__0_n_2;
  wire dds_tx09_inc1_carry__0_n_3;
  wire dds_tx09_inc1_carry__1_i_1_n_0;
  wire dds_tx09_inc1_carry__1_i_2_n_0;
  wire dds_tx09_inc1_carry__1_i_3_n_0;
  wire dds_tx09_inc1_carry__1_i_4_n_0;
  wire dds_tx09_inc1_carry__1_i_5_n_0;
  wire dds_tx09_inc1_carry__1_i_6_n_0;
  wire dds_tx09_inc1_carry__1_i_7_n_0;
  wire dds_tx09_inc1_carry__1_n_0;
  wire dds_tx09_inc1_carry__1_n_1;
  wire dds_tx09_inc1_carry__1_n_2;
  wire dds_tx09_inc1_carry__1_n_3;
  wire dds_tx09_inc1_carry__2_i_1_n_0;
  wire dds_tx09_inc1_carry__2_i_2_n_0;
  wire dds_tx09_inc1_carry__2_i_3_n_0;
  wire dds_tx09_inc1_carry__2_i_4_n_0;
  wire dds_tx09_inc1_carry__2_n_0;
  wire dds_tx09_inc1_carry__2_n_1;
  wire dds_tx09_inc1_carry__2_n_2;
  wire dds_tx09_inc1_carry__2_n_3;
  wire dds_tx09_inc1_carry_i_1_n_0;
  wire dds_tx09_inc1_carry_i_2_n_0;
  wire dds_tx09_inc1_carry_i_3_n_0;
  wire dds_tx09_inc1_carry_i_4_n_0;
  wire dds_tx09_inc1_carry_n_0;
  wire dds_tx09_inc1_carry_n_1;
  wire dds_tx09_inc1_carry_n_2;
  wire dds_tx09_inc1_carry_n_3;
  wire \dds_tx09_inc1_inferred__0/i__carry__0_n_0 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__0_n_1 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__0_n_2 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__0_n_3 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__1_n_0 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__1_n_1 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__1_n_2 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__1_n_3 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__2_n_0 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__2_n_1 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__2_n_2 ;
  wire \dds_tx09_inc1_inferred__0/i__carry__2_n_3 ;
  wire \dds_tx09_inc1_inferred__0/i__carry_n_0 ;
  wire \dds_tx09_inc1_inferred__0/i__carry_n_1 ;
  wire \dds_tx09_inc1_inferred__0/i__carry_n_2 ;
  wire \dds_tx09_inc1_inferred__0/i__carry_n_3 ;
  wire dds_tx09_inc2_carry__0_i_1_n_0;
  wire dds_tx09_inc2_carry__0_i_2_n_0;
  wire dds_tx09_inc2_carry__0_i_3_n_0;
  wire dds_tx09_inc2_carry__0_n_0;
  wire dds_tx09_inc2_carry__0_n_1;
  wire dds_tx09_inc2_carry__0_n_2;
  wire dds_tx09_inc2_carry__0_n_3;
  wire dds_tx09_inc2_carry__0_n_4;
  wire dds_tx09_inc2_carry__0_n_5;
  wire dds_tx09_inc2_carry__0_n_6;
  wire dds_tx09_inc2_carry__0_n_7;
  wire dds_tx09_inc2_carry__1_i_1_n_0;
  wire dds_tx09_inc2_carry__1_i_2_n_0;
  wire dds_tx09_inc2_carry__1_n_0;
  wire dds_tx09_inc2_carry__1_n_1;
  wire dds_tx09_inc2_carry__1_n_2;
  wire dds_tx09_inc2_carry__1_n_3;
  wire dds_tx09_inc2_carry__1_n_4;
  wire dds_tx09_inc2_carry__1_n_5;
  wire dds_tx09_inc2_carry__1_n_6;
  wire dds_tx09_inc2_carry__1_n_7;
  wire dds_tx09_inc2_carry__2_i_1_n_0;
  wire dds_tx09_inc2_carry__2_i_2_n_0;
  wire dds_tx09_inc2_carry__2_i_3_n_0;
  wire dds_tx09_inc2_carry__2_i_4_n_0;
  wire dds_tx09_inc2_carry__2_n_0;
  wire dds_tx09_inc2_carry__2_n_1;
  wire dds_tx09_inc2_carry__2_n_2;
  wire dds_tx09_inc2_carry__2_n_3;
  wire dds_tx09_inc2_carry__2_n_4;
  wire dds_tx09_inc2_carry__2_n_5;
  wire dds_tx09_inc2_carry__2_n_6;
  wire dds_tx09_inc2_carry__2_n_7;
  wire dds_tx09_inc2_carry__3_i_1_n_0;
  wire dds_tx09_inc2_carry__3_i_2_n_0;
  wire dds_tx09_inc2_carry__3_i_3_n_0;
  wire dds_tx09_inc2_carry__3_i_4_n_0;
  wire dds_tx09_inc2_carry__3_n_0;
  wire dds_tx09_inc2_carry__3_n_1;
  wire dds_tx09_inc2_carry__3_n_2;
  wire dds_tx09_inc2_carry__3_n_3;
  wire dds_tx09_inc2_carry__3_n_4;
  wire dds_tx09_inc2_carry__3_n_5;
  wire dds_tx09_inc2_carry__3_n_6;
  wire dds_tx09_inc2_carry__3_n_7;
  wire dds_tx09_inc2_carry__4_i_1_n_0;
  wire dds_tx09_inc2_carry__4_i_2_n_0;
  wire dds_tx09_inc2_carry__4_i_3_n_0;
  wire dds_tx09_inc2_carry__4_i_4_n_0;
  wire dds_tx09_inc2_carry__4_n_0;
  wire dds_tx09_inc2_carry__4_n_1;
  wire dds_tx09_inc2_carry__4_n_2;
  wire dds_tx09_inc2_carry__4_n_3;
  wire dds_tx09_inc2_carry__4_n_4;
  wire dds_tx09_inc2_carry__4_n_5;
  wire dds_tx09_inc2_carry__4_n_6;
  wire dds_tx09_inc2_carry__4_n_7;
  wire dds_tx09_inc2_carry__5_i_1_n_0;
  wire dds_tx09_inc2_carry__5_i_2_n_0;
  wire dds_tx09_inc2_carry__5_i_3_n_0;
  wire dds_tx09_inc2_carry__5_i_4_n_0;
  wire dds_tx09_inc2_carry__5_n_0;
  wire dds_tx09_inc2_carry__5_n_1;
  wire dds_tx09_inc2_carry__5_n_2;
  wire dds_tx09_inc2_carry__5_n_3;
  wire dds_tx09_inc2_carry__5_n_4;
  wire dds_tx09_inc2_carry__5_n_5;
  wire dds_tx09_inc2_carry__5_n_6;
  wire dds_tx09_inc2_carry__5_n_7;
  wire dds_tx09_inc2_carry__6_i_1_n_0;
  wire dds_tx09_inc2_carry__6_i_2_n_0;
  wire dds_tx09_inc2_carry__6_i_3_n_0;
  wire dds_tx09_inc2_carry__6_n_2;
  wire dds_tx09_inc2_carry__6_n_3;
  wire dds_tx09_inc2_carry__6_n_5;
  wire dds_tx09_inc2_carry__6_n_6;
  wire dds_tx09_inc2_carry__6_n_7;
  wire dds_tx09_inc2_carry_i_1_n_0;
  wire dds_tx09_inc2_carry_n_0;
  wire dds_tx09_inc2_carry_n_1;
  wire dds_tx09_inc2_carry_n_2;
  wire dds_tx09_inc2_carry_n_3;
  wire dds_tx09_inc2_carry_n_4;
  wire dds_tx09_inc2_carry_n_5;
  wire dds_tx09_inc2_carry_n_6;
  wire dds_tx09_inc2_carry_n_7;
  wire \dds_tx09_inc2_inferred__0/i__carry__0_n_0 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__0_n_1 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__0_n_2 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__0_n_3 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__0_n_4 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__0_n_5 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__0_n_6 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__0_n_7 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__1_n_0 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__1_n_1 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__1_n_2 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__1_n_3 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__1_n_4 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__1_n_5 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__1_n_6 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__1_n_7 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__2_n_0 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__2_n_1 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__2_n_2 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__2_n_3 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__2_n_4 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__2_n_5 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__2_n_6 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__2_n_7 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__3_n_0 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__3_n_1 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__3_n_2 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__3_n_3 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__3_n_4 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__3_n_5 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__3_n_6 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__3_n_7 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__4_n_0 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__4_n_1 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__4_n_2 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__4_n_3 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__4_n_4 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__4_n_5 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__4_n_6 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__4_n_7 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__5_n_0 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__5_n_1 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__5_n_2 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__5_n_3 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__5_n_4 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__5_n_5 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__5_n_6 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__5_n_7 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__6_n_2 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__6_n_3 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__6_n_5 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__6_n_6 ;
  wire \dds_tx09_inc2_inferred__0/i__carry__6_n_7 ;
  wire \dds_tx09_inc2_inferred__0/i__carry_n_0 ;
  wire \dds_tx09_inc2_inferred__0/i__carry_n_1 ;
  wire \dds_tx09_inc2_inferred__0/i__carry_n_2 ;
  wire \dds_tx09_inc2_inferred__0/i__carry_n_3 ;
  wire \dds_tx09_inc2_inferred__0/i__carry_n_4 ;
  wire \dds_tx09_inc2_inferred__0/i__carry_n_5 ;
  wire \dds_tx09_inc2_inferred__0/i__carry_n_6 ;
  wire \dds_tx09_inc2_inferred__0/i__carry_n_7 ;
  wire \dds_tx09_inc[0]_i_1_n_0 ;
  wire \dds_tx09_inc[10]_i_1_n_0 ;
  wire \dds_tx09_inc[11]_i_1_n_0 ;
  wire \dds_tx09_inc[12]_i_1_n_0 ;
  wire \dds_tx09_inc[13]_i_1_n_0 ;
  wire \dds_tx09_inc[14]_i_1_n_0 ;
  wire \dds_tx09_inc[15]_i_1_n_0 ;
  wire \dds_tx09_inc[16]_i_1_n_0 ;
  wire \dds_tx09_inc[16]_i_2_n_0 ;
  wire \dds_tx09_inc[17]_i_1_n_0 ;
  wire \dds_tx09_inc[17]_i_2_n_0 ;
  wire \dds_tx09_inc[18]_i_1_n_0 ;
  wire \dds_tx09_inc[18]_i_2_n_0 ;
  wire \dds_tx09_inc[19]_i_1_n_0 ;
  wire \dds_tx09_inc[19]_i_2_n_0 ;
  wire \dds_tx09_inc[1]_i_1_n_0 ;
  wire \dds_tx09_inc[20]_i_1_n_0 ;
  wire \dds_tx09_inc[20]_i_2_n_0 ;
  wire \dds_tx09_inc[21]_i_1_n_0 ;
  wire \dds_tx09_inc[22]_i_1_n_0 ;
  wire \dds_tx09_inc[23]_i_1_n_0 ;
  wire \dds_tx09_inc[24]_i_1_n_0 ;
  wire \dds_tx09_inc[25]_i_1_n_0 ;
  wire \dds_tx09_inc[25]_i_2_n_0 ;
  wire \dds_tx09_inc[2]_i_1_n_0 ;
  wire \dds_tx09_inc[3]_i_1_n_0 ;
  wire \dds_tx09_inc[4]_i_1_n_0 ;
  wire \dds_tx09_inc[5]_i_1_n_0 ;
  wire \dds_tx09_inc[6]_i_1_n_0 ;
  wire \dds_tx09_inc[7]_i_1_n_0 ;
  wire \dds_tx09_inc[8]_i_1_n_0 ;
  wire \dds_tx09_inc[9]_i_1_n_0 ;
  wire \dds_tx09_inc_reg[0]_0 ;
  wire dds_tx09_ptt;
  wire dds_tx09_ptt0__14;
  wire dds_tx09_ptt_i_1_n_0;
  wire dds_tx09_ptt_i_2_n_0;
  wire dds_tx09_ptt_i_3_n_0;
  wire dds_tx09_ptt_i_5_n_0;
  wire dds_tx09_ptt_i_6_n_0;
  wire dds_tx09_ptt_i_7_n_0;
  wire dds_tx09_ptt_i_8_n_0;
  wire [7:0]decoder_rx09_chAll_active;
  wire [7:0]decoder_rx09_chAll_sql_open;
  wire [4:0]encoder_frq_initial;
  wire \encoder_frq_initial[4]_i_1_n_0 ;
  wire \encoder_frq_initial[4]_i_2_n_0 ;
  wire encoder_frq_last;
  wire \encoder_frq_last[0]_i_1_n_0 ;
  wire \encoder_frq_last[1]_i_1_n_0 ;
  wire \encoder_frq_last[2]_i_1_n_0 ;
  wire \encoder_frq_last[2]_i_2_n_0 ;
  wire \encoder_frq_last[3]_i_1_n_0 ;
  wire \encoder_frq_last[3]_i_2_n_0 ;
  wire \encoder_frq_last[4]_i_2_n_0 ;
  wire \encoder_frq_last[4]_i_3_n_0 ;
  wire \encoder_frq_last[4]_i_4_n_0 ;
  wire \encoder_frq_last[4]_i_5_n_0 ;
  wire \encoder_frq_last[4]_i_7_n_0 ;
  wire \encoder_frq_last[4]_i_8_n_0 ;
  wire \encoder_frq_last_reg_n_0_[0] ;
  wire \encoder_frq_last_reg_n_0_[1] ;
  wire \encoder_frq_last_reg_n_0_[2] ;
  wire \encoder_frq_last_reg_n_0_[3] ;
  wire \encoder_frq_last_reg_n_0_[4] ;
  wire encoder_pull_FIFO_dump;
  wire [4:0]encoder_pull_data_len;
  wire encoder_pull_do_start;
  wire encoder_tx09_in_len;
  wire \encoder_tx09_in_len[3]_i_1_n_0 ;
  wire \encoder_tx09_in_len[4]_i_2_n_0 ;
  wire encoder_tx09_in_len_cnt;
  wire \encoder_tx09_in_len_cnt[0]_i_1_n_0 ;
  wire \encoder_tx09_in_len_cnt[1]_i_1_n_0 ;
  wire \encoder_tx09_in_len_cnt[2]_i_1_n_0 ;
  wire \encoder_tx09_in_len_cnt[3]_i_1_n_0 ;
  wire \encoder_tx09_in_len_cnt[3]_i_2_n_0 ;
  wire \encoder_tx09_in_len_cnt[4]_i_2_n_0 ;
  wire \encoder_tx09_in_len_cnt[4]_i_3_n_0 ;
  wire \encoder_tx09_in_len_cnt[4]_i_4_n_0 ;
  wire \encoder_tx09_in_len_cnt[4]_i_5_n_0 ;
  wire \encoder_tx09_in_len_cnt_reg_n_0_[0] ;
  wire \encoder_tx09_in_len_cnt_reg_n_0_[1] ;
  wire \encoder_tx09_in_len_cnt_reg_n_0_[2] ;
  wire \encoder_tx09_in_len_cnt_reg_n_0_[3] ;
  wire \encoder_tx09_in_len_cnt_reg_n_0_[4] ;
  wire \encoder_tx09_in_len_reg_n_0_[3] ;
  wire \encoder_tx09_in_len_reg_n_0_[4] ;
  wire [1:0]encoder_tx09_in_vec;
  wire \encoder_tx09_in_vec[0]_i_1_n_0 ;
  wire \encoder_tx09_in_vec[1]_i_1_n_0 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire loop_cnt;
  wire [31:1]loop_cnt0;
  wire loop_cnt0_carry__0_i_1_n_0;
  wire loop_cnt0_carry__0_i_2_n_0;
  wire loop_cnt0_carry__0_i_3_n_0;
  wire loop_cnt0_carry__0_i_4_n_0;
  wire loop_cnt0_carry__0_n_0;
  wire loop_cnt0_carry__0_n_1;
  wire loop_cnt0_carry__0_n_2;
  wire loop_cnt0_carry__0_n_3;
  wire loop_cnt0_carry__1_i_1_n_0;
  wire loop_cnt0_carry__1_i_2_n_0;
  wire loop_cnt0_carry__1_i_3_n_0;
  wire loop_cnt0_carry__1_i_4_n_0;
  wire loop_cnt0_carry__1_n_0;
  wire loop_cnt0_carry__1_n_1;
  wire loop_cnt0_carry__1_n_2;
  wire loop_cnt0_carry__1_n_3;
  wire loop_cnt0_carry__2_i_1_n_0;
  wire loop_cnt0_carry__2_i_2_n_0;
  wire loop_cnt0_carry__2_i_3_n_0;
  wire loop_cnt0_carry__2_i_4_n_0;
  wire loop_cnt0_carry__2_n_0;
  wire loop_cnt0_carry__2_n_1;
  wire loop_cnt0_carry__2_n_2;
  wire loop_cnt0_carry__2_n_3;
  wire loop_cnt0_carry__3_i_1_n_0;
  wire loop_cnt0_carry__3_i_2_n_0;
  wire loop_cnt0_carry__3_i_3_n_0;
  wire loop_cnt0_carry__3_i_4_n_0;
  wire loop_cnt0_carry__3_n_0;
  wire loop_cnt0_carry__3_n_1;
  wire loop_cnt0_carry__3_n_2;
  wire loop_cnt0_carry__3_n_3;
  wire loop_cnt0_carry__4_i_1_n_0;
  wire loop_cnt0_carry__4_i_2_n_0;
  wire loop_cnt0_carry__4_i_3_n_0;
  wire loop_cnt0_carry__4_i_4_n_0;
  wire loop_cnt0_carry__4_n_0;
  wire loop_cnt0_carry__4_n_1;
  wire loop_cnt0_carry__4_n_2;
  wire loop_cnt0_carry__4_n_3;
  wire loop_cnt0_carry__5_i_1_n_0;
  wire loop_cnt0_carry__5_i_2_n_0;
  wire loop_cnt0_carry__5_i_3_n_0;
  wire loop_cnt0_carry__5_i_4_n_0;
  wire loop_cnt0_carry__5_n_0;
  wire loop_cnt0_carry__5_n_1;
  wire loop_cnt0_carry__5_n_2;
  wire loop_cnt0_carry__5_n_3;
  wire loop_cnt0_carry__6_i_1_n_0;
  wire loop_cnt0_carry__6_i_2_n_0;
  wire loop_cnt0_carry__6_i_3_n_0;
  wire loop_cnt0_carry__6_n_2;
  wire loop_cnt0_carry__6_n_3;
  wire loop_cnt0_carry_i_1_n_0;
  wire loop_cnt0_carry_i_2_n_0;
  wire loop_cnt0_carry_i_3_n_0;
  wire loop_cnt0_carry_i_4_n_0;
  wire loop_cnt0_carry_n_0;
  wire loop_cnt0_carry_n_1;
  wire loop_cnt0_carry_n_2;
  wire loop_cnt0_carry_n_3;
  wire \loop_cnt[0]_i_1_n_0 ;
  wire \loop_cnt[10]_i_1_n_0 ;
  wire \loop_cnt[11]_i_1_n_0 ;
  wire \loop_cnt[12]_i_1_n_0 ;
  wire \loop_cnt[13]_i_1_n_0 ;
  wire \loop_cnt[14]_i_1_n_0 ;
  wire \loop_cnt[15]_i_1_n_0 ;
  wire \loop_cnt[16]_i_1_n_0 ;
  wire \loop_cnt[17]_i_1_n_0 ;
  wire \loop_cnt[18]_i_1_n_0 ;
  wire \loop_cnt[19]_i_1_n_0 ;
  wire \loop_cnt[1]_i_1_n_0 ;
  wire \loop_cnt[20]_i_1_n_0 ;
  wire \loop_cnt[21]_i_1_n_0 ;
  wire \loop_cnt[22]_i_1_n_0 ;
  wire \loop_cnt[23]_i_1_n_0 ;
  wire \loop_cnt[24]_i_1_n_0 ;
  wire \loop_cnt[25]_i_1_n_0 ;
  wire \loop_cnt[26]_i_1_n_0 ;
  wire \loop_cnt[27]_i_1_n_0 ;
  wire \loop_cnt[28]_i_1_n_0 ;
  wire \loop_cnt[29]_i_1_n_0 ;
  wire \loop_cnt[2]_i_1_n_0 ;
  wire \loop_cnt[30]_i_1_n_0 ;
  wire \loop_cnt[31]_i_10_n_0 ;
  wire \loop_cnt[31]_i_11_n_0 ;
  wire \loop_cnt[31]_i_2_n_0 ;
  wire \loop_cnt[31]_i_4_n_0 ;
  wire \loop_cnt[31]_i_5_n_0 ;
  wire \loop_cnt[31]_i_6_n_0 ;
  wire \loop_cnt[31]_i_7_n_0 ;
  wire \loop_cnt[31]_i_8_n_0 ;
  wire \loop_cnt[31]_i_9_n_0 ;
  wire \loop_cnt[3]_i_1_n_0 ;
  wire \loop_cnt[4]_i_1_n_0 ;
  wire \loop_cnt[5]_i_1_n_0 ;
  wire \loop_cnt[6]_i_1_n_0 ;
  wire \loop_cnt[7]_i_1_n_0 ;
  wire \loop_cnt[8]_i_1_n_0 ;
  wire \loop_cnt[9]_i_1_n_0 ;
  wire \loop_cnt_reg_n_0_[0] ;
  wire \loop_cnt_reg_n_0_[10] ;
  wire \loop_cnt_reg_n_0_[11] ;
  wire \loop_cnt_reg_n_0_[12] ;
  wire \loop_cnt_reg_n_0_[13] ;
  wire \loop_cnt_reg_n_0_[14] ;
  wire \loop_cnt_reg_n_0_[15] ;
  wire \loop_cnt_reg_n_0_[16] ;
  wire \loop_cnt_reg_n_0_[17] ;
  wire \loop_cnt_reg_n_0_[18] ;
  wire \loop_cnt_reg_n_0_[19] ;
  wire \loop_cnt_reg_n_0_[1] ;
  wire \loop_cnt_reg_n_0_[20] ;
  wire \loop_cnt_reg_n_0_[21] ;
  wire \loop_cnt_reg_n_0_[22] ;
  wire \loop_cnt_reg_n_0_[23] ;
  wire \loop_cnt_reg_n_0_[24] ;
  wire \loop_cnt_reg_n_0_[25] ;
  wire \loop_cnt_reg_n_0_[26] ;
  wire \loop_cnt_reg_n_0_[27] ;
  wire \loop_cnt_reg_n_0_[28] ;
  wire \loop_cnt_reg_n_0_[29] ;
  wire \loop_cnt_reg_n_0_[2] ;
  wire \loop_cnt_reg_n_0_[30] ;
  wire \loop_cnt_reg_n_0_[31] ;
  wire \loop_cnt_reg_n_0_[3] ;
  wire \loop_cnt_reg_n_0_[4] ;
  wire \loop_cnt_reg_n_0_[5] ;
  wire \loop_cnt_reg_n_0_[6] ;
  wire \loop_cnt_reg_n_0_[7] ;
  wire \loop_cnt_reg_n_0_[8] ;
  wire \loop_cnt_reg_n_0_[9] ;
  wire [31:26]p_1_in;
  wire p_1_out;
  wire \preIdx[4]_i_1_n_0 ;
  wire \preIdx[4]_i_2_n_0 ;
  wire \preIdx_reg_n_0_[0] ;
  wire \preIdx_reg_n_0_[1] ;
  wire \preIdx_reg_n_0_[2] ;
  wire \preIdx_reg_n_0_[3] ;
  wire \preIdx_reg_n_0_[4] ;
  wire [3:0]preIdx_reg_rep;
  wire \preIdx_rep[0]_i_1_n_0 ;
  wire \preIdx_rep[1]_i_1_n_0 ;
  wire \preIdx_rep[2]_i_1_n_0 ;
  wire \preIdx_rep[3]_i_1_n_0 ;
  wire \preIdx_rep[3]_i_2_n_0 ;
  wire \preIdx_rep[3]_i_3_n_0 ;
  wire [4:0]pull_cnt;
  wire \pull_cnt[4]_i_1_n_0 ;
  wire \pull_cnt[4]_i_3_n_0 ;
  wire [4:0]pulldata_tx09_byteData;
  wire pulldata_tx09_en;
  wire pulldata_tx09_en_i_1_n_0;
  wire pulldata_tx09_en_i_2_n_0;
  wire pulldata_tx09_en_i_3_n_0;
  wire pulldata_tx09_en_i_4_n_0;
  wire reset;
  wire [4:0]sel0;
  wire state;
  wire \state1_inferred__0/i__carry_n_1 ;
  wire \state1_inferred__0/i__carry_n_2 ;
  wire \state1_inferred__0/i__carry_n_3 ;
  wire state2;
  wire \state[0]__0_i_1_n_0 ;
  wire \state[0]__0_i_2_n_0 ;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]__0_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_8_n_0 ;
  wire \state_reg[0]__0_n_0 ;
  wire \state_reg[1]__0_n_0 ;
  wire \state_reg[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire [3:2]NLW_dds_current_freq0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_dds_current_freq0_carry_O_UNCONNECTED;
  wire [3:0]NLW_dds_tx09_inc1_carry_O_UNCONNECTED;
  wire [3:0]NLW_dds_tx09_inc1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_dds_tx09_inc1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_dds_tx09_inc1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_dds_tx09_inc1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_dds_tx09_inc1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_dds_tx09_inc1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_dds_tx09_inc1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]NLW_dds_tx09_inc2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_dds_tx09_inc2_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_dds_tx09_inc2_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_dds_tx09_inc2_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:2]NLW_loop_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_loop_cnt0_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_state1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000C2CCCCCC)) 
    \byteBit_cnt[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\byteBit_cnt_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\byteBit_cnt[2]_i_2_n_0 ),
        .I5(reset),
        .O(\byteBit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BAAA8AAA)) 
    \byteBit_cnt[1]_i_1 
       (.I0(\byteBit_cnt_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\byteBit_cnt[2]_i_2_n_0 ),
        .I4(\byteBit_cnt[1]_i_2_n_0 ),
        .I5(reset),
        .O(\byteBit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \byteBit_cnt[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\byteBit_cnt_reg_n_0_[0] ),
        .I2(\byteBit_cnt_reg_n_0_[1] ),
        .O(\byteBit_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BAAA8AAA)) 
    \byteBit_cnt[2]_i_1 
       (.I0(\byteBit_cnt_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\byteBit_cnt[2]_i_2_n_0 ),
        .I4(\byteBit_cnt[2]_i_3_n_0 ),
        .I5(reset),
        .O(\byteBit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1010000)) 
    \byteBit_cnt[2]_i_2 
       (.I0(\encoder_frq_last[4]_i_4_n_0 ),
        .I1(data0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\byteBit_cnt[2]_i_4_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\byteBit_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \byteBit_cnt[2]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\byteBit_cnt_reg_n_0_[0] ),
        .I2(\byteBit_cnt_reg_n_0_[1] ),
        .I3(\byteBit_cnt_reg_n_0_[2] ),
        .O(\byteBit_cnt[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \byteBit_cnt[2]_i_4 
       (.I0(dds_new_freq0__3),
        .I1(\byteBit_sub_reg_n_0_[0] ),
        .O(\byteBit_cnt[2]_i_4_n_0 ));
  FDRE \byteBit_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\byteBit_cnt[0]_i_1_n_0 ),
        .Q(\byteBit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \byteBit_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\byteBit_cnt[1]_i_1_n_0 ),
        .Q(\byteBit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \byteBit_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\byteBit_cnt[2]_i_1_n_0 ),
        .Q(\byteBit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000009AAA8AAA)) 
    \byteBit_sub[0]_i_1 
       (.I0(\byteBit_sub_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\byteBit_sub[0]_i_2_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(reset),
        .O(\byteBit_sub[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1010000)) 
    \byteBit_sub[0]_i_2 
       (.I0(\encoder_frq_last[4]_i_4_n_0 ),
        .I1(data0),
        .I2(\state_reg_n_0_[0] ),
        .I3(byteBit_sub1_out),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\byteBit_sub[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \byteBit_sub[0]_i_3 
       (.I0(\encoder_tx09_in_len_cnt_reg_n_0_[4] ),
        .I1(\encoder_tx09_in_len_cnt_reg_n_0_[3] ),
        .I2(\encoder_tx09_in_len_cnt_reg_n_0_[1] ),
        .I3(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .I4(\encoder_tx09_in_len_cnt_reg_n_0_[2] ),
        .I5(byteBit_cnt1__2),
        .O(byteBit_sub1_out));
  FDRE \byteBit_sub_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\byteBit_sub[0]_i_1_n_0 ),
        .Q(\byteBit_sub_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 dds_current_freq0_carry
       (.CI(1'b0),
        .CO({NLW_dds_current_freq0_carry_CO_UNCONNECTED[3:2],dds_current_freq0_carry_n_2,dds_current_freq0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_dds_current_freq0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,dds_current_freq0_carry_i_1_n_0,dds_current_freq0_carry_i_2_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    dds_current_freq0_carry_i_1
       (.I0(\dds_new_freq_reg_n_0_[3] ),
        .I1(\dds_new_inc_reg_n_0_[19] ),
        .I2(\dds_new_freq_reg_n_0_[4] ),
        .I3(\dds_new_inc_reg_n_0_[20] ),
        .O(dds_current_freq0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    dds_current_freq0_carry_i_2
       (.I0(\dds_new_freq_reg_n_0_[0] ),
        .I1(\dds_new_inc_reg_n_0_[16] ),
        .I2(\dds_new_inc_reg_n_0_[18] ),
        .I3(\dds_new_freq_reg_n_0_[2] ),
        .I4(\dds_new_inc_reg_n_0_[17] ),
        .I5(\dds_new_freq_reg_n_0_[1] ),
        .O(dds_current_freq0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_current_inc[26]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__5_n_6 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__5_n_6),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_current_inc[27]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__5_n_5 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__5_n_5),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_current_inc[28]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__5_n_4 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__5_n_4),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_current_inc[29]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__6_n_7 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__6_n_7),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_current_inc[30]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__6_n_6 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__6_n_6),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_current_inc[31]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__6_n_5 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__6_n_5),
        .O(p_1_in[31]));
  FDRE \dds_current_inc_reg[26] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(dds_current_inc[26]),
        .R(reset));
  FDRE \dds_current_inc_reg[27] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(dds_current_inc[27]),
        .R(reset));
  FDRE \dds_current_inc_reg[28] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(dds_current_inc[28]),
        .R(reset));
  FDRE \dds_current_inc_reg[29] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(dds_current_inc[29]),
        .R(reset));
  FDRE \dds_current_inc_reg[30] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(dds_current_inc[30]),
        .R(reset));
  FDRE \dds_current_inc_reg[31] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(dds_current_inc[31]),
        .R(reset));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \dds_new_freq[0]_i_1 
       (.I0(\encoder_frq_last_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(pulldata_tx09_byteData[0]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\dds_new_freq[0]_i_2_n_0 ),
        .O(\dds_new_freq[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7733740074007400)) 
    \dds_new_freq[0]_i_2 
       (.I0(\dds_new_freq_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(encoder_frq_initial[0]),
        .I3(\state_reg_n_0_[3] ),
        .I4(\encoder_frq_last_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\dds_new_freq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F60FFFF6F600000)) 
    \dds_new_freq[1]_i_1 
       (.I0(\encoder_frq_last_reg_n_0_[0] ),
        .I1(\encoder_frq_last_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(pulldata_tx09_byteData[1]),
        .I4(\state_reg_n_0_[2] ),
        .I5(\dds_new_freq[1]_i_2_n_0 ),
        .O(\dds_new_freq[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB33B800B800B800)) 
    \dds_new_freq[1]_i_2 
       (.I0(\dds_new_freq[1]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(encoder_frq_initial[1]),
        .I3(\state_reg_n_0_[3] ),
        .I4(\encoder_frq_last_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\dds_new_freq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9965996A669A6695)) 
    \dds_new_freq[1]_i_3 
       (.I0(\dds_new_freq_reg_n_0_[0] ),
        .I1(preIdx_reg_rep[2]),
        .I2(preIdx_reg_rep[1]),
        .I3(preIdx_reg_rep[0]),
        .I4(preIdx_reg_rep[3]),
        .I5(\dds_new_freq_reg_n_0_[1] ),
        .O(\dds_new_freq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \dds_new_freq[2]_i_2 
       (.I0(\dds_new_freq[2]_i_4_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(encoder_frq_initial[2]),
        .I3(\state_reg_n_0_[3] ),
        .I4(\encoder_frq_last_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\dds_new_freq[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h87FF8700)) 
    \dds_new_freq[2]_i_3 
       (.I0(\encoder_frq_last_reg_n_0_[0] ),
        .I1(\encoder_frq_last_reg_n_0_[1] ),
        .I2(\encoder_frq_last_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(pulldata_tx09_byteData[2]),
        .O(\dds_new_freq[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88828222)) 
    \dds_new_freq[2]_i_4 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\dds_new_freq_reg_n_0_[2] ),
        .I2(\dds_new_freq[4]_i_7_n_0 ),
        .I3(\dds_new_freq_reg_n_0_[1] ),
        .I4(\dds_new_freq_reg_n_0_[0] ),
        .O(\dds_new_freq[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dds_new_freq[3]_i_1 
       (.I0(\encoder_frq_last[3]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(pulldata_tx09_byteData[3]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\dds_new_freq[3]_i_2_n_0 ),
        .O(\dds_new_freq[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \dds_new_freq[3]_i_2 
       (.I0(\dds_new_freq[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(encoder_frq_initial[3]),
        .I3(\state_reg_n_0_[3] ),
        .I4(\encoder_frq_last_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\dds_new_freq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222282888)) 
    \dds_new_freq[3]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\dds_new_freq_reg_n_0_[3] ),
        .I2(\dds_new_freq_reg_n_0_[0] ),
        .I3(\dds_new_freq_reg_n_0_[1] ),
        .I4(\dds_new_freq[4]_i_7_n_0 ),
        .I5(\dds_new_freq_reg_n_0_[2] ),
        .O(\dds_new_freq[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \dds_new_freq[4]_i_1 
       (.I0(data0),
        .I1(\dds_new_freq[4]_i_3_n_0 ),
        .I2(\dds_new_freq[4]_i_4_n_0 ),
        .O(dds_new_freq));
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    \dds_new_freq[4]_i_2 
       (.I0(\encoder_frq_last[4]_i_7_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(pulldata_tx09_byteData[4]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\dds_new_freq[4]_i_5_n_0 ),
        .O(\dds_new_freq[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFEEFDDBE)) 
    \dds_new_freq[4]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\dds_new_freq[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01002A4101002241)) 
    \dds_new_freq[4]_i_4 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(dds_new_freq0__3),
        .O(\dds_new_freq[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBB33B800B800B800)) 
    \dds_new_freq[4]_i_5 
       (.I0(\dds_new_freq[4]_i_6_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(encoder_frq_initial[4]),
        .I3(\state_reg_n_0_[3] ),
        .I4(\encoder_frq_last_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\dds_new_freq[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0017FFFFFFE80000)) 
    \dds_new_freq[4]_i_6 
       (.I0(\dds_new_freq_reg_n_0_[0] ),
        .I1(\dds_new_freq_reg_n_0_[1] ),
        .I2(\dds_new_freq[4]_i_7_n_0 ),
        .I3(\dds_new_freq_reg_n_0_[2] ),
        .I4(\dds_new_freq_reg_n_0_[3] ),
        .I5(\dds_new_freq[4]_i_8_n_0 ),
        .O(\dds_new_freq[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA4A7)) 
    \dds_new_freq[4]_i_7 
       (.I0(preIdx_reg_rep[2]),
        .I1(preIdx_reg_rep[1]),
        .I2(preIdx_reg_rep[0]),
        .I3(preIdx_reg_rep[3]),
        .O(\dds_new_freq[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA5A65A56)) 
    \dds_new_freq[4]_i_8 
       (.I0(\dds_new_freq_reg_n_0_[4] ),
        .I1(preIdx_reg_rep[3]),
        .I2(preIdx_reg_rep[0]),
        .I3(preIdx_reg_rep[1]),
        .I4(preIdx_reg_rep[2]),
        .O(\dds_new_freq[4]_i_8_n_0 ));
  FDRE \dds_new_freq_reg[0] 
       (.C(clk),
        .CE(dds_new_freq),
        .D(\dds_new_freq[0]_i_1_n_0 ),
        .Q(\dds_new_freq_reg_n_0_[0] ),
        .R(reset));
  FDRE \dds_new_freq_reg[1] 
       (.C(clk),
        .CE(dds_new_freq),
        .D(\dds_new_freq[1]_i_1_n_0 ),
        .Q(\dds_new_freq_reg_n_0_[1] ),
        .R(reset));
  FDRE \dds_new_freq_reg[2] 
       (.C(clk),
        .CE(dds_new_freq),
        .D(\dds_new_freq_reg[2]_i_1_n_0 ),
        .Q(\dds_new_freq_reg_n_0_[2] ),
        .R(reset));
  MUXF7 \dds_new_freq_reg[2]_i_1 
       (.I0(\dds_new_freq[2]_i_2_n_0 ),
        .I1(\dds_new_freq[2]_i_3_n_0 ),
        .O(\dds_new_freq_reg[2]_i_1_n_0 ),
        .S(\state_reg_n_0_[2] ));
  FDRE \dds_new_freq_reg[3] 
       (.C(clk),
        .CE(dds_new_freq),
        .D(\dds_new_freq[3]_i_1_n_0 ),
        .Q(\dds_new_freq_reg_n_0_[3] ),
        .R(reset));
  FDRE \dds_new_freq_reg[4] 
       (.C(clk),
        .CE(dds_new_freq),
        .D(\dds_new_freq[4]_i_2_n_0 ),
        .Q(\dds_new_freq_reg_n_0_[4] ),
        .R(reset));
  LUT3 #(
    .INIT(8'h45)) 
    \dds_new_inc[16]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(dds_current_freq0_carry_n_2),
        .I2(\state_reg[0]__0_n_0 ),
        .O(dds_new_inc));
  LUT2 #(
    .INIT(4'h8)) 
    \dds_new_inc[16]_i_2 
       (.I0(\state_reg[0]__0_n_0 ),
        .I1(\dds_new_freq_reg_n_0_[0] ),
        .O(\dds_new_inc[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dds_new_inc[17]_i_1 
       (.I0(\state_reg[0]__0_n_0 ),
        .I1(\dds_new_freq_reg_n_0_[1] ),
        .O(\dds_new_inc[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dds_new_inc[18]_i_1 
       (.I0(\state_reg[0]__0_n_0 ),
        .I1(\dds_new_freq_reg_n_0_[2] ),
        .O(\dds_new_inc[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dds_new_inc[19]_i_1 
       (.I0(\state_reg[0]__0_n_0 ),
        .I1(\dds_new_freq_reg_n_0_[3] ),
        .O(\dds_new_inc[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dds_new_inc[20]_i_1 
       (.I0(\state_reg[0]__0_n_0 ),
        .I1(\dds_new_freq_reg_n_0_[4] ),
        .O(\dds_new_inc[20]_i_1_n_0 ));
  FDRE \dds_new_inc_reg[16] 
       (.C(clk),
        .CE(dds_new_inc),
        .D(\dds_new_inc[16]_i_2_n_0 ),
        .Q(\dds_new_inc_reg_n_0_[16] ),
        .R(reset));
  FDRE \dds_new_inc_reg[17] 
       (.C(clk),
        .CE(dds_new_inc),
        .D(\dds_new_inc[17]_i_1_n_0 ),
        .Q(\dds_new_inc_reg_n_0_[17] ),
        .R(reset));
  FDRE \dds_new_inc_reg[18] 
       (.C(clk),
        .CE(dds_new_inc),
        .D(\dds_new_inc[18]_i_1_n_0 ),
        .Q(\dds_new_inc_reg_n_0_[18] ),
        .R(reset));
  FDRE \dds_new_inc_reg[19] 
       (.C(clk),
        .CE(dds_new_inc),
        .D(\dds_new_inc[19]_i_1_n_0 ),
        .Q(\dds_new_inc_reg_n_0_[19] ),
        .R(reset));
  FDRE \dds_new_inc_reg[20] 
       (.C(clk),
        .CE(dds_new_inc),
        .D(\dds_new_inc[20]_i_1_n_0 ),
        .Q(\dds_new_inc_reg_n_0_[20] ),
        .R(reset));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 dds_tx09_inc1_carry
       (.CI(1'b0),
        .CO({dds_tx09_inc1_carry_n_0,dds_tx09_inc1_carry_n_1,dds_tx09_inc1_carry_n_2,dds_tx09_inc1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_dds_tx09_inc1_carry_O_UNCONNECTED[3:0]),
        .S({dds_tx09_inc1_carry_i_1_n_0,dds_tx09_inc1_carry_i_2_n_0,dds_tx09_inc1_carry_i_3_n_0,dds_tx09_inc1_carry_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 dds_tx09_inc1_carry__0
       (.CI(dds_tx09_inc1_carry_n_0),
        .CO({dds_tx09_inc1_carry__0_n_0,dds_tx09_inc1_carry__0_n_1,dds_tx09_inc1_carry__0_n_2,dds_tx09_inc1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_dds_tx09_inc1_carry__0_O_UNCONNECTED[3:0]),
        .S({dds_tx09_inc1_carry__0_i_1_n_0,dds_tx09_inc1_carry__0_i_2_n_0,dds_tx09_inc1_carry__0_i_3_n_0,dds_tx09_inc1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry__0_i_1
       (.I0(dds_tx09_inc2_carry__2_n_6),
        .I1(dds_tx09_inc2_carry__2_n_5),
        .O(dds_tx09_inc1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry__0_i_2
       (.I0(dds_tx09_inc2_carry__1_n_4),
        .I1(dds_tx09_inc2_carry__2_n_7),
        .O(dds_tx09_inc1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry__0_i_3
       (.I0(dds_tx09_inc2_carry__1_n_6),
        .I1(dds_tx09_inc2_carry__1_n_5),
        .O(dds_tx09_inc1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry__0_i_4
       (.I0(dds_tx09_inc2_carry__0_n_4),
        .I1(dds_tx09_inc2_carry__1_n_7),
        .O(dds_tx09_inc1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 dds_tx09_inc1_carry__1
       (.CI(dds_tx09_inc1_carry__0_n_0),
        .CO({dds_tx09_inc1_carry__1_n_0,dds_tx09_inc1_carry__1_n_1,dds_tx09_inc1_carry__1_n_2,dds_tx09_inc1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,dds_tx09_inc1_carry__1_i_1_n_0,dds_tx09_inc1_carry__1_i_2_n_0,dds_tx09_inc1_carry__1_i_3_n_0}),
        .O(NLW_dds_tx09_inc1_carry__1_O_UNCONNECTED[3:0]),
        .S({dds_tx09_inc1_carry__1_i_4_n_0,dds_tx09_inc1_carry__1_i_5_n_0,dds_tx09_inc1_carry__1_i_6_n_0,dds_tx09_inc1_carry__1_i_7_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    dds_tx09_inc1_carry__1_i_1
       (.I0(dds_tx09_inc2_carry__3_n_4),
        .I1(\dds_new_inc_reg_n_0_[20] ),
        .I2(dds_tx09_inc2_carry__4_n_7),
        .O(dds_tx09_inc1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    dds_tx09_inc1_carry__1_i_2
       (.I0(\dds_new_inc_reg_n_0_[18] ),
        .I1(dds_tx09_inc2_carry__3_n_6),
        .I2(dds_tx09_inc2_carry__3_n_5),
        .I3(\dds_new_inc_reg_n_0_[19] ),
        .O(dds_tx09_inc1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    dds_tx09_inc1_carry__1_i_3
       (.I0(\dds_new_inc_reg_n_0_[16] ),
        .I1(dds_tx09_inc2_carry__2_n_4),
        .I2(dds_tx09_inc2_carry__3_n_7),
        .I3(\dds_new_inc_reg_n_0_[17] ),
        .O(dds_tx09_inc1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry__1_i_4
       (.I0(dds_tx09_inc2_carry__4_n_6),
        .I1(dds_tx09_inc2_carry__4_n_5),
        .O(dds_tx09_inc1_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    dds_tx09_inc1_carry__1_i_5
       (.I0(\dds_new_inc_reg_n_0_[20] ),
        .I1(dds_tx09_inc2_carry__3_n_4),
        .I2(dds_tx09_inc2_carry__4_n_7),
        .O(dds_tx09_inc1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    dds_tx09_inc1_carry__1_i_6
       (.I0(\dds_new_inc_reg_n_0_[18] ),
        .I1(dds_tx09_inc2_carry__3_n_6),
        .I2(\dds_new_inc_reg_n_0_[19] ),
        .I3(dds_tx09_inc2_carry__3_n_5),
        .O(dds_tx09_inc1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    dds_tx09_inc1_carry__1_i_7
       (.I0(\dds_new_inc_reg_n_0_[16] ),
        .I1(dds_tx09_inc2_carry__2_n_4),
        .I2(\dds_new_inc_reg_n_0_[17] ),
        .I3(dds_tx09_inc2_carry__3_n_7),
        .O(dds_tx09_inc1_carry__1_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 dds_tx09_inc1_carry__2
       (.CI(dds_tx09_inc1_carry__1_n_0),
        .CO({dds_tx09_inc1_carry__2_n_0,dds_tx09_inc1_carry__2_n_1,dds_tx09_inc1_carry__2_n_2,dds_tx09_inc1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({dds_tx09_inc2_carry__6_n_5,1'b0,1'b0,1'b0}),
        .O(NLW_dds_tx09_inc1_carry__2_O_UNCONNECTED[3:0]),
        .S({dds_tx09_inc1_carry__2_i_1_n_0,dds_tx09_inc1_carry__2_i_2_n_0,dds_tx09_inc1_carry__2_i_3_n_0,dds_tx09_inc1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry__2_i_1
       (.I0(dds_tx09_inc2_carry__6_n_6),
        .I1(dds_tx09_inc2_carry__6_n_5),
        .O(dds_tx09_inc1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry__2_i_2
       (.I0(dds_tx09_inc2_carry__5_n_4),
        .I1(dds_tx09_inc2_carry__6_n_7),
        .O(dds_tx09_inc1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry__2_i_3
       (.I0(dds_tx09_inc2_carry__5_n_6),
        .I1(dds_tx09_inc2_carry__5_n_5),
        .O(dds_tx09_inc1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry__2_i_4
       (.I0(dds_tx09_inc2_carry__4_n_4),
        .I1(dds_tx09_inc2_carry__5_n_7),
        .O(dds_tx09_inc1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry_i_1
       (.I0(dds_tx09_inc2_carry__0_n_6),
        .I1(dds_tx09_inc2_carry__0_n_5),
        .O(dds_tx09_inc1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry_i_2
       (.I0(dds_tx09_inc2_carry_n_4),
        .I1(dds_tx09_inc2_carry__0_n_7),
        .O(dds_tx09_inc1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_inc1_carry_i_3
       (.I0(dds_tx09_inc2_carry_n_6),
        .I1(dds_tx09_inc2_carry_n_5),
        .O(dds_tx09_inc1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    dds_tx09_inc1_carry_i_4
       (.I0(\dds_tx09_inc_reg[0]_0 ),
        .I1(dds_tx09_inc2_carry_n_7),
        .O(dds_tx09_inc1_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dds_tx09_inc1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\dds_tx09_inc1_inferred__0/i__carry_n_0 ,\dds_tx09_inc1_inferred__0/i__carry_n_1 ,\dds_tx09_inc1_inferred__0/i__carry_n_2 ,\dds_tx09_inc1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0}),
        .O(\NLW_dds_tx09_inc1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dds_tx09_inc1_inferred__0/i__carry__0 
       (.CI(\dds_tx09_inc1_inferred__0/i__carry_n_0 ),
        .CO({\dds_tx09_inc1_inferred__0/i__carry__0_n_0 ,\dds_tx09_inc1_inferred__0/i__carry__0_n_1 ,\dds_tx09_inc1_inferred__0/i__carry__0_n_2 ,\dds_tx09_inc1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_dds_tx09_inc1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dds_tx09_inc1_inferred__0/i__carry__1 
       (.CI(\dds_tx09_inc1_inferred__0/i__carry__0_n_0 ),
        .CO({\dds_tx09_inc1_inferred__0/i__carry__1_n_0 ,\dds_tx09_inc1_inferred__0/i__carry__1_n_1 ,\dds_tx09_inc1_inferred__0/i__carry__1_n_2 ,\dds_tx09_inc1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_dds_tx09_inc1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dds_tx09_inc1_inferred__0/i__carry__2 
       (.CI(\dds_tx09_inc1_inferred__0/i__carry__1_n_0 ),
        .CO({\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ,\dds_tx09_inc1_inferred__0/i__carry__2_n_1 ,\dds_tx09_inc1_inferred__0/i__carry__2_n_2 ,\dds_tx09_inc1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_dds_tx09_inc1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dds_tx09_inc2_carry
       (.CI(1'b0),
        .CO({dds_tx09_inc2_carry_n_0,dds_tx09_inc2_carry_n_1,dds_tx09_inc2_carry_n_2,dds_tx09_inc2_carry_n_3}),
        .CYINIT(\dds_tx09_inc_reg[0]_0 ),
        .DI({1'b0,1'b0,1'b0,dds_tx09_inc[0]}),
        .O({dds_tx09_inc2_carry_n_4,dds_tx09_inc2_carry_n_5,dds_tx09_inc2_carry_n_6,dds_tx09_inc2_carry_n_7}),
        .S({dds_tx09_inc[3:1],dds_tx09_inc2_carry_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dds_tx09_inc2_carry__0
       (.CI(dds_tx09_inc2_carry_n_0),
        .CO({dds_tx09_inc2_carry__0_n_0,dds_tx09_inc2_carry__0_n_1,dds_tx09_inc2_carry__0_n_2,dds_tx09_inc2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({dds_tx09_inc[7:5],1'b0}),
        .O({dds_tx09_inc2_carry__0_n_4,dds_tx09_inc2_carry__0_n_5,dds_tx09_inc2_carry__0_n_6,dds_tx09_inc2_carry__0_n_7}),
        .S({dds_tx09_inc2_carry__0_i_1_n_0,dds_tx09_inc2_carry__0_i_2_n_0,dds_tx09_inc2_carry__0_i_3_n_0,dds_tx09_inc[4]}));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__0_i_1
       (.I0(dds_tx09_inc[7]),
        .O(dds_tx09_inc2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__0_i_2
       (.I0(dds_tx09_inc[6]),
        .O(dds_tx09_inc2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__0_i_3
       (.I0(dds_tx09_inc[5]),
        .O(dds_tx09_inc2_carry__0_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dds_tx09_inc2_carry__1
       (.CI(dds_tx09_inc2_carry__0_n_0),
        .CO({dds_tx09_inc2_carry__1_n_0,dds_tx09_inc2_carry__1_n_1,dds_tx09_inc2_carry__1_n_2,dds_tx09_inc2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({dds_tx09_inc[11],1'b0,dds_tx09_inc[9],1'b0}),
        .O({dds_tx09_inc2_carry__1_n_4,dds_tx09_inc2_carry__1_n_5,dds_tx09_inc2_carry__1_n_6,dds_tx09_inc2_carry__1_n_7}),
        .S({dds_tx09_inc2_carry__1_i_1_n_0,dds_tx09_inc[10],dds_tx09_inc2_carry__1_i_2_n_0,dds_tx09_inc[8]}));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__1_i_1
       (.I0(dds_tx09_inc[11]),
        .O(dds_tx09_inc2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__1_i_2
       (.I0(dds_tx09_inc[9]),
        .O(dds_tx09_inc2_carry__1_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dds_tx09_inc2_carry__2
       (.CI(dds_tx09_inc2_carry__1_n_0),
        .CO({dds_tx09_inc2_carry__2_n_0,dds_tx09_inc2_carry__2_n_1,dds_tx09_inc2_carry__2_n_2,dds_tx09_inc2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(dds_tx09_inc[15:12]),
        .O({dds_tx09_inc2_carry__2_n_4,dds_tx09_inc2_carry__2_n_5,dds_tx09_inc2_carry__2_n_6,dds_tx09_inc2_carry__2_n_7}),
        .S({dds_tx09_inc2_carry__2_i_1_n_0,dds_tx09_inc2_carry__2_i_2_n_0,dds_tx09_inc2_carry__2_i_3_n_0,dds_tx09_inc2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__2_i_1
       (.I0(dds_tx09_inc[15]),
        .O(dds_tx09_inc2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__2_i_2
       (.I0(dds_tx09_inc[14]),
        .O(dds_tx09_inc2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__2_i_3
       (.I0(dds_tx09_inc[13]),
        .O(dds_tx09_inc2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__2_i_4
       (.I0(dds_tx09_inc[12]),
        .O(dds_tx09_inc2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dds_tx09_inc2_carry__3
       (.CI(dds_tx09_inc2_carry__2_n_0),
        .CO({dds_tx09_inc2_carry__3_n_0,dds_tx09_inc2_carry__3_n_1,dds_tx09_inc2_carry__3_n_2,dds_tx09_inc2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(dds_tx09_inc[19:16]),
        .O({dds_tx09_inc2_carry__3_n_4,dds_tx09_inc2_carry__3_n_5,dds_tx09_inc2_carry__3_n_6,dds_tx09_inc2_carry__3_n_7}),
        .S({dds_tx09_inc2_carry__3_i_1_n_0,dds_tx09_inc2_carry__3_i_2_n_0,dds_tx09_inc2_carry__3_i_3_n_0,dds_tx09_inc2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__3_i_1
       (.I0(dds_tx09_inc[19]),
        .O(dds_tx09_inc2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__3_i_2
       (.I0(dds_tx09_inc[18]),
        .O(dds_tx09_inc2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__3_i_3
       (.I0(dds_tx09_inc[17]),
        .O(dds_tx09_inc2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__3_i_4
       (.I0(dds_tx09_inc[16]),
        .O(dds_tx09_inc2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dds_tx09_inc2_carry__4
       (.CI(dds_tx09_inc2_carry__3_n_0),
        .CO({dds_tx09_inc2_carry__4_n_0,dds_tx09_inc2_carry__4_n_1,dds_tx09_inc2_carry__4_n_2,dds_tx09_inc2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(dds_tx09_inc[23:20]),
        .O({dds_tx09_inc2_carry__4_n_4,dds_tx09_inc2_carry__4_n_5,dds_tx09_inc2_carry__4_n_6,dds_tx09_inc2_carry__4_n_7}),
        .S({dds_tx09_inc2_carry__4_i_1_n_0,dds_tx09_inc2_carry__4_i_2_n_0,dds_tx09_inc2_carry__4_i_3_n_0,dds_tx09_inc2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__4_i_1
       (.I0(dds_tx09_inc[23]),
        .O(dds_tx09_inc2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__4_i_2
       (.I0(dds_tx09_inc[22]),
        .O(dds_tx09_inc2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__4_i_3
       (.I0(dds_tx09_inc[21]),
        .O(dds_tx09_inc2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__4_i_4
       (.I0(dds_tx09_inc[20]),
        .O(dds_tx09_inc2_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dds_tx09_inc2_carry__5
       (.CI(dds_tx09_inc2_carry__4_n_0),
        .CO({dds_tx09_inc2_carry__5_n_0,dds_tx09_inc2_carry__5_n_1,dds_tx09_inc2_carry__5_n_2,dds_tx09_inc2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({dds_current_inc[28:26],dds_tx09_inc[24]}),
        .O({dds_tx09_inc2_carry__5_n_4,dds_tx09_inc2_carry__5_n_5,dds_tx09_inc2_carry__5_n_6,dds_tx09_inc2_carry__5_n_7}),
        .S({dds_tx09_inc2_carry__5_i_1_n_0,dds_tx09_inc2_carry__5_i_2_n_0,dds_tx09_inc2_carry__5_i_3_n_0,dds_tx09_inc2_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__5_i_1
       (.I0(dds_current_inc[28]),
        .O(dds_tx09_inc2_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__5_i_2
       (.I0(dds_current_inc[27]),
        .O(dds_tx09_inc2_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__5_i_3
       (.I0(dds_current_inc[26]),
        .O(dds_tx09_inc2_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__5_i_4
       (.I0(dds_tx09_inc[24]),
        .O(dds_tx09_inc2_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dds_tx09_inc2_carry__6
       (.CI(dds_tx09_inc2_carry__5_n_0),
        .CO({NLW_dds_tx09_inc2_carry__6_CO_UNCONNECTED[3:2],dds_tx09_inc2_carry__6_n_2,dds_tx09_inc2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,dds_current_inc[30:29]}),
        .O({NLW_dds_tx09_inc2_carry__6_O_UNCONNECTED[3],dds_tx09_inc2_carry__6_n_5,dds_tx09_inc2_carry__6_n_6,dds_tx09_inc2_carry__6_n_7}),
        .S({1'b0,dds_tx09_inc2_carry__6_i_1_n_0,dds_tx09_inc2_carry__6_i_2_n_0,dds_tx09_inc2_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__6_i_1
       (.I0(dds_current_inc[31]),
        .O(dds_tx09_inc2_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__6_i_2
       (.I0(dds_current_inc[30]),
        .O(dds_tx09_inc2_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry__6_i_3
       (.I0(dds_current_inc[29]),
        .O(dds_tx09_inc2_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dds_tx09_inc2_carry_i_1
       (.I0(dds_tx09_inc[0]),
        .O(dds_tx09_inc2_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dds_tx09_inc2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\dds_tx09_inc2_inferred__0/i__carry_n_0 ,\dds_tx09_inc2_inferred__0/i__carry_n_1 ,\dds_tx09_inc2_inferred__0/i__carry_n_2 ,\dds_tx09_inc2_inferred__0/i__carry_n_3 }),
        .CYINIT(\dds_tx09_inc_reg[0]_0 ),
        .DI({dds_tx09_inc[3:1],1'b0}),
        .O({\dds_tx09_inc2_inferred__0/i__carry_n_4 ,\dds_tx09_inc2_inferred__0/i__carry_n_5 ,\dds_tx09_inc2_inferred__0/i__carry_n_6 ,\dds_tx09_inc2_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,dds_tx09_inc[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dds_tx09_inc2_inferred__0/i__carry__0 
       (.CI(\dds_tx09_inc2_inferred__0/i__carry_n_0 ),
        .CO({\dds_tx09_inc2_inferred__0/i__carry__0_n_0 ,\dds_tx09_inc2_inferred__0/i__carry__0_n_1 ,\dds_tx09_inc2_inferred__0/i__carry__0_n_2 ,\dds_tx09_inc2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,dds_tx09_inc[4]}),
        .O({\dds_tx09_inc2_inferred__0/i__carry__0_n_4 ,\dds_tx09_inc2_inferred__0/i__carry__0_n_5 ,\dds_tx09_inc2_inferred__0/i__carry__0_n_6 ,\dds_tx09_inc2_inferred__0/i__carry__0_n_7 }),
        .S({dds_tx09_inc[7:5],i__carry__0_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dds_tx09_inc2_inferred__0/i__carry__1 
       (.CI(\dds_tx09_inc2_inferred__0/i__carry__0_n_0 ),
        .CO({\dds_tx09_inc2_inferred__0/i__carry__1_n_0 ,\dds_tx09_inc2_inferred__0/i__carry__1_n_1 ,\dds_tx09_inc2_inferred__0/i__carry__1_n_2 ,\dds_tx09_inc2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,dds_tx09_inc[10],1'b0,dds_tx09_inc[8]}),
        .O({\dds_tx09_inc2_inferred__0/i__carry__1_n_4 ,\dds_tx09_inc2_inferred__0/i__carry__1_n_5 ,\dds_tx09_inc2_inferred__0/i__carry__1_n_6 ,\dds_tx09_inc2_inferred__0/i__carry__1_n_7 }),
        .S({dds_tx09_inc[11],i__carry__1_i_1_n_0,dds_tx09_inc[9],i__carry__1_i_2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dds_tx09_inc2_inferred__0/i__carry__2 
       (.CI(\dds_tx09_inc2_inferred__0/i__carry__1_n_0 ),
        .CO({\dds_tx09_inc2_inferred__0/i__carry__2_n_0 ,\dds_tx09_inc2_inferred__0/i__carry__2_n_1 ,\dds_tx09_inc2_inferred__0/i__carry__2_n_2 ,\dds_tx09_inc2_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dds_tx09_inc2_inferred__0/i__carry__2_n_4 ,\dds_tx09_inc2_inferred__0/i__carry__2_n_5 ,\dds_tx09_inc2_inferred__0/i__carry__2_n_6 ,\dds_tx09_inc2_inferred__0/i__carry__2_n_7 }),
        .S(dds_tx09_inc[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dds_tx09_inc2_inferred__0/i__carry__3 
       (.CI(\dds_tx09_inc2_inferred__0/i__carry__2_n_0 ),
        .CO({\dds_tx09_inc2_inferred__0/i__carry__3_n_0 ,\dds_tx09_inc2_inferred__0/i__carry__3_n_1 ,\dds_tx09_inc2_inferred__0/i__carry__3_n_2 ,\dds_tx09_inc2_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dds_tx09_inc2_inferred__0/i__carry__3_n_4 ,\dds_tx09_inc2_inferred__0/i__carry__3_n_5 ,\dds_tx09_inc2_inferred__0/i__carry__3_n_6 ,\dds_tx09_inc2_inferred__0/i__carry__3_n_7 }),
        .S(dds_tx09_inc[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dds_tx09_inc2_inferred__0/i__carry__4 
       (.CI(\dds_tx09_inc2_inferred__0/i__carry__3_n_0 ),
        .CO({\dds_tx09_inc2_inferred__0/i__carry__4_n_0 ,\dds_tx09_inc2_inferred__0/i__carry__4_n_1 ,\dds_tx09_inc2_inferred__0/i__carry__4_n_2 ,\dds_tx09_inc2_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dds_tx09_inc2_inferred__0/i__carry__4_n_4 ,\dds_tx09_inc2_inferred__0/i__carry__4_n_5 ,\dds_tx09_inc2_inferred__0/i__carry__4_n_6 ,\dds_tx09_inc2_inferred__0/i__carry__4_n_7 }),
        .S(dds_tx09_inc[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dds_tx09_inc2_inferred__0/i__carry__5 
       (.CI(\dds_tx09_inc2_inferred__0/i__carry__4_n_0 ),
        .CO({\dds_tx09_inc2_inferred__0/i__carry__5_n_0 ,\dds_tx09_inc2_inferred__0/i__carry__5_n_1 ,\dds_tx09_inc2_inferred__0/i__carry__5_n_2 ,\dds_tx09_inc2_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dds_tx09_inc2_inferred__0/i__carry__5_n_4 ,\dds_tx09_inc2_inferred__0/i__carry__5_n_5 ,\dds_tx09_inc2_inferred__0/i__carry__5_n_6 ,\dds_tx09_inc2_inferred__0/i__carry__5_n_7 }),
        .S({dds_current_inc[28:26],dds_tx09_inc[24]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dds_tx09_inc2_inferred__0/i__carry__6 
       (.CI(\dds_tx09_inc2_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_dds_tx09_inc2_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\dds_tx09_inc2_inferred__0/i__carry__6_n_2 ,\dds_tx09_inc2_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dds_tx09_inc2_inferred__0/i__carry__6_O_UNCONNECTED [3],\dds_tx09_inc2_inferred__0/i__carry__6_n_5 ,\dds_tx09_inc2_inferred__0/i__carry__6_n_6 ,\dds_tx09_inc2_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,dds_current_inc[31:29]}));
  LUT5 #(
    .INIT(32'h00022202)) 
    \dds_tx09_inc[0]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc_reg[0]_0 ),
        .I2(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .O(\dds_tx09_inc[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[10]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__1_n_6 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__1_n_6),
        .O(\dds_tx09_inc[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[11]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__1_n_5 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__1_n_5),
        .O(\dds_tx09_inc[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[12]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__1_n_4 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__1_n_4),
        .O(\dds_tx09_inc[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[13]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__2_n_7 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__2_n_7),
        .O(\dds_tx09_inc[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[14]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__2_n_6 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__2_n_6),
        .O(\dds_tx09_inc[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[15]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__2_n_5 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__2_n_5),
        .O(\dds_tx09_inc[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dds_tx09_inc[16]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc[16]_i_2_n_0 ),
        .O(\dds_tx09_inc[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \dds_tx09_inc[16]_i_2 
       (.I0(dds_tx09_inc1_carry__2_n_0),
        .I1(dds_tx09_inc2_carry__2_n_4),
        .I2(\state_reg[0]__0_n_0 ),
        .I3(\dds_new_inc_reg_n_0_[16] ),
        .I4(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I5(\dds_tx09_inc2_inferred__0/i__carry__2_n_4 ),
        .O(\dds_tx09_inc[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dds_tx09_inc[17]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc[17]_i_2_n_0 ),
        .O(\dds_tx09_inc[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \dds_tx09_inc[17]_i_2 
       (.I0(dds_tx09_inc1_carry__2_n_0),
        .I1(dds_tx09_inc2_carry__3_n_7),
        .I2(\state_reg[0]__0_n_0 ),
        .I3(\dds_new_inc_reg_n_0_[17] ),
        .I4(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I5(\dds_tx09_inc2_inferred__0/i__carry__3_n_7 ),
        .O(\dds_tx09_inc[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dds_tx09_inc[18]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc[18]_i_2_n_0 ),
        .O(\dds_tx09_inc[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \dds_tx09_inc[18]_i_2 
       (.I0(dds_tx09_inc1_carry__2_n_0),
        .I1(dds_tx09_inc2_carry__3_n_6),
        .I2(\state_reg[0]__0_n_0 ),
        .I3(\dds_new_inc_reg_n_0_[18] ),
        .I4(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I5(\dds_tx09_inc2_inferred__0/i__carry__3_n_6 ),
        .O(\dds_tx09_inc[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dds_tx09_inc[19]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc[19]_i_2_n_0 ),
        .O(\dds_tx09_inc[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \dds_tx09_inc[19]_i_2 
       (.I0(dds_tx09_inc1_carry__2_n_0),
        .I1(dds_tx09_inc2_carry__3_n_5),
        .I2(\state_reg[0]__0_n_0 ),
        .I3(\dds_new_inc_reg_n_0_[19] ),
        .I4(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I5(\dds_tx09_inc2_inferred__0/i__carry__3_n_5 ),
        .O(\dds_tx09_inc[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[1]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry_n_7 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry_n_7),
        .O(\dds_tx09_inc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dds_tx09_inc[20]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc[20]_i_2_n_0 ),
        .O(\dds_tx09_inc[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \dds_tx09_inc[20]_i_2 
       (.I0(dds_tx09_inc1_carry__2_n_0),
        .I1(dds_tx09_inc2_carry__3_n_4),
        .I2(\state_reg[0]__0_n_0 ),
        .I3(\dds_new_inc_reg_n_0_[20] ),
        .I4(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I5(\dds_tx09_inc2_inferred__0/i__carry__3_n_4 ),
        .O(\dds_tx09_inc[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[21]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__4_n_7 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__4_n_7),
        .O(\dds_tx09_inc[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[22]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__4_n_6 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__4_n_6),
        .O(\dds_tx09_inc[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[23]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__4_n_5 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__4_n_5),
        .O(\dds_tx09_inc[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[24]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__4_n_4 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__4_n_4),
        .O(\dds_tx09_inc[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dds_tx09_inc[25]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\state_reg[0]__0_n_0 ),
        .O(\dds_tx09_inc[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[25]_i_2 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__5_n_7 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__5_n_7),
        .O(\dds_tx09_inc[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[2]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry_n_6 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry_n_6),
        .O(\dds_tx09_inc[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[3]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry_n_5 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry_n_5),
        .O(\dds_tx09_inc[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[4]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry_n_4 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry_n_4),
        .O(\dds_tx09_inc[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[5]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__0_n_7 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__0_n_7),
        .O(\dds_tx09_inc[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[6]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__0_n_6 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__0_n_6),
        .O(\dds_tx09_inc[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[7]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__0_n_5 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__0_n_5),
        .O(\dds_tx09_inc[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[8]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__0_n_4 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__0_n_4),
        .O(\dds_tx09_inc[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA2000200020)) 
    \dds_tx09_inc[9]_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__1_n_7 ),
        .I3(\state_reg[0]__0_n_0 ),
        .I4(dds_tx09_inc1_carry__2_n_0),
        .I5(dds_tx09_inc2_carry__1_n_7),
        .O(\dds_tx09_inc[9]_i_1_n_0 ));
  FDRE \dds_tx09_inc_reg[0] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[0]_i_1_n_0 ),
        .Q(\dds_tx09_inc_reg[0]_0 ),
        .R(reset));
  FDRE \dds_tx09_inc_reg[10] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[10]_i_1_n_0 ),
        .Q(dds_tx09_inc[9]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[11] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[11]_i_1_n_0 ),
        .Q(dds_tx09_inc[10]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[12] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[12]_i_1_n_0 ),
        .Q(dds_tx09_inc[11]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[13] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[13]_i_1_n_0 ),
        .Q(dds_tx09_inc[12]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[14] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[14]_i_1_n_0 ),
        .Q(dds_tx09_inc[13]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[15] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[15]_i_1_n_0 ),
        .Q(dds_tx09_inc[14]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[16] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[16]_i_1_n_0 ),
        .Q(dds_tx09_inc[15]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[17] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[17]_i_1_n_0 ),
        .Q(dds_tx09_inc[16]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[18] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[18]_i_1_n_0 ),
        .Q(dds_tx09_inc[17]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[19] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[19]_i_1_n_0 ),
        .Q(dds_tx09_inc[18]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[1] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[1]_i_1_n_0 ),
        .Q(dds_tx09_inc[0]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[20] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[20]_i_1_n_0 ),
        .Q(dds_tx09_inc[19]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[21] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[21]_i_1_n_0 ),
        .Q(dds_tx09_inc[20]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[22] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[22]_i_1_n_0 ),
        .Q(dds_tx09_inc[21]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[23] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[23]_i_1_n_0 ),
        .Q(dds_tx09_inc[22]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[24] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[24]_i_1_n_0 ),
        .Q(dds_tx09_inc[23]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[25] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[25]_i_2_n_0 ),
        .Q(dds_tx09_inc[24]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[2] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[2]_i_1_n_0 ),
        .Q(dds_tx09_inc[1]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[3] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[3]_i_1_n_0 ),
        .Q(dds_tx09_inc[2]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[4] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[4]_i_1_n_0 ),
        .Q(dds_tx09_inc[3]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[5] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[5]_i_1_n_0 ),
        .Q(dds_tx09_inc[4]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[6] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[6]_i_1_n_0 ),
        .Q(dds_tx09_inc[5]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[7] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[7]_i_1_n_0 ),
        .Q(dds_tx09_inc[6]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[8] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[8]_i_1_n_0 ),
        .Q(dds_tx09_inc[7]),
        .R(reset));
  FDRE \dds_tx09_inc_reg[9] 
       (.C(clk),
        .CE(\dds_tx09_inc[25]_i_1_n_0 ),
        .D(\dds_tx09_inc[9]_i_1_n_0 ),
        .Q(dds_tx09_inc[8]),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    dds_tx09_ptt_i_1
       (.I0(dds_tx09_ptt_i_2_n_0),
        .I1(reset),
        .O(dds_tx09_ptt_i_1_n_0));
  LUT6 #(
    .INIT(64'hDDFFFFDD00000080)) 
    dds_tx09_ptt_i_2
       (.I0(dds_tx09_ptt_i_3_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(dds_tx09_ptt0__14),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(dds_tx09_ptt),
        .O(dds_tx09_ptt_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    dds_tx09_ptt_i_3
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(dds_tx09_ptt_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    dds_tx09_ptt_i_4
       (.I0(dds_tx09_ptt_i_5_n_0),
        .I1(dds_tx09_ptt_i_6_n_0),
        .I2(dds_tx09_ptt_i_7_n_0),
        .I3(dds_tx09_ptt_i_8_n_0),
        .O(dds_tx09_ptt0__14));
  LUT4 #(
    .INIT(16'hFFFE)) 
    dds_tx09_ptt_i_5
       (.I0(decoder_rx09_chAll_sql_open[2]),
        .I1(decoder_rx09_chAll_sql_open[3]),
        .I2(decoder_rx09_chAll_sql_open[0]),
        .I3(decoder_rx09_chAll_sql_open[1]),
        .O(dds_tx09_ptt_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    dds_tx09_ptt_i_6
       (.I0(decoder_rx09_chAll_sql_open[7]),
        .I1(decoder_rx09_chAll_sql_open[6]),
        .I2(decoder_rx09_chAll_sql_open[4]),
        .I3(decoder_rx09_chAll_sql_open[5]),
        .O(dds_tx09_ptt_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    dds_tx09_ptt_i_7
       (.I0(decoder_rx09_chAll_active[2]),
        .I1(decoder_rx09_chAll_active[3]),
        .I2(decoder_rx09_chAll_active[0]),
        .I3(decoder_rx09_chAll_active[1]),
        .O(dds_tx09_ptt_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    dds_tx09_ptt_i_8
       (.I0(decoder_rx09_chAll_active[7]),
        .I1(decoder_rx09_chAll_active[6]),
        .I2(decoder_rx09_chAll_active[4]),
        .I3(decoder_rx09_chAll_active[5]),
        .O(dds_tx09_ptt_i_8_n_0));
  FDRE dds_tx09_ptt_reg
       (.C(clk),
        .CE(1'b1),
        .D(dds_tx09_ptt_i_1_n_0),
        .Q(dds_tx09_ptt),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \encoder_frq_initial[4]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\encoder_frq_initial[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \encoder_frq_initial[4]_i_2 
       (.I0(pulldata_tx09_byteData[4]),
        .O(\encoder_frq_initial[4]_i_2_n_0 ));
  FDRE \encoder_frq_initial_reg[0] 
       (.C(clk),
        .CE(\encoder_frq_initial[4]_i_1_n_0 ),
        .D(pulldata_tx09_byteData[0]),
        .Q(encoder_frq_initial[0]),
        .R(reset));
  FDRE \encoder_frq_initial_reg[1] 
       (.C(clk),
        .CE(\encoder_frq_initial[4]_i_1_n_0 ),
        .D(pulldata_tx09_byteData[1]),
        .Q(encoder_frq_initial[1]),
        .R(reset));
  FDRE \encoder_frq_initial_reg[2] 
       (.C(clk),
        .CE(\encoder_frq_initial[4]_i_1_n_0 ),
        .D(pulldata_tx09_byteData[2]),
        .Q(encoder_frq_initial[2]),
        .R(reset));
  FDRE \encoder_frq_initial_reg[3] 
       (.C(clk),
        .CE(\encoder_frq_initial[4]_i_1_n_0 ),
        .D(pulldata_tx09_byteData[3]),
        .Q(encoder_frq_initial[3]),
        .R(reset));
  FDRE \encoder_frq_initial_reg[4] 
       (.C(clk),
        .CE(\encoder_frq_initial[4]_i_1_n_0 ),
        .D(\encoder_frq_initial[4]_i_2_n_0 ),
        .Q(encoder_frq_initial[4]),
        .R(reset));
  LUT5 #(
    .INIT(32'h00002AEA)) 
    \encoder_frq_last[0]_i_1 
       (.I0(encoder_frq_initial[0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(byteBit_cnt1__2),
        .I3(\encoder_frq_last_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\encoder_frq_last[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002AEAEA2A)) 
    \encoder_frq_last[1]_i_1 
       (.I0(encoder_frq_initial[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(byteBit_cnt1__2),
        .I3(\encoder_frq_last_reg_n_0_[1] ),
        .I4(\encoder_frq_last_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\encoder_frq_last[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EA2A)) 
    \encoder_frq_last[2]_i_1 
       (.I0(encoder_frq_initial[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(byteBit_cnt1__2),
        .I3(\encoder_frq_last[2]_i_2_n_0 ),
        .I4(\state_reg_n_0_[4] ),
        .O(\encoder_frq_last[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \encoder_frq_last[2]_i_2 
       (.I0(\encoder_frq_last_reg_n_0_[0] ),
        .I1(\encoder_frq_last_reg_n_0_[1] ),
        .I2(\encoder_frq_last_reg_n_0_[2] ),
        .O(\encoder_frq_last[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EA2A)) 
    \encoder_frq_last[3]_i_1 
       (.I0(encoder_frq_initial[3]),
        .I1(\state_reg_n_0_[0] ),
        .I2(byteBit_cnt1__2),
        .I3(\encoder_frq_last[3]_i_2_n_0 ),
        .I4(\state_reg_n_0_[4] ),
        .O(\encoder_frq_last[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1DE2E21D)) 
    \encoder_frq_last[3]_i_2 
       (.I0(encoder_tx09_in_vec[1]),
        .I1(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .I2(encoder_tx09_in_vec[0]),
        .I3(\encoder_frq_last_reg_n_0_[3] ),
        .I4(\encoder_frq_last[4]_i_8_n_0 ),
        .O(\encoder_frq_last[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88008B33)) 
    \encoder_frq_last[4]_i_1 
       (.I0(dds_new_freq0__3),
        .I1(\encoder_frq_last[4]_i_3_n_0 ),
        .I2(\encoder_frq_last[4]_i_4_n_0 ),
        .I3(\encoder_frq_last[4]_i_5_n_0 ),
        .I4(data0),
        .O(encoder_frq_last));
  LUT5 #(
    .INIT(32'h0000EA2A)) 
    \encoder_frq_last[4]_i_2 
       (.I0(encoder_frq_initial[4]),
        .I1(\state_reg_n_0_[0] ),
        .I2(byteBit_cnt1__2),
        .I3(\encoder_frq_last[4]_i_7_n_0 ),
        .I4(\state_reg_n_0_[4] ),
        .O(\encoder_frq_last[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFBEFFF)) 
    \encoder_frq_last[4]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\encoder_frq_last[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \encoder_frq_last[4]_i_4 
       (.I0(\preIdx_reg_n_0_[0] ),
        .I1(\preIdx_reg_n_0_[1] ),
        .I2(\preIdx_reg_n_0_[2] ),
        .I3(\preIdx_reg_n_0_[4] ),
        .I4(\preIdx_reg_n_0_[3] ),
        .O(\encoder_frq_last[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \encoder_frq_last[4]_i_5 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\encoder_frq_last[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \encoder_frq_last[4]_i_6 
       (.I0(\byteBit_cnt_reg_n_0_[2] ),
        .I1(\byteBit_cnt_reg_n_0_[0] ),
        .I2(\byteBit_cnt_reg_n_0_[1] ),
        .I3(\byteBit_sub_reg_n_0_[0] ),
        .O(byteBit_cnt1__2));
  LUT6 #(
    .INIT(64'h47FFFFB8B8000047)) 
    \encoder_frq_last[4]_i_7 
       (.I0(encoder_tx09_in_vec[0]),
        .I1(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .I2(encoder_tx09_in_vec[1]),
        .I3(\encoder_frq_last_reg_n_0_[3] ),
        .I4(\encoder_frq_last[4]_i_8_n_0 ),
        .I5(\encoder_frq_last_reg_n_0_[4] ),
        .O(\encoder_frq_last[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \encoder_frq_last[4]_i_8 
       (.I0(\encoder_frq_last_reg_n_0_[0] ),
        .I1(\encoder_frq_last_reg_n_0_[1] ),
        .I2(\encoder_frq_last_reg_n_0_[2] ),
        .O(\encoder_frq_last[4]_i_8_n_0 ));
  FDRE \encoder_frq_last_reg[0] 
       (.C(clk),
        .CE(encoder_frq_last),
        .D(\encoder_frq_last[0]_i_1_n_0 ),
        .Q(\encoder_frq_last_reg_n_0_[0] ),
        .R(reset));
  FDRE \encoder_frq_last_reg[1] 
       (.C(clk),
        .CE(encoder_frq_last),
        .D(\encoder_frq_last[1]_i_1_n_0 ),
        .Q(\encoder_frq_last_reg_n_0_[1] ),
        .R(reset));
  FDRE \encoder_frq_last_reg[2] 
       (.C(clk),
        .CE(encoder_frq_last),
        .D(\encoder_frq_last[2]_i_1_n_0 ),
        .Q(\encoder_frq_last_reg_n_0_[2] ),
        .R(reset));
  FDRE \encoder_frq_last_reg[3] 
       (.C(clk),
        .CE(encoder_frq_last),
        .D(\encoder_frq_last[3]_i_1_n_0 ),
        .Q(\encoder_frq_last_reg_n_0_[3] ),
        .R(reset));
  FDRE \encoder_frq_last_reg[4] 
       (.C(clk),
        .CE(encoder_frq_last),
        .D(\encoder_frq_last[4]_i_2_n_0 ),
        .Q(\encoder_frq_last_reg_n_0_[4] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \encoder_tx09_in_len[3]_i_1 
       (.I0(\encoder_tx09_in_len_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\encoder_tx09_in_len[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800000800)) 
    \encoder_tx09_in_len[4]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(dds_new_freq0__3),
        .I5(\state_reg_n_0_[1] ),
        .O(encoder_tx09_in_len));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \encoder_tx09_in_len[4]_i_2 
       (.I0(\encoder_tx09_in_len_reg_n_0_[4] ),
        .I1(\encoder_tx09_in_len_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[3] ),
        .O(\encoder_tx09_in_len[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \encoder_tx09_in_len_cnt[0]_i_1 
       (.I0(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .O(\encoder_tx09_in_len_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0090)) 
    \encoder_tx09_in_len_cnt[1]_i_1 
       (.I0(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .I1(\encoder_tx09_in_len_cnt_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .O(\encoder_tx09_in_len_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000E100)) 
    \encoder_tx09_in_len_cnt[2]_i_1 
       (.I0(\encoder_tx09_in_len_cnt_reg_n_0_[1] ),
        .I1(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .I2(\encoder_tx09_in_len_cnt_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\encoder_tx09_in_len_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001DD1)) 
    \encoder_tx09_in_len_cnt[3]_i_1 
       (.I0(\encoder_tx09_in_len_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\encoder_tx09_in_len_cnt_reg_n_0_[3] ),
        .I3(\encoder_tx09_in_len_cnt[3]_i_2_n_0 ),
        .I4(\state_reg_n_0_[4] ),
        .O(\encoder_tx09_in_len_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \encoder_tx09_in_len_cnt[3]_i_2 
       (.I0(\encoder_tx09_in_len_cnt_reg_n_0_[1] ),
        .I1(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .I2(\encoder_tx09_in_len_cnt_reg_n_0_[2] ),
        .O(\encoder_tx09_in_len_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000F606)) 
    \encoder_tx09_in_len_cnt[4]_i_2 
       (.I0(\encoder_tx09_in_len_reg_n_0_[4] ),
        .I1(\encoder_tx09_in_len_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\encoder_tx09_in_len_cnt[4]_i_5_n_0 ),
        .I4(\state_reg_n_0_[4] ),
        .O(\encoder_tx09_in_len_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \encoder_tx09_in_len_cnt[4]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(data0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\encoder_tx09_in_len_cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0044400000004000)) 
    \encoder_tx09_in_len_cnt[4]_i_4 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(dds_new_freq0__3),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(p_1_out),
        .O(\encoder_tx09_in_len_cnt[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \encoder_tx09_in_len_cnt[4]_i_5 
       (.I0(\encoder_tx09_in_len_cnt_reg_n_0_[3] ),
        .I1(\encoder_tx09_in_len_cnt_reg_n_0_[2] ),
        .I2(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .I3(\encoder_tx09_in_len_cnt_reg_n_0_[1] ),
        .I4(\encoder_tx09_in_len_cnt_reg_n_0_[4] ),
        .O(\encoder_tx09_in_len_cnt[4]_i_5_n_0 ));
  FDRE \encoder_tx09_in_len_cnt_reg[0] 
       (.C(clk),
        .CE(encoder_tx09_in_len_cnt),
        .D(\encoder_tx09_in_len_cnt[0]_i_1_n_0 ),
        .Q(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .R(reset));
  FDRE \encoder_tx09_in_len_cnt_reg[1] 
       (.C(clk),
        .CE(encoder_tx09_in_len_cnt),
        .D(\encoder_tx09_in_len_cnt[1]_i_1_n_0 ),
        .Q(\encoder_tx09_in_len_cnt_reg_n_0_[1] ),
        .R(reset));
  FDRE \encoder_tx09_in_len_cnt_reg[2] 
       (.C(clk),
        .CE(encoder_tx09_in_len_cnt),
        .D(\encoder_tx09_in_len_cnt[2]_i_1_n_0 ),
        .Q(\encoder_tx09_in_len_cnt_reg_n_0_[2] ),
        .R(reset));
  FDRE \encoder_tx09_in_len_cnt_reg[3] 
       (.C(clk),
        .CE(encoder_tx09_in_len_cnt),
        .D(\encoder_tx09_in_len_cnt[3]_i_1_n_0 ),
        .Q(\encoder_tx09_in_len_cnt_reg_n_0_[3] ),
        .R(reset));
  FDRE \encoder_tx09_in_len_cnt_reg[4] 
       (.C(clk),
        .CE(encoder_tx09_in_len_cnt),
        .D(\encoder_tx09_in_len_cnt[4]_i_2_n_0 ),
        .Q(\encoder_tx09_in_len_cnt_reg_n_0_[4] ),
        .R(reset));
  MUXF7 \encoder_tx09_in_len_cnt_reg[4]_i_1 
       (.I0(\encoder_tx09_in_len_cnt[4]_i_3_n_0 ),
        .I1(\encoder_tx09_in_len_cnt[4]_i_4_n_0 ),
        .O(encoder_tx09_in_len_cnt),
        .S(\state_reg_n_0_[0] ));
  FDRE \encoder_tx09_in_len_reg[3] 
       (.C(clk),
        .CE(encoder_tx09_in_len),
        .D(\encoder_tx09_in_len[3]_i_1_n_0 ),
        .Q(\encoder_tx09_in_len_reg_n_0_[3] ),
        .R(reset));
  FDRE \encoder_tx09_in_len_reg[4] 
       (.C(clk),
        .CE(encoder_tx09_in_len),
        .D(\encoder_tx09_in_len[4]_i_2_n_0 ),
        .Q(\encoder_tx09_in_len_reg_n_0_[4] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \encoder_tx09_in_vec[0]_i_1 
       (.I0(pulldata_tx09_byteData[0]),
        .I1(\state_reg_n_0_[3] ),
        .O(\encoder_tx09_in_vec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \encoder_tx09_in_vec[1]_i_1 
       (.I0(pulldata_tx09_byteData[1]),
        .I1(\state_reg_n_0_[3] ),
        .O(\encoder_tx09_in_vec[1]_i_1_n_0 ));
  FDRE \encoder_tx09_in_vec_reg[0] 
       (.C(clk),
        .CE(encoder_tx09_in_len),
        .D(\encoder_tx09_in_vec[0]_i_1_n_0 ),
        .Q(encoder_tx09_in_vec[0]),
        .R(reset));
  FDRE \encoder_tx09_in_vec_reg[1] 
       (.C(clk),
        .CE(encoder_tx09_in_len),
        .D(\encoder_tx09_in_vec[1]_i_1_n_0 ),
        .Q(encoder_tx09_in_vec[1]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(dds_tx09_inc[4]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__0
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__2_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__2_n_5 ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__1_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__2_n_7 ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__1_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__1_n_5 ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__0_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__1_n_7 ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__2_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__2_n_5 ),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__1_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__2_n_7 ),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__1_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__1_n_5 ),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__0_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__1_n_7 ),
        .O(i__carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(dds_tx09_inc[10]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1__0
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__4_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__4_n_5 ),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(dds_tx09_inc[8]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hF2)) 
    i__carry__1_i_2__0
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__3_n_4 ),
        .I1(\dds_new_inc_reg_n_0_[20] ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__4_n_7 ),
        .O(i__carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__3_n_6 ),
        .I1(\dds_new_inc_reg_n_0_[18] ),
        .I2(\dds_new_inc_reg_n_0_[19] ),
        .I3(\dds_tx09_inc2_inferred__0/i__carry__3_n_5 ),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__2_n_4 ),
        .I1(\dds_new_inc_reg_n_0_[16] ),
        .I2(\dds_new_inc_reg_n_0_[17] ),
        .I3(\dds_tx09_inc2_inferred__0/i__carry__3_n_7 ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_5
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__4_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__4_n_5 ),
        .O(i__carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    i__carry__1_i_6
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__3_n_4 ),
        .I1(\dds_new_inc_reg_n_0_[20] ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__4_n_7 ),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__3_n_6 ),
        .I1(\dds_new_inc_reg_n_0_[18] ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__3_n_5 ),
        .I3(\dds_new_inc_reg_n_0_[19] ),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__2_n_4 ),
        .I1(\dds_new_inc_reg_n_0_[16] ),
        .I2(\dds_tx09_inc2_inferred__0/i__carry__3_n_7 ),
        .I3(\dds_new_inc_reg_n_0_[17] ),
        .O(i__carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__6_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__6_n_5 ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__5_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__6_n_7 ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__5_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__5_n_5 ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__4_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__5_n_7 ),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_5
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__6_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__6_n_5 ),
        .O(i__carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_6
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__5_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__6_n_7 ),
        .O(i__carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_7
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__5_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__5_n_5 ),
        .O(i__carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_8
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__4_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__5_n_7 ),
        .O(i__carry__2_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(dds_tx09_inc[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__0_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__0_n_5 ),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__1
       (.I0(\dds_new_freq_reg_n_0_[4] ),
        .I1(\dds_new_inc_reg_n_0_[20] ),
        .O(i__carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(dds_tx09_inc[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__0
       (.I0(\dds_tx09_inc2_inferred__0/i__carry_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__0_n_7 ),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(\dds_new_freq_reg_n_0_[2] ),
        .I1(\dds_new_inc_reg_n_0_[18] ),
        .I2(\dds_new_inc_reg_n_0_[19] ),
        .I3(\dds_new_freq_reg_n_0_[3] ),
        .O(i__carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(dds_tx09_inc[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__0
       (.I0(\dds_tx09_inc2_inferred__0/i__carry_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry_n_5 ),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(\dds_new_freq_reg_n_0_[0] ),
        .I1(\dds_new_inc_reg_n_0_[16] ),
        .I2(\dds_new_inc_reg_n_0_[17] ),
        .I3(\dds_new_freq_reg_n_0_[1] ),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hD)) 
    i__carry_i_4
       (.I0(\dds_tx09_inc_reg[0]_0 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry_n_7 ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__0
       (.I0(\dds_new_inc_reg_n_0_[20] ),
        .I1(\dds_new_freq_reg_n_0_[4] ),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\dds_new_freq_reg_n_0_[2] ),
        .I1(\dds_new_inc_reg_n_0_[18] ),
        .I2(\dds_new_freq_reg_n_0_[3] ),
        .I3(\dds_new_inc_reg_n_0_[19] ),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5__0
       (.I0(\dds_tx09_inc2_inferred__0/i__carry__0_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__0_n_5 ),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\dds_new_freq_reg_n_0_[0] ),
        .I1(\dds_new_inc_reg_n_0_[16] ),
        .I2(\dds_new_freq_reg_n_0_[1] ),
        .I3(\dds_new_inc_reg_n_0_[17] ),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__0
       (.I0(\dds_tx09_inc2_inferred__0/i__carry_n_4 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry__0_n_7 ),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7
       (.I0(\dds_tx09_inc2_inferred__0/i__carry_n_6 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry_n_5 ),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(\dds_tx09_inc_reg[0]_0 ),
        .I1(\dds_tx09_inc2_inferred__0/i__carry_n_7 ),
        .O(i__carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 loop_cnt0_carry
       (.CI(1'b0),
        .CO({loop_cnt0_carry_n_0,loop_cnt0_carry_n_1,loop_cnt0_carry_n_2,loop_cnt0_carry_n_3}),
        .CYINIT(\loop_cnt_reg_n_0_[0] ),
        .DI({\loop_cnt_reg_n_0_[4] ,\loop_cnt_reg_n_0_[3] ,\loop_cnt_reg_n_0_[2] ,\loop_cnt_reg_n_0_[1] }),
        .O(loop_cnt0[4:1]),
        .S({loop_cnt0_carry_i_1_n_0,loop_cnt0_carry_i_2_n_0,loop_cnt0_carry_i_3_n_0,loop_cnt0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 loop_cnt0_carry__0
       (.CI(loop_cnt0_carry_n_0),
        .CO({loop_cnt0_carry__0_n_0,loop_cnt0_carry__0_n_1,loop_cnt0_carry__0_n_2,loop_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\loop_cnt_reg_n_0_[8] ,\loop_cnt_reg_n_0_[7] ,\loop_cnt_reg_n_0_[6] ,\loop_cnt_reg_n_0_[5] }),
        .O(loop_cnt0[8:5]),
        .S({loop_cnt0_carry__0_i_1_n_0,loop_cnt0_carry__0_i_2_n_0,loop_cnt0_carry__0_i_3_n_0,loop_cnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__0_i_1
       (.I0(\loop_cnt_reg_n_0_[8] ),
        .O(loop_cnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__0_i_2
       (.I0(\loop_cnt_reg_n_0_[7] ),
        .O(loop_cnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__0_i_3
       (.I0(\loop_cnt_reg_n_0_[6] ),
        .O(loop_cnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__0_i_4
       (.I0(\loop_cnt_reg_n_0_[5] ),
        .O(loop_cnt0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 loop_cnt0_carry__1
       (.CI(loop_cnt0_carry__0_n_0),
        .CO({loop_cnt0_carry__1_n_0,loop_cnt0_carry__1_n_1,loop_cnt0_carry__1_n_2,loop_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\loop_cnt_reg_n_0_[12] ,\loop_cnt_reg_n_0_[11] ,\loop_cnt_reg_n_0_[10] ,\loop_cnt_reg_n_0_[9] }),
        .O(loop_cnt0[12:9]),
        .S({loop_cnt0_carry__1_i_1_n_0,loop_cnt0_carry__1_i_2_n_0,loop_cnt0_carry__1_i_3_n_0,loop_cnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__1_i_1
       (.I0(\loop_cnt_reg_n_0_[12] ),
        .O(loop_cnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__1_i_2
       (.I0(\loop_cnt_reg_n_0_[11] ),
        .O(loop_cnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__1_i_3
       (.I0(\loop_cnt_reg_n_0_[10] ),
        .O(loop_cnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__1_i_4
       (.I0(\loop_cnt_reg_n_0_[9] ),
        .O(loop_cnt0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 loop_cnt0_carry__2
       (.CI(loop_cnt0_carry__1_n_0),
        .CO({loop_cnt0_carry__2_n_0,loop_cnt0_carry__2_n_1,loop_cnt0_carry__2_n_2,loop_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\loop_cnt_reg_n_0_[16] ,\loop_cnt_reg_n_0_[15] ,\loop_cnt_reg_n_0_[14] ,\loop_cnt_reg_n_0_[13] }),
        .O(loop_cnt0[16:13]),
        .S({loop_cnt0_carry__2_i_1_n_0,loop_cnt0_carry__2_i_2_n_0,loop_cnt0_carry__2_i_3_n_0,loop_cnt0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__2_i_1
       (.I0(\loop_cnt_reg_n_0_[16] ),
        .O(loop_cnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__2_i_2
       (.I0(\loop_cnt_reg_n_0_[15] ),
        .O(loop_cnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__2_i_3
       (.I0(\loop_cnt_reg_n_0_[14] ),
        .O(loop_cnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__2_i_4
       (.I0(\loop_cnt_reg_n_0_[13] ),
        .O(loop_cnt0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 loop_cnt0_carry__3
       (.CI(loop_cnt0_carry__2_n_0),
        .CO({loop_cnt0_carry__3_n_0,loop_cnt0_carry__3_n_1,loop_cnt0_carry__3_n_2,loop_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\loop_cnt_reg_n_0_[20] ,\loop_cnt_reg_n_0_[19] ,\loop_cnt_reg_n_0_[18] ,\loop_cnt_reg_n_0_[17] }),
        .O(loop_cnt0[20:17]),
        .S({loop_cnt0_carry__3_i_1_n_0,loop_cnt0_carry__3_i_2_n_0,loop_cnt0_carry__3_i_3_n_0,loop_cnt0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__3_i_1
       (.I0(\loop_cnt_reg_n_0_[20] ),
        .O(loop_cnt0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__3_i_2
       (.I0(\loop_cnt_reg_n_0_[19] ),
        .O(loop_cnt0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__3_i_3
       (.I0(\loop_cnt_reg_n_0_[18] ),
        .O(loop_cnt0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__3_i_4
       (.I0(\loop_cnt_reg_n_0_[17] ),
        .O(loop_cnt0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 loop_cnt0_carry__4
       (.CI(loop_cnt0_carry__3_n_0),
        .CO({loop_cnt0_carry__4_n_0,loop_cnt0_carry__4_n_1,loop_cnt0_carry__4_n_2,loop_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\loop_cnt_reg_n_0_[24] ,\loop_cnt_reg_n_0_[23] ,\loop_cnt_reg_n_0_[22] ,\loop_cnt_reg_n_0_[21] }),
        .O(loop_cnt0[24:21]),
        .S({loop_cnt0_carry__4_i_1_n_0,loop_cnt0_carry__4_i_2_n_0,loop_cnt0_carry__4_i_3_n_0,loop_cnt0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__4_i_1
       (.I0(\loop_cnt_reg_n_0_[24] ),
        .O(loop_cnt0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__4_i_2
       (.I0(\loop_cnt_reg_n_0_[23] ),
        .O(loop_cnt0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__4_i_3
       (.I0(\loop_cnt_reg_n_0_[22] ),
        .O(loop_cnt0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__4_i_4
       (.I0(\loop_cnt_reg_n_0_[21] ),
        .O(loop_cnt0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 loop_cnt0_carry__5
       (.CI(loop_cnt0_carry__4_n_0),
        .CO({loop_cnt0_carry__5_n_0,loop_cnt0_carry__5_n_1,loop_cnt0_carry__5_n_2,loop_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\loop_cnt_reg_n_0_[28] ,\loop_cnt_reg_n_0_[27] ,\loop_cnt_reg_n_0_[26] ,\loop_cnt_reg_n_0_[25] }),
        .O(loop_cnt0[28:25]),
        .S({loop_cnt0_carry__5_i_1_n_0,loop_cnt0_carry__5_i_2_n_0,loop_cnt0_carry__5_i_3_n_0,loop_cnt0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__5_i_1
       (.I0(\loop_cnt_reg_n_0_[28] ),
        .O(loop_cnt0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__5_i_2
       (.I0(\loop_cnt_reg_n_0_[27] ),
        .O(loop_cnt0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__5_i_3
       (.I0(\loop_cnt_reg_n_0_[26] ),
        .O(loop_cnt0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__5_i_4
       (.I0(\loop_cnt_reg_n_0_[25] ),
        .O(loop_cnt0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 loop_cnt0_carry__6
       (.CI(loop_cnt0_carry__5_n_0),
        .CO({NLW_loop_cnt0_carry__6_CO_UNCONNECTED[3:2],loop_cnt0_carry__6_n_2,loop_cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\loop_cnt_reg_n_0_[30] ,\loop_cnt_reg_n_0_[29] }),
        .O({NLW_loop_cnt0_carry__6_O_UNCONNECTED[3],loop_cnt0[31:29]}),
        .S({1'b0,loop_cnt0_carry__6_i_1_n_0,loop_cnt0_carry__6_i_2_n_0,loop_cnt0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__6_i_1
       (.I0(\loop_cnt_reg_n_0_[31] ),
        .O(loop_cnt0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__6_i_2
       (.I0(\loop_cnt_reg_n_0_[30] ),
        .O(loop_cnt0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry__6_i_3
       (.I0(\loop_cnt_reg_n_0_[29] ),
        .O(loop_cnt0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry_i_1
       (.I0(\loop_cnt_reg_n_0_[4] ),
        .O(loop_cnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry_i_2
       (.I0(\loop_cnt_reg_n_0_[3] ),
        .O(loop_cnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry_i_3
       (.I0(\loop_cnt_reg_n_0_[2] ),
        .O(loop_cnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    loop_cnt0_carry_i_4
       (.I0(\loop_cnt_reg_n_0_[1] ),
        .O(loop_cnt0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \loop_cnt[0]_i_1 
       (.I0(\loop_cnt_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2222222F)) 
    \loop_cnt[10]_i_1 
       (.I0(loop_cnt0[10]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\loop_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[11]_i_1 
       (.I0(loop_cnt0[11]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE00)) 
    \loop_cnt[12]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(loop_cnt0[12]),
        .O(\loop_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \loop_cnt[13]_i_1 
       (.I0(loop_cnt0[13]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2222222F)) 
    \loop_cnt[14]_i_1 
       (.I0(loop_cnt0[14]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\loop_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[15]_i_1 
       (.I0(loop_cnt0[15]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[16]_i_1 
       (.I0(loop_cnt0[16]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[17]_i_1 
       (.I0(loop_cnt0[17]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[18]_i_1 
       (.I0(loop_cnt0[18]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[19]_i_1 
       (.I0(loop_cnt0[19]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[1]_i_1 
       (.I0(loop_cnt0[1]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[20]_i_1 
       (.I0(loop_cnt0[20]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[21]_i_1 
       (.I0(loop_cnt0[21]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[22]_i_1 
       (.I0(loop_cnt0[22]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[23]_i_1 
       (.I0(loop_cnt0[23]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[24]_i_1 
       (.I0(loop_cnt0[24]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[25]_i_1 
       (.I0(loop_cnt0[25]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[26]_i_1 
       (.I0(loop_cnt0[26]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[27]_i_1 
       (.I0(loop_cnt0[27]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[28]_i_1 
       (.I0(loop_cnt0[28]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[29]_i_1 
       (.I0(loop_cnt0[29]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[2]_i_1 
       (.I0(loop_cnt0[2]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[30]_i_1 
       (.I0(loop_cnt0[30]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \loop_cnt[31]_i_1 
       (.I0(data0),
        .I1(\loop_cnt[31]_i_4_n_0 ),
        .I2(\loop_cnt[31]_i_5_n_0 ),
        .O(loop_cnt));
  LUT2 #(
    .INIT(4'hE)) 
    \loop_cnt[31]_i_10 
       (.I0(\loop_cnt_reg_n_0_[30] ),
        .I1(\loop_cnt_reg_n_0_[31] ),
        .O(\loop_cnt[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \loop_cnt[31]_i_11 
       (.I0(\loop_cnt_reg_n_0_[1] ),
        .I1(\loop_cnt_reg_n_0_[2] ),
        .I2(\loop_cnt_reg_n_0_[0] ),
        .I3(\loop_cnt_reg_n_0_[4] ),
        .I4(\loop_cnt_reg_n_0_[5] ),
        .I5(\loop_cnt_reg_n_0_[3] ),
        .O(\loop_cnt[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[31]_i_2 
       (.I0(loop_cnt0[31]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \loop_cnt[31]_i_3 
       (.I0(\loop_cnt[31]_i_6_n_0 ),
        .I1(\loop_cnt[31]_i_7_n_0 ),
        .I2(\loop_cnt[31]_i_8_n_0 ),
        .I3(\loop_cnt[31]_i_9_n_0 ),
        .I4(\loop_cnt[31]_i_10_n_0 ),
        .I5(\loop_cnt[31]_i_11_n_0 ),
        .O(data0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h050E0060)) 
    \loop_cnt[31]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\loop_cnt[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000800CC00000C00)) 
    \loop_cnt[31]_i_5 
       (.I0(dds_new_freq0__3),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\loop_cnt[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \loop_cnt[31]_i_6 
       (.I0(\loop_cnt_reg_n_0_[25] ),
        .I1(\loop_cnt_reg_n_0_[26] ),
        .I2(\loop_cnt_reg_n_0_[24] ),
        .I3(\loop_cnt_reg_n_0_[28] ),
        .I4(\loop_cnt_reg_n_0_[29] ),
        .I5(\loop_cnt_reg_n_0_[27] ),
        .O(\loop_cnt[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \loop_cnt[31]_i_7 
       (.I0(\loop_cnt_reg_n_0_[7] ),
        .I1(\loop_cnt_reg_n_0_[8] ),
        .I2(\loop_cnt_reg_n_0_[6] ),
        .I3(\loop_cnt_reg_n_0_[10] ),
        .I4(\loop_cnt_reg_n_0_[11] ),
        .I5(\loop_cnt_reg_n_0_[9] ),
        .O(\loop_cnt[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \loop_cnt[31]_i_8 
       (.I0(\loop_cnt_reg_n_0_[19] ),
        .I1(\loop_cnt_reg_n_0_[20] ),
        .I2(\loop_cnt_reg_n_0_[18] ),
        .I3(\loop_cnt_reg_n_0_[22] ),
        .I4(\loop_cnt_reg_n_0_[23] ),
        .I5(\loop_cnt_reg_n_0_[21] ),
        .O(\loop_cnt[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \loop_cnt[31]_i_9 
       (.I0(\loop_cnt_reg_n_0_[13] ),
        .I1(\loop_cnt_reg_n_0_[14] ),
        .I2(\loop_cnt_reg_n_0_[12] ),
        .I3(\loop_cnt_reg_n_0_[16] ),
        .I4(\loop_cnt_reg_n_0_[17] ),
        .I5(\loop_cnt_reg_n_0_[15] ),
        .O(\loop_cnt[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[3]_i_1 
       (.I0(loop_cnt0[3]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[4]_i_1 
       (.I0(loop_cnt0[4]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[5]_i_1 
       (.I0(loop_cnt0[5]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[6]_i_1 
       (.I0(loop_cnt0[6]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[7]_i_1 
       (.I0(loop_cnt0[7]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[8]_i_1 
       (.I0(loop_cnt0[8]),
        .I1(\state_reg_n_0_[0] ),
        .O(\loop_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE00)) 
    \loop_cnt[9]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(loop_cnt0[9]),
        .O(\loop_cnt[9]_i_1_n_0 ));
  FDRE \loop_cnt_reg[0] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[0]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[0] ),
        .R(reset));
  FDRE \loop_cnt_reg[10] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[10]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[10] ),
        .R(reset));
  FDRE \loop_cnt_reg[11] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[11]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[11] ),
        .R(reset));
  FDRE \loop_cnt_reg[12] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[12]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[12] ),
        .R(reset));
  FDRE \loop_cnt_reg[13] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[13]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[13] ),
        .R(reset));
  FDRE \loop_cnt_reg[14] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[14]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[14] ),
        .R(reset));
  FDRE \loop_cnt_reg[15] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[15]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[15] ),
        .R(reset));
  FDRE \loop_cnt_reg[16] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[16]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[16] ),
        .R(reset));
  FDRE \loop_cnt_reg[17] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[17]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[17] ),
        .R(reset));
  FDRE \loop_cnt_reg[18] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[18]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[18] ),
        .R(reset));
  FDRE \loop_cnt_reg[19] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[19]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[19] ),
        .R(reset));
  FDRE \loop_cnt_reg[1] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[1]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[1] ),
        .R(reset));
  FDRE \loop_cnt_reg[20] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[20]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[20] ),
        .R(reset));
  FDRE \loop_cnt_reg[21] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[21]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[21] ),
        .R(reset));
  FDRE \loop_cnt_reg[22] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[22]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[22] ),
        .R(reset));
  FDRE \loop_cnt_reg[23] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[23]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[23] ),
        .R(reset));
  FDRE \loop_cnt_reg[24] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[24]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[24] ),
        .R(reset));
  FDRE \loop_cnt_reg[25] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[25]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[25] ),
        .R(reset));
  FDRE \loop_cnt_reg[26] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[26]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[26] ),
        .R(reset));
  FDRE \loop_cnt_reg[27] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[27]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[27] ),
        .R(reset));
  FDRE \loop_cnt_reg[28] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[28]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[28] ),
        .R(reset));
  FDRE \loop_cnt_reg[29] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[29]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[29] ),
        .R(reset));
  FDRE \loop_cnt_reg[2] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[2]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[2] ),
        .R(reset));
  FDRE \loop_cnt_reg[30] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[30]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[30] ),
        .R(reset));
  FDRE \loop_cnt_reg[31] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[31]_i_2_n_0 ),
        .Q(\loop_cnt_reg_n_0_[31] ),
        .R(reset));
  FDRE \loop_cnt_reg[3] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[3]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[3] ),
        .R(reset));
  FDRE \loop_cnt_reg[4] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[4]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[4] ),
        .R(reset));
  FDRE \loop_cnt_reg[5] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[5]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[5] ),
        .R(reset));
  FDRE \loop_cnt_reg[6] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[6]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[6] ),
        .R(reset));
  FDRE \loop_cnt_reg[7] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[7]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[7] ),
        .R(reset));
  FDRE \loop_cnt_reg[8] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[8]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[8] ),
        .R(reset));
  FDRE \loop_cnt_reg[9] 
       (.C(clk),
        .CE(loop_cnt),
        .D(\loop_cnt[9]_i_1_n_0 ),
        .Q(\loop_cnt_reg_n_0_[9] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h15400000)) 
    \preIdx[4]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\preIdx[4]_i_2_n_0 ),
        .I2(\preIdx_reg_n_0_[3] ),
        .I3(\preIdx_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\preIdx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \preIdx[4]_i_2 
       (.I0(\preIdx_reg_n_0_[2] ),
        .I1(\preIdx_reg_n_0_[1] ),
        .I2(\preIdx_reg_n_0_[0] ),
        .O(\preIdx[4]_i_2_n_0 ));
  FDRE \preIdx_reg[0] 
       (.C(clk),
        .CE(\preIdx_rep[3]_i_1_n_0 ),
        .D(\preIdx_rep[0]_i_1_n_0 ),
        .Q(\preIdx_reg_n_0_[0] ),
        .R(reset));
  FDRE \preIdx_reg[1] 
       (.C(clk),
        .CE(\preIdx_rep[3]_i_1_n_0 ),
        .D(\preIdx_rep[1]_i_1_n_0 ),
        .Q(\preIdx_reg_n_0_[1] ),
        .R(reset));
  FDRE \preIdx_reg[2] 
       (.C(clk),
        .CE(\preIdx_rep[3]_i_1_n_0 ),
        .D(\preIdx_rep[2]_i_1_n_0 ),
        .Q(\preIdx_reg_n_0_[2] ),
        .R(reset));
  FDRE \preIdx_reg[3] 
       (.C(clk),
        .CE(\preIdx_rep[3]_i_1_n_0 ),
        .D(\preIdx_rep[3]_i_2_n_0 ),
        .Q(\preIdx_reg_n_0_[3] ),
        .R(reset));
  FDRE \preIdx_reg[4] 
       (.C(clk),
        .CE(\preIdx_rep[3]_i_1_n_0 ),
        .D(\preIdx[4]_i_1_n_0 ),
        .Q(\preIdx_reg_n_0_[4] ),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE \preIdx_reg_rep[0] 
       (.C(clk),
        .CE(\preIdx_rep[3]_i_1_n_0 ),
        .D(\preIdx_rep[0]_i_1_n_0 ),
        .Q(preIdx_reg_rep[0]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE \preIdx_reg_rep[1] 
       (.C(clk),
        .CE(\preIdx_rep[3]_i_1_n_0 ),
        .D(\preIdx_rep[1]_i_1_n_0 ),
        .Q(preIdx_reg_rep[1]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE \preIdx_reg_rep[2] 
       (.C(clk),
        .CE(\preIdx_rep[3]_i_1_n_0 ),
        .D(\preIdx_rep[2]_i_1_n_0 ),
        .Q(preIdx_reg_rep[2]),
        .R(reset));
  (* equivalent_register_removal = "no" *) 
  FDRE \preIdx_reg_rep[3] 
       (.C(clk),
        .CE(\preIdx_rep[3]_i_1_n_0 ),
        .D(\preIdx_rep[3]_i_2_n_0 ),
        .Q(preIdx_reg_rep[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \preIdx_rep[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\preIdx_reg_n_0_[0] ),
        .O(\preIdx_rep[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \preIdx_rep[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\preIdx_reg_n_0_[0] ),
        .I2(\preIdx_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\preIdx_rep[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h15400000)) 
    \preIdx_rep[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\preIdx_reg_n_0_[1] ),
        .I2(\preIdx_reg_n_0_[0] ),
        .I3(\preIdx_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\preIdx_rep[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \preIdx_rep[3]_i_1 
       (.I0(\preIdx_rep[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .O(\preIdx_rep[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555400000000000)) 
    \preIdx_rep[3]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\preIdx_reg_n_0_[0] ),
        .I2(\preIdx_reg_n_0_[1] ),
        .I3(\preIdx_reg_n_0_[2] ),
        .I4(\preIdx_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\preIdx_rep[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0030003000000FA0)) 
    \preIdx_rep[3]_i_3 
       (.I0(\encoder_frq_last[4]_i_4_n_0 ),
        .I1(dds_new_freq0__3),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(data0),
        .I5(\state_reg_n_0_[0] ),
        .O(\preIdx_rep[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \pull_cnt[0]_i_1 
       (.I0(sel0[0]),
        .I1(\state_reg_n_0_[2] ),
        .I2(encoder_pull_data_len[0]),
        .O(pull_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \pull_cnt[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(encoder_pull_data_len[1]),
        .O(pull_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \pull_cnt[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\state_reg_n_0_[2] ),
        .I4(encoder_pull_data_len[2]),
        .O(pull_cnt[2]));
  LUT6 #(
    .INIT(64'hFE01FFFFFE010000)) 
    \pull_cnt[3]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\state_reg_n_0_[2] ),
        .I5(encoder_pull_data_len[3]),
        .O(pull_cnt[3]));
  LUT5 #(
    .INIT(32'h10100100)) 
    \pull_cnt[4]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\pull_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF10FFFFEF100000)) 
    \pull_cnt[4]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(\pull_cnt[4]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(\state_reg_n_0_[2] ),
        .I5(encoder_pull_data_len[4]),
        .O(pull_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \pull_cnt[4]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\pull_cnt[4]_i_3_n_0 ));
  FDRE \pull_cnt_reg[0] 
       (.C(clk),
        .CE(\pull_cnt[4]_i_1_n_0 ),
        .D(pull_cnt[0]),
        .Q(sel0[0]),
        .R(reset));
  FDRE \pull_cnt_reg[1] 
       (.C(clk),
        .CE(\pull_cnt[4]_i_1_n_0 ),
        .D(pull_cnt[1]),
        .Q(sel0[1]),
        .R(reset));
  FDRE \pull_cnt_reg[2] 
       (.C(clk),
        .CE(\pull_cnt[4]_i_1_n_0 ),
        .D(pull_cnt[2]),
        .Q(sel0[2]),
        .R(reset));
  FDRE \pull_cnt_reg[3] 
       (.C(clk),
        .CE(\pull_cnt[4]_i_1_n_0 ),
        .D(pull_cnt[3]),
        .Q(sel0[3]),
        .R(reset));
  FDRE \pull_cnt_reg[4] 
       (.C(clk),
        .CE(\pull_cnt[4]_i_1_n_0 ),
        .D(pull_cnt[4]),
        .Q(sel0[4]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000000AAAEAAA2)) 
    pulldata_tx09_en_i_1
       (.I0(pulldata_tx09_en),
        .I1(pulldata_tx09_en_i_2_n_0),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(pulldata_tx09_en_i_3_n_0),
        .I5(reset),
        .O(pulldata_tx09_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h80000000CCFFCCFF)) 
    pulldata_tx09_en_i_2
       (.I0(pulldata_tx09_en_i_4_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(sel0[2]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\pull_cnt[4]_i_3_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(pulldata_tx09_en_i_2_n_0));
  LUT5 #(
    .INIT(32'h55540000)) 
    pulldata_tx09_en_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(encoder_pull_do_start),
        .I3(encoder_pull_FIFO_dump),
        .I4(\state_reg_n_0_[1] ),
        .O(pulldata_tx09_en_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    pulldata_tx09_en_i_4
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .O(pulldata_tx09_en_i_4_n_0));
  FDRE pulldata_tx09_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(pulldata_tx09_en_i_1_n_0),
        .Q(pulldata_tx09_en),
        .R(1'b0));
  CARRY4 \state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_state1_inferred__0/i__carry_CO_UNCONNECTED [3],\state1_inferred__0/i__carry_n_1 ,\state1_inferred__0/i__carry_n_2 ,\state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0}),
        .O(\NLW_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_4__0_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  LUT4 #(
    .INIT(16'hBFF0)) 
    \state[0]__0_i_1 
       (.I0(\state_reg[1]__0_n_0 ),
        .I1(\state1_inferred__0/i__carry_n_1 ),
        .I2(\state[0]__0_i_2_n_0 ),
        .I3(\state_reg[0]__0_n_0 ),
        .O(\state[0]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB833)) 
    \state[0]__0_i_2 
       (.I0(dds_tx09_inc1_carry__2_n_0),
        .I1(\state_reg[0]__0_n_0 ),
        .I2(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I3(\state_reg[1]__0_n_0 ),
        .I4(dds_current_freq0_carry_n_2),
        .I5(reset),
        .O(\state[0]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0055575500000000)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[0]_i_2_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555557FF555557)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(encoder_pull_FIFO_dump),
        .I2(state2),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(dds_new_freq0__3),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \state[0]_i_3 
       (.I0(encoder_pull_do_start),
        .I1(encoder_pull_data_len[2]),
        .I2(encoder_pull_data_len[4]),
        .I3(encoder_pull_data_len[3]),
        .I4(encoder_pull_data_len[1]),
        .I5(encoder_pull_data_len[0]),
        .O(state2));
  LUT6 #(
    .INIT(64'hFF00FF0047CC4700)) 
    \state[1]__0_i_1 
       (.I0(dds_tx09_inc1_carry__2_n_0),
        .I1(\state_reg[0]__0_n_0 ),
        .I2(\dds_tx09_inc1_inferred__0/i__carry__2_n_0 ),
        .I3(\state_reg[1]__0_n_0 ),
        .I4(dds_current_freq0_carry_n_2),
        .I5(reset),
        .O(\state[1]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00003C80)) 
    \state[1]_i_2 
       (.I0(\encoder_frq_last[4]_i_4_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01015515)) 
    \state[1]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(dds_new_freq0__3),
        .I4(\state_reg_n_0_[4] ),
        .O(\state[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state[2]_i_2_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FF0AFF88FF)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\encoder_frq_last[4]_i_4_n_0 ),
        .I2(dds_new_freq0__3),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000075FF8800)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(dds_new_freq0__3),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_3_n_0 ),
        .I1(\state[4]_i_4_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state[4]_i_5_n_0 ),
        .O(state));
  LUT6 #(
    .INIT(64'h0000040000400400)) 
    \state[4]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(dds_new_freq0__3),
        .O(\state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCC4447)) 
    \state[4]_i_3 
       (.I0(data0),
        .I1(\state_reg_n_0_[4] ),
        .I2(encoder_pull_do_start),
        .I3(encoder_pull_FIFO_dump),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \state[4]_i_4 
       (.I0(p_1_out),
        .I1(\state_reg_n_0_[0] ),
        .I2(data0),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[4]_i_8_n_0 ),
        .O(\state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F700F70707F7070)) 
    \state[4]_i_5 
       (.I0(data0),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(dds_tx09_ptt0__14),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[4]_i_6 
       (.I0(\encoder_tx09_in_len_cnt_reg_n_0_[2] ),
        .I1(\encoder_tx09_in_len_cnt_reg_n_0_[0] ),
        .I2(\encoder_tx09_in_len_cnt_reg_n_0_[1] ),
        .I3(\encoder_tx09_in_len_cnt_reg_n_0_[3] ),
        .I4(\encoder_tx09_in_len_cnt_reg_n_0_[4] ),
        .O(dds_new_freq0__3));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \state[4]_i_7 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(sel0[1]),
        .O(p_1_out));
  LUT5 #(
    .INIT(32'h55545555)) 
    \state[4]_i_8 
       (.I0(\state_reg_n_0_[3] ),
        .I1(state2),
        .I2(encoder_pull_FIFO_dump),
        .I3(encoder_pull_do_start),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[4]_i_8_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(state),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(reset));
  FDRE \state_reg[0]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]__0_i_1_n_0 ),
        .Q(\state_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(state),
        .D(\state_reg[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(reset));
  FDRE \state_reg[1]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]__0_i_1_n_0 ),
        .Q(\state_reg[1]__0_n_0 ),
        .R(1'b0));
  MUXF7 \state_reg[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[1]_i_3_n_0 ),
        .O(\state_reg[1]_i_1_n_0 ),
        .S(\state_reg_n_0_[0] ));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(state),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(reset));
  FDRE \state_reg[3] 
       (.C(clk),
        .CE(state),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(reset));
  FDRE \state_reg[4] 
       (.C(clk),
        .CE(state),
        .D(\state[4]_i_2_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
