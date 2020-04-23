// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_RGB_green_c_addsub_0_0 -prefix
//               msys_RGB_green_c_addsub_0_0_ msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_RGB_green_c_addsub_0_0
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
  msys_RGB_green_c_addsub_0_0_c_addsub_v12_0_14 U0
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
module msys_RGB_green_c_addsub_0_0_c_addsub_v12_0_14
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
  msys_RGB_green_c_addsub_0_0_c_addsub_v12_0_14_viv xst_addsub
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
