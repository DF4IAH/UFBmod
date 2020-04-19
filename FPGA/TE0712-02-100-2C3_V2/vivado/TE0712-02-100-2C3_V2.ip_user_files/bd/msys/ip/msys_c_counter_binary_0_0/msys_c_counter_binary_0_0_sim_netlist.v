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
