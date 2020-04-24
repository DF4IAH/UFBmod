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
PWCfyYNW7X+rXqWF+Rnn6/LnUba8
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
