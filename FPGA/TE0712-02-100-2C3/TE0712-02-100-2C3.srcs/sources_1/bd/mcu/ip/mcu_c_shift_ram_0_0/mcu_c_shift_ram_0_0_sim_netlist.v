// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 15:10:14 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_shift_ram_0_0/mcu_c_shift_ram_0_0_sim_netlist.v
// Design      : mcu_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_c_shift_ram_0_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "64" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12
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

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mcu_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
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
R80NnScBgIZD14acGTeYZyZzlDoMDRJH97QvrM1z3/BPxjYOI5xO+RmLRE3ogivikKxeQqDB3hYo
CtT6MXJE8w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pzFf5UkhQCihEthT9/vXIu9qyyEco3ugn72RSG7p68vod9TXq7nS9azLrnGkzXHs3PQFBkq+3+ZG
PNN41vDN58/lK8pIjiAlp2V0xXr8ZRf/QoS3nU9pnZ3CEwxt9CGwUMks2MBnm+VSjWWRxbkUaTxZ
+kjzVWvQpUuyFFsOEs8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xDcafb3KrEW7vk1Eyiww/9CKbzlKF9C0uKrVBz5bHy5+6GMNsnwfCSkgxU14+VriR3jhdDN7viwB
M3a2pKPouTEOz066rknyw5X/sQ4hniBD3iUl4NQWkHTGym3kv31ZUeZYdl5ODPvzfUJOWUvkAXp/
gf4rtgV5FBbGm8qJS4jxuFSsv4rhcb7t+cae5sULvX9h7Uh0lEoAlNX3YmEW0fWj4bhIgTdzT2gk
C1ytdGU/UAnitwmujc/k+32KWV0i/o3dHRhIc31iawLLSmuBJYefDEaLG6KE8nGHeuho45Se0dhe
7kIaZp4SW1wGf7C0xxqwh1cgZ7+6eWgYBqVY1g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OrzITnToGC+ryHZVkpDHCj6CgE4vEVrPZ7Z829783FsE2zjugDCdpipuFZ7ikbeX4Bc52TEJ4mFm
0OxylPcCXPIE74pJ186gBXkmldW4bGFMhTmUHJ94bRAsyJjr329fm+j77y2NmfbHMVOsljahWWK4
OMppytgOrZcnsnsORsbXvvikZALiCB2t+Qc4RdHc3/98o+DDvRf+gwTZNX0GMOitJmVVvqxqw6No
K3aHL26WS+5291/TUz7aF7ySSp+k84h+0omwPrcy0Xc3URWaoYbqLrWiEi22RgQYitI1tEsa+afh
tv3h9WNr+65gWTbdbwWyOz1NeXJSaNV/mc+/Lg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
riYGAyaVfIXieMgcJVFsucQ9kUNBkyzgx5CLlDibSmqSJjCaDvK63ymwoZpsGDT9Rugub8H1Y8xX
XUpLlzZGCXrlWs6NgjXfNxVpLlkmz7GswYkQ6KhUkZhRuPh0HrpJPt1ne+1pTM6fzi5LXsyTv6sn
TisWpJPdsnmBDHgM6jupb4Iv3OG7/q/NPck9K59oFLN+AyKeQ/8pEy2j7xpMiFTRlE1OTJj2mjHF
yWQWyURMafr1KK5t9Wu7YuocfKiTo0f6okHNafEo/nNpObW1D/liUJlS5GVguNNbnFjSuun9SM4T
MXhUoU0rVPqSkeCGnTpMMYK0MY5IwmbyZXn/fQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
HyAIbEI1uxEAA90t6+VWFTmyUje1JDZQZoMv6A5VyFWA8tJ80b/Pwhc93aHby8xZos0WjlEANrxF
3hJ/l8XJYMVZWlVytBIRAZYGbhnMBOGo/5sjE6O2Ap0308iwfA50rb1ZITdKRqNiW+PlWkaGC+3R
QMUfNUa7cSm841V7mmc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUEL70ZQ78wO25wq2V+5JNZcUKzj485nYHAlIxulC+dFYZ1T3bS7X0juNGn/cdIyRbeWgA5z1viA
KyiSR064Z0BmWFsIYHfLEP1CENE6B/DkEgUM//4pBnGxH0CUe8wWHQBcyJQAxQHemECYQ5/QfTqT
96OTv0jwZ8yRjX1vKXS1qZKREGwNAsV3Kgrd9M5oaNz3PuISlyOOLoxPx9Qvu0Z0QYAzZbksLAI6
oekHTbR7CXs/P7+GCnbyf0lD6RFUyKASz8PAAvPi/+knG0A5BGQv9W8rEQ1GlCyJMbWqS7UMYIM5
Aany0Gd6zUtHqzCJMTpR0Gv6o8IS9bMCD8CICQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ipqZhJ8eS3pZCuMNp159HqYaJHvQVsPxQKV8HePWwTZkcbpM8zVpMnbfFub9SHrUJZRo9VJgMmdG
q5DkpO6aCVdQq6O/UlQQFCh8ytFijv/EZ9BZSNxacUlfFyaqCYMQ/7IQB/VoybDsBabLX+7CaM/h
90GXZE98Gvp3v7v5JJMB+Z9aUcRzWdLzKrVcLEG90UT542aDBvPpdRYpsaZBmrxlHMdwEzPQR6Ef
Worp8TsASFxgBBDn4Sc0d3tVCVJiI6onK0UyJJ9NKYP+UZR15A05ei0yaIGSVLxYZ74pEEFsi10L
tOStZMX2BLsUikW0fHNBS+O9Q0Su/gMPCZFn2g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hon9EWD2GeR5T8FVTRQJUz+j6fJYWxNKLKr4eLx36tduyiXPZg8DsWJZNBMXqq1dSEh1AZDDue4a
WAYRzjmO4cmVAKHz2GckiSBVPCo4xrwugZFyZCzUVBDwvj9065poeiIw7J9BUEdXnpX11W0QoIqZ
/EIS9SBzjDwEczZKY0tkSkQFpI17vFzZlgA4ZNMyxSaOic52SE/qYIZ2Tdm2ntfLAy1jZp2SVAbd
juLt6SJDKq36jQkzgj7x6FQYz6GH3j+4VHpXtPKRKiBhe7Bl6CpLv8iHDE97o2ddNzAB1TG1oH2c
ht+ZS9XUHgEQliRxkNZZfsGmSroBSxS35HVZgQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5408)
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
