// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Fri Apr 24 17:52:44 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_3 -prefix
//               msys_c_counter_binary_0_3_ msys_c_counter_binary_0_3_sim_netlist.v
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
