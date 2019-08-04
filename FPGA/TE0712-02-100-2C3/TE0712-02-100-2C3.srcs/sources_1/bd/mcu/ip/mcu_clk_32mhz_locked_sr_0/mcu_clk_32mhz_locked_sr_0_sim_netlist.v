// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Aug  4 02:02:24 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_locked_sr_0/mcu_clk_32mhz_locked_sr_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_sr_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_sr_0,c_shift_ram_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1" *) 
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
klQ5h9hgPT4p1YBkLUYG8lguTKRhX0z2xODTfvC0iZ4ANS2ufXQ4XxirL31R7wyoNNR1hd7rMjwq
bhFP3bRYRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m0Wn8/fGtoK5/3nNxNBBvNhfylkjw8jAoTERkIzypaD+FUTSQmf52TpAbVY1LPDo/g6d8tzIrR8n
vZ2G5ckAbcwDRGFF5wpZ/kzyANCTceWo7S+WbzLbzhWkG5fkJbJk/tafbSvqruxodmgtrUI2IZDv
n7Mrf4GRIdC1iTgv+oM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mC2bSkADVOO0t7I1BTHPnOuMcPIdeypycvBkfsUtXFD/WSov2Pt6qF5xMTcs6woq+465yEDvey00
mpX9JC1ypEuHaZI+dtH7s+A4vYLXy34kFLryTKJtqycAy6XqNtTegvy4giaDFwDn7LgsamHSf/4D
cVGL06Ul6gm+ZOMvzok6Y9TBltlEkZOZ4GncKspHPcn3EJar4GdDxKcPll1RqSFbA2m7bWz6jPV3
uOD6IWnIflyobdLIsuB8hse3kjXBG5sl6X8AP4armpo9TNNnRIRG2FoI6g16Sj6zldS9XF54ge/w
jnsP0vce7kfzvP1LjtFrWdW0raW61dIddZVz5A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LC8srWyP8+H+elFwWxNw8UhEF94Tx3vV4OlwBcwFszd9xuvwYRipLEwY4ar7HEoCwJI7beW6k6I1
ntJSXGEnPMgIDe7PadSQIz6gi9ErRHWRhWD6bEDNd/ZjFQuOakXk78jzxOTKuOpQ+ExjdHImyPzK
mDR0BnkVc/QiSO7zpOf3yjx9Vzb0Fba6OgXg0iLPz1MUr0ahYIc0MAkw4pRBo6IH5ilqVbkgNQcT
G4z/0OSzsBxipE9o1elAez7CnehtEQ66g6i3JpIIwqwnpZNQ9otSnS8LN/spRcQLOUuBq9ynGkPL
sF7EUF1gLkTFFMGgnZgawWi0V0jhiHQkJuLKPQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ijV0yStg7uRIl3uzK8/hlbIaWGHa9aPC5Eu/o1vErrwtArYsGFt3RCyG/S90FB6jkuLgqwPR8ZlQ
P9t/F2FWmEkwwjGbdrRKFfpbkjh5HVn0vvLKCP3SiVHXCOWxxb5z8BV+yCNdpgdnsHFecK1M8ydQ
C530kRu3UD1LcnZcWJi41LcJAc5rvlw/SP1gbl+I1qsRNEHsb+MK5vyjgwBZAqKyqi7/UK1VEPdq
myeWeCRrU0GqEq5y/PHBMknv1SqNe0d5qzG1rmAtC4df+iivMCc9xuHsCA7iqoe+ZKnMmnA/8F6+
nY+gx8AQNplCeFxWppKH952fIYplHtE2rKQyVQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
saHlQAxOuJkLItpv5N3fJoJP3EdR34QNYHtUBFx7fcQy8HAUaZ/9Tlt2kfpn9r/pk1MmJ7uf4z73
LyaG/PWw7v3yH/KIVSLeIxiaSHoVfdWH1/RDH6k3DTDNbWSJDOjGSvMTThUKe899F8IXTD5jKxCh
frGB3Io0W4klQV7ADEw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RFiy0rrSiVrZMC725S3XkUSDuMS7Z+xog1sOwADnIBmdCChtYLUQVO9oPjXIujfg3bBFTH3qzII3
Y63fFMSZnnzk+ups3RPMBqEPPdMQSwlpDzsvhCOwYHe/rsOPZvqd7lL6QOKoA3mS9TZIP+mOaTKd
vzQiVyfS0rs+QHdJcw49jD5y7Dc3clQHD9xZMAMUHa5v8hzX4IOcnkSUOLpsZptR/WM7rcMnTzCL
x6m2UC+xSrwrb5vEz9cePMHx9NJyO2DBG0HTEDzGQQkrOCJJjvBxtB3r/E7/3eWGHvMwphSJnfCd
PfvYXz88X+ZVCW9dTNfc75jI7ogVMSunmtUuMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q27pDLYyccji1kRWWU+LepgCsKsRDL+YMOghJssq6bLOG+sTANT3u18LvXldfzZpc20/wSR7I8E1
94WOJJ+L+THxWvzdgX84lTkQ0rwqhxR47pc5hcCkpRrTxHeutFoYX5++m6BnkhJn+seiN4dwg3rk
PdSY5vJ/q3tfBfDSEugt/SGxDMve6Pw7Ac5BOoeczWDlYBz8AmpV1n7Xt2s97kmg7MmvMrzqLy4Q
vEp5oaruV8ZKPacCMyU5w2B0JueceFUucySCmjQmKYRIrq2T1+lnLHTsCVpQ5VfYoorY7enaNTP3
bvD0b5+NC1sWOO9m91mD6KNNh7CzqYyL+HnOtQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
f+F9Vj3e0k4jRtsY38H7tEumFtjanxQ8HpaCZBLzUy93UkpT/MSvev3zBvE4dZ44buQE3U9a6nGW
s3GfX0A4XCb86af533n4wL6/TcqRrZiS1Z+OvjPP44cYucvhLDH2g78wwL3GtRCYcZ+DKUSDxS0D
XAd6MALQifrMTVeG2c77jf924qxn7CI1qLRWsP8yuk+VMmltKDAqHSmuP+T+wZitd3TcV7Lz+vZI
HKABVKDB5s7DetFKh3S3LehEXW3qihl+oEfEtFnpd6DrWbKfhCF61OUVgVTX3QNM1Xa6eL0CQuOZ
O1CSjPPmUAvOBdnspz3gmIfm6M30ftdmntLvIA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5504)
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
