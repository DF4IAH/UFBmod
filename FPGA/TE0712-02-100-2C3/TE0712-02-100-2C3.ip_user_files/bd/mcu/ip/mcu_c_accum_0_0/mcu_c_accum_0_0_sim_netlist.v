// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:18:15 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_accum_0_0/mcu_c_accum_0_0_sim_netlist.v
// Design      : mcu_c_accum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_accum_0_0,c_accum_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_c_accum_0_0
   (B,
    CLK,
    ADD,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef, PortWidth 32" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
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
  mcu_c_accum_0_0_c_accum_v12_0_13 U0
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
module mcu_c_accum_0_0_c_accum_v12_0_13
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
  mcu_c_accum_0_0_c_accum_v12_0_13_viv i_synth
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
JI1vtQYfqjm7iRhBcbPczCdziMiqhZUtVKWVq4Te+fj/J7VhKOOBGwI/TcL1x/F5/E9LcBRA8Gan
afqIsX/iTQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gjsyccqAcko+2iOqR8wNr/R+qg/VndAE/wvpndMRTGYvbOcbAmUxlgMIhI6xyLLwI44xVWXSiX37
C0qbLhrU/J+bE0utdlNi7uebdjbAzGcti0FPoOXF0obaxJLA9ONf5hBP9Rbi149AN134UmmflgvV
8ux/C4/x6aXTcjvfEsk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bqfgmh3jJEsG+2mt7VRalgzACBGklqf/aEb9SFkkt62sVP2suE4aK5+fMufE+hl2Md4RZRhLiYv1
tepiOP0PFUQz0B+NME9x4uPvHtyonn4bVUmB78qkhDDUYpFryt4tkvpNeb3HGET0X6ZMDwrUkad+
AebGbummJYo4PMnVxJjvBq8IjMpUSWh3yRqRmzqxTmUs5JvP5xFmWghcYt8EWkWdyOVx/te1tyJu
H3vIZdLxCGcwyLlvq3B1q1CBQqOiasQ/pkBJ84hlOFuPfJdrNEeJVdsdcUbosaZIoaT3VWeWxDRQ
QouUMQC55c9tX4GPXEUyBA3uSrTxW/59z2vSZw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jIobVxnozYdLoU4ZP2qhoN4ZASlkKxCHqtJESpT/MgWjNY7eOAQTU7K38GMosyjXInwZIFE+paNi
g1gOh9c8rzluXtNkp910xv7OO/uVrAP/P4Hi7UH/7PGejLL9k3AUxTjJrIUhn2oKefBocG+pwedR
EkgLAV8RtHRszN1ejMrXF43s9+XYMiibmEfCHocuJVf6aLQxmZjlCndIS+MssStZzSNt0/lrNbqH
ychB3JroGH9C30E5cxS7OKH9DhG/TqtqM11VKB8axTIPklhjanOjPyrtSJ9O/Ph4yzFU1tn+RbzA
azSqcNxiIG52hXEy55NAQ51UzBic+sissEUG3w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNXfgpaWUzcUGgmkHYRFErU7pNPGpk2huZmi2a8l8OYI7ViigYkgg302STv+SRpSr6q1R+A6Ne78
3sTFvAJsHLW110APeyysp3b3J3VlsZO0dOlO4gug6ctXKCZPKY5+BIcg+oWaAqqPux0VD1yAPdA9
dt1ozgqIjqbonHdQBUId0bw3/OXOWMMz6oz4JSV6IKoXaHdgnji3zjN3R/JpRIfgS1HoAL3Lr301
mzmslEmIZDAl7hcZ0Ij2/Jo+9zU+rBpxz08pFLCohxtlenIKp0X/ue5DhzepYJdEzEVOXdEm7wkd
SytEDMWoY2WRIdJ7DTHgCZgRQvTvHaUmYsCWXw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Q3wsLvolc14Jta53d4WXo3y7J13syDePj5OL3Kk+4kO92fGKOSOvPhfS4wx5ke0c2R+4IGPsEubd
UBXNqCCEZ/cqeHjO2aEL5RTJ1jC0+QAMpwTbbWWiPDkcmpMp22IrTGftPiBaH/Tc12Ax0Qhqd9NM
rOBz+XdF+bvlTIPMRWg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oT0l7olS4b9BW9zcHR5iN1B7u/8GMQZDX7TAl3H022PmUFLepDUsgbYN4CDYQX1ZwnHTpL5Ot21v
7rJCn+ahJFIIE0ir2llJlBQ9ICFRzaSrInYLBFBB/AoG5vgbCfzmoIGYTeaMlzbaMEnctgO7PSxT
56+U547E4hk4RP6tz2wFqvFzwkr/jjbrTv9hd5CtiPR0bE9GbV1fJpsZq9MJcpgsP304Nx5yIRVZ
+rHdIiyLhXF/8K3yM5w3txGXTMlQpVNZyut6On7UXM9qzApu4yAedlF+p2wW/Xucl5at7yx8tVuH
2AmlfL679MtEnaWMiRW1PyXEhgrOeKz9/EhcfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kYZuy016XgcNTFRqiGLZZPExrHSIo4EJvwIGITcLJRbvdSi1rtcqfsuF5Hf5zeXZnX22o+pdWVsT
f4x7OGxCR3bjoLlnIJVRFkcbw1vC2hCE5pTEy8OJlvG9VvZXimitOKawEsuSZFUFsCNIHgDshm7t
ijikMKZzlzTXawjyj7EX1NP9O4LniJQreQG6xnmmpqFeP0juePT1sXNajTWHTFdE02do91mztH/L
f0T6hBdUaeL5+LQ8CSCpwbotKcflEbKJPct7n5tymdMcpuzYCdW22hHXVSTiKbG0Z+ja3+EkA6NR
WpsJ4/BaPRUqKrn5o9rm/Dk/fLaR0zEUBrAyFw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w1vtRoIAH9zUYnItiaFZ3i1GFiafwgqXYB6oTTcLE3/Fg8XReVWcDKIu13bI7QA9nRJnEyGKmb5y
7DmbuWBcmAh0UTEp0iOt7QVO4VeAKs+bbU7pmtaDQC6cBhVyZhvtd70loC3tNrIv7Y/TeeRGr54T
CQEK6o1lkVk/cBS2mYt4Q0/is+Z8rSsRhHMAWQvr2qiqOj4Yej4QqFISpVPoDK6Owr98xACYRn4V
bI+khl87HYnvqw3RAHY0bjKq+Lb+z6yd7JpG/tQ6SXJPY8Hg0m6fq5WlH92yPvhj6nK7eRKZIGyp
GjLQM7FaC9xDMQ9dbJbAvZkWF5sp4vL/445xBQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11104)
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
