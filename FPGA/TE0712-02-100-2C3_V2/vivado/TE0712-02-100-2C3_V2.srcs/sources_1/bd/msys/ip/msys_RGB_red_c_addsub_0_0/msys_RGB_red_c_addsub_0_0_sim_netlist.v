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
kzs+fXVAHUeA25Dxju78pjCvjVJU
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
