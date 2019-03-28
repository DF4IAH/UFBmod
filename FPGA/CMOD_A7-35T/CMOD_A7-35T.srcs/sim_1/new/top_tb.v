`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2019 18:25:35
// Design Name: 
// Module Name: top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_tb();
    reg dut_sysclk;
    reg [1:0] dut_btn;

    wire [1:0] dut_led;
    wire dut_ledrgb_r;
    wire dut_ledrgb_g;
    wire dut_ledrgb_b;

    wire dut_txd;
    reg  dut_rxd;

    wire dut_qspi_cs;
    wire [3:0] dut_qspi_dq;

    wire [18 : 0] dut_mem_addr;
    wire [ 7 : 0] dut_mem_db;
    wire dut_mem_cen;
    wire dut_mem_wen;
    wire dut_mem_oen;

    wire dut_pll_i;
    wire dut_pll_q;


    parameter offset = 50;
    parameter halfcycle = 41.666667;    // 12 MHz
    genvar i;

    /* Clock */
    initial begin
        dut_sysclk = 1'b0;
        #(offset);
        
        forever #(halfcycle) dut_sysclk = !dut_sysclk;
    end

/*  Reset
    initial begin
        dut_reset  = 1'b0;

        for (i = 0; i < 500; i = i + 1) begin
            @(posedge dut_sysclk);
        end
        
        dut_reset  = 1'b1;
    end
*/

    /* Buttons */
    initial begin
        dut_btn = 2'b00;
    end

    /* Serial RXD line */
    initial begin
        dut_rxd = 1'b1;
    end


    /* The DUT */
    top dut(
    .sysclk(dut_sysclk),
    .btn(dut_btn),

    .ja( { 1'bZ
        , 1'bZ
        , 1'bZ
        , 1'bZ
        , 1'bZ
        , 1'bZ
        , 1'bZ
        , 1'bZ } ),

    .pio1(),
    .pio2(dut_pll_i),
    .pio3(),
    .pio4(dut_pll_q),
    .pio5(),
    .pio6(),
    .pio7(),
    .pio8(),
    .pio9(),
    .pio10(),
    .pio11(),
    .pio12(),
    .pio13(),
    .pio14(),

    .xa_p( 2'b0 ),
    .xa_n( 2'b0 ),

    .pio17(),
    .pio18(),
    .pio19(),
    .pio20(),
    .pio21(),
    .pio22(),
    .pio23(),

    .pio26(),
    .pio27(),
    .pio28(),
    .pio29(),
    .pio30(),
    .pio31(),
    .pio32(),
    .pio33(),
    .pio34(),
    .pio35(),
    .pio36(),
    .pio37(),
    .pio38(),
    .pio39(),
    .pio40(),
    .pio41(),
    .pio42(),
    .pio43(),
    .pio44(),
    .pio45(),
    .pio46(),
    .pio47(),
    .pio48(),

    .led(dut_led),
    .ledrgb_r(dut_ledrgb_r),
    .ledrgb_g(dut_ledrgb_g),
    .ledrgb_b(dut_ledrgb_b),

    .usb_uart_txd(dut_txd),
    .usb_uart_rxd(dut_rxd),

    .qspi_cs(dut_qspi_cs),
    .qspi_dq(dut_qspi_dq),

    .crypto_sda(),

    .MemAdr(dut_mem_addr),
    .MemDB(dut_mem_db),
    .RamCEn(dut_mem_cen),
    .RamWEn(dut_mem_wen),
    .RamOEn(dut_mem_oen)
    );
    
endmodule
