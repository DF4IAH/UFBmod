`timescale 1 ns / 1 ps


module onewire(
  rst_i,
  clk_i,
  
  onewire_io,

  addr_i,
  data_i,
  data_o,
        
  wr_i,
  stb_i,
  
  rdy_o
);

  input  rst_i;
  input  clk_i;
  
  inout  onewire_io;
  
  input  [15:0]addr_i;
  input  [ 7:0]data_i;
  output [ 7:0]data_o;
  
  input  wr_i;
  input  stb_i;
  
  output rdy_o;


// TIMINGS
parameter c_Freq_Hz         = 100000000;
parameter c_TE_half_10ns    = 9'd500;                 // T_HDR and 1/2 of T_E = 5us

// DEVICE PROTOCOL
parameter c_startHeader     = 8'b01010101;
parameter c_deviceAddr      = 8'hA0;

// DEVICE COMMANDS
parameter c_cmdRead         = 8'h03;
parameter c_cmdWrite        = 8'h6C;
parameter c_cmdElSet        = 8'h96;
parameter c_cmdElReset      = 8'h91;



//function [15:0] usec_count;
//input [9:0] usec;
//begin
//  usec_count = (((wb_freq / 1000000) * usec) - 1) & 16'hffff;
//end
//endfunction


//reg [2:0] lun, b;
//reg [3:0] read_bytes, 
reg sm1_state;
reg sm2_state;

reg stb_adr_i_r;
reg stb_data_i_r;

reg [15:0]addr_r;
reg [ 7:0]data_r;

reg wr_i_r;
reg stb_i_r;
reg rdy_o_r;

reg [7:0]sm1_send_r;
reg [7:0]sm1_data_r;
reg sm1_send_stb;
reg sm1_read_stb;

reg sm2_send_done;
reg sm2_read_done;
reg [7:0]sm2_read_r;
reg [19:0]sm2_bittrain;
reg [ 4:0]sm2_bittrain_ctr;
reg [ 8:0]sm2_10ns_timer_val;


//reg rst_bit, wb_ack, rxdone, onewire_i_q, push_done;
//reg [7:0] dat, shiftreg;
//assign wb_ack_o = wb_ack;
//assign wb_dat_o = {lun, rst_bit, read_bytes, dat};
//assign onewire_oe_o = onewire_oe;
//assign onewire_o = onewire;


// IOBUF
reg  onewire_o_r;
reg  onewire_t_r;
wire onewire_o;
wire onewire_i;

IOBUF onewire_iobuf
       (.I(onewire_o_r),
        .IO(onewire_io),
        .O(onewire_i),
        .T(onewire_t_r)); 



// FSM - the MicroBlaze access unit
always @(posedge clk_i) begin
  if (rst_i) begin
    addr_r          <= 16'b0;
    data_r          <=  8'b0;
    wr_i_r          <=  1'b0;
    stb_i_r         <=  1'b0;
    rdy_o_r         <=  1'b1;
  end
  else begin
    /* Write to address and data registers */    
    if (stb_i && !stb_i_r) begin
        // Flash is 256 kBit type, mirror upper region
        addr_r[15]      <= 1'b0;
        addr_r[14:0]    <= addr_i[15:0];
        
        wr_i_r          <= wr_i;
        rdy_o_r         <= 1'b0;
        
        if (wr_i) begin
            data_r <= data_i;
        end 
        else begin
            data_r <= 8'h00;
        end
    end
    else if (sm1_state == 4'hF) begin
        data_r  <= sm1_data_r;
        rdy_o_r <= 1'b1;
    end
    
    // One clock delayed signals
    stb_i_r <= stb_i;
  end
end

assign data_o = data_r;
assign rdy_o  = rdy_o_r;



// FSM - the protocol master
always @(posedge clk_i) begin
  if (rst_i) begin
    onewire_o_r         <=  1'b0;
    onewire_t_r         <=  1'b0;
    
    sm1_send_r          <=  8'h00;
    sm1_send_stb        <=  1'b0;
    sm1_data_r          <=  8'h00;
    sm1_read_stb        <=  1'b0;

    sm1_state           <=  4'h0;
  end 
  else begin
    // FSM
    case (sm1_state)
    
    // Wait for a new cycle
    4'h0: 
        if (stb_i_r) begin
            sm1_data_r      <= 8'h00;
            sm1_send_stb    <= 1'b0;
            
            onewire_o_r     <= 1'b1;
            onewire_t_r     <= 1'b1;
            
            sm1_send_r      <= 8'h00;
            sm1_send_stb    <= 1'b0;
            
            sm1_state       <= 4'h1;
        end
    
    // Output sync pattern    
    4'h1:
        begin
            sm1_send_r      <= c_startHeader;
            sm1_send_stb    <= 1'b1;
            sm1_state       <= 4'h2;
        end
        
    // Wait until state pattern is done
    4'h2:
        begin
            // Release strobe
            sm1_send_stb <= 1'b0;
            
            if (sm2_send_done) begin
                sm1_send_r      <= c_deviceAddr;
                sm1_send_stb    <= 1'b1;
                
                if (!wr_i_r) begin
                    sm1_state <= 4'h3;
                end
                else begin
                    sm1_state <= 4'h8;
                end
            end
        end

    // READ DATA - send command
    4'h3:
        begin
            // Release strobe
            sm1_send_stb <= 1'b0;
            
            if (sm2_send_done) begin
                sm1_send_r      <= c_cmdRead;
                sm1_send_stb    <= 1'b1;
                sm1_state       <= 4'h4;
            end
        end

    // READ DATA - send Address MSB
    4'h4:
        begin
            // Release strobe
            sm1_send_stb <= 1'b0;
            
            if (sm2_send_done) begin
                sm1_send_r      <= addr_r[15:8];
                sm1_send_stb    <= 1'b1;
                sm1_state       <= 4'h5;
            end
        end

    // READ DATA - send Address LSB
    4'h5:
        begin
            // Release strobe
            sm1_send_stb <= 1'b0;
            
            if (sm2_send_done) begin
                sm1_send_r      <= addr_r[7:0];
                sm1_send_stb    <= 1'b1;
                sm1_state       <= 4'h6;
            end
        end

    // READ DATA - read ONEWIRE data
    4'h6:
        begin
            // Release strobe
            sm1_send_stb <= 1'b0;
            
            if (sm2_send_done) begin
                sm1_read_stb    <= 1'b1;
                sm1_state       <= 4'h7;
            end
        end

    // READ DATA - read ONEWIRE data
    4'h7:
        begin
            // Release strobe
            sm1_read_stb <= 1'b0;
            
            if (sm2_read_done) begin
                data_r      <= sm2_read_r;
                sm1_state   <= 4'hF;
            end
        end


    // WRITE DATA
    4'h8:
        begin
            // Not implemented yet
            sm1_state <= 4'hF;
        end

    // Wait until USER does release strobe bit
    4'hF:
        if (!stb_i_r) begin
            sm1_state <= 4'h0;
        end
    
    endcase
  end
end


// FSM - the bit banger
always @(posedge clk_i) begin
    if (rst_i) begin
        sm2_send_done           <=  1'b0;
        sm2_read_done           <=  1'b0;
        sm2_read_r              <=  8'h00;
        
        sm2_bittrain            <= 20'h0;
        sm2_bittrain_ctr        <=  5'd0;
        
        sm2_10ns_timer_val      <=  9'd0;
        
        sm2_state               <=  4'h0;
    end 
    else begin
        // FSM
        case (sm2_state)

        4'h0:
            begin
                sm2_send_done   <= 1'b0;
                sm2_read_done   <= 1'b0;
                sm2_read_r      <= 8'h00;

                // Wait until out data to forge
                if (sm1_send_stb) begin
                    sm2_bittrain[19] <= !sm1_send_r[7];
                    sm2_bittrain[18] <=  sm1_send_r[7];
    
                    sm2_bittrain[17] <= !sm1_send_r[6];
                    sm2_bittrain[16] <=  sm1_send_r[6];
    
                    sm2_bittrain[15] <= !sm1_send_r[5];
                    sm2_bittrain[14] <=  sm1_send_r[5];
    
                    sm2_bittrain[13] <= !sm1_send_r[4];
                    sm2_bittrain[12] <=  sm1_send_r[4];
    
                    sm2_bittrain[11] <= !sm1_send_r[3];
                    sm2_bittrain[10] <=  sm1_send_r[3];
    
                    sm2_bittrain[ 9] <= !sm1_send_r[2];
                    sm2_bittrain[ 8] <=  sm1_send_r[2];
    
                    sm2_bittrain[ 7] <= !sm1_send_r[1];
                    sm2_bittrain[ 6] <=  sm1_send_r[1];
    
                    sm2_bittrain[ 5] <= !sm1_send_r[0];
                    sm2_bittrain[ 4] <=  sm1_send_r[0];
    
                    // MAK bit
                    sm2_bittrain[ 3] <= 1'b0;
                    sm2_bittrain[ 2] <= 1'b1;
    
                    // SAK bit
                    sm2_bittrain[ 1] <= 1'b0;
                    sm2_bittrain[ 0] <= 1'b0;
                    
    
                    // Write mode
                    onewire_o_r             <= 1'b0;
                    onewire_t_r             <= 1'b1;
                    
                    // Only at protocol start
                    if (sm1_state == 4'h2) begin
                        // T_HDR >= 5 us before with '0'
                        sm2_10ns_timer_val  <= c_TE_half_10ns;
                    end
    
                    sm2_state               <= 4'h1;
                end
            end
            
        // Wait until T_HDR has elapsed
        4'h1:
            // Write mode
            if (!sm2_10ns_timer_val) begin
                sm2_bittrain_ctr    <= 5'd20;
                sm2_10ns_timer_val  <= c_TE_half_10ns;
                sm2_state           <= 4'h2;
            end
            
        // Send and read bits
        4'h2:
            if (sm2_bittrain_ctr) begin
                if (sm2_bittrain_ctr >= 5'd3) begin
                    // Write data bit
                    onewire_o_r <= sm2_bittrain[sm2_bittrain_ctr - 1];
                end
                else begin
                    // Read mode
                    onewire_t_r <= 1'b0;
                end
                
                // Move on to the next bit
                if (!sm2_10ns_timer_val) begin
                    sm2_bittrain_ctr <= sm2_bittrain_ctr - 1'd1;
                end
                
                if (sm2_bittrain_ctr <= 5'd2) begin
                    // Read data bit (SAK)
                    sm2_bittrain[sm2_bittrain_ctr - 1'd1] <= onewire_i;
                end
            end
            else begin
                // Read mode
                sm2_send_done   <= 1'b1;
                sm2_state       <= 4'h3;
            end
        
        // Wait for next order
        4'h3:
            begin
                if (sm1_send_stb) begin
                    sm2_send_done   <= 1'b0;
                    sm2_read_done   <= 1'b0;
                    sm2_state       <= 4'h0;
                end
                else if (sm1_read_stb) begin
                    sm2_send_done   <= 1'b0;
                    sm2_read_done   <= 1'b0;
                    sm2_state       <= 4'h4;
                end
            end
        
        // Read data
        4'h4:
            begin
            end
                        
        endcase
    end
    
    
    // Count 10ns timer
    if (sm2_10ns_timer_val) begin
        sm2_10ns_timer_val <= sm2_10ns_timer_val - 1'd1;
    end
end

endmodule
