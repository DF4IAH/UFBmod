// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_RGB_blue_compare_0_0/msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_RGB_blue_compare_0_0
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 9} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 9}" *) output [8:0]S;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [8:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_RGB_blue_compare_0_0_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "9" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module msys_RGB_blue_compare_0_0_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [8:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [8:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_RGB_blue_compare_0_0_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
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
gSs8dO3k3Yz4JWR6KAyyKjN7zCREonCpLAwXAV7Wf2B7pYq0TSl+goTKSE73J8TFjSrXb5HcWpAn
pBGzzq8XiehposIi4/FpFPRsqUwKSHMqKinThYEarH/ds+F38cj5HxPpsg8y9ddLTcflDIal+BAG
uG8xCNHikSmjZb4/3rgaJsvxiUyLXvJhcKBOFB0rtxeQSVPei1xTsKyJm6czWQxYqOu3q1OQ9jko
V/DKOv6P6oXGjHCnlJDr3esOFFnAfOsNmiQSn/9Ts6x6EfRvzHPVa51kTo1IRqRizZB4oREAcX25
TUvMHxexijh9GaFz8/b1Xdcc4/PGREZpGiMb1g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tEHjRRnvc6D4+oghmKvj2bE1+VFDlsUb60A23BkwOS3oApFHG0GYDPzXYQNqGqHdNGw+ZcHR72K/
sSlHaN+dJBQD9BYlAngXEyxNX7ZoOjc0qmK0nhzXUDkdyvhQJbztAjtkUg/TIwzZu6B5h6qdrPzZ
jCa9lGhqhB4Es5HsRplJBzh+2WvmhFKLT8wA8zI6fjPBDwDe6xiiSmlB6Zqgrj7SwK6fEXtfAXX5
z0xBVgRotps+XusRHGm0cGfeHMx72pWzZ/pY2SF3ocZYhwDlMh35ejN5XD7PTGIOp6jkkl/rWR+3
td1ZNS3hUyhor5WBNp4yierzAJtsqkj8e3lX+g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8656)
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
