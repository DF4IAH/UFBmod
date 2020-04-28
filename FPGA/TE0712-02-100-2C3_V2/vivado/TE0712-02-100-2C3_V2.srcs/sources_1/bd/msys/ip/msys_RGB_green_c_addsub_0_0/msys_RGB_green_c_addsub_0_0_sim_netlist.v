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
