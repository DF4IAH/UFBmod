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
Qj0R2H/pGJU45YyisGhETjqWhHjA9Q==
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
