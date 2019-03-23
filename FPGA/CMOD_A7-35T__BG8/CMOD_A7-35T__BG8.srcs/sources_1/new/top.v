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
    output [1:0] led,
    output ledrgb_r,
    output ledrgb_g,
    output ledrgb_b
    );


    /* Defined in the module interface */
    //wire sysclk;
    //wire btn;
    //wire led;
    //wire ledrgb_r;
    //wire ledrgb_g;
    //wire ledrgb_b;


    /* Reset */
    wire reset;

    /* Clock */
    wire clk_48mhz;
    wire clk_locked;

    /* Counter output */
    wire [25:0] q_48mhz;


    /* MMCM: 48 MHz <-- 12 MHz */
    clk_wiz_0 clk_mmcm (
        .reset(reset),
        .clk_in1(sysclk),

        .clk_out1(clk_48mhz),
        .locked(clk_locked)
    );


    /* 48 MHz - 1 sec counter */
    c_counter_binary_0 ctr24mhz(
        .CLK(clk_48mhz),

        .Q(q_48mhz)
    );


    /* Reset */
    assign reset = btn[0];

    /* led[1:0] <-- btn[1] */
    assign led[0] = !btn[1];
    assign led[1] =  btn[1];

    /* ledrgb_X <-- counter(clk_48mhz) */
    assign ledrgb_r = q_48mhz[25];
    assign ledrgb_g = q_48mhz[24];
    assign ledrgb_b = q_48mhz[23];

endmodule
