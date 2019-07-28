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
    // Reset
    reset,
    
    
    // Clocks
    pll_clk_p,           // 1.5 V    PLL          50.0 MHz
    pll_clk_n,           // 1.5 V    PLL          50.0 MHz

    mgt_clk0_p,          // 1.8 V    GTP         120.0 MHz
    mgt_clk0_n,          // 1.8 V    GTP         120.0 MHz

    ufb_fpga_trx_clk0,   // 3.3 V    TRX          32.0 MHz

    // Out of order clocks
    //clk0_p,            // 1.5 V    PLL         xxx.x MHz   REV02: none
    //clk0_n,            // 1.5 V    PLL         xxx.x MHz   REV02: none
    //clk50m2,           // 1.5 V    PLL-DDR3    xxx.x MHz   REV02: none
    
    
    // FPGA Config
    fpga_io,
    
    
    // ULI System (Trenz-Electronic CPLD)
    uli_system,


    // SPI-QUAD
    spi_sck,
    spi_dq,

    
    // Onewire
    onewire,

    
    // PLL - I2C & Int (VTTREF)
    pll_scl,
    pll_sda,

    pll_int,
    
    
    // DDR3 Lanes 0-3
    ddr3_clk0_p,         // 1.5 V    DDR3        xxx.x MHz
    ddr3_clk0_n,         // 1.5 V    DDR3        xxx.x MHz
    
    ddr3_s,
    ddr3_dqs_p,
    ddr3_dqs_n,
    ddr3_dm,
    ddr3_d,
    
    ddr3_a,
    ddr3_ba,
    
    ddr3_we,
    ddr3_odt,

    ddr3_ras,
    ddr3_cas,

    ddr3_cke,
    
    //ddr3_loop1_p,
    //ddr3_loop1_n,
    //ddr3_loop2_p,
    //ddr3_loop2_n,

    ddr3_reset,
        
    
    // Ethernet
    eth_rst,

    mdc,
    mdio,
    
    eth_tx_d,

    eth_rx_d,
    eth_rx_dv,

    link_led,
    
    
    // UFBmod special signals
    
    // TRX LVDS lanes
    ufb_trx_rxclk_p,
    ufb_trx_rxclk_n,
    
    ufb_trx_rxd09_p,
    ufb_trx_rxd09_n,
    
    ufb_trx_rxd24_p,
    ufb_trx_rxd24_n,
    
    ufb_trx_txclk_p,
    ufb_trx_txclk_n,
    
    ufb_trx_txd_p,
    ufb_trx_txd_n,
    
    
    // TRX SPI
    ufb_trx_rstn,

    ufb_trx_seln,
    ufb_trx_sclk,
    ufb_trx_mosi,
    ufb_trx_miso,

    ufb_trx_irq,
    
    
    // RFX
    ufb_fpga_rfx_mode,
    
    
    // FTDI serial <--> USB
    ufb_fpga_ft_reset,
    ufb_fpga_ft_12mhz,
    
    ufb_fpga_ft_rxd,
    ufb_fpga_ft_txd,
    
    ufb_fpga_ft_cts,
    ufb_fpga_ft_rts,

    ufb_fpga_ft_dsr,
    ufb_fpga_ft_dtr,
    
    ufb_fpga_ft_dcd,
    ufb_fpga_ft_ri
    
    );
    // Reset
    input  reset;
    
    
    // Clocks
    input  pll_clk_p;           // 1.5 V    PLL          50.0 MHz
    input  pll_clk_n;           // 1.5 V    PLL          50.0 MHz

    input  mgt_clk0_p;          // 1.8 V    GTP         120.0 MHz
    input  mgt_clk0_n;          // 1.8 V    GTP         120.0 MHz

    input  ufb_fpga_trx_clk0;   // 3.3 V    TRX          32.0 MHz


    // Out of order clocks
    //input  clk0_p;              // 1.5 V    PLL         xxx.x MHz   REV02: none
    //input  clk0_n;              // 1.5 V    PLL         xxx.x MHz   REV02: none
    //input  clk50m2;             // 1.5 V    PLL-DDR3    xxx.x MHz   REV02: none
    
    
    // FPGA Config
    inout  fpga_io;
    
    
    // ULI System (Trenz-Electronic CPLD)
    inout  uli_system;


    // SPI-QUAD
    output spi_sck;
    inout  [3:0]spi_dq;

    
    // Onewire
    inout  onewire;

    
    // PLL - I2C & Int (VTTREF)
    inout  pll_scl;
    inout  pll_sda;

    input  pll_int;
    
    
    // DDR3 Lanes 0-3
    output ddr3_clk0_p;         // 1.5 V    DDR3        xxx.x MHz
    output ddr3_clk0_n;         // 1.5 V    DDR3        xxx.x MHz
    
    output [0:0]ddr3_s;
    output [3:0]ddr3_dqs_p;
    output [3:0]ddr3_dqs_n;
    output [3:0]ddr3_dm;

    inout  [31:0]ddr3_d;
    
    output [14:0]ddr3_a;
    
    output [2:0]ddr3_ba;
    
    output ddr3_we;

    output [0:0]ddr3_odt;

    output ddr3_ras;
    output ddr3_cas;

    output [0:0]ddr3_cke;
    
    //output ddr3_loop1_p;
    //output ddr3_loop1_n;
    //input  ddr3_loop2_p;
    //input  ddr3_loop2_n;

    output ddr3_reset;
        
    
    // Ethernet
    output eth_rst;

    output mdc;
    inout  mdio;
    
    output [1:0]eth_tx_d;

    input  [1:0]eth_rx_d;
    input  eth_rx_dv;

    input  link_led;
    
    
    
    // UFBmod special signals
    
    // TRX LVDS lanes
    input  ufb_trx_rxclk_p;
    input  ufb_trx_rxclk_n;
    
    input  ufb_trx_rxd09_p;
    input  ufb_trx_rxd09_n;
    
    input  ufb_trx_rxd24_p;
    input  ufb_trx_rxd24_n;
    
    output ufb_trx_txclk_p;
    output ufb_trx_txclk_n;
    
    output ufb_trx_txd_p;
    output ufb_trx_txd_n;
    
    
    // TRX SPI
    output ufb_trx_rstn;

    output ufb_trx_seln;
    output ufb_trx_sclk;
    output ufb_trx_mosi;
    input  ufb_trx_miso;

    input  ufb_trx_irq;
    
    
    // RFX
    output ufb_fpga_rfx_mode;
    
    
    // FTDI serial <--> USB
    output ufb_fpga_ft_reset;
    output ufb_fpga_ft_12mhz;
    
    output ufb_fpga_ft_rxd;
    input  ufb_fpga_ft_txd;
    
    output ufb_fpga_ft_cts;
    input  ufb_fpga_ft_rts;

    output ufb_fpga_ft_dsr;
    input  ufb_fpga_ft_dtr;
    
    output ufb_fpga_ft_dcd;
    output ufb_fpga_ft_ri;



    // Block-Design MCU
 mcu_wrapper mcu_wrapper_i (
         .pll_clk_p(pll_clk_p),
         .pll_clk_n(pll_clk_n),

        .DDR3_SDRAM_reset_n(ddr3_reset),
        .DDR3_SDRAM_cke(ddr3_cke),
        .DDR3_SDRAM_ck_p(ddr3_clk0_p),
        .DDR3_SDRAM_ck_n(ddr3_clk0_n),

        .DDR3_SDRAM_cs_n(ddr3_s),
        .DDR3_SDRAM_we_n(ddr3_we),
        .DDR3_SDRAM_odt(ddr3_odt),

        .DDR3_SDRAM_dqs_p(ddr3_dqs_p),
        .DDR3_SDRAM_dqs_n(ddr3_dqs_n),
        .DDR3_SDRAM_dm(ddr3_dm),
        .DDR3_SDRAM_dq(ddr3_d),

        .DDR3_SDRAM_ba(ddr3_ba),
        .DDR3_SDRAM_addr(ddr3_a),

        .DDR3_SDRAM_cas_n(ddr3_cas),
        .DDR3_SDRAM_ras_n(ddr3_ras)
        );

endmodule
