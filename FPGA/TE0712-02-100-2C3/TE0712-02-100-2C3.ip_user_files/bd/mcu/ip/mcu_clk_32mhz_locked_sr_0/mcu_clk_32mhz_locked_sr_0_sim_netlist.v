// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:11:24 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_0 -prefix
//               mcu_clk_32mhz_locked_sr_0_ mcu_clk_32mhz_locked_sr_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_sr_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_sr_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_sr_0
   (D,
    CLK,
    SSET,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN mcu_clk_wiz_0_0_clk_32_lvds, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sset_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sset_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) input SSET;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SSET;

  (* C_AINIT_VAL = "1" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "1" *) 
  (* c_depth = "6" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_13 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(SSET));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "1" *) (* C_DEFAULT_DATA = "1" *) 
(* C_DEPTH = "6" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "1" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_13
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SSET;

  (* C_AINIT_VAL = "1" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "1" *) 
  (* c_depth = "6" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_13_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(SSET));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
b799uCcUfxZu1ao7zeEzw8PS0JPPX0oF8R+kYsVcL/gpy0Yo+xnJbEp+AUvVPfbol5u8vopZTh11
wDrPCAU5fw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Eqj76iG3AE7UMc9crPG58lM/nobT0dZidtwTN5RT2vNF+sxCeDTLjJYXlgdpDnb1c6574LD+7Cvh
fB3rbUhV4K7QZ9yj0wN2cSAG5g0jAu/zHXsHgMhcgACnyhpHwQ54geapn/RMof0tb5m/whyGqL+m
iJ3AUFGWCREUSsPe8Sg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gsUdXiTl26V3zIhT+V4THSjhxJ3/lGfBlDr/6/BwsHPL2Dbl6Ub62ynTBGmRpo3HeSVbdLrvkKRy
pc0SXVeUQfvQdkLijWQs9naVYARmiLnPe6WpeG7BDokfPX+VnsBQBFW1c6byP44TPcxZXujnXXBu
Prm0Q23IGAbGxht5zbTlQjyqYEvpfkfV8aW8gf09oqbgdGF7TaEW4R19z82ZLr9qLhZf5anw1Rtj
Ox0TfDHHUop+xewbRw+A7baKXPXjRRV72+mYrmMLiE70XRy3Zi8trQgXr3XnzryOYMHD0CD9Do6t
XWt6/kto1ZYyiyEj01Rd20hf1YNCOX6CJ/71jA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KTG+OhFcRwZLQ+h0AE3D9vIJ9wtU3mIbhOhF3OpaB2FrcY+gooBNqmjGVLVR4pEpd2QE435xbgvc
xY95HOytJ3oc9OQcSIF8qaASwr0SRsg96stWDs9FyOGxcARlbWEj51B9FlW/0sxnEhHHgWFJ9SNW
kkAhyh4bNzUt6TDt5CTpiUwykuwSF6w17XANtH64Gmy+YeIs51p+Q7XO769gjqwDAjEzH6vglvTx
+WI+82KIPJD/NGWo9LusRlOY0JsuagUiib8vEhQXrmdWEkByzzZlkpQtREeOr/tcEdb4Rlt08pwE
mtwxYG7j4HlPelGjOGBW7QUPyQZ4+LqkxGoDPg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KZFlJRqsmRXvFfacag5/k29DkbgF1nG6RQr0eDGZP/6T8/sHyqHV3docdzurN61Po5j/YYKUEauG
qozPylaafHqoA7Nrya/U8FdX+vAQbLYXMKqswkyNcgYuK4o8awzAHIPUkKg3IKZGPFXSUI+bmCJF
FynisGmiN7QsLew8SEB7Tm/+VZrPnFxxJJtahygkIcvBmf6ymNv3nFjgPCEPXO5se7JFB/GcfbiJ
6DAXkLPrnOFhAuwCBWQ3ndRHZnvKvKlbZsCidHKEtHMDs7z6KZfjl4zvB+O0cvtvZqC9Ub/Jjko5
GSbDLz3zCeYbbJT0IA6JH2/T2bucfbLWOnEGBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dC0tSByvfZHQ5f+mv3i29gZvP77yf2/wvKCIN6ntKN9SK0eJTMr7xafT26eVHIF+p6J/qcGm9s6T
rp1wQze+YM55XqmXn0BtuPQKwzyFRnqBkeOFpAmK1l4+OUmMq8Gl9KyTTxhLVy3ezq4y/56OQ26k
GnUeiJl87N8+DUibqQs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMXPBaikVBYdIVbBPZJrhWLEWchFdaOWQCP2gxDQFgjMue6siiFsFGu2/dmWUkbB+6sUpD+fL0iq
ptIw4AujeRqLokgUMz4FyYI1Pxi0ntiw1OFUEFFJ+RlN15Cb2FnmBMmSxhZY4Qh4gUyRMInmaDW5
V7fwZAhby0NgVhVj5JFAoSjIYoEjb/CO2VycaiPpWaQG1ttPd3m43ZvUFPqh33Tom5tJ6zOgnZz7
IaEaSOANGpAsC9THZtsZUDg7Saz2syw56cvnkZjwEWOZoBj6LCnBJrPO6TIV+IneRiGgn14M/5R/
NmcWyKzr4aRH4+04xCxfcv98f/+TKq+FZrt0gw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pXNPvuxLBTyVahCBxKKSQ5DFS4nz5+HvkccLJiCyHyXGX2K8r9+PH7jk0OCAy7RNY0zQ6JTyN2ui
CknUIu1JPlAjyAFwwRlWOLviH9tOZBDClNawBqRL4BUtT+ErcTqqBniNHYXp9io83lX6CgEg9l7o
Bs9Cf7g7S174BPRd6KrIrLxvu7E/jXBLQmAWDxxh5N+BpbHKpoqLmnuFeGwMR1PIuVJA/xjueQqG
aY8gyLKkH4IZBAgehlBWsqu2TzL4tVeIrNEvVoaSF/+xxj0onHoDx5GhKnoDlfNMExzVKTkgUeyB
a1ASWknFhymrT5oRwBcN1YQtMD4FQTQyY6YRIg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFAo9SsMF3ngTKGkVrysUKzXMv+YxFSlTX6sRm6BSOwJEiTpK44GPpjPAOdpg3gFvwycPW0rU4DD
Li/tBmInB/NyhCREI1wOL2TxXzG5PpRAbvELpuXQ9N+NRBLjrycw1BISKOlZYv6DX9pwUcvVnLYN
1JFA0z5imW+Ngt4OXwqOCDQOmwTPHZxcV+GmV/OrlBlCYUahrZQt5CBkMoBSBvEG1OliMxCdymXc
T9vsJAGtSvpbtty9sbKWLMHQpm6Tzm0tqUTkLyxxe/vB3VLBJ9REqTwS8LbQfXajc1J8/wZH4bTJ
9auIJHdSzkB5cHUDgZ8kQ0oF6jxoSXATHBLI+g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5440)
`pragma protect data_block
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
lLg=
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
