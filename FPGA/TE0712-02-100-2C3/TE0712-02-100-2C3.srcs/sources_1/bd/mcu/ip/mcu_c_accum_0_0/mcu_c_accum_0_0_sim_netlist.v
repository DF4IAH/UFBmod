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
