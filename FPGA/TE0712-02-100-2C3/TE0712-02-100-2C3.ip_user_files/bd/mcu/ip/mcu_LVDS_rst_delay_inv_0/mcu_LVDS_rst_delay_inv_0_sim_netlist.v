// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 15:10:13 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_LVDS_rst_delay_inv_0/mcu_LVDS_rst_delay_inv_0_sim_netlist.v
// Design      : mcu_LVDS_rst_delay_inv_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_LVDS_rst_delay_inv_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_LVDS_rst_delay_inv_0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
UWyV5AKry9Z1VNZplYKBYWiTBUslKGMbKnIX/6cFkhxmHDLp+XZ5tFdU/3RZJQopIScWX7yizWCH
rUa6GmBCrgA4EU8be/N4e10BgMlrAAzE+FEaBbYd6QfKOkcW6Gmv8B7QeBsKrlsXW9NnhNKIeosA
W/DLFf4Zut/MHbcuw+BOtxj86tTHQW8367YlBUmzWti1ffL9M1XJsI3rS6hqdoSZUCEY7iB5KegE
NuXdEmLfcxJFcF0hk/nBvgDqsfj42MFS1S4mPfL1j5VXTV8cSyc08cj/CwmhD+vOZV4OcAS8P4La
1do1KBXQFoFRYcFqmyiiiKkwn++3VtXHtalxfA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PxHyg7HsAQh/UiY16uR6Tzd7BkdBtWqrXXNkhpDrODTLKylbpOj6t4z12MDRi3Zd6ccaCY2HCYEl
S20dyNVAFWSYS8q8kn31ac9Ui0Gsha1u5+vXurNmbmDxqc9B16rb1mebTywNIZhobF+mjVgUZwCt
16PkeN1xRZatozx4wY+uk31Qvi4BlffSTO/V/Nk8auVlhaAWTiSdQo3YMbepQ9KDyVfO0bfUHRy/
znFWvXGuzZ+d0Vkpzqe6l8gBFrsJeKSZ1lPvTfTp1FxTqD8AY5TgbhKFC9Aa797WFF/FepNzglmB
OSOeWbBHUX2IltrsnwmTZHfsg1Kt/edsZxXFAw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4048)
`pragma protect data_block
gZZkG92HcN0/DsDLru4TyLJm9y6kYWIbLxEBh4kmT31LBvSdel4tTpNwczkBwEbhPCNADAWCl5g9
g4j3ahG1nqcDl+NMS/uEMTVKhzoFk/3h5xtOvU2/tser2Poil/wr51JZdRZT9iWgiFZsZHbGSW6s
VhS+DSPzRuKtfwnwrVsgTxJlVMPzSJM1wpxjDkIX4VsAooPSTccevTzRqTZseAST/mIIEf/gu2JR
MVFd36ZcnJ7sz5SV5Rj026QSipmWkqk8dKsNn8fIsyvfhYB9fLAU8ElRmnuE1YlRLWzWQTe/Jjsj
ydjyW2SqsvRBzfzARitjqYQW3EgLazgXlYjXrueHeGS/bY2bSY95vT53fXw9zcw8GG5fLwGT1P1t
lpZa1QfygbNDcz+lUczxOrF6EK8Rt13woqP6BuizqK/g/fD69p2EdoHitLuw+M3DPhELUX0g9Ow0
C5OQn/7SiDwUce3PiLPW32rNwQFCO3EIWbBCYjyd83lvxPTMW0hJgNhLUGJW83p/Xo3Z/dz0pVyR
XuX51khSQpoQNclAJsk9B8K09Qy54upJwbbYrODCZjKvHfl+PFru469Q0FtBWl2tRZ6ubTlO1a2r
VuzbQwpo9intNZWytUJ50ZRjDN/0YJ3yFHH5msz+qzUFluNg2IydaYwUq6J9bIyA5nE1u3psU26g
o8oVk/Iro9A+Uv0YBwD0HuJZy/KWmsG0gZ7BTJ+kOorRuAJtOZ4TlFnps4yNRkJQ9ym7sp8rJEs4
+OuUPX5IFHXFLLEs/y4eZsawoEeCsb7NwQWHwHloE4R6VL6b+LyZrMdkT23n/+XpGxdWEJ6O2iGA
SnF/KZVddd8lcc5hEVgE7cUCvxyROVRpxy+H+KqZmnzylx9aSr+RITm3K7Q6XdES4E2dCqKo/4DL
3C387KZ/5Vv5RZPc3y9uVNKTL+Vh6pQSuRPJWRczzsEONY+Nm3fV+wjVHioB8ABDuqzCkcJF5CIx
GVP1VuZ2qPh2trURBx3rRCoxpCObKiK/uxbYVvBL9OkysHM5m4O+owcoBxV/U1NbZ2hfGqD+0Te3
RcBgrBVhFKs0s8BU+DteZpbb/WhKwJcLbiz9HdehfTx+rZXzJ8tapBDnFVlSectTjfwSvffpPPqT
t5ra/MXHoYT6aXNRLEEn70Oy/MXOJSD34i2hv11hW6PdXBwWfH619F9gsr6JJemtqkOXLclOzuo3
umXSa+jv66+G7TGBrJr8vkrXE3yNuIDWL1XiLnzHk/C6ZqEEvJ8ddzCmYKbtAk0umu0FtmKfrRSC
La66tYh+CHymqgH5BtY96+ZhIRjbljS0Ismqmqoh5aLEJcDfV5biO67Lo18pxRQFV6Nj73mg0bcB
Czxs9a22V1ycxJY7zPIWOuhU3bMmd06R87pIICl+v0Rj2ZcpMRH8qFFrLd9dGY0K+teXsUMYmnaV
Qc/rrNt6tG9GrDy+KzOLJE1Qux9/5vbHXoMzZ1RJhYobZSs0Y+4++JnjRdho1yR7n62qJCC/zxwj
1hL+0z+zmYe4hpHLiQwBu7r73PyKp6p0nP4XD1cNOc2keUtzJW80ToYTeg6gke1tOuDYXkLzVWHa
GrVtkrjY0cXTfWZ29eqgLUTBem7OcSIc1PGoEsQzUvxnxoxZfXLNg8rQA8fRXFH8pumB8h95Oh76
Kvxkd+Pa6XANeMuUr5HmHDpGW3wL9WQyOHsTM+dtL+6Q9lFavJFelqNUz4TDOeM2lpi3WOcetTjz
e++WXQpJcR9NzSP5UvwGBK72EzWpfSSjWSSKnmZMEo5fZmnuXDmTq+Gfkj8QeJ31pWOj7h+VVjRa
76274yWMK60/JTpxd798aStik2UOfbZN31cPNtHtwEQJvc8iqU66pWn6GWj+Im2O5fgKVypWlhyg
Yc32Zd7CL9OH5pKuZHFlY4NiM3yjcEfZ0Mc48lw26PGfoLqHqhqtqog0MUVIRRHCvlUG7qw4WyoT
dcsgmwysgLvM3yBOheYp+nXsRpuGIjmXCRHIf1/75ywy39TfCmpo3geqMBpzl8YKzL0K48v9D0E1
i7J6orzkatk7kBUi6lrV0bT6NnA+rYOr/AoorTspSXZbdSu349c8qF3nTWb70J0tPF5wZSwNJO9Z
hgrhoHfJCJTNXZ9lvtNiZXhKcFrD6pjkwBuHAucdi3PauQCqZ87co/EcC9JVK9s0XC7H6oz6rYJI
ju5b7Z3lASHy9MGAVvEqAdesprKVmZcccFVR0ghyBhUbzURB2f0BQ0Xn6NR3kDUxWzzvwylt64nd
ROW/dPVCnOm6SpH/lurWx/U/dL/Z5/Ylo+dvqsrLHkWsq70NhEbjCLgXOVMQrXzuqEG3vQCviTfo
OCTtGgiBfUMjIJFpi6kr4q6ab4sZKRJ+lqOIYbtmIBhoeHwy33vx5/J0csm+9Zon4aQqfBMUCVbr
WcT9+U6qP/hruXQn3TQWHeUeIXjiWFGzFifQRFtVKrD4fPtfQU5idbKLRBU7PaMx60lpsYgfpVKz
0uyJJ4/afZJi3rXliwk841r63z9UzLfyXG46V6q5myKvZ97tsKvP5z1iQTSmLTVIJyY5m/NnRJE5
yRrOQyC0HnBif95V9Pi49v6MAlSq45PpRU0pNshnxsLS4yw8/Ltuew00MWQz3+QkysEcVJllHf+x
4lifLPpkHAmDW5QUKUhpiBMTS17OEGeLKmRHsRraswkBruVNBNxNYJE+/YJnHEd8FN4mBOhUu2js
HmG/lVKo9pp4DzoGyVwophY8sl/vvv2tKCyEQ0/NP24ozFkyBlqCg18AIWafQ4+IEiAW8YJqic3S
U1tSEj2ul/0Q2n8M2ImJ+ImcNYP7XSUzqBDt5qj2WcxM2TqA1/V3gr7neeSzD7YNqbBsVH/rVfoz
89YYXTAqYwGmCFsY3QJey1ezt0MaRBbzWgh95+y0pUEobqj3ab+gHsRXZPg6PcQR2RALRrvNxaR3
5NcdonTixrPjZ4b/36vqk3UQf4c8p2ek4VQMstwA9PokCIqGKVyPH5iB+vbpaknYBQHDp+eITIx5
YzcnOeq5U35obSHZIgEYiQeT8NrKb+7Kkvem/kUOY8smeavzPHw5wRmtv9W3C02aF4kPMr7zDvFd
DuGSSwfeZD3tOmBBBdffw6OQtBURCkyEoMJfOKYVTg1H8+PcZndH25iYPasSsMDP+mDbcMmPIUIG
mLYnxHVRsiKujFFyuZtHUrk7QcsM030vEprgLW25DzT9mgC8Zow34d8FhxEJWm2M0/FFA6P5FefG
dD/b3AVLF9YNH8n2+lZOdUkaCPlzjK2wz3EmEjFJ+oVXFLaxjQCmYLIAj/FhmeaQ0NWhRg+b9Fwr
1QCAPt8ins2+F1pGC8Hf1sDiV3I7p5hwqp4s4xPTTRX6OPyU3QbSxbisq8rITVGaHPhaha+a9vzt
+v/LZT2zB7MuLmSoVg8a1O9ntK1MAEiXlu0KNtACMehQSD69lHWI2FqOvBJIlG5RZesmIFNuerM/
bIhPcAGwdhuJhnUX5YXX5hVfMGKIYqm+h4Etpc9UqbCwpyOzsS5MbP6l1E/mHMD5hWFZ28VsxmV9
ZFk6sp16A42VGC2O1kuSWtEcIaylRp5rO78JXEJt1U/dKYbgcAbpze5YLd1G2VCzJDyqPF4BXMtH
MltLmTG6ZXzJ8tA31r3QSkGM0LtFZj03LWugTKfFIUF3HR/6y3sL21GvNHleUJsD27RH+YxtYChl
eV8HOgUB+msuhGm2RRJDCFSYNI9EzTDyMji+h5wmnYn2dkE+AVkdQKp2NTnqWxR4wEyRcrOclVUM
sjVXqH8rQpPRLV0DX4+dXNafaiCeHcOngT+Q9hjNbhmsP/LlJMcYmxs/MJCInTSDjGXv5V8hiSkf
mrKuSchWo/jSA6TJZ8W/CXCU/ln8Tm2cyxPsE3lf9qDjxhQPbnTG8msDY28PPl5ZEjpaOAY7CWKN
6jLz5lBKfCKRo/Fiawe9uKvsuI8P7EjYfcUOlGi4KfEfmSuPq4jItShbGvXk+5Ezsy7q+VHwILoc
vjTbGCAnJTa5rTsvOcQsxmGTxw3DUeGn/bGghNOYz8IV2Ni9YGEe5nDE758szuUQGrVHm4mFdpr7
wYl3yyH+KbCvWt/iyItzGddmGOF3Cmh7ZcJVECAfnX4xCtvcNFFs1o5VFX1UjimetAeEoM+RZiz+
WEQKH7ALBF2JZ05MKw+i+OVSG2HBRs0g5Ok80TNWh+4IjoYoVmBBIX8+1NwkmVev6IlUTEPphPJ+
YrUhnryP26x8dSA/Qqim+Fn8QjHZWVQN2sfQrBwuRM+riN3bqp18u/XKNCqXbJVpfUcvibPu/7Xh
/jgl/tS+k1so99ZB/CXrJyccGbb51AQNWEtLQgug11dT5wx2Xz27XGMO5md3bpF/wsT8IAuSGwqG
fIM30j7etlMImkaSHZECvnQNN9OTZrryTVrMIBA6gVDy827nCORo7X75mMqaNmN+K4riZWmU9N1O
8iFQZkHqQnJym8zLftf3O92hmD0xhtSqqWJXh6IToEJfo7MitXTDbURHhX/J8AkICyf7pYN+xxCZ
+gmNfD63R0OAQrHOEStPco4ignqlQJYxqY2f2CUGM4ONyqQ6ereUa230Xk/gH+jppjIpvR8/Bs6q
Ga1srkGNRYTMklAMaMbHbnDBKIso47gMLnkC5PthFo12S/i0S9MM71a/ofE3gY49+FVZGw0MCF+s
Z2zt+fSZw31kGq+AwTEYubSLDPuhrI7KJREY2JNr9f/2oTgoR92IdK0iCezKHylvizGPQeDWtaG2
iQ8poJHBNeptzhB8TPHX9TVZyqJlqjkWYrOIeoMz8xLpxw6RezlPW2SKo9h3ijhyylle+H6835fD
u7SfVFnYSKQPmTTh09Ttu/+Z9REyh6TJ8eXJ//plZ4ozHgoyM4r5OX5AYC6Dai0F4lBeMbsL6vca
k6YOjXj2dodBNKAKtw1EovEVkxQqZwVbRaPwpMbe+NfPBacn6eFbRUgjgaRpZlQix6Vrs0S1PNQg
oFif0GynaUsZJPH4m+9iY3xIA4TlYNPtI3rk38ildBGsdGqmPvasnbjwXpGaYQv5namnReSOY8Gn
bVw1zdrBAXLuDK2FnwElgiOVwrdeJgA4Pyb+fgLoFqaAB4U2ynvjdhmg2cKvG1H7/WtRDaYRNRQD
xNzJOy+pg0WGKOmY4C5+tH7vWCbeZSWyFxwKPfZkzRykvZbqvmJkBjY7ePSYeuv6Ymgaa4zh1ZhD
T6xbnqK3ONTY0Zl/MWhu4UYVX7NDaNgGosTF1PiviCtSTNZpm19xWuNrikFeXOi9t8IZzb23MQmH
hN65Gq8EmB6K4e+itfvK92TUw+H5wTPASgQHVcnPlwCzygXbv2bBu6OFLWhXwn+Kzj9Y6duDcRz4
Jg==
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
