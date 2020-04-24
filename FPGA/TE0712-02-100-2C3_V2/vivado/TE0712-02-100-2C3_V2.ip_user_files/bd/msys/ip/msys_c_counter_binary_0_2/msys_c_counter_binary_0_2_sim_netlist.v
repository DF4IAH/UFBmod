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
