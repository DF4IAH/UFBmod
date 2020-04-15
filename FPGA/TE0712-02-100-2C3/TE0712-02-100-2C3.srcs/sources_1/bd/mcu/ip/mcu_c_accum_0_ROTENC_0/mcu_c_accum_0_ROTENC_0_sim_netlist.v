// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:23:16 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_accum_0_ROTENC_0/mcu_c_accum_0_ROTENC_0_sim_netlist.v
// Design      : mcu_c_accum_0_ROTENC_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_accum_0_ROTENC_0,c_accum_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mcu_c_accum_0_ROTENC_0
   (B,
    CLK,
    ADD,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef, PortWidth 32" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 83333333, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire ADD;
  wire [31:0]B;
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_accum_0_ROTENC_0_c_accum_v12_0_13 U0
       (.ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) (* C_OUT_WIDTH = "32" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_accum_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_accum_0_ROTENC_0_c_accum_v12_0_13
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [31:0]Q;

  wire ADD;
  wire [31:0]B;
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_accum_0_ROTENC_0_c_accum_v12_0_13_viv i_synth
       (.ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
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
dSeZRmSWebtpOR1O9c+IDTdlMH9/1hro8PqDVDl27v005C5MqyZKeYNm9mMQ4XxWPZxFv87c3Z4n
5Uz6xaUmaA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C1X6j2CN/BrcCWflKLlsg+cM+rksMcYf4EY7flfh0J07Kd6Yz1U8b4CQa6qGoE2Y/wXsD6+gLu1B
2quOLx5FDsX7IQ01fo4Wy5qqUx/igSc9hpspjPHf2g+aIJkObQiq+MmJ+KTB+Mr045wlFkkQImp+
nDfZhNfvYWVtC9yy0Mg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HjLqlbAvfCfrXjMuBZHqAXPJS1vFnuk4uVIm/P79GrZZ9F4hFvwWw6h/Zebc7LHBZ8aDoz2nqBGS
agpUUi5a/7KL6U7zc4JR+FiGSOstAhOnchiAjnOL/ldhpQkZIkSQSTy9sflsdb5yUdL0uPtUDYKm
JiJ+7sIur9MpneraAAsadcSxH8JIj82UxvxsEWic+lRUQBGZFYyW0a0weg1TJA3+efxfenYDiODb
8jzwBuRuSugqAtIDl3yWQJ9IcNkG+CU+BGRm90QOw588wfIZH03ujkyY04caLofICJJNQUmw+DM1
VDUxFyWr5tAkQVtSuA6xeiwuyy2I65doiiKY6w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jBvJHqZCB59aFpCz1IePy4RYqbdYJK8+fPkLRFZsA/PaDkJTn3Hl79AMa4nnyc/JiDyDTouUur+B
wq9KbIkwWHA+V1GYoCQNsRGcXLp203F8xGa0WwDCMkQ61DI8d+vX/vCNY6WtVir5NydV3RPPeiNF
noQc9J8fdyNdBk8Dxycu9m0M6hA7pKxhqzaHGTgDfbTL5nSSisEctrk7xIKxRZfDEOjb/HgQrPu8
PxKjuK+PWdRbd2TYDPTYnN2aSVMTc6FECz/tkuEDTDbHOolKjwwgmUiTQnpnNMkoUeVX0sUgETZ0
PKLh1yOIslZFd3mse8z6tXWAOjf/rOzL2t0EsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wfi1Xoi9/LK5icaWPECZ2+1JTGzZYnEl3d+vB8OHM+D4/fOHr3MHHVZ0qGciPepgRoPPmPsVwn9B
ArC5SHMlmrWWF5Z9WanD8/2Yrj5Bi3kpeZ37ays2Rv60e/FbcLgpzFehbdd70uh20kKd41JucKIG
Pqqwd9WOovku5RQDI9cmBTOzshupNa5+d+mxjOcVuX6Z0iiYgrqSoYVsnRBBn5gTC/QcQpo+5G9C
ns/bzHveQR1VYA6IFM4GmlqKjaDc2w1jfg/FWtasz5yKFmkAp373q/uDiliz3SkRfXw+ciWt0WEu
xoNuMpdlbRqGAogaFMBPgBhHYDT6o1aa76AXTQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DMUDPZjwKoonOS0VVbYtITWEUX/2WEHTClm1HjCk/vPm2O3Uvu+dFPKkbyVwsC4FU4hlJRDwWfgC
oaXUKoljsM4sDKmfg7+qAjFuZJq5zk0fZyjAT8T/ZLfQ6BlQ5ARAZJrb6mZr1VppAca86m3l0Qdv
ngH/g/XldqQKrARLx4Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C7PFVsZigY1uTEEQM+/f4IwFmUMcqTrhsXoxQyu0ggdL9ucOj1dbj+YWrUORvE5egEx49rO56kTw
tDIj4NUh+zIDEY+ZVj9luOJ0+6xsEPBCJrz7XamiG0StFGzjnZF/DhB6wjRraeouE/H3ANL9I7r8
dOj5uvd06ApE35mLiFBo6gsfno83mSOasT0ZH4dVuOH4l0Y2v8BrhyMvhYbUsCZQK3X0uembZyhz
VjqiMeFRF3MGpFD3QZHvnui8DK0HgE0ax9Y0wqriLLm6qBX91UKKcgItKLtWuQF3rEV5jxZJjv9j
jJUEjk4e+X6nMNcMTB0QaLYW6kr5oAuebhwiyw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KgpLKwW+rogp04p0AEBV/kOYB7f5S/qFCFaQfdk49me6JYIVvlYpPCcj9KsDdjUAnyYtn7ClbkKd
cZjwAD0hfj2KiaUbm67hK23s65EZSKaYI/9uFpVp6La30SSEC53V6CizZWCI4GSillV/UrE/5Ves
aolymrpiFIsYMyluFBusTxA5j01gwetJX1XvN1T1PQSr0aWaj1gD9rg7WeBbyemffn1sHxUhD0yC
HG77LHpO3j8daCLkeSlIeX4S9b5iKPauY4ftLwPIXYcybIHUzaArfpfmzeEYtXyfj9/IYXjkh+Dw
pmGtap2pjbCn5Cx4y6MIN1DwetoBVoY5UFhYSw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nV8d+i4/lVzwi55zMrEcgpOV5F4POqCJbPxmd51u32TS5mbGIGqYh8wZoOaBq4yJfnLNXlLbHHhx
zJG+LXHg+YQWkscmxoTV47clUWj5+SPqnKuMFgQxqXTkHupGYeiNYwPhu2/ahxGRRS/tZY9TJnaF
gxBu6tQSEFJ18XmyLKNQCEm5KDBuAeh6DRetYvtRw3Z7dO1hxp+tbal5DCeRQB3wyjlFOQuUwS6A
h0ULy05pJOQe3g1LzhJGn6ZtkxVyKDfgI62qnPtPbdu09D7Ti0JBfZMV2d10vLp6iGZe1MQSXS5E
I61bi+2dS1gBL7rWnSsPVjYJ5bbBJdMM7XsqKA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11168)
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
