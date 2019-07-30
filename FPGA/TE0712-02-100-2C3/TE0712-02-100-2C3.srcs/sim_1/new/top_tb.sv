`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2019 10:41:37
// Design Name: 
// Module Name: tb_top
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


module top_tb;

    reg reset;
    reg sys_rst;
    
    reg pll_clk_p;
    reg pll_clk_n;
    
    reg mgt_clk0_p;
    reg mgt_clk0_n;
    
    reg ufb_fpga_trx_clk;
    
    reg ufb_trx_rxclk_p;
    reg ufb_trx_rxclk_n;
    
    
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
    

    
    top topi(
    .reset(reset),
    .sys_rst(sys_rst),
    .pll_clk_p(pll_clk_p),
    .pll_clk_n(pll_clk_n),
    .mgt_clk0_p(mgt_clk0_p),
    .mgt_clk0_n(mgt_clk0_n),
    .ufb_fpga_trx_clk(ufb_fpga_trx_clk),
    
    
    .ddr3_reset(ddr3_reset),
    .ddr3_cke(ddr3_cke),
    .ddr3_clk0_p(ddr3_clk0_p),
    .ddr3_clk0_n(ddr3_clk0_n),

    .ddr3_s(ddr3_s),
    .ddr3_we(ddr3_we),
    .ddr3_odt(ddr3_odt),

    .ddr3_dqs_p(ddr3_dqs_p),
    .ddr3_dqs_n(ddr3_dqs_n),
    .ddr3_dm(ddr3_dm),
    .ddr3_d(ddr3_d),

    .ddr3_ba(ddr3_ba),
    .ddr3_a(ddr3_a),

    .ddr3_ras(ddr3_ras),
    .ddr3_cas(ddr3_cas),
    
    .ufb_trx_rxclk_p(ufb_trx_rxclk_p),
    .ufb_trx_rxclk_n(ufb_trx_rxclk_n)

    );
    
    
    initial 
    begin
    reset = 1;
    sys_rst = 1;
    
    pll_clk_p = 0;
    pll_clk_n = 1;
    
    mgt_clk0_p = 0;
    mgt_clk0_n = 1;
    
    ufb_fpga_trx_clk = 0;
    
    ufb_trx_rxclk_p = 0;
    ufb_trx_rxclk_n = 1;
    end
    
    initial
    #1000 reset = 0;
     
    initial
    #1000 sys_rst = 0;


    always
    #10 pll_clk_p = !pll_clk_p;

    always
    #10 pll_clk_n = !pll_clk_n;


    always
    #15.625 ufb_trx_rxclk_p = !ufb_trx_rxclk_p;

    always
    #15.625 ufb_trx_rxclk_n = !ufb_trx_rxclk_n;


    always
    #4.16666666 mgt_clk0_p = !mgt_clk0_p;

    always
    #4.16666666 mgt_clk0_n = !mgt_clk0_n;


    always
    #15.625 ufb_fpga_trx_clk = !ufb_fpga_trx_clk;

    
endmodule
