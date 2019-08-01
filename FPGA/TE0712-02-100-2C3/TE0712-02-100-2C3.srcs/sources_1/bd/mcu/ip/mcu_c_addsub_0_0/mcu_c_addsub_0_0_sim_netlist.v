// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Aug  1 23:45:28 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_addsub_0_0/mcu_c_addsub_0_0_sim_netlist.v
// Design      : mcu_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_addsub_0_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_c_addsub_0_0
   (A,
    CLK,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 2}" *) output [1:0]S;

  wire [0:0]A;
  wire CLK;
  wire [1:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
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
  (* c_out_width = "2" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_addsub_0_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "1" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "2" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_addsub_0_0_c_addsub_v12_0_12
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
  output [1:0]S;

  wire \<const0> ;
  wire [0:0]A;
  wire CLK;
  wire [1:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
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
  (* c_out_width = "2" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_addsub_0_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
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
ASO0YRZwXT1TeZfPf65D6fsCnmigyQOjVmtcA+GiYM0MjDGwoddTN9mPxsyjFIupmbN/8Gxvx+3D
t3R7bMDoKdfHuBePKMirfTwqI1724RIYfdKWppS16WTQwwS3Gr5tVpfPByC9T5rL8fchpK/0H2hX
yZ1X8l/npnIqu/k4c4yqXljvkuqV/WJo3FdG6CxEPdB/bDCJlCilhMVl3B6dpMI/0eW7KL2VYKEp
Dcpc3Jf0zAGQRJ7ioYSKjyPF/hzJsab5nwhW+A8eFKLciFvgDbslLungLF35kiRhLaVG7HeqiLEF
oj5ysFcZMSgxjoIwPapZS1yDZpFTp3+ikSNW1w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rBae45H47D7tpK+OeKYgFAhj7NFJMO1NEYV2bkmMIvf8FDMABZ/v/C5OEvcwCFhcifp76NOufagG
cQfi4HrYFwtZqkOqumBhC0bz9FlzZ5fik0kYhyzoaSDivlKFQyci8XuTLs0BWfhO7lrGrJNrTBnI
H/BLDz2MJICkRrKFBxCCYaFnzrlYUxqymcv47xPbc1TVbkdm6rTNo9CvgFGCIgjfyi8l7N1KIWUB
AS804RBKgt8W/xytGUZ6OHPunNBArmTWQ/skPFmq3g56u88+hVpLmOoYDF6ysqFbooM0PK00N+Ma
NSUb0rYdtpSCFEUjdm/37+/kh/ZqbIWjobDjcw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4288)
`pragma protect data_block
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
2w79FMWECLLkH09yMg==
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
