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
VjgqeXjF8z93XQ1WdoSv47L9I9XRrQ==
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
