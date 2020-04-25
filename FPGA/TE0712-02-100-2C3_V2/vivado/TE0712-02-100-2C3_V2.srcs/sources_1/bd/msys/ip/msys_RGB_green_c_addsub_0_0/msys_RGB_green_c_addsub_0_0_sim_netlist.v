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
