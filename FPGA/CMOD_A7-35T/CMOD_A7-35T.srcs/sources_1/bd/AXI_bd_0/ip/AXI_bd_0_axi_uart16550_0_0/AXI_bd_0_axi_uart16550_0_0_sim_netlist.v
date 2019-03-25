// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Mar 25 09:42:50 2019
// Host        : Hft-W-Habel running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/habel/git/UFBmod/FPGA/CMOD_A7-35T/CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ip/AXI_bd_0_axi_uart16550_0_0/AXI_bd_0_axi_uart16550_0_0_sim_netlist.v
// Design      : AXI_bd_0_axi_uart16550_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI_bd_0_axi_uart16550_0_0,axi_uart16550,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_uart16550,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module AXI_bd_0_axi_uart16550_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    freeze,
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
    baudoutn,
    ctsn,
    dcdn,
    ddis,
    dsrn,
    dtrn,
    out1n,
    out2n,
    rin,
    rtsn,
    rxrdyn,
    sin,
    sout,
    txrdyn);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ip2intc_irpt;
  input freeze;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [12:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART BAUDOUTn" *) (* x_interface_parameter = "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE" *) output baudoutn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART CTSn" *) input ctsn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DCDn" *) input dcdn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DDIS" *) output ddis;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DSRn" *) input dsrn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DTRn" *) output dtrn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART OUT1n" *) output out1n;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART OUT2n" *) output out2n;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RI" *) input rin;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RTSn" *) output rtsn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RXRDYn" *) output rxrdyn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RxD" *) input sin;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TxD" *) output sout;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TXRDYn" *) output txrdyn;

  wire baudoutn;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
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
  wire sin;
  wire sout;
  wire txrdyn;
  wire NLW_U0_xout_UNCONNECTED;

  (* C_EXTERNAL_XIN_CLK_HZ = "25000000" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_EXTERNAL_RCLK = "0" *) 
  (* C_HAS_EXTERNAL_XIN = "0" *) 
  (* C_IS_A_16550 = "0" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  AXI_bd_0_axi_uart16550_0_0_axi_uart16550 U0
       (.baudoutn(baudoutn),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rclk(1'b0),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
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
        .s_axi_wvalid(s_axi_wvalid),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn),
        .xin(1'b0),
        .xout(NLW_U0_xout_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module AXI_bd_0_axi_uart16550_0_0_address_decoder
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    s_axi_aclk,
    Q,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    Bus_RNW_reg_reg_0,
    wrReq_d1);
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input s_axi_aclk;
  input Q;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  input Bus_RNW_reg_reg_0;
  input wrReq_d1;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire Q;
  wire Wr;
  wire bus2ip_rdce_i;
  wire bus2ip_wrce_i;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire wrReq_d1;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bus2ip_rdreq_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_rdce_i));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    wrReq_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_wrce_i));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    wr_d_i_1
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(wrReq_d1),
        .O(Wr));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module AXI_bd_0_axi_uart16550_0_0_axi_lite_ipif
   (ce_out_i,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_rdata,
    \bus2ip_addr_i_reg[4] ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    bus2ip_reset_int_core,
    s_axi_arvalid,
    s_axi_aclk,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    Q,
    wrReq_d1);
  output ce_out_i;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [7:0]s_axi_rdata;
  output [2:0]\bus2ip_addr_i_reg[4] ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input bus2ip_reset_int_core;
  input s_axi_arvalid;
  input s_axi_aclk;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input [7:0]Q;
  input wrReq_d1;

  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire [7:0]Q;
  wire Wr;
  wire [2:0]\bus2ip_addr_i_reg[4] ;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ce_out_i;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wvalid;
  wire wrReq_d1;

  AXI_bd_0_axi_uart16550_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (ce_out_i),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .Q(Q),
        .Wr(Wr),
        .\bus2ip_addr_i_reg[4]_0 (\bus2ip_addr_i_reg[4] ),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .wrReq_d1(wrReq_d1));
endmodule

(* C_EXTERNAL_XIN_CLK_HZ = "25000000" *) (* C_FAMILY = "artix7" *) (* C_HAS_EXTERNAL_RCLK = "0" *) 
(* C_HAS_EXTERNAL_XIN = "0" *) (* C_IS_A_16550 = "0" *) (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) 
(* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "axi_uart16550" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module AXI_bd_0_axi_uart16550_0_0_axi_uart16550
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    freeze,
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
    baudoutn,
    ctsn,
    dcdn,
    ddis,
    dsrn,
    dtrn,
    out1n,
    out2n,
    rclk,
    rin,
    rtsn,
    rxrdyn,
    sin,
    sout,
    txrdyn,
    xin,
    xout);
  input s_axi_aclk;
  input s_axi_aresetn;
  (* sigis = "INTERRUPT" *) output ip2intc_irpt;
  input freeze;
  input [12:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output baudoutn;
  input ctsn;
  input dcdn;
  output ddis;
  input dsrn;
  output dtrn;
  output out1n;
  output out2n;
  (* sigis = "CLK" *) input rclk;
  input rin;
  output rtsn;
  output rxrdyn;
  input sin;
  output sout;
  output txrdyn;
  (* sigis = "CLK" *) input xin;
  output xout;

  wire \<const0> ;
  wire [2:0]Addr;
  wire [7:0]Dout;
  wire \IPIC_IF_I_1/wrReq_d1 ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ;
  wire Wr;
  wire baudoutn;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_reset_int_core_i_1_n_0;
  wire bus2ip_wrce_i;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sin;
  wire sout;
  wire txrdyn;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  assign xout = \<const0> ;
  AXI_bd_0_axi_uart16550_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (s_axi_arready),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (s_axi_awready),
        .Q(Dout),
        .Wr(Wr),
        .\bus2ip_addr_i_reg[4] (Addr),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .ce_out_i(\I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .wrReq_d1(\IPIC_IF_I_1/wrReq_d1 ));
  GND GND
       (.G(\<const0> ));
  AXI_bd_0_axi_uart16550_0_0_xuart XUART_I_1
       (.Q(Dout),
        .Wr(Wr),
        .\addr_d_reg[2] (Addr),
        .baudoutn(baudoutn),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .ce_out_i(\I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn),
        .wrReq_d1(\IPIC_IF_I_1/wrReq_d1 ));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_reset_int_core_i_1
       (.I0(s_axi_aresetn),
        .O(bus2ip_reset_int_core_i_1_n_0));
  FDRE bus2ip_reset_int_core_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset_int_core_i_1_n_0),
        .Q(bus2ip_reset_int_core),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ipic_if" *) 
module AXI_bd_0_axi_uart16550_0_0_ipic_if
   (wrReq_d1,
    s_axi_awready,
    s_axi_arready,
    Rd,
    bus2ip_reset_int_core,
    bus2ip_wrce_i,
    s_axi_aclk,
    bus2ip_rdce_i);
  output wrReq_d1;
  output s_axi_awready;
  output s_axi_arready;
  output Rd;
  input bus2ip_reset_int_core;
  input bus2ip_wrce_i;
  input s_axi_aclk;
  input bus2ip_rdce_i;

  wire Rd;
  wire bus2ip_rdce_i;
  wire bus2ip_rdreq_d1;
  wire bus2ip_rdreq_d2;
  wire bus2ip_rdreq_d3;
  wire bus2ip_rdreq_d4;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ip2bus_rdack;
  wire ip2bus_rdack_d1;
  wire ip2bus_wrack;
  wire ip2bus_wrack_d1;
  wire s_axi_aclk;
  wire s_axi_arready;
  wire s_axi_awready;
  wire wrReq_d1;
  wire wrReq_d2;
  wire wrReq_d3;

  FDRE IP2Bus_RdAcknowledge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_d1),
        .Q(s_axi_arready),
        .R(bus2ip_reset_int_core));
  FDRE IP2Bus_WrAcknowledge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_d1),
        .Q(s_axi_awready),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce_i),
        .Q(bus2ip_rdreq_d1),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d1),
        .Q(bus2ip_rdreq_d2),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d2),
        .Q(bus2ip_rdreq_d3),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d4_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d3),
        .Q(bus2ip_rdreq_d4),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_rdack_d1_i_1
       (.I0(bus2ip_rdreq_d3),
        .I1(bus2ip_rdreq_d4),
        .O(ip2bus_rdack));
  FDRE ip2bus_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack),
        .Q(ip2bus_rdack_d1),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_d1_i_1
       (.I0(wrReq_d2),
        .I1(wrReq_d3),
        .O(ip2bus_wrack));
  FDRE ip2bus_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack),
        .Q(ip2bus_wrack_d1),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    rd_d_i_1
       (.I0(bus2ip_rdreq_d1),
        .I1(bus2ip_rdreq_d2),
        .O(Rd));
  FDRE wrReq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wrce_i),
        .Q(wrReq_d1),
        .R(bus2ip_reset_int_core));
  FDRE wrReq_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrReq_d1),
        .Q(wrReq_d2),
        .R(bus2ip_reset_int_core));
  FDRE wrReq_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrReq_d2),
        .Q(wrReq_d3),
        .R(bus2ip_reset_int_core));
endmodule

(* ORIG_REF_NAME = "rx16550" *) 
module AXI_bd_0_axi_uart16550_0_0_rx16550
   (framing_error_i,
    break_interrupt,
    parity_error,
    p_0_in,
    \Lcr_reg[1] ,
    \d_d_reg[0] ,
    \lsr_reg[1] ,
    \dll_reg[4] ,
    \dll_reg[0] ,
    \dlm_reg[0] ,
    \dlm_reg[4] ,
    D,
    s_axi_aclk,
    rx_sin,
    Q,
    \lsr_reg[0] ,
    \lsr_reg[1]_0 ,
    lsr_reg016_out,
    \lsr_reg[0]_0 ,
    bus2ip_reset_int_core,
    \lsr_reg[1]_1 ,
    \lsr_reg[1]_2 ,
    baudoutN_int_i,
    clockDiv,
    framing_error_flag_reg_0,
    mcr4_d,
    \Dout_reg[7] ,
    \Dout_reg[7]_0 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[6] ,
    \Dout_reg[6]_0 ,
    lsr_reg,
    \Dout_reg[6]_1 ,
    \Dout_reg[5] ,
    p_0_in31_in,
    \Dout_reg[4] ,
    \Dout_reg[4]_0 ,
    \Dout_reg[4]_1 ,
    \Dout_reg[3] ,
    \Dout_reg[3]_0 ,
    \Dout_reg[2] ,
    \Dout_reg[2]_0 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[2]_1 ,
    \Dout_reg[2]_2 ,
    \Dout_reg[1] ,
    \Dout_reg[1]_0 ,
    iir,
    \Dout_reg[1]_1 ,
    \Dout_reg[1]_2 ,
    \Dout_reg[0] ,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[6]_2 ,
    L,
    \Dout_reg[3]_2 );
  output framing_error_i;
  output break_interrupt;
  output parity_error;
  output p_0_in;
  output \Lcr_reg[1] ;
  output \d_d_reg[0] ;
  output \lsr_reg[1] ;
  output \dll_reg[4] ;
  output \dll_reg[0] ;
  output \dlm_reg[0] ;
  output \dlm_reg[4] ;
  output [7:0]D;
  input s_axi_aclk;
  input rx_sin;
  input [6:0]Q;
  input \lsr_reg[0] ;
  input [1:0]\lsr_reg[1]_0 ;
  input lsr_reg016_out;
  input \lsr_reg[0]_0 ;
  input bus2ip_reset_int_core;
  input \lsr_reg[1]_1 ;
  input \lsr_reg[1]_2 ;
  input baudoutN_int_i;
  input [15:0]clockDiv;
  input [0:0]framing_error_flag_reg_0;
  input mcr4_d;
  input \Dout_reg[7] ;
  input \Dout_reg[7]_0 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[6] ;
  input \Dout_reg[6]_0 ;
  input lsr_reg;
  input \Dout_reg[6]_1 ;
  input \Dout_reg[5] ;
  input p_0_in31_in;
  input \Dout_reg[4] ;
  input \Dout_reg[4]_0 ;
  input \Dout_reg[4]_1 ;
  input \Dout_reg[3] ;
  input \Dout_reg[3]_0 ;
  input \Dout_reg[2] ;
  input \Dout_reg[2]_0 ;
  input [2:0]\Dout_reg[3]_1 ;
  input \Dout_reg[2]_1 ;
  input \Dout_reg[2]_2 ;
  input \Dout_reg[1] ;
  input \Dout_reg[1]_0 ;
  input [0:0]iir;
  input \Dout_reg[1]_1 ;
  input \Dout_reg[1]_2 ;
  input \Dout_reg[0] ;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[0]_1 ;
  input \Dout_reg[6]_2 ;
  input [0:3]L;
  input \Dout_reg[3]_2 ;

  wire [7:0]D;
  wire \Dout[0]_i_2_n_0 ;
  wire \Dout[1]_i_3_n_0 ;
  wire \Dout[2]_i_2_n_0 ;
  wire \Dout[3]_i_2_n_0 ;
  wire \Dout[5]_i_3_n_0 ;
  wire \Dout[6]_i_5_n_0 ;
  wire \Dout_reg[0] ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[1] ;
  wire \Dout_reg[1]_0 ;
  wire \Dout_reg[1]_1 ;
  wire \Dout_reg[1]_2 ;
  wire \Dout_reg[2] ;
  wire \Dout_reg[2]_0 ;
  wire \Dout_reg[2]_1 ;
  wire \Dout_reg[2]_2 ;
  wire \Dout_reg[3] ;
  wire \Dout_reg[3]_0 ;
  wire [2:0]\Dout_reg[3]_1 ;
  wire \Dout_reg[3]_2 ;
  wire \Dout_reg[4] ;
  wire \Dout_reg[4]_0 ;
  wire \Dout_reg[4]_1 ;
  wire \Dout_reg[5] ;
  wire \Dout_reg[6] ;
  wire \Dout_reg[6]_0 ;
  wire \Dout_reg[6]_1 ;
  wire \Dout_reg[6]_2 ;
  wire \Dout_reg[7] ;
  wire \Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \FSM_sequential_receive_state[0]_i_2_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_5_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_6_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_7_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_8_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_9_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_2_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_5_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_4_n_0 ;
  wire [0:3]L;
  wire \Lcr_reg[1] ;
  wire [6:0]Q;
  wire [7:0]Rbr;
  wire baudoutN_int_i;
  wire break_interrupt;
  wire break_interrupt_error_d;
  wire break_interrupt_error_d_i_10_n_0;
  wire break_interrupt_error_d_i_1_n_0;
  wire break_interrupt_error_d_i_3_n_0;
  wire break_interrupt_error_d_i_4_n_0;
  wire break_interrupt_error_d_i_5_n_0;
  wire break_interrupt_error_d_i_6_n_0;
  wire break_interrupt_error_d_i_7_n_0;
  wire break_interrupt_error_d_i_8_n_0;
  wire break_interrupt_error_d_i_9_n_0;
  wire break_interrupt_error_d_reg_n_0;
  wire break_interrupt_flag;
  wire break_interrupt_flag_i_1_n_0;
  wire break_interrupt_i0;
  wire bus2ip_reset_int_core;
  wire character_received_com;
  wire character_received_d;
  wire character_received_flag;
  wire character_received_flag0;
  wire character_received_rclk;
  wire clk1x;
  wire clk1x0;
  wire clk1x_d;
  wire clk1x_i_3_n_0;
  wire clk2x;
  wire clk2x_i_1__0_n_0;
  wire clk_div_en_i_1_n_0;
  wire clk_div_en_i_2_n_0;
  wire clk_div_en_i_3_n_0;
  wire clk_div_en_reg_n_0;
  wire [3:0]clkdiv;
  wire \clkdiv[2]_i_2_n_0 ;
  wire \clkdiv[2]_i_3_n_0 ;
  wire \clkdiv[3]_i_10_n_0 ;
  wire \clkdiv[3]_i_1_n_0 ;
  wire \clkdiv[3]_i_3_n_0 ;
  wire \clkdiv[3]_i_4_n_0 ;
  wire \clkdiv[3]_i_5_n_0 ;
  wire \clkdiv[3]_i_6_n_0 ;
  wire \clkdiv[3]_i_7_n_0 ;
  wire \clkdiv[3]_i_8_n_0 ;
  wire \clkdiv[3]_i_9_n_0 ;
  wire \clkdiv_reg_n_0_[0] ;
  wire \clkdiv_reg_n_0_[1] ;
  wire \clkdiv_reg_n_0_[2] ;
  wire \clkdiv_reg_n_0_[3] ;
  wire [15:0]clockDiv;
  wire clock_1x_early;
  wire clock_1x_early_i_1_n_0;
  wire \d_d_reg[0] ;
  wire data_ready;
  wire \dll_reg[0] ;
  wire \dll_reg[4] ;
  wire \dlm_reg[0] ;
  wire \dlm_reg[4] ;
  wire framing_error_d;
  wire framing_error_d_i_1_n_0;
  wire framing_error_d_i_2_n_0;
  wire framing_error_d_i_3_n_0;
  wire framing_error_flag;
  wire framing_error_flag0;
  wire framing_error_flag_i_1_n_0;
  wire [0:0]framing_error_flag_reg_0;
  wire framing_error_i;
  wire framing_error_i0;
  wire got_start_bit_com;
  wire got_start_bit_d;
  wire have_bi_in_fifo_n_i_i_1_n_0;
  wire have_bi_in_fifo_n_i_reg_n_0;
  wire [0:0]iir;
  wire load_rbr_com;
  wire load_rbr_d;
  wire load_rbr_d_i_1_n_0;
  wire lsr_reg;
  wire lsr_reg016_out;
  wire \lsr_reg[0] ;
  wire \lsr_reg[0]_0 ;
  wire \lsr_reg[1] ;
  wire [1:0]\lsr_reg[1]_0 ;
  wire \lsr_reg[1]_1 ;
  wire \lsr_reg[1]_2 ;
  wire mcr4_d;
  wire [3:0]next_state;
  wire p_0_in;
  wire p_0_in31_in;
  wire parity_error;
  wire parity_error_d;
  wire parity_error_d0;
  wire parity_error_d_i_10_n_0;
  wire parity_error_d_i_11_n_0;
  wire parity_error_d_i_2_n_0;
  wire parity_error_d_i_3_n_0;
  wire parity_error_d_i_4_n_0;
  wire parity_error_d_i_5_n_0;
  wire parity_error_d_i_6_n_0;
  wire parity_error_d_i_7_n_0;
  wire parity_error_d_i_8_n_0;
  wire parity_error_d_i_9_n_0;
  wire parity_error_i0;
  wire parity_error_latch;
  wire parity_error_latch_i_1_n_0;
  wire [7:0]rbr_d;
  wire rbr_d0;
  wire \rbr_d[0]_i_1_n_0 ;
  wire \rbr_d[1]_i_1_n_0 ;
  wire \rbr_d[2]_i_1_n_0 ;
  wire \rbr_d[3]_i_1_n_0 ;
  wire \rbr_d[4]_i_1_n_0 ;
  wire \rbr_d[5]_i_1_n_0 ;
  wire \rbr_d[6]_i_1_n_0 ;
  wire \rbr_d[7]_i_2_n_0 ;
  wire [3:0]receive_state;
  wire resynch_clkdiv;
  wire resynch_clkdiv_d;
  wire resynch_clkdiv_d_i_2_n_0;
  wire resynch_clkdiv_d_i_3_n_0;
  wire resynch_clkdiv_d_i_4_n_0;
  wire resynch_clkdiv_d_i_5_n_0;
  wire resynch_clkdiv_frame_d;
  wire resynch_clkdiv_frame_d_i_1_n_0;
  wire resynch_clkdiv_frame_d_i_2_n_0;
  wire resynch_clkdiv_startbit;
  wire resynch_clkdiv_startbit_d;
  wire resynch_clkdiv_startbit_d_i_2_n_0;
  wire [7:0]rsr;
  wire rx_parity_com;
  wire rx_rst;
  wire rx_sin;
  wire s_axi_aclk;
  wire sin_d1;
  wire sin_d10;
  wire sin_d2;
  wire sin_d3;
  wire sin_d4;
  wire sin_d5;
  wire sin_d6;
  wire sin_d7;
  wire sin_d8;
  wire sin_d9;
  wire \tx16550_1/clk1x1 ;

  FDRE Data_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(character_received_flag),
        .Q(data_ready),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \Dout[0]_i_1 
       (.I0(\Dout[0]_i_2_n_0 ),
        .I1(\Dout_reg[0] ),
        .I2(\Dout_reg[2]_0 ),
        .I3(\Dout_reg[3]_1 [0]),
        .I4(\Dout_reg[0]_0 ),
        .I5(\Dout_reg[0]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0008000300080000)) 
    \Dout[0]_i_2 
       (.I0(clockDiv[8]),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[0]),
        .I5(Rbr[0]),
        .O(\Dout[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \Dout[1]_i_1 
       (.I0(\Dout_reg[1] ),
        .I1(\Dout[1]_i_3_n_0 ),
        .I2(\Dout_reg[1]_0 ),
        .I3(iir),
        .I4(\Dout_reg[1]_1 ),
        .I5(\Dout_reg[1]_2 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0008000300080000)) 
    \Dout[1]_i_3 
       (.I0(clockDiv[9]),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[0]),
        .I5(Rbr[1]),
        .O(\Dout[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \Dout[2]_i_1 
       (.I0(\Dout[2]_i_2_n_0 ),
        .I1(\Dout_reg[2] ),
        .I2(\Dout_reg[2]_0 ),
        .I3(\Dout_reg[3]_1 [1]),
        .I4(\Dout_reg[2]_1 ),
        .I5(\Dout_reg[2]_2 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0002000300020000)) 
    \Dout[2]_i_2 
       (.I0(clockDiv[2]),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[0]),
        .I5(Rbr[2]),
        .O(\Dout[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \Dout[3]_i_1 
       (.I0(\Dout[3]_i_2_n_0 ),
        .I1(\Dout_reg[4]_0 ),
        .I2(clockDiv[11]),
        .I3(\Dout_reg[3] ),
        .I4(\Dout_reg[3]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h22FF22F2222222F2)) 
    \Dout[3]_i_2 
       (.I0(clockDiv[3]),
        .I1(\Dout_reg[6]_2 ),
        .I2(Rbr[3]),
        .I3(\Dout_reg[3]_2 ),
        .I4(L[3]),
        .I5(\Dout_reg[3]_1 [2]),
        .O(\Dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \Dout[4]_i_1 
       (.I0(\Dout_reg[4] ),
        .I1(\Dout_reg[7]_1 ),
        .I2(Rbr[4]),
        .I3(\Dout_reg[4]_0 ),
        .I4(clockDiv[12]),
        .I5(\Dout_reg[4]_1 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \Dout[5]_i_1 
       (.I0(\Dout_reg[5] ),
        .I1(\Dout_reg[6]_0 ),
        .I2(p_0_in31_in),
        .I3(\Dout_reg[6]_1 ),
        .I4(Q[5]),
        .I5(\Dout[5]_i_3_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[5]_i_3 
       (.I0(\Dout_reg[6]_2 ),
        .I1(clockDiv[5]),
        .I2(Rbr[5]),
        .I3(\Dout_reg[7]_1 ),
        .I4(clockDiv[13]),
        .I5(\Dout_reg[4]_0 ),
        .O(\Dout[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \Dout[6]_i_1 
       (.I0(\Dout_reg[6] ),
        .I1(\Dout_reg[6]_0 ),
        .I2(lsr_reg),
        .I3(\Dout_reg[6]_1 ),
        .I4(Q[6]),
        .I5(\Dout[6]_i_5_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[6]_i_5 
       (.I0(\Dout_reg[4]_0 ),
        .I1(clockDiv[14]),
        .I2(clockDiv[6]),
        .I3(\Dout_reg[6]_2 ),
        .I4(Rbr[6]),
        .I5(\Dout_reg[7]_1 ),
        .O(\Dout[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \Dout[7]_i_2 
       (.I0(\Dout_reg[7] ),
        .I1(\Dout_reg[7]_0 ),
        .I2(Rbr[7]),
        .I3(\Dout_reg[7]_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \FSM_sequential_receive_state[0]_i_1 
       (.I0(\FSM_sequential_receive_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_receive_state[3]_i_3_n_0 ),
        .I2(\FSM_sequential_receive_state[0]_i_3_n_0 ),
        .I3(\FSM_sequential_receive_state[0]_i_4_n_0 ),
        .I4(\FSM_sequential_receive_state[0]_i_5_n_0 ),
        .I5(\FSM_sequential_receive_state[0]_i_6_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hE0FFD0F0E0FF0FFF)) 
    \FSM_sequential_receive_state[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(receive_state[0]),
        .I3(receive_state[3]),
        .I4(receive_state[2]),
        .I5(receive_state[1]),
        .O(\FSM_sequential_receive_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020A0A000200020)) 
    \FSM_sequential_receive_state[0]_i_3 
       (.I0(Q[3]),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(\FSM_sequential_receive_state[3]_i_3_n_0 ),
        .I4(\FSM_sequential_receive_state[0]_i_7_n_0 ),
        .I5(\FSM_sequential_receive_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_receive_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0300A2A20000A2A2)) 
    \FSM_sequential_receive_state[0]_i_4 
       (.I0(\FSM_sequential_receive_state[0]_i_8_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(receive_state[2]),
        .I5(receive_state[3]),
        .O(\FSM_sequential_receive_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h08080822)) 
    \FSM_sequential_receive_state[0]_i_5 
       (.I0(sin_d2),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(receive_state[1]),
        .I4(receive_state[2]),
        .O(\FSM_sequential_receive_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005DDD)) 
    \FSM_sequential_receive_state[0]_i_6 
       (.I0(receive_state[3]),
        .I1(Q[2]),
        .I2(\FSM_sequential_receive_state[0]_i_9_n_0 ),
        .I3(receive_state[1]),
        .I4(receive_state[0]),
        .I5(receive_state[2]),
        .O(\FSM_sequential_receive_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_receive_state[0]_i_7 
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .O(\FSM_sequential_receive_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_receive_state[0]_i_8 
       (.I0(sin_d2),
        .I1(receive_state[0]),
        .O(\FSM_sequential_receive_state[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_receive_state[0]_i_9 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_sequential_receive_state[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFF01)) 
    \FSM_sequential_receive_state[1]_i_1 
       (.I0(\FSM_sequential_receive_state[1]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(sin_d2),
        .I3(\FSM_sequential_receive_state[1]_i_3_n_0 ),
        .I4(\FSM_sequential_receive_state[1]_i_4_n_0 ),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hAAFFAAFF8CCCBBFF)) 
    \FSM_sequential_receive_state[1]_i_2 
       (.I0(Q[3]),
        .I1(receive_state[1]),
        .I2(\FSM_sequential_receive_state[1]_i_5_n_0 ),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .I5(receive_state[2]),
        .O(\FSM_sequential_receive_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0000000C0000AF0)) 
    \FSM_sequential_receive_state[1]_i_3 
       (.I0(Q[2]),
        .I1(\Lcr_reg[1] ),
        .I2(receive_state[2]),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .I5(receive_state[1]),
        .O(\FSM_sequential_receive_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000450000550000)) 
    \FSM_sequential_receive_state[1]_i_4 
       (.I0(receive_state[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(receive_state[1]),
        .I4(receive_state[0]),
        .I5(receive_state[3]),
        .O(\FSM_sequential_receive_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_receive_state[1]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_sequential_receive_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0D00FFF0000F0FF0)) 
    \FSM_sequential_receive_state[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(receive_state[2]),
        .I3(receive_state[1]),
        .I4(receive_state[3]),
        .I5(receive_state[0]),
        .O(next_state[2]));
  LUT4 #(
    .INIT(16'hBEFF)) 
    \FSM_sequential_receive_state[3]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(mcr4_d),
        .I2(framing_error_flag_reg_0),
        .I3(have_bi_in_fifo_n_i_reg_n_0),
        .O(parity_error_d0));
  LUT6 #(
    .INIT(64'h7700770775007000)) 
    \FSM_sequential_receive_state[3]_i_2 
       (.I0(\FSM_sequential_receive_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_receive_state[3]_i_4_n_0 ),
        .I2(receive_state[2]),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .I5(receive_state[1]),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_receive_state[3]_i_3 
       (.I0(Q[2]),
        .I1(sin_d2),
        .O(\FSM_sequential_receive_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0505055500500400)) 
    \FSM_sequential_receive_state[3]_i_4 
       (.I0(Q[3]),
        .I1(receive_state[3]),
        .I2(receive_state[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(receive_state[2]),
        .O(\FSM_sequential_receive_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDSE \FSM_sequential_receive_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[0]),
        .Q(receive_state[0]),
        .S(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDRE \FSM_sequential_receive_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[1]),
        .Q(receive_state[1]),
        .R(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDSE \FSM_sequential_receive_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[2]),
        .Q(receive_state[2]),
        .S(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDRE \FSM_sequential_receive_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[3]),
        .Q(receive_state[3]),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_transmit_state[3]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\Lcr_reg[1] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_1 
       (.I0(baudoutN_int_i),
        .I1(\dll_reg[4] ),
        .I2(\dll_reg[0] ),
        .I3(\dlm_reg[0] ),
        .I4(\dlm_reg[4] ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_3 
       (.I0(clockDiv[4]),
        .I1(clockDiv[7]),
        .I2(clockDiv[5]),
        .I3(clockDiv[6]),
        .O(\dll_reg[4] ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_4 
       (.I0(clockDiv[0]),
        .I1(clockDiv[3]),
        .I2(clockDiv[1]),
        .I3(clockDiv[2]),
        .O(\dll_reg[0] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_5 
       (.I0(clockDiv[8]),
        .I1(clockDiv[11]),
        .I2(clockDiv[9]),
        .I3(clockDiv[10]),
        .O(\dlm_reg[0] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_6 
       (.I0(clockDiv[12]),
        .I1(clockDiv[15]),
        .I2(clockDiv[13]),
        .I3(clockDiv[14]),
        .O(\dlm_reg[4] ));
  FDRE \Rbr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rbr_d[0]),
        .Q(Rbr[0]),
        .R(rx_rst));
  FDRE \Rbr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rbr_d[1]),
        .Q(Rbr[1]),
        .R(rx_rst));
  FDRE \Rbr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rbr_d[2]),
        .Q(Rbr[2]),
        .R(rx_rst));
  FDRE \Rbr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rbr_d[3]),
        .Q(Rbr[3]),
        .R(rx_rst));
  FDRE \Rbr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rbr_d[4]),
        .Q(Rbr[4]),
        .R(rx_rst));
  FDRE \Rbr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rbr_d[5]),
        .Q(Rbr[5]),
        .R(rx_rst));
  FDRE \Rbr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rbr_d[6]),
        .Q(Rbr[6]),
        .R(rx_rst));
  FDRE \Rbr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rbr_d[7]),
        .Q(Rbr[7]),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h00000000EAE2EAEA)) 
    break_interrupt_error_d_i_1
       (.I0(break_interrupt_error_d_reg_n_0),
        .I1(break_interrupt_error_d),
        .I2(break_interrupt_error_d_i_3_n_0),
        .I3(break_interrupt_error_d_i_4_n_0),
        .I4(break_interrupt_error_d_i_5_n_0),
        .I5(parity_error_d0),
        .O(break_interrupt_error_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h0CCC000C0CE00CE0)) 
    break_interrupt_error_d_i_10
       (.I0(break_interrupt_error_d_reg_n_0),
        .I1(sin_d2),
        .I2(receive_state[2]),
        .I3(receive_state[1]),
        .I4(receive_state[3]),
        .I5(receive_state[0]),
        .O(break_interrupt_error_d_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AAAAAA)) 
    break_interrupt_error_d_i_2
       (.I0(clk1x),
        .I1(break_interrupt_error_d_i_6_n_0),
        .I2(Q[3]),
        .I3(break_interrupt_error_d_i_7_n_0),
        .I4(break_interrupt_error_d_i_8_n_0),
        .I5(break_interrupt_error_d_i_9_n_0),
        .O(break_interrupt_error_d));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007500)) 
    break_interrupt_error_d_i_3
       (.I0(receive_state[3]),
        .I1(receive_state[2]),
        .I2(Q[2]),
        .I3(sin_d2),
        .I4(receive_state[0]),
        .I5(break_interrupt_error_d_i_10_n_0),
        .O(break_interrupt_error_d_i_3_n_0));
  LUT6 #(
    .INIT(64'h08050A055F555755)) 
    break_interrupt_error_d_i_4
       (.I0(receive_state[3]),
        .I1(Q[0]),
        .I2(receive_state[2]),
        .I3(receive_state[1]),
        .I4(Q[1]),
        .I5(receive_state[0]),
        .O(break_interrupt_error_d_i_4_n_0));
  LUT6 #(
    .INIT(64'h889988BFFFFFFFFF)) 
    break_interrupt_error_d_i_5
       (.I0(receive_state[1]),
        .I1(receive_state[2]),
        .I2(\Lcr_reg[1] ),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(receive_state[3]),
        .O(break_interrupt_error_d_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    break_interrupt_error_d_i_6
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .O(break_interrupt_error_d_i_6_n_0));
  LUT6 #(
    .INIT(64'hFF3303BBFF3BF3BB)) 
    break_interrupt_error_d_i_7
       (.I0(Q[2]),
        .I1(receive_state[0]),
        .I2(Q[1]),
        .I3(receive_state[1]),
        .I4(receive_state[2]),
        .I5(Q[0]),
        .O(break_interrupt_error_d_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    break_interrupt_error_d_i_8
       (.I0(receive_state[0]),
        .I1(receive_state[2]),
        .I2(Q[0]),
        .I3(receive_state[1]),
        .O(break_interrupt_error_d_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h4FCF4FFF)) 
    break_interrupt_error_d_i_9
       (.I0(receive_state[1]),
        .I1(sin_d2),
        .I2(receive_state[3]),
        .I3(receive_state[2]),
        .I4(Q[2]),
        .O(break_interrupt_error_d_i_9_n_0));
  FDRE break_interrupt_error_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_error_d_i_1_n_0),
        .Q(break_interrupt_error_d_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    break_interrupt_flag_i_1
       (.I0(p_0_in),
        .I1(break_interrupt_error_d_reg_n_0),
        .I2(break_interrupt_flag),
        .O(break_interrupt_flag_i_1_n_0));
  FDRE break_interrupt_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_flag_i_1_n_0),
        .Q(break_interrupt_flag),
        .R(framing_error_flag0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    break_interrupt_i_i_1
       (.I0(character_received_flag),
        .I1(break_interrupt_flag),
        .O(break_interrupt_i0));
  FDRE break_interrupt_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_i0),
        .Q(break_interrupt),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00F00100)) 
    character_received_d_i_1
       (.I0(receive_state[2]),
        .I1(Q[2]),
        .I2(receive_state[1]),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .O(character_received_com));
  FDRE character_received_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(character_received_com),
        .Q(character_received_d),
        .R(parity_error_d0));
  LUT4 #(
    .INIT(16'hFFBE)) 
    character_received_flag_i_1
       (.I0(character_received_rclk),
        .I1(framing_error_flag_reg_0),
        .I2(mcr4_d),
        .I3(bus2ip_reset_int_core),
        .O(framing_error_flag0));
  LUT2 #(
    .INIT(4'h2)) 
    character_received_flag_i_2
       (.I0(character_received_d),
        .I1(p_0_in),
        .O(character_received_flag0));
  FDRE character_received_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(character_received_flag0),
        .Q(character_received_flag),
        .R(framing_error_flag0));
  FDRE character_received_rclk_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(character_received_d),
        .Q(character_received_rclk),
        .R(rx_rst));
  FDRE clk1x_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x),
        .Q(clk1x_d),
        .R(rx_rst));
  LUT3 #(
    .INIT(8'hBE)) 
    clk1x_i_1
       (.I0(bus2ip_reset_int_core),
        .I1(mcr4_d),
        .I2(framing_error_flag_reg_0),
        .O(rx_rst));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    clk1x_i_2
       (.I0(clk1x_i_3_n_0),
        .I1(p_0_in),
        .I2(\clkdiv_reg_n_0_[0] ),
        .I3(\clkdiv_reg_n_0_[1] ),
        .I4(\clkdiv_reg_n_0_[2] ),
        .I5(\clkdiv_reg_n_0_[3] ),
        .O(clk1x0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5D0FFFF)) 
    clk1x_i_3
       (.I0(receive_state[2]),
        .I1(receive_state[0]),
        .I2(resynch_clkdiv_d_i_5_n_0),
        .I3(Q[2]),
        .I4(got_start_bit_d),
        .I5(\clkdiv[3]_i_7_n_0 ),
        .O(clk1x_i_3_n_0));
  FDRE clk1x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x0),
        .Q(clk1x),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    clk2x_i_1__0
       (.I0(p_0_in),
        .I1(\clkdiv_reg_n_0_[2] ),
        .I2(\clkdiv_reg_n_0_[0] ),
        .I3(\clkdiv_reg_n_0_[1] ),
        .I4(\clkdiv_reg_n_0_[3] ),
        .O(clk2x_i_1__0_n_0));
  FDRE clk2x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2x_i_1__0_n_0),
        .Q(clk2x),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h4040404000000040)) 
    clk_div_en_i_1
       (.I0(rx_rst),
        .I1(have_bi_in_fifo_n_i_reg_n_0),
        .I2(clk_div_en_i_2_n_0),
        .I3(clk_div_en_i_3_n_0),
        .I4(p_0_in),
        .I5(clk_div_en_reg_n_0),
        .O(clk_div_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    clk_div_en_i_2
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .I2(clk1x_d),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .O(clk_div_en_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    clk_div_en_i_3
       (.I0(sin_d1),
        .I1(sin_d2),
        .I2(got_start_bit_d),
        .O(clk_div_en_i_3_n_0));
  FDRE clk_div_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_div_en_i_1_n_0),
        .Q(clk_div_en_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hABABABAA)) 
    \clkdiv[0]_i_1 
       (.I0(\clkdiv[2]_i_2_n_0 ),
        .I1(\clkdiv_reg_n_0_[0] ),
        .I2(\clkdiv[3]_i_3_n_0 ),
        .I3(clk1x_i_3_n_0),
        .I4(p_0_in),
        .O(clkdiv[0]));
  LUT6 #(
    .INIT(64'hABBAABBAABBAAAAA)) 
    \clkdiv[1]_i_1 
       (.I0(\clkdiv[2]_i_2_n_0 ),
        .I1(\clkdiv[3]_i_3_n_0 ),
        .I2(\clkdiv_reg_n_0_[0] ),
        .I3(\clkdiv_reg_n_0_[1] ),
        .I4(clk1x_i_3_n_0),
        .I5(p_0_in),
        .O(clkdiv[1]));
  LUT6 #(
    .INIT(64'hAAAEAAAEAAAEAAAA)) 
    \clkdiv[2]_i_1 
       (.I0(\clkdiv[2]_i_2_n_0 ),
        .I1(clk_div_en_reg_n_0),
        .I2(rx_rst),
        .I3(\clkdiv[2]_i_3_n_0 ),
        .I4(clk1x_i_3_n_0),
        .I5(p_0_in),
        .O(clkdiv[2]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \clkdiv[2]_i_2 
       (.I0(clk_div_en_reg_n_0),
        .I1(rx_rst),
        .I2(clk2x),
        .I3(\Lcr_reg[1] ),
        .I4(\clkdiv[3]_i_5_n_0 ),
        .I5(\clkdiv[3]_i_4_n_0 ),
        .O(\clkdiv[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555554111)) 
    \clkdiv[2]_i_3 
       (.I0(resynch_clkdiv_d),
        .I1(\clkdiv_reg_n_0_[2] ),
        .I2(\clkdiv_reg_n_0_[0] ),
        .I3(\clkdiv_reg_n_0_[1] ),
        .I4(resynch_clkdiv_startbit_d),
        .I5(resynch_clkdiv_frame_d),
        .O(\clkdiv[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAFFFFFFFF)) 
    \clkdiv[3]_i_1 
       (.I0(\clkdiv[3]_i_3_n_0 ),
        .I1(\clkdiv[3]_i_4_n_0 ),
        .I2(\clkdiv[3]_i_5_n_0 ),
        .I3(\Lcr_reg[1] ),
        .I4(clk2x),
        .I5(p_0_in),
        .O(\clkdiv[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \clkdiv[3]_i_10 
       (.I0(\clkdiv_reg_n_0_[2] ),
        .I1(\clkdiv_reg_n_0_[0] ),
        .I2(\clkdiv_reg_n_0_[1] ),
        .O(\clkdiv[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8AAA8AAAA)) 
    \clkdiv[3]_i_2 
       (.I0(\clkdiv[3]_i_6_n_0 ),
        .I1(\clkdiv[3]_i_7_n_0 ),
        .I2(\clkdiv[3]_i_8_n_0 ),
        .I3(p_0_in),
        .I4(got_start_bit_d),
        .I5(\clkdiv[3]_i_4_n_0 ),
        .O(clkdiv[3]));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \clkdiv[3]_i_3 
       (.I0(resynch_clkdiv_frame_d),
        .I1(resynch_clkdiv_startbit_d),
        .I2(rx_rst),
        .I3(clk_div_en_reg_n_0),
        .I4(resynch_clkdiv_d),
        .O(\clkdiv[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clkdiv[3]_i_4 
       (.I0(Q[2]),
        .I1(receive_state[2]),
        .O(\clkdiv[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \clkdiv[3]_i_5 
       (.I0(receive_state[0]),
        .I1(receive_state[3]),
        .I2(receive_state[1]),
        .O(\clkdiv[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110110)) 
    \clkdiv[3]_i_6 
       (.I0(\clkdiv[3]_i_9_n_0 ),
        .I1(resynch_clkdiv_d),
        .I2(\clkdiv_reg_n_0_[3] ),
        .I3(\clkdiv[3]_i_10_n_0 ),
        .I4(resynch_clkdiv_startbit_d),
        .I5(resynch_clkdiv_frame_d),
        .O(\clkdiv[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFFFFFFFFFB55)) 
    \clkdiv[3]_i_7 
       (.I0(receive_state[3]),
        .I1(sin_d10),
        .I2(sin_d9),
        .I3(receive_state[2]),
        .I4(receive_state[0]),
        .I5(receive_state[1]),
        .O(\clkdiv[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FDFF0000DD00)) 
    \clkdiv[3]_i_8 
       (.I0(clk2x),
        .I1(\Lcr_reg[1] ),
        .I2(receive_state[0]),
        .I3(Q[2]),
        .I4(receive_state[2]),
        .I5(resynch_clkdiv_d_i_5_n_0),
        .O(\clkdiv[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF6FF)) 
    \clkdiv[3]_i_9 
       (.I0(framing_error_flag_reg_0),
        .I1(mcr4_d),
        .I2(bus2ip_reset_int_core),
        .I3(clk_div_en_reg_n_0),
        .O(\clkdiv[3]_i_9_n_0 ));
  FDRE \clkdiv_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[0]),
        .Q(\clkdiv_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \clkdiv_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[1]),
        .Q(\clkdiv_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \clkdiv_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[2]),
        .Q(\clkdiv_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \clkdiv_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[3]),
        .Q(\clkdiv_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    clock_1x_early_i_1
       (.I0(p_0_in),
        .I1(\clkdiv_reg_n_0_[0] ),
        .I2(\clkdiv_reg_n_0_[1] ),
        .I3(\clkdiv_reg_n_0_[3] ),
        .I4(\clkdiv_reg_n_0_[2] ),
        .O(clock_1x_early_i_1_n_0));
  FDRE clock_1x_early_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clock_1x_early_i_1_n_0),
        .Q(clock_1x_early),
        .R(rx_rst));
  LUT5 #(
    .INIT(32'h44454444)) 
    framing_error_d_i_1
       (.I0(sin_d2),
        .I1(framing_error_d_i_2_n_0),
        .I2(framing_error_d_i_3_n_0),
        .I3(Q[3]),
        .I4(receive_state[3]),
        .O(framing_error_d_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    framing_error_d_i_2
       (.I0(receive_state[3]),
        .I1(receive_state[1]),
        .I2(receive_state[0]),
        .I3(receive_state[2]),
        .O(framing_error_d_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFDF9ADCD)) 
    framing_error_d_i_3
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .I2(receive_state[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(framing_error_d_i_3_n_0));
  FDRE framing_error_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(framing_error_d_i_1_n_0),
        .Q(framing_error_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    framing_error_flag_i_1
       (.I0(p_0_in),
        .I1(framing_error_d),
        .I2(framing_error_flag),
        .O(framing_error_flag_i_1_n_0));
  FDRE framing_error_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(framing_error_flag_i_1_n_0),
        .Q(framing_error_flag),
        .R(framing_error_flag0));
  LUT2 #(
    .INIT(4'h8)) 
    framing_error_i_i_1
       (.I0(character_received_flag),
        .I1(framing_error_flag),
        .O(framing_error_i0));
  FDRE framing_error_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(framing_error_i0),
        .Q(framing_error_i),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h1A1ABFBF5F5FFFF7)) 
    got_start_bit_d_i_1
       (.I0(receive_state[3]),
        .I1(sin_d2),
        .I2(receive_state[1]),
        .I3(Q[2]),
        .I4(receive_state[2]),
        .I5(receive_state[0]),
        .O(got_start_bit_com));
  FDRE got_start_bit_d_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(got_start_bit_com),
        .Q(got_start_bit_d),
        .R(rx_rst));
  LUT5 #(
    .INIT(32'hFFFFEAEE)) 
    have_bi_in_fifo_n_i_i_1
       (.I0(rx_rst),
        .I1(have_bi_in_fifo_n_i_reg_n_0),
        .I2(break_interrupt_flag),
        .I3(character_received_flag),
        .I4(sin_d2),
        .O(have_bi_in_fifo_n_i_i_1_n_0));
  FDRE have_bi_in_fifo_n_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(have_bi_in_fifo_n_i_i_1_n_0),
        .Q(have_bi_in_fifo_n_i_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004540)) 
    load_rbr_d_i_1
       (.I0(rx_rst),
        .I1(load_rbr_com),
        .I2(clk2x),
        .I3(load_rbr_d),
        .I4(resynch_clkdiv_d),
        .O(load_rbr_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h010020000F004000)) 
    load_rbr_d_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(receive_state[1]),
        .I3(receive_state[3]),
        .I4(receive_state[2]),
        .I5(receive_state[0]),
        .O(load_rbr_com));
  FDRE load_rbr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(load_rbr_d_i_1_n_0),
        .Q(load_rbr_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AA8AAA80)) 
    \lsr[0]_i_1 
       (.I0(\lsr_reg[0] ),
        .I1(\lsr_reg[1]_0 [0]),
        .I2(lsr_reg016_out),
        .I3(data_ready),
        .I4(\lsr_reg[0]_0 ),
        .I5(bus2ip_reset_int_core),
        .O(\d_d_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000FFEAC0EA)) 
    \lsr[1]_i_1 
       (.I0(\lsr_reg[1]_1 ),
        .I1(\lsr_reg[0]_0 ),
        .I2(data_ready),
        .I3(lsr_reg016_out),
        .I4(\lsr_reg[1]_0 [1]),
        .I5(\lsr_reg[1]_2 ),
        .O(\lsr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF14)) 
    parity_error_d_i_1
       (.I0(parity_error_d_i_2_n_0),
        .I1(sin_d2),
        .I2(parity_error_d),
        .I3(parity_error_d_i_3_n_0),
        .I4(parity_error_d_i_4_n_0),
        .I5(parity_error_d_i_5_n_0),
        .O(rx_parity_com));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h04040400)) 
    parity_error_d_i_10
       (.I0(receive_state[3]),
        .I1(receive_state[0]),
        .I2(Q[4]),
        .I3(receive_state[1]),
        .I4(receive_state[2]),
        .O(parity_error_d_i_10_n_0));
  LUT6 #(
    .INIT(64'h0101550020205D00)) 
    parity_error_d_i_11
       (.I0(receive_state[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .I5(receive_state[2]),
        .O(parity_error_d_i_11_n_0));
  LUT6 #(
    .INIT(64'hAB5DFFAAFF750000)) 
    parity_error_d_i_2
       (.I0(receive_state[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(receive_state[2]),
        .I4(receive_state[3]),
        .I5(receive_state[0]),
        .O(parity_error_d_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000280002022A02)) 
    parity_error_d_i_3
       (.I0(receive_state[3]),
        .I1(receive_state[1]),
        .I2(receive_state[2]),
        .I3(parity_error_d_i_6_n_0),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(parity_error_d_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF004400F0)) 
    parity_error_d_i_4
       (.I0(receive_state[2]),
        .I1(parity_error_d_i_7_n_0),
        .I2(parity_error_d_i_8_n_0),
        .I3(parity_error_d_i_9_n_0),
        .I4(receive_state[1]),
        .I5(parity_error_d_i_10_n_0),
        .O(parity_error_d_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    parity_error_d_i_5
       (.I0(parity_error_d_i_11_n_0),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(sin_d2),
        .O(parity_error_d_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    parity_error_d_i_6
       (.I0(sin_d2),
        .I1(parity_error_d),
        .O(parity_error_d_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0480)) 
    parity_error_d_i_7
       (.I0(receive_state[0]),
        .I1(receive_state[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(parity_error_d_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h1F000000)) 
    parity_error_d_i_8
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(receive_state[0]),
        .I3(receive_state[3]),
        .I4(receive_state[2]),
        .O(parity_error_d_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    parity_error_d_i_9
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(sin_d2),
        .O(parity_error_d_i_9_n_0));
  FDRE parity_error_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(rx_parity_com),
        .Q(parity_error_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    parity_error_i_i_1
       (.I0(parity_error_latch),
        .I1(character_received_flag),
        .I2(Q[3]),
        .O(parity_error_i0));
  FDRE parity_error_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(parity_error_i0),
        .Q(parity_error),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    parity_error_latch_i_1
       (.I0(parity_error_d),
        .I1(load_rbr_d),
        .I2(clk2x),
        .I3(parity_error_latch),
        .O(parity_error_latch_i_1_n_0));
  FDRE parity_error_latch_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(parity_error_latch_i_1_n_0),
        .Q(parity_error_latch),
        .R(framing_error_flag0));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \rbr_d[0]_i_1 
       (.I0(rsr[2]),
        .I1(rsr[1]),
        .I2(rsr[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rsr[3]),
        .O(\rbr_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \rbr_d[1]_i_1 
       (.I0(rsr[1]),
        .I1(rsr[3]),
        .I2(rsr[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rsr[2]),
        .O(\rbr_d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \rbr_d[2]_i_1 
       (.I0(rsr[2]),
        .I1(rsr[4]),
        .I2(rsr[5]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rsr[3]),
        .O(\rbr_d[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \rbr_d[3]_i_1 
       (.I0(rsr[3]),
        .I1(rsr[5]),
        .I2(rsr[6]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rsr[4]),
        .O(\rbr_d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \rbr_d[4]_i_1 
       (.I0(rsr[6]),
        .I1(rsr[5]),
        .I2(rsr[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rsr[7]),
        .O(\rbr_d[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \rbr_d[5]_i_1 
       (.I0(rsr[5]),
        .I1(rsr[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(rsr[7]),
        .O(\rbr_d[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \rbr_d[6]_i_1 
       (.I0(rsr[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(rsr[6]),
        .O(\rbr_d[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rbr_d[7]_i_1 
       (.I0(clk1x),
        .I1(load_rbr_d),
        .O(rbr_d0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rbr_d[7]_i_2 
       (.I0(rsr[7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\rbr_d[7]_i_2_n_0 ));
  FDRE \rbr_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[0]_i_1_n_0 ),
        .Q(rbr_d[0]),
        .R(rx_rst));
  FDRE \rbr_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[1]_i_1_n_0 ),
        .Q(rbr_d[1]),
        .R(rx_rst));
  FDRE \rbr_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[2]_i_1_n_0 ),
        .Q(rbr_d[2]),
        .R(rx_rst));
  FDRE \rbr_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[3]_i_1_n_0 ),
        .Q(rbr_d[3]),
        .R(rx_rst));
  FDRE \rbr_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[4]_i_1_n_0 ),
        .Q(rbr_d[4]),
        .R(rx_rst));
  FDRE \rbr_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[5]_i_1_n_0 ),
        .Q(rbr_d[5]),
        .R(rx_rst));
  FDRE \rbr_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[6]_i_1_n_0 ),
        .Q(rbr_d[6]),
        .R(rx_rst));
  FDRE \rbr_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[7]_i_2_n_0 ),
        .Q(rbr_d[7]),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    resynch_clkdiv_d_i_1
       (.I0(p_0_in),
        .I1(got_start_bit_d),
        .I2(resynch_clkdiv_d_i_2_n_0),
        .I3(resynch_clkdiv_d_i_3_n_0),
        .I4(resynch_clkdiv_d_i_4_n_0),
        .I5(resynch_clkdiv_d_i_5_n_0),
        .O(resynch_clkdiv));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    resynch_clkdiv_d_i_2
       (.I0(Q[2]),
        .I1(receive_state[2]),
        .I2(receive_state[1]),
        .I3(receive_state[3]),
        .I4(receive_state[0]),
        .O(resynch_clkdiv_d_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    resynch_clkdiv_d_i_3
       (.I0(receive_state[3]),
        .I1(receive_state[0]),
        .O(resynch_clkdiv_d_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    resynch_clkdiv_d_i_4
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .O(resynch_clkdiv_d_i_4_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    resynch_clkdiv_d_i_5
       (.I0(sin_d5),
        .I1(framing_error_d),
        .I2(clock_1x_early),
        .I3(sin_d6),
        .O(resynch_clkdiv_d_i_5_n_0));
  FDRE resynch_clkdiv_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv),
        .Q(resynch_clkdiv_d),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h8B88888888888888)) 
    resynch_clkdiv_frame_d_i_1
       (.I0(resynch_clkdiv_frame_d),
        .I1(rx_rst),
        .I2(p_0_in),
        .I3(got_start_bit_d),
        .I4(resynch_clkdiv_frame_d_i_2_n_0),
        .I5(framing_error_d),
        .O(resynch_clkdiv_frame_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    resynch_clkdiv_frame_d_i_2
       (.I0(receive_state[0]),
        .I1(receive_state[3]),
        .I2(receive_state[1]),
        .I3(\clkdiv[3]_i_4_n_0 ),
        .I4(sin_d10),
        .I5(sin_d9),
        .O(resynch_clkdiv_frame_d_i_2_n_0));
  FDRE resynch_clkdiv_frame_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv_frame_d_i_1_n_0),
        .Q(resynch_clkdiv_frame_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    resynch_clkdiv_startbit_d_i_1
       (.I0(p_0_in),
        .I1(got_start_bit_d),
        .I2(receive_state[3]),
        .I3(resynch_clkdiv_startbit_d_i_2_n_0),
        .I4(sin_d9),
        .I5(sin_d10),
        .O(resynch_clkdiv_startbit));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    resynch_clkdiv_startbit_d_i_2
       (.I0(receive_state[0]),
        .I1(receive_state[2]),
        .I2(receive_state[1]),
        .O(resynch_clkdiv_startbit_d_i_2_n_0));
  FDRE resynch_clkdiv_startbit_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv_startbit),
        .Q(resynch_clkdiv_startbit_d),
        .R(rx_rst));
  FDRE \rsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[1]),
        .Q(rsr[0]),
        .R(rx_rst));
  FDRE \rsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[2]),
        .Q(rsr[1]),
        .R(rx_rst));
  FDRE \rsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[3]),
        .Q(rsr[2]),
        .R(rx_rst));
  FDRE \rsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[4]),
        .Q(rsr[3]),
        .R(rx_rst));
  FDRE \rsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[5]),
        .Q(rsr[4]),
        .R(rx_rst));
  FDRE \rsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[6]),
        .Q(rsr[5]),
        .R(rx_rst));
  FDRE \rsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[7]),
        .Q(rsr[6]),
        .R(rx_rst));
  FDRE \rsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(sin_d2),
        .Q(rsr[7]),
        .R(rx_rst));
  FDRE sin_d10_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(sin_d9),
        .Q(sin_d10),
        .R(rx_rst));
  LUT1 #(
    .INIT(2'h1)) 
    sin_d1_i_1
       (.I0(p_0_in),
        .O(\tx16550_1/clk1x1 ));
  FDRE sin_d1_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(rx_sin),
        .Q(sin_d1),
        .R(rx_rst));
  FDRE sin_d2_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(sin_d1),
        .Q(sin_d2),
        .R(rx_rst));
  FDRE sin_d3_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(sin_d2),
        .Q(sin_d3),
        .R(rx_rst));
  FDRE sin_d4_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(sin_d3),
        .Q(sin_d4),
        .R(rx_rst));
  FDRE sin_d5_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(sin_d4),
        .Q(sin_d5),
        .R(rx_rst));
  FDRE sin_d6_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(sin_d5),
        .Q(sin_d6),
        .R(rx_rst));
  FDRE sin_d7_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(sin_d6),
        .Q(sin_d7),
        .R(rx_rst));
  FDRE sin_d8_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(sin_d7),
        .Q(sin_d8),
        .R(rx_rst));
  FDRE sin_d9_reg
       (.C(s_axi_aclk),
        .CE(\tx16550_1/clk1x1 ),
        .D(sin_d8),
        .Q(sin_d9),
        .R(rx_rst));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module AXI_bd_0_axi_uart16550_0_0_slave_attachment
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_rdata,
    \bus2ip_addr_i_reg[4]_0 ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    bus2ip_reset_int_core,
    s_axi_arvalid,
    s_axi_aclk,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    Q,
    wrReq_d1);
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [7:0]s_axi_rdata;
  output [2:0]\bus2ip_addr_i_reg[4]_0 ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input bus2ip_reset_int_core;
  input s_axi_arvalid;
  input s_axi_aclk;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input [7:0]Q;
  input wrReq_d1;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire [7:0]Q;
  wire Wr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_2_n_0 ;
  wire [2:0]\bus2ip_addr_i_reg[4]_0 ;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_rnw_i_reg_n_0;
  wire bus2ip_wrce_i;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [7:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire wrReq_d1;

  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(state1__2),
        .I4(s_axi_rresp_i),
        .I5(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888F8F8F88888888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state1__2),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1__2));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(bus2ip_reset_int_core));
  AXI_bd_0_axi_uart16550_0_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(bus2ip_rnw_i_reg_n_0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .Q(start2),
        .Wr(Wr),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .wrReq_d1(wrReq_d1));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [0]),
        .R(bus2ip_reset_int_core));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [1]),
        .R(bus2ip_reset_int_core));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [2]),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_bvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(s_axi_rdata[0]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(s_axi_rdata[1]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(s_axi_rdata[2]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(s_axi_rdata[3]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(s_axi_rdata[4]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(s_axi_rdata[5]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(s_axi_rdata[6]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(s_axi_rdata[7]),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_rvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'hF800)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(bus2ip_reset_int_core));
endmodule

(* ORIG_REF_NAME = "tx16550" *) 
module AXI_bd_0_axi_uart16550_0_0_tx16550
   (tsr_loaded,
    sout,
    rx_sin,
    bus2ip_reset_int_core,
    s_axi_aclk,
    p_0_in,
    Q,
    sout_0,
    Tsre,
    freeze,
    \FSM_sequential_transmit_state_reg[3]_0 ,
    \tsr_reg[7]_0 ,
    sin);
  output tsr_loaded;
  output sout;
  output rx_sin;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input p_0_in;
  input [6:0]Q;
  input [0:0]sout_0;
  input Tsre;
  input freeze;
  input \FSM_sequential_transmit_state_reg[3]_0 ;
  input [7:0]\tsr_reg[7]_0 ;
  input sin;

  wire \FSM_sequential_transmit_state[0]_i_2_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_3_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_4_n_0 ;
  wire \FSM_sequential_transmit_state[3]_i_3_n_0 ;
  wire \FSM_sequential_transmit_state[3]_i_5_n_0 ;
  wire \FSM_sequential_transmit_state_reg[3]_0 ;
  wire [6:0]Q;
  wire Sout0;
  wire Sout_i_1_n_0;
  wire Sout_i_2_n_0;
  wire Sout_i_3_n_0;
  wire Tsr_loaded_i_1_n_0;
  wire Tsre;
  wire bus2ip_reset_int_core;
  wire clk1x;
  wire clk1x_i_1__0_n_0;
  wire clk2x;
  wire clk2x0;
  wire [2:0]clkdiv;
  wire \clkdiv[3]_i_1__0_n_0 ;
  wire \clkdiv[3]_i_2__0_n_0 ;
  wire [3:0]clkdiv_reg__0;
  wire freeze;
  wire [6:0]in12;
  wire [3:0]next_state;
  wire p_0_in;
  wire rx_sin;
  wire s_axi_aclk;
  wire sin;
  wire sout;
  wire [0:0]sout_0;
  wire [3:0]transmit_state;
  wire [7:0]tsr_com;
  wire tsr_loaded;
  wire [7:0]\tsr_reg[7]_0 ;
  wire \tsr_reg_n_0_[0] ;
  wire tx_parity;
  wire tx_parity_com;
  wire tx_parity_i_2_n_0;
  wire tx_sout;

  LUT6 #(
    .INIT(64'hF1F1F1F1F1F1FFF1)) 
    \FSM_sequential_transmit_state[0]_i_1 
       (.I0(\FSM_sequential_transmit_state[0]_i_2_n_0 ),
        .I1(transmit_state[0]),
        .I2(\FSM_sequential_transmit_state[0]_i_3_n_0 ),
        .I3(\FSM_sequential_transmit_state[0]_i_4_n_0 ),
        .I4(Tsre),
        .I5(freeze),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hC0C0C0C8C3F3C3C3)) 
    \FSM_sequential_transmit_state[0]_i_2 
       (.I0(Q[3]),
        .I1(transmit_state[2]),
        .I2(transmit_state[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(transmit_state[1]),
        .O(\FSM_sequential_transmit_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000550000)) 
    \FSM_sequential_transmit_state[0]_i_3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(transmit_state[2]),
        .I4(transmit_state[3]),
        .I5(transmit_state[1]),
        .O(\FSM_sequential_transmit_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22330F112233)) 
    \FSM_sequential_transmit_state[0]_i_4 
       (.I0(Q[1]),
        .I1(transmit_state[0]),
        .I2(Q[2]),
        .I3(transmit_state[1]),
        .I4(transmit_state[3]),
        .I5(transmit_state[2]),
        .O(\FSM_sequential_transmit_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h066606E607660666)) 
    \FSM_sequential_transmit_state[1]_i_1 
       (.I0(transmit_state[0]),
        .I1(transmit_state[1]),
        .I2(transmit_state[2]),
        .I3(transmit_state[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'h0022F30033330000)) 
    \FSM_sequential_transmit_state[2]_i_1 
       (.I0(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I1(transmit_state[3]),
        .I2(Q[2]),
        .I3(transmit_state[0]),
        .I4(transmit_state[2]),
        .I5(transmit_state[1]),
        .O(next_state[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_transmit_state[3]_i_1 
       (.I0(clk1x),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(Sout0));
  LUT6 #(
    .INIT(64'h0000F500CFFF0000)) 
    \FSM_sequential_transmit_state[3]_i_2 
       (.I0(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I1(Q[2]),
        .I2(transmit_state[0]),
        .I3(transmit_state[1]),
        .I4(transmit_state[3]),
        .I5(transmit_state[2]),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_sequential_transmit_state[3]_i_3 
       (.I0(\FSM_sequential_transmit_state[3]_i_5_n_0 ),
        .I1(transmit_state[3]),
        .I2(transmit_state[2]),
        .I3(clk2x),
        .I4(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I5(Q[2]),
        .O(\FSM_sequential_transmit_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_transmit_state[3]_i_5 
       (.I0(transmit_state[1]),
        .I1(transmit_state[0]),
        .O(\FSM_sequential_transmit_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[0]),
        .Q(transmit_state[0]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[1]),
        .Q(transmit_state[1]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[2]),
        .Q(transmit_state[2]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[3]),
        .Q(transmit_state[3]),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h1)) 
    Sout_i_1
       (.I0(Q[6]),
        .I1(Sout_i_2_n_0),
        .O(Sout_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000CD57F154)) 
    Sout_i_2
       (.I0(\tsr_reg_n_0_[0] ),
        .I1(transmit_state[2]),
        .I2(transmit_state[1]),
        .I3(transmit_state[3]),
        .I4(transmit_state[0]),
        .I5(Sout_i_3_n_0),
        .O(Sout_i_2_n_0));
  LUT6 #(
    .INIT(64'h00004E0000000000)) 
    Sout_i_3
       (.I0(Q[5]),
        .I1(tx_parity),
        .I2(Q[4]),
        .I3(transmit_state[1]),
        .I4(transmit_state[2]),
        .I5(transmit_state[3]),
        .O(Sout_i_3_n_0));
  FDSE Sout_reg
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(Sout_i_1_n_0),
        .Q(tx_sout),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    Tsr_loaded_i_1
       (.I0(transmit_state[0]),
        .I1(bus2ip_reset_int_core),
        .I2(clk1x),
        .I3(transmit_state[3]),
        .I4(transmit_state[1]),
        .I5(transmit_state[2]),
        .O(Tsr_loaded_i_1_n_0));
  FDRE Tsr_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tsr_loaded_i_1_n_0),
        .Q(tsr_loaded),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    clk1x_i_1__0
       (.I0(clkdiv_reg__0[3]),
        .I1(clkdiv_reg__0[2]),
        .I2(clkdiv_reg__0[0]),
        .I3(clkdiv_reg__0[1]),
        .I4(p_0_in),
        .O(clk1x_i_1__0_n_0));
  FDRE clk1x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x_i_1__0_n_0),
        .Q(clk1x),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    clk2x_i_1
       (.I0(clkdiv_reg__0[3]),
        .I1(clkdiv_reg__0[2]),
        .I2(clkdiv_reg__0[0]),
        .I3(clkdiv_reg__0[1]),
        .I4(p_0_in),
        .O(clk2x0));
  FDRE clk2x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2x0),
        .Q(clk2x),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \clkdiv[0]_i_1__0 
       (.I0(clkdiv_reg__0[0]),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(clkdiv[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \clkdiv[1]_i_1__0 
       (.I0(clkdiv_reg__0[1]),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .I2(clkdiv_reg__0[0]),
        .O(clkdiv[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \clkdiv[2]_i_1__0 
       (.I0(clkdiv_reg__0[2]),
        .I1(clkdiv_reg__0[1]),
        .I2(clkdiv_reg__0[0]),
        .I3(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(clkdiv[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \clkdiv[3]_i_1__0 
       (.I0(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .I1(p_0_in),
        .O(\clkdiv[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h56666666)) 
    \clkdiv[3]_i_2__0 
       (.I0(clkdiv_reg__0[3]),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .I2(clkdiv_reg__0[2]),
        .I3(clkdiv_reg__0[0]),
        .I4(clkdiv_reg__0[1]),
        .O(\clkdiv[3]_i_2__0_n_0 ));
  FDRE \clkdiv_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1__0_n_0 ),
        .D(clkdiv[0]),
        .Q(clkdiv_reg__0[0]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1__0_n_0 ),
        .D(clkdiv[1]),
        .Q(clkdiv_reg__0[1]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1__0_n_0 ),
        .D(clkdiv[2]),
        .Q(clkdiv_reg__0[2]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1__0_n_0 ),
        .D(\clkdiv[3]_i_2__0_n_0 ),
        .Q(clkdiv_reg__0[3]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFAC)) 
    sin_d1_i_2
       (.I0(tx_sout),
        .I1(sin),
        .I2(sout_0),
        .I3(freeze),
        .O(rx_sin));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h54)) 
    sout_INST_0
       (.I0(Q[6]),
        .I1(tx_sout),
        .I2(sout_0),
        .O(sout));
  LUT6 #(
    .INIT(64'h0A0AFAAC0AFAFAAF)) 
    \tsr[0]_i_1 
       (.I0(in12[0]),
        .I1(\tsr_reg[7]_0 [0]),
        .I2(transmit_state[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[2]),
        .I5(transmit_state[0]),
        .O(tsr_com[0]));
  LUT6 #(
    .INIT(64'h0A0AFAAC0AFAFAAF)) 
    \tsr[1]_i_1 
       (.I0(in12[1]),
        .I1(\tsr_reg[7]_0 [1]),
        .I2(transmit_state[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[2]),
        .I5(transmit_state[0]),
        .O(tsr_com[1]));
  LUT6 #(
    .INIT(64'h0A0AFAAC0AFAFAAF)) 
    \tsr[2]_i_1 
       (.I0(in12[2]),
        .I1(\tsr_reg[7]_0 [2]),
        .I2(transmit_state[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[2]),
        .I5(transmit_state[0]),
        .O(tsr_com[2]));
  LUT6 #(
    .INIT(64'h0A0AFAAC0AFAFAAF)) 
    \tsr[3]_i_1 
       (.I0(in12[3]),
        .I1(\tsr_reg[7]_0 [3]),
        .I2(transmit_state[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[2]),
        .I5(transmit_state[0]),
        .O(tsr_com[3]));
  LUT6 #(
    .INIT(64'h0A0AFAAC0AFAFAAF)) 
    \tsr[4]_i_1 
       (.I0(in12[4]),
        .I1(\tsr_reg[7]_0 [4]),
        .I2(transmit_state[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[2]),
        .I5(transmit_state[0]),
        .O(tsr_com[4]));
  LUT6 #(
    .INIT(64'h0A0AFAAC0AFAFAAF)) 
    \tsr[5]_i_1 
       (.I0(in12[5]),
        .I1(\tsr_reg[7]_0 [5]),
        .I2(transmit_state[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[2]),
        .I5(transmit_state[0]),
        .O(tsr_com[5]));
  LUT6 #(
    .INIT(64'h0A0AFAAC0AFAFAAF)) 
    \tsr[6]_i_1 
       (.I0(in12[6]),
        .I1(\tsr_reg[7]_0 [6]),
        .I2(transmit_state[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[2]),
        .I5(transmit_state[0]),
        .O(tsr_com[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h0F5FFFFD)) 
    \tsr[7]_i_1 
       (.I0(transmit_state[0]),
        .I1(\tsr_reg[7]_0 [7]),
        .I2(transmit_state[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[2]),
        .O(tsr_com[7]));
  FDSE \tsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[0]),
        .Q(\tsr_reg_n_0_[0] ),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[1]),
        .Q(in12[0]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[2]),
        .Q(in12[1]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[3]),
        .Q(in12[2]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[4]),
        .Q(in12[3]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[5]),
        .Q(in12[4]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[6]),
        .Q(in12[5]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[7]),
        .Q(in12[6]),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    tx_parity_i_1
       (.I0(Q[4]),
        .I1(transmit_state[1]),
        .I2(transmit_state[3]),
        .I3(transmit_state[0]),
        .I4(transmit_state[2]),
        .I5(tx_parity_i_2_n_0),
        .O(tx_parity_com));
  LUT5 #(
    .INIT(32'h06060660)) 
    tx_parity_i_2
       (.I0(\tsr_reg_n_0_[0] ),
        .I1(tx_parity),
        .I2(transmit_state[3]),
        .I3(transmit_state[2]),
        .I4(transmit_state[1]),
        .O(tx_parity_i_2_n_0));
  FDRE tx_parity_reg
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tx_parity_com),
        .Q(tx_parity),
        .R(bus2ip_reset_int_core));
endmodule

(* ORIG_REF_NAME = "uart16550" *) 
module AXI_bd_0_axi_uart16550_0_0_uart16550
   (baudoutn,
    ip2intc_irpt,
    ddis,
    txrdyn,
    rxrdyn,
    sout,
    Q,
    rtsn,
    dtrn,
    out1n,
    out2n,
    s_axi_aclk,
    bus2ip_reset_int_core,
    Rd,
    Wr,
    ctsn,
    dsrn,
    rin,
    dcdn,
    ce_out_i,
    s_axi_wdata,
    \addr_d_reg[2]_0 ,
    freeze,
    sin);
  output baudoutn;
  output ip2intc_irpt;
  output ddis;
  output txrdyn;
  output rxrdyn;
  output sout;
  output [7:0]Q;
  output rtsn;
  output dtrn;
  output out1n;
  output out2n;
  input s_axi_aclk;
  input bus2ip_reset_int_core;
  input Rd;
  input Wr;
  input ctsn;
  input dsrn;
  input rin;
  input dcdn;
  input ce_out_i;
  input [7:0]s_axi_wdata;
  input [2:0]\addr_d_reg[2]_0 ;
  input freeze;
  input sin;

  wire D2;
  wire Ddis_i_1_n_0;
  wire \Dout[0]_i_3_n_0 ;
  wire \Dout[0]_i_4_n_0 ;
  wire \Dout[0]_i_5_n_0 ;
  wire \Dout[1]_i_2_n_0 ;
  wire \Dout[1]_i_4_n_0 ;
  wire \Dout[1]_i_5_n_0 ;
  wire \Dout[1]_i_6_n_0 ;
  wire \Dout[2]_i_3_n_0 ;
  wire \Dout[2]_i_4_n_0 ;
  wire \Dout[2]_i_5_n_0 ;
  wire \Dout[2]_i_6_n_0 ;
  wire \Dout[3]_i_3_n_0 ;
  wire \Dout[3]_i_4_n_0 ;
  wire \Dout[3]_i_5_n_0 ;
  wire \Dout[4]_i_2_n_0 ;
  wire \Dout[4]_i_3_n_0 ;
  wire \Dout[4]_i_4_n_0 ;
  wire \Dout[4]_i_5_n_0 ;
  wire \Dout[5]_i_2_n_0 ;
  wire \Dout[6]_i_2_n_0 ;
  wire \Dout[6]_i_3_n_0 ;
  wire \Dout[6]_i_4_n_0 ;
  wire \Dout[6]_i_6_n_0 ;
  wire \Dout[7]_i_3_n_0 ;
  wire \Dout[7]_i_4_n_0 ;
  wire \Dout[7]_i_5_n_0 ;
  wire Intr0;
  wire [0:3]L;
  wire [6:0]Lcr;
  wire Lcr0;
  wire \Lcr_reg_n_0_[7] ;
  wire [7:0]Q;
  wire Rd;
  wire [7:0]Thr;
  wire Thr0;
  wire Thre;
  wire Tsre;
  wire Wr;
  wire [2:0]\addr_d_reg[2]_0 ;
  wire [15:0]baudCounter;
  wire baudCounter1;
  wire \baudCounter[0]_i_1_n_0 ;
  wire \baudCounter[10]_i_1_n_0 ;
  wire \baudCounter[11]_i_1_n_0 ;
  wire \baudCounter[12]_i_1_n_0 ;
  wire \baudCounter[13]_i_1_n_0 ;
  wire \baudCounter[14]_i_1_n_0 ;
  wire \baudCounter[15]_i_1_n_0 ;
  wire \baudCounter[15]_i_2_n_0 ;
  wire \baudCounter[1]_i_1_n_0 ;
  wire \baudCounter[2]_i_1_n_0 ;
  wire \baudCounter[3]_i_1_n_0 ;
  wire \baudCounter[4]_i_1_n_0 ;
  wire \baudCounter[5]_i_1_n_0 ;
  wire \baudCounter[6]_i_1_n_0 ;
  wire \baudCounter[7]_i_1_n_0 ;
  wire \baudCounter[8]_i_1_n_0 ;
  wire \baudCounter[9]_i_1_n_0 ;
  wire baud_counter_loaded;
  wire baud_counter_loaded_i_2_n_0;
  wire baud_counter_loaded_i_3_n_0;
  wire baud_counter_loaded_i_4_n_0;
  wire baud_counter_loaded_i_5_n_0;
  wire baudoutN_int_i;
  wire baudoutN_int_i_i_1_n_0;
  wire baudoutn;
  wire break_interrupt;
  wire bus2ip_reset_int_core;
  wire ce_out_i;
  wire chipSelect;
  wire [15:0]clockDiv;
  wire ctsN_d;
  wire ctsn;
  wire \d_d_reg_n_0_[0] ;
  wire \d_d_reg_n_0_[1] ;
  wire \d_d_reg_n_0_[2] ;
  wire \d_d_reg_n_0_[3] ;
  wire \d_d_reg_n_0_[5] ;
  wire \d_d_reg_n_0_[6] ;
  wire \d_d_reg_n_0_[7] ;
  wire dcdN_d;
  wire dcdn;
  wire ddis;
  wire divisor_latch_loaded;
  wire divisor_latch_loaded_i_1_n_0;
  wire dlab_i_1_n_0;
  wire dlab_i_2_n_0;
  wire dll0;
  wire dlm0;
  wire dsrN_d;
  wire dsrn;
  wire dtrn;
  wire framing_error_i;
  wire freeze;
  wire [3:0]ier;
  wire ier1;
  wire ier1_d;
  wire [2:0]iir;
  wire \iir[0]_i_1_n_0 ;
  wire \iir[0]_i_2_n_0 ;
  wire \iir[0]_i_3_n_0 ;
  wire \iir[1]_i_1_n_0 ;
  wire \iir[2]_i_1_n_0 ;
  wire \iir[2]_i_2_n_0 ;
  wire \iir[2]_i_4_n_0 ;
  wire \iir[2]_i_5_n_0 ;
  wire \iir[2]_i_6_n_0 ;
  wire ip2intc_irpt;
  wire load_baudlower;
  wire load_baudupper;
  wire lsr2_rst;
  wire lsr2_rst_i_1_n_0;
  wire lsr5_d;
  wire \lsr[0]_i_2_n_0 ;
  wire \lsr[2]_i_1_n_0 ;
  wire \lsr[3]_i_1_n_0 ;
  wire \lsr[3]_i_2_n_0 ;
  wire \lsr[4]_i_1_n_0 ;
  wire lsr_reg;
  wire lsr_reg016_out;
  wire lsr_reg03_out;
  wire \lsr_reg_n_0_[0] ;
  wire \lsr_reg_n_0_[1] ;
  wire \lsr_reg_n_0_[2] ;
  wire \lsr_reg_n_0_[3] ;
  wire mcr0;
  wire mcr4_d;
  wire \mcr_reg_n_0_[0] ;
  wire \mcr_reg_n_0_[2] ;
  wire \mcr_reg_n_0_[3] ;
  wire [15:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire \modem_prev_val[0]_i_1_n_0 ;
  wire \modem_prev_val[1]_i_1_n_0 ;
  wire \modem_prev_val[2]_i_1_n_0 ;
  wire \modem_prev_val[3]_i_1_n_0 ;
  wire \modem_prev_val_reg_n_0_[0] ;
  wire \modem_prev_val_reg_n_0_[1] ;
  wire msr1;
  wire \msr[0]_i_2_n_0 ;
  wire \msr[1]_i_1_n_0 ;
  wire \msr[2]_i_1_n_0 ;
  wire \msr[3]_i_1_n_0 ;
  wire \msr[4]_i_1_n_0 ;
  wire \msr[5]_i_1_n_0 ;
  wire \msr[6]_i_1_n_0 ;
  wire \msr[7]_i_1_n_0 ;
  wire msr_reg;
  wire msr_reg0;
  wire \msr_reg_n_0_[0] ;
  wire \msr_reg_n_0_[5] ;
  wire \msr_reg_n_0_[6] ;
  wire \msr_reg_n_0_[7] ;
  wire out1n;
  wire out2n;
  wire p_0_in;
  wire p_0_in12_in;
  wire p_0_in13_in;
  wire p_0_in14_in;
  wire p_0_in31_in;
  wire p_0_in8_in;
  wire p_0_in_0;
  wire p_1_in3_in;
  wire p_1_in6_in;
  wire p_1_out0;
  wire p_2_in9_in;
  wire p_3_in;
  wire parity_error;
  wire rd_d;
  wire readStrobe;
  wire riN_d;
  wire rin;
  wire rtsn;
  wire rx16550_1_n_10;
  wire rx16550_1_n_11;
  wire rx16550_1_n_12;
  wire rx16550_1_n_13;
  wire rx16550_1_n_14;
  wire rx16550_1_n_15;
  wire rx16550_1_n_16;
  wire rx16550_1_n_17;
  wire rx16550_1_n_18;
  wire rx16550_1_n_4;
  wire rx16550_1_n_5;
  wire rx16550_1_n_6;
  wire rx16550_1_n_7;
  wire rx16550_1_n_8;
  wire rx16550_1_n_9;
  wire rx_sin;
  wire rxrdyN_int_i_1_n_0;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire [7:0]scr;
  wire scr0;
  wire sin;
  wire sout;
  wire thre_iir_set;
  wire thre_iir_set_i_1_n_0;
  wire thre_iir_set_i_2_n_0;
  wire thre_iir_set_i_3_n_0;
  wire thre_iir_set_i_4_n_0;
  wire thre_iir_set_i_5_n_0;
  wire [7:0]tsr_int;
  wire tsr_loaded;
  wire txrdyN_int_i_1_n_0;
  wire txrdyn;
  wire wr_d;
  wire writing_thr;
  wire xuart_tx_load_sm_1_n_2;
  wire \NLW_NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_S_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    Ddis_i_1
       (.I0(rd_d),
        .I1(chipSelect),
        .O(Ddis_i_1_n_0));
  FDRE Ddis_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Ddis_i_1_n_0),
        .Q(ddis),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0002030000020000)) 
    \Dout[0]_i_3 
       (.I0(clockDiv[0]),
        .I1(L[3]),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[0]),
        .I5(iir[0]),
        .O(\Dout[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h2C002000)) 
    \Dout[0]_i_4 
       (.I0(Lcr[0]),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(\lsr_reg_n_0_[0] ),
        .O(\Dout[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCF0A0000C00A0000)) 
    \Dout[0]_i_5 
       (.I0(\mcr_reg_n_0_[0] ),
        .I1(scr[0]),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(\msr_reg_n_0_[0] ),
        .O(\Dout[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0003020000000200)) 
    \Dout[1]_i_2 
       (.I0(clockDiv[1]),
        .I1(L[2]),
        .I2(L[1]),
        .I3(L[0]),
        .I4(L[3]),
        .I5(ier[1]),
        .O(\Dout[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \Dout[1]_i_4 
       (.I0(L[3]),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[0]),
        .O(\Dout[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2C002000)) 
    \Dout[1]_i_5 
       (.I0(Lcr[1]),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(\lsr_reg_n_0_[1] ),
        .O(\Dout[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA000CF00A000C000)) 
    \Dout[1]_i_6 
       (.I0(scr[1]),
        .I1(p_0_in12_in),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(p_0_in_0),
        .O(\Dout[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0008030000080000)) 
    \Dout[2]_i_3 
       (.I0(clockDiv[10]),
        .I1(L[3]),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[0]),
        .I5(iir[2]),
        .O(\Dout[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \Dout[2]_i_4 
       (.I0(L[2]),
        .I1(L[1]),
        .I2(L[0]),
        .I3(L[3]),
        .O(\Dout[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30200020)) 
    \Dout[2]_i_5 
       (.I0(\mcr_reg_n_0_[2] ),
        .I1(L[3]),
        .I2(L[1]),
        .I3(L[2]),
        .I4(p_0_in13_in),
        .O(\Dout[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC0F0A000C000A000)) 
    \Dout[2]_i_6 
       (.I0(Lcr[2]),
        .I1(scr[2]),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(\lsr_reg_n_0_[2] ),
        .O(\Dout[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h2C002000)) 
    \Dout[3]_i_3 
       (.I0(\lsr_reg_n_0_[3] ),
        .I1(L[2]),
        .I2(L[1]),
        .I3(L[3]),
        .I4(Lcr[3]),
        .O(\Dout[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA000FC00A0000C00)) 
    \Dout[3]_i_4 
       (.I0(scr[3]),
        .I1(\mcr_reg_n_0_[3] ),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(p_0_in14_in),
        .O(\Dout[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Dout[3]_i_5 
       (.I0(L[0]),
        .I1(L[1]),
        .I2(L[2]),
        .O(\Dout[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCA00F000CA000000)) 
    \Dout[4]_i_2 
       (.I0(msr_reg),
        .I1(scr[4]),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(Lcr[4]),
        .O(\Dout[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \Dout[4]_i_3 
       (.I0(L[0]),
        .I1(L[2]),
        .I2(L[1]),
        .I3(L[3]),
        .O(\Dout[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[4]_i_4 
       (.I0(\Dout[6]_i_6_n_0 ),
        .I1(clockDiv[4]),
        .I2(p_2_in9_in),
        .I3(\Dout[6]_i_3_n_0 ),
        .I4(p_0_in8_in),
        .I5(\Dout[4]_i_5_n_0 ),
        .O(\Dout[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \Dout[4]_i_5 
       (.I0(L[3]),
        .I1(L[1]),
        .I2(L[2]),
        .O(\Dout[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hB0008000)) 
    \Dout[5]_i_2 
       (.I0(scr[5]),
        .I1(L[3]),
        .I2(L[1]),
        .I3(L[2]),
        .I4(\msr_reg_n_0_[5] ),
        .O(\Dout[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hC0800080)) 
    \Dout[6]_i_2 
       (.I0(\msr_reg_n_0_[6] ),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(scr[6]),
        .O(\Dout[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \Dout[6]_i_3 
       (.I0(L[1]),
        .I1(L[2]),
        .I2(L[3]),
        .O(\Dout[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \Dout[6]_i_4 
       (.I0(L[2]),
        .I1(L[1]),
        .I2(L[3]),
        .O(\Dout[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \Dout[6]_i_6 
       (.I0(L[3]),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[1]),
        .O(\Dout[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Dout[7]_i_1 
       (.I0(chipSelect),
        .I1(rd_d),
        .O(readStrobe));
  LUT6 #(
    .INIT(64'hCA00F000CA000000)) 
    \Dout[7]_i_3 
       (.I0(\msr_reg_n_0_[7] ),
        .I1(scr[7]),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(\Lcr_reg_n_0_[7] ),
        .O(\Dout[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000B000000080)) 
    \Dout[7]_i_4 
       (.I0(clockDiv[15]),
        .I1(L[3]),
        .I2(L[0]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(clockDiv[7]),
        .O(\Dout[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Dout[7]_i_5 
       (.I0(L[3]),
        .I1(L[2]),
        .I2(L[1]),
        .I3(L[0]),
        .O(\Dout[7]_i_5_n_0 ));
  FDRE \Dout_reg[0] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_18),
        .Q(Q[0]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[1] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_17),
        .Q(Q[1]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[2] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_16),
        .Q(Q[2]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[3] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_15),
        .Q(Q[3]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[4] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_14),
        .Q(Q[4]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[5] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_13),
        .Q(Q[5]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[6] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_12),
        .Q(Q[6]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[7] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_11),
        .Q(Q[7]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    Intr_i_1
       (.I0(iir[0]),
        .I1(freeze),
        .O(Intr0));
  FDRE Intr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Intr0),
        .Q(ip2intc_irpt),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h00800000)) 
    \Lcr[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[2]),
        .O(Lcr0));
  FDSE \Lcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(Lcr[0]),
        .S(bus2ip_reset_int_core));
  FDSE \Lcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(Lcr[1]),
        .S(bus2ip_reset_int_core));
  FDRE \Lcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(Lcr[2]),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(Lcr[3]),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_3_in),
        .Q(Lcr[4]),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(Lcr[5]),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[6] ),
        .Q(Lcr[6]),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[7] ),
        .Q(\Lcr_reg_n_0_[7] ),
        .R(bus2ip_reset_int_core));
  (* OPT_MODIFIED = "MLO " *) 
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D1(p_0_in),
        .D2(D2),
        .Q(baudoutn),
        .R(bus2ip_reset_int_core),
        .S(\NLW_NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_S_UNCONNECTED ));
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_2 
       (.I0(rx16550_1_n_10),
        .I1(rx16550_1_n_9),
        .I2(rx16550_1_n_8),
        .I3(rx16550_1_n_7),
        .I4(baudoutN_int_i),
        .O(D2));
  FDSE \Thr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(Thr[0]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(Thr[1]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(Thr[2]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(Thr[3]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_3_in),
        .Q(Thr[4]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(Thr[5]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[6] ),
        .Q(Thr[6]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[7] ),
        .Q(Thr[7]),
        .S(bus2ip_reset_int_core));
  FDRE \addr_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [0]),
        .Q(L[3]),
        .R(bus2ip_reset_int_core));
  FDRE \addr_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [1]),
        .Q(L[2]),
        .R(bus2ip_reset_int_core));
  FDRE \addr_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [2]),
        .Q(L[1]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \baudCounter[0]_i_1 
       (.I0(clockDiv[0]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(baudCounter[0]),
        .O(\baudCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[10]_i_1 
       (.I0(clockDiv[10]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[10]),
        .O(\baudCounter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[11]_i_1 
       (.I0(clockDiv[11]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[11]),
        .O(\baudCounter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[12]_i_1 
       (.I0(clockDiv[12]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[12]),
        .O(\baudCounter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[13]_i_1 
       (.I0(clockDiv[13]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[13]),
        .O(\baudCounter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[14]_i_1 
       (.I0(clockDiv[14]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[14]),
        .O(\baudCounter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[15]_i_1 
       (.I0(clockDiv[15]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[15]),
        .O(\baudCounter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \baudCounter[15]_i_2 
       (.I0(bus2ip_reset_int_core),
        .I1(baud_counter_loaded_i_5_n_0),
        .I2(baud_counter_loaded_i_4_n_0),
        .I3(baud_counter_loaded_i_3_n_0),
        .I4(baud_counter_loaded_i_2_n_0),
        .I5(divisor_latch_loaded),
        .O(\baudCounter[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[1]_i_1 
       (.I0(clockDiv[1]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[1]),
        .O(\baudCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[2]_i_1 
       (.I0(clockDiv[2]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[2]),
        .O(\baudCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[3]_i_1 
       (.I0(clockDiv[3]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[3]),
        .O(\baudCounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[4]_i_1 
       (.I0(clockDiv[4]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[4]),
        .O(\baudCounter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[5]_i_1 
       (.I0(clockDiv[5]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[5]),
        .O(\baudCounter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[6]_i_1 
       (.I0(clockDiv[6]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[6]),
        .O(\baudCounter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[7]_i_1 
       (.I0(clockDiv[7]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[7]),
        .O(\baudCounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[8]_i_1 
       (.I0(clockDiv[8]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[8]),
        .O(\baudCounter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \baudCounter[9]_i_1 
       (.I0(clockDiv[9]),
        .I1(\baudCounter[15]_i_2_n_0 ),
        .I2(minusOp[9]),
        .O(\baudCounter[9]_i_1_n_0 ));
  FDRE \baudCounter_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[0]_i_1_n_0 ),
        .Q(baudCounter[0]),
        .R(1'b0));
  FDRE \baudCounter_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[10]_i_1_n_0 ),
        .Q(baudCounter[10]),
        .R(1'b0));
  FDRE \baudCounter_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[11]_i_1_n_0 ),
        .Q(baudCounter[11]),
        .R(1'b0));
  FDRE \baudCounter_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[12]_i_1_n_0 ),
        .Q(baudCounter[12]),
        .R(1'b0));
  FDRE \baudCounter_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[13]_i_1_n_0 ),
        .Q(baudCounter[13]),
        .R(1'b0));
  FDRE \baudCounter_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[14]_i_1_n_0 ),
        .Q(baudCounter[14]),
        .R(1'b0));
  FDRE \baudCounter_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[15]_i_1_n_0 ),
        .Q(baudCounter[15]),
        .R(1'b0));
  FDRE \baudCounter_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[1]_i_1_n_0 ),
        .Q(baudCounter[1]),
        .R(1'b0));
  FDRE \baudCounter_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[2]_i_1_n_0 ),
        .Q(baudCounter[2]),
        .R(1'b0));
  FDRE \baudCounter_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[3]_i_1_n_0 ),
        .Q(baudCounter[3]),
        .R(1'b0));
  FDRE \baudCounter_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[4]_i_1_n_0 ),
        .Q(baudCounter[4]),
        .R(1'b0));
  FDRE \baudCounter_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[5]_i_1_n_0 ),
        .Q(baudCounter[5]),
        .R(1'b0));
  FDRE \baudCounter_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[6]_i_1_n_0 ),
        .Q(baudCounter[6]),
        .R(1'b0));
  FDRE \baudCounter_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[7]_i_1_n_0 ),
        .Q(baudCounter[7]),
        .R(1'b0));
  FDRE \baudCounter_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[8]_i_1_n_0 ),
        .Q(baudCounter[8]),
        .R(1'b0));
  FDRE \baudCounter_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[9]_i_1_n_0 ),
        .Q(baudCounter[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    baud_counter_loaded_i_1
       (.I0(divisor_latch_loaded),
        .I1(baud_counter_loaded_i_2_n_0),
        .I2(baud_counter_loaded_i_3_n_0),
        .I3(baud_counter_loaded_i_4_n_0),
        .I4(baud_counter_loaded_i_5_n_0),
        .O(baudCounter1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baud_counter_loaded_i_2
       (.I0(baudCounter[1]),
        .I1(baudCounter[2]),
        .I2(baudCounter[11]),
        .I3(baudCounter[15]),
        .O(baud_counter_loaded_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baud_counter_loaded_i_3
       (.I0(baudCounter[6]),
        .I1(baudCounter[10]),
        .I2(baudCounter[9]),
        .I3(baudCounter[12]),
        .O(baud_counter_loaded_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    baud_counter_loaded_i_4
       (.I0(baudCounter[0]),
        .I1(baudCounter[4]),
        .I2(baudCounter[7]),
        .I3(baudCounter[8]),
        .O(baud_counter_loaded_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baud_counter_loaded_i_5
       (.I0(baudCounter[3]),
        .I1(baudCounter[14]),
        .I2(baudCounter[5]),
        .I3(baudCounter[13]),
        .O(baud_counter_loaded_i_5_n_0));
  FDRE baud_counter_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(baudCounter1),
        .Q(baud_counter_loaded),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baudoutN_int_i_i_1
       (.I0(baud_counter_loaded_i_5_n_0),
        .I1(baud_counter_loaded_i_4_n_0),
        .I2(baud_counter_loaded_i_3_n_0),
        .I3(baud_counter_loaded_i_2_n_0),
        .O(baudoutN_int_i_i_1_n_0));
  FDRE baudoutN_int_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(baudoutN_int_i_i_1_n_0),
        .Q(baudoutN_int_i),
        .R(1'b0));
  FDRE chipSelect_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ce_out_i),
        .Q(chipSelect),
        .R(bus2ip_reset_int_core));
  FDRE ctsN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ctsn),
        .Q(ctsN_d),
        .R(1'b0));
  FDRE \d_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[0]),
        .Q(\d_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \d_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[1]),
        .Q(\d_d_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \d_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[2]),
        .Q(\d_d_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \d_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[3]),
        .Q(\d_d_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \d_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[4]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \d_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[5]),
        .Q(\d_d_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \d_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[6]),
        .Q(\d_d_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \d_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[7]),
        .Q(\d_d_reg_n_0_[7] ),
        .R(1'b0));
  FDRE dcdN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dcdn),
        .Q(dcdN_d),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00005554)) 
    divisor_latch_loaded_i_1
       (.I0(bus2ip_reset_int_core),
        .I1(load_baudupper),
        .I2(load_baudlower),
        .I3(divisor_latch_loaded),
        .I4(baud_counter_loaded),
        .O(divisor_latch_loaded_i_1_n_0));
  FDRE divisor_latch_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(divisor_latch_loaded_i_1_n_0),
        .Q(divisor_latch_loaded),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    dlab_i_1
       (.I0(L[0]),
        .I1(dlab_i_2_n_0),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(\Lcr_reg_n_0_[7] ),
        .O(dlab_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dlab_i_2
       (.I0(chipSelect),
        .I1(wr_d),
        .O(dlab_i_2_n_0));
  FDRE dlab_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dlab_i_1_n_0),
        .Q(L[0]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \dll[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[0]),
        .I5(L[3]),
        .O(dll0));
  FDSE \dll_reg[0] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(clockDiv[0]),
        .S(bus2ip_reset_int_core));
  FDSE \dll_reg[1] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(clockDiv[1]),
        .S(bus2ip_reset_int_core));
  FDRE \dll_reg[2] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(clockDiv[2]),
        .R(bus2ip_reset_int_core));
  FDSE \dll_reg[3] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(clockDiv[3]),
        .S(bus2ip_reset_int_core));
  FDRE \dll_reg[4] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_3_in),
        .Q(clockDiv[4]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[5] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(clockDiv[5]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[6] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[6] ),
        .Q(clockDiv[6]),
        .R(bus2ip_reset_int_core));
  FDSE \dll_reg[7] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[7] ),
        .Q(clockDiv[7]),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \dlm[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(L[0]),
        .O(dlm0));
  FDRE \dlm_reg[0] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(clockDiv[8]),
        .R(bus2ip_reset_int_core));
  FDSE \dlm_reg[1] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(clockDiv[9]),
        .S(bus2ip_reset_int_core));
  FDRE \dlm_reg[2] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(clockDiv[10]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[3] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(clockDiv[11]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[4] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_3_in),
        .Q(clockDiv[12]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[5] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(clockDiv[13]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[6] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[6] ),
        .Q(clockDiv[14]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[7] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[7] ),
        .Q(clockDiv[15]),
        .R(bus2ip_reset_int_core));
  FDRE dsrN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dsrn),
        .Q(dsrN_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dtrn_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[0] ),
        .O(dtrn));
  FDRE ier1_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ier[1]),
        .Q(ier1_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \ier[3]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[0]),
        .I4(L[1]),
        .I5(L[2]),
        .O(ier1));
  FDRE \ier_reg[0] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[0] ),
        .Q(ier[0]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[1] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[1] ),
        .Q(ier[1]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[2] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[2] ),
        .Q(ier[2]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[3] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[3] ),
        .Q(ier[3]),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'hFFFF0700)) 
    \iir[0]_i_1 
       (.I0(thre_iir_set),
        .I1(ier[1]),
        .I2(\iir[0]_i_2_n_0 ),
        .I3(\iir[0]_i_3_n_0 ),
        .I4(p_1_out0),
        .O(\iir[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \iir[0]_i_2 
       (.I0(ier[3]),
        .I1(\msr_reg_n_0_[0] ),
        .I2(p_0_in14_in),
        .I3(p_0_in12_in),
        .I4(p_0_in13_in),
        .O(\iir[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \iir[0]_i_3 
       (.I0(ier[0]),
        .I1(\lsr_reg_n_0_[0] ),
        .I2(\iir[2]_i_2_n_0 ),
        .O(\iir[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0888)) 
    \iir[1]_i_1 
       (.I0(thre_iir_set),
        .I1(ier[1]),
        .I2(ier[0]),
        .I3(\lsr_reg_n_0_[0] ),
        .I4(\iir[2]_i_2_n_0 ),
        .I5(p_1_out0),
        .O(\iir[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    \iir[2]_i_1 
       (.I0(ier[0]),
        .I1(\lsr_reg_n_0_[0] ),
        .I2(\iir[2]_i_2_n_0 ),
        .I3(p_1_out0),
        .O(\iir[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \iir[2]_i_2 
       (.I0(ier[2]),
        .I1(p_2_in9_in),
        .I2(\lsr_reg_n_0_[1] ),
        .I3(\lsr_reg_n_0_[3] ),
        .I4(\lsr_reg_n_0_[2] ),
        .O(\iir[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040004)) 
    \iir[2]_i_3 
       (.I0(\iir[2]_i_4_n_0 ),
        .I1(\iir[2]_i_5_n_0 ),
        .I2(iir[0]),
        .I3(iir[1]),
        .I4(\iir[2]_i_6_n_0 ),
        .I5(\lsr[3]_i_2_n_0 ),
        .O(p_1_out0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hCFFB)) 
    \iir[2]_i_4 
       (.I0(L[0]),
        .I1(iir[2]),
        .I2(L[2]),
        .I3(L[1]),
        .O(\iir[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \iir[2]_i_5 
       (.I0(L[3]),
        .I1(chipSelect),
        .I2(rd_d),
        .O(\iir[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \iir[2]_i_6 
       (.I0(iir[2]),
        .I1(iir[0]),
        .I2(iir[1]),
        .I3(bus2ip_reset_int_core),
        .O(\iir[2]_i_6_n_0 ));
  FDRE \iir_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\iir[0]_i_1_n_0 ),
        .Q(iir[0]),
        .R(1'b0));
  FDRE \iir_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\iir[1]_i_1_n_0 ),
        .Q(iir[1]),
        .R(1'b0));
  FDRE \iir_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\iir[2]_i_1_n_0 ),
        .Q(iir[2]),
        .R(1'b0));
  FDRE load_baudlower_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dll0),
        .Q(load_baudlower),
        .R(1'b0));
  FDRE load_baudupper_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dlm0),
        .Q(load_baudupper),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h75FF3000)) 
    lsr2_rst_i_1
       (.I0(wr_d),
        .I1(\Dout[6]_i_3_n_0 ),
        .I2(rd_d),
        .I3(chipSelect),
        .I4(lsr2_rst),
        .O(lsr2_rst_i_1_n_0));
  FDRE lsr2_rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(lsr2_rst_i_1_n_0),
        .Q(lsr2_rst),
        .R(bus2ip_reset_int_core));
  FDRE lsr5_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in31_in),
        .Q(lsr5_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \lsr[0]_i_2 
       (.I0(L[2]),
        .I1(L[1]),
        .I2(L[0]),
        .I3(rd_d),
        .I4(chipSelect),
        .I5(L[3]),
        .O(\lsr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEAC0EA)) 
    \lsr[2]_i_1 
       (.I0(\lsr_reg_n_0_[2] ),
        .I1(Lcr[3]),
        .I2(parity_error),
        .I3(lsr_reg016_out),
        .I4(\d_d_reg_n_0_[2] ),
        .I5(lsr_reg03_out),
        .O(\lsr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \lsr[2]_i_2 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .O(lsr_reg016_out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \lsr[2]_i_3 
       (.I0(lsr2_rst),
        .I1(chipSelect),
        .I2(rd_d),
        .I3(\Dout[6]_i_3_n_0 ),
        .I4(bus2ip_reset_int_core),
        .O(lsr_reg03_out));
  LUT6 #(
    .INIT(64'h000000000000FECE)) 
    \lsr[3]_i_1 
       (.I0(\lsr_reg_n_0_[3] ),
        .I1(framing_error_i),
        .I2(lsr_reg016_out),
        .I3(\d_d_reg_n_0_[3] ),
        .I4(\lsr[3]_i_2_n_0 ),
        .I5(lsr2_rst),
        .O(\lsr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \lsr[3]_i_2 
       (.I0(bus2ip_reset_int_core),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(rd_d),
        .I5(chipSelect),
        .O(\lsr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FECE)) 
    \lsr[4]_i_1 
       (.I0(p_2_in9_in),
        .I1(break_interrupt),
        .I2(lsr_reg016_out),
        .I3(p_3_in),
        .I4(\lsr[3]_i_2_n_0 ),
        .I5(lsr2_rst),
        .O(\lsr[4]_i_1_n_0 ));
  FDRE \lsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx16550_1_n_5),
        .Q(\lsr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx16550_1_n_6),
        .Q(\lsr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \lsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[2]_i_1_n_0 ),
        .Q(\lsr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \lsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[3]_i_1_n_0 ),
        .Q(\lsr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \lsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[4]_i_1_n_0 ),
        .Q(p_2_in9_in),
        .R(1'b0));
  FDRE \lsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Thre),
        .Q(p_0_in31_in),
        .R(1'b0));
  FDRE \lsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(xuart_tx_load_sm_1_n_2),
        .Q(lsr_reg),
        .R(1'b0));
  FDRE mcr4_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in8_in),
        .Q(mcr4_d),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h00000800)) 
    \mcr[4]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .O(mcr0));
  FDRE \mcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(\mcr_reg_n_0_[0] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(p_0_in_0),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(\mcr_reg_n_0_[2] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(\mcr_reg_n_0_[3] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[4] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(p_3_in),
        .Q(p_0_in8_in),
        .R(bus2ip_reset_int_core));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(baudCounter[0]),
        .DI(baudCounter[4:1]),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(baudCounter[8:5]),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(baudCounter[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(baudCounter[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(baudCounter[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(baudCounter[5]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(baudCounter[12:9]),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(baudCounter[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(baudCounter[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(baudCounter[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(baudCounter[9]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,baudCounter[14:13]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp[15:13]}),
        .S({1'b0,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(baudCounter[15]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(baudCounter[14]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(baudCounter[13]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(baudCounter[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(baudCounter[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(baudCounter[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(baudCounter[1]),
        .O(minusOp_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[0]_i_1 
       (.I0(ctsN_d),
        .I1(bus2ip_reset_int_core),
        .I2(msr_reg),
        .O(\modem_prev_val[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[1]_i_1 
       (.I0(dsrN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[5] ),
        .O(\modem_prev_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[2]_i_1 
       (.I0(riN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[6] ),
        .O(\modem_prev_val[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[3]_i_1 
       (.I0(dcdN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[7] ),
        .O(\modem_prev_val[3]_i_1_n_0 ));
  FDRE \modem_prev_val_reg[0] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[0]_i_1_n_0 ),
        .Q(\modem_prev_val_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \modem_prev_val_reg[1] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[1]_i_1_n_0 ),
        .Q(\modem_prev_val_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \modem_prev_val_reg[2] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[2]_i_1_n_0 ),
        .Q(p_1_in3_in),
        .R(1'b0));
  FDRE \modem_prev_val_reg[3] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[3]_i_1_n_0 ),
        .Q(p_1_in6_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \msr[0]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(L[2]),
        .I2(L[1]),
        .I3(L[3]),
        .I4(chipSelect),
        .I5(rd_d),
        .O(msr_reg0));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[0]_i_2 
       (.I0(\d_d_reg_n_0_[0] ),
        .I1(msr1),
        .I2(\msr_reg_n_0_[0] ),
        .I3(\modem_prev_val_reg_n_0_[0] ),
        .I4(msr_reg),
        .O(\msr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \msr[0]_i_3 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .O(msr1));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[1]_i_1 
       (.I0(\d_d_reg_n_0_[1] ),
        .I1(msr1),
        .I2(p_0_in12_in),
        .I3(\modem_prev_val_reg_n_0_[1] ),
        .I4(\msr_reg_n_0_[5] ),
        .O(\msr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[2]_i_1 
       (.I0(\d_d_reg_n_0_[2] ),
        .I1(msr1),
        .I2(p_0_in13_in),
        .I3(p_1_in3_in),
        .I4(\msr_reg_n_0_[6] ),
        .O(\msr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[3]_i_1 
       (.I0(\d_d_reg_n_0_[3] ),
        .I1(msr1),
        .I2(p_0_in14_in),
        .I3(p_1_in6_in),
        .I4(\msr_reg_n_0_[7] ),
        .O(\msr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55CF55C055C555C5)) 
    \msr[4]_i_1 
       (.I0(ctsN_d),
        .I1(p_3_in),
        .I2(msr1),
        .I3(bus2ip_reset_int_core),
        .I4(p_0_in_0),
        .I5(p_0_in8_in),
        .O(\msr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55CF55C055C555C5)) 
    \msr[5]_i_1 
       (.I0(dsrN_d),
        .I1(\d_d_reg_n_0_[5] ),
        .I2(msr1),
        .I3(bus2ip_reset_int_core),
        .I4(\mcr_reg_n_0_[0] ),
        .I5(p_0_in8_in),
        .O(\msr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5C5550505C55)) 
    \msr[6]_i_1 
       (.I0(riN_d),
        .I1(\mcr_reg_n_0_[2] ),
        .I2(bus2ip_reset_int_core),
        .I3(p_0_in8_in),
        .I4(msr1),
        .I5(\d_d_reg_n_0_[5] ),
        .O(\msr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5C5550505C55)) 
    \msr[7]_i_1 
       (.I0(dcdN_d),
        .I1(\mcr_reg_n_0_[3] ),
        .I2(bus2ip_reset_int_core),
        .I3(p_0_in8_in),
        .I4(msr1),
        .I5(\d_d_reg_n_0_[5] ),
        .O(\msr[7]_i_1_n_0 ));
  FDRE \msr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[0]_i_2_n_0 ),
        .Q(\msr_reg_n_0_[0] ),
        .R(msr_reg0));
  FDRE \msr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[1]_i_1_n_0 ),
        .Q(p_0_in12_in),
        .R(msr_reg0));
  FDRE \msr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[2]_i_1_n_0 ),
        .Q(p_0_in13_in),
        .R(msr_reg0));
  FDRE \msr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[3]_i_1_n_0 ),
        .Q(p_0_in14_in),
        .R(msr_reg0));
  FDRE \msr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[4]_i_1_n_0 ),
        .Q(msr_reg),
        .R(1'b0));
  FDRE \msr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[5]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \msr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[6]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \msr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[7]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out1n_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[2] ),
        .O(out1n));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out2n_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[3] ),
        .O(out2n));
  FDRE rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rd),
        .Q(rd_d),
        .R(1'b0));
  FDRE riN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rin),
        .Q(riN_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rtsn_INST_0
       (.I0(p_0_in8_in),
        .I1(p_0_in_0),
        .O(rtsn));
  AXI_bd_0_axi_uart16550_0_0_rx16550 rx16550_1
       (.D({rx16550_1_n_11,rx16550_1_n_12,rx16550_1_n_13,rx16550_1_n_14,rx16550_1_n_15,rx16550_1_n_16,rx16550_1_n_17,rx16550_1_n_18}),
        .\Dout_reg[0] (\Dout[0]_i_3_n_0 ),
        .\Dout_reg[0]_0 (\Dout[0]_i_4_n_0 ),
        .\Dout_reg[0]_1 (\Dout[0]_i_5_n_0 ),
        .\Dout_reg[1] (\Dout[1]_i_2_n_0 ),
        .\Dout_reg[1]_0 (\Dout[1]_i_4_n_0 ),
        .\Dout_reg[1]_1 (\Dout[1]_i_5_n_0 ),
        .\Dout_reg[1]_2 (\Dout[1]_i_6_n_0 ),
        .\Dout_reg[2] (\Dout[2]_i_3_n_0 ),
        .\Dout_reg[2]_0 (\Dout[2]_i_4_n_0 ),
        .\Dout_reg[2]_1 (\Dout[2]_i_5_n_0 ),
        .\Dout_reg[2]_2 (\Dout[2]_i_6_n_0 ),
        .\Dout_reg[3] (\Dout[3]_i_3_n_0 ),
        .\Dout_reg[3]_0 (\Dout[3]_i_4_n_0 ),
        .\Dout_reg[3]_1 ({ier[3:2],ier[0]}),
        .\Dout_reg[3]_2 (\Dout[3]_i_5_n_0 ),
        .\Dout_reg[4] (\Dout[4]_i_2_n_0 ),
        .\Dout_reg[4]_0 (\Dout[4]_i_3_n_0 ),
        .\Dout_reg[4]_1 (\Dout[4]_i_4_n_0 ),
        .\Dout_reg[5] (\Dout[5]_i_2_n_0 ),
        .\Dout_reg[6] (\Dout[6]_i_2_n_0 ),
        .\Dout_reg[6]_0 (\Dout[6]_i_3_n_0 ),
        .\Dout_reg[6]_1 (\Dout[6]_i_4_n_0 ),
        .\Dout_reg[6]_2 (\Dout[6]_i_6_n_0 ),
        .\Dout_reg[7] (\Dout[7]_i_3_n_0 ),
        .\Dout_reg[7]_0 (\Dout[7]_i_4_n_0 ),
        .\Dout_reg[7]_1 (\Dout[7]_i_5_n_0 ),
        .L(L),
        .\Lcr_reg[1] (rx16550_1_n_4),
        .Q(Lcr),
        .baudoutN_int_i(baudoutN_int_i),
        .break_interrupt(break_interrupt),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .clockDiv(clockDiv),
        .\d_d_reg[0] (rx16550_1_n_5),
        .\dll_reg[0] (rx16550_1_n_8),
        .\dll_reg[4] (rx16550_1_n_7),
        .\dlm_reg[0] (rx16550_1_n_9),
        .\dlm_reg[4] (rx16550_1_n_10),
        .framing_error_flag_reg_0(p_0_in8_in),
        .framing_error_i(framing_error_i),
        .iir(iir[1]),
        .lsr_reg(lsr_reg),
        .lsr_reg016_out(lsr_reg016_out),
        .\lsr_reg[0] (\lsr[0]_i_2_n_0 ),
        .\lsr_reg[0]_0 (\lsr_reg_n_0_[0] ),
        .\lsr_reg[1] (rx16550_1_n_6),
        .\lsr_reg[1]_0 ({\d_d_reg_n_0_[1] ,\d_d_reg_n_0_[0] }),
        .\lsr_reg[1]_1 (\lsr_reg_n_0_[1] ),
        .\lsr_reg[1]_2 (\lsr[3]_i_2_n_0 ),
        .mcr4_d(mcr4_d),
        .p_0_in(p_0_in),
        .p_0_in31_in(p_0_in31_in),
        .parity_error(parity_error),
        .rx_sin(rx_sin),
        .s_axi_aclk(s_axi_aclk));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    rxrdyN_int_i_1
       (.I0(\lsr_reg_n_0_[0] ),
        .O(rxrdyN_int_i_1_n_0));
  FDSE rxrdyN_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rxrdyN_int_i_1_n_0),
        .Q(rxrdyn),
        .S(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h80000000)) 
    \scr[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .O(scr0));
  FDRE \scr_reg[0] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(scr[0]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[1] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(scr[1]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[2] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(scr[2]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[3] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(scr[3]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[4] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_3_in),
        .Q(scr[4]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[5] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(scr[5]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[6] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[6] ),
        .Q(scr[6]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[7] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[7] ),
        .Q(scr[7]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h00000000AAAAA200)) 
    thre_iir_set_i_1
       (.I0(thre_iir_set_i_2_n_0),
        .I1(thre_iir_set_i_3_n_0),
        .I2(p_1_out0),
        .I3(thre_iir_set_i_4_n_0),
        .I4(thre_iir_set),
        .I5(writing_thr),
        .O(thre_iir_set_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    thre_iir_set_i_2
       (.I0(\iir[2]_i_5_n_0 ),
        .I1(iir[2]),
        .I2(iir[1]),
        .I3(iir[0]),
        .I4(thre_iir_set_i_5_n_0),
        .O(thre_iir_set_i_2_n_0));
  LUT3 #(
    .INIT(8'hA2)) 
    thre_iir_set_i_3
       (.I0(lsr5_d),
        .I1(ier[1]),
        .I2(ier1_d),
        .O(thre_iir_set_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    thre_iir_set_i_4
       (.I0(bus2ip_reset_int_core),
        .I1(p_0_in31_in),
        .O(thre_iir_set_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    thre_iir_set_i_5
       (.I0(L[0]),
        .I1(L[2]),
        .I2(L[1]),
        .O(thre_iir_set_i_5_n_0));
  FDRE thre_iir_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(thre_iir_set_i_1_n_0),
        .Q(thre_iir_set),
        .R(1'b0));
  AXI_bd_0_axi_uart16550_0_0_tx16550 tx16550_1
       (.\FSM_sequential_transmit_state_reg[3]_0 (rx16550_1_n_4),
        .Q(Lcr),
        .Tsre(Tsre),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .freeze(freeze),
        .p_0_in(p_0_in),
        .rx_sin(rx_sin),
        .s_axi_aclk(s_axi_aclk),
        .sin(sin),
        .sout(sout),
        .sout_0(p_0_in8_in),
        .tsr_loaded(tsr_loaded),
        .\tsr_reg[7]_0 (tsr_int));
  LUT1 #(
    .INIT(2'h1)) 
    txrdyN_int_i_1
       (.I0(p_0_in31_in),
        .O(txrdyN_int_i_1_n_0));
  FDRE txrdyN_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txrdyN_int_i_1_n_0),
        .Q(txrdyn),
        .R(bus2ip_reset_int_core));
  FDRE wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Wr),
        .Q(wr_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    writing_thr_i_1
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[0]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(L[3]),
        .O(Thr0));
  FDRE writing_thr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Thr0),
        .Q(writing_thr),
        .R(bus2ip_reset_int_core));
  AXI_bd_0_axi_uart16550_0_0_xuart_tx_load_sm xuart_tx_load_sm_1
       (.Q(tsr_int),
        .Thre(Thre),
        .Thre_reg_0(xuart_tx_load_sm_1_n_2),
        .Tsre(Tsre),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .p_0_in31_in(p_0_in31_in),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_int_reg[7]_0 (Thr),
        .tsr_loaded(tsr_loaded),
        .writing_thr(writing_thr));
endmodule

(* ORIG_REF_NAME = "xuart" *) 
module AXI_bd_0_axi_uart16550_0_0_xuart
   (baudoutn,
    ip2intc_irpt,
    ddis,
    txrdyn,
    rxrdyn,
    wrReq_d1,
    s_axi_awready,
    s_axi_arready,
    sout,
    Q,
    rtsn,
    dtrn,
    out1n,
    out2n,
    s_axi_aclk,
    bus2ip_reset_int_core,
    Wr,
    ctsn,
    dsrn,
    rin,
    dcdn,
    bus2ip_wrce_i,
    bus2ip_rdce_i,
    ce_out_i,
    s_axi_wdata,
    \addr_d_reg[2] ,
    freeze,
    sin);
  output baudoutn;
  output ip2intc_irpt;
  output ddis;
  output txrdyn;
  output rxrdyn;
  output wrReq_d1;
  output s_axi_awready;
  output s_axi_arready;
  output sout;
  output [7:0]Q;
  output rtsn;
  output dtrn;
  output out1n;
  output out2n;
  input s_axi_aclk;
  input bus2ip_reset_int_core;
  input Wr;
  input ctsn;
  input dsrn;
  input rin;
  input dcdn;
  input bus2ip_wrce_i;
  input bus2ip_rdce_i;
  input ce_out_i;
  input [7:0]s_axi_wdata;
  input [2:0]\addr_d_reg[2] ;
  input freeze;
  input sin;

  wire [7:0]Q;
  wire Rd;
  wire Wr;
  wire [2:0]\addr_d_reg[2] ;
  wire baudoutn;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ce_out_i;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [7:0]s_axi_wdata;
  wire sin;
  wire sout;
  wire txrdyn;
  wire wrReq_d1;

  AXI_bd_0_axi_uart16550_0_0_ipic_if IPIC_IF_I_1
       (.Rd(Rd),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .wrReq_d1(wrReq_d1));
  AXI_bd_0_axi_uart16550_0_0_uart16550 UART16550_I_1
       (.Q(Q),
        .Rd(Rd),
        .Wr(Wr),
        .\addr_d_reg[2]_0 (\addr_d_reg[2] ),
        .baudoutn(baudoutn),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .ce_out_i(ce_out_i),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn));
endmodule

(* ORIG_REF_NAME = "xuart_tx_load_sm" *) 
module AXI_bd_0_axi_uart16550_0_0_xuart_tx_load_sm
   (Thre,
    Tsre,
    Thre_reg_0,
    Q,
    bus2ip_reset_int_core,
    s_axi_aclk,
    p_0_in31_in,
    tsr_loaded,
    writing_thr,
    \tsr_int_reg[7]_0 );
  output Thre;
  output Tsre;
  output Thre_reg_0;
  output [7:0]Q;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input p_0_in31_in;
  input tsr_loaded;
  input writing_thr;
  input [7:0]\tsr_int_reg[7]_0 ;

  wire [7:0]Q;
  wire Thre;
  wire Thre_reg_0;
  wire Tsre;
  wire bus2ip_reset_int_core;
  wire [1:0]current_state;
  wire [1:0]next_state;
  wire p_0_in31_in;
  wire s_axi_aclk;
  wire thre_com;
  wire tsr_com;
  wire [7:0]\tsr_int_reg[7]_0 ;
  wire tsr_loaded;
  wire tsre_com;
  wire writing_thr;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(writing_thr),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h72)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(tsr_loaded),
        .I2(current_state[0]),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "full_empty:10,empty_empty:00,full_full:11,empty_full:01" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "full_empty:10,empty_empty:00,full_full:11,empty_full:01" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    Thre_i_1
       (.I0(writing_thr),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(thre_com));
  FDSE Thre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(thre_com),
        .Q(Thre),
        .S(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    Tsre_i_1
       (.I0(current_state[0]),
        .I1(tsr_loaded),
        .I2(current_state[1]),
        .O(tsre_com));
  FDSE Tsre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tsre_com),
        .Q(Tsre),
        .S(bus2ip_reset_int_core));
  LUT3 #(
    .INIT(8'h80)) 
    \lsr[6]_i_1 
       (.I0(Thre),
        .I1(Tsre),
        .I2(p_0_in31_in),
        .O(Thre_reg_0));
  LUT3 #(
    .INIT(8'h54)) 
    \tsr_int[7]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(writing_thr),
        .O(tsr_com));
  FDSE \tsr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [0]),
        .Q(Q[0]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [1]),
        .Q(Q[1]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [2]),
        .Q(Q[2]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [3]),
        .Q(Q[3]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [4]),
        .Q(Q[4]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [5]),
        .Q(Q[5]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [6]),
        .Q(Q[6]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [7]),
        .Q(Q[7]),
        .S(bus2ip_reset_int_core));
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
