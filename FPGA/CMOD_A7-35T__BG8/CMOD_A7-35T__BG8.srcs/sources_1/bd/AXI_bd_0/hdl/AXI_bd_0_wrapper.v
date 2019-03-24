//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Mar 24 20:35:13 2019
//Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
//Command     : generate_target AXI_bd_0_wrapper.bd
//Design      : AXI_bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI_bd_0_wrapper
   (AXI_bd_In0,
    AXI_bd_cellular_ram_mem_a,
    AXI_bd_cellular_ram_mem_cen,
    AXI_bd_cellular_ram_mem_dq_i,
    AXI_bd_cellular_ram_mem_dq_o,
    AXI_bd_cellular_ram_mem_dq_t,
    AXI_bd_cellular_ram_mem_oen,
    AXI_bd_cellular_ram_mem_wen,
    AXI_bd_clk_100mhz_out,
    AXI_bd_qspi_flash_io0_i,
    AXI_bd_qspi_flash_io0_o,
    AXI_bd_qspi_flash_io0_t,
    AXI_bd_qspi_flash_io1_i,
    AXI_bd_qspi_flash_io1_o,
    AXI_bd_qspi_flash_io1_t,
    AXI_bd_qspi_flash_io2_i,
    AXI_bd_qspi_flash_io2_o,
    AXI_bd_qspi_flash_io2_t,
    AXI_bd_qspi_flash_io3_i,
    AXI_bd_qspi_flash_io3_o,
    AXI_bd_qspi_flash_io3_t,
    AXI_bd_qspi_flash_ss_i,
    AXI_bd_qspi_flash_ss_o,
    AXI_bd_qspi_flash_ss_t,
    AXI_bd_reset,
    AXI_bd_sys_clock,
    AXI_bd_usb_uart_sin,
    AXI_bd_usb_uart_sout,
    AXI_bd_vauxn12,
    AXI_bd_vauxn4,
    AXI_bd_vauxp12,
    AXI_bd_vauxp4);
  input AXI_bd_In0;
  output [31:0]AXI_bd_cellular_ram_mem_a;
  output [0:0]AXI_bd_cellular_ram_mem_cen;
  input [7:0]AXI_bd_cellular_ram_mem_dq_i;
  output [7:0]AXI_bd_cellular_ram_mem_dq_o;
  output [7:0]AXI_bd_cellular_ram_mem_dq_t;
  output [0:0]AXI_bd_cellular_ram_mem_oen;
  output [0:0]AXI_bd_cellular_ram_mem_wen;
  output AXI_bd_clk_100mhz_out;
  input AXI_bd_qspi_flash_io0_i;
  output AXI_bd_qspi_flash_io0_o;
  output AXI_bd_qspi_flash_io0_t;
  input AXI_bd_qspi_flash_io1_i;
  output AXI_bd_qspi_flash_io1_o;
  output AXI_bd_qspi_flash_io1_t;
  input AXI_bd_qspi_flash_io2_i;
  output AXI_bd_qspi_flash_io2_o;
  output AXI_bd_qspi_flash_io2_t;
  input AXI_bd_qspi_flash_io3_i;
  output AXI_bd_qspi_flash_io3_o;
  output AXI_bd_qspi_flash_io3_t;
  input AXI_bd_qspi_flash_ss_i;
  output [0:0]AXI_bd_qspi_flash_ss_o;
  output AXI_bd_qspi_flash_ss_t;
  input AXI_bd_reset;
  input AXI_bd_sys_clock;
  input AXI_bd_usb_uart_sin;
  output AXI_bd_usb_uart_sout;
  input AXI_bd_vauxn12;
  input AXI_bd_vauxn4;
  input AXI_bd_vauxp12;
  input AXI_bd_vauxp4;

  wire AXI_bd_In0;
  wire [31:0]AXI_bd_cellular_ram_mem_a;
  wire [0:0]AXI_bd_cellular_ram_mem_cen;
  wire [7:0]AXI_bd_cellular_ram_mem_dq_i;
  wire [7:0]AXI_bd_cellular_ram_mem_dq_o;
  wire [7:0]AXI_bd_cellular_ram_mem_dq_t;
  wire [0:0]AXI_bd_cellular_ram_mem_oen;
  wire [0:0]AXI_bd_cellular_ram_mem_wen;
  wire AXI_bd_clk_100mhz_out;
  wire AXI_bd_qspi_flash_io0_i;
  wire AXI_bd_qspi_flash_io0_o;
  wire AXI_bd_qspi_flash_io0_t;
  wire AXI_bd_qspi_flash_io1_i;
  wire AXI_bd_qspi_flash_io1_o;
  wire AXI_bd_qspi_flash_io1_t;
  wire AXI_bd_qspi_flash_io2_i;
  wire AXI_bd_qspi_flash_io2_o;
  wire AXI_bd_qspi_flash_io2_t;
  wire AXI_bd_qspi_flash_io3_i;
  wire AXI_bd_qspi_flash_io3_o;
  wire AXI_bd_qspi_flash_io3_t;
  wire AXI_bd_qspi_flash_ss_i;
  wire [0:0]AXI_bd_qspi_flash_ss_o;
  wire AXI_bd_qspi_flash_ss_t;
  wire AXI_bd_reset;
  wire AXI_bd_sys_clock;
  wire AXI_bd_usb_uart_sin;
  wire AXI_bd_usb_uart_sout;
  wire AXI_bd_vauxn12;
  wire AXI_bd_vauxn4;
  wire AXI_bd_vauxp12;
  wire AXI_bd_vauxp4;

  AXI_bd_0 AXI_bd_0_i
       (.AXI_bd_In0(AXI_bd_In0),
        .AXI_bd_cellular_ram_mem_a(AXI_bd_cellular_ram_mem_a),
        .AXI_bd_cellular_ram_mem_cen(AXI_bd_cellular_ram_mem_cen),
        .AXI_bd_cellular_ram_mem_dq_i(AXI_bd_cellular_ram_mem_dq_i),
        .AXI_bd_cellular_ram_mem_dq_o(AXI_bd_cellular_ram_mem_dq_o),
        .AXI_bd_cellular_ram_mem_dq_t(AXI_bd_cellular_ram_mem_dq_t),
        .AXI_bd_cellular_ram_mem_oen(AXI_bd_cellular_ram_mem_oen),
        .AXI_bd_cellular_ram_mem_wen(AXI_bd_cellular_ram_mem_wen),
        .AXI_bd_clk_100mhz_out(AXI_bd_clk_100mhz_out),
        .AXI_bd_qspi_flash_io0_i(AXI_bd_qspi_flash_io0_i),
        .AXI_bd_qspi_flash_io0_o(AXI_bd_qspi_flash_io0_o),
        .AXI_bd_qspi_flash_io0_t(AXI_bd_qspi_flash_io0_t),
        .AXI_bd_qspi_flash_io1_i(AXI_bd_qspi_flash_io1_i),
        .AXI_bd_qspi_flash_io1_o(AXI_bd_qspi_flash_io1_o),
        .AXI_bd_qspi_flash_io1_t(AXI_bd_qspi_flash_io1_t),
        .AXI_bd_qspi_flash_io2_i(AXI_bd_qspi_flash_io2_i),
        .AXI_bd_qspi_flash_io2_o(AXI_bd_qspi_flash_io2_o),
        .AXI_bd_qspi_flash_io2_t(AXI_bd_qspi_flash_io2_t),
        .AXI_bd_qspi_flash_io3_i(AXI_bd_qspi_flash_io3_i),
        .AXI_bd_qspi_flash_io3_o(AXI_bd_qspi_flash_io3_o),
        .AXI_bd_qspi_flash_io3_t(AXI_bd_qspi_flash_io3_t),
        .AXI_bd_qspi_flash_ss_i(AXI_bd_qspi_flash_ss_i),
        .AXI_bd_qspi_flash_ss_o(AXI_bd_qspi_flash_ss_o),
        .AXI_bd_qspi_flash_ss_t(AXI_bd_qspi_flash_ss_t),
        .AXI_bd_reset(AXI_bd_reset),
        .AXI_bd_sys_clock(AXI_bd_sys_clock),
        .AXI_bd_usb_uart_sin(AXI_bd_usb_uart_sin),
        .AXI_bd_usb_uart_sout(AXI_bd_usb_uart_sout),
        .AXI_bd_vauxn12(AXI_bd_vauxn12),
        .AXI_bd_vauxn4(AXI_bd_vauxn4),
        .AXI_bd_vauxp12(AXI_bd_vauxp12),
        .AXI_bd_vauxp4(AXI_bd_vauxp4));
endmodule
