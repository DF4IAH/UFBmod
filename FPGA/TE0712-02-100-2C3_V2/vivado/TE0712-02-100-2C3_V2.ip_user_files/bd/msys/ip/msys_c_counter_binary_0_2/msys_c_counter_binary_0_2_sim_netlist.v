// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Thu Apr 23 18:58:54 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_2 -prefix
//               msys_c_counter_binary_0_2_ msys_c_counter_binary_0_2_sim_netlist.v
// Design      : msys_c_counter_binary_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_2,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_2
   (CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 16000000, PHASE 0.000, CLK_DOMAIN msys_selectio_wiz_0_1_clk_div_out, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 7} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 7}" *) output [6:0]Q;

  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

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
  (* c_count_to = "1000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_2_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "7" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_2_c_counter_binary_v12_0_14
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

  wire \<const1> ;
  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
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
  (* c_count_to = "1000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_2_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
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
VgeFPSVDLR+jX6LXVIO8WFA6Wnlj0DXJW0bZrirBwW2k3U10UwkBZePTcKzZJkTmS/n/S00Z6EzC
s9xja+E4hgoLbZhFUX6FpsuPKwSXUr36k8lMcetn0rbeQnT8oiDY2AbfvWR4zYZWF9RXN9eP23oG
aE1fHamHFeowAz1f3w+WBej3hdHsyigY1ER4uGvAkcJiihlohTLcenR8h4Kmljz0TWd7ssGj3w5f
+It2FlIlCj2bOg+QTf0cgVUjBPl/lucLrR/5J7YZwwO1Fmqx7KkU9NNYQRgYvQVcb/15ZStjTVKH
gMjWy56vM1qwE3dKP0cl9WBoPLC/HvjVFC4h4A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
usD3UpcPuf6dzon2UJlGGBCxTw8yu34DRZk3EB7mC56M5lfi5f6WfYnvb/AiNQ/mwEpjQxibBddQ
L92ew9zNPkwSVtf1spo197MBdx1qIWyzG6GMI7/11y3kvKPOTquo2VCx/6XG/RWytiy++KHVGXWl
/9eHk2HcvbO1Q7B8vvD/Hhg9Voxl/8xPmSnBZJscdj58t2fzp2MN9kJTImIjFzPTCbEwTS2tdfMT
Joss5PtwHAfPVpZGJH1NgOfWLy/VmpKE5s8syKRSc7pEoiAKr+t28WAwNZKY80XV5SIDw9EOI6tG
FUvcE50nIM3zFjR5XPHV3cRxcGwtD0L86BheFw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6992)
`pragma protect data_block
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
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
