// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Fri Apr 24 17:52:45 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_c_counter_binary_0_3/msys_c_counter_binary_0_3_sim_netlist.v
// Design      : msys_c_counter_binary_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_3,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_3
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 16000000, PHASE 0.000, CLK_DOMAIN msys_selectio_wiz_0_1_clk_div_out, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef, PortType data, PortType.PROP_SRC false" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 7} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 7}" *) output [6:0]Q;

  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_3_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "111111" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "111111" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "7" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_3_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [6:0]L;
  output THRESH0;
  output [6:0]Q;

  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_3_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZeWaI1V646o3lfZMjPhfRiqH8yrcBHqB4Jp7GgWhFHtbq2FZEb45lF2y+4Z7Bo3p/Fon7Fuwxi+G
pfvZm/J78Q==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
U278GGzuHpvR71v2lk6OfCq3UHPLemHH7G5nzQnoPxdKrkBUaO2E2nmWqUhjw/5RQf4sL7AgK0YU
DTyR1Zy31V08/arF1j8tyQmnhukfOHqr8ZKmmlkjtKowN6K59DPDDYpttGbqfNTx6uO7nzk6l1lS
Rsl6q24TQbBd1uaLrws=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pi7LeG6/F+tmgR2mSEDwUOPg9J3vRSMXNe0HxNeRq8mOvIHmaT6ypbEm7FgHQuSGN5PoQE3fMyP5
X1YruG3K+v9yk+bGce8/ZGbvghS7lU1h4isgDJ3niH+ALesIsr+TgonGh0Ol+XSo12YtX94alzmU
tkyr2R4bVkkpBHvg01MOuYc7cUQmHMBcy0p73aiGohZR42Sd4JJE4Dpnes8bCg9WMANMmBRrKs71
iPhWfZ8+p+ZM8j87IIQBV3IkpuHOArxJWcVZ6gR2w03ClBv6IOrJWD/WF8NZt0cfVRUoDc2P1DKB
ipFw8lJbMCDmw0VV517a0HsUZBxeyn0muuNqAA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bbIwBeNnHf2J5T3ZQluXrXgPlj6m4gdwenpJz3huRnilAqUbGa1gu2UEyWxzy2E3PV89zzGxuQ4X
5cvz29rO4f7FEbO07WMfFUcpIbFvYSPlSxQYuI7XvOEQ9QYMYsv5GaPrTyG09kYnpcmfHVScrGq4
pn30wsMt3ZIgV3s27Use9okvsfsLsQIc5o/DZfpI1ylOLXmgQEMl8FjUBSUNK0n4n7Ejtg4spgqf
a2jc9hq8hDzC7ukBc+mK0rNoXxALIE8Vm25bBWNVfkuOFKYtQFBlk40sbLvePUn/8g5ycOo4+tvj
nxb/oaG7tMKbswgJQIf9YUQoBcX3nQbsQPYmNg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h2TYH1lUjXbalHf8TK5hkjlQ30ZvEXKbnsTIUDUriXGbkyZM7BifousSvZesivmr3O0Li1KtytUe
X8B6e5QJLh288DLxi2Feje/jBR9xUdfb7uRl0Zqc/mkhMhc6PlTYP8kRpJlFPVYiyLOb5/mR9bKC
hI8t1lTdQmI8JQS+ncVrVb2xNCZ/nSnUK+AOD+nS8AFXCCJ8fs7X4HdDlmZnjcvSJNzc2pceLJ7x
8ADHhzA7/Csf6km2ypCu6k1ULmaRXaMQJXIpn1haQW+TNmCz/vj0i4/KoiStAn8OMidEPBEyG4CA
KCJ7cbm42dK7pSPjFEJ2zxPizwmR86ozsi1aAQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QlIHhNRjpFN4gXrZLn4iWrP6DODrKGhkK8sIm8VdwlCCNZhI6sNcceCfypEpeR1jiHjUiA5WpTiI
j4iJiEYtjpCbETgn9WkO3nceO2LgCE3RyuOgDABhkrAvDiNFeNUzgKquAEgEOo19rmp5ea/jLvYf
vE2VK8ql8jfwPNBfh90=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GF6UgWS1K/8tgAYNZd7orM2VWyBHqwif3OcunBF4fsKaVq8/BzcJgW0FVVikxOFOEP9MXjduR2kU
ECsJ8vPQoVz118Q5BfR27i/hgHlUKqw8/t2t9CZLbTAokB95982h3WFvO4mhHfqTwne/mCGbOVCF
VULMF7F3+LpRfYHMeplTyu6wSV+Tocz0+ohE9L2wTxo28h77pdziM4ECJnzlK0fdV02EbPj5Y3Cq
rAJHz3xHysVTuB5OFgs74lCJ10XKGk9d4jXBCMT9BJu03xDIgdbml/2DDg33uFpPPEWvO4ox+xim
HSGSORi0muLp9RWOGFqi6FFl6nW7A2EPETDA+g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KCmYBToXpkjbWHaI5FWDbAXmGo+FM7e0dkhJ+0ARnR9H6w2VEVRm4XH/krsJ7Z0ReGvxHW+eYCz4
fV+TxB5V0xo/1ByEcAJCqDietScNUOXBdb1CvV2rS/kgV3wF7gh806t8Dc1GLpw0uCax4AvMI/Ai
KbGWKs0b6XrAU9/d7z/MahC8ZFEDS3fr+P87oy1Z9dRlKEb1TzaGE1XcxtVoRbZ3e/4v9lnz82TY
r/f3iSMoRNf7X1S1UJWJJjOoMWxojPIesZ3Y6lYMgw5j+wBIfS4M19hlYakoPRXHEiJZVvyra2or
G/OIjuk6GNexumwfk+2MOEZ5ZooKFMxgjRxUbw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Bdav3TStqblMDyqdlRxhi5O8zac8VLHDyBpMObInh7eTeXUcrCO+TWJdRa3CXOi6UeIHfX2193hP
ihmTCYINctODB2gQVTKvGji/iVPyO74INKcExcblL9/yz+gLDHLpdIlIsOufY+t0Yor2hYiFpkr/
0P+qt/05In1CQRFBxJNxW1Dun6Zke1ZYyU/U3nSlgP1ZyBZXEIwNoaATo+EeQemePVskLI+dqUJn
cZXTfUfbScn+qcMgI4PMXulFnQ8iv+GTMAmaf7ISDEgNuc1opyejJfiW30p1u5FAw3ChpN5AQFu8
VY4d6ALTG74rWqBs1W5uGP5vCRd8QUiEj7mKKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fP1upIKpgmNfgvO+eyFn9ttnjKsN+5q6SKlwjoSyeSVodFS/pmeBWbyhGc3EZNUfW7HVf6B+mCfB
RrxwDg3f+Xe+/68SMSSmLUwsk3p81rifpFL+P8BaatfbH7bav4KRcIO54WNVCRfggwSf2vbS/v4Z
XhhlUrQOfd7tIsgYuTpo9PjmZvINCNxwZBv7Q2peD84PrVmY/G3F0ueEbZmkHApHBgXNekVBZCNW
oMC3jBG668C2t86cI8x4W5wo+337mMFzI3hV2W/uqlz+Gn74FKK10qMpuPNpEKORq+Cv6qw4veto
qZ8XwncfmmPD30INaYbMKtV/XnJNekIhYo+jNg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
nF8NN1/vPrmmfQcRAyvP/2e4
`pragma protect end_protected
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
