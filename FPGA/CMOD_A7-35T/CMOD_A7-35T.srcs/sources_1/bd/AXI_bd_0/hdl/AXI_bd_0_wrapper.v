//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Mar 24 23:59:10 2019
//Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
//Command     : generate_target AXI_bd_0_wrapper.bd
//Design      : AXI_bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI_bd_0_wrapper
   (AXI_bd_In0,
    AXI_bd_Vaux12_v_n,
    AXI_bd_Vaux12_v_p,
    AXI_bd_Vaux4_v_n,
    AXI_bd_Vaux4_v_p,
    AXI_bd_cellular_ram_EMC_INTF_addr,
    AXI_bd_cellular_ram_EMC_INTF_ce_n,
    AXI_bd_cellular_ram_EMC_INTF_dq_io,
    AXI_bd_cellular_ram_EMC_INTF_oen,
    AXI_bd_cellular_ram_EMC_INTF_wen,
    AXI_bd_clk_100mhz_out,
    AXI_bd_qspi_flash_SPI_0_io0_io,
    AXI_bd_qspi_flash_SPI_0_io1_io,
    AXI_bd_qspi_flash_SPI_0_io2_io,
    AXI_bd_qspi_flash_SPI_0_io3_io,
    AXI_bd_qspi_flash_SPI_0_ss_io,
    AXI_bd_reset,
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
    AXI_bd_usb_uart_UART_txrdyn);
  input AXI_bd_In0;
  input AXI_bd_Vaux12_v_n;
  input AXI_bd_Vaux12_v_p;
  input AXI_bd_Vaux4_v_n;
  input AXI_bd_Vaux4_v_p;
  output [18:0]AXI_bd_cellular_ram_EMC_INTF_addr;
  output AXI_bd_cellular_ram_EMC_INTF_ce_n;
  inout [7:0]AXI_bd_cellular_ram_EMC_INTF_dq_io;
  output AXI_bd_cellular_ram_EMC_INTF_oen;
  output AXI_bd_cellular_ram_EMC_INTF_wen;
  output AXI_bd_clk_100mhz_out;
  inout AXI_bd_qspi_flash_SPI_0_io0_io;
  inout AXI_bd_qspi_flash_SPI_0_io1_io;
  inout AXI_bd_qspi_flash_SPI_0_io2_io;
  inout AXI_bd_qspi_flash_SPI_0_io3_io;
  inout AXI_bd_qspi_flash_SPI_0_ss_io;
  input AXI_bd_reset;
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

  wire AXI_bd_In0;
  wire AXI_bd_Vaux12_v_n;
  wire AXI_bd_Vaux12_v_p;
  wire AXI_bd_Vaux4_v_n;
  wire AXI_bd_Vaux4_v_p;
  wire [18:0]AXI_bd_cellular_ram_EMC_INTF_addr;
  wire AXI_bd_cellular_ram_EMC_INTF_ce_n;
  wire [0:0]AXI_bd_cellular_ram_EMC_INTF_dq_i_0;
  wire [1:1]AXI_bd_cellular_ram_EMC_INTF_dq_i_1;
  wire [2:2]AXI_bd_cellular_ram_EMC_INTF_dq_i_2;
  wire [3:3]AXI_bd_cellular_ram_EMC_INTF_dq_i_3;
  wire [4:4]AXI_bd_cellular_ram_EMC_INTF_dq_i_4;
  wire [5:5]AXI_bd_cellular_ram_EMC_INTF_dq_i_5;
  wire [6:6]AXI_bd_cellular_ram_EMC_INTF_dq_i_6;
  wire [7:7]AXI_bd_cellular_ram_EMC_INTF_dq_i_7;
  wire [0:0]AXI_bd_cellular_ram_EMC_INTF_dq_io_0;
  wire [1:1]AXI_bd_cellular_ram_EMC_INTF_dq_io_1;
  wire [2:2]AXI_bd_cellular_ram_EMC_INTF_dq_io_2;
  wire [3:3]AXI_bd_cellular_ram_EMC_INTF_dq_io_3;
  wire [4:4]AXI_bd_cellular_ram_EMC_INTF_dq_io_4;
  wire [5:5]AXI_bd_cellular_ram_EMC_INTF_dq_io_5;
  wire [6:6]AXI_bd_cellular_ram_EMC_INTF_dq_io_6;
  wire [7:7]AXI_bd_cellular_ram_EMC_INTF_dq_io_7;
  wire [0:0]AXI_bd_cellular_ram_EMC_INTF_dq_o_0;
  wire [1:1]AXI_bd_cellular_ram_EMC_INTF_dq_o_1;
  wire [2:2]AXI_bd_cellular_ram_EMC_INTF_dq_o_2;
  wire [3:3]AXI_bd_cellular_ram_EMC_INTF_dq_o_3;
  wire [4:4]AXI_bd_cellular_ram_EMC_INTF_dq_o_4;
  wire [5:5]AXI_bd_cellular_ram_EMC_INTF_dq_o_5;
  wire [6:6]AXI_bd_cellular_ram_EMC_INTF_dq_o_6;
  wire [7:7]AXI_bd_cellular_ram_EMC_INTF_dq_o_7;
  wire [0:0]AXI_bd_cellular_ram_EMC_INTF_dq_t_0;
  wire [1:1]AXI_bd_cellular_ram_EMC_INTF_dq_t_1;
  wire [2:2]AXI_bd_cellular_ram_EMC_INTF_dq_t_2;
  wire [3:3]AXI_bd_cellular_ram_EMC_INTF_dq_t_3;
  wire [4:4]AXI_bd_cellular_ram_EMC_INTF_dq_t_4;
  wire [5:5]AXI_bd_cellular_ram_EMC_INTF_dq_t_5;
  wire [6:6]AXI_bd_cellular_ram_EMC_INTF_dq_t_6;
  wire [7:7]AXI_bd_cellular_ram_EMC_INTF_dq_t_7;
  wire AXI_bd_cellular_ram_EMC_INTF_oen;
  wire AXI_bd_cellular_ram_EMC_INTF_wen;
  wire AXI_bd_clk_100mhz_out;
  wire AXI_bd_qspi_flash_SPI_0_io0_i;
  wire AXI_bd_qspi_flash_SPI_0_io0_io;
  wire AXI_bd_qspi_flash_SPI_0_io0_o;
  wire AXI_bd_qspi_flash_SPI_0_io0_t;
  wire AXI_bd_qspi_flash_SPI_0_io1_i;
  wire AXI_bd_qspi_flash_SPI_0_io1_io;
  wire AXI_bd_qspi_flash_SPI_0_io1_o;
  wire AXI_bd_qspi_flash_SPI_0_io1_t;
  wire AXI_bd_qspi_flash_SPI_0_io2_i;
  wire AXI_bd_qspi_flash_SPI_0_io2_io;
  wire AXI_bd_qspi_flash_SPI_0_io2_o;
  wire AXI_bd_qspi_flash_SPI_0_io2_t;
  wire AXI_bd_qspi_flash_SPI_0_io3_i;
  wire AXI_bd_qspi_flash_SPI_0_io3_io;
  wire AXI_bd_qspi_flash_SPI_0_io3_o;
  wire AXI_bd_qspi_flash_SPI_0_io3_t;
  wire AXI_bd_qspi_flash_SPI_0_ss_i;
  wire AXI_bd_qspi_flash_SPI_0_ss_io;
  wire AXI_bd_qspi_flash_SPI_0_ss_o;
  wire AXI_bd_qspi_flash_SPI_0_ss_t;
  wire AXI_bd_reset;
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

  AXI_bd_0 AXI_bd_0_i
       (.AXI_bd_In0(AXI_bd_In0),
        .AXI_bd_Vaux12_v_n(AXI_bd_Vaux12_v_n),
        .AXI_bd_Vaux12_v_p(AXI_bd_Vaux12_v_p),
        .AXI_bd_Vaux4_v_n(AXI_bd_Vaux4_v_n),
        .AXI_bd_Vaux4_v_p(AXI_bd_Vaux4_v_p),
        .AXI_bd_cellular_ram_EMC_INTF_addr(AXI_bd_cellular_ram_EMC_INTF_addr),
        .AXI_bd_cellular_ram_EMC_INTF_ce_n(AXI_bd_cellular_ram_EMC_INTF_ce_n),
        .AXI_bd_cellular_ram_EMC_INTF_dq_i({AXI_bd_cellular_ram_EMC_INTF_dq_i_7,AXI_bd_cellular_ram_EMC_INTF_dq_i_6,AXI_bd_cellular_ram_EMC_INTF_dq_i_5,AXI_bd_cellular_ram_EMC_INTF_dq_i_4,AXI_bd_cellular_ram_EMC_INTF_dq_i_3,AXI_bd_cellular_ram_EMC_INTF_dq_i_2,AXI_bd_cellular_ram_EMC_INTF_dq_i_1,AXI_bd_cellular_ram_EMC_INTF_dq_i_0}),
        .AXI_bd_cellular_ram_EMC_INTF_dq_o({AXI_bd_cellular_ram_EMC_INTF_dq_o_7,AXI_bd_cellular_ram_EMC_INTF_dq_o_6,AXI_bd_cellular_ram_EMC_INTF_dq_o_5,AXI_bd_cellular_ram_EMC_INTF_dq_o_4,AXI_bd_cellular_ram_EMC_INTF_dq_o_3,AXI_bd_cellular_ram_EMC_INTF_dq_o_2,AXI_bd_cellular_ram_EMC_INTF_dq_o_1,AXI_bd_cellular_ram_EMC_INTF_dq_o_0}),
        .AXI_bd_cellular_ram_EMC_INTF_dq_t({AXI_bd_cellular_ram_EMC_INTF_dq_t_7,AXI_bd_cellular_ram_EMC_INTF_dq_t_6,AXI_bd_cellular_ram_EMC_INTF_dq_t_5,AXI_bd_cellular_ram_EMC_INTF_dq_t_4,AXI_bd_cellular_ram_EMC_INTF_dq_t_3,AXI_bd_cellular_ram_EMC_INTF_dq_t_2,AXI_bd_cellular_ram_EMC_INTF_dq_t_1,AXI_bd_cellular_ram_EMC_INTF_dq_t_0}),
        .AXI_bd_cellular_ram_EMC_INTF_oen(AXI_bd_cellular_ram_EMC_INTF_oen),
        .AXI_bd_cellular_ram_EMC_INTF_wen(AXI_bd_cellular_ram_EMC_INTF_wen),
        .AXI_bd_clk_100mhz_out(AXI_bd_clk_100mhz_out),
        .AXI_bd_qspi_flash_SPI_0_io0_i(AXI_bd_qspi_flash_SPI_0_io0_i),
        .AXI_bd_qspi_flash_SPI_0_io0_o(AXI_bd_qspi_flash_SPI_0_io0_o),
        .AXI_bd_qspi_flash_SPI_0_io0_t(AXI_bd_qspi_flash_SPI_0_io0_t),
        .AXI_bd_qspi_flash_SPI_0_io1_i(AXI_bd_qspi_flash_SPI_0_io1_i),
        .AXI_bd_qspi_flash_SPI_0_io1_o(AXI_bd_qspi_flash_SPI_0_io1_o),
        .AXI_bd_qspi_flash_SPI_0_io1_t(AXI_bd_qspi_flash_SPI_0_io1_t),
        .AXI_bd_qspi_flash_SPI_0_io2_i(AXI_bd_qspi_flash_SPI_0_io2_i),
        .AXI_bd_qspi_flash_SPI_0_io2_o(AXI_bd_qspi_flash_SPI_0_io2_o),
        .AXI_bd_qspi_flash_SPI_0_io2_t(AXI_bd_qspi_flash_SPI_0_io2_t),
        .AXI_bd_qspi_flash_SPI_0_io3_i(AXI_bd_qspi_flash_SPI_0_io3_i),
        .AXI_bd_qspi_flash_SPI_0_io3_o(AXI_bd_qspi_flash_SPI_0_io3_o),
        .AXI_bd_qspi_flash_SPI_0_io3_t(AXI_bd_qspi_flash_SPI_0_io3_t),
        .AXI_bd_qspi_flash_SPI_0_ss_i(AXI_bd_qspi_flash_SPI_0_ss_i),
        .AXI_bd_qspi_flash_SPI_0_ss_o(AXI_bd_qspi_flash_SPI_0_ss_o),
        .AXI_bd_qspi_flash_SPI_0_ss_t(AXI_bd_qspi_flash_SPI_0_ss_t),
        .AXI_bd_reset(AXI_bd_reset),
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
        .AXI_bd_usb_uart_UART_txrdyn(AXI_bd_usb_uart_UART_txrdyn));
  IOBUF AXI_bd_cellular_ram_EMC_INTF_dq_iobuf_0
       (.I(AXI_bd_cellular_ram_EMC_INTF_dq_o_0),
        .IO(AXI_bd_cellular_ram_EMC_INTF_dq_io[0]),
        .O(AXI_bd_cellular_ram_EMC_INTF_dq_i_0),
        .T(AXI_bd_cellular_ram_EMC_INTF_dq_t_0));
  IOBUF AXI_bd_cellular_ram_EMC_INTF_dq_iobuf_1
       (.I(AXI_bd_cellular_ram_EMC_INTF_dq_o_1),
        .IO(AXI_bd_cellular_ram_EMC_INTF_dq_io[1]),
        .O(AXI_bd_cellular_ram_EMC_INTF_dq_i_1),
        .T(AXI_bd_cellular_ram_EMC_INTF_dq_t_1));
  IOBUF AXI_bd_cellular_ram_EMC_INTF_dq_iobuf_2
       (.I(AXI_bd_cellular_ram_EMC_INTF_dq_o_2),
        .IO(AXI_bd_cellular_ram_EMC_INTF_dq_io[2]),
        .O(AXI_bd_cellular_ram_EMC_INTF_dq_i_2),
        .T(AXI_bd_cellular_ram_EMC_INTF_dq_t_2));
  IOBUF AXI_bd_cellular_ram_EMC_INTF_dq_iobuf_3
       (.I(AXI_bd_cellular_ram_EMC_INTF_dq_o_3),
        .IO(AXI_bd_cellular_ram_EMC_INTF_dq_io[3]),
        .O(AXI_bd_cellular_ram_EMC_INTF_dq_i_3),
        .T(AXI_bd_cellular_ram_EMC_INTF_dq_t_3));
  IOBUF AXI_bd_cellular_ram_EMC_INTF_dq_iobuf_4
       (.I(AXI_bd_cellular_ram_EMC_INTF_dq_o_4),
        .IO(AXI_bd_cellular_ram_EMC_INTF_dq_io[4]),
        .O(AXI_bd_cellular_ram_EMC_INTF_dq_i_4),
        .T(AXI_bd_cellular_ram_EMC_INTF_dq_t_4));
  IOBUF AXI_bd_cellular_ram_EMC_INTF_dq_iobuf_5
       (.I(AXI_bd_cellular_ram_EMC_INTF_dq_o_5),
        .IO(AXI_bd_cellular_ram_EMC_INTF_dq_io[5]),
        .O(AXI_bd_cellular_ram_EMC_INTF_dq_i_5),
        .T(AXI_bd_cellular_ram_EMC_INTF_dq_t_5));
  IOBUF AXI_bd_cellular_ram_EMC_INTF_dq_iobuf_6
       (.I(AXI_bd_cellular_ram_EMC_INTF_dq_o_6),
        .IO(AXI_bd_cellular_ram_EMC_INTF_dq_io[6]),
        .O(AXI_bd_cellular_ram_EMC_INTF_dq_i_6),
        .T(AXI_bd_cellular_ram_EMC_INTF_dq_t_6));
  IOBUF AXI_bd_cellular_ram_EMC_INTF_dq_iobuf_7
       (.I(AXI_bd_cellular_ram_EMC_INTF_dq_o_7),
        .IO(AXI_bd_cellular_ram_EMC_INTF_dq_io[7]),
        .O(AXI_bd_cellular_ram_EMC_INTF_dq_i_7),
        .T(AXI_bd_cellular_ram_EMC_INTF_dq_t_7));
  IOBUF AXI_bd_qspi_flash_SPI_0_io0_iobuf
       (.I(AXI_bd_qspi_flash_SPI_0_io0_o),
        .IO(AXI_bd_qspi_flash_SPI_0_io0_io),
        .O(AXI_bd_qspi_flash_SPI_0_io0_i),
        .T(AXI_bd_qspi_flash_SPI_0_io0_t));
  IOBUF AXI_bd_qspi_flash_SPI_0_io1_iobuf
       (.I(AXI_bd_qspi_flash_SPI_0_io1_o),
        .IO(AXI_bd_qspi_flash_SPI_0_io1_io),
        .O(AXI_bd_qspi_flash_SPI_0_io1_i),
        .T(AXI_bd_qspi_flash_SPI_0_io1_t));
  IOBUF AXI_bd_qspi_flash_SPI_0_io2_iobuf
       (.I(AXI_bd_qspi_flash_SPI_0_io2_o),
        .IO(AXI_bd_qspi_flash_SPI_0_io2_io),
        .O(AXI_bd_qspi_flash_SPI_0_io2_i),
        .T(AXI_bd_qspi_flash_SPI_0_io2_t));
  IOBUF AXI_bd_qspi_flash_SPI_0_io3_iobuf
       (.I(AXI_bd_qspi_flash_SPI_0_io3_o),
        .IO(AXI_bd_qspi_flash_SPI_0_io3_io),
        .O(AXI_bd_qspi_flash_SPI_0_io3_i),
        .T(AXI_bd_qspi_flash_SPI_0_io3_t));
  IOBUF AXI_bd_qspi_flash_SPI_0_ss_iobuf
       (.I(AXI_bd_qspi_flash_SPI_0_ss_o),
        .IO(AXI_bd_qspi_flash_SPI_0_ss_io),
        .O(AXI_bd_qspi_flash_SPI_0_ss_i),
        .T(AXI_bd_qspi_flash_SPI_0_ss_t));
endmodule
