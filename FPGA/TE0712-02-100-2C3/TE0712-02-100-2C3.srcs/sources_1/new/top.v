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
    sys_rst,
    
    
    // Clocks
    pll_clk_p,           // 1.5 V    PLL          50.0 MHz
    pll_clk_n,           // 1.5 V    PLL          50.0 MHz
    
    mgt_clk0_p,          // 1.8 V    GTP         120.0 MHz
    mgt_clk0_n,          // 1.8 V    GTP         120.0 MHz
    
    // Out of order clocks
    //clk0_p,            // 1.5 V    PLL         xxx.x MHz   REV02: none
    //clk0_n,            // 1.5 V    PLL         xxx.x MHz   REV02: none
    //clk50m2,           // 1.5 V    PLL-DDR3    xxx.x MHz   REV02: none
    
    
    // FPGA Config
    //fpga_io,
    
    
    // ULI System (Trenz-Electronic CPLD)
    //uli_system,
    
    
    // SPI-QUAD
    //spi_sck,  --> managed by: STARTUPE2
    spi_cs,
    spi_dq,
    
    
    // Onewire
    //onewire,
    
    
    // PLL - I2C & Int (VTTREF)
    pll_scl,
    pll_sda,
    
    pll_int,
    
    
    // Board - I2C
    board_scl,
    board_sda,
    
    board_lcd_resetn,
    
    
    // Rotary encoder
    board_rotenc_push,
    board_rotenc_i,
    board_rotenc_q,


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
    
    init_calib_complete,
    
    
    // Ethernet
    //eth_rst,
    
    //mdc,
    //mdio,
    
    //eth_tx_d,
    
    //eth_rx_d,
    //eth_rx_dv,
    
    //link_led,
    
    
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
    ufb_fpga_ft_ri,
    
    
    // LCD backlight
    fpga_lcd_bl_pwm,
    
    
    // RGB-LEDs
    fpga_led_rgb_red,
    fpga_led_rgb_green,
    fpga_led_rgb_blue,
    
    
    // Unused BV0/BV1
    bv0,
    bv1
    
    );
    // Reset
    input  reset;
    input  sys_rst;
    
    
    // Clocks
    input  pll_clk_p;           // 1.5 V    PLL          50.0 MHz
    input  pll_clk_n;           // 1.5 V    PLL          50.0 MHz
    
    input  mgt_clk0_p;          // 1.8 V    GTP         120.0 MHz
    input  mgt_clk0_n;          // 1.8 V    GTP         120.0 MHz
    
    
    // Out of order clocks
    //input  clk0_p;              // 1.5 V    PLL         xxx.x MHz   REV02: none
    //input  clk0_n;              // 1.5 V    PLL         xxx.x MHz   REV02: none
    //input  clk50m2;             // 1.5 V    PLL-DDR3    xxx.x MHz   REV02: none
    
    
    // FPGA Config
    //inout  fpga_io;
    
    
    // ULI System (Trenz-Electronic CPLD)
    //inout  uli_system;
    
    
    // SPI-QUAD
    //inout spi_sck;    --> managed by: STARTUPE2
    inout spi_cs;
    inout [3:0]spi_dq;
    
    
    // Onewire
    //inout  onewire;
    
    
    // PLL - I2C & Int (VTTREF)
    inout  pll_scl;
    inout  pll_sda;
    
    input  pll_int;
    
    
    // Board - I2C
    inout  board_scl;
    inout  board_sda;
    
    output board_lcd_resetn;
    
    
    // Rotary encoder
    input  board_rotenc_push;
    input  board_rotenc_i;
    input  board_rotenc_q;
    

    // DDR3 Lanes 0-3
    output ddr3_clk0_p;         // 1.5 V    DDR3        xxx.x MHz
    output ddr3_clk0_n;         // 1.5 V    DDR3        xxx.x MHz
    
    output [0:0]ddr3_s;
    inout  [3:0]ddr3_dqs_p;
    inout  [3:0]ddr3_dqs_n;
    output [3:0]ddr3_dm;
    
    inout  [31:0]ddr3_d;
    
    output [14:0]ddr3_a;
    
    output [2:0]ddr3_ba;
    
    output ddr3_we;
    
    output [0:0]ddr3_odt;
    
    output ddr3_ras;
    output ddr3_cas;
    
    output [0:0]ddr3_cke;
    
    output ddr3_reset;
    
    output init_calib_complete;
    
    
    //output ddr3_loop1_p;
    //output ddr3_loop1_n;
    //input  ddr3_loop2_p;
    //input  ddr3_loop2_n;
    
    
    // Ethernet
    //output eth_rst;
    
    //output mdc;
    //inout  mdio;
    
    //output [1:0]eth_tx_d;
    
    //input  [1:0]eth_rx_d;
    //input  eth_rx_dv;
    
    //input  link_led;
    
    
    
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
    
    inout  ufb_trx_seln;
    inout  ufb_trx_sclk;
    inout  ufb_trx_mosi;
    inout  ufb_trx_miso;
    
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
    
    
    output fpga_lcd_bl_pwm;
    
    
    output fpga_led_rgb_red;
    output fpga_led_rgb_green;
    output fpga_led_rgb_blue;
    
    
    input  bv0;
    output bv1;
    
    
    
    wire mb_axi_clk_100mhz;
    wire [7:0]gpio_rtl_0_MULTI_tri_o;
    wire board_lcd_resetn;
    wire init_calib_complete;
    
    
    
    // RFX
    assign ufb_fpga_rfx_mode = 0;
    
        
    // BOARD-I2C
    assign board_lcd_resetn = gpio_rtl_0_MULTI_tri_o[6];
    
    
    // Rotary encoder
    reg board_rotenc_pulse;
    reg board_rotenc_up;
    
    reg board_rotenc_pulse_r;
    reg board_rotenc_push_r;
    reg board_rotenc_i_r;
    reg board_rotenc_i_rr;
    reg board_rotenc_q_r;
    reg board_rotenc_q_rr;

    always @ (posedge mb_axi_clk_100mhz)
    if (reset)  begin
        board_rotenc_pulse   <= 0;
        board_rotenc_pulse_r <= 0;
        board_rotenc_up      <= 0;
        board_rotenc_push_r  <= 0;
        board_rotenc_i_r     <= 0;
        board_rotenc_i_rr    <= 0;
        board_rotenc_q_r     <= 0;
        board_rotenc_q_rr    <= 0;
    end else begin
        // Sync
        board_rotenc_push_r <= !board_rotenc_push;
        board_rotenc_i_r    <= !board_rotenc_i;
        board_rotenc_q_r    <= !board_rotenc_q;
        
        if ((board_rotenc_i_r == board_rotenc_i_rr)  &&  (board_rotenc_q_r == board_rotenc_q_rr)) begin
            // No change
            board_rotenc_pulse_r <= 0;
        end else begin 
            // Change of position
            board_rotenc_pulse_r <= 1;
            
            if (( board_rotenc_i_r && !board_rotenc_i_rr && !board_rotenc_q_r && !board_rotenc_q_rr) ||
                ( board_rotenc_i_r &&  board_rotenc_i_rr &&  board_rotenc_q_r && !board_rotenc_q_rr) ||
                (!board_rotenc_i_r &&  board_rotenc_i_rr &&  board_rotenc_q_r &&  board_rotenc_q_rr) ||
                (!board_rotenc_i_r && !board_rotenc_i_rr && !board_rotenc_q_r &&  board_rotenc_q_rr)) begin
                board_rotenc_up <= 1;
            end else begin
                board_rotenc_up <= 0;
            end
        end
        
        // Update
        board_rotenc_pulse <= board_rotenc_pulse_r;
        board_rotenc_i_rr  <= board_rotenc_i_r;
        board_rotenc_q_rr  <= board_rotenc_q_r;
    end
    
    
    // FTDI
    wire ufb_fpga_ft_cts_n;
    wire ufb_fpga_ft_dsr_n;
    reg ufb_fpga_ft_cts_r;
    reg ufb_fpga_ft_dsr_r;
    
    always @ (posedge ufb_fpga_ft_12mhz)
    if (reset)  begin
        ufb_fpga_ft_cts_r <= 0;
        ufb_fpga_ft_dsr_r <= 0;
    end else begin   
        ufb_fpga_ft_cts_r <= !ufb_fpga_ft_cts_n;
        ufb_fpga_ft_dsr_r <= !ufb_fpga_ft_dsr_n;
    end
    
    assign ufb_fpga_ft_cts = ufb_fpga_ft_cts_r;
    assign ufb_fpga_ft_dsr = ufb_fpga_ft_dsr_r;
    assign ufb_fpga_ft_dcd = 1;
    assign ufb_fpga_ft_ri  = 0;
        
    
    // RGB-LED
    assign fpga_led_rgb_red   = gpio_rtl_0_MULTI_tri_o[0];
    assign fpga_led_rgb_green = gpio_rtl_0_MULTI_tri_o[1];
    assign fpga_led_rgb_blue  = init_calib_complete;
    
    
    // TRX
    assign ufb_trx_rstn = gpio_rtl_0_MULTI_tri_o[7];
    
    
    // Unused - BV0/BV1
    assign bv1 = bv0;
    
    
    // Block-Design MCU
 mcu_wrapper mcu_wrapper_i (
        .reset(reset),
        .sys_rst(sys_rst),
        
        
        .pll_clk_p(pll_clk_p),
        .pll_clk_n(pll_clk_n),
        
        
    // MB Clock (100 MHz) 
        .mb_axi_clk_100mhz(mb_axi_clk_100mhz),      //output mb_axi_clk_100mhz
        
        
    // FPGA Config
                                                    //inout  fpga_io
        
        
    // ULI System (Trenz-Electronic CPLD)
                                                    //inout  uli_system
        
        
    // SPI-QUAD
        .spi_rtl_0_CONFIG_ss_io(spi_cs),            //inout spi_cs
        .spi_rtl_0_CONFIG_io0_io(spi_dq[0]),        //inout spi_dq[0]
        .spi_rtl_0_CONFIG_io1_io(spi_dq[1]),        //inout spi_dq[1]
        .spi_rtl_0_CONFIG_io2_io(spi_dq[2]),        //inout spi_dq[2]
        .spi_rtl_0_CONFIG_io3_io(spi_dq[3]),        //inout spi_dq[3]
        
        
    // Onewire
                                                    //inout  onewire
        
        
    // PLL - I2C & Int (VTTREF)
        .iic_rtl_0_PLL_scl_io(pll_scl),             //inout  pll_scl
        .iic_rtl_0_PLL_sda_io(pll_sda),             //inout  pll_sda
        
        .PLL_int(!pll_int),                         //input  pll_int
        
        
    // Board - I2C
                                                    //output board_lcd_resetn  <--  gpio_rtl_0_MULTI_tri_o[6]
        .iic_rtl_1_BOARD_scl_io(board_scl),         //inout  board_scl
        .iic_rtl_1_BOARD_sda_io(board_sda),         //inout  board_sda
        
        
        .board_rotenc_push(board_rotenc_push_r),    //input  board_rotenc_push
        .board_rotenc_pulse(board_rotenc_pulse),    //input  board_rotenc_pulse
        .board_rotenc_up(board_rotenc_up),          //input  board_rotenc_up
        
        
    // DDR3 Lanes 0-3
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
        .DDR3_SDRAM_ras_n(ddr3_ras),
        
        .init_calib_complete(init_calib_complete),
        
        
    // Ethernet
                                                    //output eth_rst
        
                                                    //output mdc
                                                    //inout  mdio
        
                                                    //output [1:0]eth_tx_d
        
                                                    //input  [1:0]eth_rx_d
                                                    //input  eth_rx_dv
        
                                                    //input  link_led
        
        
    // UFBmod special signals
        
    // TRX LVDS lanes
        .ufb_trx_rxclk_p(ufb_trx_rxclk_p),
        .ufb_trx_rxclk_n(ufb_trx_rxclk_n),
        
        .ufb_trx_rxd09_p(ufb_trx_rxd09_p),
        .ufb_trx_rxd09_n(ufb_trx_rxd09_n),
        
        .ufb_trx_txclk_p(ufb_trx_txclk_p),
        .ufb_trx_txclk_n(ufb_trx_txclk_n),
        
        .ufb_trx_txd_p(ufb_trx_txd_p),
        .ufb_trx_txd_n(ufb_trx_txd_n),
        
        
        
        
   // TRX SPI
                                                    //output ufb_trx_rstn  <--  gpio_rtl_0_MULTI_tri_o[7]
        
        .spi_rtl_1_TRX_io0_io(ufb_trx_mosi),        //inout  ufb_trx_mosi
        .spi_rtl_1_TRX_io1_io(ufb_trx_miso),        //inout  ufb_trx_miso
        .spi_rtl_1_TRX_sck_io(ufb_trx_sclk),        //inout  ufb_trx_sclk
        .spi_rtl_1_TRX_ss_io(ufb_trx_seln),         //inout  ufb_trx_seln
        
        .TRX_int(ufb_trx_irq),                      //input  ufb_trx_irq
        
        
    // RFX
                                                    //output ufb_fpga_rfx_mode
        
        
    // FTDI serial <--> USB
        .ufb_fpga_ft_12mhz(ufb_fpga_ft_12mhz),      //output ufb_fpga_ft_12mhz
        .ufb_fpga_ft_reset(ufb_fpga_ft_reset),      //output ufb_fpga_ft_reset
        
        .uart_rtl_0_FTDI_txd(ufb_fpga_ft_rxd),      //output FTDI:ufb_fpga_ft_rxd
        .uart_rtl_0_FTDI_rxd(ufb_fpga_ft_txd),      //input  FTDI:ufb_fpga_ft_txd
        
        .uart_rtl_0_FTDI_rtsn(ufb_fpga_ft_cts_n),   //output FTDI:ufb_fpga_ft_cts
        .uart_rtl_0_FTDI_ctsn(!ufb_fpga_ft_rts),    //input  FTDI:ufb_fpga_ft_rts  
        
        .uart_rtl_0_FTDI_dtrn(ufb_fpga_ft_dsr_n),   //output FTDI:ufb_fpga_ft_dsr
        .uart_rtl_0_FTDI_dsrn(!ufb_fpga_ft_dtr),    //input  FTDI:ufb_fpga_ft_dtr
        
        .uart_rtl_0_FTDI_dcdn(1'b0),                //output FTDI:ufb_fpga_ft_dcd := 1
        .uart_rtl_0_FTDI_ri(1'b0),                  //output FTDI:ufb_fpga_ft_ri  := 0
        
        
    // LCD backlight
        .pwm0_lcd_bl(fpga_lcd_bl_pwm),              //output fpga_lcd_bl_pwm
        
        
    // GPIO
        .gpio_rtl_0_MULTI_tri_o(gpio_rtl_0_MULTI_tri_o)
        
        );

endmodule
