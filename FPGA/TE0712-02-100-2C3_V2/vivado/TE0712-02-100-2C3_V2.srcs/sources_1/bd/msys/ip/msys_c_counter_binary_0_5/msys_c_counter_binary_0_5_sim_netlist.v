// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Apr 28 23:53:42 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_5 -prefix
//               msys_c_counter_binary_0_5_ msys_c_counter_binary_0_5_sim_netlist.v
// Design      : msys_c_counter_binary_0_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_5,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_5
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 12}" *) output [11:0]Q;

  wire CE;
  wire CLK;
  wire [11:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_5_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "12" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_5_c_counter_binary_v12_0_14
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
  input [11:0]L;
  output THRESH0;
  output [11:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [11:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_5_c_counter_binary_v12_0_14_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
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
lLX0nCTc4eHgJ7auPhFq2nAGEOWhyyqdGdbf7zXcqEmiMHh4UI8EPWaE0MQS8ZmNh1nX2uLugnUj
LTie5KZX3Iilgf8SKiYg3nRnxPiF9S4SYeYJ3qi1PAyyCB3iJZg+/NzcKiU3xyaN9391cAoLQ1ZC
YccV8JSRkEqtz2gBiFHukecocgdymycJPFURvtTFywInc5exxsBNJ6/cV92o+2q42P7TUCGxV3hj
+34SPTF/tXwYLcogiikBr5gIsBozPe6atGdp5VofBVP94MyWsag9q6UnjbU5QKFBGRY/CsPm4d8C
AtK+ndMQ6I5qQ5cRVVTq29WIsmp+qfiU7sRUIg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ylBSNyZJWjzL2f+VssGJZ8rcxaCvtKFsnKiquJXSDXMybe9Gdht7UV3OJMFDQfoQptX5+GtAaP7U
ZGrBKjPHHZXHCIBdYS+yUoFwIcS/nx/XUUSOGJhjcPtsWBorBfY2o52VKNsGc34aCcay8alYq1C4
JzhPgz9m+J0TzWRfBC5zwk2m25dhqyETdyCTndh2fSJLGTttcpziPBpsVFDzc1uQGw52/vbVJsdB
rEhzC5SwNFc6jlTJ1kyq+JCDaWCD8CdUuL4+quN9WZWYkPpILZ3ddT/C/5+CMpe+WlceH7vhJJPA
7mQ+rV+ZfTcxXVwnN1wl2GORSrxPuW0B7EicHA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8544)
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
