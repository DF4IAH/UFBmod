// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Fri Apr 24 23:24:46 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_4 -prefix
//               msys_c_counter_binary_0_4_ msys_c_counter_binary_0_4_sim_netlist.v
// Design      : msys_c_counter_binary_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_4,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_4
   (CLK,
    LOAD,
    L,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 16000000, PHASE 0.000, CLK_DOMAIN msys_selectio_wiz_0_1_clk_div_out, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME load_intf, LAYERED_METADATA undef, POLARITY ACTIVE_HIGH" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME l_intf, LAYERED_METADATA undef" *) input [12:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 13} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 13}" *) output [12:0]Q;

  wire CLK;
  wire [12:0]L;
  wire LOAD;
  wire [12:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "13" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111111111111" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111111111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_4_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "111111111111" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "111111111111" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "13" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_4_c_counter_binary_v12_0_14
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
  input [12:0]L;
  output THRESH0;
  output [12:0]Q;

  wire CLK;
  wire [12:0]L;
  wire LOAD;
  wire [12:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "13" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111111111111" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111111111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_4_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
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
kC941NvQSamv+7dOa3rE/QIe9+sFvwGZ8+hOtGVysx+MFZii5ydMUXYFAbHDIhY01UjxNa1+HTZQ
yV4GPZjbIGQQfB5ImZ5AKWHSGXXMXmh08U8jN9Dm/Wz88GwWAjB0r3a+w3Zho5WYzvauapeuxwht
IgSgaRsNag0dB3iFRo5BDiN4lxClSbvG6Zf02xt3I7OSO3IWTbhqaVIa5nxNWjU5nFMy6PLH7wMd
v2k22aCGyrGMuGCY3ChzbBjUnhOkLvRuW+aQAzJVZI1L+Tj1TfOAVgniE+BLqu/4h5ZVg18tBfJ4
dGErAM6GcdsBtMgyT+uAThx3mMZTTakaMs+DSw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6TPmGCXejz3lzdqeNKL1/HjU6rhM+UBu+fpUiIRGkPY7TL3RGLJQ5rnt9RE1fp65Z8640Pn049vb
l9OT6QtmwwAnDBr0SZI4nj2XC4m2VHf49N/oXFC7+TSah1rGk4a5dYR7d2+C2cq5Zb4e7DzzVjlY
XLm749WEb0opxYXDA05h5shRCA9V7u4aQcD+Pi4tIVqUsk5pi0k6UOXDRctwi9HKUZK1IwhBwSd3
lpr9jW+E4IAX+EbpiW1nGq0/UhA/9mtfQZaTVYm31wxKW8hSbHir6DPVPOGZtJeazDL2MydOmxyM
xNfUcK9+89bVB3UJzWt+pDAwFY2UyWr0IDTcnw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13968)
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
