// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:44:39 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_counter_binary_0_1/mcu_c_counter_binary_0_1_sim_netlist.v
// Design      : mcu_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_counter_binary_0_1,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mcu_c_counter_binary_0_1
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 16000000, PHASE 0.0, CLK_DOMAIN mcu_clk_32mhz_LVDS_0_clk_128mhz000_lvds, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef, PortType data, PortType.PROP_SRC false" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 3}" *) output [2:0]Q;

  wire CLK;
  wire [2:0]Q;
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
  (* C_WIDTH = "3" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "110" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_counter_binary_0_1_c_counter_binary_v12_0_13 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "110" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "3" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_counter_binary_0_1_c_counter_binary_v12_0_13
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
  input [2:0]L;
  output THRESH0;
  output [2:0]Q;

  wire CLK;
  wire [2:0]Q;
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
  (* C_WIDTH = "3" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "110" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_counter_binary_0_1_c_counter_binary_v12_0_13_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0}),
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
J06KZl1+5hsMPDWKkXqu41xB5VWvINs0+wC7dCenQHLFyBapmyL+JnJ/Q7PwUGSfaenQS4oTN5rK
dVACqUcl+v9Udyo8+x6h7/nOUse8WHb5OV1LH+SorIpFMLfaEgfC6VQ0Sl9zyHhWKZePP/693i1B
qBNxCLMqw5nBb5C+Fx8baDY0xww4KaT5NfS5Y7SsN1nShfhG69NMfLiyzmAGxLzX1cm8d9BNLnVU
91UT3CSEZHa/S357GBZF1T5uDImwF/nTMOxbObIlT03LIqHfg8ZaXx5eMyGKbFQVf3qG4YIlU2+H
neYvuZcJIK2zZC41XG1QotIEvXEqvSdkWG9PwQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XF6CWoUwUpDwYqBXznpye2KFkKW5iMyA9aAdJ5QOtq1hJplTPt8fGq79HH20fZfWmyqLGAkS1nh/
RJjQE+seA8fNzA1AUlvVvgVTdtyMK7KJZySp9UjKGlVNJfuENN2Z3VBQxJ7z6GRc20rupE08TvwX
DO+H5sDqtukTCP7IpXkl6B7qoJZl/nUigT9dWSPhGFp8FTnuVOiDf1tMQFZP1lkce/HPv5wyejU7
hcdWipPlosuMGvTnmjAR48J9y45sgm3tGaeg5IFG03/48u3y4bqUNEqFoRkAe5p2uYqBAusKEhaW
n31gFR9nlYCXdgGnCNp6LaFtCqfsiWXasQiUXg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5040)
`pragma protect data_block
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
kIcpaBY5GwNVPaXcPsJab1dZjp5ymwvs
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
