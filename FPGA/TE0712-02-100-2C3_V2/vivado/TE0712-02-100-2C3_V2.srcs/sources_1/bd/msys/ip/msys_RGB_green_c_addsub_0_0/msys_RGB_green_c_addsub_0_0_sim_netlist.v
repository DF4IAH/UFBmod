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
