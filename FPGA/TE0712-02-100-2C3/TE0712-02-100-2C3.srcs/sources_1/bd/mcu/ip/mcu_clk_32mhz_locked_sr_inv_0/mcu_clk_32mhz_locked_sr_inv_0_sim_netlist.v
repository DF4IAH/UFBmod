// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 14:14:12 2019
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
b9NwaJ/4MLWt
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
