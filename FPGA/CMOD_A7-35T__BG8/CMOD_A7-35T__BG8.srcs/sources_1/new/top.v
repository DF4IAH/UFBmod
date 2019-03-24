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

    tri [1:0] xa_p,
    tri [1:0] xa_n,

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

    input uart_txd_in,
    output uart_rxd_out,

    output qspi_cs,
    tri0 [3:0] qspi_dq,

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
    wire clk_48mhz;

    /* Counter output */
    wire [25:0] q_48mhz;



    /* AXI Block Design */
    AXI_bd_0 top_axi(
        .sys_clock(sysclk),
        .reset(btn[0]),
        .AXI_bd_clk_48mhz(clk_48mhz),

        .Vaux4_0(  { xa_p[0], xa_n[0] } ),
        .Vaux12_0( { xa_p[1], xa_n[1] } ),

        .cellular_ram(),
        .qspi_flash(),
        .usb_uart()
    );


    /* 48 MHz - 1 sec counter */
    c_counter_binary_0 ctr48mhz(
        .CLK(clk_48mhz),

        .Q(q_48mhz)
    );


    /* led[1:0] <-- btn[1] */
    assign led[0] = !btn[1];
    assign led[1] =  btn[1] & !q_48mhz[0];

    /* ledrgb_X <-- counter(clk_48mhz) */
    assign ledrgb_r = q_48mhz[25] & q_48mhz[0];
    assign ledrgb_g = q_48mhz[24] & q_48mhz[0];
    assign ledrgb_b = q_48mhz[23] & q_48mhz[0];


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


    /* QSPI FLASH */
    //assign qspi_cs = 1;
    //assign qspi_dq = 4'bZ;


    /* RAM */
    //assign RamCEn = 1;
    //assign RamOEn = 1;
    //assign RamWEn = 1;
    //assign MemAdr = 19'b0;
    //assign MemDB = 8'bZ;

endmodule
