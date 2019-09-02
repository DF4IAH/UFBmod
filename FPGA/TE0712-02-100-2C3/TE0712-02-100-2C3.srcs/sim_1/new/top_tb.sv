//////////////////////////////////////////////////////////////////////////////////
// Company: DF4IAH Solutions
// Engineer: Ulrich E. Habel
// 
// Create Date: 26.07.2019 20:50:12
// Design Name: UFBmod
// Module Name: top_tb
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


`timescale 1ns / 1ps


// TOB_TB

module top_tb;

    reg reset;
    reg sys_rst;
    
    reg pll_clk_p;
    reg pll_clk_n;
    
    reg mgt_clk0_p;
    reg mgt_clk0_n;
    
    reg ufb_trx_rxclk_p;
    reg ufb_trx_rxclk_n;
    
    reg ufb_trx_rxd09_p;
    reg ufb_trx_rxd09_n;
    
    
    wire spi_cs;
    wire [3:0]spi_dq;


    wire pll_scl;
    wire pll_sda;


    wire board_scl;
    wire board_sda;
    
    wire board_lcd_resetn;
    
    
    reg board_rotenc_push;
    reg board_rotenc_i;
    reg board_rotenc_q;
    
    
    wire ddr3_reset;
    
    wire [0:0]ddr3_cke;
    wire [0:0]ddr3_clk0_p;
    wire [0:0]ddr3_clk0_n;
    
    wire [0:0]ddr3_s;
    wire ddr3_we;
    wire [0:0]ddr3_odt;
    
    wire [3:0]ddr3_dqs_p;
    wire [3:0]ddr3_dqs_n;
    wire [3:0]ddr3_dm;
    wire [31:0]ddr3_d;
    
    wire [2:0]ddr3_ba;
    wire [14:0]ddr3_a;
    
    wire ddr3_ras;
    wire ddr3_cas;
    
    
    wire onewire;
    
    
    wire ufb_trx_txclk_p;
    wire ufb_trx_txclk_n;
    
    wire ufb_trx_txd_p;
    wire ufb_trx_txd_n;


    wire ufb_trx_rstn;
    
    wire ufb_trx_seln;
    wire ufb_trx_sclk;
    wire ufb_trx_mosi;
    wire ufb_trx_miso;


    wire ufb_fpga_rfx_mode;
    
    
    wire ufb_fpga_ft_resetn;
    wire ufb_fpga_ft_12mhz;
    
    wire ufb_fpga_ft_rxd;
    
    wire ufb_fpga_ft_cts;
    
    wire ufb_fpga_ft_dsr;
    
    wire ufb_fpga_ft_dcd;
    wire ufb_fpga_ft_ri;
    
    
    wire lcd_pwm;
    
    
    wire led_red;
    wire led_green;
    wire led_blue;



    // TOP
    
    top top_i(
    
    // Reset
    .reset(reset),
    .sys_rst(sys_rst),
    

    // Clocks
    .pll_clk_p(pll_clk_p),
    .pll_clk_n(pll_clk_n),
    
    .mgt_clk0_p(mgt_clk0_p),
    .mgt_clk0_n(mgt_clk0_n),
    
    // Out of order clocks
    //.clk0_p(1'b0),     // 1.5 V    PLL         xxx.x MHz   REV02: none
    //.clk0_n(1'b1),     // 1.5 V    PLL         xxx.x MHz   REV02: none
    //.clk50m2(1'b0),    // 1.5 V    PLL-DDR3    xxx.x MHz   REV02: none

    
    // FPGA Config
    .fpga_io(),

    // ULI System (Trenz-Electronic CPLD)
    .uli_system(),


    // SPI-QUAD
    //spi_sck,  --> managed by: STARTUPE2
    .spi_cs(spi_cs),
    .spi_dq(spi_dq),

    
    // PLL - I2C & Int (VTTREF)
    .pll_scl(pll_scl),
    .pll_sda(pll_sda),
    
    .pll_int(1'b0),


    // Board - I2C
    .board_scl(board_scl),
    .board_sda(board_sda),
    
    .board_lcd_resetn(board_lcd_resetn),


    // Rotary encoder
    .board_rotenc_push(board_rotenc_push),
    .board_rotenc_i(board_rotenc_i),
    .board_rotenc_q(board_rotenc_q),
    
    
    // DDR3 Lanes 0-3
    .ddr3_reset(ddr3_reset),
    .ddr3_cke(ddr3_cke),
    
    .ddr3_clk0_p(ddr3_clk0_p),
    .ddr3_clk0_n(ddr3_clk0_n),

    .ddr3_s(ddr3_s),
    .ddr3_dqs_p(ddr3_dqs_p),
    .ddr3_dqs_n(ddr3_dqs_n),
    .ddr3_dm(ddr3_dm),
    .ddr3_d(ddr3_d),

    .ddr3_a(ddr3_a),
    .ddr3_ba(ddr3_ba),

    .ddr3_we(ddr3_we),
    .ddr3_odt(ddr3_odt),

    .ddr3_ras(ddr3_ras),
    .ddr3_cas(ddr3_cas),
    
    //.ddr3_loop1_p(),
    //.ddr3_loop1_n(),
    //.ddr3_loop2_p(),
    //.ddr3_loop2_n(),
    
    .ddr3_init_calib_complete(),


    // Ethernet
    //.eth_rst(),
    
    //.mdc(),
    //.mdio(),
    
    //.eth_tx_d(),
    
    //.eth_rx_d(),
    //.eth_rx_dv(),
    
    //.link_led(),

    // Onewire
    .onewire(onewire),
    

    // UFBmod special signals
    
    // TRX LVDS lanes
    .ufb_trx_rxclk_p(ufb_trx_rxclk_p),
    .ufb_trx_rxclk_n(ufb_trx_rxclk_n),
    
    .ufb_trx_rxd09_p(ufb_trx_rxd09_p),
    .ufb_trx_rxd09_n(ufb_trx_rxd09_n),
    
    .ufb_trx_rxd24_p(1'b0),
    .ufb_trx_rxd24_n(1'b1),
    
    .ufb_trx_txclk_p(ufb_trx_txclk_p),
    .ufb_trx_txclk_n(ufb_trx_txclk_n),
    
    .ufb_trx_txd_p(ufb_trx_txd_p),
    .ufb_trx_txd_n(ufb_trx_txd_n),

    
    // TRX SPI
    .ufb_trx_rstn(ufb_trx_rstn),
    
    .ufb_trx_seln(ufb_trx_seln),
    .ufb_trx_sclk(ufb_trx_sclk),
    .ufb_trx_mosi(ufb_trx_mosi),
    .ufb_trx_miso(ufb_trx_miso),
    
    .ufb_trx_irq(),
    
    
    // RFX
    .ufb_fpga_rfx_mode(ufb_fpga_rfx_mode),
    
    
    // FTDI serial <--> USB
    .ufb_fpga_ft_resetn(ufb_fpga_ft_resetn),
    .ufb_fpga_ft_12mhz(ufb_fpga_ft_12mhz),
    
    .ufb_fpga_ft_rxd(ufb_fpga_ft_rxd),
    .ufb_fpga_ft_txd(1'b1),
    
    .ufb_fpga_ft_cts(ufb_fpga_ft_cts),
    .ufb_fpga_ft_rts(1'b0),
    
    .ufb_fpga_ft_dsr(ufb_fpga_ft_dsr),
    .ufb_fpga_ft_dtr(1'b0),
    
    .ufb_fpga_ft_dcd(ufb_fpga_ft_dcd),
    .ufb_fpga_ft_ri(ufb_fpga_ft_ri),
    
    
    // LCD backlight
    .fpga_lcd_bl_pwm(lcd_pwm),
    
    
    // RGB-LEDs
    .fpga_led_rgb_red(led_red),
    .fpga_led_rgb_green(led_green),
    .fpga_led_rgb_blue(led_blue),
    
    
    // Unused BV0/BV1
    .bv0(1'b0),
    .bv1()
    
    );
    
    
    
    initial 
    begin
    reset = 1'b1;
    sys_rst = 1'b1;
    
    pll_clk_p = 1'b0;
    pll_clk_n = 1'b1;
    
    mgt_clk0_p = 1'b0;
    mgt_clk0_n = 1'b1;
    
    ufb_trx_rxclk_p = 1'b0;
    ufb_trx_rxclk_n = 1'b1;
    
    ufb_trx_rxd09_p = 1'b0;
    ufb_trx_rxd09_n = 1'b1;
    
    board_rotenc_push = 1'b1;
    board_rotenc_i    = 1'b1;
    board_rotenc_q    = 1'b1;
    end


    // Reset lines
    initial
    begin
        #1000 reset = 1'b0;
    end
    
    initial
    begin
        #1000 sys_rst = 1'b0;
    end


    // Clocks
    always
    begin
        #10 pll_clk_p = !pll_clk_p;
    end
    
    always
    begin
        #10 pll_clk_n = !pll_clk_n;
    end
    
    always
    begin
        #7.8125 ufb_trx_rxclk_p = !ufb_trx_rxclk_p;
    end
    
    always
    begin
        #7.8125 ufb_trx_rxclk_n = !ufb_trx_rxclk_n;
    end
    
    
    // DDR @ 64 MHz, 32 bits --> 4 MSPS
    always
    begin
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;  // 0: key for I value following
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // I-value
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;

        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // 0: key for Q value following
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;  // Q-value
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        

        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;  // 1: key for I value following
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // I-value
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;

        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // 1: key for Q value following
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // Q-value
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;


        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;  // 2: key for I value following
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // I-value
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;

        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // 2: key for Q value following
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // Q-value
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        

        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;  // 3: key for I value following
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;  // I-value
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;

        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // 3: key for Q value following
        #7.8125 ufb_trx_rxd09_p = 1'b1;  ufb_trx_rxd09_n = 1'b0;
        
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;  // Q-value
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
        #7.8125 ufb_trx_rxd09_p = 1'b0;  ufb_trx_rxd09_n = 1'b1;
    end
    
    
    always
    begin
        #4.1667 mgt_clk0_p = !mgt_clk0_p;
    end
    
    always
    begin
        #4.167 mgt_clk0_n = !mgt_clk0_n;
    end
    
    
    always
    begin
        #1000  board_rotenc_i = !board_rotenc_i;
    end
    
    always
    begin
        #1200  board_rotenc_q = !board_rotenc_q;
    end

endmodule
