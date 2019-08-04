// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Aug  4 02:02:40 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_locked_sr_clkReset_inv_0/mcu_clk_32mhz_locked_sr_clkReset_inv_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_sr_clkReset_inv_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_sr_clkReset_inv_0,c_addsub_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_sr_clkReset_inv_0
   (A,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 32000000, PHASE 0.0, CLK_DOMAIN mcu_clk_wiz_0_0_clk_32_lvds, INSERT_VIP 0" *) input CLK;
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
  mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_13 U0
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
module mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_13
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
  mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_13_viv xst_addsub
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
HaNOaS4Nk4OHSQnQLel3I8k+/KX145+SYPRc5KNlCdH6bzdSf0IkiE1dNMxC7XfGlEFa9yxTiJmM
/fGBCMkXBnUp8jsG1Mwk7eUD6KfAh/40umsZ3GMcJM2Pmq863oPK2iANUprPbCnQ6PaSV8AfpIny
I4Q1D9iDRLTiaBiTwLCxAXgx61Pr+SfDcSYbVdg1j9McuU9nqtsKYiz6qNISpzBIf9pg3Ze7Ahfw
dRNFaxF3YYG1hPyT7BNaqSGv4nC1DKBX/xPJv7JV8ZOCCwkxAV9H0beFYaCszifbcDIFLTWWH/85
0UnYQAXU60+vRGdLG6ZjUpev1FA1uHWj/bY0Yw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CU/UG/SraUoC1wTqaQnADrE/4/hWKKtBNHoGAR5mhOVhplIaTa9oGHR/Mrk5uNDcqDxKenHHtdb7
Og1YUMqHo5fr9+/p9yTNzBQdahxWQbZzfjrFJZdqZT3eVFgPomz06/9PT3irPnVSiW5t269462d/
mQW9TxGNp1wWMoghuQAK/ejLIbpXRwGXB5Q9NEIUtpUs3037Lyf7wjEM8KXwpd8XaoUkH+upgyR2
dLoNlH0AUQzzYcM6pmmLoJRhF49oF0FK5bH6Mo/oOt6JRL167mzsVbw95yB/y+6q67QtIIalQCDK
zChghHly9WNfTmlXSZc0tKH260qlMJUYJ/znFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3920)
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
