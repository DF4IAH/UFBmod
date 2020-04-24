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
