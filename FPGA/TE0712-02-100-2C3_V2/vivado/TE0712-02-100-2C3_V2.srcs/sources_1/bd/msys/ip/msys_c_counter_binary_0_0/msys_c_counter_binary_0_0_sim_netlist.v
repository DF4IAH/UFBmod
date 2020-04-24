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
