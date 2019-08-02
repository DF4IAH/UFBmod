// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 22:06:59 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_locked_sr_clkReset_inv_0/mcu_clk_32mhz_locked_sr_clkReset_inv_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_sr_clkReset_inv_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_sr_clkReset_inv_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
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
  mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12
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
  mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_12_viv xst_addsub
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k4tVGNxYZmknpd2PgFhR1RmrfwSaTOVzhovyyESN2OOJCWBk2cEBiUTAWhDtJzikkEr0UCw+M9NJ
mR5w/m0K/3maxof7jBRg6YsSbKIcLTBfzR6dVOnjWjtEBRUNU5ZEwCRpd/UohmF0P+Ai4ikuKbxf
uX+GHWWYsfeejLA9J0MnFCpuykVwCz21zD/hVvtAeXZBlayScj49a/ra/tX4D5M+iwMWV7IJ024V
oVYW6Z9ZdogLK8dGxWWXlndTbIVgy1tAyrq2aqUTQ2j1Ei5OwSpiO0g8jkuMGwvlrqsLvJZ1XO01
D72FfJtCwsKIW1txty2RhJtB4wGxpt38XiRtaQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FVaIR5+9qam3eHeW6QUG0m+rj08Vs+IkP5pb2b+R5iDwHHG+30gNl9v9IeD2ozjTDv85jWLuRxZS
YCNdgYNm/9cgXQ3cfjU8g2OM4BAFh8W00Qma5sgHfsK/BFotN/iIA4HVrqpRwgxHUWziNGT9+wbC
T0iasft75qf3nDUPFoHxRL+yPE4Wgat+C7DGVE3zqztPPKr0RAnTSY4lWpqjZmBn8ZyEZvVdswmU
owVHIBvHF04NBU8tFovAWBvWdFrH6dQfkStDT8Bdae5yw3Kp/QCQG+wLqBzkz9k5x6Vbm3dXRe31
gZFuOX6cVrrBe1kwGDM0h4nCP56qv8iaOAkeow==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3936)
`pragma protect data_block
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
B8Eg
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
