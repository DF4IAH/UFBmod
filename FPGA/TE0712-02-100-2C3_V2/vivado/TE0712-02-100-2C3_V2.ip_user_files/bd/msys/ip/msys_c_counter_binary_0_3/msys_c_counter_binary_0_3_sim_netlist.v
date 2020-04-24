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
