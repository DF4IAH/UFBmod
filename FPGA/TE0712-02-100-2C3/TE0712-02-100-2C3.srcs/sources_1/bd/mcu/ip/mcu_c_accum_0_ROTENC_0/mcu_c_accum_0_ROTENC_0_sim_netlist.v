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
