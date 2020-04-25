// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:06 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_c_counter_binary_0_0 -prefix
//               msys_c_counter_binary_0_0_ msys_c_counter_binary_0_0_sim_netlist.v
// Design      : msys_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN msys_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 21} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 21}" *) output [20:0]Q;

  wire CLK;
  wire [20:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "21" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "21" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module msys_c_counter_binary_0_0_c_counter_binary_v12_0_14
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
  input [20:0]L;
  output THRESH0;
  output [20:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [20:0]L;
  wire [20:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "21" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  msys_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
jG9ttTeOTBY/3d2dWAopv2bdwgGdX8YYlQoUJBcBaS35yFKjB/3Wpv4MX7cYnIvhsQ8xYdarFY+A
oEhKuTghdQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
K8DLnF1GVvNZkAAlAi+xyMAV7L4I4RYxKMajQi+h0yyjS+zzO9nLFwDc7H4GM6X12+4++f1ki97s
lYyilBWUrAqxl5I+H0/DdrmS9qNqiwVgZJN8MSSksp7bGTLu9IAx8eFBO6pG366Ma8Re8p20VpTq
sYhbzjjrrduwq7cHbeQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
00Z8zG3jPy6V3Q9tPW3vxIx4KBg3CWmNBc2p5/JRXDghWhNTV0MB0EKVFf3PgAZfS3xmHiGinq3U
L44ksq/DRlTDB69kWd/U8mzLj1Ww0bL5X0HEdWhr2HrV/V0DZAo6BuSDf5jpEz9aYVZYdHIPcWMq
rtXOqchT7J/LzXEI2tt31eJVwHm9GcUDtOYRAXdrBw80B8xwqvoGS9GdqrnGhtQLqVFHUCh4MRQG
MiJTtF+ygq7xg2Ix887VrZo1kLsHyFy19f0q+7qvPMEGidjdvEVhU5PL6Wn5oje5gHP1TpI4xijl
Z99A/ky8+/ykCX2Tmh46jVz+KSi/iemqph0DXA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ped3TkePyyQnW13OXiBYQ+/mlmHeiIYQY6NzYCfqYOj2ul1Xa5hUBx4KsL9OiS96NATl2LfRUR+j
ZUC5tXZbqTGLn2Zx/T7pFFWvR9ijPYjYItehPakTeq5oQ3rXyiHnDQCQV9fISm/GtkebtezJfexS
87iE0oBpc8h4xpYcfD2G3qGYY9Bdg+bl1QgCzaX6hryhGWcgbsHB5sIYv9ijYws1Krus4j0UEI6f
2e00zm3oJqvPfmMAo38dbGDJn0ZoGdQO9/M6TU7nO74zFOdblPKfhRpcu+DYTTXeJmJMrH/oEt6M
rH1T1aPMudATfQ0L0HJwhwrJ3ISXnfmVUmXGFw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Womc/I6rkM3LM4e75QyiE9Y7CDPBrA+wXLyXu6aPFXIyG39UhJP8sMKJjXVYJ+xk9X/xxGnC2mZl
Lcq5So41r2jxESAPDA5xXIE/NmYRVLQCtWZZTHdqOQIFTqyPWV7FwDovPlDEks4mWSTcDtLxIW8U
pC4XKg1GbYdIYt5ENrVxkdCyxsQNalRHFaKOPqzdgmd0Bagm1nD5nopongSXxmyd3x8TNukZoaTH
KjRbbBVJlSa+ZaSlAu5Lk7akpeVydXYZCWmBXTPHk1Pkb5Kvjm0NEj04ju0KSly8OEgeUcZRCjq7
o+cICHCcX5+Usw3vFOc+sC37XE7b5pseRJwD9w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ATjJSD05uJJWzyTJNJMlxRQbHLdRWIdDRkjWfIM4OEBodKBT+H2RlYGT3GbC17OOqybR0kjXY8Qp
45iJ4La4i6vpBI5ia87rKp3qk7mGYMeGew5VMEkbQiDl9hzJb6zht/QyPpy0/idvl9UbmYxNmHNp
e+PrV7s99vd6HoEqCbo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jvEpSBjRonM73IPTfMQS+6QHkQnEhebJk/VgVfyk9VcH1QERHD2RyFq4XrDdOuX8YcdYpkyXvKy4
0e4kc8ElCF18ioSRpDmEf4jeUyDMfN1eUmH4sfHBDvKu3RFwzoOC7HcdqG7Uh+e3sOloBKFlBeFT
PR6o9GSgfdDnreGoOnJ51GSxVGYFY13uY4qDDUmR0U3r8oIXhcIpWUZBnu/FRHuNwnkJW2uDqe+N
q9GxypZHljXNVN34Sx7/kRSu1AZzsO0zkj6Q+ci8ksP13d3Qp2gwHsSzavVXQUZmezF638WmTLwE
cb7dkDue4+Z4i5ByM4XEcFSfkIZMpCDqdtxxnQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RebLcQqGkZIVromeSuAvcGJReaqQ6JcBgWFfMCSG3QcXdt6Re2ZP15TfGH5qKBCXFotjETHmp/I0
wGS9wuJOuKxKULtbXf1FJoDZUTbg9wCA9MdU2A1aJwEcaoEBW7LASSh1w0MdEeKJR2D02fDdyKwV
kquVwg6R7J8SXnb10r9mpNEF7l+HN85vVfiCPr6jKNbt27oHXtabLV93gt2uO6tCHaMzF7rS2bha
yyP2VKImcjYGI/n1gz75HPOcnIidv6MGHuXsOWJdYQWtIIZzQ2xyrTLkyQzU/Xs/humuPADR/qyh
Ul5S6lnzQI5VtnMjkkO/KhecJxSc9pqpaWfWCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D0H7RDGvBjjIFnpnl98dvTiBdExTHUKSMSehTG6pImMsYUDKbRRgVPjWvd1yNT5vy4CMUro9A86l
c+27WdliH4FQWwsFZKvXoPpl96daWon3KG6QK7WHjShIDgSeGIeoE0M2Y1ksMUK6wV+hQx8sAjR6
0XWjsJsY6NF7bpEdCnI/6G99kbJ7uXPt3nXki12AVq4o23Q3HulsV227/pAA1xyE4v5O8Zc4L5Xa
GfVik77feKOe9uoOPnIRp9E6VeM7881nQtIeWs6pD2qZ1wA70gwhBS/4lE+1Q9Kf9+iMBhd225HG
5Nrrr0SksOCMKF1tV25nbiVTsTYWM3YHtK+2Dg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6IRIsJxD8MvnzXea8ibAoV8wVnm2rYIFelj2Gs+3Pl/clDX5MPPn/DhgI7YbhuJzc4Vs/XvsIkI6
OkRspPNG0XdEYwOyN8sSqMpnA/hq28SGorkJytEciIoJkFrjlZ9fwgQKNc/UK0Au1f/s1yREdJoC
oKXySmkOw8RwBmVFgyQPoS3qSz6l8Z1jSteRp+LN78Q+om9jDIlzxUjY3BautQu+tldxdKPN+z9H
VwMfSWCAuCOBqKbVBQIu2RPY3exJtGW0uLe5aPvPsjyjh48h3MNOF9jG437YKXLHiJZBqde2o0za
jpDuHvMCIvg8B/C0nOZj0cPSKrVjEYhJNe15Sw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10976)
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
