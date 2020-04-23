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
mIJo7gVpWz0=
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
