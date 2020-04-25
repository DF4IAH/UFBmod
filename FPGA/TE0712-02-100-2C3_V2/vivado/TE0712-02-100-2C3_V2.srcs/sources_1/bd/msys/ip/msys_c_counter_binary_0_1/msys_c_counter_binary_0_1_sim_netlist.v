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
UC6IIC+e1kM=
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
