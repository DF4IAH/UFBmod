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
Bf80OdbNkN/z/duF94rcqAZgsAIr
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
