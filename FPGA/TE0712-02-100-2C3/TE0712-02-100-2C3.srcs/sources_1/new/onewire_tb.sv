//////////////////////////////////////////////////////////////////////////////////
// Company: DF4IAH Solutions
// Engineer: Ulrich E. Habel
// 
// Create Date: 13.08.2019 16:50:00
// Design Name: UFBmod
// Module Name: onewire_tb
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


module onewire_tb;

    // REG's & Wires
    
    reg  rst_i;
    reg  clk_i;
    
    tri1 onewire_io;
    wire onewire_io_o;
    reg  onewire_io_i;
    reg  onewire_io_t;
    
    wire [31:0]gpio_rtl_1_onewire_gpio_in;
    reg  [31:0]gpio_rtl_1_onewire_gpio_out;
    
    wire [ 3:0]dmr_1_onewire_a_in;
    wire [31:0]dmr_1_onewire_d_in;
    wire dmr_1_onewire_we_in;



    // ONEWIRE
    
    onewire onewire_i(
        .rst_i(rst_i),
        .clk_i(clk_i),
        
        .onewire_io(onewire_io),
        
        .gpio_rtl_1_onewire_gpio_in(gpio_rtl_1_onewire_gpio_in),
        .gpio_rtl_1_onewire_gpio_out(gpio_rtl_1_onewire_gpio_out),
        
        .dmr_1_onewire_a_in(dmr_1_onewire_a_in),
        .dmr_1_onewire_d_in(dmr_1_onewire_d_in),
        .dmr_1_onewire_we_in(dmr_1_onewire_we_in)
    );
    
    
    IOBUF onewire_io_IOBUF_i (
       .IO(onewire_io),
        .I(onewire_io_i),
        .O(onewire_io_o),
        .T(onewire_io_t)
    );



    // Protocol
    always
    begin
    #0
        gpio_rtl_1_onewire_gpio_out     = 32'h00000000;
        onewire_io_i                    = 1'b1;
        onewire_io_t                    = 1'b1;

        rst_i                           = 1'b1;
        clk_i                           = 1'b0;
        
    #1000
        rst_i = 1'b0;
        
    #20
        gpio_rtl_1_onewire_gpio_out     = 32'h000600FA;
        
    #20
        gpio_rtl_1_onewire_gpio_out     = 32'h800600FA;
        
    #40
        gpio_rtl_1_onewire_gpio_out     = 32'h00000000;
        
        
    // End of stimulation
    #10000
        rst_i = 1'b1;
    end


    // Clock - 100 MHz
    always
    begin
    #5  clk_i = !clk_i;
    end

endmodule
