// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Aug  1 23:45:27 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_LVDS_rst_delay_inv_0 -prefix
//               mcu_LVDS_rst_delay_inv_0_ mcu_c_addsub_0_0_sim_netlist.v
// Design      : mcu_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_addsub_0_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_LVDS_rst_delay_inv_0
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
  mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12
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
  mcu_LVDS_rst_delay_inv_0_c_addsub_v12_0_12_viv xst_addsub
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
EhRZirIMZC88kNCendahaGH9jz/ZDp55st/Qh/BBa5CGqqnpexDN0/te8AduRFOs7QKYc14SG86h
cUlcQOTbHAelArmwfCS1TXHonCP76CASUXiqRvNcJNoaEZ40A6+Tn+MfTxf4TgmdMTRPXXN+sYot
tX01EJnj7w3ZvRaCmEvGY2F05fESk3GyuYCtL17k69MX3FIdenX87/+FxClX5sLJ7iCXk0owkJ49
ATpc+4HV4Axf8yzPK7EhN3TVSjsZVzC6W5xww2usL9OjGhxkCoWvGF7O1Hev/cU4zLydrWLBRv9u
2hRKt1tHv4f8iELeAE1s7EHqXjpRpgJvOOvWIw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BsStuhEIxwrk3mvdt5+P2exuWzVOyAkO5jlHwPlGIySVSFu/aUgYTIDAUDjXdFwMJz9yaaDR2Xmh
AgP5FOaAR3i4RQNLKzIgkDYIvUH+x2Oa9VZeuX+C3WU/z8tCaGULFfsd63KKlnmrTdNPzrk8EQbK
705U9/NpGDmylPCGyN3OBu5EtIoNYMcosDpbw6SFRFkNcxNYSPN37gphSu7JLie4ElbGGxiHH7Ft
ZGwUwKALlc3fPYzdPGpHzLOVzaxIrn06HIRXPKPlGk3fky112h7S8tltmhcVcaz0SHVW3b7QdbKU
6YTbaRXcZVjO9K7oOscWy17a8Vp/YpZ6Pt5KDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4256)
`pragma protect data_block
RYwEZdbIGigxmCtWuAG4rSxGvqwonbURImN/F/XHXOqtcW8tnB7p0r6IESU4LRY0bRDjGdvL2vls
vQjs2tZesW/DNYCbDjBCw+yN8LCMknqa4WqpRxyQO1YF6ZDsVHWR53RbMiaw56M9G2RPR1dGuJln
QT1Yv18pyzsz5QBrHq37wKZ7bLlThgdZ0G1H7qdkeZEMx62IGG27lxtrekuAKA4Fu5FQQ1QmepmD
+mTNU5CmebnwAJ8UlBPc9vioGi614iDqccVyucpz85KEkPloXsSFKGEox7YyHfvbZhZH+H3njZ+1
IS2NIFqBeoaDzDBO6XDFKcsnaneMTvg/3kphgCSczOkfa05F42Ms/frfjXCYHiy9yZFOQ5AHOeNP
aoNnDhNwEy5E541SprK/jPUuitzK1Cr40B4/cUwvzUueq70vvWvlh+5rL28qJco3w51ZwU9AvJnH
GHaYTsj8MT7zQA/hPtic1dXfoNxt//1BMFpq6WSTMCDfYc1xKxz+hQIz2X0kQ9EmC3r2eEJpmRz2
MVeatCaWYwwVPVBxpMOIOq2D5kYV36cBYdkS47WqR9TR0WADfY4AFHs3j4um2Z/m2lQjJvMla2Wc
JQO9yV50O/U/CLmzKp3CSLOwnWCeGfikkg4mKmfvirehpENAQ8v3NE9tQRWrvhpm2zMlArNR2PEa
L7zir6diuxnTyo7Eb15biD7bL2meMMzI+Au2C3qb9qv8Z+ZGl8131KLWd6sLEub2eOzZbjMuP85G
T9xrRzaoIioMv2Mg9tIF0gJV52WzP/7Z9TP4Txa8TIG6BPyOjQbPEsM1ag0wcKmm4w0HG5ci6Bng
aNNQ79fjX3xT83ZclI2vwE6FO+MVkjK+8ERkBNiO6N0E0e34dUAxiQUi87nlinTZ4uJqPCMCpVwp
3+1BbaVECKD9NpYZ08Xh779aXE0TyZRdZ4kmygv2vbZjihTba0SOhYdgnFs205fbs5R0ACJVbSSf
EI3H7m7H4ZtGKoVfuLZ+1SjlKj40ktvfM5Y2EAFSqXIJZT87m2w48ksGGKmZvdPgb8CxwgqgFqNp
JIz4AUyENlA4aO1INuOv15rkeimOyNgYdE98mZExwx6qEc3ZWUm2Pc2vZzkliE5TT00ZC+7/Pjou
/q73ibNUrxGQy/ADFEzEJyhDhLKCpswjxLGO4ev9XRER861aOD+jSv/B/n82WQyP3SD/DMsb1CdJ
RhtAjYbF/YlohHmVXp8oBUU4bDKHVY3Pp4eObJjMUPp4cDPZnL9O0KExPrYZU4LfAERvYwoP7AGc
kRmj6kwL/7Rux4R9lNisbnxrTCxuXWUrJUeW4vflyxtlLHRURWfUe8hiVjbnSayrnYhFwq93oYpi
a2bh1oD9uKPzf+QRMCXpozeENOSkL1lueDGviPsGX4GI6Ks0/4eNUh9gTp4+qgEDERYSlKGHrxKU
KtIV4pmM8OE+5w140X0k/BL7AMh7yazGhIH+IKeHeO5hnKkpB2QB0NHUOmEUzv+KuBf3Nbk2IluB
80Wd7AdVGYl1DT9fEdCnt0zUrathwMlshIGIdLfapukP5wtdTPDzm0+qRj6pT8YDcqJ5AXZTseGy
3wmmlsjNQ+kzcx1ZJdk+Cwf5bug0OlnIIXUuZ+z8EXJQFNKQq5KjQ+mKOuHEe67E23hzt7J0C14U
aQJzYFezct3hN2GK/ck0PgEMxlYvAopIQKxWToZduo3SHp+3phJwbXKfJSmTEPdql179icalHf7s
TcZvr9JiKOETdywYQhkTYvuVrXedf63I5qTxFt+G5Rn28+O5Cozc8GsPHPA3wahL9YciofWNNLL6
yio1fApt363hpv7VwCVpSNY7orFIUcaxAvXfXXG31O9yEaqt3th6Z8D1px+Ov8VbPx50KpLfbRIC
R+QvnF8hbSgQadAhvabmVhnnmWtiNFmxbibZlI2DEFzmu8BkWq0BIBX41aU4AGE8kc4aTYQOuxDJ
7rxcl6MQeBEpZgbtmMXetwax40U9u0mWJiyN+Dq9vRpKQZurK5CHguQSqAZgfdA5/xAgePX3hzHb
K6NTOWtn/sqAxREcEvEdCC2PAbJWAyWF8LNvA/W9Xelr3iwstYDcVJWPoPkw5RfqeN3j4GeBobu+
3brmjd2oKqFMuDubExpUApBjYszFy2/twGLlz2NgGicX6Ywla0E8kh+XPWGww+Dognt2whgybw7A
g7i3VU1iOJ+orj68QbuTEPIacVqBAoFq2ZQjALcD+8i4qj74/w4NvswP4VG42w8pLwCu3/CyY0wJ
7vcV79jrZarz8YkYkoYcXnCkKi+//LKSriB/+uAxVTY+V9dPe4S3os/N7ElWEbQnSCELiujkVN5G
jFvePYaeBsWRvglG5nXWMqmDldIacTcM/EKAcrMdrYQ2GgVhr5NHuSfLfkwsyHVXjDIixzYwxenm
2CKtit/R6enhJFJBNniC1fK/3Px0Sn78uzwvs7GIs4W3iHk+ozPk120DIen5cKMm+grtkssceRze
94bNAOQG8a3oZt2VKl0DZ1a+MvOVyAXqpLmcNQVGF1xe5NdhuKnUXywD2jSFuacL4WmTLPQ/WxAy
CNb5bS/crZywEw3DPA+Iv2bkrz3bO6+QnWgF1zjGpRQSCZvkRG/GcXzrc1BSICop6wyvGMPSt4Z7
j0f8rUg6UEH4X5S5aI/e/zqnjoRkqwGR6vZJgvfGAmVDax1Q5ArEP0XJ0fBat4tNVlgEFy9WUanb
UQZ7fBpPkKztDAo34EqZkHVYid3Jmr+qaw9a212P2hsw45oIBKsHKaUsVOwH5pYhayqdn1mdv4M/
p3ikigBeW9JRnb4rbPzAtDy/Os3Ezu+pSJl3D0mr8zZRe8U4Mze3MxLfI2aJokgAM7+LAxjk6Mt6
xpU4ABvrjNInodJ4lBAysA9BlulF4Rru8JVgUadDaO9jmMwfBfFgu4Sf5YG7sv8PRdCoNiU16LQ2
6DlRFnOfb8Z9M/IFEX8dySo3wq3yDuZgVr1A1MMryWqtIC7SjgsYfUKOvxHZ+vnIk1ojA1Ei/q27
mJWnq+xCJb5zFYCQITxYzjsinFQUr/cY9xlHXmnYb+Ag+f/7lM49W67fCRNlvG+VujFIcS4R4l86
1PODC1AXpb/Z8IM4J7FAQ5FSVd749AcWOUGop4J17ItrZQ3cKE8BHTaIPMXgUIn6IklniHo1K5Xs
/HsQ8kqUudwxRwGMsghykwO4zKzXhwgCV02NGOa4ZuXXSfQHTWQxsfVgpC332aX0rf1E8GYGt8UZ
aHrw9vUd5wKyNvg9jyocriXJD7kCMx/sRlOaomlKwhsOsUG48hQ4uI3/N90r3mErvA3kSqQdoYdB
8qKMTwL2kk39cH8863dqWtEaP4EbsujqtA6fzq1E4vRCCODx/5unj+nl6a4YycrAXPgrPSDLqeqw
DmVVFE8ZFOsES/3hNAxZEFzJE/HYajKb+3viVx1EeeUkl7Tc85brdhenw7Cj2DQtMwQz//Lmfeid
m/Rn8NsWZm089oUvcnjceo/mcqGoClOW7dDmHzHo0sYrtzGOBdZfiAcLore32wVN7JQ3aIcHmGCU
NbEni7Repr4wp7eW5kDUQmnDzBuMc7F0UThbho9jARAQ2TyfMjoZju1onElpbFY3HYMeYTurLFIW
U23gDn1WrtvGEvU9v1aO4ss8XdlQAjiIoWugvnfY36q+kSyYWgAh94cr+OSxCWx/nj5D6yS+HKVS
6NBVUN3YQiSiPrM2eNDYtKV/jNOtMEbuMJ12pG+d/OknsV9gjCg+sJGJFobXSnfdADpnYTNPqWYq
ipPGZFvChF1CBhsG5t5n4IYfw3Lnbb3QMrG64oXf1d2FtivlnBfTv6kePQkk2w2JIyiqTcpkE8N1
1nHrTAMuWuXRmNcr2aixr5P7V0pycu+ItI8F0fnNHEpdIvBQP/6RI0reO7h5SWVl/wgiLT1xhqOB
ckVryuQLri6xp5ebk0JU9s8PMtK+8Bg0vb1I/ZzW51q6CQy2KSgAn1bWInimJtcjd7Xdm0HqaBFK
MjIuf7YVxUnM2agWG3R09RtSH31PwKKNJsfR9AAICy2wHIIR9kUn3ikg2Q4dpt6C1BxLLpQ5acPL
gBG1BnInLQJHyixOnxHYd4a/lenPKIvNadZ5zxlP2ewyWh3mBwpVwnEUOanAPlrSFme9qUqNLK31
iqbIXPdmkIHHCPcnvl08RGZ9y2Rmzx4bMeFkyyNkaIkQEQlclwvMnrbuwmJAO0Gx8ZsEy9W4GCcx
Crvaa5v6e/PeEFn9Nw567nd7hILb30LDaIavJTUacF630dh+SGJFCn7xbbDphBiSgNkMw1+0M71J
6nwDPlv2G90/eLRVu3McUPw4L8Ih5Xb7rDcRryxI69VWUeiYOGM99CNX9czgPG6iHRHK429p/HBF
u+guM2CjQdX8qwO3YjUHDOWvuTx+iNtZg3IBRrIsTamLH/uFPwxRNglenA3wWswHhXUHoSBvSDy2
ia8xJkfXXZTDsHrJt969f3IiZGdeHoFsMPaadnnJlu6Wl3X7zzm+Nvu5ARJX0kVHo5FLTlMYPWbv
b/41NH3vUY0w/6kzKzk36RVWJjDm6XOWqthSrnGE/w9NwKHIpyxde3ICDV6S//m5LAoLMMU1HOHY
okQU8nu9VZOn1j0ha68hO+pn0ORYnopr0XoJg98MBH6VJVlpJobsZkEoD+fl9nCEkI2YwHONpXsw
o3a4uj2TX60l9JI7wSKmAkOWbkqCjhXervKImzC0h2XQDkYOFR2F/LQPUp1asIq3HLoNcbQZQxGU
MojXmEladd+dlwJcUxi2l9Qr7EVyz40lKzCVkrrg9BvYg3jeSkxIB1f/imDVu4UO0LTrJnWgm+Z7
O/pDX7ULDtj0q3kybft/W8lPnVmc5JD7aByLLnDlh0Ku6cW/KHgvr/PJqV3fYo4rY661ZN8LwQbQ
W8AtUp7Ta0DsVimnflPvAavKH3aNp9FoDHYXVeuxltGkZwdLnmk+/Rb/Dkom56zSvDNdtXaAcJ3L
3p0sDWogiFf0Z7rJPxxTxArBX6Y33T/4NrLI7o71KUGr4AzOHyou08aBc+bZfhgCDseSWR/7d5gr
X4jtoGVEviKYCDcYjlrZAMrNZpykYh6qF/TCBd+IwPfdgszu2fLw0ar9n6JNcY9o6JQrQsBFJ4nz
oz5RaOD818gCK38P2CFj4AyX+LtfqSgZq+USFXkaJk/JNyUEKTln5n7tDFjEoN4POiuaQRdjlsk6
ZXhkL3pgwxdAZGuSuxE8tjNRRy9dgFRUGtUpcepGXkX5+dIQPrbUCakZgRZ2IMuE4vQsF/p3+k/f
fQT0yeZF6uNQUriLwMomOlnLdTLa6GirtpGp5eoXrPhKMvqb74JyRaFbZUS4TWts9vLj/Ssqwxj0
xl6DWZXKEjeF9RY2+dsV3PFkxzEyBoALqZdkM4XeGEL2dQO+gpGDHAHqQRxJYn9FYC6tvq6aQmXe
CdKfnFTlrDs=
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
