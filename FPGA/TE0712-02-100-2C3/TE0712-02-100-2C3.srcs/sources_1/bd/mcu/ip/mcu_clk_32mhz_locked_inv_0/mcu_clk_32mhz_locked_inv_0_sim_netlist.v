// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Aug  4 02:57:45 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_locked_inv_0/mcu_clk_32mhz_locked_inv_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_inv_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_inv_0,c_addsub_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_inv_0
   (A,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire CLK;
  wire [0:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_clk_32mhz_locked_inv_0_c_addsub_v12_0_13 U0
       (.A(A),
        .ADD(1'b1),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "1" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_locked_inv_0_c_addsub_v12_0_13
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [0:0]A;
  input [0:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [0:0]S;

  wire \<const0> ;
  wire [0:0]A;
  wire CLK;
  wire [0:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_clk_32mhz_locked_inv_0_c_addsub_v12_0_13_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
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
HTODt/tJGfbE/3GzAH6HEePmsEIB6D7EbQ+I728asAOb7X9r+K/A494DHrs/zBLl78U+UPbupAnT
wieXGRq6w0I1hAbTMrYKmQZo0e6+lfOciV5qkRh/Bz0FB3pZvxzCmxOMr7x4P9aQ6GT65U9thHl2
ZDa96iGz5be1vHq4zhiKXbOnyHGVTBPWpHt/jJL6Pe67xM5A6W6WNAdoQO+RyMaBpWICIO5pTWVL
osZPkBLIvGEgJY3I6Am7CYxyJQoEqCkepJmKiCrmFfBw8mm43Ttf+NmhifQxJjCYN3f6ybkGr8yl
9XzCsuo0O+YP/f5wF5yUP420Cv6QeScSxZK5MA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gtq4g+lmS2A2LqSaQMjZo62+E5iIIqOQqexfPK9iGiuWZeeaddLw9OmohaPQlnlXwixFjzuruZfJ
lB0+1To6jxhjHtNDBOgogiYDlSP7gDcK7gMp4JmTefQlUX8Dj73Y99iD3kXjLfc+Z78JJGIm//p9
aJlnLK2AkOWKaBR/8/YWL+4DRwI74C28w8rJxi/UW9jG57KWyFtpbnsV6JF9t17+M6/TDUAOMdsq
JLZeROtegJa/ksFzWK/UVj4p7j6StT8xioyKc0Z+gDOY8PX3H2czrVH+puxJp85U19uE5XSVs0DP
hI6/1dGh73Bk8zZNx8GuXB06QdbAiuOEm8b+5A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3824)
`pragma protect data_block
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
+sd5FLo=
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
