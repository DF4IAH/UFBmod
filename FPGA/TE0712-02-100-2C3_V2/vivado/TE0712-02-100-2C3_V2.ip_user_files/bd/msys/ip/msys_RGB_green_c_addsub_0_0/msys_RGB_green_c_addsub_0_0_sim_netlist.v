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
