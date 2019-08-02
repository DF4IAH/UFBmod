// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 15:10:12 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_inv_0 -prefix
//               mcu_clk_32mhz_locked_sr_inv_0_ mcu_LVDS_rst_delay_inv_0_sim_netlist.v
// Design      : mcu_LVDS_rst_delay_inv_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_LVDS_rst_delay_inv_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_sr_inv_0
   (A,
    CLK,
    SSET,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sset_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sset_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}, POLARITY ACTIVE_HIGH" *) input SSET;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire CLK;
  wire [0:0]S;
  wire SSET;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
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
  mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12 U0
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
        .SSET(SSET));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "1" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "1" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12
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
  wire SSET;
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
  (* C_HAS_SSET = "1" *) 
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
  mcu_clk_32mhz_locked_sr_inv_0_c_addsub_v12_0_12_viv xst_addsub
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
        .SSET(SSET));
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
N9ECzRXlK1hmF4FIvCLmxL7u/8yNAtp1Cn+WdR1Nsj3Dul+RQEKadlEvqoIcpgrj8NISKpE8Upht
Pl4Klc5mAVarXfMJDzXkEG62ZSKlEiMoToU77DRYECbgyXp4PN4hDReUhKRxiHEeEWGPO1QdmUgv
eRu70/nmptbvNrTRdytz78rWetm/6dxFnqpz/A5EyfT2+ehgAhzw6jM1AbEIV0cvka8mdE9J8Eon
KniuZnXS9tHybbnvZyKFWHOXLSoc++Bq3xUjUuuEsdctG0MOyWQPyZ+/RjLl1nYqTuDveSUxEiXO
fHil0s9xp/4aBDo8/SnFTz2Mvpq/JN5HYb+QNw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RzLPX974MT/fJOWkWRdjb/tfpr00znujhWCxfsV5f+rOVKgV+UD9ANg78Ahnvp0lqiE/9MrPnVem
hqt1k9pZFiUbsueoDUHlJri+/+cGnYf0Q8bqjLR8ls4SSTLBN7t3YimydNWC1vyykX9Igt2Bb6mw
Ugk2A3n18U3csn/nRDsBsiHGfDbRx/sC2Rr3iy95f/pENPIZJiM5VmqmojbdQx/eYN2UK2GkNBng
7259JWyiNA18FoU0HzhyKoSoNEHCiaPuuqkV6awINH/F6ZGQA0O3dP8cfKYubVusihnZSMUkCLmf
WRaBZdIVQ9nxS+wc5RGm9455TZV5Nyv4e9Ro+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3952)
`pragma protect data_block
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
6pg901ePxEURyhSfa2vb3DF1gwSO
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
