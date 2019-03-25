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
    input sysclk,
    input [1:0] btn,

    tri0 [7:0] ja,

    tri0 pio1,
    tri0 pio2,
    tri0 pio3,
    tri0 pio4,
    tri0 pio5,
    tri0 pio6,
    tri0 pio7,
    tri0 pio8,
    tri0 pio9,
    tri0 pio10,
    tri0 pio11,
    tri0 pio12,
    tri0 pio13,
    tri0 pio14,

    input [1:0] xa_p,
    input [1:0] xa_n,

    tri0 pio17,
    tri0 pio18,
    tri0 pio19,
    tri0 pio20,
    tri0 pio21,
    tri0 pio22,
    tri0 pio23,

    tri0 pio26,
    tri0 pio27,
    tri0 pio28,
    tri0 pio29,
    tri0 pio30,
    tri0 pio31,
    tri0 pio32,
    tri0 pio33,
    tri0 pio34,
    tri0 pio35,
    tri0 pio36,
    tri0 pio37,
    tri0 pio38,
    tri0 pio39,
    tri0 pio40,
    tri0 pio41,
    tri0 pio42,
    tri0 pio43,
    tri0 pio44,
    tri0 pio45,
    tri0 pio46,
    tri0 pio47,
    tri0 pio48,

    output [1:0] led,
    output ledrgb_r,
    output ledrgb_g,
    output ledrgb_b,

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



    /* Defined in the module interface */
    //wire sysclk;
    //wire btn;
    //wire led;
    //wire ledrgb_r;
    //wire ledrgb_g;
    //wire ledrgb_b;


    /* Clock */
    wire clk_100mhz;

    /* Counter output */
    wire [25:0] q_100mhz;



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

    genvar i2;
    generate
        for (i2 = 0; i2 <= 7; i2 = i2 + 1) begin : ram_d_iobuf_loop
           IOBUF #(
                .DRIVE(12),
                .IOSTANDARD("LVCMOS33"),
                .SLEW("FAST")
            ) ram_d_iobuf (
                .I(mem_o[i2]),
                .O(mem_i[i2]),
                .T(mem_t[i2]),
                .IO(MemDB[i2])
            );
        end 
    endgenerate


    /* AXI Block Design */
    AXI_bd_0 top_axi(
        .AXI_bd_sys_clock(sysclk),
        .AXI_bd_reset(btn[0]),
        .AXI_bd_clk_100mhz_out(clk_100mhz),

        .AXI_bd_In0(btn[1]),

        .AXI_bd_usb_uart_UART_txd(usb_uart_txd),
        .AXI_bd_usb_uart_UART_rxd(usb_uart_rxd),

        .AXI_bd_Vaux4_v_p(xa_p[0]),
        .AXI_bd_Vaux4_v_n(xa_n[0]),
        .AXI_bd_Vaux12_v_p(xa_p[1]),
        .AXI_bd_Vaux12_v_n(xa_n[1]),

        .AXI_bd_qspi_flash_SPI_0_ss_t(flash_ss_t),
        .AXI_bd_qspi_flash_SPI_0_ss_o(flash_ss_o),
        .AXI_bd_qspi_flash_SPI_0_ss_i(flash_ss_i),
        .AXI_bd_qspi_flash_SPI_0_io0_t(flash_io0_t),
        .AXI_bd_qspi_flash_SPI_0_io0_o(flash_io0_o),
        .AXI_bd_qspi_flash_SPI_0_io0_i(flash_io0_i),
        .AXI_bd_qspi_flash_SPI_0_io1_t(flash_io1_t),
        .AXI_bd_qspi_flash_SPI_0_io1_o(flash_io1_o),
        .AXI_bd_qspi_flash_SPI_0_io1_i(flash_io1_i),
        .AXI_bd_qspi_flash_SPI_0_io2_t(flash_io2_t),
        .AXI_bd_qspi_flash_SPI_0_io2_o(flash_io2_o),
        .AXI_bd_qspi_flash_SPI_0_io2_i(flash_io2_i),
        .AXI_bd_qspi_flash_SPI_0_io3_t(flash_io3_t),
        .AXI_bd_qspi_flash_SPI_0_io3_o(flash_io3_o),
        .AXI_bd_qspi_flash_SPI_0_io3_i(flash_io3_i),

        .AXI_bd_cellular_ram_EMC_INTF_addr(MemAdr),
        .AXI_bd_cellular_ram_EMC_INTF_dq_t( { mem_t } ),
        .AXI_bd_cellular_ram_EMC_INTF_dq_o( { mem_o } ),
        .AXI_bd_cellular_ram_EMC_INTF_dq_i( { mem_i } ),
        .AXI_bd_cellular_ram_EMC_INTF_ce_n(RamCEn),
        .AXI_bd_cellular_ram_EMC_INTF_wen(RamWEn),
        .AXI_bd_cellular_ram_EMC_INTF_oen(RamOEn)
    );



    /* 100 MHz - 1 sec counter */
    c_counter_binary_0 ctr100mhz(
        .CLK(clk_100mhz),
        .SCLR(btn[0]),

        .Q(q_100mhz)
    );


    /* led[1:0] <-- btn[1] */
    assign led[0] = !btn[0] &  !btn[1];
    assign led[1] = !btn[0] &   btn[1];

    /* ledrgb_X <-- counter(clk_48mhz) */
    assign ledrgb_r = q_100mhz[25] & q_100mhz[1] & q_100mhz[0];
    assign ledrgb_g = q_100mhz[24] & q_100mhz[1] & q_100mhz[0];
    assign ledrgb_b = q_100mhz[23] & q_100mhz[1] & q_100mhz[0];


    /* PMOD interface */
    assign ja = 8'bZ;


    /* PIOs interface */
    assign pio1  = 1'bZ;
    assign pio2  = 1'bZ;
    assign pio3  = 1'bZ;
    assign pio4  = 1'bZ;
    assign pio5  = 1'bZ;
    assign pio6  = 1'bZ;
    assign pio7  = 1'bZ;
    assign pio8  = 1'bZ;
    assign pio9  = 1'bZ;
    assign pio10 = 1'bZ;
    assign pio11 = 1'bZ;
    assign pio12 = 1'bZ;
    assign pio13 = 1'bZ;
    assign pio14 = 1'bZ;

    assign pio17 = 1'bZ;
    assign pio18 = 1'bZ;
    assign pio19 = 1'bZ;
    assign pio20 = 1'bZ;
    assign pio21 = 1'bZ;
    assign pio22 = 1'bZ;
    assign pio23 = 1'bZ;

    assign pio26 = 1'bZ;
    assign pio27 = 1'bZ;
    assign pio28 = 1'bZ;
    assign pio29 = 1'bZ;
    assign pio30 = 1'bZ;
    assign pio31 = 1'bZ;
    assign pio32 = 1'bZ;
    assign pio33 = 1'bZ;
    assign pio34 = 1'bZ;
    assign pio35 = 1'bZ;
    assign pio36 = 1'bZ;
    assign pio37 = 1'bZ;
    assign pio38 = 1'bZ;
    assign pio39 = 1'bZ;
    assign pio40 = 1'bZ;
    assign pio41 = 1'bZ;
    assign pio42 = 1'bZ;
    assign pio43 = 1'bZ;
    assign pio44 = 1'bZ;
    assign pio45 = 1'bZ;
    assign pio46 = 1'bZ;
    assign pio47 = 1'bZ;
    assign pio48 = 1'bZ;

    assign crypto_sda = 1'bZ;

endmodule
