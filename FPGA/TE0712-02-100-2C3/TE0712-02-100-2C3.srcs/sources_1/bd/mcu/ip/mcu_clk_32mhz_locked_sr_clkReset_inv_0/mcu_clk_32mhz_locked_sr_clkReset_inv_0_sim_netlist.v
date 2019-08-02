// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 14:14:12 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_clkReset_inv_0 -prefix
//               mcu_clk_32mhz_locked_sr_clkReset_inv_0_ mcu_LVDS_rst_delay_inv_0_sim_netlist.v
// Design      : mcu_LVDS_rst_delay_inv_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_LVDS_rst_delay_inv_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_sr_clkReset_inv_0
   (A,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) input [0:0]A;
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
MSBXipT99LBXvbdMfkfY1mJtmeYO31v7k+xnhLcQW+FXv+3xQpovrGmA5tsolQiIViiRSDOHQ2CB
WiCkDtWiTCMV0zaod9lAhG7RZbrCKS+R5UWY/oqVZZhCFEFFVc3PImaiY7suUTzKyFIweTJIytSp
o3z+s56q+Q5hRcAyWHNTMZiUYRfT6Jef7L/pzdbXg3Tz50qJpqrgSqSks3u0cV7TfTinOHsLag7a
5Kf0djaOAyzuiq3V0RJdFzeLfDTZIqU0goTqQx8BKXfPCHICXBYZ9nu76Vpy3vPIkZa1mUcMRFSR
oQOaeZ8sN3dXfio3w02pDwYm4QrNzpTO9DrGZw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EoRkX6Kli1Wf6xp5+TPC3GwJRYXrKTMnBXQACEWjA5gSk/3wRmy8EOJwUQt98UOo2KU517xAkcfe
rq+ywLeqs9/RdHRQ4ImC5iIX2VPu8fzDThEsPG1tm7vRzQoGfQjGfABaDQkFPzI0UTGawTTRoHnQ
lK05VzuTS/NAhUxPKoFa6BGbEFqAz+by16o+CNBYVGFhMsHut2WjyKL6LeUJjIgWrlheOmbYltOy
v7NEyevMjULoiGZdARQljywvZLXU3L0b8WCqFQgZkidqOrewsce9e8/wqxuH6L+QZiKlA/ARIFA5
psvSa6PoIW8n/wiw1nzfp+ls/8jC5vKE3vUPag==

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
