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
