`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: DF4IAH Solutions
// Engineer: Ulrich E. Habel
// 
// Create Date: 26.07.2019 20:50:12
// Design Name: UFBmod
// Module Name: top
// Project Name: UFBmod V2.x - TE0712-02-100-2C3 mounted on UFBmod PCB
// Target Devices: 
// Tool Versions: 
// Description: UFBmod is a transceiver for digital signals.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    //input reset,


    // Clocks
    input  clk0_p,       // 1.5 V
    input  clk0_n,       // 1.5 V
    
    input  pll_clk_p,    // 1.5 V
    input  pll_clk_n,    // 1.5 V

    output ddr3_clk0_p,  // 1.5 V
    output ddr3_clk0_n,  // 1.5 V

    input  clk50m2,      // 1.5 V
    
    
    // FPGA Config
    inout  fpga_io,
    
    
    // ULI System (Trenz-Electronic CPLD)
    inout  uli_system,


    // SPI-QUAD
    output spi_sck,
    inout  spi_dq0,
    inout  spi_dq1,
    inout  spi_dq2,
    inout  spi_dq3,

    
    // Onewire
    inout  onewire,

    
    // PLL - I2C & Int (VTTREF)
    inout  pll_scl,
    inout  pll_sda,

    input  pll_int,
    
    
    // DDR3 Lanes 0-3
    output ddr3_dqs0_p,
    output ddr3_dqs0_n,
    output ddr3_dm0,

    output ddr3_dqs1_p,
    output ddr3_dqs1_n,
    output ddr3_dm1,

    output ddr3_dqs2_p,
    output ddr3_dqs2_n,
    output ddr3_dm2,

    output ddr3_dqs3_p,
    output ddr3_dqs3_n,
    output ddr3_dm3,

    inout  ddr3_d0,
    inout  ddr3_d1,
    inout  ddr3_d2,
    inout  ddr3_d3,
    inout  ddr3_d4,
    inout  ddr3_d5,
    inout  ddr3_d6,
    inout  ddr3_d7,
    inout  ddr3_d8,
    inout  ddr3_d9,
    inout  ddr3_d10,
    inout  ddr3_d11,
    inout  ddr3_d12,
    inout  ddr3_d13,
    inout  ddr3_d14,
    inout  ddr3_d15,
    inout  ddr3_d16,
    inout  ddr3_d17,
    inout  ddr3_d18,
    inout  ddr3_d19,
    inout  ddr3_d20,
    inout  ddr3_d21,
    inout  ddr3_d22,
    inout  ddr3_d23,
    inout  ddr3_d24,
    inout  ddr3_d25,
    inout  ddr3_d26,
    inout  ddr3_d27,
    inout  ddr3_d28,
    inout  ddr3_d29,
    inout  ddr3_d30,
    inout  ddr3_d31,
    
    output ddr3_a0,
    output ddr3_a1,
    output ddr3_a2,
    output ddr3_a3,
    output ddr3_a4,
    output ddr3_a5,
    output ddr3_a6,
    output ddr3_a7,
    output ddr3_a8,
    output ddr3_a9,
    output ddr3_a10,
    output ddr3_a11,
    output ddr3_a12,
    output ddr3_a13,
    output ddr3_a14,
    
    output ddr3_ba0,
    output ddr3_ba1,
    output ddr3_ba2,
    
    output ddr3_we,

    output ddr3_odt0,

    output ddr3_ras,
    output ddr3_cas,

    output ddr3_cke0,

    output ddr3_reset,
        
    
    // Ethernet
    output eth_rst,

    output mdc,
    inout  mdio,
    
    output eth_tx_d0,
    output eth_tx_d1,

    input  eth_rx_d0,
    input  eth_rx_d1,
    input  eth_rx_dv,

    input  link_led
    
    );
    
endmodule
