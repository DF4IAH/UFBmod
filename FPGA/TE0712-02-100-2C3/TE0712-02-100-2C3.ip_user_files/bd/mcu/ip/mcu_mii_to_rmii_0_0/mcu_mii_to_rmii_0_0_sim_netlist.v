// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:19:36 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_mii_to_rmii_0_0 -prefix
//               mcu_mii_to_rmii_0_0_ mcu_mii_to_rmii_0_0_sim_netlist.v
// Design      : mcu_mii_to_rmii_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mcu_mii_to_rmii_0_0_SRL_FIFO
   (Data_Exists_DFF_0,
    D,
    \Addr_Counters[3].FDRE_I_0 ,
    ref_clk,
    rx_end_of_packet,
    rx_error,
    rx_data,
    rx_fifo_wr_en,
    rx_fifo_rd_en);
  output Data_Exists_DFF_0;
  output [11:0]D;
  input \Addr_Counters[3].FDRE_I_0 ;
  input ref_clk;
  input rx_end_of_packet;
  input rx_error;
  input [7:0]rx_data;
  input rx_fifo_wr_en;
  input rx_fifo_rd_en;

  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire [11:0]D;
  wire D_0;
  wire Data_Exists_DFF_0;
  wire Data_Exists_DFF_i_2_n_0;
  wire S;
  wire S0_out;
  wire S1_out;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire ref_clk;
  wire [7:0]rx_data;
  wire rx_end_of_packet;
  wire rx_error;
  wire rx_fifo_rd_en;
  wire rx_fifo_wr_en;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(ref_clk),
        .CE(Data_Exists_DFF_0),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[3].FDRE_I_n_0 ),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(rx_fifo_wr_en),
        .I4(rx_fifo_rd_en),
        .I5(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(rx_fifo_wr_en),
        .I1(rx_fifo_rd_en),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .I4(\Addr_Counters[0].FDRE_I_n_0 ),
        .I5(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(CI));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(ref_clk),
        .CE(Data_Exists_DFF_0),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[3].FDRE_I_n_0 ),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(rx_fifo_wr_en),
        .I4(rx_fifo_rd_en),
        .I5(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(S1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(ref_clk),
        .CE(Data_Exists_DFF_0),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[3].FDRE_I_n_0 ),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(rx_fifo_wr_en),
        .I4(rx_fifo_rd_en),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(S0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(ref_clk),
        .CE(Data_Exists_DFF_0),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[2].FDRE_I_n_0 ),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(rx_fifo_wr_en),
        .I4(rx_fifo_rd_en),
        .I5(\Addr_Counters[3].FDRE_I_n_0 ),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(ref_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(Data_Exists_DFF_0),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT4 #(
    .INIT(16'hFB0A)) 
    Data_Exists_DFF_i_1
       (.I0(rx_fifo_wr_en),
        .I1(rx_fifo_rd_en),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(Data_Exists_DFF_0),
        .O(D_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_2
       (.I0(\Addr_Counters[3].FDRE_I_n_0 ),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_i_2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_end_of_packet),
        .Q(D[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[10].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[10].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_error),
        .Q(D[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[12].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[12].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_data[3]),
        .Q(D[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[13].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[13].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_data[2]),
        .Q(D[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[14].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[14].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_data[1]),
        .Q(D[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[15].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[15].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_data[0]),
        .Q(D[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_error),
        .Q(D[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_data[7]),
        .Q(D[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_data[6]),
        .Q(D[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_data[5]),
        .Q(D[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_data[4]),
        .Q(D[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[8].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[8].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(rx_end_of_packet),
        .Q(D[5]));
endmodule

(* CHECK_LICENSE_TYPE = "mcu_mii_to_rmii_0_0,mii_to_rmii,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mii_to_rmii,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_mii_to_rmii_0_0
   (rst_n,
    ref_clk,
    mac2rmii_tx_en,
    mac2rmii_txd,
    mac2rmii_tx_er,
    rmii2mac_tx_clk,
    rmii2mac_rx_clk,
    rmii2mac_col,
    rmii2mac_crs,
    rmii2mac_rx_dv,
    rmii2mac_rx_er,
    rmii2mac_rxd,
    phy2rmii_crs_dv,
    phy2rmii_rx_er,
    phy2rmii_rxd,
    rmii2phy_txd,
    rmii2phy_tx_en);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock, BOARD.ASSOCIATED_PARAM REF_CLK_BOARD_INTERFACE, FREQ_HZ 50000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input ref_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_EN" *) input mac2rmii_tx_en;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TXD" *) input [3:0]mac2rmii_txd;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_ER" *) input mac2rmii_tx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_CLK" *) output rmii2mac_tx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_CLK" *) output rmii2mac_rx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII COL" *) output rmii2mac_col;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII CRS" *) output rmii2mac_crs;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_DV" *) output rmii2mac_rx_dv;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_ER" *) output rmii2mac_rx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RXD" *) output [3:0]rmii2mac_rxd;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M CRS_DV" *) (* x_interface_parameter = "XIL_INTERFACENAME RMII_PHY_M, BOARD.ASSOCIATED_PARAM RMII_BOARD_INTERFACE" *) input phy2rmii_crs_dv;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M RX_ER" *) input phy2rmii_rx_er;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M RXD" *) input [1:0]phy2rmii_rxd;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M TXD" *) output [1:0]rmii2phy_txd;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M TX_EN" *) output rmii2phy_tx_en;

  wire mac2rmii_tx_en;
  wire mac2rmii_tx_er;
  wire [3:0]mac2rmii_txd;
  wire phy2rmii_crs_dv;
  wire phy2rmii_rx_er;
  wire [1:0]phy2rmii_rxd;
  wire ref_clk;
  wire rmii2mac_col;
  wire rmii2mac_crs;
  wire rmii2mac_rx_clk;
  wire rmii2mac_rx_dv;
  wire rmii2mac_rx_er;
  wire [3:0]rmii2mac_rxd;
  wire rmii2mac_tx_clk;
  wire rmii2phy_tx_en;
  wire [1:0]rmii2phy_txd;
  wire rst_n;

  (* C_FAMILY = "artix7" *) 
  (* C_FIXED_SPEED = "1'b0" *) 
  (* C_INCLUDE_BUF = "0" *) 
  (* C_INSTANCE = "mcu_mii_to_rmii_0_0" *) 
  (* C_SPEED_100 = "1'b1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* hdl = "VHDL" *) 
  (* imp_netlist = "TRUE" *) 
  (* ip_group = "LOGICORE" *) 
  (* iptype = "IP" *) 
  (* style = "HDL" *) 
  mcu_mii_to_rmii_0_0_mii_to_rmii U0
       (.mac2rmii_tx_en(mac2rmii_tx_en),
        .mac2rmii_tx_er(mac2rmii_tx_er),
        .mac2rmii_txd(mac2rmii_txd),
        .phy2rmii_crs_dv(phy2rmii_crs_dv),
        .phy2rmii_rx_er(phy2rmii_rx_er),
        .phy2rmii_rxd(phy2rmii_rxd),
        .ref_clk(ref_clk),
        .rmii2mac_col(rmii2mac_col),
        .rmii2mac_crs(rmii2mac_crs),
        .rmii2mac_rx_clk(rmii2mac_rx_clk),
        .rmii2mac_rx_dv(rmii2mac_rx_dv),
        .rmii2mac_rx_er(rmii2mac_rx_er),
        .rmii2mac_rxd(rmii2mac_rxd),
        .rmii2mac_tx_clk(rmii2mac_tx_clk),
        .rmii2phy_tx_en(rmii2phy_tx_en),
        .rmii2phy_txd(rmii2phy_txd),
        .rst_n(rst_n));
endmodule

(* C_FAMILY = "artix7" *) (* C_FIXED_SPEED = "1'b0" *) (* C_INCLUDE_BUF = "0" *) 
(* C_INSTANCE = "mcu_mii_to_rmii_0_0" *) (* C_SPEED_100 = "1'b1" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* hdl = "VHDL" *) (* imp_netlist = "TRUE" *) (* ip_group = "LOGICORE" *) 
(* iptype = "IP" *) (* style = "HDL" *) 
module mcu_mii_to_rmii_0_0_mii_to_rmii
   (rst_n,
    ref_clk,
    mac2rmii_tx_en,
    mac2rmii_txd,
    mac2rmii_tx_er,
    rmii2mac_tx_clk,
    rmii2mac_rx_clk,
    rmii2mac_col,
    rmii2mac_crs,
    rmii2mac_rx_dv,
    rmii2mac_rx_er,
    rmii2mac_rxd,
    phy2rmii_crs_dv,
    phy2rmii_rx_er,
    phy2rmii_rxd,
    rmii2phy_txd,
    rmii2phy_tx_en);
  (* sigis = "RST" *) input rst_n;
  (* sigis = "CLK" *) input ref_clk;
  input mac2rmii_tx_en;
  input [3:0]mac2rmii_txd;
  input mac2rmii_tx_er;
  output rmii2mac_tx_clk;
  output rmii2mac_rx_clk;
  output rmii2mac_col;
  output rmii2mac_crs;
  output rmii2mac_rx_dv;
  output rmii2mac_rx_er;
  output [3:0]rmii2mac_rxd;
  input phy2rmii_crs_dv;
  input phy2rmii_rx_er;
  input [1:0]phy2rmii_rxd;
  output [1:0]rmii2phy_txd;
  output rmii2phy_tx_en;

  wire \RMII_AGILE.I_RX_n_0 ;
  wire \RMII_AGILE.I_RX_n_2 ;
  wire \RMII_AGILE.I_TX_n_1 ;
  wire \RMII_AGILE.I_TX_n_2 ;
  wire Rmii2Phy_tx_en;
  wire mac2Rmii_tx_en_d1;
  wire mac2Rmii_tx_en_d2;
  wire mac2Rmii_tx_er_d1;
  wire mac2Rmii_tx_er_d2;
  wire [3:0]mac2Rmii_txd_d1;
  wire [3:0]mac2Rmii_txd_d2;
  wire mac2rmii_tx_en;
  wire mac2rmii_tx_er;
  wire [3:0]mac2rmii_txd;
  wire phy2Rmii_crs_dv_d1;
  wire phy2Rmii_crs_dv_d2;
  wire phy2Rmii_rx_er_d1;
  wire phy2Rmii_rx_er_d2;
  wire [1:0]phy2Rmii_rxd_d1;
  wire [1:0]phy2Rmii_rxd_d2;
  wire phy2rmii_crs_dv;
  wire phy2rmii_rx_er;
  wire [1:0]phy2rmii_rxd;
  wire ref_clk;
  wire rmii2Mac_crs_i;
  wire rmii2Mac_rx_clk_i;
  wire rmii2Mac_rx_dv_i;
  wire rmii2Mac_rx_er_i;
  wire [3:0]rmii2Mac_rxd_i;
  wire rmii2Mac_tx_clk_i;
  wire rmii2mac_col;
  wire rmii2mac_crs;
  wire rmii2mac_rx_clk;
  wire rmii2mac_rx_dv;
  wire rmii2mac_rx_er;
  wire [3:0]rmii2mac_rxd;
  wire rmii2mac_tx_clk;
  wire rmii2phy_tx_en;
  wire [1:0]rmii2phy_txd;
  wire rst_n;
  wire \rst_n_d_reg_n_0_[0] ;
  wire sync_rst_n;

  mcu_mii_to_rmii_0_0_rmii_rx_agile \RMII_AGILE.I_RX 
       (.D(rmii2Mac_rxd_i),
        .Q(sync_rst_n),
        .Rx_cary_sense_reg(\RMII_AGILE.I_RX_n_2 ),
        .SR(\RMII_AGILE.I_RX_n_0 ),
        .mac2Rmii_tx_en_d2(mac2Rmii_tx_en_d2),
        .phy2Rmii_crs_dv_d2(phy2Rmii_crs_dv_d2),
        .phy2Rmii_rx_er_d2(phy2Rmii_rx_er_d2),
        .\phy2rmii_rxd_d1_reg[1] (phy2Rmii_rxd_d2),
        .ref_clk(ref_clk),
        .rmii2Mac_crs_i(rmii2Mac_crs_i),
        .rmii2Mac_rx_clk_i(rmii2Mac_rx_clk_i),
        .rmii2Mac_rx_dv_i(rmii2Mac_rx_dv_i),
        .rmii2Mac_rx_er_i(rmii2Mac_rx_er_i));
  mcu_mii_to_rmii_0_0_rmii_tx_agile \RMII_AGILE.I_TX 
       (.Q(mac2Rmii_txd_d2),
        .Rmii2Phy_tx_en(Rmii2Phy_tx_en),
        .\Rmii2Phy_txd_reg[1]_0 ({\RMII_AGILE.I_TX_n_1 ,\RMII_AGILE.I_TX_n_2 }),
        .SR(\RMII_AGILE.I_RX_n_0 ),
        .mac2Rmii_tx_en_d2(mac2Rmii_tx_en_d2),
        .mac2Rmii_tx_er_d2(mac2Rmii_tx_er_d2),
        .ref_clk(ref_clk),
        .rmii2Mac_tx_clk_i(rmii2Mac_tx_clk_i));
  FDRE mac2Rmii_tx_en_d1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_tx_en),
        .Q(mac2Rmii_tx_en_d1),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE mac2Rmii_tx_en_d2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_tx_en_d1),
        .Q(mac2Rmii_tx_en_d2),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE mac2Rmii_tx_er_d1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_tx_er),
        .Q(mac2Rmii_tx_er_d1),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE mac2Rmii_tx_er_d2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_tx_er_d1),
        .Q(mac2Rmii_tx_er_d2),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \mac2Rmii_txd_d1_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_txd[0]),
        .Q(mac2Rmii_txd_d1[0]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \mac2Rmii_txd_d1_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_txd[1]),
        .Q(mac2Rmii_txd_d1[1]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \mac2Rmii_txd_d1_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_txd[2]),
        .Q(mac2Rmii_txd_d1[2]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \mac2Rmii_txd_d1_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_txd[3]),
        .Q(mac2Rmii_txd_d1[3]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \mac2Rmii_txd_d2_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_txd_d1[0]),
        .Q(mac2Rmii_txd_d2[0]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \mac2Rmii_txd_d2_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_txd_d1[1]),
        .Q(mac2Rmii_txd_d2[1]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \mac2Rmii_txd_d2_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_txd_d1[2]),
        .Q(mac2Rmii_txd_d2[2]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \mac2Rmii_txd_d2_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_txd_d1[3]),
        .Q(mac2Rmii_txd_d2[3]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE phy2Rmii_crs_dv_d1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_crs_dv),
        .Q(phy2Rmii_crs_dv_d1),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE phy2Rmii_crs_dv_d2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_crs_dv_d1),
        .Q(phy2Rmii_crs_dv_d2),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE phy2Rmii_rx_er_d1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_rx_er),
        .Q(phy2Rmii_rx_er_d1),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE phy2Rmii_rx_er_d2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_rx_er_d1),
        .Q(phy2Rmii_rx_er_d2),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \phy2Rmii_rxd_d1_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_rxd[0]),
        .Q(phy2Rmii_rxd_d1[0]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \phy2Rmii_rxd_d1_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_rxd[1]),
        .Q(phy2Rmii_rxd_d1[1]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \phy2Rmii_rxd_d2_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_rxd_d1[0]),
        .Q(phy2Rmii_rxd_d2[0]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \phy2Rmii_rxd_d2_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_rxd_d1[1]),
        .Q(phy2Rmii_rxd_d2[1]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE rmii2mac_col_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_AGILE.I_RX_n_2 ),
        .Q(rmii2mac_col),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE rmii2mac_crs_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_crs_i),
        .Q(rmii2mac_crs),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE rmii2mac_rx_clk_bi_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rx_clk_i),
        .Q(rmii2mac_rx_clk),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE rmii2mac_rx_dv_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rx_dv_i),
        .Q(rmii2mac_rx_dv),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE rmii2mac_rx_er_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rx_er_i),
        .Q(rmii2mac_rx_er),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \rmii2mac_rxd_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rxd_i[0]),
        .Q(rmii2mac_rxd[0]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \rmii2mac_rxd_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rxd_i[1]),
        .Q(rmii2mac_rxd[1]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \rmii2mac_rxd_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rxd_i[2]),
        .Q(rmii2mac_rxd[2]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \rmii2mac_rxd_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rxd_i[3]),
        .Q(rmii2mac_rxd[3]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE rmii2mac_tx_clk_bi_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_tx_clk_i),
        .Q(rmii2mac_tx_clk),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE rmii2phy_tx_en_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(Rmii2Phy_tx_en),
        .Q(rmii2phy_tx_en),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \rmii2phy_txd_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_AGILE.I_TX_n_2 ),
        .Q(rmii2phy_txd[0]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \rmii2phy_txd_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_AGILE.I_TX_n_1 ),
        .Q(rmii2phy_txd[1]),
        .R(\RMII_AGILE.I_RX_n_0 ));
  FDRE \rst_n_d_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(rst_n),
        .Q(\rst_n_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rst_n_d_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\rst_n_d_reg_n_0_[0] ),
        .Q(sync_rst_n),
        .R(1'b0));
endmodule

module mcu_mii_to_rmii_0_0_rmii_rx_agile
   (SR,
    rmii2Mac_crs_i,
    Rx_cary_sense_reg,
    rmii2Mac_rx_er_i,
    D,
    rmii2Mac_rx_dv_i,
    rmii2Mac_rx_clk_i,
    ref_clk,
    phy2Rmii_rx_er_d2,
    mac2Rmii_tx_en_d2,
    Q,
    \phy2rmii_rxd_d1_reg[1] ,
    phy2Rmii_crs_dv_d2);
  output [0:0]SR;
  output rmii2Mac_crs_i;
  output Rx_cary_sense_reg;
  output rmii2Mac_rx_er_i;
  output [3:0]D;
  output rmii2Mac_rx_dv_i;
  output rmii2Mac_rx_clk_i;
  input ref_clk;
  input phy2Rmii_rx_er_d2;
  input mac2Rmii_tx_en_d2;
  input [0:0]Q;
  input [1:0]\phy2rmii_rxd_d1_reg[1] ;
  input phy2Rmii_crs_dv_d2;

  wire [3:0]D;
  wire I_RX_FIFO_LOADER_n_8;
  wire I_RX_FIFO_n_1;
  wire [0:0]Q;
  wire Rx_cary_sense_reg;
  wire [13:0]Rx_fifo_output;
  wire [0:0]SR;
  wire mac2Rmii_tx_en_d2;
  wire phy2Rmii_crs_dv_d2;
  wire phy2Rmii_rx_er_d2;
  wire [1:0]\phy2rmii_rxd_d1_reg[1] ;
  wire ref_clk;
  wire rmii2Mac_crs_i;
  wire rmii2Mac_rx_clk_i;
  wire rmii2Mac_rx_dv_i;
  wire rmii2Mac_rx_er_i;
  wire rx_10;
  wire rx_100;
  wire [7:0]rx_data;
  wire rx_end_of_packet;
  wire rx_error;
  wire rx_fifo_mt_n;
  wire rx_fifo_rd_en;
  wire rx_fifo_wr_en;

  mcu_mii_to_rmii_0_0_rx_fifo I_RX_FIFO
       (.\Addr_Counters[3].FDRE_I (SR),
        .Q({Rx_fifo_output[13],Rx_fifo_output[11:8],Rx_fifo_output[5],Rx_fifo_output[3:0]}),
        .\Rx_fifo_output_reg[7]_0 (I_RX_FIFO_n_1),
        .ref_clk(ref_clk),
        .rx_data(rx_data),
        .rx_end_of_packet(rx_end_of_packet),
        .rx_error(rx_error),
        .rx_fifo_mt_n(rx_fifo_mt_n),
        .rx_fifo_rd_en(rx_fifo_rd_en),
        .rx_fifo_wr_en(rx_fifo_wr_en));
  mcu_mii_to_rmii_0_0_rx_fifo_disposer I_RX_FIFO_DISPOSER
       (.D(D),
        .\FSM_sequential_present_state_reg[0]_0 (I_RX_FIFO_n_1),
        .\FSM_sequential_present_state_reg[0]_1 (I_RX_FIFO_LOADER_n_8),
        .\FSM_sequential_present_state_reg[5]_0 (SR),
        .Q({Rx_fifo_output[13],Rx_fifo_output[11:8],Rx_fifo_output[5],Rx_fifo_output[3:0]}),
        .ref_clk(ref_clk),
        .rmii2Mac_rx_clk_i(rmii2Mac_rx_clk_i),
        .rmii2Mac_rx_dv_i(rmii2Mac_rx_dv_i),
        .rmii2Mac_rx_er_i(rmii2Mac_rx_er_i),
        .rx_10(rx_10),
        .rx_100(rx_100),
        .rx_fifo_mt_n(rx_fifo_mt_n),
        .rx_fifo_rd_en(rx_fifo_rd_en));
  mcu_mii_to_rmii_0_0_rx_fifo_loader I_RX_FIFO_LOADER
       (.Q(Q),
        .Rx_cary_sense_reg_0(Rx_cary_sense_reg),
        .mac2Rmii_tx_en_d2(mac2Rmii_tx_en_d2),
        .phy2Rmii_crs_dv_d2(phy2Rmii_crs_dv_d2),
        .phy2Rmii_rx_er_d2(phy2Rmii_rx_er_d2),
        .\phy2rmii_rxd_d1_reg[1]_0 (\phy2rmii_rxd_d1_reg[1] ),
        .ref_clk(ref_clk),
        .rmii2Mac_crs_i(rmii2Mac_crs_i),
        .\rst_n_d_reg[1] (SR),
        .rx_10(rx_10),
        .rx_100(rx_100),
        .rx_data(rx_data),
        .rx_end_of_packet(rx_end_of_packet),
        .rx_error(rx_error),
        .rx_fifo_wr_en(rx_fifo_wr_en),
        .rxd_10_i_reg_0(I_RX_FIFO_LOADER_n_8));
endmodule

module mcu_mii_to_rmii_0_0_rmii_tx_agile
   (Rmii2Phy_tx_en,
    \Rmii2Phy_txd_reg[1]_0 ,
    rmii2Mac_tx_clk_i,
    SR,
    mac2Rmii_tx_er_d2,
    ref_clk,
    mac2Rmii_tx_en_d2,
    Q);
  output Rmii2Phy_tx_en;
  output [1:0]\Rmii2Phy_txd_reg[1]_0 ;
  output rmii2Mac_tx_clk_i;
  input [0:0]SR;
  input mac2Rmii_tx_er_d2;
  input ref_clk;
  input mac2Rmii_tx_en_d2;
  input [3:0]Q;

  wire \FSM_onehot_present_state[2]_i_1_n_0 ;
  wire \FSM_onehot_present_state_reg_n_0_[0] ;
  wire \FSM_onehot_present_state_reg_n_0_[1] ;
  wire \FSM_onehot_present_state_reg_n_0_[3] ;
  wire [3:0]Q;
  wire Rmii2Phy_tx_en;
  wire \Rmii2Phy_txd[0]_i_1_n_0 ;
  wire \Rmii2Phy_txd[1]_i_1_n_0 ;
  wire [1:0]\Rmii2Phy_txd_reg[1]_0 ;
  wire [0:0]SR;
  wire mac2Rmii_tx_en_d;
  wire mac2Rmii_tx_en_d2;
  wire mac2Rmii_tx_er_d;
  wire mac2Rmii_tx_er_d2;
  wire \mac2Rmii_txd_d_reg_n_0_[0] ;
  wire \mac2Rmii_txd_d_reg_n_0_[1] ;
  wire \mac2Rmii_txd_d_reg_n_0_[3] ;
  wire p_0_in;
  wire ref_clk;
  wire rmii2Mac_tx_clk_i;
  wire tx_in_reg_en;
  wire txd_dibit;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_present_state[2]_i_1 
       (.I0(\FSM_onehot_present_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_present_state_reg_n_0_[3] ),
        .O(\FSM_onehot_present_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_present_state_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_present_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\FSM_onehot_present_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_present_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\FSM_onehot_present_state[2]_i_1_n_0 ),
        .Q(txd_dibit),
        .R(SR));
  (* FSM_ENCODED_STATES = "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(txd_dibit),
        .Q(\FSM_onehot_present_state_reg_n_0_[3] ),
        .R(SR));
  FDRE Rmii2Phy_tx_en_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_tx_en_d),
        .Q(Rmii2Phy_tx_en),
        .R(SR));
  LUT5 #(
    .INIT(32'h47BB7488)) 
    \Rmii2Phy_txd[0]_i_1 
       (.I0(p_0_in),
        .I1(txd_dibit),
        .I2(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I3(mac2Rmii_tx_er_d),
        .I4(\mac2Rmii_txd_d_reg_n_0_[0] ),
        .O(\Rmii2Phy_txd[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFCB8B8)) 
    \Rmii2Phy_txd[1]_i_1 
       (.I0(\mac2Rmii_txd_d_reg_n_0_[3] ),
        .I1(txd_dibit),
        .I2(\mac2Rmii_txd_d_reg_n_0_[1] ),
        .I3(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I4(mac2Rmii_tx_er_d),
        .O(\Rmii2Phy_txd[1]_i_1_n_0 ));
  FDRE \Rmii2Phy_txd_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rmii2Phy_txd[0]_i_1_n_0 ),
        .Q(\Rmii2Phy_txd_reg[1]_0 [0]),
        .R(SR));
  FDRE \Rmii2Phy_txd_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rmii2Phy_txd[1]_i_1_n_0 ),
        .Q(\Rmii2Phy_txd_reg[1]_0 [1]),
        .R(SR));
  FDRE mac2Rmii_tx_en_d_reg
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(mac2Rmii_tx_en_d2),
        .Q(mac2Rmii_tx_en_d),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    mac2Rmii_tx_er_d_i_1
       (.I0(txd_dibit),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .O(tx_in_reg_en));
  FDRE mac2Rmii_tx_er_d_reg
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(mac2Rmii_tx_er_d2),
        .Q(mac2Rmii_tx_er_d),
        .R(SR));
  FDRE \mac2Rmii_txd_d_reg[0] 
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(Q[0]),
        .Q(\mac2Rmii_txd_d_reg_n_0_[0] ),
        .R(SR));
  FDRE \mac2Rmii_txd_d_reg[1] 
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(Q[1]),
        .Q(\mac2Rmii_txd_d_reg_n_0_[1] ),
        .R(SR));
  FDRE \mac2Rmii_txd_d_reg[2] 
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(Q[2]),
        .Q(p_0_in),
        .R(SR));
  FDRE \mac2Rmii_txd_d_reg[3] 
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(Q[3]),
        .Q(\mac2Rmii_txd_d_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rmii2mac_tx_clk_bi_i_2
       (.I0(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_present_state_reg_n_0_[1] ),
        .O(rmii2Mac_tx_clk_i));
endmodule

module mcu_mii_to_rmii_0_0_rx_fifo
   (rx_fifo_mt_n,
    \Rx_fifo_output_reg[7]_0 ,
    Q,
    \Addr_Counters[3].FDRE_I ,
    ref_clk,
    rx_end_of_packet,
    rx_error,
    rx_data,
    rx_fifo_wr_en,
    rx_fifo_rd_en);
  output rx_fifo_mt_n;
  output \Rx_fifo_output_reg[7]_0 ;
  output [9:0]Q;
  input \Addr_Counters[3].FDRE_I ;
  input ref_clk;
  input rx_end_of_packet;
  input rx_error;
  input [7:0]rx_data;
  input rx_fifo_wr_en;
  input rx_fifo_rd_en;

  wire \Addr_Counters[3].FDRE_I ;
  wire [9:0]Q;
  wire [1:0]Rmii_rx_eop;
  wire \Rx_fifo_output_reg[7]_0 ;
  wire ref_clk;
  wire [7:0]rx_data;
  wire rx_end_of_packet;
  wire rx_error;
  wire rx_fifo_mt_n;
  wire [15:0]rx_fifo_output_i;
  wire rx_fifo_rd_en;
  wire rx_fifo_wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_present_state[1]_i_3 
       (.I0(Rmii_rx_eop[0]),
        .I1(Rmii_rx_eop[1]),
        .O(\Rx_fifo_output_reg[7]_0 ));
  mcu_mii_to_rmii_0_0_SRL_FIFO I_SRL_FIFO
       (.\Addr_Counters[3].FDRE_I_0 (\Addr_Counters[3].FDRE_I ),
        .D({rx_fifo_output_i[15],rx_fifo_output_i[13],rx_fifo_output_i[11:7],rx_fifo_output_i[5],rx_fifo_output_i[3:0]}),
        .Data_Exists_DFF_0(rx_fifo_mt_n),
        .ref_clk(ref_clk),
        .rx_data(rx_data),
        .rx_end_of_packet(rx_end_of_packet),
        .rx_error(rx_error),
        .rx_fifo_rd_en(rx_fifo_rd_en),
        .rx_fifo_wr_en(rx_fifo_wr_en));
  FDRE \Rx_fifo_output_reg[0] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[0]),
        .Q(Q[0]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[10] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[10]),
        .Q(Q[7]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[11] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[11]),
        .Q(Q[8]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[13] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[13]),
        .Q(Q[9]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[15] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[15]),
        .Q(Rmii_rx_eop[1]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[1] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[1]),
        .Q(Q[1]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[2] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[2]),
        .Q(Q[2]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[3] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[3]),
        .Q(Q[3]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[5] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[5]),
        .Q(Q[4]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[7] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[7]),
        .Q(Rmii_rx_eop[0]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[8] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[8]),
        .Q(Q[5]),
        .R(\Addr_Counters[3].FDRE_I ));
  FDRE \Rx_fifo_output_reg[9] 
       (.C(ref_clk),
        .CE(rx_fifo_rd_en),
        .D(rx_fifo_output_i[9]),
        .Q(Q[6]),
        .R(\Addr_Counters[3].FDRE_I ));
endmodule

module mcu_mii_to_rmii_0_0_rx_fifo_disposer
   (rx_fifo_rd_en,
    rmii2Mac_rx_er_i,
    D,
    rmii2Mac_rx_dv_i,
    rmii2Mac_rx_clk_i,
    Q,
    \FSM_sequential_present_state_reg[0]_0 ,
    \FSM_sequential_present_state_reg[0]_1 ,
    rx_100,
    rx_10,
    rx_fifo_mt_n,
    \FSM_sequential_present_state_reg[5]_0 ,
    ref_clk);
  output rx_fifo_rd_en;
  output rmii2Mac_rx_er_i;
  output [3:0]D;
  output rmii2Mac_rx_dv_i;
  output rmii2Mac_rx_clk_i;
  input [9:0]Q;
  input \FSM_sequential_present_state_reg[0]_0 ;
  input \FSM_sequential_present_state_reg[0]_1 ;
  input rx_100;
  input rx_10;
  input rx_fifo_mt_n;
  input \FSM_sequential_present_state_reg[5]_0 ;
  input ref_clk;

  wire [3:0]D;
  wire \FSM_sequential_present_state[0]_i_2_n_0 ;
  wire \FSM_sequential_present_state[0]_i_3_n_0 ;
  wire \FSM_sequential_present_state[1]_i_2_n_0 ;
  wire \FSM_sequential_present_state[2]_i_2_n_0 ;
  wire \FSM_sequential_present_state[2]_i_3_n_0 ;
  wire \FSM_sequential_present_state[2]_i_4_n_0 ;
  wire \FSM_sequential_present_state[3]_i_2_n_0 ;
  wire \FSM_sequential_present_state[3]_i_3_n_0 ;
  wire \FSM_sequential_present_state[3]_i_4_n_0 ;
  wire \FSM_sequential_present_state[3]_i_5_n_0 ;
  wire \FSM_sequential_present_state_reg[0]_0 ;
  wire \FSM_sequential_present_state_reg[0]_1 ;
  wire \FSM_sequential_present_state_reg[5]_0 ;
  wire [9:0]Q;
  wire [5:0]next_state;
  wire [5:0]present_state;
  wire ref_clk;
  wire rmii2Mac_rx_clk_i;
  wire rmii2Mac_rx_dv_i;
  wire rmii2Mac_rx_er_i;
  wire rmii2mac_rx_er_i_2_n_0;
  wire rmii2mac_rx_er_i_3_n_0;
  wire rx_10;
  wire rx_100;
  wire rx_fifo_mt_n;
  wire rx_fifo_rd_en;

  LUT6 #(
    .INIT(64'h00000000CECEFCFF)) 
    \FSM_sequential_present_state[0]_i_2 
       (.I0(\FSM_sequential_present_state_reg[0]_0 ),
        .I1(\FSM_sequential_present_state[2]_i_4_n_0 ),
        .I2(present_state[1]),
        .I3(\FSM_sequential_present_state_reg[0]_1 ),
        .I4(present_state[2]),
        .I5(present_state[0]),
        .O(\FSM_sequential_present_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAA55555555)) 
    \FSM_sequential_present_state[0]_i_3 
       (.I0(present_state[4]),
        .I1(\FSM_sequential_present_state[3]_i_4_n_0 ),
        .I2(\FSM_sequential_present_state_reg[0]_0 ),
        .I3(rx_fifo_mt_n),
        .I4(present_state[3]),
        .I5(present_state[0]),
        .O(\FSM_sequential_present_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h006666660066660F)) 
    \FSM_sequential_present_state[1]_i_1 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(\FSM_sequential_present_state[1]_i_2_n_0 ),
        .I3(present_state[5]),
        .I4(present_state[4]),
        .I5(present_state[3]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFF0FF00EFF00F00E)) 
    \FSM_sequential_present_state[1]_i_2 
       (.I0(rx_100),
        .I1(rx_10),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .I4(present_state[2]),
        .I5(\FSM_sequential_present_state_reg[0]_0 ),
        .O(\FSM_sequential_present_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h007D3C7D007D3C55)) 
    \FSM_sequential_present_state[2]_i_1 
       (.I0(\FSM_sequential_present_state[2]_i_2_n_0 ),
        .I1(present_state[2]),
        .I2(\FSM_sequential_present_state[2]_i_3_n_0 ),
        .I3(present_state[5]),
        .I4(present_state[4]),
        .I5(present_state[3]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'hFFF0FFFFFFFFF0FE)) 
    \FSM_sequential_present_state[2]_i_2 
       (.I0(rx_100),
        .I1(rx_10),
        .I2(\FSM_sequential_present_state[2]_i_4_n_0 ),
        .I3(present_state[2]),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(\FSM_sequential_present_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_present_state[2]_i_3 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .O(\FSM_sequential_present_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_present_state[2]_i_4 
       (.I0(present_state[3]),
        .I1(present_state[4]),
        .O(\FSM_sequential_present_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFD2D2D2D0)) 
    \FSM_sequential_present_state[3]_i_2 
       (.I0(present_state[0]),
        .I1(\FSM_sequential_present_state[3]_i_4_n_0 ),
        .I2(present_state[3]),
        .I3(present_state[4]),
        .I4(rx_10),
        .I5(\FSM_sequential_present_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_present_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBEEE4444)) 
    \FSM_sequential_present_state[3]_i_3 
       (.I0(present_state[4]),
        .I1(present_state[3]),
        .I2(present_state[2]),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .O(\FSM_sequential_present_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_present_state[3]_i_4 
       (.I0(present_state[2]),
        .I1(present_state[1]),
        .O(\FSM_sequential_present_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_present_state[3]_i_5 
       (.I0(present_state[1]),
        .I1(present_state[2]),
        .I2(rx_10),
        .I3(rx_100),
        .I4(present_state[0]),
        .I5(present_state[4]),
        .O(\FSM_sequential_present_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h15555555C0000000)) 
    \FSM_sequential_present_state[4]_i_1 
       (.I0(present_state[5]),
        .I1(present_state[0]),
        .I2(present_state[3]),
        .I3(present_state[1]),
        .I4(present_state[2]),
        .I5(present_state[4]),
        .O(next_state[4]));
  LUT6 #(
    .INIT(64'h6222222222222222)) 
    \FSM_sequential_present_state[5]_i_1 
       (.I0(present_state[5]),
        .I1(present_state[4]),
        .I2(present_state[0]),
        .I3(present_state[3]),
        .I4(present_state[1]),
        .I5(present_state[2]),
        .O(next_state[5]));
  (* FSM_ENCODED_STATES = "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010" *) 
  FDRE \FSM_sequential_present_state_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(present_state[0]),
        .R(\FSM_sequential_present_state_reg[5]_0 ));
  MUXF7 \FSM_sequential_present_state_reg[0]_i_1 
       (.I0(\FSM_sequential_present_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_present_state[0]_i_3_n_0 ),
        .O(next_state[0]),
        .S(present_state[5]));
  (* FSM_ENCODED_STATES = "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010" *) 
  FDRE \FSM_sequential_present_state_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(present_state[1]),
        .R(\FSM_sequential_present_state_reg[5]_0 ));
  (* FSM_ENCODED_STATES = "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010" *) 
  FDRE \FSM_sequential_present_state_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(present_state[2]),
        .R(\FSM_sequential_present_state_reg[5]_0 ));
  (* FSM_ENCODED_STATES = "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010" *) 
  FDRE \FSM_sequential_present_state_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(present_state[3]),
        .R(\FSM_sequential_present_state_reg[5]_0 ));
  MUXF7 \FSM_sequential_present_state_reg[3]_i_1 
       (.I0(\FSM_sequential_present_state[3]_i_2_n_0 ),
        .I1(\FSM_sequential_present_state[3]_i_3_n_0 ),
        .O(next_state[3]),
        .S(present_state[5]));
  (* FSM_ENCODED_STATES = "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010" *) 
  FDRE \FSM_sequential_present_state_reg[4] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(next_state[4]),
        .Q(present_state[4]),
        .R(\FSM_sequential_present_state_reg[5]_0 ));
  (* FSM_ENCODED_STATES = "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010" *) 
  FDRE \FSM_sequential_present_state_reg[5] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(next_state[5]),
        .Q(present_state[5]),
        .R(\FSM_sequential_present_state_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0002000000000412)) 
    \Rx_fifo_output[15]_i_1 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[3]),
        .I3(present_state[2]),
        .I4(present_state[5]),
        .I5(present_state[4]),
        .O(rx_fifo_rd_en));
  LUT6 #(
    .INIT(64'h1A1A1A5A5D654460)) 
    rmii2mac_rx_clk_bi_i_1
       (.I0(present_state[5]),
        .I1(present_state[2]),
        .I2(present_state[4]),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .I5(present_state[3]),
        .O(rmii2Mac_rx_clk_i));
  LUT6 #(
    .INIT(64'h55555577EFFFFFEA)) 
    rmii2mac_rx_dv_i_1
       (.I0(present_state[4]),
        .I1(present_state[3]),
        .I2(present_state[0]),
        .I3(present_state[2]),
        .I4(present_state[1]),
        .I5(present_state[5]),
        .O(rmii2Mac_rx_dv_i));
  LUT4 #(
    .INIT(16'h4F44)) 
    rmii2mac_rx_er_i_1
       (.I0(rmii2mac_rx_er_i_2_n_0),
        .I1(Q[9]),
        .I2(rmii2mac_rx_er_i_3_n_0),
        .I3(Q[4]),
        .O(rmii2Mac_rx_er_i));
  LUT6 #(
    .INIT(64'hB5F5B4D5B4F5F4D5)) 
    rmii2mac_rx_er_i_2
       (.I0(present_state[5]),
        .I1(present_state[3]),
        .I2(present_state[4]),
        .I3(present_state[2]),
        .I4(present_state[1]),
        .I5(present_state[0]),
        .O(rmii2mac_rx_er_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAEAEAABBABBBABB)) 
    rmii2mac_rx_er_i_3
       (.I0(present_state[5]),
        .I1(present_state[4]),
        .I2(present_state[2]),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .I5(present_state[3]),
        .O(rmii2mac_rx_er_i_3_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rmii2mac_rxd[0]_i_1 
       (.I0(rmii2mac_rx_er_i_2_n_0),
        .I1(Q[5]),
        .I2(rmii2mac_rx_er_i_3_n_0),
        .I3(Q[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rmii2mac_rxd[1]_i_1 
       (.I0(rmii2mac_rx_er_i_2_n_0),
        .I1(Q[6]),
        .I2(rmii2mac_rx_er_i_3_n_0),
        .I3(Q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rmii2mac_rxd[2]_i_1 
       (.I0(rmii2mac_rx_er_i_2_n_0),
        .I1(Q[7]),
        .I2(rmii2mac_rx_er_i_3_n_0),
        .I3(Q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \rmii2mac_rxd[3]_i_1 
       (.I0(rmii2mac_rx_er_i_2_n_0),
        .I1(Q[8]),
        .I2(rmii2mac_rx_er_i_3_n_0),
        .I3(Q[3]),
        .O(D[3]));
endmodule

module mcu_mii_to_rmii_0_0_rx_fifo_loader
   (\rst_n_d_reg[1] ,
    rx_10,
    rx_100,
    rx_error,
    rmii2Mac_crs_i,
    rx_end_of_packet,
    rx_fifo_wr_en,
    Rx_cary_sense_reg_0,
    rxd_10_i_reg_0,
    rx_data,
    ref_clk,
    phy2Rmii_rx_er_d2,
    mac2Rmii_tx_en_d2,
    Q,
    phy2Rmii_crs_dv_d2,
    \phy2rmii_rxd_d1_reg[1]_0 );
  output \rst_n_d_reg[1] ;
  output rx_10;
  output rx_100;
  output rx_error;
  output rmii2Mac_crs_i;
  output rx_end_of_packet;
  output rx_fifo_wr_en;
  output Rx_cary_sense_reg_0;
  output rxd_10_i_reg_0;
  output [7:0]rx_data;
  input ref_clk;
  input phy2Rmii_rx_er_d2;
  input mac2Rmii_tx_en_d2;
  input [0:0]Q;
  input phy2Rmii_crs_dv_d2;
  input [1:0]\phy2rmii_rxd_d1_reg[1]_0 ;

  wire [0:0]Q;
  wire Rx_cary_sense_reg_0;
  wire \Rx_data[0]_i_1_n_0 ;
  wire \Rx_data[1]_i_1_n_0 ;
  wire \Rx_data[2]_i_1_n_0 ;
  wire \Rx_data[3]_i_1_n_0 ;
  wire \Rx_data[4]_i_1_n_0 ;
  wire \Rx_data[5]_i_1_n_0 ;
  wire \Rx_data[6]_i_1_n_0 ;
  wire \Rx_data[7]_i_1_n_0 ;
  wire Rx_fifo_wr_en0;
  wire \dibit_cnt[0]_i_1_n_0 ;
  wire \dibit_cnt[1]_i_1_n_0 ;
  wire \dibit_cnt[2]_i_1_n_0 ;
  wire \dibit_cnt[3]_i_1_n_0 ;
  wire \dibit_cnt_reg_n_0_[0] ;
  wire \dibit_cnt_reg_n_0_[1] ;
  wire \dibit_cnt_reg_n_0_[2] ;
  wire mac2Rmii_tx_en_d2;
  wire p_0_in;
  wire phy2Rmii_crs_dv_d2;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[0] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[10] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[11] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[1] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[2] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[3] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[4] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[5] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[6] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[7] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[8] ;
  wire \phy2Rmii_crs_dv_sr_reg_n_0_[9] ;
  wire phy2Rmii_rx_er_d2;
  wire [1:0]phy2rmii_rxd_d1;
  wire [1:0]\phy2rmii_rxd_d1_reg[1]_0 ;
  wire [1:0]phy2rmii_rxd_d2;
  wire [2:0]present_state;
  wire \present_state[0]_i_1_n_0 ;
  wire \present_state[0]_i_2_n_0 ;
  wire \present_state[0]_i_3_n_0 ;
  wire \present_state[0]_i_4_n_0 ;
  wire \present_state[0]_i_5_n_0 ;
  wire \present_state[1]_i_1_n_0 ;
  wire \present_state[1]_i_2_n_0 ;
  wire \present_state[2]_i_1_n_0 ;
  wire \present_state[2]_i_2_n_0 ;
  wire ref_clk;
  wire [5:0]repeated_data_cnt;
  wire \repeated_data_cnt[5]_i_1_n_0 ;
  wire \repeated_data_cnt_reg_n_0_[0] ;
  wire \repeated_data_cnt_reg_n_0_[1] ;
  wire \repeated_data_cnt_reg_n_0_[2] ;
  wire \repeated_data_cnt_reg_n_0_[3] ;
  wire \repeated_data_cnt_reg_n_0_[4] ;
  wire \repeated_data_cnt_reg_n_0_[5] ;
  wire rmii2Mac_crs_i;
  wire \rst_n_d_reg[1] ;
  wire rx_10;
  wire rx_100;
  wire rx_cary_sense_i;
  wire rx_cary_sense_i0;
  wire rx_cary_sense_i_i_2_n_0;
  wire [7:0]rx_data;
  wire rx_data_valid_i;
  wire rx_data_valid_i_i_1_n_0;
  wire rx_end_of_packet;
  wire rx_end_of_packet_i0;
  wire rx_error;
  wire rx_fifo_wr_en;
  wire rxd_100_i_i_1_n_0;
  wire rxd_10_i_reg_0;
  wire rxd_is_idle;
  wire rxd_is_idle_i_1_n_0;
  wire rxd_is_preamble10;
  wire rxd_is_preamble10_i_1_n_0;
  wire [4:0]sample_rxd_cnt;
  wire \sample_rxd_cnt[0]_i_1_n_0 ;
  wire \sample_rxd_cnt[1]_i_1_n_0 ;
  wire \sample_rxd_cnt[2]_i_1_n_0 ;
  wire \sample_rxd_cnt[3]_i_1_n_0 ;
  wire \sample_rxd_cnt[4]_i_1_n_0 ;
  wire sample_rxd_i_1_n_0;
  wire sample_rxd_i_2_n_0;
  wire sample_rxd_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_present_state[0]_i_4 
       (.I0(rx_10),
        .I1(rx_100),
        .O(rxd_10_i_reg_0));
  FDRE Rx_cary_sense_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rx_cary_sense_i),
        .Q(rmii2Mac_crs_i),
        .R(\rst_n_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Rx_data[0]_i_1 
       (.I0(phy2rmii_rxd_d2[0]),
        .I1(\dibit_cnt_reg_n_0_[0] ),
        .I2(rx_data[0]),
        .O(\Rx_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Rx_data[1]_i_1 
       (.I0(phy2rmii_rxd_d2[1]),
        .I1(\dibit_cnt_reg_n_0_[0] ),
        .I2(rx_data[1]),
        .O(\Rx_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Rx_data[2]_i_1 
       (.I0(phy2rmii_rxd_d2[0]),
        .I1(\dibit_cnt_reg_n_0_[1] ),
        .I2(\dibit_cnt_reg_n_0_[0] ),
        .I3(rx_data[2]),
        .O(\Rx_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Rx_data[3]_i_1 
       (.I0(phy2rmii_rxd_d2[1]),
        .I1(\dibit_cnt_reg_n_0_[1] ),
        .I2(\dibit_cnt_reg_n_0_[0] ),
        .I3(rx_data[3]),
        .O(\Rx_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \Rx_data[4]_i_1 
       (.I0(phy2rmii_rxd_d2[0]),
        .I1(\dibit_cnt_reg_n_0_[2] ),
        .I2(\dibit_cnt_reg_n_0_[1] ),
        .I3(\dibit_cnt_reg_n_0_[0] ),
        .I4(rx_data[4]),
        .O(\Rx_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \Rx_data[5]_i_1 
       (.I0(phy2rmii_rxd_d2[1]),
        .I1(\dibit_cnt_reg_n_0_[2] ),
        .I2(\dibit_cnt_reg_n_0_[1] ),
        .I3(\dibit_cnt_reg_n_0_[0] ),
        .I4(rx_data[5]),
        .O(\Rx_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \Rx_data[6]_i_1 
       (.I0(phy2rmii_rxd_d2[0]),
        .I1(\dibit_cnt_reg_n_0_[1] ),
        .I2(\dibit_cnt_reg_n_0_[0] ),
        .I3(p_0_in),
        .I4(\dibit_cnt_reg_n_0_[2] ),
        .I5(rx_data[6]),
        .O(\Rx_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \Rx_data[7]_i_1 
       (.I0(phy2rmii_rxd_d2[1]),
        .I1(\dibit_cnt_reg_n_0_[1] ),
        .I2(\dibit_cnt_reg_n_0_[0] ),
        .I3(p_0_in),
        .I4(\dibit_cnt_reg_n_0_[2] ),
        .I5(rx_data[7]),
        .O(\Rx_data[7]_i_1_n_0 ));
  FDRE \Rx_data_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rx_data[0]_i_1_n_0 ),
        .Q(rx_data[0]),
        .R(\rst_n_d_reg[1] ));
  FDRE \Rx_data_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rx_data[1]_i_1_n_0 ),
        .Q(rx_data[1]),
        .R(\rst_n_d_reg[1] ));
  FDRE \Rx_data_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rx_data[2]_i_1_n_0 ),
        .Q(rx_data[2]),
        .R(\rst_n_d_reg[1] ));
  FDRE \Rx_data_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rx_data[3]_i_1_n_0 ),
        .Q(rx_data[3]),
        .R(\rst_n_d_reg[1] ));
  FDRE \Rx_data_reg[4] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rx_data[4]_i_1_n_0 ),
        .Q(rx_data[4]),
        .R(\rst_n_d_reg[1] ));
  FDRE \Rx_data_reg[5] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rx_data[5]_i_1_n_0 ),
        .Q(rx_data[5]),
        .R(\rst_n_d_reg[1] ));
  FDRE \Rx_data_reg[6] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rx_data[6]_i_1_n_0 ),
        .Q(rx_data[6]),
        .R(\rst_n_d_reg[1] ));
  FDRE \Rx_data_reg[7] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rx_data[7]_i_1_n_0 ),
        .Q(rx_data[7]),
        .R(\rst_n_d_reg[1] ));
  FDRE Rx_error_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_rx_er_d2),
        .Q(rx_error),
        .R(\rst_n_d_reg[1] ));
  LUT4 #(
    .INIT(16'h0040)) 
    Rx_fifo_wr_en_i_1
       (.I0(rxd_is_preamble10),
        .I1(p_0_in),
        .I2(sample_rxd_reg_n_0),
        .I3(rxd_is_idle),
        .O(Rx_fifo_wr_en0));
  FDRE Rx_fifo_wr_en_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(Rx_fifo_wr_en0),
        .Q(rx_fifo_wr_en),
        .R(\rst_n_d_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3202FFFF)) 
    \dibit_cnt[0]_i_1 
       (.I0(\dibit_cnt_reg_n_0_[0] ),
        .I1(rxd_is_preamble10),
        .I2(sample_rxd_reg_n_0),
        .I3(p_0_in),
        .I4(Q),
        .I5(rxd_is_idle),
        .O(\dibit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \dibit_cnt[1]_i_1 
       (.I0(\dibit_cnt_reg_n_0_[1] ),
        .I1(sample_rxd_reg_n_0),
        .I2(\dibit_cnt_reg_n_0_[0] ),
        .I3(rxd_is_idle),
        .I4(Q),
        .I5(rxd_is_preamble10),
        .O(\dibit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \dibit_cnt[2]_i_1 
       (.I0(\dibit_cnt_reg_n_0_[2] ),
        .I1(rxd_is_preamble10),
        .I2(sample_rxd_reg_n_0),
        .I3(\dibit_cnt_reg_n_0_[1] ),
        .I4(Q),
        .I5(rxd_is_idle),
        .O(\dibit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \dibit_cnt[3]_i_1 
       (.I0(p_0_in),
        .I1(sample_rxd_reg_n_0),
        .I2(\dibit_cnt_reg_n_0_[2] ),
        .I3(rxd_is_idle),
        .I4(Q),
        .I5(rxd_is_preamble10),
        .O(\dibit_cnt[3]_i_1_n_0 ));
  FDRE \dibit_cnt_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\dibit_cnt[0]_i_1_n_0 ),
        .Q(\dibit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dibit_cnt_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\dibit_cnt[1]_i_1_n_0 ),
        .Q(\dibit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dibit_cnt_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\dibit_cnt[2]_i_1_n_0 ),
        .Q(\dibit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dibit_cnt_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\dibit_cnt[3]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \phy2Rmii_crs_dv_sr_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_crs_dv_d2),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[0] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[10] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[9] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[10] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[11] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[10] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[11] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[0] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[1] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[1] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[2] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[2] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[3] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[4] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[3] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[4] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[5] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[4] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[5] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[6] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[5] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[6] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[7] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[6] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[7] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[8] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[7] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[8] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2Rmii_crs_dv_sr_reg[9] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_crs_dv_sr_reg_n_0_[8] ),
        .Q(\phy2Rmii_crs_dv_sr_reg_n_0_[9] ),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2rmii_rxd_d1_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2rmii_rxd_d1_reg[1]_0 [0]),
        .Q(phy2rmii_rxd_d1[0]),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2rmii_rxd_d1_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2rmii_rxd_d1_reg[1]_0 [1]),
        .Q(phy2rmii_rxd_d1[1]),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2rmii_rxd_d2_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_rxd_d1[0]),
        .Q(phy2rmii_rxd_d2[0]),
        .R(\rst_n_d_reg[1] ));
  FDRE \phy2rmii_rxd_d2_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_rxd_d1[1]),
        .Q(phy2rmii_rxd_d2[1]),
        .R(\rst_n_d_reg[1] ));
  LUT6 #(
    .INIT(64'h4544555445445555)) 
    \present_state[0]_i_1 
       (.I0(present_state[2]),
        .I1(\present_state[0]_i_2_n_0 ),
        .I2(\present_state[0]_i_3_n_0 ),
        .I3(\present_state[0]_i_4_n_0 ),
        .I4(\present_state[0]_i_5_n_0 ),
        .I5(repeated_data_cnt[5]),
        .O(\present_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \present_state[0]_i_2 
       (.I0(rx_data_valid_i),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .O(\present_state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \present_state[0]_i_3 
       (.I0(phy2rmii_rxd_d1[1]),
        .I1(phy2rmii_rxd_d1[0]),
        .I2(phy2Rmii_crs_dv_d2),
        .O(\present_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \present_state[0]_i_4 
       (.I0(\phy2rmii_rxd_d1_reg[1]_0 [0]),
        .I1(present_state[1]),
        .I2(\phy2rmii_rxd_d1_reg[1]_0 [1]),
        .I3(present_state[0]),
        .O(\present_state[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \present_state[0]_i_5 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .O(\present_state[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \present_state[1]_i_1 
       (.I0(present_state[2]),
        .I1(\present_state[1]_i_2_n_0 ),
        .O(\present_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B80FFFFFB80FFF)) 
    \present_state[1]_i_2 
       (.I0(\present_state[0]_i_3_n_0 ),
        .I1(repeated_data_cnt[5]),
        .I2(\present_state[2]_i_2_n_0 ),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .I5(rx_data_valid_i),
        .O(\present_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF040004)) 
    \present_state[2]_i_1 
       (.I0(\present_state[2]_i_2_n_0 ),
        .I1(present_state[1]),
        .I2(present_state[0]),
        .I3(present_state[2]),
        .I4(rx_data_valid_i),
        .O(\present_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \present_state[2]_i_2 
       (.I0(phy2Rmii_crs_dv_d2),
        .I1(\phy2rmii_rxd_d1_reg[1]_0 [1]),
        .I2(\phy2rmii_rxd_d1_reg[1]_0 [0]),
        .O(\present_state[2]_i_2_n_0 ));
  FDRE \present_state_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\present_state[0]_i_1_n_0 ),
        .Q(present_state[0]),
        .R(\rst_n_d_reg[1] ));
  FDRE \present_state_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\present_state[1]_i_1_n_0 ),
        .Q(present_state[1]),
        .R(\rst_n_d_reg[1] ));
  FDRE \present_state_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\present_state[2]_i_1_n_0 ),
        .Q(present_state[2]),
        .R(\rst_n_d_reg[1] ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \repeated_data_cnt[0]_i_1 
       (.I0(\repeated_data_cnt_reg_n_0_[4] ),
        .I1(\repeated_data_cnt_reg_n_0_[2] ),
        .I2(\repeated_data_cnt_reg_n_0_[3] ),
        .I3(\repeated_data_cnt_reg_n_0_[1] ),
        .I4(\repeated_data_cnt_reg_n_0_[5] ),
        .I5(\repeated_data_cnt_reg_n_0_[0] ),
        .O(repeated_data_cnt[0]));
  LUT6 #(
    .INIT(64'h8000FFFFFFFF0000)) 
    \repeated_data_cnt[1]_i_1 
       (.I0(\repeated_data_cnt_reg_n_0_[4] ),
        .I1(\repeated_data_cnt_reg_n_0_[2] ),
        .I2(\repeated_data_cnt_reg_n_0_[3] ),
        .I3(\repeated_data_cnt_reg_n_0_[5] ),
        .I4(\repeated_data_cnt_reg_n_0_[0] ),
        .I5(\repeated_data_cnt_reg_n_0_[1] ),
        .O(repeated_data_cnt[1]));
  LUT6 #(
    .INIT(64'h80FFFFFFFF000000)) 
    \repeated_data_cnt[2]_i_1 
       (.I0(\repeated_data_cnt_reg_n_0_[4] ),
        .I1(\repeated_data_cnt_reg_n_0_[3] ),
        .I2(\repeated_data_cnt_reg_n_0_[5] ),
        .I3(\repeated_data_cnt_reg_n_0_[1] ),
        .I4(\repeated_data_cnt_reg_n_0_[0] ),
        .I5(\repeated_data_cnt_reg_n_0_[2] ),
        .O(repeated_data_cnt[2]));
  LUT6 #(
    .INIT(64'h8FFFFFFFF0000000)) 
    \repeated_data_cnt[3]_i_1 
       (.I0(\repeated_data_cnt_reg_n_0_[4] ),
        .I1(\repeated_data_cnt_reg_n_0_[5] ),
        .I2(\repeated_data_cnt_reg_n_0_[2] ),
        .I3(\repeated_data_cnt_reg_n_0_[0] ),
        .I4(\repeated_data_cnt_reg_n_0_[1] ),
        .I5(\repeated_data_cnt_reg_n_0_[3] ),
        .O(repeated_data_cnt[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFFC0000000)) 
    \repeated_data_cnt[4]_i_1 
       (.I0(\repeated_data_cnt_reg_n_0_[5] ),
        .I1(\repeated_data_cnt_reg_n_0_[0] ),
        .I2(\repeated_data_cnt_reg_n_0_[1] ),
        .I3(\repeated_data_cnt_reg_n_0_[3] ),
        .I4(\repeated_data_cnt_reg_n_0_[2] ),
        .I5(\repeated_data_cnt_reg_n_0_[4] ),
        .O(repeated_data_cnt[4]));
  LUT5 #(
    .INIT(32'h7DFFFF7D)) 
    \repeated_data_cnt[5]_i_1 
       (.I0(Q),
        .I1(\phy2rmii_rxd_d1_reg[1]_0 [1]),
        .I2(phy2rmii_rxd_d1[1]),
        .I3(phy2rmii_rxd_d1[0]),
        .I4(\phy2rmii_rxd_d1_reg[1]_0 [0]),
        .O(\repeated_data_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \repeated_data_cnt[5]_i_2 
       (.I0(\repeated_data_cnt_reg_n_0_[5] ),
        .I1(\repeated_data_cnt_reg_n_0_[0] ),
        .I2(\repeated_data_cnt_reg_n_0_[1] ),
        .I3(\repeated_data_cnt_reg_n_0_[3] ),
        .I4(\repeated_data_cnt_reg_n_0_[2] ),
        .I5(\repeated_data_cnt_reg_n_0_[4] ),
        .O(repeated_data_cnt[5]));
  FDRE \repeated_data_cnt_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(repeated_data_cnt[0]),
        .Q(\repeated_data_cnt_reg_n_0_[0] ),
        .R(\repeated_data_cnt[5]_i_1_n_0 ));
  FDRE \repeated_data_cnt_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(repeated_data_cnt[1]),
        .Q(\repeated_data_cnt_reg_n_0_[1] ),
        .R(\repeated_data_cnt[5]_i_1_n_0 ));
  FDRE \repeated_data_cnt_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(repeated_data_cnt[2]),
        .Q(\repeated_data_cnt_reg_n_0_[2] ),
        .R(\repeated_data_cnt[5]_i_1_n_0 ));
  FDRE \repeated_data_cnt_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(repeated_data_cnt[3]),
        .Q(\repeated_data_cnt_reg_n_0_[3] ),
        .R(\repeated_data_cnt[5]_i_1_n_0 ));
  FDRE \repeated_data_cnt_reg[4] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(repeated_data_cnt[4]),
        .Q(\repeated_data_cnt_reg_n_0_[4] ),
        .R(\repeated_data_cnt[5]_i_1_n_0 ));
  FDRE \repeated_data_cnt_reg[5] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(repeated_data_cnt[5]),
        .Q(\repeated_data_cnt_reg_n_0_[5] ),
        .R(\repeated_data_cnt[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    rmii2mac_col_i_1
       (.I0(rmii2Mac_crs_i),
        .I1(mac2Rmii_tx_en_d2),
        .O(Rx_cary_sense_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    rmii2mac_tx_clk_bi_i_1
       (.I0(Q),
        .O(\rst_n_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rx_cary_sense_i_i_1
       (.I0(phy2Rmii_crs_dv_d2),
        .I1(rx_cary_sense_i_i_2_n_0),
        .O(rx_cary_sense_i0));
  LUT6 #(
    .INIT(64'h00000000FFFFEEE0)) 
    rx_cary_sense_i_i_2
       (.I0(\phy2Rmii_crs_dv_sr_reg_n_0_[11] ),
        .I1(rx_100),
        .I2(\phy2Rmii_crs_dv_sr_reg_n_0_[1] ),
        .I3(rx_10),
        .I4(\phy2Rmii_crs_dv_sr_reg_n_0_[0] ),
        .I5(rx_cary_sense_i),
        .O(rx_cary_sense_i_i_2_n_0));
  FDRE rx_cary_sense_i_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rx_cary_sense_i0),
        .Q(rx_cary_sense_i),
        .R(\rst_n_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h55FC)) 
    rx_data_valid_i_i_1
       (.I0(rx_end_of_packet),
        .I1(phy2Rmii_crs_dv_d2),
        .I2(\phy2Rmii_crs_dv_sr_reg_n_0_[0] ),
        .I3(rx_data_valid_i),
        .O(rx_data_valid_i_i_1_n_0));
  FDRE rx_data_valid_i_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rx_data_valid_i_i_1_n_0),
        .Q(rx_data_valid_i),
        .R(\rst_n_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h004400F4)) 
    rx_end_of_packet_i_i_1
       (.I0(\phy2Rmii_crs_dv_sr_reg_n_0_[9] ),
        .I1(rx_10),
        .I2(rx_100),
        .I3(phy2Rmii_crs_dv_d2),
        .I4(\phy2Rmii_crs_dv_sr_reg_n_0_[0] ),
        .O(rx_end_of_packet_i0));
  FDRE rx_end_of_packet_i_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rx_end_of_packet_i0),
        .Q(rx_end_of_packet),
        .R(\rst_n_d_reg[1] ));
  LUT2 #(
    .INIT(4'h2)) 
    rxd_100_i_i_1
       (.I0(\present_state[0]_i_1_n_0 ),
        .I1(\present_state[1]_i_2_n_0 ),
        .O(rxd_100_i_i_1_n_0));
  FDRE rxd_100_i_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rxd_100_i_i_1_n_0),
        .Q(rx_100),
        .R(1'b0));
  FDRE rxd_10_i_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(\present_state[2]_i_1_n_0 ),
        .Q(rx_10),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    rxd_is_idle_i_1
       (.I0(\present_state[1]_i_2_n_0 ),
        .I1(present_state[2]),
        .I2(\present_state[2]_i_1_n_0 ),
        .I3(\present_state[0]_i_1_n_0 ),
        .O(rxd_is_idle_i_1_n_0));
  FDRE rxd_is_idle_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rxd_is_idle_i_1_n_0),
        .Q(rxd_is_idle),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    rxd_is_preamble10_i_1
       (.I0(\present_state[1]_i_2_n_0 ),
        .I1(present_state[2]),
        .I2(\present_state[0]_i_1_n_0 ),
        .O(rxd_is_preamble10_i_1_n_0));
  FDRE rxd_is_preamble10_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rxd_is_preamble10_i_1_n_0),
        .Q(rxd_is_preamble10),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \sample_rxd_cnt[0]_i_1 
       (.I0(Q),
        .I1(rxd_is_preamble10),
        .I2(rx_10),
        .I3(sample_rxd_cnt[4]),
        .O(\sample_rxd_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sample_rxd_cnt[1]_i_1 
       (.I0(sample_rxd_cnt[0]),
        .I1(Q),
        .I2(rx_10),
        .O(\sample_rxd_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sample_rxd_cnt[2]_i_1 
       (.I0(sample_rxd_cnt[1]),
        .I1(Q),
        .I2(rx_10),
        .O(\sample_rxd_cnt[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sample_rxd_cnt[3]_i_1 
       (.I0(sample_rxd_cnt[2]),
        .I1(Q),
        .I2(rx_10),
        .O(\sample_rxd_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \sample_rxd_cnt[4]_i_1 
       (.I0(rxd_is_preamble10),
        .I1(rx_10),
        .I2(sample_rxd_cnt[3]),
        .I3(Q),
        .O(\sample_rxd_cnt[4]_i_1_n_0 ));
  FDRE \sample_rxd_cnt_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\sample_rxd_cnt[0]_i_1_n_0 ),
        .Q(sample_rxd_cnt[0]),
        .R(1'b0));
  FDRE \sample_rxd_cnt_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\sample_rxd_cnt[1]_i_1_n_0 ),
        .Q(sample_rxd_cnt[1]),
        .R(1'b0));
  FDRE \sample_rxd_cnt_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\sample_rxd_cnt[2]_i_1_n_0 ),
        .Q(sample_rxd_cnt[2]),
        .R(1'b0));
  FDRE \sample_rxd_cnt_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\sample_rxd_cnt[3]_i_1_n_0 ),
        .Q(sample_rxd_cnt[3]),
        .R(1'b0));
  FDRE \sample_rxd_cnt_reg[4] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\sample_rxd_cnt[4]_i_1_n_0 ),
        .Q(sample_rxd_cnt[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    sample_rxd_i_1
       (.I0(sample_rxd_i_2_n_0),
        .I1(rx_10),
        .I2(rxd_is_preamble10),
        .I3(sample_rxd_reg_n_0),
        .O(sample_rxd_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    sample_rxd_i_2
       (.I0(sample_rxd_cnt[2]),
        .I1(sample_rxd_cnt[4]),
        .I2(sample_rxd_cnt[1]),
        .I3(sample_rxd_cnt[3]),
        .I4(sample_rxd_cnt[0]),
        .I5(rx_10),
        .O(sample_rxd_i_2_n_0));
  FDRE sample_rxd_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(sample_rxd_i_1_n_0),
        .Q(sample_rxd_reg_n_0),
        .R(\rst_n_d_reg[1] ));
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
