// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Mon Aug 26 01:56:06 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_axi_gpio_3_ROTENC_0 -prefix
//               mcu_axi_gpio_3_ROTENC_0_ mcu_axi_gpio_3_ROTENC_0_sim_netlist.v
// Design      : mcu_axi_gpio_3_ROTENC_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mcu_axi_gpio_3_ROTENC_0_GPIO_Core
   (GPIO_xferAck_i,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ,
    GPIO_intr,
    GPIO2_intr,
    reg3,
    gpio2_io_t,
    gpio2_io_o,
    \Dual.gpio_Data_In_reg[0]_0 ,
    ip2bus_rdack_i,
    gpio_io_t,
    gpio_io_o,
    bus2ip_reset,
    s_axi_aclk,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg[31]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg[30]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg[29]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg[28]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg[27]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg[26]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg[25]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg[24]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg[23]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg[22]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg[21]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg[20]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg[19]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg[18]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg[17]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg[16]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[15]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg[14]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[13]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[12]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[11]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[10]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[9]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[8]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[7]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[6]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[5]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[4]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[3]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[2]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[1]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0]_0 ,
    \Dual.gpio2_OE_reg[0]_0 ,
    \Dual.gpio2_Data_Out_reg[0]_0 ,
    Q,
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[31]_0 ,
    bus2ip_cs,
    bus2ip_rnw,
    intr2bus_rdack,
    ip2Bus_RdAck_intr_reg_hole,
    gpio_io_i,
    gpio2_io_i,
    E,
    D,
    \Dual.gpio_Data_Out_reg[0]_0 );
  output GPIO_xferAck_i;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  output GPIO_intr;
  output GPIO2_intr;
  output [0:0]reg3;
  output [0:0]gpio2_io_t;
  output [0:0]gpio2_io_o;
  output [31:0]\Dual.gpio_Data_In_reg[0]_0 ;
  output ip2bus_rdack_i;
  output [31:0]gpio_io_t;
  output [31:0]gpio_io_o;
  input bus2ip_reset;
  input s_axi_aclk;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg[31]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg[30]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg[29]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg[28]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg[27]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg[26]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg[25]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg[24]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg[23]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg[22]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg[21]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg[20]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg[19]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg[18]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg[17]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg[16]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[15]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg[14]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[13]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[12]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[11]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[10]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[9]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[8]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[7]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[6]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[5]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[4]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[3]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[2]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[1]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0]_0 ;
  input \Dual.gpio2_OE_reg[0]_0 ;
  input \Dual.gpio2_Data_Out_reg[0]_0 ;
  input [1:0]Q;
  input \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[31]_0 ;
  input [0:0]bus2ip_cs;
  input bus2ip_rnw;
  input intr2bus_rdack;
  input ip2Bus_RdAck_intr_reg_hole;
  input [31:0]gpio_io_i;
  input [0:0]gpio2_io_i;
  input [0:0]E;
  input [31:0]D;
  input [0:0]\Dual.gpio_Data_Out_reg[0]_0 ;

  wire [31:0]D;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[10]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[11]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[12]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[13]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg[14]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[15]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg[16]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg[17]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg[18]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg[19]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[1]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg[20]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg[21]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg[22]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg[23]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg[24]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg[25]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg[26]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg[27]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg[28]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg[29]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[2]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg[30]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg[31]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[3]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[4]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[5]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[6]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[7]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[8]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[9]_0 ;
  wire \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3[31]_i_1_n_0 ;
  wire \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[31]_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_4_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_5_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_6_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_7_n_0 ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ;
  wire \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ;
  wire \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[31] ;
  wire \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[3] ;
  wire \Dual.gpio2_Data_Out_reg[0]_0 ;
  wire \Dual.gpio2_OE_reg[0]_0 ;
  wire [31:0]\Dual.gpio_Data_In_reg[0]_0 ;
  wire [0:0]\Dual.gpio_Data_Out_reg[0]_0 ;
  wire [0:0]E;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire [1:0]Q;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire gpio2_Data_In;
  wire gpio2_data_in_xor;
  wire [0:0]gpio2_io_i;
  wire gpio2_io_i_d2;
  wire [0:0]gpio2_io_o;
  wire [0:0]gpio2_io_t;
  wire [0:31]gpio_data_in_xor;
  wire [31:0]gpio_io_i;
  wire [0:31]gpio_io_i_d2;
  wire [31:0]gpio_io_o;
  wire [31:0]gpio_io_t;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire intr2bus_rdack;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2bus_rdack_i;
  wire or_ints;
  wire p_0_in;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in;
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_24_in;
  wire p_25_in;
  wire p_26_in;
  wire p_27_in;
  wire p_28_in;
  wire p_29_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire [0:0]reg3;
  wire s_axi_aclk;

  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[10]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[11]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[12]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[13]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg[14]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[15]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg[16]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg[17]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg[18]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg[19]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[1]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg[20]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg[21]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg[22]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg[23]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg[24]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg[25]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg[26]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg[27]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg[28]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg[29]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[2]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg[30]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1 
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .I3(bus2ip_rnw),
        .O(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg[31]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[3]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[4]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[5]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[6]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[7]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[8]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[9]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3[31]_i_1 
       (.I0(gpio2_Data_In),
        .I1(Q[0]),
        .I2(gpio2_io_t),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[31]_0 ),
        .I5(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1_n_0 ),
        .O(\Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3[31]_i_1_n_0 ));
  FDRE \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3[31]_i_1_n_0 ),
        .Q(reg3),
        .R(1'b0));
  mcu_axi_gpio_3_ROTENC_0_cdc_sync \Dual.INPUT_DOUBLE_REGS4 
       (.D({gpio_data_in_xor[0],gpio_data_in_xor[1],gpio_data_in_xor[2],gpio_data_in_xor[3],gpio_data_in_xor[4],gpio_data_in_xor[5],gpio_data_in_xor[6],gpio_data_in_xor[7],gpio_data_in_xor[8],gpio_data_in_xor[9],gpio_data_in_xor[10],gpio_data_in_xor[11],gpio_data_in_xor[12],gpio_data_in_xor[13],gpio_data_in_xor[14],gpio_data_in_xor[15],gpio_data_in_xor[16],gpio_data_in_xor[17],gpio_data_in_xor[18],gpio_data_in_xor[19],gpio_data_in_xor[20],gpio_data_in_xor[21],gpio_data_in_xor[22],gpio_data_in_xor[23],gpio_data_in_xor[24],gpio_data_in_xor[25],gpio_data_in_xor[26],gpio_data_in_xor[27],gpio_data_in_xor[28],gpio_data_in_xor[29],gpio_data_in_xor[30],gpio_data_in_xor[31]}),
        .\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] (\Dual.gpio_Data_In_reg[0]_0 ),
        .gpio_io_i(gpio_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio_io_i_d2[0],gpio_io_i_d2[1],gpio_io_i_d2[2],gpio_io_i_d2[3],gpio_io_i_d2[4],gpio_io_i_d2[5],gpio_io_i_d2[6],gpio_io_i_d2[7],gpio_io_i_d2[8],gpio_io_i_d2[9],gpio_io_i_d2[10],gpio_io_i_d2[11],gpio_io_i_d2[12],gpio_io_i_d2[13],gpio_io_i_d2[14],gpio_io_i_d2[15],gpio_io_i_d2[16],gpio_io_i_d2[17],gpio_io_i_d2[18],gpio_io_i_d2[19],gpio_io_i_d2[20],gpio_io_i_d2[21],gpio_io_i_d2[22],gpio_io_i_d2[23],gpio_io_i_d2[24],gpio_io_i_d2[25],gpio_io_i_d2[26],gpio_io_i_d2[27],gpio_io_i_d2[28],gpio_io_i_d2[29],gpio_io_i_d2[30],gpio_io_i_d2[31]}));
  mcu_axi_gpio_3_ROTENC_0_cdc_sync__parameterized0 \Dual.INPUT_DOUBLE_REGS5 
       (.gpio2_Data_In(gpio2_Data_In),
        .gpio2_data_in_xor(gpio2_data_in_xor),
        .gpio2_io_i(gpio2_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out(gpio2_io_i_d2));
  FDRE \Dual.gen_interrupt_dual.GPIO2_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ),
        .Q(GPIO2_intr),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_1 
       (.I0(\Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0 ),
        .I1(\Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0 ),
        .I2(\Dual.gen_interrupt_dual.GPIO_intr_i_4_n_0 ),
        .I3(\Dual.gen_interrupt_dual.GPIO_intr_i_5_n_0 ),
        .I4(\Dual.gen_interrupt_dual.GPIO_intr_i_6_n_0 ),
        .I5(\Dual.gen_interrupt_dual.GPIO_intr_i_7_n_0 ),
        .O(or_ints));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_2 
       (.I0(p_18_in),
        .I1(p_17_in),
        .I2(p_20_in),
        .I3(p_19_in),
        .I4(p_21_in),
        .I5(p_22_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_3 
       (.I0(p_12_in),
        .I1(p_11_in),
        .I2(p_14_in),
        .I3(p_13_in),
        .I4(p_15_in),
        .I5(p_16_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_4 
       (.I0(p_0_in),
        .I1(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .I2(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[3] ),
        .I3(p_1_in),
        .I4(p_3_in),
        .I5(p_4_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_5 
       (.I0(p_6_in),
        .I1(p_5_in),
        .I2(p_8_in),
        .I3(p_7_in),
        .I4(p_9_in),
        .I5(p_10_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_6 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[31] ),
        .I1(p_29_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_7 
       (.I0(p_24_in),
        .I1(p_23_in),
        .I2(p_26_in),
        .I3(p_25_in),
        .I4(p_27_in),
        .I5(p_28_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_7_n_0 ));
  FDRE \Dual.gen_interrupt_dual.GPIO_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(or_ints),
        .Q(GPIO_intr),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[0]),
        .Q(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[10]),
        .Q(p_9_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[11]),
        .Q(p_10_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[12]),
        .Q(p_11_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[13]),
        .Q(p_12_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[14]),
        .Q(p_13_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[15]),
        .Q(p_14_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[16]),
        .Q(p_15_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[17]),
        .Q(p_16_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[18]),
        .Q(p_17_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[19]),
        .Q(p_18_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[1]),
        .Q(p_0_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[20]),
        .Q(p_19_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[21]),
        .Q(p_20_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[22]),
        .Q(p_21_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[23]),
        .Q(p_22_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[24]),
        .Q(p_23_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[25]),
        .Q(p_24_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[26]),
        .Q(p_25_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[27]),
        .Q(p_26_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[28]),
        .Q(p_27_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[29]),
        .Q(p_28_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[2]),
        .Q(p_1_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[30]),
        .Q(p_29_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[31]),
        .Q(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[31] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[3]),
        .Q(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[3] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[4]),
        .Q(p_3_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[5]),
        .Q(p_4_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[6]),
        .Q(p_5_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[7]),
        .Q(p_6_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[8]),
        .Q(p_7_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[9]),
        .Q(p_8_in),
        .R(bus2ip_reset));
  FDRE \Dual.gpio2_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2),
        .Q(gpio2_Data_In),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_Data_Out_reg[0]_0 ),
        .Q(gpio2_io_o),
        .R(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_OE_reg[0]_0 ),
        .Q(gpio2_io_t),
        .S(bus2ip_reset));
  FDRE \Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[10]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[11]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[12]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[13]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[14]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[15]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[16]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[17]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[18]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[19]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[20]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[21]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[22]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[23]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[24]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[25]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[26]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[27]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[28]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[29]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[2]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[30]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[31]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[3]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[4]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[5]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[6]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[7]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[8]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[9]),
        .Q(\Dual.gpio_Data_In_reg[0]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[31]),
        .Q(gpio_io_o[31]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[10] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[21]),
        .Q(gpio_io_o[21]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[11] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[20]),
        .Q(gpio_io_o[20]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[12] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[19]),
        .Q(gpio_io_o[19]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[13] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[18]),
        .Q(gpio_io_o[18]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[14] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[17]),
        .Q(gpio_io_o[17]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[15] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[16]),
        .Q(gpio_io_o[16]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[16] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[15]),
        .Q(gpio_io_o[15]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[17] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[14]),
        .Q(gpio_io_o[14]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[18] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[13]),
        .Q(gpio_io_o[13]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[19] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[12]),
        .Q(gpio_io_o[12]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[30]),
        .Q(gpio_io_o[30]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[20] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[11]),
        .Q(gpio_io_o[11]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[21] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[10]),
        .Q(gpio_io_o[10]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[22] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[9]),
        .Q(gpio_io_o[9]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[23] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[8]),
        .Q(gpio_io_o[8]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[24] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[7]),
        .Q(gpio_io_o[7]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[25] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[6]),
        .Q(gpio_io_o[6]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[26] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[5]),
        .Q(gpio_io_o[5]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[27] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[4]),
        .Q(gpio_io_o[4]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[28] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[3]),
        .Q(gpio_io_o[3]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[29] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[2]),
        .Q(gpio_io_o[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[2] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[29]),
        .Q(gpio_io_o[29]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[30] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[1]),
        .Q(gpio_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[31] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[0]),
        .Q(gpio_io_o[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[3] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[28]),
        .Q(gpio_io_o[28]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[4] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[27]),
        .Q(gpio_io_o[27]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[5] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[26]),
        .Q(gpio_io_o[26]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[6] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[25]),
        .Q(gpio_io_o[25]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[7] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[24]),
        .Q(gpio_io_o[24]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[8] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[23]),
        .Q(gpio_io_o[23]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[9] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_Data_Out_reg[0]_0 ),
        .D(D[22]),
        .Q(gpio_io_o[22]),
        .R(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[31]),
        .Q(gpio_io_t[31]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(gpio_io_t[21]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(gpio_io_t[20]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(gpio_io_t[19]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(gpio_io_t[18]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(gpio_io_t[17]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(gpio_io_t[16]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(gpio_io_t[15]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(gpio_io_t[14]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(gpio_io_t[13]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(gpio_io_t[12]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[30]),
        .Q(gpio_io_t[30]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(gpio_io_t[11]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(gpio_io_t[10]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(gpio_io_t[9]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(gpio_io_t[8]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(gpio_io_t[7]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(gpio_io_t[6]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(gpio_io_t[5]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(gpio_io_t[4]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(gpio_io_t[3]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(gpio_io_t[2]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[29]),
        .Q(gpio_io_t[29]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(gpio_io_t[1]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(gpio_io_t[0]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[28]),
        .Q(gpio_io_t[28]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[27]),
        .Q(gpio_io_t[27]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[26]),
        .Q(gpio_io_t[26]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[25]),
        .Q(gpio_io_t[25]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[24]),
        .Q(gpio_io_t[24]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(gpio_io_t[23]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(gpio_io_t[22]),
        .S(bus2ip_reset));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'h04)) 
    iGPIO_xferAck_i_1
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hFFF8)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .I2(intr2bus_rdack),
        .I3(ip2Bus_RdAck_intr_reg_hole),
        .O(ip2bus_rdack_i));
endmodule

module mcu_axi_gpio_3_ROTENC_0_address_decoder
   (\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    Bus_RNW_reg_reg_0,
    \bus2ip_addr_i_reg[8] ,
    interrupt_wrce_strb,
    irpt_wrack,
    D,
    intr2bus_rdack0,
    irpt_rdack,
    p_3_out,
    intr_rd_ce_or_reduce,
    Bus_RNW_reg_reg_1,
    intr_wr_ce_or_reduce,
    \s_axi_wdata[0] ,
    E,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    irpt_wrack_d1_reg,
    ip2bus_wrack_i_D1_reg,
    ip2bus_rdack_i_D1_reg,
    \bus2ip_addr_i_reg[2] ,
    bus2ip_rnw_i_reg,
    s_axi_wdata_31_sp_1,
    Q,
    s_axi_aclk,
    \Dual.gpio2_Data_Out_reg[0] ,
    irpt_wrack_d1,
    \ip2bus_data_i_D1_reg[31] ,
    \ip2bus_data_i_D1_reg[31]_0 ,
    p_1_in,
    \ip2bus_data_i_D1_reg[30] ,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ,
    reg3,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ,
    s_axi_wdata,
    \Dual.gpio2_OE_reg[0] ,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_wrack_i_D1,
    s_axi_wready,
    gpio2_io_t,
    \Dual.gpio2_Data_Out_reg[0]_0 ,
    gpio2_io_o);
  output \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output Bus_RNW_reg_reg_0;
  output \bus2ip_addr_i_reg[8] ;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [31:0]D;
  output intr2bus_rdack0;
  output irpt_rdack;
  output p_3_out;
  output intr_rd_ce_or_reduce;
  output Bus_RNW_reg_reg_1;
  output intr_wr_ce_or_reduce;
  output [31:0]\s_axi_wdata[0] ;
  output [0:0]E;
  output [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  output irpt_wrack_d1_reg;
  output ip2bus_wrack_i_D1_reg;
  output ip2bus_rdack_i_D1_reg;
  output \bus2ip_addr_i_reg[2] ;
  output bus2ip_rnw_i_reg;
  output s_axi_wdata_31_sp_1;
  input Q;
  input s_axi_aclk;
  input [6:0]\Dual.gpio2_Data_Out_reg[0] ;
  input irpt_wrack_d1;
  input \ip2bus_data_i_D1_reg[31] ;
  input \ip2bus_data_i_D1_reg[31]_0 ;
  input p_1_in;
  input \ip2bus_data_i_D1_reg[30] ;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ;
  input [0:0]reg3;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  input [31:0]s_axi_wdata;
  input \Dual.gpio2_OE_reg[0] ;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input s_axi_arready;
  input [3:0]s_axi_arready_0;
  input ip2bus_wrack_i_D1;
  input s_axi_wready;
  input [0:0]gpio2_io_t;
  input \Dual.gpio2_Data_Out_reg[0]_0 ;
  input [0:0]gpio2_io_o;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [31:0]D;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire [6:0]\Dual.gpio2_Data_Out_reg[0] ;
  wire \Dual.gpio2_Data_Out_reg[0]_0 ;
  wire \Dual.gpio2_OE_reg[0] ;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire Q;
  wire \bus2ip_addr_i_reg[2] ;
  wire \bus2ip_addr_i_reg[8] ;
  wire bus2ip_rnw_i_reg;
  wire cs_ce_clr;
  wire [0:0]gpio2_io_o;
  wire [0:0]gpio2_io_t;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire \ip2bus_data_i_D1[0]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[30]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_3_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_4_n_0 ;
  wire \ip2bus_data_i_D1_reg[30] ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire \ip2bus_data_i_D1_reg[31]_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire p_10_in;
  wire p_10_out;
  wire p_11_in;
  wire p_11_out;
  wire p_12_in;
  wire p_12_out;
  wire p_13_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_19_out;
  wire p_1_in;
  wire p_1_out;
  wire p_20_in;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_3_out_0;
  wire p_4_in;
  wire p_5_in;
  wire p_7_in;
  wire p_8_in;
  wire p_8_out;
  wire p_9_in;
  wire p_9_out;
  wire pselect_hit_i_1;
  wire [0:0]reg3;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [3:0]s_axi_arready_0;
  wire [31:0]s_axi_wdata;
  wire [31:0]\s_axi_wdata[0] ;
  wire s_axi_wdata_31_sn_1;
  wire s_axi_wready;

  assign s_axi_wdata_31_sp_1 = s_axi_wdata_31_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(\Dual.gpio2_OE_reg[0] ),
        .I1(Q),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \Dual.gpio2_Data_Out[0]_i_1 
       (.I0(\s_axi_wdata[0] [31]),
        .I1(\Dual.gpio2_OE_reg[0] ),
        .I2(\Dual.gpio2_Data_Out_reg[0]_0 ),
        .I3(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(gpio2_io_o),
        .O(bus2ip_rnw_i_reg));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Dual.gpio2_OE[0]_i_1 
       (.I0(\s_axi_wdata[0] [31]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I3(\bus2ip_addr_i_reg[8] ),
        .I4(\Dual.gpio2_OE_reg[0] ),
        .I5(gpio2_io_t),
        .O(\bus2ip_addr_i_reg[2] ));
  LUT2 #(
    .INIT(4'hB)) 
    \Dual.gpio2_OE[0]_i_2 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(\bus2ip_addr_i_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \Dual.gpio_Data_Out[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I4(\Dual.gpio2_OE_reg[0] ),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \Dual.gpio_Data_Out[0]_i_2 
       (.I0(s_axi_wdata[0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(s_axi_wdata[31]),
        .O(\s_axi_wdata[0] [31]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[10]_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[11]_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[12]_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [19]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[13]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[14]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[15]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [16]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[16]_i_1 
       (.I0(s_axi_wdata[15]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[17]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[18]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[19]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[1]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[20]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[21]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[22]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[23]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[24]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[25]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[26]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[27]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[28]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[29]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[2]_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [29]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[30]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[31]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[3]_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [28]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[4]_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [27]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[5]_i_1 
       (.I0(s_axi_wdata[26]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[6]_i_1 
       (.I0(s_axi_wdata[25]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[7]_i_1 
       (.I0(s_axi_wdata[24]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[8]_i_1 
       (.I0(s_axi_wdata[23]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Dual.gpio_Data_Out[9]_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(\s_axi_wdata[0] [22]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \Dual.gpio_OE[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I4(\Dual.gpio2_OE_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(p_3_out_0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_3_out_0),
        .Q(p_20_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [2]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [6]),
        .O(p_9_out));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_9_out),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [2]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [6]),
        .O(p_8_out));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_8_out),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [2]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1_n_0 ),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [2]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1_n_0 ),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [2]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [2]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(p_2_out));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_2_out),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [0]),
        .O(p_1_out));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_out),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [1]),
        .O(p_19_out));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_19_out),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [2]),
        .O(p_14_out));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_14_out),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [2]),
        .O(p_13_out));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_13_out),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [2]),
        .O(p_12_out));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_12_out),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [2]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [6]),
        .O(p_11_out));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_11_out),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [1]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [0]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(\Dual.gpio2_Data_Out_reg[0] [2]),
        .I4(\Dual.gpio2_Data_Out_reg[0] [6]),
        .O(p_10_out));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_10_out),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_8_in),
        .O(irpt_wrack_d1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .I2(p_16_in),
        .I3(p_3_in),
        .I4(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I5(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .O(intr_rd_ce_or_reduce));
  LUT5 #(
    .INIT(32'h0000FD00)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(ip2Bus_RdAck_intr_reg_hole_d1),
        .O(p_3_out));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .I2(p_16_in),
        .I3(p_3_in),
        .I4(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I5(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .O(intr_wr_ce_or_reduce));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2 
       (.I0(p_13_in),
        .I1(p_7_in),
        .I2(p_5_in),
        .I3(p_2_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3 
       (.I0(p_15_in),
        .I1(p_10_in),
        .I2(p_4_in),
        .I3(p_12_in),
        .I4(p_11_in),
        .I5(p_14_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000000FD)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(ip2Bus_WrAck_intr_reg_hole_d1),
        .O(Bus_RNW_reg_reg_1));
  LUT3 #(
    .INIT(8'hFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2 
       (.I0(p_3_in),
        .I1(p_16_in),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\Dual.gpio2_Data_Out_reg[0] [5]),
        .I1(\Dual.gpio2_Data_Out_reg[0] [4]),
        .I2(\Dual.gpio2_Data_Out_reg[0] [3]),
        .I3(Q),
        .I4(\Dual.gpio2_Data_Out_reg[0] [6]),
        .I5(\Dual.gpio2_Data_Out_reg[0] [2]),
        .O(pselect_hit_i_1));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_1),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000F0E0)) 
    intr2bus_rdack_i_1
       (.I0(p_8_in),
        .I1(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_9_in),
        .I4(irpt_rdack_d1),
        .O(intr2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000F0E)) 
    intr2bus_wrack_i_1
       (.I0(p_9_in),
        .I1(p_8_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ),
        .I4(irpt_wrack_d1),
        .O(interrupt_wrce_strb));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(\ip2bus_data_i_D1[0]_i_2_n_0 ),
        .I1(p_9_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(ipif_glbl_irpt_enable_reg),
        .I4(p_8_in),
        .I5(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[0]_i_2 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(\ip2bus_data_i_D1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[10]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[11]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[12]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[13]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[14]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[15]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[16]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[17]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[18]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[19]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[1]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[20]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[21]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[22]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[23]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[24]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[25]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[26]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[27]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[28]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[29]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[2]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hEFAAEAAAEAAAEAAA)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(\ip2bus_data_i_D1[30]_i_2_n_0 ),
        .I1(p_1_in),
        .I2(p_8_in),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ),
        .I5(\ip2bus_data_i_D1_reg[30] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[30]_i_2 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(\ip2bus_data_i_D1[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDCCCCCCCF)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(\ip2bus_data_i_D1[31]_i_2_n_0 ),
        .I1(\ip2bus_data_i_D1[31]_i_3_n_0 ),
        .I2(p_19_in),
        .I3(p_20_in),
        .I4(p_18_in),
        .I5(\ip2bus_data_i_D1[31]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFF7F33FFFF7F3FF)) 
    \ip2bus_data_i_D1[31]_i_2 
       (.I0(\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_18_in),
        .I3(p_19_in),
        .I4(p_20_in),
        .I5(reg3),
        .O(\ip2bus_data_i_D1[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0800080)) 
    \ip2bus_data_i_D1[31]_i_3 
       (.I0(\ip2bus_data_i_D1_reg[31] ),
        .I1(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_8_in),
        .I4(\ip2bus_data_i_D1_reg[31]_0 ),
        .O(\ip2bus_data_i_D1[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ip2bus_data_i_D1[31]_i_4 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_17_in),
        .O(\ip2bus_data_i_D1[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[3]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[4]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[5]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[6]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[7]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[8]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h0000110011004000)) 
    \ip2bus_data_i_D1[9]_i_1 
       (.I0(p_18_in),
        .I1(p_20_in),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(p_19_in),
        .I5(p_17_in),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[31]),
        .I1(p_9_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(ipif_glbl_irpt_enable_reg),
        .O(s_axi_wdata_31_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCCC8)) 
    irpt_rdack_d1_i_1
       (.I0(p_9_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ),
        .I3(p_8_in),
        .O(irpt_rdack));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h3332)) 
    irpt_wrack_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_8_in),
        .I3(p_9_in),
        .O(irpt_wrack));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(s_axi_arready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(s_axi_wready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* C_ALL_INPUTS = "1" *) (* C_ALL_INPUTS_2 = "1" *) (* C_ALL_OUTPUTS = "0" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "0" *) (* C_DOUT_DEFAULT_2 = "0" *) 
(* C_FAMILY = "artix7" *) (* C_GPIO2_WIDTH = "1" *) (* C_GPIO_WIDTH = "32" *) 
(* C_INTERRUPT_PRESENT = "1" *) (* C_IS_DUAL = "1" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "-1" *) (* C_TRI_DEFAULT_2 = "-1" *) 
(* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module mcu_axi_gpio_3_ROTENC_0_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [31:0]gpio_io_i;
  output [31:0]gpio_io_o;
  output [31:0]gpio_io_t;
  input [0:0]gpio2_io_i;
  output [0:0]gpio2_io_o;
  output [0:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_100;
  wire AXI_LITE_IPIF_I_n_101;
  wire AXI_LITE_IPIF_I_n_102;
  wire AXI_LITE_IPIF_I_n_103;
  wire AXI_LITE_IPIF_I_n_104;
  wire AXI_LITE_IPIF_I_n_105;
  wire AXI_LITE_IPIF_I_n_106;
  wire AXI_LITE_IPIF_I_n_107;
  wire AXI_LITE_IPIF_I_n_108;
  wire AXI_LITE_IPIF_I_n_109;
  wire AXI_LITE_IPIF_I_n_110;
  wire AXI_LITE_IPIF_I_n_111;
  wire AXI_LITE_IPIF_I_n_112;
  wire AXI_LITE_IPIF_I_n_113;
  wire AXI_LITE_IPIF_I_n_114;
  wire AXI_LITE_IPIF_I_n_115;
  wire AXI_LITE_IPIF_I_n_116;
  wire AXI_LITE_IPIF_I_n_119;
  wire AXI_LITE_IPIF_I_n_120;
  wire AXI_LITE_IPIF_I_n_121;
  wire AXI_LITE_IPIF_I_n_47;
  wire AXI_LITE_IPIF_I_n_51;
  wire AXI_LITE_IPIF_I_n_52;
  wire AXI_LITE_IPIF_I_n_53;
  wire AXI_LITE_IPIF_I_n_54;
  wire AXI_LITE_IPIF_I_n_55;
  wire AXI_LITE_IPIF_I_n_56;
  wire AXI_LITE_IPIF_I_n_57;
  wire AXI_LITE_IPIF_I_n_58;
  wire AXI_LITE_IPIF_I_n_59;
  wire AXI_LITE_IPIF_I_n_6;
  wire AXI_LITE_IPIF_I_n_60;
  wire AXI_LITE_IPIF_I_n_61;
  wire AXI_LITE_IPIF_I_n_62;
  wire AXI_LITE_IPIF_I_n_63;
  wire AXI_LITE_IPIF_I_n_64;
  wire AXI_LITE_IPIF_I_n_65;
  wire AXI_LITE_IPIF_I_n_66;
  wire AXI_LITE_IPIF_I_n_67;
  wire AXI_LITE_IPIF_I_n_68;
  wire AXI_LITE_IPIF_I_n_69;
  wire AXI_LITE_IPIF_I_n_70;
  wire AXI_LITE_IPIF_I_n_71;
  wire AXI_LITE_IPIF_I_n_72;
  wire AXI_LITE_IPIF_I_n_73;
  wire AXI_LITE_IPIF_I_n_74;
  wire AXI_LITE_IPIF_I_n_75;
  wire AXI_LITE_IPIF_I_n_76;
  wire AXI_LITE_IPIF_I_n_77;
  wire AXI_LITE_IPIF_I_n_78;
  wire AXI_LITE_IPIF_I_n_79;
  wire AXI_LITE_IPIF_I_n_80;
  wire AXI_LITE_IPIF_I_n_81;
  wire AXI_LITE_IPIF_I_n_82;
  wire AXI_LITE_IPIF_I_n_83;
  wire AXI_LITE_IPIF_I_n_84;
  wire AXI_LITE_IPIF_I_n_85;
  wire AXI_LITE_IPIF_I_n_86;
  wire AXI_LITE_IPIF_I_n_87;
  wire AXI_LITE_IPIF_I_n_88;
  wire AXI_LITE_IPIF_I_n_89;
  wire AXI_LITE_IPIF_I_n_90;
  wire AXI_LITE_IPIF_I_n_91;
  wire AXI_LITE_IPIF_I_n_92;
  wire AXI_LITE_IPIF_I_n_93;
  wire AXI_LITE_IPIF_I_n_94;
  wire AXI_LITE_IPIF_I_n_95;
  wire AXI_LITE_IPIF_I_n_96;
  wire AXI_LITE_IPIF_I_n_97;
  wire AXI_LITE_IPIF_I_n_98;
  wire AXI_LITE_IPIF_I_n_99;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_8 ;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9 ;
  wire IP2INTC_Irpt_i;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ;
  wire [5:6]bus2ip_addr;
  wire [1:1]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_reset_i_1_n_0;
  wire bus2ip_rnw;
  wire [0:0]gpio2_io_i;
  wire [0:0]gpio2_io_o;
  wire [0:0]gpio2_io_t;
  wire [0:31]gpio_Data_In;
  wire [31:0]gpio_io_i;
  wire [31:0]gpio_io_o;
  wire [31:0]gpio_io_t;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [1:29]ip2bus_data;
  wire [0:31]ip2bus_data_i;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_1_in;
  wire p_1_out;
  wire p_3_out;
  wire [31:31]reg3;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  mcu_axi_gpio_3_ROTENC_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_47),
        .D({ip2bus_data_i[0],ip2bus_data[1],ip2bus_data[2],ip2bus_data[3],ip2bus_data[4],ip2bus_data[5],ip2bus_data[6],ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data_i[30],ip2bus_data_i[31]}),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] ({gpio_Data_In[0],gpio_Data_In[1],gpio_Data_In[2],gpio_Data_In[3],gpio_Data_In[4],gpio_Data_In[5],gpio_Data_In[6],gpio_Data_In[7],gpio_Data_In[8],gpio_Data_In[9],gpio_Data_In[10],gpio_Data_In[11],gpio_Data_In[12],gpio_Data_In[13],gpio_Data_In[14],gpio_Data_In[15],gpio_Data_In[16],gpio_Data_In[17],gpio_Data_In[18],gpio_Data_In[19],gpio_Data_In[20],gpio_Data_In[21],gpio_Data_In[22],gpio_Data_In[23],gpio_Data_In[24],gpio_Data_In[25],gpio_Data_In[26],gpio_Data_In[27],gpio_Data_In[28],gpio_Data_In[29],gpio_Data_In[30],gpio_Data_In[31]}),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .\Dual.gpio_OE_reg[0] (AXI_LITE_IPIF_I_n_115),
        .\Dual.gpio_OE_reg[10] (AXI_LITE_IPIF_I_n_105),
        .\Dual.gpio_OE_reg[11] (AXI_LITE_IPIF_I_n_104),
        .\Dual.gpio_OE_reg[12] (AXI_LITE_IPIF_I_n_103),
        .\Dual.gpio_OE_reg[13] (AXI_LITE_IPIF_I_n_102),
        .\Dual.gpio_OE_reg[14] (AXI_LITE_IPIF_I_n_101),
        .\Dual.gpio_OE_reg[15] (AXI_LITE_IPIF_I_n_100),
        .\Dual.gpio_OE_reg[16] (AXI_LITE_IPIF_I_n_99),
        .\Dual.gpio_OE_reg[17] (AXI_LITE_IPIF_I_n_98),
        .\Dual.gpio_OE_reg[18] (AXI_LITE_IPIF_I_n_97),
        .\Dual.gpio_OE_reg[19] (AXI_LITE_IPIF_I_n_96),
        .\Dual.gpio_OE_reg[1] (AXI_LITE_IPIF_I_n_114),
        .\Dual.gpio_OE_reg[20] (AXI_LITE_IPIF_I_n_95),
        .\Dual.gpio_OE_reg[21] (AXI_LITE_IPIF_I_n_94),
        .\Dual.gpio_OE_reg[22] (AXI_LITE_IPIF_I_n_93),
        .\Dual.gpio_OE_reg[23] (AXI_LITE_IPIF_I_n_92),
        .\Dual.gpio_OE_reg[24] (AXI_LITE_IPIF_I_n_91),
        .\Dual.gpio_OE_reg[25] (AXI_LITE_IPIF_I_n_90),
        .\Dual.gpio_OE_reg[26] (AXI_LITE_IPIF_I_n_89),
        .\Dual.gpio_OE_reg[27] (AXI_LITE_IPIF_I_n_88),
        .\Dual.gpio_OE_reg[28] (AXI_LITE_IPIF_I_n_87),
        .\Dual.gpio_OE_reg[29] (AXI_LITE_IPIF_I_n_86),
        .\Dual.gpio_OE_reg[2] (AXI_LITE_IPIF_I_n_113),
        .\Dual.gpio_OE_reg[30] (AXI_LITE_IPIF_I_n_85),
        .\Dual.gpio_OE_reg[31] (AXI_LITE_IPIF_I_n_84),
        .\Dual.gpio_OE_reg[3] (AXI_LITE_IPIF_I_n_112),
        .\Dual.gpio_OE_reg[4] (AXI_LITE_IPIF_I_n_111),
        .\Dual.gpio_OE_reg[5] (AXI_LITE_IPIF_I_n_110),
        .\Dual.gpio_OE_reg[6] (AXI_LITE_IPIF_I_n_109),
        .\Dual.gpio_OE_reg[7] (AXI_LITE_IPIF_I_n_108),
        .\Dual.gpio_OE_reg[8] (AXI_LITE_IPIF_I_n_107),
        .\Dual.gpio_OE_reg[9] (AXI_LITE_IPIF_I_n_106),
        .E(AXI_LITE_IPIF_I_n_82),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (AXI_LITE_IPIF_I_n_83),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .\bus2ip_addr_i_reg[2] (AXI_LITE_IPIF_I_n_119),
        .\bus2ip_addr_i_reg[8] (AXI_LITE_IPIF_I_n_6),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_120),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(gpio2_io_t),
        .gpio_io_t(gpio_io_t),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr2bus_wrack(intr2bus_wrack),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[30] (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9 ),
        .\ip2bus_data_i_D1_reg[31] (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_8 ),
        .\ip2bus_data_i_D1_reg[31]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(s_axi_arready),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(s_axi_wready),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg(AXI_LITE_IPIF_I_n_116),
        .p_1_in(p_1_in),
        .p_3_out(p_3_out),
        .p_6_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ),
        .reg3(reg3),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31] ({ip2bus_data_i_D1[0],ip2bus_data_i_D1[1],ip2bus_data_i_D1[2],ip2bus_data_i_D1[3],ip2bus_data_i_D1[4],ip2bus_data_i_D1[5],ip2bus_data_i_D1[6],ip2bus_data_i_D1[7],ip2bus_data_i_D1[8],ip2bus_data_i_D1[9],ip2bus_data_i_D1[10],ip2bus_data_i_D1[11],ip2bus_data_i_D1[12],ip2bus_data_i_D1[13],ip2bus_data_i_D1[14],ip2bus_data_i_D1[15],ip2bus_data_i_D1[16],ip2bus_data_i_D1[17],ip2bus_data_i_D1[18],ip2bus_data_i_D1[19],ip2bus_data_i_D1[20],ip2bus_data_i_D1[21],ip2bus_data_i_D1[22],ip2bus_data_i_D1[23],ip2bus_data_i_D1[24],ip2bus_data_i_D1[25],ip2bus_data_i_D1[26],ip2bus_data_i_D1[27],ip2bus_data_i_D1[28],ip2bus_data_i_D1[29],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[0] ({p_1_out,AXI_LITE_IPIF_I_n_51,AXI_LITE_IPIF_I_n_52,AXI_LITE_IPIF_I_n_53,AXI_LITE_IPIF_I_n_54,AXI_LITE_IPIF_I_n_55,AXI_LITE_IPIF_I_n_56,AXI_LITE_IPIF_I_n_57,AXI_LITE_IPIF_I_n_58,AXI_LITE_IPIF_I_n_59,AXI_LITE_IPIF_I_n_60,AXI_LITE_IPIF_I_n_61,AXI_LITE_IPIF_I_n_62,AXI_LITE_IPIF_I_n_63,AXI_LITE_IPIF_I_n_64,AXI_LITE_IPIF_I_n_65,AXI_LITE_IPIF_I_n_66,AXI_LITE_IPIF_I_n_67,AXI_LITE_IPIF_I_n_68,AXI_LITE_IPIF_I_n_69,AXI_LITE_IPIF_I_n_70,AXI_LITE_IPIF_I_n_71,AXI_LITE_IPIF_I_n_72,AXI_LITE_IPIF_I_n_73,AXI_LITE_IPIF_I_n_74,AXI_LITE_IPIF_I_n_75,AXI_LITE_IPIF_I_n_76,AXI_LITE_IPIF_I_n_77,AXI_LITE_IPIF_I_n_78,AXI_LITE_IPIF_I_n_79,AXI_LITE_IPIF_I_n_80,AXI_LITE_IPIF_I_n_81}),
        .s_axi_wdata_31_sp_1(AXI_LITE_IPIF_I_n_121),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  mcu_axi_gpio_3_ROTENC_0_interrupt_control \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (AXI_LITE_IPIF_I_n_116),
        .GPIO2_intr(GPIO2_intr),
        .GPIO_intr(GPIO_intr),
        .IP2INTC_Irpt_i(IP2INTC_Irpt_i),
        .bus2ip_reset(bus2ip_reset),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack(intr2bus_rdack),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr2bus_wrack(intr2bus_wrack),
        .\ip_irpt_enable_reg_reg[0]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_8 ),
        .\ip_irpt_enable_reg_reg[1]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9 ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(AXI_LITE_IPIF_I_n_121),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in(p_1_in),
        .p_6_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[1:0]));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_rd_ce_or_reduce),
        .Q(ip2Bus_RdAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(ip2Bus_RdAck_intr_reg_hole),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_wr_ce_or_reduce),
        .Q(ip2Bus_WrAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_LITE_IPIF_I_n_47),
        .Q(ip2Bus_WrAck_intr_reg_hole),
        .R(bus2ip_reset));
  (* sigis = "INTR_LEVEL_HIGH" *) 
  FDRE \INTR_CTRLR_GEN.ip2intc_irpt_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2INTC_Irpt_i),
        .Q(ip2intc_irpt),
        .R(bus2ip_reset));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_reset_i_1
       (.I0(s_axi_aresetn),
        .O(bus2ip_reset_i_1_n_0));
  FDRE bus2ip_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset_i_1_n_0),
        .Q(bus2ip_reset),
        .R(1'b0));
  mcu_axi_gpio_3_ROTENC_0_GPIO_Core gpio_core_1
       (.D({p_1_out,AXI_LITE_IPIF_I_n_51,AXI_LITE_IPIF_I_n_52,AXI_LITE_IPIF_I_n_53,AXI_LITE_IPIF_I_n_54,AXI_LITE_IPIF_I_n_55,AXI_LITE_IPIF_I_n_56,AXI_LITE_IPIF_I_n_57,AXI_LITE_IPIF_I_n_58,AXI_LITE_IPIF_I_n_59,AXI_LITE_IPIF_I_n_60,AXI_LITE_IPIF_I_n_61,AXI_LITE_IPIF_I_n_62,AXI_LITE_IPIF_I_n_63,AXI_LITE_IPIF_I_n_64,AXI_LITE_IPIF_I_n_65,AXI_LITE_IPIF_I_n_66,AXI_LITE_IPIF_I_n_67,AXI_LITE_IPIF_I_n_68,AXI_LITE_IPIF_I_n_69,AXI_LITE_IPIF_I_n_70,AXI_LITE_IPIF_I_n_71,AXI_LITE_IPIF_I_n_72,AXI_LITE_IPIF_I_n_73,AXI_LITE_IPIF_I_n_74,AXI_LITE_IPIF_I_n_75,AXI_LITE_IPIF_I_n_76,AXI_LITE_IPIF_I_n_77,AXI_LITE_IPIF_I_n_78,AXI_LITE_IPIF_I_n_79,AXI_LITE_IPIF_I_n_80,AXI_LITE_IPIF_I_n_81}),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0]_0 (AXI_LITE_IPIF_I_n_115),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[10]_0 (AXI_LITE_IPIF_I_n_105),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[11]_0 (AXI_LITE_IPIF_I_n_104),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[12]_0 (AXI_LITE_IPIF_I_n_103),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[13]_0 (AXI_LITE_IPIF_I_n_102),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg[14]_0 (AXI_LITE_IPIF_I_n_101),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[15]_0 (AXI_LITE_IPIF_I_n_100),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg[16]_0 (AXI_LITE_IPIF_I_n_99),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg[17]_0 (AXI_LITE_IPIF_I_n_98),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg[18]_0 (AXI_LITE_IPIF_I_n_97),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg[19]_0 (AXI_LITE_IPIF_I_n_96),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[1]_0 (AXI_LITE_IPIF_I_n_114),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg[20]_0 (AXI_LITE_IPIF_I_n_95),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg[21]_0 (AXI_LITE_IPIF_I_n_94),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg[22]_0 (AXI_LITE_IPIF_I_n_93),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg[23]_0 (AXI_LITE_IPIF_I_n_92),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg[24]_0 (AXI_LITE_IPIF_I_n_91),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg[25]_0 (AXI_LITE_IPIF_I_n_90),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg[26]_0 (AXI_LITE_IPIF_I_n_89),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg[27]_0 (AXI_LITE_IPIF_I_n_88),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg[28]_0 (AXI_LITE_IPIF_I_n_87),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg[29]_0 (AXI_LITE_IPIF_I_n_86),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[2]_0 (AXI_LITE_IPIF_I_n_113),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg[30]_0 (AXI_LITE_IPIF_I_n_85),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg[31]_0 (AXI_LITE_IPIF_I_n_84),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[3]_0 (AXI_LITE_IPIF_I_n_112),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[4]_0 (AXI_LITE_IPIF_I_n_111),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[5]_0 (AXI_LITE_IPIF_I_n_110),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[6]_0 (AXI_LITE_IPIF_I_n_109),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[7]_0 (AXI_LITE_IPIF_I_n_108),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[8]_0 (AXI_LITE_IPIF_I_n_107),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[9]_0 (AXI_LITE_IPIF_I_n_106),
        .\Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[31]_0 (AXI_LITE_IPIF_I_n_6),
        .\Dual.gpio2_Data_Out_reg[0]_0 (AXI_LITE_IPIF_I_n_120),
        .\Dual.gpio2_OE_reg[0]_0 (AXI_LITE_IPIF_I_n_119),
        .\Dual.gpio_Data_In_reg[0]_0 ({gpio_Data_In[0],gpio_Data_In[1],gpio_Data_In[2],gpio_Data_In[3],gpio_Data_In[4],gpio_Data_In[5],gpio_Data_In[6],gpio_Data_In[7],gpio_Data_In[8],gpio_Data_In[9],gpio_Data_In[10],gpio_Data_In[11],gpio_Data_In[12],gpio_Data_In[13],gpio_Data_In[14],gpio_Data_In[15],gpio_Data_In[16],gpio_Data_In[17],gpio_Data_In[18],gpio_Data_In[19],gpio_Data_In[20],gpio_Data_In[21],gpio_Data_In[22],gpio_Data_In[23],gpio_Data_In[24],gpio_Data_In[25],gpio_Data_In[26],gpio_Data_In[27],gpio_Data_In[28],gpio_Data_In[29],gpio_Data_In[30],gpio_Data_In[31]}),
        .\Dual.gpio_Data_Out_reg[0]_0 (AXI_LITE_IPIF_I_n_83),
        .E(AXI_LITE_IPIF_I_n_82),
        .GPIO2_intr(GPIO2_intr),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio2_io_i(gpio2_io_i),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(gpio2_io_t),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(gpio_io_o),
        .gpio_io_t(gpio_io_t),
        .intr2bus_rdack(intr2bus_rdack),
        .ip2Bus_RdAck_intr_reg_hole(ip2Bus_RdAck_intr_reg_hole),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .reg3(reg3),
        .s_axi_aclk(s_axi_aclk));
  FDRE \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[0]),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[10]),
        .Q(ip2bus_data_i_D1[10]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[11]),
        .Q(ip2bus_data_i_D1[11]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[12]),
        .Q(ip2bus_data_i_D1[12]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[13]),
        .Q(ip2bus_data_i_D1[13]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[14]),
        .Q(ip2bus_data_i_D1[14]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[15]),
        .Q(ip2bus_data_i_D1[15]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[16]),
        .Q(ip2bus_data_i_D1[16]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[17]),
        .Q(ip2bus_data_i_D1[17]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[18]),
        .Q(ip2bus_data_i_D1[18]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[19]),
        .Q(ip2bus_data_i_D1[19]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[1]),
        .Q(ip2bus_data_i_D1[1]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[20]),
        .Q(ip2bus_data_i_D1[20]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[21]),
        .Q(ip2bus_data_i_D1[21]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[22]),
        .Q(ip2bus_data_i_D1[22]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[23]),
        .Q(ip2bus_data_i_D1[23]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[24]),
        .Q(ip2bus_data_i_D1[24]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[25]),
        .Q(ip2bus_data_i_D1[25]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[26]),
        .Q(ip2bus_data_i_D1[26]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[27]),
        .Q(ip2bus_data_i_D1[27]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[28]),
        .Q(ip2bus_data_i_D1[28]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[29]),
        .Q(ip2bus_data_i_D1[29]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[2]),
        .Q(ip2bus_data_i_D1[2]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[3]),
        .Q(ip2bus_data_i_D1[3]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[4]),
        .Q(ip2bus_data_i_D1[4]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[5]),
        .Q(ip2bus_data_i_D1[5]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[6]),
        .Q(ip2bus_data_i_D1[6]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[7]),
        .Q(ip2bus_data_i_D1[7]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[8]),
        .Q(ip2bus_data_i_D1[8]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[9]),
        .Q(ip2bus_data_i_D1[9]),
        .R(bus2ip_reset));
  FDRE ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

module mcu_axi_gpio_3_ROTENC_0_axi_lite_ipif
   (p_6_in,
    bus2ip_rnw,
    bus2ip_cs,
    Bus_RNW_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    \bus2ip_addr_i_reg[8] ,
    Q,
    interrupt_wrce_strb,
    irpt_wrack,
    D,
    intr2bus_rdack0,
    irpt_rdack,
    p_3_out,
    intr_rd_ce_or_reduce,
    Bus_RNW_reg_reg,
    intr_wr_ce_or_reduce,
    ip2bus_wrack_i,
    \s_axi_wdata[0] ,
    E,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    \Dual.gpio_OE_reg[31] ,
    \Dual.gpio_OE_reg[30] ,
    \Dual.gpio_OE_reg[29] ,
    \Dual.gpio_OE_reg[28] ,
    \Dual.gpio_OE_reg[27] ,
    \Dual.gpio_OE_reg[26] ,
    \Dual.gpio_OE_reg[25] ,
    \Dual.gpio_OE_reg[24] ,
    \Dual.gpio_OE_reg[23] ,
    \Dual.gpio_OE_reg[22] ,
    \Dual.gpio_OE_reg[21] ,
    \Dual.gpio_OE_reg[20] ,
    \Dual.gpio_OE_reg[19] ,
    \Dual.gpio_OE_reg[18] ,
    \Dual.gpio_OE_reg[17] ,
    \Dual.gpio_OE_reg[16] ,
    \Dual.gpio_OE_reg[15] ,
    \Dual.gpio_OE_reg[14] ,
    \Dual.gpio_OE_reg[13] ,
    \Dual.gpio_OE_reg[12] ,
    \Dual.gpio_OE_reg[11] ,
    \Dual.gpio_OE_reg[10] ,
    \Dual.gpio_OE_reg[9] ,
    \Dual.gpio_OE_reg[8] ,
    \Dual.gpio_OE_reg[7] ,
    \Dual.gpio_OE_reg[6] ,
    \Dual.gpio_OE_reg[5] ,
    \Dual.gpio_OE_reg[4] ,
    \Dual.gpio_OE_reg[3] ,
    \Dual.gpio_OE_reg[2] ,
    \Dual.gpio_OE_reg[1] ,
    \Dual.gpio_OE_reg[0] ,
    irpt_wrack_d1_reg,
    ip2bus_wrack_i_D1_reg,
    ip2bus_rdack_i_D1_reg,
    \bus2ip_addr_i_reg[2] ,
    bus2ip_rnw_i_reg,
    s_axi_wdata_31_sp_1,
    s_axi_rdata,
    s_axi_aclk,
    bus2ip_reset,
    s_axi_arvalid,
    irpt_wrack_d1,
    \ip2bus_data_i_D1_reg[31] ,
    \ip2bus_data_i_D1_reg[31]_0 ,
    p_1_in,
    \ip2bus_data_i_D1_reg[30] ,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ,
    reg3,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ,
    GPIO_xferAck_i,
    intr2bus_wrack,
    ip2Bus_WrAck_intr_reg_hole,
    s_axi_wdata,
    gpio_io_t,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] ,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr,
    gpio2_io_t,
    gpio2_io_o,
    \s_axi_rdata_i_reg[31] );
  output p_6_in;
  output bus2ip_rnw;
  output [0:0]bus2ip_cs;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output \bus2ip_addr_i_reg[8] ;
  output [1:0]Q;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [31:0]D;
  output intr2bus_rdack0;
  output irpt_rdack;
  output p_3_out;
  output intr_rd_ce_or_reduce;
  output Bus_RNW_reg_reg;
  output intr_wr_ce_or_reduce;
  output ip2bus_wrack_i;
  output [31:0]\s_axi_wdata[0] ;
  output [0:0]E;
  output [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output \Dual.gpio_OE_reg[31] ;
  output \Dual.gpio_OE_reg[30] ;
  output \Dual.gpio_OE_reg[29] ;
  output \Dual.gpio_OE_reg[28] ;
  output \Dual.gpio_OE_reg[27] ;
  output \Dual.gpio_OE_reg[26] ;
  output \Dual.gpio_OE_reg[25] ;
  output \Dual.gpio_OE_reg[24] ;
  output \Dual.gpio_OE_reg[23] ;
  output \Dual.gpio_OE_reg[22] ;
  output \Dual.gpio_OE_reg[21] ;
  output \Dual.gpio_OE_reg[20] ;
  output \Dual.gpio_OE_reg[19] ;
  output \Dual.gpio_OE_reg[18] ;
  output \Dual.gpio_OE_reg[17] ;
  output \Dual.gpio_OE_reg[16] ;
  output \Dual.gpio_OE_reg[15] ;
  output \Dual.gpio_OE_reg[14] ;
  output \Dual.gpio_OE_reg[13] ;
  output \Dual.gpio_OE_reg[12] ;
  output \Dual.gpio_OE_reg[11] ;
  output \Dual.gpio_OE_reg[10] ;
  output \Dual.gpio_OE_reg[9] ;
  output \Dual.gpio_OE_reg[8] ;
  output \Dual.gpio_OE_reg[7] ;
  output \Dual.gpio_OE_reg[6] ;
  output \Dual.gpio_OE_reg[5] ;
  output \Dual.gpio_OE_reg[4] ;
  output \Dual.gpio_OE_reg[3] ;
  output \Dual.gpio_OE_reg[2] ;
  output \Dual.gpio_OE_reg[1] ;
  output \Dual.gpio_OE_reg[0] ;
  output irpt_wrack_d1_reg;
  output ip2bus_wrack_i_D1_reg;
  output ip2bus_rdack_i_D1_reg;
  output \bus2ip_addr_i_reg[2] ;
  output bus2ip_rnw_i_reg;
  output s_axi_wdata_31_sp_1;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input bus2ip_reset;
  input s_axi_arvalid;
  input irpt_wrack_d1;
  input \ip2bus_data_i_D1_reg[31] ;
  input \ip2bus_data_i_D1_reg[31]_0 ;
  input p_1_in;
  input \ip2bus_data_i_D1_reg[30] ;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ;
  input [0:0]reg3;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  input GPIO_xferAck_i;
  input intr2bus_wrack;
  input ip2Bus_WrAck_intr_reg_hole;
  input [31:0]s_axi_wdata;
  input [31:0]gpio_io_t;
  input [31:0]\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] ;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input [0:0]gpio2_io_t;
  input [0:0]gpio2_io_o;
  input [31:0]\s_axi_rdata_i_reg[31] ;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [31:0]D;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire [31:0]\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.gpio_OE_reg[0] ;
  wire \Dual.gpio_OE_reg[10] ;
  wire \Dual.gpio_OE_reg[11] ;
  wire \Dual.gpio_OE_reg[12] ;
  wire \Dual.gpio_OE_reg[13] ;
  wire \Dual.gpio_OE_reg[14] ;
  wire \Dual.gpio_OE_reg[15] ;
  wire \Dual.gpio_OE_reg[16] ;
  wire \Dual.gpio_OE_reg[17] ;
  wire \Dual.gpio_OE_reg[18] ;
  wire \Dual.gpio_OE_reg[19] ;
  wire \Dual.gpio_OE_reg[1] ;
  wire \Dual.gpio_OE_reg[20] ;
  wire \Dual.gpio_OE_reg[21] ;
  wire \Dual.gpio_OE_reg[22] ;
  wire \Dual.gpio_OE_reg[23] ;
  wire \Dual.gpio_OE_reg[24] ;
  wire \Dual.gpio_OE_reg[25] ;
  wire \Dual.gpio_OE_reg[26] ;
  wire \Dual.gpio_OE_reg[27] ;
  wire \Dual.gpio_OE_reg[28] ;
  wire \Dual.gpio_OE_reg[29] ;
  wire \Dual.gpio_OE_reg[2] ;
  wire \Dual.gpio_OE_reg[30] ;
  wire \Dual.gpio_OE_reg[31] ;
  wire \Dual.gpio_OE_reg[3] ;
  wire \Dual.gpio_OE_reg[4] ;
  wire \Dual.gpio_OE_reg[5] ;
  wire \Dual.gpio_OE_reg[6] ;
  wire \Dual.gpio_OE_reg[7] ;
  wire \Dual.gpio_OE_reg[8] ;
  wire \Dual.gpio_OE_reg[9] ;
  wire [0:0]E;
  wire GPIO_xferAck_i;
  wire [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [1:0]Q;
  wire \bus2ip_addr_i_reg[2] ;
  wire \bus2ip_addr_i_reg[8] ;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire bus2ip_rnw_i_reg;
  wire [0:0]gpio2_io_o;
  wire [0:0]gpio2_io_t;
  wire [31:0]gpio_io_t;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire \ip2bus_data_i_D1_reg[30] ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire \ip2bus_data_i_D1_reg[31]_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire p_1_in;
  wire p_3_out;
  wire p_6_in;
  wire [0:0]reg3;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [31:0]s_axi_rdata;
  wire [31:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire [31:0]s_axi_wdata;
  wire [31:0]\s_axi_wdata[0] ;
  wire s_axi_wdata_31_sn_1;
  wire s_axi_wvalid;

  assign s_axi_wdata_31_sp_1 = s_axi_wdata_31_sn_1;
  mcu_axi_gpio_3_ROTENC_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .D(D),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .\Dual.gpio_OE_reg[0] (\Dual.gpio_OE_reg[0] ),
        .\Dual.gpio_OE_reg[10] (\Dual.gpio_OE_reg[10] ),
        .\Dual.gpio_OE_reg[11] (\Dual.gpio_OE_reg[11] ),
        .\Dual.gpio_OE_reg[12] (\Dual.gpio_OE_reg[12] ),
        .\Dual.gpio_OE_reg[13] (\Dual.gpio_OE_reg[13] ),
        .\Dual.gpio_OE_reg[14] (\Dual.gpio_OE_reg[14] ),
        .\Dual.gpio_OE_reg[15] (\Dual.gpio_OE_reg[15] ),
        .\Dual.gpio_OE_reg[16] (\Dual.gpio_OE_reg[16] ),
        .\Dual.gpio_OE_reg[17] (\Dual.gpio_OE_reg[17] ),
        .\Dual.gpio_OE_reg[18] (\Dual.gpio_OE_reg[18] ),
        .\Dual.gpio_OE_reg[19] (\Dual.gpio_OE_reg[19] ),
        .\Dual.gpio_OE_reg[1] (\Dual.gpio_OE_reg[1] ),
        .\Dual.gpio_OE_reg[20] (\Dual.gpio_OE_reg[20] ),
        .\Dual.gpio_OE_reg[21] (\Dual.gpio_OE_reg[21] ),
        .\Dual.gpio_OE_reg[22] (\Dual.gpio_OE_reg[22] ),
        .\Dual.gpio_OE_reg[23] (\Dual.gpio_OE_reg[23] ),
        .\Dual.gpio_OE_reg[24] (\Dual.gpio_OE_reg[24] ),
        .\Dual.gpio_OE_reg[25] (\Dual.gpio_OE_reg[25] ),
        .\Dual.gpio_OE_reg[26] (\Dual.gpio_OE_reg[26] ),
        .\Dual.gpio_OE_reg[27] (\Dual.gpio_OE_reg[27] ),
        .\Dual.gpio_OE_reg[28] (\Dual.gpio_OE_reg[28] ),
        .\Dual.gpio_OE_reg[29] (\Dual.gpio_OE_reg[29] ),
        .\Dual.gpio_OE_reg[2] (\Dual.gpio_OE_reg[2] ),
        .\Dual.gpio_OE_reg[30] (\Dual.gpio_OE_reg[30] ),
        .\Dual.gpio_OE_reg[31] (\Dual.gpio_OE_reg[31] ),
        .\Dual.gpio_OE_reg[3] (\Dual.gpio_OE_reg[3] ),
        .\Dual.gpio_OE_reg[4] (\Dual.gpio_OE_reg[4] ),
        .\Dual.gpio_OE_reg[5] (\Dual.gpio_OE_reg[5] ),
        .\Dual.gpio_OE_reg[6] (\Dual.gpio_OE_reg[6] ),
        .\Dual.gpio_OE_reg[7] (\Dual.gpio_OE_reg[7] ),
        .\Dual.gpio_OE_reg[8] (\Dual.gpio_OE_reg[8] ),
        .\Dual.gpio_OE_reg[9] (\Dual.gpio_OE_reg[9] ),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] (p_6_in),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (bus2ip_cs),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(Q),
        .\bus2ip_addr_i_reg[2]_0 (\bus2ip_addr_i_reg[2] ),
        .\bus2ip_addr_i_reg[8]_0 (\bus2ip_addr_i_reg[8] ),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw),
        .bus2ip_rnw_i_reg_1(bus2ip_rnw_i_reg),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(gpio2_io_t),
        .gpio_io_t(gpio_io_t),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr2bus_wrack(intr2bus_wrack),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[30] (\ip2bus_data_i_D1_reg[30] ),
        .\ip2bus_data_i_D1_reg[31] (\ip2bus_data_i_D1_reg[31] ),
        .\ip2bus_data_i_D1_reg[31]_0 (\ip2bus_data_i_D1_reg[31]_0 ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .p_1_in(p_1_in),
        .p_3_out(p_3_out),
        .reg3(reg3),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[0] (\s_axi_wdata[0] ),
        .s_axi_wdata_31_sp_1(s_axi_wdata_31_sn_1),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module mcu_axi_gpio_3_ROTENC_0_cdc_sync
   (D,
    scndry_vect_out,
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] ,
    gpio_io_i,
    s_axi_aclk);
  output [31:0]D;
  output [31:0]scndry_vect_out;
  input [31:0]\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] ;
  input [31:0]gpio_io_i;
  input s_axi_aclk;

  wire [31:0]D;
  wire [31:0]\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] ;
  wire [31:0]gpio_io_i;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_10;
  wire s_level_out_bus_d1_cdc_to_11;
  wire s_level_out_bus_d1_cdc_to_12;
  wire s_level_out_bus_d1_cdc_to_13;
  wire s_level_out_bus_d1_cdc_to_14;
  wire s_level_out_bus_d1_cdc_to_15;
  wire s_level_out_bus_d1_cdc_to_16;
  wire s_level_out_bus_d1_cdc_to_17;
  wire s_level_out_bus_d1_cdc_to_18;
  wire s_level_out_bus_d1_cdc_to_19;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_20;
  wire s_level_out_bus_d1_cdc_to_21;
  wire s_level_out_bus_d1_cdc_to_22;
  wire s_level_out_bus_d1_cdc_to_23;
  wire s_level_out_bus_d1_cdc_to_24;
  wire s_level_out_bus_d1_cdc_to_25;
  wire s_level_out_bus_d1_cdc_to_26;
  wire s_level_out_bus_d1_cdc_to_27;
  wire s_level_out_bus_d1_cdc_to_28;
  wire s_level_out_bus_d1_cdc_to_29;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_30;
  wire s_level_out_bus_d1_cdc_to_31;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d1_cdc_to_8;
  wire s_level_out_bus_d1_cdc_to_9;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_10;
  wire s_level_out_bus_d2_11;
  wire s_level_out_bus_d2_12;
  wire s_level_out_bus_d2_13;
  wire s_level_out_bus_d2_14;
  wire s_level_out_bus_d2_15;
  wire s_level_out_bus_d2_16;
  wire s_level_out_bus_d2_17;
  wire s_level_out_bus_d2_18;
  wire s_level_out_bus_d2_19;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_20;
  wire s_level_out_bus_d2_21;
  wire s_level_out_bus_d2_22;
  wire s_level_out_bus_d2_23;
  wire s_level_out_bus_d2_24;
  wire s_level_out_bus_d2_25;
  wire s_level_out_bus_d2_26;
  wire s_level_out_bus_d2_27;
  wire s_level_out_bus_d2_28;
  wire s_level_out_bus_d2_29;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_30;
  wire s_level_out_bus_d2_31;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire s_level_out_bus_d2_8;
  wire s_level_out_bus_d2_9;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_10;
  wire s_level_out_bus_d3_11;
  wire s_level_out_bus_d3_12;
  wire s_level_out_bus_d3_13;
  wire s_level_out_bus_d3_14;
  wire s_level_out_bus_d3_15;
  wire s_level_out_bus_d3_16;
  wire s_level_out_bus_d3_17;
  wire s_level_out_bus_d3_18;
  wire s_level_out_bus_d3_19;
  wire s_level_out_bus_d3_2;
  wire s_level_out_bus_d3_20;
  wire s_level_out_bus_d3_21;
  wire s_level_out_bus_d3_22;
  wire s_level_out_bus_d3_23;
  wire s_level_out_bus_d3_24;
  wire s_level_out_bus_d3_25;
  wire s_level_out_bus_d3_26;
  wire s_level_out_bus_d3_27;
  wire s_level_out_bus_d3_28;
  wire s_level_out_bus_d3_29;
  wire s_level_out_bus_d3_3;
  wire s_level_out_bus_d3_30;
  wire s_level_out_bus_d3_31;
  wire s_level_out_bus_d3_4;
  wire s_level_out_bus_d3_5;
  wire s_level_out_bus_d3_6;
  wire s_level_out_bus_d3_7;
  wire s_level_out_bus_d3_8;
  wire s_level_out_bus_d3_9;
  wire [31:0]scndry_vect_out;

  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[0]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [31]),
        .I1(scndry_vect_out[31]),
        .O(D[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[10]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [21]),
        .I1(scndry_vect_out[21]),
        .O(D[21]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[11]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [20]),
        .I1(scndry_vect_out[20]),
        .O(D[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[12]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [19]),
        .I1(scndry_vect_out[19]),
        .O(D[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[13]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [18]),
        .I1(scndry_vect_out[18]),
        .O(D[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[14]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [17]),
        .I1(scndry_vect_out[17]),
        .O(D[17]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[15]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [16]),
        .I1(scndry_vect_out[16]),
        .O(D[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[16]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [15]),
        .I1(scndry_vect_out[15]),
        .O(D[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[17]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [14]),
        .I1(scndry_vect_out[14]),
        .O(D[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[18]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [13]),
        .I1(scndry_vect_out[13]),
        .O(D[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[19]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [12]),
        .I1(scndry_vect_out[12]),
        .O(D[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[1]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [30]),
        .I1(scndry_vect_out[30]),
        .O(D[30]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[20]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [11]),
        .I1(scndry_vect_out[11]),
        .O(D[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[21]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [10]),
        .I1(scndry_vect_out[10]),
        .O(D[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[22]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [9]),
        .I1(scndry_vect_out[9]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[23]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [8]),
        .I1(scndry_vect_out[8]),
        .O(D[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[24]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [7]),
        .I1(scndry_vect_out[7]),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[25]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [6]),
        .I1(scndry_vect_out[6]),
        .O(D[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[26]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [5]),
        .I1(scndry_vect_out[5]),
        .O(D[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[27]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [4]),
        .I1(scndry_vect_out[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[28]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [3]),
        .I1(scndry_vect_out[3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[29]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [2]),
        .I1(scndry_vect_out[2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[2]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [29]),
        .I1(scndry_vect_out[29]),
        .O(D[29]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[30]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [1]),
        .I1(scndry_vect_out[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[31]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [0]),
        .I1(scndry_vect_out[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[3]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [28]),
        .I1(scndry_vect_out[28]),
        .O(D[28]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[4]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [27]),
        .I1(scndry_vect_out[27]),
        .O(D[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[5]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [26]),
        .I1(scndry_vect_out[26]),
        .O(D[26]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[6]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [25]),
        .I1(scndry_vect_out[25]),
        .O(D[25]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[7]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [24]),
        .I1(scndry_vect_out[24]),
        .O(D[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[8]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [23]),
        .I1(scndry_vect_out[23]),
        .O(D[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[9]_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] [22]),
        .I1(scndry_vect_out[22]),
        .O(D[22]));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_10),
        .Q(s_level_out_bus_d2_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_11),
        .Q(s_level_out_bus_d2_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_12),
        .Q(s_level_out_bus_d2_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_13),
        .Q(s_level_out_bus_d2_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_14),
        .Q(s_level_out_bus_d2_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_15),
        .Q(s_level_out_bus_d2_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_16),
        .Q(s_level_out_bus_d2_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_17),
        .Q(s_level_out_bus_d2_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_18),
        .Q(s_level_out_bus_d2_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_19),
        .Q(s_level_out_bus_d2_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_20),
        .Q(s_level_out_bus_d2_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_21),
        .Q(s_level_out_bus_d2_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_22),
        .Q(s_level_out_bus_d2_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_23),
        .Q(s_level_out_bus_d2_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_24),
        .Q(s_level_out_bus_d2_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_25),
        .Q(s_level_out_bus_d2_25),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_26),
        .Q(s_level_out_bus_d2_26),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_27),
        .Q(s_level_out_bus_d2_27),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_28),
        .Q(s_level_out_bus_d2_28),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_29),
        .Q(s_level_out_bus_d2_29),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_30),
        .Q(s_level_out_bus_d2_30),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_31),
        .Q(s_level_out_bus_d2_31),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_8),
        .Q(s_level_out_bus_d2_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_9),
        .Q(s_level_out_bus_d2_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_10),
        .Q(s_level_out_bus_d3_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_11),
        .Q(s_level_out_bus_d3_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_12),
        .Q(s_level_out_bus_d3_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_13),
        .Q(s_level_out_bus_d3_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_14),
        .Q(s_level_out_bus_d3_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_15),
        .Q(s_level_out_bus_d3_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_16),
        .Q(s_level_out_bus_d3_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_17),
        .Q(s_level_out_bus_d3_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_18),
        .Q(s_level_out_bus_d3_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_19),
        .Q(s_level_out_bus_d3_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_20),
        .Q(s_level_out_bus_d3_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_21),
        .Q(s_level_out_bus_d3_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_22),
        .Q(s_level_out_bus_d3_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_23),
        .Q(s_level_out_bus_d3_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_24),
        .Q(s_level_out_bus_d3_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_25),
        .Q(s_level_out_bus_d3_25),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_26),
        .Q(s_level_out_bus_d3_26),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_27),
        .Q(s_level_out_bus_d3_27),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_28),
        .Q(s_level_out_bus_d3_28),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_29),
        .Q(s_level_out_bus_d3_29),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_30),
        .Q(s_level_out_bus_d3_30),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_31),
        .Q(s_level_out_bus_d3_31),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(s_level_out_bus_d3_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(s_level_out_bus_d3_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(s_level_out_bus_d3_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(s_level_out_bus_d3_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(s_level_out_bus_d3_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_8),
        .Q(s_level_out_bus_d3_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_9),
        .Q(s_level_out_bus_d3_9),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_10),
        .Q(scndry_vect_out[10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_11),
        .Q(scndry_vect_out[11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_12),
        .Q(scndry_vect_out[12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_13),
        .Q(scndry_vect_out[13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_14),
        .Q(scndry_vect_out[14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_15),
        .Q(scndry_vect_out[15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_16),
        .Q(scndry_vect_out[16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_17),
        .Q(scndry_vect_out[17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_18),
        .Q(scndry_vect_out[18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_19),
        .Q(scndry_vect_out[19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_20),
        .Q(scndry_vect_out[20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_21),
        .Q(scndry_vect_out[21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_22),
        .Q(scndry_vect_out[22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_23),
        .Q(scndry_vect_out[23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_24),
        .Q(scndry_vect_out[24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_25),
        .Q(scndry_vect_out[25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_26),
        .Q(scndry_vect_out[26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_27),
        .Q(scndry_vect_out[27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_28),
        .Q(scndry_vect_out[28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_29),
        .Q(scndry_vect_out[29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_30),
        .Q(scndry_vect_out[30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_31),
        .Q(scndry_vect_out[31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_3),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_4),
        .Q(scndry_vect_out[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_5),
        .Q(scndry_vect_out[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_6),
        .Q(scndry_vect_out[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_7),
        .Q(scndry_vect_out[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_8),
        .Q(scndry_vect_out[8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_9),
        .Q(scndry_vect_out[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[10]),
        .Q(s_level_out_bus_d1_cdc_to_10),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[11]),
        .Q(s_level_out_bus_d1_cdc_to_11),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[12]),
        .Q(s_level_out_bus_d1_cdc_to_12),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[13]),
        .Q(s_level_out_bus_d1_cdc_to_13),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[14]),
        .Q(s_level_out_bus_d1_cdc_to_14),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[15]),
        .Q(s_level_out_bus_d1_cdc_to_15),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[16]),
        .Q(s_level_out_bus_d1_cdc_to_16),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[17]),
        .Q(s_level_out_bus_d1_cdc_to_17),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[18]),
        .Q(s_level_out_bus_d1_cdc_to_18),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[19]),
        .Q(s_level_out_bus_d1_cdc_to_19),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[20]),
        .Q(s_level_out_bus_d1_cdc_to_20),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[21]),
        .Q(s_level_out_bus_d1_cdc_to_21),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[22]),
        .Q(s_level_out_bus_d1_cdc_to_22),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[23]),
        .Q(s_level_out_bus_d1_cdc_to_23),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[24]),
        .Q(s_level_out_bus_d1_cdc_to_24),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[25]),
        .Q(s_level_out_bus_d1_cdc_to_25),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[26]),
        .Q(s_level_out_bus_d1_cdc_to_26),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[27]),
        .Q(s_level_out_bus_d1_cdc_to_27),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[28]),
        .Q(s_level_out_bus_d1_cdc_to_28),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[29]),
        .Q(s_level_out_bus_d1_cdc_to_29),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[30]),
        .Q(s_level_out_bus_d1_cdc_to_30),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[31]),
        .Q(s_level_out_bus_d1_cdc_to_31),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[8]),
        .Q(s_level_out_bus_d1_cdc_to_8),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[9]),
        .Q(s_level_out_bus_d1_cdc_to_9),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module mcu_axi_gpio_3_ROTENC_0_cdc_sync__parameterized0
   (gpio2_data_in_xor,
    scndry_vect_out,
    gpio2_Data_In,
    gpio2_io_i,
    s_axi_aclk);
  output gpio2_data_in_xor;
  output [0:0]scndry_vect_out;
  input gpio2_Data_In;
  input [0:0]gpio2_io_i;
  input s_axi_aclk;

  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ;
  wire Q;
  wire gpio2_Data_In;
  wire gpio2_data_in_xor;
  wire [0:0]gpio2_io_i;
  wire s_axi_aclk;
  wire [0:0]scndry_vect_out;

  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[0]_i_1 
       (.I0(gpio2_Data_In),
        .I1(scndry_vect_out),
        .O(gpio2_data_in_xor));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3_n_0 ),
        .Q(scndry_vect_out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i),
        .Q(Q),
        .R(1'b0));
endmodule

module mcu_axi_gpio_3_ROTENC_0_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in,
    intr2bus_wrack,
    irpt_rdack_d1,
    intr2bus_rdack,
    ipif_glbl_irpt_enable_reg,
    IP2INTC_Irpt_i,
    \ip_irpt_enable_reg_reg[0]_0 ,
    \ip_irpt_enable_reg_reg[1]_0 ,
    bus2ip_reset,
    irpt_wrack,
    s_axi_aclk,
    GPIO_intr,
    GPIO2_intr,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    ipif_glbl_irpt_enable_reg_reg_0,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    s_axi_wdata,
    p_6_in,
    Bus_RNW_reg);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in;
  output intr2bus_wrack;
  output irpt_rdack_d1;
  output intr2bus_rdack;
  output ipif_glbl_irpt_enable_reg;
  output IP2INTC_Irpt_i;
  output \ip_irpt_enable_reg_reg[0]_0 ;
  output \ip_irpt_enable_reg_reg[1]_0 ;
  input bus2ip_reset;
  input irpt_wrack;
  input s_axi_aclk;
  input GPIO_intr;
  input GPIO2_intr;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input ipif_glbl_irpt_enable_reg_reg_0;
  input \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  input [1:0]s_axi_wdata;
  input p_6_in;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire IP2INTC_Irpt_i;
  wire bus2ip_reset;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire \ip_irpt_enable_reg[0]_i_1_n_0 ;
  wire \ip_irpt_enable_reg[1]_i_1_n_0 ;
  wire \ip_irpt_enable_reg_reg[0]_0 ;
  wire \ip_irpt_enable_reg_reg[1]_0 ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_dly1;
  wire irpt_dly2;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_1_in;
  wire p_6_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;

  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_intr),
        .Q(irpt_dly1),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_dly1),
        .Q(irpt_dly2),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO2_intr),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(bus2ip_reset));
  LUT5 #(
    .INIT(32'hBAFF7530)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I1(irpt_dly2),
        .I2(irpt_dly1),
        .I3(s_axi_wdata[0]),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hBAFF7530)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I1(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(s_axi_wdata[1]),
        .I4(p_1_in),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \INTR_CTRLR_GEN.ip2intc_irpt_i_1 
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I2(\ip_irpt_enable_reg_reg[0]_0 ),
        .I3(p_1_in),
        .I4(\ip_irpt_enable_reg_reg[1]_0 ),
        .O(IP2INTC_Irpt_i));
  FDRE intr2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr2bus_rdack0),
        .Q(intr2bus_rdack),
        .R(bus2ip_reset));
  FDRE intr2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr2bus_wrack),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ip_irpt_enable_reg[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_6_in),
        .I2(Bus_RNW_reg),
        .I3(\ip_irpt_enable_reg_reg[0]_0 ),
        .O(\ip_irpt_enable_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ip_irpt_enable_reg[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(p_6_in),
        .I2(Bus_RNW_reg),
        .I3(\ip_irpt_enable_reg_reg[1]_0 ),
        .O(\ip_irpt_enable_reg[1]_i_1_n_0 ));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ip_irpt_enable_reg[0]_i_1_n_0 ),
        .Q(\ip_irpt_enable_reg_reg[0]_0 ),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ip_irpt_enable_reg[1]_i_1_n_0 ),
        .Q(\ip_irpt_enable_reg_reg[1]_0 ),
        .R(bus2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ipif_glbl_irpt_enable_reg_reg_0),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(bus2ip_reset));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(bus2ip_reset));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(bus2ip_reset));
endmodule

(* CHECK_LICENSE_TYPE = "mcu_axi_gpio_3_ROTENC_0,axi_gpio,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_gpio,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_axi_gpio_3_ROTENC_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio2_io_i);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 83333333, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 83333333, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 IP2INTC_IRQ INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME IP2INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ip2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [31:0]gpio_io_i;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) input [0:0]gpio2_io_i;

  wire [0:0]gpio2_io_i;
  wire [31:0]gpio_io_i;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_U0_gpio2_io_o_UNCONNECTED;
  wire [0:0]NLW_U0_gpio2_io_t_UNCONNECTED;
  wire [31:0]NLW_U0_gpio_io_o_UNCONNECTED;
  wire [31:0]NLW_U0_gpio_io_t_UNCONNECTED;

  (* C_ALL_INPUTS = "1" *) 
  (* C_ALL_INPUTS_2 = "1" *) 
  (* C_ALL_OUTPUTS = "0" *) 
  (* C_ALL_OUTPUTS_2 = "0" *) 
  (* C_DOUT_DEFAULT = "0" *) 
  (* C_DOUT_DEFAULT_2 = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_GPIO2_WIDTH = "1" *) 
  (* C_GPIO_WIDTH = "32" *) 
  (* C_INTERRUPT_PRESENT = "1" *) 
  (* C_IS_DUAL = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "-1" *) 
  (* C_TRI_DEFAULT_2 = "-1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  mcu_axi_gpio_3_ROTENC_0_axi_gpio U0
       (.gpio2_io_i(gpio2_io_i),
        .gpio2_io_o(NLW_U0_gpio2_io_o_UNCONNECTED[0]),
        .gpio2_io_t(NLW_U0_gpio2_io_t_UNCONNECTED[0]),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(NLW_U0_gpio_io_o_UNCONNECTED[31:0]),
        .gpio_io_t(NLW_U0_gpio_io_t_UNCONNECTED[31:0]),
        .ip2intc_irpt(ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module mcu_axi_gpio_3_ROTENC_0_slave_attachment
   (\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ,
    bus2ip_rnw_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    Bus_RNW_reg_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \bus2ip_addr_i_reg[8]_0 ,
    Q,
    interrupt_wrce_strb,
    irpt_wrack,
    D,
    intr2bus_rdack0,
    irpt_rdack,
    p_3_out,
    intr_rd_ce_or_reduce,
    Bus_RNW_reg_reg_0,
    intr_wr_ce_or_reduce,
    ip2bus_wrack_i,
    \s_axi_wdata[0] ,
    E,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \Dual.gpio_OE_reg[31] ,
    \Dual.gpio_OE_reg[30] ,
    \Dual.gpio_OE_reg[29] ,
    \Dual.gpio_OE_reg[28] ,
    \Dual.gpio_OE_reg[27] ,
    \Dual.gpio_OE_reg[26] ,
    \Dual.gpio_OE_reg[25] ,
    \Dual.gpio_OE_reg[24] ,
    \Dual.gpio_OE_reg[23] ,
    \Dual.gpio_OE_reg[22] ,
    \Dual.gpio_OE_reg[21] ,
    \Dual.gpio_OE_reg[20] ,
    \Dual.gpio_OE_reg[19] ,
    \Dual.gpio_OE_reg[18] ,
    \Dual.gpio_OE_reg[17] ,
    \Dual.gpio_OE_reg[16] ,
    \Dual.gpio_OE_reg[15] ,
    \Dual.gpio_OE_reg[14] ,
    \Dual.gpio_OE_reg[13] ,
    \Dual.gpio_OE_reg[12] ,
    \Dual.gpio_OE_reg[11] ,
    \Dual.gpio_OE_reg[10] ,
    \Dual.gpio_OE_reg[9] ,
    \Dual.gpio_OE_reg[8] ,
    \Dual.gpio_OE_reg[7] ,
    \Dual.gpio_OE_reg[6] ,
    \Dual.gpio_OE_reg[5] ,
    \Dual.gpio_OE_reg[4] ,
    \Dual.gpio_OE_reg[3] ,
    \Dual.gpio_OE_reg[2] ,
    \Dual.gpio_OE_reg[1] ,
    \Dual.gpio_OE_reg[0] ,
    irpt_wrack_d1_reg,
    ip2bus_wrack_i_D1_reg,
    ip2bus_rdack_i_D1_reg,
    \bus2ip_addr_i_reg[2]_0 ,
    bus2ip_rnw_i_reg_1,
    s_axi_wdata_31_sp_1,
    s_axi_rdata,
    s_axi_aclk,
    bus2ip_reset,
    s_axi_arvalid,
    irpt_wrack_d1,
    \ip2bus_data_i_D1_reg[31] ,
    \ip2bus_data_i_D1_reg[31]_0 ,
    p_1_in,
    \ip2bus_data_i_D1_reg[30] ,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ,
    reg3,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ,
    GPIO_xferAck_i,
    intr2bus_wrack,
    ip2Bus_WrAck_intr_reg_hole,
    s_axi_wdata,
    gpio_io_t,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] ,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr,
    gpio2_io_t,
    gpio2_io_o,
    \s_axi_rdata_i_reg[31]_0 );
  output \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;
  output bus2ip_rnw_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \bus2ip_addr_i_reg[8]_0 ;
  output [1:0]Q;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [31:0]D;
  output intr2bus_rdack0;
  output irpt_rdack;
  output p_3_out;
  output intr_rd_ce_or_reduce;
  output Bus_RNW_reg_reg_0;
  output intr_wr_ce_or_reduce;
  output ip2bus_wrack_i;
  output [31:0]\s_axi_wdata[0] ;
  output [0:0]E;
  output [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output \Dual.gpio_OE_reg[31] ;
  output \Dual.gpio_OE_reg[30] ;
  output \Dual.gpio_OE_reg[29] ;
  output \Dual.gpio_OE_reg[28] ;
  output \Dual.gpio_OE_reg[27] ;
  output \Dual.gpio_OE_reg[26] ;
  output \Dual.gpio_OE_reg[25] ;
  output \Dual.gpio_OE_reg[24] ;
  output \Dual.gpio_OE_reg[23] ;
  output \Dual.gpio_OE_reg[22] ;
  output \Dual.gpio_OE_reg[21] ;
  output \Dual.gpio_OE_reg[20] ;
  output \Dual.gpio_OE_reg[19] ;
  output \Dual.gpio_OE_reg[18] ;
  output \Dual.gpio_OE_reg[17] ;
  output \Dual.gpio_OE_reg[16] ;
  output \Dual.gpio_OE_reg[15] ;
  output \Dual.gpio_OE_reg[14] ;
  output \Dual.gpio_OE_reg[13] ;
  output \Dual.gpio_OE_reg[12] ;
  output \Dual.gpio_OE_reg[11] ;
  output \Dual.gpio_OE_reg[10] ;
  output \Dual.gpio_OE_reg[9] ;
  output \Dual.gpio_OE_reg[8] ;
  output \Dual.gpio_OE_reg[7] ;
  output \Dual.gpio_OE_reg[6] ;
  output \Dual.gpio_OE_reg[5] ;
  output \Dual.gpio_OE_reg[4] ;
  output \Dual.gpio_OE_reg[3] ;
  output \Dual.gpio_OE_reg[2] ;
  output \Dual.gpio_OE_reg[1] ;
  output \Dual.gpio_OE_reg[0] ;
  output irpt_wrack_d1_reg;
  output ip2bus_wrack_i_D1_reg;
  output ip2bus_rdack_i_D1_reg;
  output \bus2ip_addr_i_reg[2]_0 ;
  output bus2ip_rnw_i_reg_1;
  output s_axi_wdata_31_sp_1;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input bus2ip_reset;
  input s_axi_arvalid;
  input irpt_wrack_d1;
  input \ip2bus_data_i_D1_reg[31] ;
  input \ip2bus_data_i_D1_reg[31]_0 ;
  input p_1_in;
  input \ip2bus_data_i_D1_reg[30] ;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ;
  input [0:0]reg3;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  input GPIO_xferAck_i;
  input intr2bus_wrack;
  input ip2Bus_WrAck_intr_reg_hole;
  input [31:0]s_axi_wdata;
  input [31:0]gpio_io_t;
  input [31:0]\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] ;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input [0:0]gpio2_io_t;
  input [0:0]gpio2_io_o;
  input [31:0]\s_axi_rdata_i_reg[31]_0 ;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire [31:0]D;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire [31:0]\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.gpio2_Data_Out[0]_i_2_n_0 ;
  wire \Dual.gpio_OE_reg[0] ;
  wire \Dual.gpio_OE_reg[10] ;
  wire \Dual.gpio_OE_reg[11] ;
  wire \Dual.gpio_OE_reg[12] ;
  wire \Dual.gpio_OE_reg[13] ;
  wire \Dual.gpio_OE_reg[14] ;
  wire \Dual.gpio_OE_reg[15] ;
  wire \Dual.gpio_OE_reg[16] ;
  wire \Dual.gpio_OE_reg[17] ;
  wire \Dual.gpio_OE_reg[18] ;
  wire \Dual.gpio_OE_reg[19] ;
  wire \Dual.gpio_OE_reg[1] ;
  wire \Dual.gpio_OE_reg[20] ;
  wire \Dual.gpio_OE_reg[21] ;
  wire \Dual.gpio_OE_reg[22] ;
  wire \Dual.gpio_OE_reg[23] ;
  wire \Dual.gpio_OE_reg[24] ;
  wire \Dual.gpio_OE_reg[25] ;
  wire \Dual.gpio_OE_reg[26] ;
  wire \Dual.gpio_OE_reg[27] ;
  wire \Dual.gpio_OE_reg[28] ;
  wire \Dual.gpio_OE_reg[29] ;
  wire \Dual.gpio_OE_reg[2] ;
  wire \Dual.gpio_OE_reg[30] ;
  wire \Dual.gpio_OE_reg[31] ;
  wire \Dual.gpio_OE_reg[3] ;
  wire \Dual.gpio_OE_reg[4] ;
  wire \Dual.gpio_OE_reg[5] ;
  wire \Dual.gpio_OE_reg[6] ;
  wire \Dual.gpio_OE_reg[7] ;
  wire \Dual.gpio_OE_reg[8] ;
  wire \Dual.gpio_OE_reg[9] ;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire [1:0]Q;
  wire [0:4]bus2ip_addr;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i_reg[2]_0 ;
  wire \bus2ip_addr_i_reg[8]_0 ;
  wire bus2ip_reset;
  wire bus2ip_rnw_i_reg_0;
  wire bus2ip_rnw_i_reg_1;
  wire clear;
  wire [0:0]gpio2_io_o;
  wire [0:0]gpio2_io_t;
  wire [31:0]gpio_io_t;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire \ip2bus_data_i_D1_reg[30] ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire \ip2bus_data_i_D1_reg[31]_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire [1:0]p_0_out__0;
  wire p_1_in;
  wire [8:2]p_1_in__0;
  wire p_3_out;
  wire p_5_in;
  wire [3:0]plusOp;
  wire [0:0]reg3;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [31:0]s_axi_rdata;
  wire [31:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [31:0]s_axi_wdata;
  wire [31:0]\s_axi_wdata[0] ;
  wire s_axi_wdata_31_sn_1;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;

  assign s_axi_wdata_31_sp_1 = s_axi_wdata_31_sn_1;
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1[0]_i_1 
       (.I0(gpio_io_t[31]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [31]),
        .O(\Dual.gpio_OE_reg[0] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1[10]_i_1 
       (.I0(gpio_io_t[21]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [21]),
        .O(\Dual.gpio_OE_reg[10] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1[11]_i_1 
       (.I0(gpio_io_t[20]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [20]),
        .O(\Dual.gpio_OE_reg[11] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1[12]_i_1 
       (.I0(gpio_io_t[19]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [19]),
        .O(\Dual.gpio_OE_reg[12] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1[13]_i_1 
       (.I0(gpio_io_t[18]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [18]),
        .O(\Dual.gpio_OE_reg[13] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1[14]_i_1 
       (.I0(gpio_io_t[17]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [17]),
        .O(\Dual.gpio_OE_reg[14] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1[15]_i_1 
       (.I0(gpio_io_t[16]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [16]),
        .O(\Dual.gpio_OE_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1[16]_i_1 
       (.I0(gpio_io_t[15]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [15]),
        .O(\Dual.gpio_OE_reg[16] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1[17]_i_1 
       (.I0(gpio_io_t[14]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [14]),
        .O(\Dual.gpio_OE_reg[17] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1[18]_i_1 
       (.I0(gpio_io_t[13]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [13]),
        .O(\Dual.gpio_OE_reg[18] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1[19]_i_1 
       (.I0(gpio_io_t[12]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [12]),
        .O(\Dual.gpio_OE_reg[19] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1[1]_i_1 
       (.I0(gpio_io_t[30]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [30]),
        .O(\Dual.gpio_OE_reg[1] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1[20]_i_1 
       (.I0(gpio_io_t[11]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [11]),
        .O(\Dual.gpio_OE_reg[20] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1[21]_i_1 
       (.I0(gpio_io_t[10]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [10]),
        .O(\Dual.gpio_OE_reg[21] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1[22]_i_1 
       (.I0(gpio_io_t[9]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [9]),
        .O(\Dual.gpio_OE_reg[22] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1[23]_i_1 
       (.I0(gpio_io_t[8]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [8]),
        .O(\Dual.gpio_OE_reg[23] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1[24]_i_1 
       (.I0(gpio_io_t[7]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [7]),
        .O(\Dual.gpio_OE_reg[24] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1[25]_i_1 
       (.I0(gpio_io_t[6]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [6]),
        .O(\Dual.gpio_OE_reg[25] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1[26]_i_1 
       (.I0(gpio_io_t[5]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [5]),
        .O(\Dual.gpio_OE_reg[26] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1[27]_i_1 
       (.I0(gpio_io_t[4]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [4]),
        .O(\Dual.gpio_OE_reg[27] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1[28]_i_1 
       (.I0(gpio_io_t[3]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [3]),
        .O(\Dual.gpio_OE_reg[28] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1[29]_i_1 
       (.I0(gpio_io_t[2]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [2]),
        .O(\Dual.gpio_OE_reg[29] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1[2]_i_1 
       (.I0(gpio_io_t[29]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [29]),
        .O(\Dual.gpio_OE_reg[2] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1[30]_i_1 
       (.I0(gpio_io_t[1]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [1]),
        .O(\Dual.gpio_OE_reg[30] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1[31]_i_2 
       (.I0(gpio_io_t[0]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [0]),
        .O(\Dual.gpio_OE_reg[31] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1[3]_i_1 
       (.I0(gpio_io_t[28]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [28]),
        .O(\Dual.gpio_OE_reg[3] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1[4]_i_1 
       (.I0(gpio_io_t[27]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [27]),
        .O(\Dual.gpio_OE_reg[4] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1[5]_i_1 
       (.I0(gpio_io_t[26]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [26]),
        .O(\Dual.gpio_OE_reg[5] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1[6]_i_1 
       (.I0(gpio_io_t[25]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [25]),
        .O(\Dual.gpio_OE_reg[6] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1[7]_i_1 
       (.I0(gpio_io_t[24]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [24]),
        .O(\Dual.gpio_OE_reg[7] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1[8]_i_1 
       (.I0(gpio_io_t[23]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [23]),
        .O(\Dual.gpio_OE_reg[8] ));
  LUT5 #(
    .INIT(32'h00230020)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1[9]_i_1 
       (.I0(gpio_io_t[22]),
        .I1(bus2ip_addr[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[0] [22]),
        .O(\Dual.gpio_OE_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Dual.gpio2_Data_Out[0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\Dual.gpio2_Data_Out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(bus2ip_reset));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  mcu_axi_gpio_3_ROTENC_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .D(D),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[16].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[17].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[18].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[19].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[20].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[21].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[22].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[23].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[24].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[25].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[26].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[27].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[28].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[29].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[30].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[31].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .\Dual.gpio2_Data_Out_reg[0] ({bus2ip_addr[0],bus2ip_addr[1],bus2ip_addr[2],bus2ip_addr[3],bus2ip_addr[4],Q}),
        .\Dual.gpio2_Data_Out_reg[0]_0 (\Dual.gpio2_Data_Out[0]_i_2_n_0 ),
        .\Dual.gpio2_OE_reg[0] (bus2ip_rnw_i_reg_0),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 (\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .Q(start2),
        .\bus2ip_addr_i_reg[2] (\bus2ip_addr_i_reg[2]_0 ),
        .\bus2ip_addr_i_reg[8] (\bus2ip_addr_i_reg[8]_0 ),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_1),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(gpio2_io_t),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[30] (\ip2bus_data_i_D1_reg[30] ),
        .\ip2bus_data_i_D1_reg[31] (\ip2bus_data_i_D1_reg[31] ),
        .\ip2bus_data_i_D1_reg[31]_0 (\ip2bus_data_i_D1_reg[31]_0 ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .p_1_in(p_1_in),
        .p_3_out(p_3_out),
        .reg3(reg3),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[0] (\s_axi_wdata[0] ),
        .s_axi_wdata_31_sp_1(s_axi_wdata_31_sn_1),
        .s_axi_wready(is_write_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[7]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[8]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(Q[0]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(Q[1]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(bus2ip_addr[4]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(bus2ip_addr[3]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(bus2ip_addr[2]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(bus2ip_addr[1]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(bus2ip_addr[0]),
        .R(bus2ip_reset));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_0),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hFFF4)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(bus2ip_rnw_i_reg_0),
        .I1(GPIO_xferAck_i),
        .I2(intr2bus_wrack),
        .I3(ip2Bus_WrAck_intr_reg_hole),
        .O(ip2bus_wrack_i));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [18]),
        .Q(s_axi_rdata[18]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [19]),
        .Q(s_axi_rdata[19]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [20]),
        .Q(s_axi_rdata[20]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [21]),
        .Q(s_axi_rdata[21]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [22]),
        .Q(s_axi_rdata[22]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [23]),
        .Q(s_axi_rdata[23]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [24]),
        .Q(s_axi_rdata[24]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [25]),
        .Q(s_axi_rdata[25]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [26]),
        .Q(s_axi_rdata[26]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [27]),
        .Q(s_axi_rdata[27]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [28]),
        .Q(s_axi_rdata[28]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [29]),
        .Q(s_axi_rdata[29]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [30]),
        .Q(s_axi_rdata[30]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [31]),
        .Q(s_axi_rdata[31]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(p_0_out__0[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(p_0_out__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out__0[0]),
        .Q(state[0]),
        .R(bus2ip_reset));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out__0[1]),
        .Q(state[1]),
        .R(bus2ip_reset));
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
