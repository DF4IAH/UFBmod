// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 14:14:12 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_locked_sr_0 -prefix
//               mcu_clk_32mhz_locked_sr_0_ mcu_c_shift_ram_0_0_sim_netlist.v
// Design      : mcu_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_sr_0
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
  (* c_depth = "34" *) 
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
  mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12 U0
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
(* C_DEPTH = "34" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12
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
  (* c_depth = "34" *) 
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
  mcu_clk_32mhz_locked_sr_0_c_shift_ram_v12_0_12_viv i_synth
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
El9gOBSkFEKQZEEu4kWcIRxDRD0h/aJE/xgZVv+Zr4ClM6hzzUDoFqFFnK387cHyNbVPlAV2RkuQ
f78d4j6qVyzuFswkShLV3NoWWZ0dEBbf2dVsP3dYj9yEWx/h86camGhVz8tSxzfdMIq2P0PxQb14
atAjsZLgXeFyeX2wxJ/g91rN3clA9gJKHd5HBXfAy6GJ1fyLEsKnWjPiUGa+cCTdq4nxP6AnfVpJ
JwXpgFPuYewK7xnCpL76io0I1bRP4XnzEIjLbXZ+gAbMcyJnM37A8DdfPlBpPJAcNdL+Zkr42pJz
NfOqHyCMc4R1NZqKrxkDR0SZHcvOvKfvMxnxKg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s5ofUu/MOD5spR3M+fwtOf8fJiTTe34f+OySXS9tGYmkfLkYoEPfY4v0r8SsV8mFivUp1BN+8lqW
1tCyaK3Jra0jCP0sTnAqFMpdYixw0HB5FobrLFuvJ98nD4Wu4x8HxhqILEgqOPjI3bnC0tx6jYUu
hX8QKWaUaDhgdmH18RocxxlN716jcwBD8NjaOqtozgPNaZPKE/4MKT9MUkd0TlBAkUkyfCafoT1S
XDoaLcqOwiS8LEDSi26Pb0A4Um8hqLWtxVJBguBBZKFX7Yi0A3OT/4HzYCzXT8FPMTPG6S0QnQRk
+8lK6/IRKPx4Pq3t759fQ7ut8S85RAcyhU0Fvg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4768)
`pragma protect data_block
vNDCZz3SRpFOL+2aMk+WItnnQRkZVM+kDoQhvzcy697aCk6oM1vsWhIbv29qM9HQWCDxFwafig/a
5kYY9ykzn5ocIl1BbewB7buUkF0xOKavnwyz8Mk0E7pJ7FWcSXbQ9h6VKEh9LEhTvjF349uihbgb
Pu3qm9zAJKj7STU54mH7fBuMaWhmrBJVEmbwx7z5NSNVKaY/dm9i1smxc431/HcWFFWIPGFw9f+V
v9M1HrHm2mueQvAsNXB5BQg5kFFuowMoNF3dx/lZm0UZs+5kjDll2M1B1Ui95MjEEdg3CIeQrUm4
TLYg2uwdXnydjQXP2kEEQqycwGbRjxtXAb5+S7ev7s0nJdndNOtTjDh5ivu5NulSOzsKNnu7PeRq
k/aqsIWN75zP2slm88A2hgoq0raSv6hihEcxI9uR6AA15PLNrHy8So1VEkeqfpyNZ/G2AWbui0L6
a3g7n11ueAmXOlRoqGx13sGlRnAMMm7MGDXPlKsHZAqlGrfBdt0N1BxB0p09Eup5SmFtSjGoN9eJ
ai9BnrXfgkNHvn9ppyvgVFMylN5gQ5jbOnaN+xHn29jBBZj9pT5fVSVrZ33aKm/ZddOdzF8r/EKx
Dq7vFPH7iQwPQbt7GR1qQryZPuZ7OSfPFNezZya8YRmRq74mHIGGICAh3jN9Sv6UniSYmMNlTc62
PkzmU3h+hQMjjzSNld/k+zAcQmU5xywP2OSJquDSjTGDN8jHGjkGNrtMc0Q9EIfLMcXxjrpDHYei
TT01e84Oh6v7gjKuTkFaR690k5rtxz8wc4tYlt3h9nHReckTU+AUSDAbhleY1m46VPvYgrfLu/MC
1/9hfdlPkq0wFBtp197DVPj44HfX6s8ECXvAaSFDHQjqVgB0ZQ0Vogjwr6tzaoO7vYKGMrNgTzx/
qtiJxqkLWAyk8W6SCwiL9yLzUTdPIh1ITq+bFIATOSxBbjFZP9WVAkOe95MkUilJytSe/H4H3InG
I6awjAgjJVZF4pKyfkhlSNCEu5eYX8WfGFQlowutU/6R/OuZmp+G/JrxvbqRiGbszLP6S8hHZf04
z4X/Iwnv/iZjwtAuH4RGXcU4IsljbA3DqAJNvrG2rKNxdmpPPIMPBU9eYKKj7KfYEJIA5dGQ1KPI
aXlpQDVgBGYO4J4sM32LEb+wnpspdU6R8ZvFcJP60DFBrj2d5DZUYBoWTDOXNQYiXSgzKLmsCMmQ
Gd7ut1dNT/SF6bdoo8a90xmUWxOu3EGRW123N7wz+uCF2qX2s5Xsl5C6fSt76gb+9A9lxg2JeT+n
IybmJ8M9raw0SHC6v5tDebdEIKsGQswCSyrrjWLyoju4Rlh5SJWHhbpdYr01v2gyCrUOBrvhV1Iv
seBEilKlan+6SZxF46Y7NMaNwpfXkseZmlye6ifMoAuqdCFAH021ABkaYQDBGiRu4m95y05ZCyP8
PLq8FeUHwTdQVivP+60DlmmquvBNmqC7FNc6INqU2+VpIE80oR1xWPRICKHtszRq9FvZIzHe4c0u
csPhnwYZ8vqbBjwyzUUPa7VvHLSUyj5st++1gWFpV3BK0RVcA1AbCan8Q9rSBpqUOG1TMrD9XcKc
08fMLFHmBuXNDJQ8c1A+zjnwUb/g3jUfFcTJNd4pvqLR5eCKigijb0reyDQJvkYyORptUsAriQ1q
NhUWn4bPmfou3uJIam3XjoL55bxtha5q43PBmr/Wf1IhkI1DXX1dwNSiaknm0IKskWhjK4PzU7Ky
RcNR+yMPcmS+HbuciscQhdv5rvwJvcMX+ebwWyeR0Gdo5OBBEiSk//Hse+MS5YxYYdVEJJNdLYjE
S8tNUf6uJz433kK0zzH0NOxbuNIReWnninf+U379MRCasUJWL9hhmaon3UyAHBA1r/mIJx4OvW23
s6agTrCseOW69Qwx08gXJgpXheML4CQGsnc1mXd7LhloKcLF++K92qECtORj/owoDqS7j3MMj5P0
UWbyLWXKGYrSQfaoyzE07SuRI5Zj2VcXLNlW6jn4K4D4O1eO+n/GVy/uw2wU4OealECIDSP7q39B
JB8JYmCs7CHfPil+9OZ3ECsksSa9BaZ7ISJ3IVyHfWZeUUKtNVdchfxOG135g8IHNVRBk2KeE2wX
aweh0TZBZuH5u/WRHKPmwXaoKOHEHa5zDr6FMw4DUa5RagcD8hopLapuju2GXQhiyOzaqmJ95xTA
U6Q5sMnPUJ7zM+J5grhXjMVeK7n2uPlaMfd4SKm04aX6UxYv+QN4cuuZz7aZ0WfOhByv6JhSNl0k
6sXsK5nbpPJ7P8S7fx/UWSTse7nmGKDtMocnmRanNTfaMXeHnJZNNIxrdj4mMf1oF47+484nZDoQ
IlL6RiO29aPkFmvsnHTwrpt7h7zCDHTctO7fZVlAsQyRkStUqOIbkO39mGCtBKUMQDaNX7/HPqu0
Hr6rGYVwGGQL9YgTmWJaK6OadiyTorM5GFP1gwV9Lda6/USKTNRHWk7rc6GhqXwiGEXz8W0hY+pX
09B1fFiQjjxJ3mimBJ98Ij81sxoqdOCDKOfq3wMyvCHR+elkLyPldPX/z2rD5YcgfHiX5rgu8Qbz
N2X+CRS0LTzo0o963YykxgcspFYRxOENTL18mUVDvd21nwQ0q0SKFAZtFZq19PP2pLbbkammKqU2
lP09klQGZtWDvELYrLhePsyM8Mkum43SjWb5f9NXaiprGkBSEMcaJ0izsfvWsl8t1kuVHD34Nn4r
gHxbpXTtKvRI54PBWsfUwtTVQgjPqEtF73UaGS63JP/qz6KbQeryHAvj011ufkybhYnvkQly88K+
bzybLCA75Gv3KcarlsKY1tpQwTYSw09quls7P9cY63ZbJtEpiCLaF8DaAZJj4zRLKZx56f19yj0w
NIKn8hR50sw9CyFCKYwK6JxI82ceRoYlINvx0x/tuTd0mmVs0QcCvKpXviZGJe08NF70J+ZvgQZs
chg2RFUv57Pr1lD/bJL/+aXhLuWaRLsyBxyYYHoZ6sOERg/I0AHXz0FqSmPAUto8n9V7kDnxjr6w
z/PrWDv6tKz308ZExULH9hrTRQyr+ZuRrgG6NJkQJvjKhOilHf5XBRPTulTdqEdhAr1xLZZvroHz
+wHDlxGy8Uz0neaMvPwmWMcz0WOC+Vw8IuWsYfQ0gedosYyQ2+B9Z9mEd+yHNxbhljLzYxt3ruXi
sRI+cjjXJSdsOAhnIAsXAdHKf7IiYIZYtGIoiw8X2iVH/lIGKvHqXWFLmfKJem8/0+fnEEegaVNd
gUshxZiJlUf0E6mHoNjbr4Spv8BgM26kHVhz3EKB0BJAfYh2RJ7FgV9TgSLD/IJV35PnnHFt2lI9
qHIOxTCB7Rgh1jdxAkN9lhB6oL3H8ETlAbmj+IelC38hL6STPFQC6bqK52awGYGq4c0tWLOwHQEk
n5xFP6tGKHFiM4wRRAQOUDe8EF7AHdL+I4chLc/kW0FBWo4qCNV2Emr0SzDQ3/2HXtFs3cZdVm2j
vK7YpGZHgX0qPfiKh0oPJJ5qzMtOHw/kwRmOuL30s0qfhENoQYi3w/ouvRrdM7Q6YSiP3ixBfG4S
OkUKopvRTRirQaByK3q/iaOYB9d0zfH0hkAJ/JVQIQbykdu/XUpZr7AcpIcAVwahOoOOoahDeRDl
L+fiH/uluwZFz0LklnfFVQiLDikXcNDKxNJDx+RB4lmFceWz3LorHLkYgUS0rLa3o7yr6G6fTPhG
8ukbygdyoR2bKmnLRQ7X2mJkex9btLselDl8xniQFT8gqOrl4E0m+++qYepYhwHV8ts6JF0OqMXD
Mdz89qWjm1br1deEehrWgS+UssY3Mhq+Cr/HY92wrmsCgtVaBsTPGequLlIK7ANMOERGC6ahOktq
3NcjSn7emTYlsd7FspF/tEBqnldOOg0u/amOOYHcXpAKbgk4rQQewbZclBeFSoKT1+IfigJlZcWG
L5hHOFyCvtDWFtE/pSfrQChyd9wmUA6FMANpxOnTKJs1JQ4vqTaK0Z33SSGGlhRudHocB55AY5ol
ZgbB/qsSjNpcXnpmo5c4sHWTdkxnzDpRAg9o2lxsL+R5mq1A2ICW7qQZ56mhCho3MTalCO0k5IPj
MCb717gANwakdf5s8AKyTN+p47pN21KgHqhzpcBA18gMCqeMQAHieDsXdi5ZDs5yu/k5TLRpWkRA
3ZMvwa93ctD87TZstyy8LHF8Z6umqGyaDe9vO6vShV6lFk2zDSYAF1CcqZ5+D6G9MJsXGbUhRO0+
VH4mTmwUwtz8d+OGsRxsn36tMhlVXwe3Zeo76zx39tgc0CUJ6f6641INNq3p3IDoLSX8QekjgioX
PbADnQQVMgr+Lq/WZ8WavdPlhewEUxNzmfqfFkMOlvNtRGeJDiFhshCdS6Sw9BTq+y/c0cPizTfS
GuFOdAcE/Goyuc4/a1P7EXW9n0nEHlHmnBdkxQUCoz1z2YtQFODYtiUk3k90ZVCBAZxzxZGrz4u5
m8EAomfHyGvJxDYjsGYWUPlx23HbjZg9wvWCBY7HhsFTiyEt7Q4fQ8Z76VA9y5TrHne4cmEFAjaK
2CnbJ/IudD1s/GOeGWeyb4t0tohdndFshYRLLqYDcQxM3Qw+mBUVDemZfG2hRAE4nHqHJh0H/LWd
WJROUyZzpKxK1LNn3nBaGYhBerfGiP5z+2sJdgY31ibaa1LZzEI/ZEXHTm7NlZU0KTL86hQc6W+j
vC9BMLQItYGf9CYGb+2o29Rfi/bD9QQVIdRD5F6nlL3M2mM79zI+PMUTjzWo7SDdOm/y5hNBNux4
Xrh9Vs6VF+Q69O8yzsM5abcMoisdZSNV/iZcaYW4snxLNojayjk58z3Ru1HnyzLmsxzlaznS3UHF
l1zbBVJ9wE079HM4n0+ZskJZTtBdz3o4VR5y90s3a1yn6f8DkXzlKSThgPyCPJ3qJMFfcndM48Gu
rPaA0shUki1M97PuDwLpTtEY5GkDsmvdzkQaKoJ4OgvkY6OzYzOQqeipYpuxq8NJqtBK6JV4+hzv
/03Fohs22n7e8Yrq+qe68Vt+MfFQQJ2QtNROyPevqIxnMERz8NX1QKHsvOY1kdn0qzDCVcPM5hSi
Xhq7ylF7CMtgkO2Fy5P75qMUIzWIKl33ESerPUiBomenliVXRbjmXJHLzuNkGcyPKroIiBIRWwu9
RyAAIzkJ0ZZUowAeJaqYR0DjOItQnVrHS7jPUcbkNI3uZe8Q4smSOsslV7LDUw1ls3P7jcEt29xP
JSRlIvttFkqkT9rUch8lcmR4zzEHp70zdPRqYtc8q3YdXofZETcr2aegmS2ouvzNI4sypg3u0dpF
JzxoMSAFxrGQfRxKkFjaQOLsW+y21dDMnjeLlYPvVVmQsCoLlO9FWQOB/VFBYSwWSDqUeFTw5gjf
lIe2zXdXQqoLKP/MJsoek5taI6KE6iHgETAze3KF9aZ97v841YYfQ7b1CK3ZJRnPT/tcETKchTl+
yikgTiEGu0ah/KkJjhZUZq2qf2ySHUZljvQp3si0/5ELazNf4SoPNmET2L6WDVUn0DagOOAnQP0f
qLhLF02+gBprkSpjYZVDg2BF078lJFEQrORoV3Su0fuQErmV57ssjDNEQktJ9ZHQOKEAOoZfbvL8
V/8M+vvssy1wT5GwqOXvr+DJMmC+XwUqXev9+BsatVOhNHukns/yac6YrSTgItDK0yhu9IN/K6hv
uS+edHIFcQhwlnKRdFlzWXyirkp5PxatjYyB4RjbPWGsFCtqUkp9c1zQBNFKptZ1QLArLGCDU0DH
FqleMz2H1N8rPtnHN+dfJdyxaWzkNGZSvbDwWxWax50Dah2CT0Lrc/HUbmNSU+2JjZkxrJsEQIfV
clTXK5knR3ddvq7flTBq0PLa3fQvWpkK9yRvZD6tOCY12+R2P12xJOaVtH5/ZR0fC9RAL7894aDc
i7Fku0gISHyiOGm9Ko83AEpivI4Z5jbfoxNT5C0H6PtijkKnZxXNBtHYedSrLWwcl/PcIPkAPbME
SzLU5vm902aQ/0zJfH06NyV/sCHdOaYNU14lMpjbP1ia0WmN0h+IiRIpPZLdry9QQuJiMMZ6yp9l
R9aYXGhj1QDK87VbxALLbynJu7O18/3hsx5SPXfxv8eoEzDLw3HIMhMti4xv5m3nC6f9d2O/YjT6
XD48e5nUjXDXdAyYvKEF6mSgQjKcOFiRh0tqPpeRdGDNDzpBUjTwcM+c/tbalHjsIc5JzSYVzWWX
N34za72Y19aukuZOnUp3cod8qJDXRWkW2dKqxWv9S+V245f3/kSa26tps4Dj1g==
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
