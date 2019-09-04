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
    pll_clk_p,              // 1.5 V    PLL          50.0 MHz
    pll_clk_n,              // 1.5 V    PLL          50.0 MHz
    
    mgt_clk0_p,             // 1.8 V    GTP         120.0 MHz
    mgt_clk0_n,             // 1.8 V    GTP         120.0 MHz
    
    trx_clk_26mhz,          // 3.3V     TCXO/TRX     26.0 MHz
    
    // Out of order clocks
    //clk0_p,               // 1.5 V    PLL         xxx.x MHz   REV02: none
    //clk0_n,               // 1.5 V    PLL         xxx.x MHz   REV02: none
    //clk50m2,              // 1.5 V    PLL-DDR3    xxx.x MHz   REV02: none
    
    
    // FPGA Config
    fpga_io,
    
    // ULI System (Trenz-Electronic CPLD)
    uli_system,
    
    
    // SPI-QUAD
    //spi_sck,  --> managed by: STARTUPE2
    spi_cs,
    spi_dq,
    
    
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
    ddr3_reset,
    ddr3_cke,

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
    
    
    //ddr3_loop1_p,
    //ddr3_loop1_n,
    //ddr3_loop2_p,
    //ddr3_loop2_n,
    
    
    ddr3_init_calib_complete,
    
    
    // Ethernet
    eth_rst,
    
    mdc,
    mdio,
    
    eth_tx_en,
    eth_tx_d,
    
    eth_rx_d,
    eth_rx_dv,
    
    link_led,
    
    // Ethernet LEDs
    fpga_eth_da_g,
    fpga_eth_da_y,
    
    // Onewire
    onewire,
    
    
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
    ufb_fpga_ft_resetn,
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
    input  pll_clk_p;               // 1.5 V    PLL          50.0 MHz
    input  pll_clk_n;               // 1.5 V    PLL          50.0 MHz
    
    input  mgt_clk0_p;              // 1.8 V    GTP         120.0 MHz
    input  mgt_clk0_n;              // 1.8 V    GTP         120.0 MHz
    
    input  trx_clk_26mhz;           // 3.3V     TCXO/TRX     26.0 MHz
    
    
    // Out of order clocks
    //input  clk0_p;                // 1.5 V    PLL         xxx.x MHz   REV02: none
    //input  clk0_n;                // 1.5 V    PLL         xxx.x MHz   REV02: none
    //input  clk50m2;               // 1.5 V    PLL-DDR3    xxx.x MHz   REV02: none
    
    
    // FPGA Config
    //inout  fpga_io;
    output fpga_io;
    
    
    // ULI System (Trenz-Electronic CPLD)
    //inout  uli_system;
    output uli_system;
    
    
    // SPI-QUAD
    //inout spi_sck;    --> managed by: STARTUPE2
    inout spi_cs;
    inout [3:0]spi_dq;
    
    
    // Onewire
    inout  onewire;
    
    
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
    
    output ddr3_init_calib_complete;
    
    
    //output ddr3_loop1_p;
    //output ddr3_loop1_n;
    //input  ddr3_loop2_p;
    //input  ddr3_loop2_n;
    
    
    // Ethernet
    
    output eth_rst;
    
    output mdc;
    inout  mdio;
    
    output eth_tx_en;
    output [1:0]eth_tx_d;
    
    input  [1:0]eth_rx_d;
    input  eth_rx_dv;
    
    input  link_led;
    
    output fpga_eth_da_g;
    output fpga_eth_da_y;
    
    
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
    output ufb_fpga_ft_resetn;
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
    
    
    
    // Wires
    
    wire board_lcd_resetn_obuf;
    wire clk_wiz_0_locked;
    wire clk_trx_050mhz000;
//    wire clk_wiz_1_177mhz778;
//    wire clk_wiz_1_050mhz000;
//    wire clk_wiz_1_025mhz000;
//    wire clk_wiz_1_012mhz000;
//    wire clk_wiz_1_input_clk_stopped;
//    wire clk_wiz_1_locked;
    wire ddr3_init_calib_complete_obuf;
    wire [3:0]dmr_1_onewire_a_in;
    wire [31:0]dmr_1_onewire_d_in;
    wire dmr_1_onewire_we_in;
    wire fpga_io_obuf;
    wire fpga_led_rgb_red_obuf;
    wire fpga_led_rgb_green_obuf;
    wire fpga_led_rgb_blue_obuf;
    wire [7:0]gpio_rtl_0_multi_tri_o;
    wire [31:0]gpio_rtl_1_onewire_gpio_in;
    wire [31:0]gpio_rtl_1_onewire_gpio_out;
    wire mb_axi_clk_083mhz333;
    wire peripheral_reset;
    wire pll_clk_g;
    wire pwm0_lcd_bl_obuf;
    wire reset_ibuf;
    wire trx_clk_026mhz000_g;
    wire trx_clk_026mhz000_ig;
    wire ufb_fpga_ft_12mhz_obuf;
    wire ufb_fpga_ft_resetn_obuf;
    wire ufb_trx_rstn_obuf;
    wire uli_system_obuf;
    
    
    
    // IBUFs
    IBUF reset_ibuf_inst (
        .I(reset),
        .O(reset_ibuf)
    );
    
    IBUFGDS pll_clk_ibufgds_inst (
        .I(pll_clk_p),
        .IB(pll_clk_n),
        .O(pll_clk_g)
    );
    
    IBUF trx_clk_026mhz000_ibuf_inst (
        .I(trx_clk_26mhz),
        .O(trx_clk_026mhz000_ig)
    );
    
    BUFG trx_clk_026mhz000_bufg_inst (
        .I(trx_clk_026mhz000_ig),
        .O(trx_clk_026mhz000_g)
    );
    
    
    
    // OBUFs
    OBUF board_lcd_resetn_obuf_inst (
        .I(board_lcd_resetn_obuf),
        .O(board_lcd_resetn)
    );
    
    OBUF ddr3_init_calib_complete_obuf_inst (
        .I(ddr3_init_calib_complete_obuf),
        .O(ddr3_init_calib_complete)
    );
    
    OBUF pwm0_lcd_bl_obuf_inst (
        .I(pwm0_lcd_bl_obuf),
        .O(fpga_lcd_bl_pwm)
    );
    
    OBUF ufb_fpga_ft_12mhz_obuf_inst (
        .I(ufb_fpga_ft_12mhz_obuf),
        .O(ufb_fpga_ft_12mhz)
    );
    
    OBUF ufb_fpga_ft_resetn_obuf_inst (
        .I(ufb_fpga_ft_resetn_obuf),
        .O(ufb_fpga_ft_resetn)
    );
    
    OBUF ufb_trx_rstn_obuf_inst (
        .I(ufb_trx_rstn_obuf),
        .O(ufb_trx_rstn)
    );
    
    OBUF fpga_led_rgb_red_obuf_inst (
        .I(fpga_led_rgb_red_obuf),
        .O(fpga_led_rgb_red)
    );
    
    OBUF fpga_led_rgb_green_obuf_inst (
        .I(fpga_led_rgb_green_obuf),
        .O(fpga_led_rgb_green)
    );
    
    OBUF fpga_led_rgb_blue_obuf_inst (
        .I(fpga_led_rgb_blue_obuf),
        .O(fpga_led_rgb_blue)
    );
    
    OBUF fpga_io_obuf_inst (
        .I(fpga_io_obuf),
        .O(fpga_io)
    );
    
    OBUF uli_system_obuf_inst (
        .I(uli_system_obuf),
        .O(uli_system)
    );
    
    
    
//    // CLOCK WIZ 0 - 26 MHz --> 50 MHz
//    clk_wiz_0   clk_wiz_0_inst(
//        // Clock out ports  
//        .clk_trx_050mhz000(clk_trx_050mhz000),
//        
//        // Status and control signals               
//        .reset(reset_ibuf),          
//        .clk_wiz_0_locked(clk_wiz_0_locked),
//        
//        // Clock in ports
//        .trx_026mhz000(trx_clk_026mhz000_g)
//    );


//    // CLOCK WIZ 1 - 50 MHz (Si5338-PLL / TRX-VCTCXO)
//    clk_wiz_1   clk_wiz_1_inst(
//        // Clock out ports  
//        .clk_wiz_1_177mhz778(clk_wiz_1_177mhz778),
//        .clk_wiz_1_050mhz000(clk_wiz_1_050mhz000),
//        .clk_wiz_1_025mhz000(clk_wiz_1_025mhz000),
//        .clk_wiz_1_012mhz000(clk_wiz_1_012mhz000),
//        
//        // Status and control signals               
//        .reset(reset_ibuf),
//        .clk_wiz_1_locked(clk_wiz_1_locked),
//        
//        // Clock in ports
//        .clk_in1_si5338(pll_clk_g),
//        .clk_in2_vctcxo(clk_wiz_0_050mhz000),
//        .clk_in_sel(!clk_wiz_0_locked)
//    );
    
    
    
    // RFX
    assign ufb_fpga_rfx_mode = 0;
    
    
    // BOARD-I2C
    assign board_lcd_resetn_obuf = !gpio_rtl_0_multi_tri_o[6];
    
    
    
    // Rotary encoder
    
    reg board_rotenc_pulse;
    reg board_rotenc_up;
    
    reg board_rotenc_pulse_r;
    reg board_rotenc_push_r;
    reg board_rotenc_i_r;
    reg board_rotenc_i_rr;
    reg board_rotenc_q_r;
    reg board_rotenc_q_rr;

    always @ (posedge mb_axi_clk_083mhz333)
    if (peripheral_reset)  begin
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
    
    
    // Ethernet / ONEWIRE
    wire [14:0]gpio_rtl_1_onewire_addr_out;
    wire [ 7:0]gpio_rtl_2_onewire_data_in;
    wire [15:0]gpio_rtl_2_onewire_data_out;
    wire ow_stb_i;
    wire ow_wr_i;
    
    onewire onewire_i(
        .rst_i(peripheral_reset),
        .clk_i(mb_axi_clk_083mhz333),
  
        .onewire_io(onewire),

        .dmr_1_onewire_a_in(dmr_1_onewire_a_in),
        .dmr_1_onewire_d_in(dmr_1_onewire_d_in),
        .dmr_1_onewire_we_in(dmr_1_onewire_we_in),

        .gpio_rtl_1_onewire_gpio_out(gpio_rtl_1_onewire_gpio_out),
        .gpio_rtl_1_onewire_gpio_in(gpio_rtl_1_onewire_gpio_in)
    );
    
    assign eth_rst          = !peripheral_reset;    // eth_rst is low active
    assign fpga_eth_da_g    = link_led & !eth_rx_dv & !eth_tx_en;
    assign fpga_eth_da_y    = link_led;             // always 100 MBit when link active
    
    
    // FTDI
    wire ufb_fpga_ft_cts_n;
    wire ufb_fpga_ft_dsr_n;
    reg  ufb_fpga_ft_cts_r;
    reg  ufb_fpga_ft_dsr_r;
    
    always @ (posedge ufb_fpga_ft_12mhz_obuf)
    if (peripheral_reset)  begin
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
    assign fpga_led_rgb_red_obuf   = gpio_rtl_0_multi_tri_o[0];
    assign fpga_led_rgb_green_obuf = gpio_rtl_0_multi_tri_o[1];
    assign fpga_led_rgb_blue_obuf  = gpio_rtl_0_multi_tri_o[2];
    
    
    // CPLD LEDs
    assign fpga_io_obuf      = !ddr3_init_calib_complete_obuf;   // CPLD red
    assign uli_system_obuf   =  ddr3_init_calib_complete_obuf;   // CPLD green
    
    
    // TRX
    assign ufb_trx_rstn_obuf = !gpio_rtl_0_multi_tri_o[7];
    
    
    // Unused - BV0/BV1
    assign bv1 = bv0;
    
    
    // Block-Design MCU
 mcu_wrapper mcu_wrapper_i (
        .reset(reset_ibuf),
        .sys_rst(sys_rst),
        
        .peripheral_reset(peripheral_reset),
        
        
    // Clocks in
        .pll_clk_g(pll_clk_g),
        .trx_clk_026mhz000_g(trx_clk_026mhz000_g),
        
    // MB Clock (83.333 MHz) 
        .mb_axi_clk_083mhz333(mb_axi_clk_083mhz333),
        
        
    // FPGA Config
                                                        //inout  fpga_io
        
        
    // ULI System (Trenz-Electronic CPLD)
                                                        //inout  uli_system
        
        
    // SPI-QUAD
        .spi_rtl_0_config_ss_io(spi_cs),
        .spi_rtl_0_config_io0_io(spi_dq[0]),
        .spi_rtl_0_config_io1_io(spi_dq[1]),
        .spi_rtl_0_config_io2_io(spi_dq[2]),
        .spi_rtl_0_config_io3_io(spi_dq[3]),
        
        
    // PLL - I2C & Int (VTTREF)
        .iic_rtl_0_pll_scl_io(pll_scl),
        .iic_rtl_0_pll_sda_io(pll_sda),
        
        .pll_int(!pll_int),
        
        
    // Board - I2C
                                                        //output board_lcd_resetn  <--  !gpio_rtl_0_multi_tri_o[6]
        .iic_rtl_1_board_scl_io(board_scl),
        .iic_rtl_1_board_sda_io(board_sda),
        
        
    // Rotary encoder
        .board_rotenc_push(board_rotenc_push_r),
        .board_rotenc_pulse(board_rotenc_pulse),
        .board_rotenc_up(board_rotenc_up),
        
        
    // DDR3 Lanes 0-3
        .ddr3_sdram_reset_n(ddr3_reset),
        .ddr3_sdram_cke(ddr3_cke),
        .ddr3_sdram_ck_p(ddr3_clk0_p),
        .ddr3_sdram_ck_n(ddr3_clk0_n),
        
        .ddr3_sdram_cs_n(ddr3_s),
        .ddr3_sdram_we_n(ddr3_we),
        .ddr3_sdram_odt(ddr3_odt),
        
        .ddr3_sdram_dqs_p(ddr3_dqs_p),
        .ddr3_sdram_dqs_n(ddr3_dqs_n),
        .ddr3_sdram_dm(ddr3_dm),
        .ddr3_sdram_dq(ddr3_d),
        
        .ddr3_sdram_ba(ddr3_ba),
        .ddr3_sdram_addr(ddr3_a),
        
        .ddr3_sdram_cas_n(ddr3_cas),
        .ddr3_sdram_ras_n(ddr3_ras),
        
        .ddr3_init_calib_complete_obuf(ddr3_init_calib_complete_obuf),
        
        
    // Ethernet
                                                        //output eth_rst

        .mdio_rtl_0_ethernet_mdc(mdc),                  //output mdc
        .mdio_rtl_0_ethernet_mdio_io(mdio),             //inout  mdio
        
        .rmii_rtl_0_ethernet_tx_en(eth_tx_en),          //output eth_tx_en
        .rmii_rtl_0_ethernet_txd(eth_tx_d),             //output [1:0]eth_tx_d

        .rmii_rtl_0_ethernet_crs_dv(eth_rx_dv),         //input  eth_rx_dv
        .rmii_rtl_0_ethernet_rxd(eth_rx_d),             //input  [1:0]eth_rx_d
        .rmii_rtl_0_ethernet_rx_er(1'b0),               //input
       
                                                        //input  link_led
        
        
    // Onewire
        .dmr_1_onewire_a_in(dmr_1_onewire_a_in),
        .dmr_1_onewire_d_in(dmr_1_onewire_d_in),
        .dmr_1_onewire_we_in(dmr_1_onewire_we_in),
        
        .gpio_rtl_1_onewire_gpio_in_tri_i(gpio_rtl_1_onewire_gpio_in),
        .gpio_rtl_1_onewire_gpio_out_tri_o(gpio_rtl_1_onewire_gpio_out),
        
        
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
                                                        //output ufb_trx_rstn  <--  !gpio_rtl_0_multi_tri_o[7]
        
        .spi_rtl_1_trx_io0_io(ufb_trx_mosi),
        .spi_rtl_1_trx_io1_io(ufb_trx_miso),
        .spi_rtl_1_trx_sck_io(ufb_trx_sclk),
        .spi_rtl_1_trx_ss_io(ufb_trx_seln),
        
        .trx_int(ufb_trx_irq),
        
        .uart_rtl_0_ftdi_baudoutn(),
        .uart_rtl_0_ftdi_ddis(),
        .uart_rtl_0_ftdi_out1n(),
        .uart_rtl_0_ftdi_out2n(),
        .uart_rtl_0_ftdi_rxrdyn(),
        .uart_rtl_0_ftdi_txrdyn(),
        
        
    // RFX
                                                        //output ufb_fpga_rfx_mode
        
        
    // FTDI serial <--> USB
        .ufb_fpga_ft_12mhz_obuf(ufb_fpga_ft_12mhz_obuf),
        .ufb_fpga_ft_resetn_obuf(ufb_fpga_ft_resetn_obuf),

        .uart_rtl_0_ftdi_txd(ufb_fpga_ft_rxd),
        .uart_rtl_0_ftdi_rxd(ufb_fpga_ft_txd),
        
        .uart_rtl_0_ftdi_rtsn(ufb_fpga_ft_cts_n),
        .uart_rtl_0_ftdi_ctsn(!ufb_fpga_ft_rts),
        
        .uart_rtl_0_ftdi_dtrn(ufb_fpga_ft_dsr_n),
        .uart_rtl_0_ftdi_dsrn(!ufb_fpga_ft_dtr),
        
        .uart_rtl_0_ftdi_dcdn(1'b0),
        .uart_rtl_0_ftdi_ri(1'b0),
        
        
    // LCD backlight
        .pwm0_lcd_bl_obuf(pwm0_lcd_bl_obuf),
        
        
    // GPIO
        .gpio_rtl_0_multi_tri_o(gpio_rtl_0_multi_tri_o),
        
        
    // FSM
        .FSM_LVDS_clk_064mhz000(),
        .FSM_LVDS_in_sample_clken(),
        .FSM_LVDS_in_FFT_0_FrameStarted(),
        .FSM_LVDS_in_FFT_0_pntIdx(),
        .FSM_LVDS_in_CORDIC_0_M_AXIS_tlast(),
        .FSM_LVDS_in_CORDIC_0_M_AXIS_tvalid(),
        .FSM_LVDS_in_CORDIC_0_M_AXIS_tdata(),
        .FSM_LVDS_in_CORDIC_0_M_AXIS_tuser()
        
        );

endmodule
