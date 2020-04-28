// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Apr 28 23:53:41 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_addsub_0_1 -prefix
//               msys_c_addsub_0_1_ msys_c_addsub_0_1_sim_netlist.v
// Design      : msys_c_addsub_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_addsub_0_1,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_addsub_0_1
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef, PortWidth 9" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 12}, PortWidth 13" *) output [11:0]S;

  wire [10:0]A;
  wire [11:0]B;
  wire CLK;
  wire [11:0]S;
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
  (* c_a_type = "1" *) 
  (* c_a_width = "11" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "000000000000" *) 
  (* c_b_width = "12" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "12" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_addsub_0_1_c_addsub_v12_0_14 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "11" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "000000000000" *) 
(* C_B_WIDTH = "12" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "12" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_addsub_0_1_c_addsub_v12_0_14
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
  input [10:0]A;
  input [11:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [11:0]S;

  wire \<const0> ;
  wire [10:0]A;
  wire [11:0]B;
  wire CLK;
  wire [11:0]S;
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
  (* c_a_type = "1" *) 
  (* c_a_width = "11" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "000000000000" *) 
  (* c_b_width = "12" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "12" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_addsub_0_1_c_addsub_v12_0_14_viv xst_addsub
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
LT7QjfbZnw4426Yq0+lyu1OaumL4u135hySAIgcF7Jz2VO3V2HQD/nSniLJ/fNa2F5RSFdXUqzAt
HnvKENWg9lqvAwiqDGT+0N1KXTD70OIwX92QFz/FfLi5hGz59LWQrKq9TlzD6Zpk9vcii5imrhsZ
3evhgTH4xriUUtGcZp+4l9zDGlQUAhP98LcMtMedh0KDZ6sRvmSKUdk1rL3yWJ9hY58Eri8GMDjI
Rjnd7ivzY8/BJz4ezD4V6paDpk/0/FFY7mslf1BGjZNVOzzceesg2hJN8zTMnfEf5OoIylkhuxiD
bb7kKJFuxwLiurUydX6V5dDx23dmTvqNvnW8Sw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0y3HWwe/+WPpY4eB6+1eWIOt4BLOC+b5y1tbPNby+hEOqFri/WIZUlsXyJ0U/g3IBkZFwj3p46ba
dGOOGofmDP2IVWxP31F71vpR3YAzstg4nSy+mkk3lpfLo0DJI3bdvIzqFDq0iAgfCTh1bM5vLndW
aKUWpYwok51ghq5wcUqGJEqjp9OA6vPWugPCnEv6Euu774q0lszGtVJNrQwdxP9aso0hrUXbKmLf
wPlkX546OSlyzqmLgzT923i6eMoSzpTP4HJW2Qz8V0u4sH/IJxr1DZ370sR5aSGmSAehKv122jSQ
IV8xr3wZg25H2qzriTocGt/jtyVGtWMbhv34lw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9808)
`pragma protect data_block
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
E6AdICRg7BBCumJ/rtymBau8sQ9H3SU8
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
