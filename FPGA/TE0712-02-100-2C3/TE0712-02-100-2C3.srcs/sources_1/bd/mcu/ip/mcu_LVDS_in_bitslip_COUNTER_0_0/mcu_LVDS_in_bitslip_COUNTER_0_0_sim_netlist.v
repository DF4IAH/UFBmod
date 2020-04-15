// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:46:58 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_LVDS_in_bitslip_COUNTER_0_0/mcu_LVDS_in_bitslip_COUNTER_0_0_sim_netlist.v
// Design      : mcu_LVDS_in_bitslip_COUNTER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_LVDS_in_bitslip_COUNTER_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mcu_LVDS_in_bitslip_COUNTER_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 16000000, PHASE 0.0, CLK_DOMAIN mcu_clk_32mhz_LVDS_0_clk_128mhz000_lvds, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef, PortType data, PortType.PROP_SRC false" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 2}" *) output [1:0]Q;

  wire CLK;
  wire [1:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "2" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_LVDS_in_bitslip_COUNTER_0_0_c_counter_binary_v12_0_13 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "10" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "2" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_LVDS_in_bitslip_COUNTER_0_0_c_counter_binary_v12_0_13
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
  input [1:0]L;
  output THRESH0;
  output [1:0]Q;

  wire CLK;
  wire [1:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "2" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_LVDS_in_bitslip_COUNTER_0_0_c_counter_binary_v12_0_13_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
hkYW+OZm6k9gF5yAUfXGm/n8kfXYD6tjFQYha968Ws0SqrM/NNAjCrrtMG8kIqTbkipnmceefxNr
sB0PtSpUrw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NEPpD4CxNBVJLV3hg1agn83QnqiCz3YuR89MlVuNyQGERKVJ+uGolFDqHFzBKLQArFTiHBWivkzK
A2DQ42XdOxp30NKOgHjrjgmF+fZMjDs24rn3Ue1INLHwTS5RT84Kih7Jx/7R0dl03/COJq+33l9u
7l+ArdY7mLwqqI9iIjU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cfBwEwc95LpKuxDGqpON2gGac620iHNKrm/QNXYg3/OFA5ZQNdpdhRz4vCTQRVbOg7b1nIox6GR8
TD/cf0JW38RU0NuY+TR6CkFT19NCdy67gR6JTDdXifhr/zTKjOL5gvp0XjT9PSLwwPyDirNX4TMa
9y9X5pf4gEnt0dikHNgySZO+Qpr30MP7n6oAjuxowlf45cfmPqZthYPnIjBSCdQGBPfSF+kZ2F1N
XCDEja5xE4CQshPPodH5njadc6kj7/qp9C4PfKcyNtDug+qsws9UK25Z2IFc8vk6/15HlIkQHkXv
Wq0iHaPLidqh3035FinHyPD/FDnfGGa5Oa2qcg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QmjD3HAHcP+h0RsjR0iH8h2N6drNxei50nfQN9RC8HobMEaARq/6rKjZEhHXMSCStQeCMhyVKRmN
HM7ZrqMf3W0s/8U4QMqp3M1VuYXVjEe2PCIpvtRcMY3JngdSWOydG2dH6dDA16ehxinMKgIr0TjA
PXA+lfyX6yTs1FWrne/6ufrl6ZAPpNG7EDKQ2aHqSm8DEXT1BJYMblBfAjAajwaJmPEu1aDlQeNo
onryTiFJkKP92pcZLCCufZL8ZAJ5uMvZZxiZRsiLd0BnCfOe3rl9AON+q53U+iK11EvAkpIBT+Cc
VYb5NqVAVaqXbQrqo3+YHEW5ft3fM9kZnlFDew==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FkHW107swc8fPv4xOTlQJU6PWERObturlywl6rsGCswc/v367bmQ1Maze/8QdmUPjEYwhAcHKVMu
7U4o3CvYhmrDpYiUQdQQ0B7gAbMZbJ8MFY5jRxn7KYDk+Bi9Ov8092IdW1a51FPWEVPmF4Kn6z4E
DSqpQDL58qieEUnrU2Ltb4GLJc3NrWTLvnbvRtHUUuQWTMZTQ7WqX4iH2dZ/EICpbRjlAF50iMAS
YHuuFTRKXcIFQlKYRyeQV4nyaA5JGbb3RC3N/Q2IZjdSXqQ9EOpmdhttpxReCnsdJiD/pPCtf7ZN
d/TheLy1Va2FZR+p4MozZorVui5/FtcCwKy6aw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NgZm/7Jvy0UZQRVxBVxeZ/odxMd59IlnRFHjM+6Bof6o6u4Qy4u9MOoQ3Sr2paPuGq+B+5EhdcD8
a5WGiurBrPW0qF+L2CoUJsDqz0WonRehZECQynibSUlmctvvMyr790pwb+C78gtW47p8uALYdUCJ
NhcDkV8fE3jFdDEYmfQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TxQNdd2WOThZCBZEYNgXxai4jK9AqWD/GRadYnarEfzmLUfcNDUoG7DxVWHCdTVuW8i2qZpouT1H
FUHt76rzZk8vI2tFLfUbKyTaRqik1aYwOCp1ZdqbgqQEDhBRWJjGxcJuxZbSQ2z8IUgiJ0eT148+
nf9UmzvYS1jrIsN/a7K4EjyRNMk0V917y85rxdk7itlisaUw4Cm72z9slByFtALj6/077uPjcK9U
mbWm7PbXk8PT44eQeaJl990wlWvD5/8BZS6AHqjg8520Xs+jftSeB6aNqTiYxfp21FJqmexwo7cG
G3BH/DRHhP7ZIsXHqSaJJFo20Nx9VgpLuF5t2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WRao7ziWVKboxkmuaOumXj/Lyw8RR2/5surJC4U39PtYosheu+ZN7Zm21NgNzecLSEGmSgzgo70k
+AlarLYFbZIwcSMSTpjtqzsnoXh101sXr7DY6BtBbkLXEpVoQb1qtm/Fn241W1b4TrsdiCydznF7
d8h/OU6/L91RYGrdMmQwn9zF8xou/Zz0jA4GDliXlfLjicvoDtMfFFBP2hDv+tchzeZYP2NHNN4D
uTgJ9Rm+TRdPerZNjfjUwBBAPhMa+NV+ykwnlpLrkWweeE3dKEzDpmNSU90lPzs58jhV1nVLp6da
AwEcCMKB6KijRUb5l8a4BdbJCzFCdrNQfvNePg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OryHA6fsulXY+3i1DKB0DfEgEtETmQCYmoC2xnuNkbU9EUILxibMBki78+CvfWF+yYYs69MIdTEW
NMcophE3mL3ARgAhW/+Vlu7fqK4zjS9DfkrftoCxbC6AQyj1pYbpTdO19jqehHGOnTpnjy1mUvMV
wdYgE1vaT7wxVgVPENlTFRvFzWh2eZlWO08ty1g/TS62XbKyv+Dmh9iwFQeg9vYIV0hIPdtDinsL
SbUk0k1Q5RLUCvMlBxTGyNJ4suGpUhpvlDldGxOylXOL91Ys3z2YjVbcSI9Xyx36LFbRGvRtHTaC
M7LGGBur9HCsqwgyfj54O86DdF9tDb7CzB3Cwg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4992)
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
