//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Mar 28 00:06:00 2019
//Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
//Command     : generate_target AXI_bd_0_wrapper.bd
//Design      : AXI_bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI_bd_0_wrapper
   (AXI_bd_Vaux12_v_n,
    AXI_bd_Vaux12_v_p,
    AXI_bd_Vaux4_v_n,
    AXI_bd_Vaux4_v_p,
    AXI_bd_btn0,
    AXI_bd_btn1,
    AXI_bd_clk_100mhz_out,
    AXI_bd_gpio_led_tri_io,
    AXI_bd_gpio_ledrgb_tri_io,
    AXI_bd_pll_i,
    AXI_bd_pll_q,
    AXI_bd_sys_clock,
    AXI_bd_usb_uart_UART_baudoutn,
    AXI_bd_usb_uart_UART_ctsn,
    AXI_bd_usb_uart_UART_dcdn,
    AXI_bd_usb_uart_UART_ddis,
    AXI_bd_usb_uart_UART_dsrn,
    AXI_bd_usb_uart_UART_dtrn,
    AXI_bd_usb_uart_UART_out1n,
    AXI_bd_usb_uart_UART_out2n,
    AXI_bd_usb_uart_UART_ri,
    AXI_bd_usb_uart_UART_rtsn,
    AXI_bd_usb_uart_UART_rxd,
    AXI_bd_usb_uart_UART_rxrdyn,
    AXI_bd_usb_uart_UART_txd,
    AXI_bd_usb_uart_UART_txrdyn,
    cellular_ram_addr,
    cellular_ram_ce_n,
    cellular_ram_dq_io,
    cellular_ram_oen,
    cellular_ram_wen,
    qspi_flash_io0_io,
    qspi_flash_io1_io,
    qspi_flash_io2_io,
    qspi_flash_io3_io,
    qspi_flash_ss_io);
  input AXI_bd_Vaux12_v_n;
  input AXI_bd_Vaux12_v_p;
  input AXI_bd_Vaux4_v_n;
  input AXI_bd_Vaux4_v_p;
  input AXI_bd_btn0;
  input AXI_bd_btn1;
  output AXI_bd_clk_100mhz_out;
  inout [1:0]AXI_bd_gpio_led_tri_io;
  inout [2:0]AXI_bd_gpio_ledrgb_tri_io;
  output AXI_bd_pll_i;
  output AXI_bd_pll_q;
  input AXI_bd_sys_clock;
  output AXI_bd_usb_uart_UART_baudoutn;
  input AXI_bd_usb_uart_UART_ctsn;
  input AXI_bd_usb_uart_UART_dcdn;
  output AXI_bd_usb_uart_UART_ddis;
  input AXI_bd_usb_uart_UART_dsrn;
  output AXI_bd_usb_uart_UART_dtrn;
  output AXI_bd_usb_uart_UART_out1n;
  output AXI_bd_usb_uart_UART_out2n;
  input AXI_bd_usb_uart_UART_ri;
  output AXI_bd_usb_uart_UART_rtsn;
  input AXI_bd_usb_uart_UART_rxd;
  output AXI_bd_usb_uart_UART_rxrdyn;
  output AXI_bd_usb_uart_UART_txd;
  output AXI_bd_usb_uart_UART_txrdyn;
  output [18:0]cellular_ram_addr;
  output cellular_ram_ce_n;
  inout [7:0]cellular_ram_dq_io;
  output cellular_ram_oen;
  output cellular_ram_wen;
  inout qspi_flash_io0_io;
  inout qspi_flash_io1_io;
  inout qspi_flash_io2_io;
  inout qspi_flash_io3_io;
  inout qspi_flash_ss_io;

  wire AXI_bd_Vaux12_v_n;
  wire AXI_bd_Vaux12_v_p;
  wire AXI_bd_Vaux4_v_n;
  wire AXI_bd_Vaux4_v_p;
  wire AXI_bd_btn0;
  wire AXI_bd_btn1;
  wire AXI_bd_clk_100mhz_out;
  wire [0:0]AXI_bd_gpio_led_tri_i_0;
  wire [1:1]AXI_bd_gpio_led_tri_i_1;
  wire [0:0]AXI_bd_gpio_led_tri_io_0;
  wire [1:1]AXI_bd_gpio_led_tri_io_1;
  wire [0:0]AXI_bd_gpio_led_tri_o_0;
  wire [1:1]AXI_bd_gpio_led_tri_o_1;
  wire [0:0]AXI_bd_gpio_led_tri_t_0;
  wire [1:1]AXI_bd_gpio_led_tri_t_1;
  wire [0:0]AXI_bd_gpio_ledrgb_tri_i_0;
  wire [1:1]AXI_bd_gpio_ledrgb_tri_i_1;
  wire [2:2]AXI_bd_gpio_ledrgb_tri_i_2;
  wire [0:0]AXI_bd_gpio_ledrgb_tri_io_0;
  wire [1:1]AXI_bd_gpio_ledrgb_tri_io_1;
  wire [2:2]AXI_bd_gpio_ledrgb_tri_io_2;
  wire [0:0]AXI_bd_gpio_ledrgb_tri_o_0;
  wire [1:1]AXI_bd_gpio_ledrgb_tri_o_1;
  wire [2:2]AXI_bd_gpio_ledrgb_tri_o_2;
  wire [0:0]AXI_bd_gpio_ledrgb_tri_t_0;
  wire [1:1]AXI_bd_gpio_ledrgb_tri_t_1;
  wire [2:2]AXI_bd_gpio_ledrgb_tri_t_2;
  wire AXI_bd_pll_i;
  wire AXI_bd_pll_q;
  wire AXI_bd_sys_clock;
  wire AXI_bd_usb_uart_UART_baudoutn;
  wire AXI_bd_usb_uart_UART_ctsn;
  wire AXI_bd_usb_uart_UART_dcdn;
  wire AXI_bd_usb_uart_UART_ddis;
  wire AXI_bd_usb_uart_UART_dsrn;
  wire AXI_bd_usb_uart_UART_dtrn;
  wire AXI_bd_usb_uart_UART_out1n;
  wire AXI_bd_usb_uart_UART_out2n;
  wire AXI_bd_usb_uart_UART_ri;
  wire AXI_bd_usb_uart_UART_rtsn;
  wire AXI_bd_usb_uart_UART_rxd;
  wire AXI_bd_usb_uart_UART_rxrdyn;
  wire AXI_bd_usb_uart_UART_txd;
  wire AXI_bd_usb_uart_UART_txrdyn;
  wire [18:0]cellular_ram_addr;
  wire cellular_ram_ce_n;
  wire [0:0]cellular_ram_dq_i_0;
  wire [1:1]cellular_ram_dq_i_1;
  wire [2:2]cellular_ram_dq_i_2;
  wire [3:3]cellular_ram_dq_i_3;
  wire [4:4]cellular_ram_dq_i_4;
  wire [5:5]cellular_ram_dq_i_5;
  wire [6:6]cellular_ram_dq_i_6;
  wire [7:7]cellular_ram_dq_i_7;
  wire [0:0]cellular_ram_dq_io_0;
  wire [1:1]cellular_ram_dq_io_1;
  wire [2:2]cellular_ram_dq_io_2;
  wire [3:3]cellular_ram_dq_io_3;
  wire [4:4]cellular_ram_dq_io_4;
  wire [5:5]cellular_ram_dq_io_5;
  wire [6:6]cellular_ram_dq_io_6;
  wire [7:7]cellular_ram_dq_io_7;
  wire [0:0]cellular_ram_dq_o_0;
  wire [1:1]cellular_ram_dq_o_1;
  wire [2:2]cellular_ram_dq_o_2;
  wire [3:3]cellular_ram_dq_o_3;
  wire [4:4]cellular_ram_dq_o_4;
  wire [5:5]cellular_ram_dq_o_5;
  wire [6:6]cellular_ram_dq_o_6;
  wire [7:7]cellular_ram_dq_o_7;
  wire [0:0]cellular_ram_dq_t_0;
  wire [1:1]cellular_ram_dq_t_1;
  wire [2:2]cellular_ram_dq_t_2;
  wire [3:3]cellular_ram_dq_t_3;
  wire [4:4]cellular_ram_dq_t_4;
  wire [5:5]cellular_ram_dq_t_5;
  wire [6:6]cellular_ram_dq_t_6;
  wire [7:7]cellular_ram_dq_t_7;
  wire cellular_ram_oen;
  wire cellular_ram_wen;
  wire qspi_flash_io0_i;
  wire qspi_flash_io0_io;
  wire qspi_flash_io0_o;
  wire qspi_flash_io0_t;
  wire qspi_flash_io1_i;
  wire qspi_flash_io1_io;
  wire qspi_flash_io1_o;
  wire qspi_flash_io1_t;
  wire qspi_flash_io2_i;
  wire qspi_flash_io2_io;
  wire qspi_flash_io2_o;
  wire qspi_flash_io2_t;
  wire qspi_flash_io3_i;
  wire qspi_flash_io3_io;
  wire qspi_flash_io3_o;
  wire qspi_flash_io3_t;
  wire qspi_flash_ss_i;
  wire qspi_flash_ss_io;
  wire qspi_flash_ss_o;
  wire qspi_flash_ss_t;

  AXI_bd_0 AXI_bd_0_i
       (.AXI_bd_Vaux12_v_n(AXI_bd_Vaux12_v_n),
        .AXI_bd_Vaux12_v_p(AXI_bd_Vaux12_v_p),
        .AXI_bd_Vaux4_v_n(AXI_bd_Vaux4_v_n),
        .AXI_bd_Vaux4_v_p(AXI_bd_Vaux4_v_p),
        .AXI_bd_btn0(AXI_bd_btn0),
        .AXI_bd_btn1(AXI_bd_btn1),
        .AXI_bd_clk_100mhz_out(AXI_bd_clk_100mhz_out),
        .AXI_bd_gpio_led_tri_i({AXI_bd_gpio_led_tri_i_1,AXI_bd_gpio_led_tri_i_0}),
        .AXI_bd_gpio_led_tri_o({AXI_bd_gpio_led_tri_o_1,AXI_bd_gpio_led_tri_o_0}),
        .AXI_bd_gpio_led_tri_t({AXI_bd_gpio_led_tri_t_1,AXI_bd_gpio_led_tri_t_0}),
        .AXI_bd_gpio_ledrgb_tri_i({AXI_bd_gpio_ledrgb_tri_i_2,AXI_bd_gpio_ledrgb_tri_i_1,AXI_bd_gpio_ledrgb_tri_i_0}),
        .AXI_bd_gpio_ledrgb_tri_o({AXI_bd_gpio_ledrgb_tri_o_2,AXI_bd_gpio_ledrgb_tri_o_1,AXI_bd_gpio_ledrgb_tri_o_0}),
        .AXI_bd_gpio_ledrgb_tri_t({AXI_bd_gpio_ledrgb_tri_t_2,AXI_bd_gpio_ledrgb_tri_t_1,AXI_bd_gpio_ledrgb_tri_t_0}),
        .AXI_bd_pll_i(AXI_bd_pll_i),
        .AXI_bd_pll_q(AXI_bd_pll_q),
        .AXI_bd_sys_clock(AXI_bd_sys_clock),
        .AXI_bd_usb_uart_UART_baudoutn(AXI_bd_usb_uart_UART_baudoutn),
        .AXI_bd_usb_uart_UART_ctsn(AXI_bd_usb_uart_UART_ctsn),
        .AXI_bd_usb_uart_UART_dcdn(AXI_bd_usb_uart_UART_dcdn),
        .AXI_bd_usb_uart_UART_ddis(AXI_bd_usb_uart_UART_ddis),
        .AXI_bd_usb_uart_UART_dsrn(AXI_bd_usb_uart_UART_dsrn),
        .AXI_bd_usb_uart_UART_dtrn(AXI_bd_usb_uart_UART_dtrn),
        .AXI_bd_usb_uart_UART_out1n(AXI_bd_usb_uart_UART_out1n),
        .AXI_bd_usb_uart_UART_out2n(AXI_bd_usb_uart_UART_out2n),
        .AXI_bd_usb_uart_UART_ri(AXI_bd_usb_uart_UART_ri),
        .AXI_bd_usb_uart_UART_rtsn(AXI_bd_usb_uart_UART_rtsn),
        .AXI_bd_usb_uart_UART_rxd(AXI_bd_usb_uart_UART_rxd),
        .AXI_bd_usb_uart_UART_rxrdyn(AXI_bd_usb_uart_UART_rxrdyn),
        .AXI_bd_usb_uart_UART_txd(AXI_bd_usb_uart_UART_txd),
        .AXI_bd_usb_uart_UART_txrdyn(AXI_bd_usb_uart_UART_txrdyn),
        .cellular_ram_addr(cellular_ram_addr),
        .cellular_ram_ce_n(cellular_ram_ce_n),
        .cellular_ram_dq_i({cellular_ram_dq_i_7,cellular_ram_dq_i_6,cellular_ram_dq_i_5,cellular_ram_dq_i_4,cellular_ram_dq_i_3,cellular_ram_dq_i_2,cellular_ram_dq_i_1,cellular_ram_dq_i_0}),
        .cellular_ram_dq_o({cellular_ram_dq_o_7,cellular_ram_dq_o_6,cellular_ram_dq_o_5,cellular_ram_dq_o_4,cellular_ram_dq_o_3,cellular_ram_dq_o_2,cellular_ram_dq_o_1,cellular_ram_dq_o_0}),
        .cellular_ram_dq_t({cellular_ram_dq_t_7,cellular_ram_dq_t_6,cellular_ram_dq_t_5,cellular_ram_dq_t_4,cellular_ram_dq_t_3,cellular_ram_dq_t_2,cellular_ram_dq_t_1,cellular_ram_dq_t_0}),
        .cellular_ram_oen(cellular_ram_oen),
        .cellular_ram_wen(cellular_ram_wen),
        .qspi_flash_io0_i(qspi_flash_io0_i),
        .qspi_flash_io0_o(qspi_flash_io0_o),
        .qspi_flash_io0_t(qspi_flash_io0_t),
        .qspi_flash_io1_i(qspi_flash_io1_i),
        .qspi_flash_io1_o(qspi_flash_io1_o),
        .qspi_flash_io1_t(qspi_flash_io1_t),
        .qspi_flash_io2_i(qspi_flash_io2_i),
        .qspi_flash_io2_o(qspi_flash_io2_o),
        .qspi_flash_io2_t(qspi_flash_io2_t),
        .qspi_flash_io3_i(qspi_flash_io3_i),
        .qspi_flash_io3_o(qspi_flash_io3_o),
        .qspi_flash_io3_t(qspi_flash_io3_t),
        .qspi_flash_ss_i(qspi_flash_ss_i),
        .qspi_flash_ss_o(qspi_flash_ss_o),
        .qspi_flash_ss_t(qspi_flash_ss_t));
  IOBUF AXI_bd_gpio_led_tri_iobuf_0
       (.I(AXI_bd_gpio_led_tri_o_0),
        .IO(AXI_bd_gpio_led_tri_io[0]),
        .O(AXI_bd_gpio_led_tri_i_0),
        .T(AXI_bd_gpio_led_tri_t_0));
  IOBUF AXI_bd_gpio_led_tri_iobuf_1
       (.I(AXI_bd_gpio_led_tri_o_1),
        .IO(AXI_bd_gpio_led_tri_io[1]),
        .O(AXI_bd_gpio_led_tri_i_1),
        .T(AXI_bd_gpio_led_tri_t_1));
  IOBUF AXI_bd_gpio_ledrgb_tri_iobuf_0
       (.I(AXI_bd_gpio_ledrgb_tri_o_0),
        .IO(AXI_bd_gpio_ledrgb_tri_io[0]),
        .O(AXI_bd_gpio_ledrgb_tri_i_0),
        .T(AXI_bd_gpio_ledrgb_tri_t_0));
  IOBUF AXI_bd_gpio_ledrgb_tri_iobuf_1
       (.I(AXI_bd_gpio_ledrgb_tri_o_1),
        .IO(AXI_bd_gpio_ledrgb_tri_io[1]),
        .O(AXI_bd_gpio_ledrgb_tri_i_1),
        .T(AXI_bd_gpio_ledrgb_tri_t_1));
  IOBUF AXI_bd_gpio_ledrgb_tri_iobuf_2
       (.I(AXI_bd_gpio_ledrgb_tri_o_2),
        .IO(AXI_bd_gpio_ledrgb_tri_io[2]),
        .O(AXI_bd_gpio_ledrgb_tri_i_2),
        .T(AXI_bd_gpio_ledrgb_tri_t_2));
  IOBUF cellular_ram_dq_iobuf_0
       (.I(cellular_ram_dq_o_0),
        .IO(cellular_ram_dq_io[0]),
        .O(cellular_ram_dq_i_0),
        .T(cellular_ram_dq_t_0));
  IOBUF cellular_ram_dq_iobuf_1
       (.I(cellular_ram_dq_o_1),
        .IO(cellular_ram_dq_io[1]),
        .O(cellular_ram_dq_i_1),
        .T(cellular_ram_dq_t_1));
  IOBUF cellular_ram_dq_iobuf_2
       (.I(cellular_ram_dq_o_2),
        .IO(cellular_ram_dq_io[2]),
        .O(cellular_ram_dq_i_2),
        .T(cellular_ram_dq_t_2));
  IOBUF cellular_ram_dq_iobuf_3
       (.I(cellular_ram_dq_o_3),
        .IO(cellular_ram_dq_io[3]),
        .O(cellular_ram_dq_i_3),
        .T(cellular_ram_dq_t_3));
  IOBUF cellular_ram_dq_iobuf_4
       (.I(cellular_ram_dq_o_4),
        .IO(cellular_ram_dq_io[4]),
        .O(cellular_ram_dq_i_4),
        .T(cellular_ram_dq_t_4));
  IOBUF cellular_ram_dq_iobuf_5
       (.I(cellular_ram_dq_o_5),
        .IO(cellular_ram_dq_io[5]),
        .O(cellular_ram_dq_i_5),
        .T(cellular_ram_dq_t_5));
  IOBUF cellular_ram_dq_iobuf_6
       (.I(cellular_ram_dq_o_6),
        .IO(cellular_ram_dq_io[6]),
        .O(cellular_ram_dq_i_6),
        .T(cellular_ram_dq_t_6));
  IOBUF cellular_ram_dq_iobuf_7
       (.I(cellular_ram_dq_o_7),
        .IO(cellular_ram_dq_io[7]),
        .O(cellular_ram_dq_i_7),
        .T(cellular_ram_dq_t_7));
  IOBUF qspi_flash_io0_iobuf
       (.I(qspi_flash_io0_o),
        .IO(qspi_flash_io0_io),
        .O(qspi_flash_io0_i),
        .T(qspi_flash_io0_t));
  IOBUF qspi_flash_io1_iobuf
       (.I(qspi_flash_io1_o),
        .IO(qspi_flash_io1_io),
        .O(qspi_flash_io1_i),
        .T(qspi_flash_io1_t));
  IOBUF qspi_flash_io2_iobuf
       (.I(qspi_flash_io2_o),
        .IO(qspi_flash_io2_io),
        .O(qspi_flash_io2_i),
        .T(qspi_flash_io2_t));
  IOBUF qspi_flash_io3_iobuf
       (.I(qspi_flash_io3_o),
        .IO(qspi_flash_io3_io),
        .O(qspi_flash_io3_i),
        .T(qspi_flash_io3_t));
  IOBUF qspi_flash_ss_iobuf
       (.I(qspi_flash_ss_o),
        .IO(qspi_flash_ss_io),
        .O(qspi_flash_ss_i),
        .T(qspi_flash_ss_t));
endmodule
