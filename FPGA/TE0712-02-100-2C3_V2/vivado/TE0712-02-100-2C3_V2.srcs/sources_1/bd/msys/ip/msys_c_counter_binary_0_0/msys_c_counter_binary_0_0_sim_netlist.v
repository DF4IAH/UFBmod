// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Sun Apr 19 01:13:07 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_c_counter_binary_0_0/msys_c_counter_binary_0_0_sim_netlist.v
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
l5GRG3JfcF2IWUWW6OyxrtBmBUrfFadA4fHQweEsLkLJDil3/HqmCkLZJlfNHwFRzchK1TiPOhL/
hZ/fGjgO5fpm2dEAKAyzsOrIToUzHTWKrqx7iyae0N+aOsdGD1pUCEqSEV43Z5uFyb5933lNtg8q
A3oEqNL0Zn3+N1vrhThQivBcVllDEhP883JeVRgYfPE22Ds3MWpwKGD41K7jBf4+dFLk/QBX2EGS
jjd53tdstfcuH9PudwdSoGMkgW6vD8DEdLWfszLAiqSkpUjepg1sB2zEAxTEf8i9q2ZJtByp/noG
26eLEwCTZnQAIs400o4on/gRp8+UggG4M0r91g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zKuA9Eleurj4J5A+72iiPz50q4henFCzO+UD9TS4Omecxk0XX9X8IeYRWg4tcOqrl9yyeuxFeo7K
5PCX+AwWklL3hiVPBX9nVgivnvXGjBYP8bhEwGpMvEKKUmDlEvm+xvkOUEMvYRw+GNc/DqeHu0ZG
vh0qiFWBaZMMdrfoXtfwcljkZGtLIDTzyj9n50XwBIC8qLyfTctQoItospkVcDe1ZJ9wEveZXo6h
rJ7F9C0nsoy9OWChg/Hbyo/1C2Nyhvt8FSIM8/yyHmnQ5xlHWSgPDzx4hcwiH76hesxJwy52bVgu
k8zRojb9Nx43cuhs9EXdrQ7gIMXxVsjkuNFC9w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11056)
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
