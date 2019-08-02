// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 20:23:43 2019
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
  (* c_depth = "84" *) 
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
(* C_DEPTH = "84" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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
  (* c_depth = "84" *) 
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
i93drw/WkyheeTgefLYV+UD/byDvLIWxgBu1c8d9ipoUO2h8gF17mIlgl7PqB/yfLtvxPRSEnVgn
fYpHU8+iVzr44aTIunPQoM+iETZ3x72+VwJeDsL8gj3bWRU+1GHPcBxpDNvfahCaH9L+q4+WZ+rq
s6HI0l0tPEas0DFNyjtYDkVgupCCPOmyVTwVnQwJOuL+9ct3yp0UjjnC7DyD4BbgdYNsVQhWyTLI
cbYx7fIjCevAyPcgU3E8ImdEjMlkf6mcVys669j4hx1CrribKlIfbKawu1sxqgIq23UpqnUqq8mV
Au5L01oh9Q8+XzdRFiLm4OB6h5CN2a78hncbsw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I2YVEy/RHw6mFsbUYyzlRv4HhbQqLpA++9C0lUTPtHT7O1hZJEhattPmmEgpPfqPh+DvfPfC60E2
CiY93ljlxOihPHC3vWTsUWRxybPHUwnRxmMqlYdWg8IxRINZiWSJxtMzRiQ1H5TSCvG1W2OMfP/N
OtAnN4A3Brp/JIkUxFc5JerYI++LsEcVIqZ+N9nfl9YfT+54E/dIQ0LdgIf4iR6QLx/FLW0Cz+Lk
YY+hhf1YtYfpguWKwI+niKt9SJwzzUFxOjFpe1cBNzWFeTjPtl0j7UvS8BNu3NqHYhhS0vbZisMu
FzkvHKTpPXgs4AcFJ81lGo+UnaDcpJcCE633Zw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6032)
`pragma protect data_block
VfTo7T2DWelzHCjuNpizjZ0ek9yws1jBC6xZMe89oDesRucmjEEO7awomf4QOuji0pPCv98zRM9D
Zg1KGXy5kZoQazOXSTKtsE4tUudD7g1CSuAgtJsf1Y5EuDoks64OxZmjhtbLnbvqgZX9jZqDi3Wy
Y5zDhCevtkB+nPDAjeEAQSJVwcwXRqsUjx403qeZfWNmNIVs2Fh91kXd1EZWuqLG2PaxBqQL7QGB
qwRrTJwwKJC5HyMqQrqCtuIFqO5IAA3pKsvhx4abzznbaWQDaF/w5yTw18RBU1wt3ujuaVEaVWvn
vpUliTt5E0Iu8UQmlY7laQTQDDUZaQRDQspfiqR0V0UzCzGmVCQgYbE7V8amy23yAP9QvGg+SfEV
ddH4CodqtB43mBH8COKCKVKNoDER8Klqu+2NttpYS9fYiPjttiI9kR3ohLY1K7MAgVFD5QM658PA
v1kZcmrk1hEIYGSEo9OiuRMoo7fBOVQSP5oppx3RTpORmeGD2vNcrfeykV/OQ+WMbvBC5yLUA4su
zdWp4AiXiqrMWo+fywphAlYzgEgob8QcEuUsedseDyxrrIGzmCuK9CAjcyiW46wjWbeiQSOQ6Kux
fKIlemxZyu84LfvGMAWyBabhjVEA1h5LrNiwizTxgZaDCSQq7QjwC8OMqBC/hJo94z2jWe58MHPi
hcyaDTRPSqf7d37XijHZWjaUdGwRE5gxu2513tkhZZ2rGRKaaoAUoLxtFhYtLT1bLFcbDHqh7vjG
nSLmBhrnyGPWhXLOQb0v9oUWYGH5qXxwHvOZ8BZapXNzXhxAnbTwp7KutqlH4ZsY32CSuT89otvK
8R3FMWk7IrV/nDJ44R4pIKTz9kYH0u3p/o25+LI5n25ig3O1y6E/sKRRn1PUU8xFx+jHPfeuFcwM
QLIjecPdTHULvIatB+95wNVcoEjW1NtC7f/00pfVOH2nyIsBcUhELHYXWZ2QHkG1ZKCUV3JD0yle
cY8jM/gzA6jZHfPPtOZYUs4K1mSNgnQTJWZFajcxB1lsYZ2zac/Qb4kxbBNwh75yx00ntfIoI1xt
eKUZS9rNfIBqQT1OW+k7EJ9iJ2rV6psUPKr9vzyOmvm8vMzX3MopP2vrHca6BhJcTlgk+817mzJi
7Li9qPNGBMLzqc3AMgS+6zeCD7monQlEC++KJxgTMxfWFy49a6l+ymKYMzY7upqYYiWLTNCN9oCT
wRWqcQ1CViEgocYxVjiaR/Y/nVoxNOnZzs2OuRnFLc5fJgaaO19xmTD9R3I2pmRkABL0HXQ6pZxx
slOb+532YERZIL1xA8paZvnKq4rdIJksYrMgbFN8bpakZIWDpxEqAYKAG+Jg5WNL9biDUoBz4HbZ
RkQuCp2UVbpvmlUcywsv2ipnhwa84J00Y9INqGd2c7uFWThQ2QxTyPY0dXyuXHVdBq30hHQhqIfE
0IMmzx85DFGwlGHLGn839Gi5zcLNAkeFDheeeGwZTQUvLLkHvuVVInT5XltmwMXHGegCMLJ4cCbk
/753aN6Mji4tI3Zz9HJTFdnlyY1C5JyIlPAn899oA7tDO1dZTACuCYbDn+D8+DrSfnk2iS5ehGnS
EX3QMhS0PTGIOFeoBcOWMOFmEWzAU6nU0to3BZfR87A4oQtXT2oL27vjaG/moLh9dMFDCrU2aQeJ
yBgGQvphM+GJWO3jLWzQRgbm+zO3S4eliCLmSuhjem6Um+rr1Yqt2159tSqEDAogfq9AQoOD/hy9
K0ez6w11K6+QEIYki1+3DkNVkRLI5XoiWAu2oLw5IbAjzmumiouNBIE/YeRC10RePIVjfkBO09i9
3BNISrSHnoHQiQ5ItkO1mYZWCEeYgQxwwKhHuu2SwBfXsLrg5XqvuDSrZGUIxadqVUtPfmgW+oZV
t/8fLSs7mYGm8jLJ3ub4PTDRUJXjwmWwW3HehH5liJi4hunPLihCRXEPQvVZMv+OcnYY/Qp/nqag
4fNpRV6USR3TCZjtS6VUREtZU9y7LaeoMms1eVkMwttMj4vsVRqjbhZRKKULWiy2/mCcDJQCecXI
jYYJ2qxt36iBNeCK5wDIq99cU/vr70crR7FEzGKaGyVYqTCc3+KSs2GOQ+VRkvxeOCbmyKEtJUbj
1uCR7fRo9T1V4UYb5ppCfzQpHnDePkZrt/cuUSZMH/dVEhv/8Ed+PAbPZ9au5QAgtYUGTaNAEaNa
iKOXwW0mJ759Z7ekaje7LTzUBdP+2zisVfjvCFRjqsMwJH2F94bsEWkEkfX1Hao3PwI0Z6DrVwuN
poHAOcitqGjWXDvhpzYSrWT/EBRlDv8LfuDLXxMNZoj9eMgrtLEyymMQOh0Z7uKmDcenvP++8ix6
ZHzDuKRd1bsXWbT8osEBgGlr12QmfxX8r1RqhAzpGi1X9s6eXyNT9f0SAX0KhJ3wsiCocpZN1oQv
LUQFGVuXrId7v+io6Y/6pCV666M9WAUPOIxxrVX5RYTSbw98gonIYvMya/K4UKuAzlSURfJ4bGQI
yNrtcKnsnm8JIoIZIeO10RwIlPWi19QjQUdv+RspJjUe5MDvsXSu7WJsswTir7PuS2dDCDZrLTU/
yVfOrp/C9IVHvADYUH2gu/C63mBuTuDjV0G26MXXPOKLtIx+kIB2+SZMnGRQO8Elr5puQHkjOSB0
8N0mVau5ONNpszqr4IFl9u6wbj90jedibpRiAJDRdZVXzt+pwsrFYu/Na/Mcx+9GS37x2Bh3HbV6
5y+2Wf5NYfmTPqi5ayB38pQqOloNpOlG39GBGpkm5UUXPAmIrNGc/PfDPI8aapMpqth6LX3uq981
lcFBQvhuQRVTXuwcI4LuKC5bQw/KgyUTluwrbJTwsAO1Sr3XIc1yP4JueN+bjrOEZ5Smz6Vg03Y9
nyIlJIR94oiMhe3u90ljuG+yS/TmQAXU6a4AkO596d7qf/7b1jpMQMmBCFxY2+zDFQZxJRtPZxyQ
Hme/yAX2Aoidc966PmW7pZyQ4ZAo7+sb4sae2eWuWaLCYa6Il3BbGyaT7jYyo/J22gGixgOXg1cm
m/j4JHAUdiHOGn3+RCfNF7oUcbYKGZDvAuwt+VnZAIBrg1utAzye3n5JH1XAKHl/GUIRSpEOiMkT
mQjtxgXsD4RxXwWBALsPV1MtRrm6zj9AKe1LdL0bJ4VNL7tmo8e+PKSRGG3jj34xIb5w7iTCZffD
AoApxK+HYwTIecn2ooY07zlZb4C4OMjPAB5uSlTWbgbbyYEb0mL5OQv/njdq3u9EPIvGSnsfxJEr
Hppu07h3OpKl0oWckqpDFii0h8+A2f+UmCOvEe6w6say6mP3tl7W5twZqOOr0+f4UjyCj9ZQrezu
yUmm/cr9Ib5gTVkulTFk6M0YQWLL6BT1CcwHhCiHAkLfhA0yF9mCyZmTkZ+DM1h1lj0Bj4eyzCL/
+PJYWSKz8zv/rT3yZoSL+ZbrDTquCH2hNv26pDVmTnBldlXDCTGqTEiOuyWkMrhwWg0PuxMyaBTn
N4KPNQ4ZgCGpbaC2C6gvJF2Wn4pZ2Jezqnb0hJe83rxhq0uvGaSGfX0lM+xndPKW+vG164rxkHA4
rKvXObKpPjz8Hm9G2A/ZQb50GZJKSrZMg5uG9mYgU9BthAPGlRYdS2cJlJZOfl9CUW+HJtBKeQm7
4QDslaNuHHozlMuuAwTV5GJp3TD7y/Vml6a1yYDKBgnbtxtSyObzh5OU/Nc7vvEfRKt4L2AagDL5
/mbwBB/RXjXlRug68rV0nO8wnTuG2r8X9oOSqBLAa03GloNhX+Ve3scsxMyfN/5zq3JGSgA7fJxe
YoX/5XsOk+DV+EuQkRCKp1uHoO91ugCJwgBMXQl/MgoB8+nlIY9k9hF/fGMUBmo0V0vgC7AXIlvo
4xdlRmUbuJMzN/DXScw6YmDZQIAgF9GHo1IoDxeK/dBgEzDfmiD7UCqQJdKAPrGYlgx6VTC8RX+Q
kCqwWXkVUpS7ZpMsf0KFgNtUJTiIgcm6Mbt3Yx1AoAl2GgfKssyd55g+67El3afo3sCMKfl4m7Os
5la0UP5pp02v84pA1Vr8mrHevHqs5eiTtDdjqPj7ct0+K/m6bcLpYLOn6TBHGLBHGF7cLEqow5Np
/VjPiGA6GBOMMUx4PRgbZAoS42giOUdN8qrX9I8vAVtJvxZ2VsYwfxHA8wntHiT9qmIhUQK/Gi9/
RihGygq/boQLN9VdomQp4DzcFCuRy6Yy9/jN+278fU1Vm8QciSpYlA6FuS+Z8qR5jPhx7Z2n7Djl
oFZjJNtQIKK9H0m8s+gJb0yRZDAI7IGXsT6Sxz+DiT8I5cq6d5orWf55p+3cuC6vcwYI/SCotLIk
Bu8zVJxTv+M/VGr7RnoLiJ6QG2AQIhN0KXE3RegLdWbJhwrbcoHHObNFX/VsaOnrytlgn09hv7IL
U1HK+rhxIrQyudStrf0H87wSznyr0dvb0Bmdwy8xq1gGqQgQJVeNAnAvCaOJ7W5oWx6x5IultQrX
9VkS9M5ww6GF5AT0NiW3cDpPoDilz3gp+Ni1VVmqlEqcsyDiN2G6y8byGDyykpcH4D8cUgmE8L9H
yZlCEOjeZwrUbZ+3EZgPF35dVvTPVVr0GklujV1BjQRBDavtIgquqIXKph5KP59p9CxHEP1qyfPj
NuaHe4G1pi22XOr8aSjRq7DfzyN3z5a7bH2MfENGP6hqfvF2oY79LWMXbQ8wUj8yvjMV0qPUAAAD
lsyTWK6nOjqs2Cj8KRlpYg/jl+FSCQn3LRO5C+4xziQYtv0wI2Pcef98cjsI1hrxA95LCfEDBG4O
cRYytqtGHIcUniI9vJUrzKp6MmbRrQUAt6Z7ublaGxvYmE48wNdE6XBLORMvhpSeziR/u9R4BtZe
X1f1+lOWduZwghvRajkI499WI7YLOkQ9GlLnjMksrAfIPCizcUXn3pU7b5+O14EqZJXuXnEHd57C
RJKapyjJaUv2EVQ8TyZwkFnA/91mCb85WmQkHu6JJjKXQCGXs4DyBvjR8oq5B8Wv1km51Dqe+Hof
2PacwjJvqcrcn67o+hvT84JWYfvXuxDpjcjMo7Oqg7f2vMkBuuXgUeEsk22o7mKoSFCNPre8e8rm
vhKyd0ApY6mHf1YkMB1QR4WmwzjcJXdH1yzEdaEv3/U/Gb+9idUendDnqj448CBKU6GI8yBBfFnO
lT6A9ng/NXtrq7rUXCxijpzOSjegvxCO+4rSELCM3Tz8/cpb6Osvv8ZI7cmHaeTk83EpkbS8qfbo
ewtk9ltTtT4XyuerndPnOW+w8+pn09MvzFmfcQt28ueKTzKCuj+gAQchKs3lzQn3CZJ1F41Ab1dA
gnuRHZ6pAKtZzioBQBnr2RQBAyqV6SPwHacZaZyXkrVsRkeHuH/kiQmnsaC1JWnphMANvIgDYFDH
YzVy7FzN0HQExnxcJjw6PCchZ+ggqDAzbMw3srva653+WXnLOel0Y0OXqzcifSZgE7WWPzDNvAIK
LSVIa8XuAa7L59ilUaHHGM3AWbiylPVimgk/qWUvnLx+gTHmcUVBKpNhQxP0kH5ZtuSatBBu279m
R0rzn0l9VTxVL7Re45PW0qeuXhMJal/ucmY4TmrPFedxzZxLH8NA89LRpJstp0lFY3k5IsJm+uV/
aXmji2/qs26xEf3nSRpjhHpC1579DutCzMJlMhV8ZoNIrnssGPlGVyV33PF+Do0B4gS7FEwG/Bec
DH0gwWHAxmwCsqraqas4V16rSd0LX6RvWWP0GgQCAQzF2S1NYA7OgCzm1UK2dRmJ1VOMqkR7Hy8R
KtKB92zJp53xdzb+RJ4i34FZwwM+J1GtANs3Xl0uSn7cWM6DDIRG7c4bcO8ubYsFP77f3tNwGBfk
XcHYrxyx8wv+cIuEDMd41YqBhvystJj7FW9030jSO4DTktd2/DIN230qXw1Ru1f7+2nlp9qeE1/L
nkjsIRxGj8VP4R+RhOvUM/RMl42/tEvbBEK6Jlv67wEdGO7VOwJpsrNmAOjPQeiNqCehbDbLDP38
IkM+dRvItSrTDIeZBZv9Cr6SMTXfTzh8Qrc+Ow5LhYTlkhs2x1BvMRNJ2l6tRoJ/tJFDTx2D3Jke
ggR2NjA5Nr9c/G2tNeT3kpvqNc/6ypp/blR9MgUkc1xPPVzGFD0MUv+G2joYq5NJKHopmoFWtOJl
uigJfhfKcIsJ4HHKOMI/nNERas813BzwifPj9bSa1O6c9x6iVJJVBSM7hK5+KSQYs0Y96BQ5PNjH
YfeF9dOIkHPrvc14+yoUshi8oGZ1W6JHareKURV2kb9+iDRhUQD3cYiJIawm5q8Wsnyrli7AjBex
a+wL0i9Gdb2zLlFePgCd1mX5Q/meLs3H6eNt0LYBKH6CjQlLEMQzB38/IRT42DCuHXwxaI8XmEi1
LqweOXx7j5aUJjnT4gifU81L1iLbLLWy8DGsMFqxwMiKkr9Ym4yYfg+6+8EA6nT2zGzykZIYCugG
Xai0QKYI2JXZPNSBj6qkI8OF/rgubLdhT3XnYtN/hDiDiMFlr6Be3KI+gXfFpJLQlOaYmzYGrdeH
GM+bSUeRS0bahtP6TEgLenq1wRETsi7ALy9TVbXAAqRhz4xK6J81bE9CKBUw96ST3IdpZt/rTH4B
G92jE3quniw1oQnMAfPugtIlN/0yYiogcZMZnO2SQ8kPQOcwFAcE6IOh6eDf7FEPwjPbf2QnU62o
OR2VulLCHXwPJ0V786mAxUGaqQ2Eed0lBFzJ+VDG+9Ayx5Hd8vncPMyL99MgQytkI14mpj9ICry2
VudRCLQMygSE4pzhaO+bwvYjtTYssLEMl2M9a6o3NEeujeVQOXQZFAEcheaSkRvL4G8mNPDfegOO
2apYHO85/jB+RDiC3wUYvm7A/Q+cPNkApodqO1tPdvtlSS0POVxfdmgcg3Nj2UkkGxfdfaNls9Pn
8WrHFLigqU3oM4t0ERuhriqdakLWlKzVcDUi4mov0L99pNoMfBwFAnnvmzFL+Am1J8g4dtv/zM/Z
aGFu7aqRvYfQKYaWPReN+vR4XwYDtmrtkmmvDoiCQuMSWsbMnjgbRESJSjy4XxS1xWvvK7F9J2mx
n02ufz6MJkJwBpJ3p/A8Bb8Gm/n0ayJWATV9VGC8gz2n1dVMIyjIw1fnzGHnMDgjF4x5MjU5Xw4r
A99NAgq6C572qMMznJdLkL95ic1K/EYRJe7euUIwl5HW4ErUyyTKjWVt2+mGqghh4O7HbIjtTiAQ
1IRIK/YB+PBGtVG+TqMs8o3UKqcNked4Oeq2TMZqwuFLsft2BjEuJKLMdTTDXs2PFIffFv+UOG0L
wlJgl+J1Qnwq/zuaxbCoyTtTF+/ml814rrPJjPLsWDU8uU3PjX1KX/fVafG15oFgAZog+PEOV31z
nRvJBeyJvdKLzmLtRo97y3RYmzEXXH9vowf45fV7MTr9d0Cbl8k3Dm46rQUzUfIgQ/+HQHPm1Ei4
XM2+VseD+CWcV5rJsHnByV/ie94csTvDArm/MAEMYNySQ5m8ctpVknWFrPe9T59ibicEZ+zgdg8g
rF6Uy30DeM0i79ZghL2IKTCq7AtugoByKW3exCFrD4IpLoq6YIz3Zi3x70mEVQ2FiFNVoYCz89I8
Hg0WSx90DY0UM6uIVvnu7Sn8KA4C453iNABzYyPsUf8QljX9ckl3Xr1X0EzCxWPFCw16NUIEDAvh
DSwfPL0nZ3TbzQYtNT/tyTnAP/4d+CGLYbz/0kJ9LVxTfDBm5bOhU+kYfs+A18gi3/7bcf66fzKH
Y9bQP6lnGqIqgBzA6eOXaJ9VWVXH5F5dL6mFBlQFERoiCafy5QIS9OjMNQB5Gpttv8nGCaDSMZNj
o4w2bVACYbMwz0cMB4t89rfro3v21UJDtifgYxLclaGy7ljY7Kb+2D2G4Y8H3JxJ+8DBmPFb2oQ/
V/KTCzQMkwvhETIlOEQz4mkkrLXWB3q23P5AMbjt/gX1AkaNLfo7Vsdt/LGMRRaqxF6QkAstXiME
5y5NpLLrV0I+PPDtw1X7I8i9adfdL5u0w3SDeNMQ8O5/lHm7Mli5LDohJw15E0Y=
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
