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
