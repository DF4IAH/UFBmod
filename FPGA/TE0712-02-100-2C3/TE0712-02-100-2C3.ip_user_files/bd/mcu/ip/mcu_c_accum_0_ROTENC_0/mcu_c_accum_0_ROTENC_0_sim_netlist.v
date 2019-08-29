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
