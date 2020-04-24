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
9fIjykli3mek1K7l8q0M63292bJrHg==
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
