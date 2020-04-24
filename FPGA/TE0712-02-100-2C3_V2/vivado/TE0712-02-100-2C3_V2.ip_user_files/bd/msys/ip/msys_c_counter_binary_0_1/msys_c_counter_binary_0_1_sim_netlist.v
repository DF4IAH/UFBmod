// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 21:09:06 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_1 -prefix
//               msys_c_counter_binary_0_1_ msys_c_counter_binary_0_1_sim_netlist.v
// Design      : msys_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_1,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_1
   (CLK,
    CE,
    SINIT,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sinit_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sinit_intf, LAYERED_METADATA undef, POLARITY ACTIVE_HIGH" *) input SINIT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CE;
  wire CLK;
  wire [31:0]Q;
  wire SINIT;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "10000000000000000000000000000000" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_1_c_counter_binary_v12_0_14 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "1" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "10000000000000000000000000000000" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_1_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [31:0]Q;
  wire SINIT;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "10000000000000000000000000000000" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_1_c_counter_binary_v12_0_14_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
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
n64XeAE+hkadrpwh6Eu6FEHYhjivkwezwzzz4NRSKx0LWLhDRYrXBzoqOtb6JIwd5kiQsUknkV/W
msrD7+3icgODPUITPtdTKfq8tOh7Vl8IuQ94nsLddUNfiCyjhzbIiSV6zkFibOEs13QFyPTApEox
iIzBqRoEtoWaD/pWobHpgja/8GVoc6/ln6bJ5zbLrNr+pt/x+jGVYFmQmi3BfgRDocDeJLfbEkCY
dcQVjHXNS80ZzlEa1vHDRDWosXX60v2HHq6Urs9iVCcyTfYwYTVhci5d0gwQ6arqjlQ6PdQ11m4p
mEJoKyY7QcoWjMtdxnbfKta5/JaoIKsEBQoMrA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KozLAOT4FysdSFti9xLmzYJuGRMMMI2OcCHGhnkPxlfcx+prbLZVJbFqdAyC0yUUYlU3QbizU7T5
kJ5byIk7yzuSxMTLl3UXcqRMSkGrr/N+/lJU5olTpL+UMw91nlttJt7COVhyoVV1e9AKtHX+i3TK
Ca3/fVtpM50wq3JlH+8ELu0OAXQyxptSmdqzk2IE5rX/gqhDFxhrTTXv6IC7JNhA+swfmGURZcCO
r4BHXLD62kX64Yb3KsjaCYjohsQ0CuGnWlqglvFM58+8eCXxZIyRpgsR7H4GJiE+2YSrgjtzuFYV
XEYPbo4z6vhfXf6DYWO6ti5CuOdPThBcWtPncg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27088)
`pragma protect data_block
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
2M2TIBHvsiw=
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
