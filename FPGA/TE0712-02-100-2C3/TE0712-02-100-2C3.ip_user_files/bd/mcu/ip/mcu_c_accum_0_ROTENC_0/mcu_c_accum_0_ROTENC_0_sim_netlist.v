// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Mon Aug 26 02:06:15 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_c_accum_0_ROTENC_0 -prefix
//               mcu_c_accum_0_ROTENC_0_ mcu_c_accum_0_ROTENC_0_sim_netlist.v
// Design      : mcu_c_accum_0_ROTENC_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_accum_0_ROTENC_0,c_accum_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_13,Vivado 2019.1.2" *) 
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
aAuNjBXte3tj15hUQYcnMoWSMGAf4zyocuHtyZRkjhpXPZ7KI5yMbaGc1yp/6pRwQSnpKS5eIaIR
mizwtpHVykV5AksnfHOVmHFkw0EeBXXJxPDgDE0VFj2yxnmDUjB+8eRdvla+Rfhm2lu7cyuD62c3
WSUIOEO1roB87Rk58IsAmROf1pYiUFtxjXt/82o6HueOA/70PdkPD2vEKOvmcZeKQPaXbZq8iEEc
aU64fuSu5FwP95ggKQ4lB7XVp/y39n22H3gXRUhXWS/Em/3dAlFRD1f/Ze52wvex5C5alX5wrjVv
zl8K0I84h6Jic1Bg1cOZMYaNVE2hJRVw5h4Blw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3z3CtujQIoM+DCquLRBYbKcglkWOCVGYrg2+sZABYLIRSGhziDmm5WsVM+Qz3Xk8ClYEFfs+wML8
o68iycpOIZL3OHU8K9qoSSg0OjIvLuB3PKkzJY4FXD/2dWyWa2g4C24HDd9gbHdiUbeALBiSzT84
9Kuj7k4StbdmpZmf6c+6ClwkRg1YXtKKrD9wPj01hG+eYQRRB+iWrwF1butQ6lCojOpVQz9Uf3kO
78kNvVYGCNUGJXwurIJvoAMRD2WbpDUATpt8GvoDsmv+0HnkRMHLLBzFxCx2SBaPTQCKYnqQvQCD
5gNnMXELMLGKDYPyuiEPfP5GBfZFROvQLABcjg==

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
