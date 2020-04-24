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
