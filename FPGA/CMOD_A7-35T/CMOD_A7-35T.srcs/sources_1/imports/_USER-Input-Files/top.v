`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2019 15:44:31
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created 2019-03-23
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input  sysclk,
    input  [1:0] btn,

    tri0   [7:0] ja,

    input  pio1_trx_rxd24_n,
    input  pio2_trx_rxd24_p,

    tri0   pio3_fpga_12p16,
    tri0   pio4_fpga_7n35,
    tri0   pio5_fpga_11_16_p,
    tri0   pio6_fpga_3p35,

    input  pio7_rot_i,

    tri0   pio8_fpga_11_16_n,

    inout  pio9_led_r,
    inout  pio10_led_g,
    inout  pio11_led_b,

    tri0   pio12_fpga_5_35_p,

    input  pio13_rot_q,

    tri0   pio14_fpga_5_35_n,

    input [1:0] xa_p,
    input [1:0] xa_n,

    tri0   pio17_fpga_9n35,

    output pio18_trx_txclk_p,
    output pio19_trx_txclk_n,

    output pio20_fpga_trx_rstn,
    input  pio21_fpga_trx_clko,
    tri0   pio22_fpga_10p35,

    output pio23_fe09_mode,

    inout  pio26_fpga_i2c_scl,
    inout  pio27_fpga_i2c_sda,

    tri0   pio28_fpga_1_34_p,
    tri0   pio29_fpga_3_34_n,
    tri0   pio30_fpga_1_34_n,
    tri0   pio31_fpga_3_34_p,
    tri0   pio32_fpga_5_34_n,
    tri0   pio33_fpga_5_34_p,

    output pio34_trx_txd_n,
    output pio35_trx_txd_p,

    tri0   pio36_fpga_12p34,

    input  pio37_trx_rxd09_n,
    input  pio38_trx_rxd09_p,

    tri0   pio39_fpga_16_34_n,

    input  pio40_fpga_trx_irq,

    tri0   pio41_fpga_16_34_p,

    input  pio42_fpga_miso,
    output pio43_fpga_mosi,
    output pio44_fpga_seln,
    output pio45_fpga_sclk,

    tri0   pio46_fpga_13p_34,

    input  pio47_trx_rxclk_p,
    input  pio48_trx_rxclk_n,


    inout [1:0] led,
    inout ledrgb_r,
    inout ledrgb_g,
    inout ledrgb_b,

    output usb_uart_txd,
    input usb_uart_rxd,

    inout qspi_cs,
    inout [3:0] qspi_dq,

    tri1 crypto_sda,

    output [18:0] MemAdr,
    inout [7:0] MemDB,
    output RamCEn,
    output RamWEn,
    output RamOEn
    );



    // Wires
    //wire [1:0] led_tri_t;
    wire [1:0] led_tri_o;
    //wire [1:0] led_tri_i;
    wire [1:0] LedPort;

    //wire [2:0] ledrgb_tri_t;
    wire [2:0] ledrgb_tri_o;
    //wire [2:0] ledrgb_tri_i;
    wire [2:0] LedRgbPort;

    //wire [2:0] pioledrgb_tri_t;
    wire [2:0] pioledrgb_tri_o;
    //wire [2:0] pioledrgb_tri_i;
    wire [2:0] PioLedRgbPort;
    
    wire [31:0] dec_ctr;
    wire dec_up;
    wire dec_dn;


    genvar i;
    generate
        for (i = 0; i <= 1; i = i + 1) begin : led_iobuf_loop
           IOBUF #(
                .DRIVE(12),
                .IOSTANDARD("LVCMOS33"),
                .SLEW("SLOW")
            ) led_iobuf (
                //.T(led_tri_t[i]),
                //.O(led_tri_i[i]),
                .T(1'b0),
                .O(),
                .I(led_tri_o[i]),
                .IO(LedPort[i])
            );
        end 
    endgenerate

    generate
        for (i = 0; i <= 2; i = i + 1) begin : ledrgb_iobuf_loop
           IOBUF #(
                .DRIVE(12),
                .IOSTANDARD("LVCMOS33"),
                .SLEW("SLOW")
            ) ledrgb_iobuf (
                //.T( ledrgb_tri_t[i]),
                //.O( ledrgb_tri_i[i]),
                .T(1'b0),
                .O(),
                .I(!ledrgb_tri_o[i]),
                .IO(LedRgbPort[i])
            );
        end 
    endgenerate

    generate
        for (i = 0; i <= 2; i = i + 1) begin : pioledrgb_iobuf_loop
           IOBUF #(
                .DRIVE(12),
                .IOSTANDARD("LVCMOS33"),
                .SLEW("SLOW")
            ) pioledrgb_iobuf (
                //.T( pioledrgb_tri_t[i]),
                //.O( pioledrgb_tri_i[i]),
                .T(1'b0),
                .O(),
                .I(pioledrgb_tri_o[i]),
                .IO(PioLedRgbPort[i])
            );
        end 
    endgenerate
    
    assign led[0]      = LedPort[0];
    assign led[1]      = LedPort[1];
    assign ledrgb_b    = LedRgbPort[0];
    assign ledrgb_g    = LedRgbPort[1];
    assign ledrgb_r    = LedRgbPort[2];
    assign pio9_led_r  = PioLedRgbPort[0];
    assign pio10_led_g = PioLedRgbPort[1];
    assign pio11_led_b = PioLedRgbPort[2];


    /* Clock */
    wire clk_100mhz;


    /* QSPI Flash */
    wire flash_ss_t;
    wire flash_ss_o;
    wire flash_ss_i;
    wire flash_io0_t;
    wire flash_io0_o;
    wire flash_io0_i;
    wire flash_io1_t;
    wire flash_io1_o;
    wire flash_io1_i;
    wire flash_io2_t;
    wire flash_io2_o;
    wire flash_io2_i;
    wire flash_io3_t;
    wire flash_io3_o;
    wire flash_io3_i;

    IOBUF #(
        .DRIVE(12),
        .IOSTANDARD("LVCMOS33"),
        .SLEW("FAST")
    ) flash_ss_iobuf (
        .I(flash_ss_o),
        .O(flash_ss_i),
        .T(flash_ss_t),
        .IO(qspi_cs)
    );

    IOBUF #(
        .DRIVE(12),
        .IOSTANDARD("LVCMOS33"),
        .SLEW("FAST")
    ) flash_io_iobuf_0 (
        .I(flash_io0_o),
        .O(flash_io0_i),
        .T(flash_io0_t),
        .IO(qspi_dq[0])
    );

    IOBUF #(
        .DRIVE(12),
        .IOSTANDARD("LVCMOS33"),
        .SLEW("FAST")
    ) flash_io_iobuf_1 (
        .I(flash_io1_o),
        .O(flash_io1_i),
        .T(flash_io1_t),
        .IO(qspi_dq[1])
    );

    IOBUF #(
        .DRIVE(12),
        .IOSTANDARD("LVCMOS33"),
        .SLEW("FAST")
    ) flash_io_iobuf_2 (
        .I(flash_io2_o),
        .O(flash_io2_i),
        .T(flash_io2_t),
        .IO(qspi_dq[2])
    );

    IOBUF #(
        .DRIVE(12),
        .IOSTANDARD("LVCMOS33"),
        .SLEW("FAST")
    ) flash_io_iobuf_3 (
        .I(flash_io3_o),
        .O(flash_io3_i),
        .T(flash_io3_t),
        .IO(qspi_dq[3])
    );


    /* RAM inout Data drivers */
    wire [7:0] mem_i;
    wire [7:0] mem_o;
    wire [7:0] mem_t;

    generate
        for (i = 0; i <= 7; i = i + 1) begin : ram_d_iobuf_loop
           IOBUF #(
                .DRIVE(12),
                .IOSTANDARD("LVCMOS33"),
                .SLEW("FAST")
            ) ram_d_iobuf (
                .I(mem_o[i]),
                .O(mem_i[i]),
                .T(mem_t[i]),
                .IO(MemDB[i])
            );
        end 
    endgenerate


    /* AXI Block Design */
    AXI_bd_0 top_axi(
        .AXI_bd_sys_clock(sysclk),
        .AXI_bd_clk_100mhz_out(clk_100mhz),

        .AXI_bd_btn0(btn[0]),
        .AXI_bd_btn1(btn[1]),

        //.AXI_bd_gpio_led_tri_t(led_tri_t),
        .AXI_bd_gpio_led_tri_o(led_tri_o),
        //.AXI_bd_gpio_led_tri_i(led_tri_i),

        //.AXI_bd_gpio_ledrgb_tri_t(ledrgb_tri_t),
        .AXI_bd_gpio_ledrgb_tri_o(ledrgb_tri_o),
        //.AXI_bd_gpio_ledrgb_tri_i(ledrgb_tri_i),

        //.AXI_bd_gpio_pioledrgb_tri_t(pioledrgb_tri_t),
        .AXI_bd_gpio_pioledrgb_tri_o(pioledrgb_tri_o),
        //.AXI_bd_gpio_pioledrgb_tri_i(pioledrgb_tri_i),

        .AXI_bd_usb_uart_UART_txd(usb_uart_txd),
        .AXI_bd_usb_uart_UART_rxd(usb_uart_rxd),

        .AXI_bd_Vaux4_v_p(xa_p[0]),
        .AXI_bd_Vaux4_v_n(xa_n[0]),
        .AXI_bd_Vaux12_v_p(xa_p[1]),
        .AXI_bd_Vaux12_v_n(xa_n[1]),

        .qspi_flash_ss_t(flash_ss_t),
        .qspi_flash_ss_o(flash_ss_o),
        .qspi_flash_ss_i(flash_ss_i),
        .qspi_flash_io0_t(flash_io0_t),
        .qspi_flash_io0_o(flash_io0_o),
        .qspi_flash_io0_i(flash_io0_i),
        .qspi_flash_io1_t(flash_io1_t),
        .qspi_flash_io1_o(flash_io1_o),
        .qspi_flash_io1_i(flash_io1_i),
        .qspi_flash_io2_t(flash_io2_t),
        .qspi_flash_io2_o(flash_io2_o),
        .qspi_flash_io2_i(flash_io2_i),
        .qspi_flash_io3_t(flash_io3_t),
        .qspi_flash_io3_o(flash_io3_o),
        .qspi_flash_io3_i(flash_io3_i),

        .cellular_ram_addr(MemAdr),
        .cellular_ram_dq_t( { mem_t } ),
        .cellular_ram_dq_o( { mem_o } ),
        .cellular_ram_dq_i( { mem_i } ),
        .cellular_ram_ce_n(RamCEn),
        .cellular_ram_wen(RamWEn),
        .cellular_ram_oen(RamOEn)
    );
    
    
    /* I/Q decoder with counter */
    iq_decoder iq_dec (
        .clk(clk_100mhz),
        .reset(btn[0]),
        .dec_i(pio7_rot_i),
        .dec_q(pio13_rot_q),
        .ctr(dec_ctr),
        .dir_up(dec_up),
        .dir_dn(dec_dn)
    );
    
    
    
    /* PMOD interface */
    assign ja = 8'bZ;


    /* PIOs interface */
    //assign pio1_trx_rxd24_n  = 1'bZ;
    //assign pio2_trx_rxd24_p  = 1'bZ;
    assign pio3_fpga_12p16  = 1'bZ;
    assign pio4_fpga_7n35  = 1'bZ;
    assign pio5_fpga_11_16_p  = 1'bZ;
    assign pio6_fpga_3p35  = 1'bZ;
    //assign pio7_rot_i  = 1'bZ;
    assign pio8_fpga_11_16_n  = 1'bZ;
    assign pio9_led_r  = 1'b0;
    assign pio10_led_g = 1'b0;
    assign pio11_led_b = 1'b0;
    assign pio12_fpga_5_35_p = 1'bZ;
    //assign pio13_rot_q = 1'bZ;
    assign pio14_fpga_5_35_n = 1'bZ;

    assign pio17_fpga_9n35 = 1'bZ;
    assign pio18_trx_txclk_p = 1'b0;
    assign pio19_trx_txclk_n = 1'b0;
    assign pio20_fpga_trx_rstn = 1'b0;
    //assign pio21_fpga_trx_clko = 1'bZ;
    assign pio22_fpga_10p35 = 1'bZ;
    assign pio23_fe09_mode = 1'b0;

    assign pio26_fpga_i2c_scl = 1'bZ;
    assign pio27_fpga_i2c_sda = 1'bZ;
    assign pio28_fpga_1_34_p = 1'bZ;
    assign pio29_fpga_3_34_n = 1'bZ;
    assign pio30_fpga_1_34_n = 1'bZ;
    assign pio31_fpga_3_34_p = 1'bZ;
    assign pio32_fpga_5_34_n = 1'bZ;
    assign pio33_fpga_5_34_p = 1'bZ;
    assign pio34_trx_txd_n = 1'b0;
    assign pio35_trx_txd_p = 1'b0;
    assign pio36_fpga_12p34 = 1'bZ;
    //assign pio37_trx_rxd09_n = 1'bZ;
    //assign pio38_trx_rxd09_p = 1'bZ;
    assign pio39_fpga_16_34_n = 1'bZ;
    //assign pio40_fpga_trx_irq = 1'bZ;
    assign pio41_fpga_16_34_p = 1'bZ;
    //assign pio42_fpga_miso = 1'bZ;
    assign pio43_fpga_mosi = 1'b0;
    assign pio44_fpga_seln = 1'b1;
    assign pio45_fpga_sclk = 1'b0;
    assign pio46_fpga_13p_34 = 1'bZ;
    //assign pio47_trx_rxclk_p = 1'bZ;
    //assign pio48_trx_rxclk_n = 1'bZ;


    assign crypto_sda = 1'bZ;

endmodule
