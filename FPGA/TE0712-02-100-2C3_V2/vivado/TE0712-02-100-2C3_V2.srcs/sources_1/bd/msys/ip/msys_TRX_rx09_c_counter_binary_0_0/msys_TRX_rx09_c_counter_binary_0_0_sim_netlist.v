// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Fri Apr 24 17:52:44 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_TRX_rx09_c_counter_binary_0_0 -prefix
//               msys_TRX_rx09_c_counter_binary_0_0_ msys_c_counter_binary_0_3_sim_netlist.v
// Design      : msys_c_counter_binary_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_3,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_TRX_rx09_c_counter_binary_0_0
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
  msys_TRX_rx09_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_TRX_rx09_c_counter_binary_0_0_c_counter_binary_v12_0_14
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
  msys_TRX_rx09_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
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
IuaP8qdIs1xv50JJ0sEesz52QQ3l11MuOkv82xgKek6CvX+FhDuTiRmTOEEmg5zJK9JKnCZrI93S
dI1HbW5AZwJBeAedUYGVJpnXiW3pJYPkiFdwXrOp9PRVz02cR8EWX0jON+QA70SeznM9CPdgxzql
GkXu318dlgK6RkrzYN6uJH6DWjPipOo/tR7BFb0366dpFQvuIsmI5C/pFU4XuIfq+9uEvHd39VYv
b+k+4Mc/QnTA/shXPlvsUPMgLETdcUA5cfdkwm0G4IEqXI7K5i+RTxh1UJR7ZSxAuZBL3WOSWmUB
JKagzrdrQzjfI9AOeipm71GQRyYg3OXaUoEaHg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TZzilU5d4KU8lyJjreJPQaUBkvqH5F45HZ9+ard2lGTGxitLowAKDW5Mly5szGX8FnWibYs6YIAw
4fJtTW2cNy+C4J8VD1I2bZ2c9EqjWI7zzFXE0NAEhcIsDXGKO2ntZp/e7irKUuMZNwMew0mC8ewY
7n0du/FSSIbAk90rydmMU36fjCzhtoy/AKOon6ywDVep4oxFH8X2kN7uYj8bQqyQ4T87SIR0qAYN
7QtAGYQQnFTxatp+sXbUtrQOJLJRRnltbsUOhm09fJtj6qkMna8fHI9vTMxi0/WUCJzJoJB4t+lw
uM9X3tS5ohktFPBhWiRulpVj9ts75//15eXfhg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7056)
`pragma protect data_block
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
Fo6o7nSdW2mdWyWIg3G6u9cO+f0BUA==
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
