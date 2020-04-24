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
