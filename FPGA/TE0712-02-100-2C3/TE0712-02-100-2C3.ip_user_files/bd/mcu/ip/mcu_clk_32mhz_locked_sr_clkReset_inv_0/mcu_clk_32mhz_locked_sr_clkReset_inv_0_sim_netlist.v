// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:11:40 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_locked_sr_clkReset_inv_0/mcu_clk_32mhz_locked_sr_clkReset_inv_0_sim_netlist.v
// Design      : mcu_clk_32mhz_locked_sr_clkReset_inv_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_clk_32mhz_locked_sr_clkReset_inv_0,c_addsub_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_clk_32mhz_locked_sr_clkReset_inv_0
   (A,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 32000000, PHASE 0.0, CLK_DOMAIN mcu_clk_wiz_0_0_clk_32_lvds, INSERT_VIP 0" *) input CLK;
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
  mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_13 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_13
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
  mcu_clk_32mhz_locked_sr_clkReset_inv_0_c_addsub_v12_0_13_viv xst_addsub
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
puzTlOQOrgzZiSsyy2QHI224uzEILIPOIK95RpyVNwh3735bBxWh7gVg//aWuLJkF/WxGfhPwLt2
rGJ38suGJA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nxNn6OgbzhaEOHmmfZA90k9PbAZ/CrE/6Deng4tMGd6UTBjv3LwrvPFJibJg3H/OacCePpf5RhU6
hNQaN1rzkx9lphQQCedfOkFgHTtE5EoojPa1eNHgwy+yJuvNzg69j1RcwVMMHu0gRmg4IAMxR+NX
TT0oQsvbK/qcYYW+ODA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XdeJlQVnhnFgNtdsIL0whgNCzBjcXH2+ZQOPQQaTwFqeqZvT9CzEEjV1jO06IK1UeaeoOb4N+are
bTzUARxJ9MbL+sGDzlSt1De2cF/hMZUra9fvHEfgi9mwK1W8eo1yQzbnch7cj79CkopcxGf8JSTN
gUiezW8H2NA4FhcbBDYMjuAZhZx7u+bDw3VoSNB3JE3vs1nGOyjGkY4JEeJuWvwYemgWQcqUBmMd
OFLZLBnh+gRAbSDoCaJ5r6nM40eMt+AqN3gNQaFHhvwZSv5mvV+abPmDRjk4Z5h1II5CVbrDt5Gu
dn7L64BtmEgFddW6366QgFSN/Tgl9ChXbCWSLg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TXUDSxmNeSuIYWrnymNwlV7j5VW39J0rZVhf6YLniUMQc9aNs1WmN7PrPFFZU19I3q93SRPdEqaL
M0QtKYWkfLqIj51pSX1zn6d6XkADYyWGrJ/CaMbFGENkoON8mlTn/TidtSx8W+NWn/6oKD4qdlqH
/wrWtIw+c2etdxiXyjAc2a+l+z95Uk7rg4mjFfeOTfdhVy1ygQUJGaJEmhsmArmmlIP1igFHC/dF
Fr3RqrlSGK+SCj2BZn693lWDPayXTA5uO+esZEk18lfg/5QpOJLnzOls3xyiMn0M66NaBLULzkWA
OhPPbhA43RbWVNzSe/sb+e4ltim/vrDPViGSiA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RLQOZocj2L6yLb0Ga9hrsoAm6s/jd4TXu75jSakrQvaakyFso3E5lilk4sQ4vw3MPSM5uOH3+mdo
KBaBBS21R7pur7bPSi2biPjYzymnFPYNmBm8eNtwL99MogaXoWGHbwdCclgXIHAAXdVI9cmZ10CI
mnBrsGipjZTUufBqo+3bhrt3enMebc0SO9VvJjACHUBOBhHoYasaPFp9D1pE9pRHwSXfkyenZgU3
n4uLWA16RNe4pe1ZwQPV6K3bLtBKnaifcDAKVPzHeh8Fdqz4eFNLC+McljqA3OHTJLMg9PeQRs2B
sbSSHuLM/5SuLuBV0R1ixw1kKmohV8TPU82mkg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QqOgRrfR9NZ8Rg1deK8wJL3OWcWjhUa4iaSWvV85ZNafYHF9wZUga5M5TPbQu69DN9L6GvSIdgro
rz7e3Mh8Oaj7S18COVYR6yIvUIyU2lQOjhw3JtncTNv3a+ofOa4ebFMnyS56rOtdBVF0nXGQoY4/
QGh8m/DkTC35W0Pp9HY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DufzjtkczAXkqUCMRvgH4x2S9dpborMY0XXZpK+mEjcEPrTwAyeH+yCV7g8HtpDyKCTUWDl4lqza
zPizDWXu6kEFfZhSH4knTn0yJAAiupRWUg/vgZCX4dvHbJsVdcYV+xOHn5Dy5QSQrNnPJaJf95BE
4jR9va5Afcik8nInoBQzD9lkGdmTEqS1PvzMxJuVApLfsHx3e+H3zBb82ttEDZD8NBtl3pZcb3rZ
07wFyBrtpcavskiirU7UHZh+J28vxlKeFl0PKS7mla0HMwPPa/J8xnfMroNJD2zrXQXUnQULGO5y
LbLajQIriufLhWZhXsav6XlFu1ODtcO1cSZt3Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RhVDFypUpEkZoOZaZsClRWA7bAqtqOWQ7I+GahiK/3LUK0eZjeaf6FDXaREF7YRl4zMme/CiD3op
1fB68Il04Uvx2BHDNBTnXTQD+DOQcuO6UVQVut/Ub9ct0R6s6H4suwZP2mVUvOo8RdI9xwzIBbIV
SJFRKHHmrpESBxtZAbR/Dg1rYtyDjh1KaKkkwUH8i3B09ahhSeeG7KFCNfOoORnw9PZ1q0rkpFgA
kDB508fyvCVYSJZ0dO8te3SjB6EZzsdIRWx72+flgpRTWCFMv2gf2EN5kbMtDU41FON/HCmCaQnI
NtqhIEsfHN+8xcwPV5Uj7rRhXvti+1Bf3afavw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SRd9nh+ROiqVEvHWSqNkt84WM2rzBLhZGVCBMSmpl1lyOmJvR0su0dq8GDcr2HNnpigQYwwbldJZ
S36v6IoUY47OGC4OTpTUgN2CL27JmUXPyqRW1HEAOYEQFJNeSbNp/GFmKoXZMyXg6IK+EhpNnbfZ
81buf1mlm6aY4++fcyzY2WMVi93hXv7sn0GWD2/m/m50w6OTen555vg7rIldfMzKtrPmGTlrmdvT
jhNlwF8WGKn+oVTKrur4JkwAq/NKkZmZKJFozrkkgItPfLiMUy6Er73oZBRDEsiMbG+pV+bPpksz
4ZN5oEsQaHpYZIjCk6/kr3ISFruYo87BK7S66Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3920)
`pragma protect data_block
lH1azz+eRPOd5BZsmGjBNsBHSPxzgaYCKopleDa3Enm9fwtBccVLqxxXYMl+rfTxtFRKFfLQUbIs
5+vyFDe6LgkSQFnWTVBhbY3dsMkhZgiT3Ok/WCyoeVxegQipBuoFqT+UKT7CzdwJXg++ImHaKyaE
Zxuq04T7EDiFSq9rvDg2k3uU5ibdSVws2holtek0u8N0BN+rbq452jbLy5aRGw44S9s8Ahw0N5Uc
kA9acDqbEDu7kO6U7llNeANIEhDD6k/QIT56Iold7qVQsxsWTiZw8jSYgActcJA9yK6/5nZOwpjV
0yxH/I1Kl1JtLkF96eWm0x1H0dehvTIfSo93qoDWb24W6xAPL8hGXEXxrUQCxWBmJuzwd4ZnKxKQ
W9MQZJOK1JcEksxlYRrv7N+O1gf/cElRN8UkZzhbqwqkePHFRrc/GfiY3uwhcM8SYaj5Sw9AzVVj
bq2y5GX39E2tTjPDW6ATqNUMwVy1LnHhNjPKdHAXLuYjJVHQ9Pi9zuYgZeOd84c6z5x51K148vr7
9w13cjQUdrqRDuZkf0Ahwjg7wKMdnnOm90+3hodc8zGYxDMOGWXBEDfdkF2kBy0ViGB0LyCEeSwk
HZc16Arag+7sDJY/5FFc16i6jj7QMm/59q+yXffMZH3EsjjNvmgD5X3KBeGckD7N8wztZuinqpEw
1AjqH760/rgjJs5BtkYkMlrWMpMMQkY6y/f/Vw+0RgTFH+VhDamsGf5kJlKgO09SF/QyIyMHGWjx
ojo9Uv64zi9oAyihMrqBQJU2BR4I7ZIJWsppcWYnilMBRdDlSAR8k5Utzbx69DDlAqrvi/uFgUNA
yu6KpdztRShVGAY0Thm1z6Y3fodd70QlOpJEiLaux1GUI2BqN/rDPqsFKXDYXsnJrhjtM8Kkj01q
U3oRZBvbApgeAlQ0mTHWzAjK0QZC9uSh6oMdAAvFde5M38572/+E/MaWG561QRRlbzbHv4pH23bw
bpsU0jrJIJ/6X7J0hrvuau/AySzHoegk96MpY5VmZyMIfSDyNxw4sipUbpys2+tM9opf+PaCzG9c
/j/GRSMAxV6xrx87OFBw7z4iuN4CbZATExmt/vGe83EbjTq7I9VdnZPz1pMe7kX9kowSt4pTJwUY
ZFjNbLwyw7OeWq115lTg5gT1DAnZEtlkxrRX42jMazeTVukdvOYTdLwidYJCkKD6FcSW3Avix5wf
rKQ9yn+Wvl0rHv78AbBuY96oDhetKisW+Po+S4DhHdhzgubPKAIYfJ3A+PWzeWWz/8LAmXqx30eU
mJaTNLmWjLGh3Q3+UUk83bQvOONpJhCtMt67MGH0Y/SBnjsOwg2JNlpG171J+OmfQHdxLOXTRYI2
qBBNL/xElRCuNiJROK3wmkFYezN9JCtPxlinz057JlxCim+lSmrGZ99vt/Vtk0JG8UQtO84W86q5
JITwb/hde21RgndLTuPvaQNTCaPML3SfS5Bj6BKksCeNIXYhTkxwwYMe2i5WqLZ/DWMa3+/IYrt1
JA/g0Y/DKBnSDanu7c33p7BHQ5fwNoAjNhQ8dIBP9nb/1/dnwfsMhKRBl3GkbEyxc5GJnKyrpgKN
oLgONR782Q9nyFMjkl04Gr/fBKDkcUBu0aR6FhqBU8I3MOGZQGplco8P51mGOknKfOhOVWmIDfrZ
s/czld/2PN3jl6LG3v7kBPnrkiWeQkON21rZ+ugMZMAA67jq2+DF9OYjkmJd4NsMuc65rfxZRQeN
kPKcq+WyyHJ4LHhXfs6Spsj0elXjU1PzU2AmVOC1dOREAoKb0W//5pSVCSKCxO/01+jUWSeLE780
v2Oj38SR8rCKwSqUhWAvfOlJtAkoNZsoDUUuT1GuxTXgWS/hMko7QHwPtuIkrB4zsB77kCSv0KIb
DdxxhRljFkxM0mLexSgmdZgRBViWhwGhvFCQdjUP14Ywa0I7Re27vlhEztyHyIHI4euk8ENxzDev
ruBdXU2l5Ai0oGAlTZKbbigLtmKVJuRQ0Cqx7QSnjXdFNP/OOea8lFkuOwdCcCvD+BEU33Z375cJ
+P7dTdDG3N9XasCBRvYBkQYiEUO45A8QTfRxtT35wGaTXx1/8KxHBdCbliON8yMi3vNktzlMcglF
KZq7LWZqyaDyfatneIoRUZjTPbRpa/73aehydNS5rvUsbjoZkoUnGEGEz9CarBXEoRJ20t4M2lmr
Rb3QR8xmU7s4F7f9eyg2Nl8HVKGvGn8NwPR3NyTrzvMyd0xg92cKcDWIq87zD2FGI3dQxnReBIyd
AnQQxriIjB69Gj8V/vm7zK9EcJ5BZxcqaAzarka9MhtTgEagrYs+SnPKrJc/Ub7wWdkkUbCyVdQ1
3vzasf54R/QZxWM5NaLl6KgQrrrvKj8KKJlZ9LcM7oCVYg1eS5Sk2BoGDjBmp3nvoHeYG+6dIl0U
Bdrq7qmXcLSKhEEBbfg+USxm756UFXsMR8rxRd+TO2XS49FeXnu7IgvdNrd9valZlcvuZMlJ1FHw
yElJIsHcemVGwn/86zmj39zpsX8CtMknlkrhrfvgUOSHK4anmcdz0xx1X2QCN5AsWdXzSZAnswcp
i9SGRaLlmSYiPCIwPyeok2TByTJAe0c+IwrmcjSTvrOegrKQUArYCd5Ia0M6+yPLWZMUQ9CuvIoR
Fpmu/vWWfW3FJUWyc0FQNPYTTH1H3OVqpoDD7OEWYVjNltQFSfjmombuNFXVjGCNP+YvIhoIN+tX
up4jaRNg8mZyUBjTH2pkmN6L0NsDMhIzk+nrm+cncbdUpFdnNvkkyBoJCBGWAMHwhy1pEIWndwRu
PoBKjNn0zK3EbQVRXF2LF6VQ9VAJOuUs10DpVzq3Q/8eSNL5SzqO6RsDMcfhntJKsB+WuDlElMNh
GYuhLBCF77tkRpxAAZQ7g5cbExurxGoJ1gIW0yRvbT/Bp7/lRdvNlU56RgES5jSXqUG3jtVnBvGs
X84w6TmVzItU8QhxpbSPRaI2dpku5NBaaxyoJ/w7+gkszx/sxA/8JuyWq5MakSZtZMf/8DXEn+9O
xITzr2mEI165pd7Y6g93w2X6FwPw5cQPH16YcBpvtHqDooEY+88PQAdHKYOeYpanGbFcwXvCM516
nSb5REqR5Ftw15ldwLajax+h6fBgQbQXbW/3XeixySBK9i2+Zr5P+YVfzsB7QnC4ZA62cROQEKAq
iEcwvfOzK/Rox3O5CmbxDO5CE7tukfdz1iaH6nbvzK1NKM/6VSHk0M8ufbn4yKQ79ghPbTJExZCW
o8DgbhJf930vqvg7KcbDbzxE1Zm5fOZOJTlNqXehLZ6AAmUXqD3P3mn/9ngu1UzywaZF6X71/rAJ
t0G9/AT4pDeOEGJ1lNFVMqeo8CZRbMu1ecmGeEddrBbnzTZq1ND8DgApnHogQx28ReZ8LqF8iPWJ
0ETCap2cBiqYWs1m92zJ6GRNINPzPTXwWktc/NB9DUTbPXEKuUIKVO7s7ibm1T4RRmNpMTWlApUZ
a5nuD/vnHwf3TirNEWUAPkjNFfHpgeA76+sdSJYeHdFknVvf2ffRqShr8BiN5dsVsvsweuFKs2M/
WB/Q4EKNRhxpoKHE1NiZlx9Xg6DiXEEX7JylOhYIEdGYUXh2KuH2i0ik4ud+By0wjaLmtKYvuBcr
dOJlFyCMlgiVU6BJ5BWjZEeBqwou3jNIV/tuaJlefr2SAJjZShGU2rY5pyDEjfuNYhwLZs6q/u2c
pVjExVg4O9CBlooIglfTLMQZ/HyrkHqZIFI02pOuFr9srhMhew73oW+w5+RMz8NPVwlgkCi8rB4U
+/9tRue58c0B5gWWzd8HHJOgcVmkQbiBD8CNl/C9MydV9mtzLkJ8bloWXeC7iEUTqZB/QaAl4KuD
gidDnviFlyWh0s4c/mlhFEIiOz2f4w0zqzkpAgbJXuUSP7QAglwMHWCHjXagKTYe01FR/lOnX9py
cHuAutSqSMOtWzj1mn/JZHAfsDfv8O7pEJ+ZXJnsqRomRt/sINyD/A1dmgEBJb5GpzE73Zu9m0UV
9CJc+FO3CrDcNiIdyi+wT3GL/OGi2IzOxpH3N88qAXojfhvNOM2phIOVRGilari3aEGMUmGi8BVS
usXY6q6F3924La/GoY8b79gzwpW/GeMTB2RqsC5Z9J6VZTVk3BTl6TSPOxyk3Siy+syQfjlk8WDR
3nSW6PrmKJ+TlrsYPy6hG7NcGBGn0mTY+BWkJlwokBnbzFWdKwWhu36lYoNXyfaVYkjEZOvlHte4
SSHcrE0WPXlrszeYrdhmZnjp8Q5YenPNl4kKebLcdTOOrlroVrrgV1D6gwpfaaxrusYlMO0F0mkl
oxQX1yrfTG0DyGvJHk/7i/ChcVYq9HBsuJMYStH1sJpxPYuPERmS3XGySr9K+4LvQwt9Ehum8cRj
fpGWZnNhowdgSwmcH/GjX4oSiPcIV3gCQGpPKbsjtm6VBQhz4ep8kgdtIfoQBlh+Kdwseavt3fFk
f1ck4ACtHCiZ77pYB7nEvCvPrHL7qIDUom06t2CEuCNlW65RvVG8GBY20C56yK5uM67vN6bElIjd
KI8i0EcNkgmVgUkyFWMZSaZ52ics0IqmbE4KGDia71vZXYAdFqrXtp80NQqeZgdcqu8/1IZJE9AX
5IhG6CLYP0MiMPwtRmNyDmjMy+aJrdNYXCcmwc070+emXM644hP1nXuru8lAWaggeyt+7yfm8I38
RBv6Hi58L4b+DwOLjyQvBb4ewKjLlViPO05PMlnurAqHB+JJ8VbtcCGQW/rXAltQOnYu4Bbuh1AS
Ojs822K+9c5soM5bG/5Atn3p3+G/lpkQ9BscFA78kRkWCyzHuWSb5SvHqYZ4Ga3OXUgIAOpjH7Iy
xIpR990EDiiiL1sohvPKTw6nCwS7HZMrxNdT+7DCJQki1hRxL+T+7CUdh+GqhucOZ+vqksH8nTQP
hCYm4FHOHXLBDpGirnSgvHoWupW7lZrr8PRku9z2Ah4Z075Sz7ujZeF3+YAUQ/f5gmp4+jghRdaH
2XHWohclaW/4gVvd4bcQj5D5HQXRzMn5LWW5rEkumsZaxL1fAUPvJWSoMsmkjxQ6CeGSPd2XYGcw
8AVFlHpnv1IXt4LIhNBybFiMLwdTkmEKCVu57g6mxAn4oT7Ou868lAVCf8ujwmMJfwFNW89KcWMz
lN/8ru5kNyEh6y/Ou+k7c3WLOfzbyyGuOEHS9cg88ejqsdxrbKdDIXDVU0A=
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
