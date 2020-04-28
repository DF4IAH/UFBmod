// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Apr 28 23:53:40 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_TRX_rx09_pre_fft_counter_binary_0_0 -prefix
//               msys_TRX_rx09_pre_fft_counter_binary_0_0_ msys_TRX_rx09_pre_fft_counter_binary_0_0_sim_netlist.v
// Design      : msys_TRX_rx09_pre_fft_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_TRX_rx09_pre_fft_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_TRX_rx09_pre_fft_counter_binary_0_0
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 14}" *) output [13:0]Q;

  wire CE;
  wire CLK;
  wire [13:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "14" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1111111111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1111111111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_TRX_rx09_pre_fft_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1111111111111" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1111111111111" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "14" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_TRX_rx09_pre_fft_counter_binary_0_0_c_counter_binary_v12_0_14
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
  input [13:0]L;
  output THRESH0;
  output [13:0]Q;

  wire CE;
  wire CLK;
  wire [13:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "14" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1111111111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1111111111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_TRX_rx09_pre_fft_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
A41PowUZk1DZOHbRQCM4SHZPcZszML6JvdEMb4p6GZ8o9w2rdczRWoaDt+98s5r7IhAsty/QrW2u
dwf4+WlF8rs+mN8rUAeCq2RbP5SRs2qYVd7pDbEjkYy8J2g3Wcb7igsr+5xp/3/o/q7/kS8EISas
eBtw8Hk/fsRwXP33Z2ayEVu7h8RKT9S6RSA9KpJ8WMLIONL1dGHH8YWteWtx+AYnWF2DCLapWUJA
mlIM+nPgncgA/KcH7SWOI/Cg39HYgjRPmi5qgAvRQGh/qnTrLrGH2g8M5heuiGD8t/ZxNRhLxd5G
rkZyGNTmxbjT9PB8ktTxE0qXFZozaBTtsar9/w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EtxysZrtiLcaHaOKNI18f2iqcvS8oHfNk7IXm3a5cth36INvBtjS1OrrDLTINxzqG0RTop/7dwOd
lo0xR7VHvagrmaN2WmlPuVRPHtqJhlv+XwHi8+ifKIGgr+A7PWBNUvKJHFfrsbkxqLRTO7+V1+pG
D/qcKog9gdTO2l+rokHm4C3mLYkeN/TjrTtaG9uP/7vL7FIi+D3J0AwAL0nGY6bZUho69zyHnc9d
lzycNm3O4jA71AtUV4E+sD2mgWqLDDraGScb9P3o7r20b/hiy3dM2f2fiCx8Q8O8x5bXN2O1yic9
U+f/zS1p99iStmxyeiXNFASHHrDVs41e8BUT9w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13280)
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
