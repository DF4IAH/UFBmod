// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:09 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_RGB_blue_compare_0_0 -prefix
//               msys_RGB_blue_compare_0_0_ msys_RGB_blue_compare_0_0_sim_netlist.v
// Design      : msys_RGB_blue_compare_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_RGB_blue_compare_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_RGB_blue_compare_0_0
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
  msys_RGB_blue_compare_0_0_c_addsub_v12_0_14 U0
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
module msys_RGB_blue_compare_0_0_c_addsub_v12_0_14
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
  msys_RGB_blue_compare_0_0_c_addsub_v12_0_14_viv xst_addsub
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
1U0Wwz2PTOTgu+Ap7o3JDBOQpOZn
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
