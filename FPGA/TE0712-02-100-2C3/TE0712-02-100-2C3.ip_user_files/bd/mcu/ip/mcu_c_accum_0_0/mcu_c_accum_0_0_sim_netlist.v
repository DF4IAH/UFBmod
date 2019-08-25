// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:18:13 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_c_accum_0_0 -prefix
//               mcu_c_accum_0_0_ mcu_c_accum_0_0_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
LBgJ2Dv1cEElj697nQW2eOcJouQAeKlYjppKSvUOKrrpm1JVQ5w96bITmZfAyHziMROr3V2i+6CT
r4Im6n0/16RDyW34VDIH3u0H6jk7HAMjq+Tot99HSoIjidOWVysCTa8+YEAVyD0aUD4P1JLlL+t9
f1J6YZeOkCXQWOKzeesNGW15gZ0zWjcloY8iMVewL8B4e3Enp0zVVTJB/O1i2j22EiMosk4Tw0mY
KPFSei/xBaVapQeTzcbLzqQr1Tt9SSZeRmKkoZWjiKgxkAztzZmeyZTo1KnjFLXe6P3gCqSAKqKw
6l9+WdTbjHi8vpp1mN0m1vUvCdnhrYvaT32xlg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L/JeJPKSM3IvpieG48h0f6n8JI4+pdQ+1sawFb2c5s7s5q1OGYw5ezdMf+Nnl84Y1MaJ3CPUK9Gk
rfP/TX8sAPVCueqeu4JsQlbCJs0AsCa2NPejdLjGb/GrvHNbrwmbffPbpGTyY4iRaGljiDO2/e6T
DkFx3sR5tJvfJ0SvINKYXLvgqn/ugHcAJmeshxqvrWaNmmxaqcrfDt4ndPR+PIkNOpfzSICFX0uw
IsztsQ8PX25+rbMkS1+JhdhOQ71y2fL6EneftjY+4+cftVX7voTAk7fulvGYEdHwhD5ST643FjHD
bY8Gnbm/ue6BBCg2yDCyQKXo5wa/1ewjboJbPg==

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
