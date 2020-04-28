// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_RGB_red_c_addsub_0_0 -prefix
//               msys_RGB_red_c_addsub_0_0_ msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_RGB_red_c_addsub_0_0
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
  msys_RGB_red_c_addsub_0_0_c_addsub_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_RGB_red_c_addsub_0_0_c_addsub_v12_0_14
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
  msys_RGB_red_c_addsub_0_0_c_addsub_v12_0_14_viv xst_addsub
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
lMREvIFjwKSr1t7evGb4Kb+5+7em5WyyaSCiX6FVaD/XbsS9AZFc6U7mFEl2YFxZuOMwHcBncBBb
YrJTFEii4Q1Pci7sjCeNcTRIZMVklWzaQQEXFdYUJONo85pE4DPB0olBRUR+oiAcUKTf4esDY+v7
0md5flfqsF6w1Y6qN2pa+2mDi00OcGjp1j4pJSqLjJxRtVCVdbKTL+nIKestQ4MfnDJAyh10YHMo
EjDo9AC+KLveYRGF/Lr1Y5dCGRjS5mrkFBmrGFTnpeJBW4FUuVTqBxyD6+czfAgmyOvP1pJqhdSh
SoU4/kB9hVWAyzvnOQlQUIqK7MO/npryuPl5UQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l2mB+Qh9DCCfp9qsGsljHNmwzWLDQtsSP1yUeMZ//ldSksFVpnWMvAWLf3LhMbIVv/cKL8EwzV1k
SRSCSZBWfTqOJC409/BKczLcPka0ucr1Nhy/dB1jaG4pl1Gb0/8F1bi5TyeF7W6l+ZNoiLg9rxV4
8VqdvTaf30OcUVtOyg5mGriOsw4Cb68tPtIGFwiBx+sW8kEe5jzVRMQ210dnleMam3OlSlFIe8AS
PdnYM8hdAPg5MYG+YzDu+hJzNSnCTI9Uha3/LK7VOcxDYezrE3ezIb7oApQBlypfXmdvPPbexA0+
DxROYKpANJI8iDJdnfzR+Tyc4QnkrgXecqv9gA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8544)
`pragma protect data_block
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
8gTQky1Jr/BL3JAE7OnJUbK3shuq
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
