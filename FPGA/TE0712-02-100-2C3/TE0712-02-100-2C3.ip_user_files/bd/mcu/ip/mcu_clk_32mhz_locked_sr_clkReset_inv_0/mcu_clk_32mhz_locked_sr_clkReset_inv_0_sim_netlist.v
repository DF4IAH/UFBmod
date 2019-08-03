// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 22:06:58 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_clkReset_inv_0 -prefix
//               mcu_clk_32mhz_locked_sr_clkReset_inv_0_ mcu_clk_32mhz_locked_sr_clkReset_inv_0_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
SWxxFVLt1Sclj8truSH7T76oBwAIQGL1vnHZvTtaG0ybyB/xgywztlVmM2A5djD/X0c1I7HhJFA+
V4+n/eko9rHptm2Sp2H6UwqncOSoXuFh23Qp5E/lwYubJWJZc+s9gSYzKXu7wgwM0FHDjudUuEz8
hxelobGV+v7hldQCNJpaBNDOFzdVTeo583NojGz4HF9per7v1oU2E6hg9b4xA0jEFAKpHHeqtSWV
UpLZkOpVt5oK5FqY6USfG3P50sfJs4gVePgMwuJ9NJVpKHT20IRykf3s8nDLDpKXDiQngwXzgtO7
PkAJcWjWvHGvxUzP5jG/8Ka7w4LteN4BP4FTdA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MNdcMXdPaIwAgvqBg4wa83qKViIjeutOVNUl16texc3oMXa5WnOJ8Z8m3JNjlwAllbz/dXdwss7D
Re4yhgs0VBCc9XVeMp0GSIDs1wNXbJZb2QXDi/Xv3NmHWrq6erVRD6MFdV7regDsiIRKcqvtnL15
9ot1eyBdAF6+JBR0Oi0Pq4zpDlWR+wdYrx22IcNP8asTmvYjgF3G18pUnJcaWp4X7SMDsD4BtUTc
tX9abrSodDeBZ/NP6u8SbdVh3LOV+FJ547q1YtTxFDl2MU7xuxlzaOuojT8VzOWeoluv8kFDDP0F
uoYbtA94KkUobVpaVT3u8t8fYTnxFNAAl+/kig==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3696)
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
