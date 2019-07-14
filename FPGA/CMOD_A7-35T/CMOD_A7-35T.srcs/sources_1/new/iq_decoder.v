`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  DF4IAH Solutions
// Engineer: Ulrich Habel
// 
// Create Date: 13.07.2019 20:28:53
// Design Name: I/Q decoder with counter
// Module Name: iq_decoder
// Project Name: UFBmod
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


module iq_decoder(
    input clk,
    input reset,
    input dec_i,
    input dec_q,
    output [31:0] ctr,
    output dir_up,
    output dir_dn
    );
    
    reg dir_up_r;
    reg dir_dn_r;
    reg ctr_load;
    reg ctr_clken;
    reg ctr_up;
    reg tm1_i;
    reg tm1_q;
    
    initial begin
        ctr_load <= 0;
        ctr_clken <= 0;
        ctr_up <= 0;
        tm1_i <= 0;
        tm1_q <= 0;
        dir_up_r <= 0;
        dir_dn_r <= 0;
    end
    
    always @(posedge clk)
    if (reset) begin
        ctr_load <= 1;
        ctr_clken <= 1;
    end else begin
        ctr_load <= 0;
        tm1_i <= dec_i;
        tm1_q <= dec_q;
        ctr_clken <= 0;

        if (( dec_i && !tm1_i && !dec_q && !tm1_q) ||
            ( dec_i &&  tm1_i &&  dec_q && !tm1_q) ||
            (!dec_i &&  tm1_i &&  dec_q &&  tm1_q) ||
            (!dec_i && !tm1_i && !dec_q && !tm1_q)) begin
            ctr_up <= 1;
            ctr_clken <= 1;
            dir_up_r <= 1;
            dir_dn_r <= 0;
        end else 
        if ((!dec_i &&  tm1_i &&  dec_q &&  tm1_q) ||
            (!dec_i && !tm1_i && !dec_q &&  tm1_q) ||
            ( dec_i && !tm1_i && !dec_q && !tm1_q) ||
            ( dec_i &&  tm1_i &&  dec_q && !tm1_q)) begin
            ctr_up <= 0;
            ctr_clken <= 1;
            dir_up_r <= 0;
            dir_dn_r <= 1;
        end else begin
            dir_up_r <= 0;
            dir_dn_r <= 0;
        end
    end
    
    assign dir_up = dir_up_r;
    assign dir_dn = dir_dn_r;
    
    
    c_counter_binary_0 iq_ctr(
        .CLK(clk),
        .CE(ctr_clken),
        .UP(ctr_up),
        .LOAD(ctr_load),
        .L(32'h80000000),
        .Q(ctr)  
    );
    
endmodule
