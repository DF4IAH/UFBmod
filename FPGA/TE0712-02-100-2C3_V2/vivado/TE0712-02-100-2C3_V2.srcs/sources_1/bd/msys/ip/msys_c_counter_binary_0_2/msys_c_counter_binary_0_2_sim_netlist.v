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
