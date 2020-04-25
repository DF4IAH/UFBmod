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
