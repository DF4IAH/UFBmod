//////////////////////////////////////////////////////////////////////////////////
// Company: DF4IAH Solutions
// Engineer: Ulrich E. Habel
// 
// Create Date: 08.08.2019 20:50:12
// Design Name: UFBmod
// Module Name: onewire
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


module onewire(
  rst_i,
  clk_i,
  
  onewire_io,

  gpio_rtl_1_onewire_addr_out,
  gpio_rtl_2_onewire_data_out,
  gpio_rtl_2_onewire_data_in,
        
  wr_i,
  stb_i,
  
  rdy_o
);

  input  rst_i;
  input  clk_i;
  
  inout  onewire_io;
  
  input  [14:0]gpio_rtl_1_onewire_addr_out;
  input  [ 7:0]gpio_rtl_2_onewire_data_out;
  output [ 7:0]gpio_rtl_2_onewire_data_in;
  
  input  wr_i;
  input  stb_i;
  
  output rdy_o;


// TIMINGS
parameter c_freq_hz         = 100000000;
//parameter c_te_half_10ns    = 9'd500;                 // T_HDR and 1/2 of T_E = 5us
parameter c_te_half_10ns    = 9'd5;  // TODO: quick debugging

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


reg [4:0]sm1_state;
reg [3:0]sm2_state;

reg [15:0]addr_r;
reg [ 7:0]data_r;

reg wr_i_r;
reg stb_i_r;
reg rdy_o_r;

reg [7:0]sm1_send_r;
reg [7:0]sm1_data_r;
reg sm1_send_stb;
reg sm1_receive_stb;

reg sm2_send_busy;
reg sm2_receive_busy;
reg [7:0]sm2_read_r;
reg [19:0]sm2_bittrain;
reg [ 4:0]sm2_bittrain_ctr;
reg [ 8:0]sm2_10ns_timer_val;


// IOBUF
reg  onewire_o_r;
reg  onewire_t_r;
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
    rdy_o_r         <=  1'b0;
  end
  else begin
    /* Write to address and data registers */    
    if (stb_i && !stb_i_r) begin
        // Flash is 256 kBit type, mirror upper region
        addr_r[15]      <= 1'b0;
        addr_r[14:0]    <= gpio_rtl_1_onewire_addr_out;
        
        wr_i_r          <= wr_i;
        rdy_o_r         <= 1'b0;
        
        if (wr_i) begin
            data_r <= gpio_rtl_2_onewire_data_out;
        end 
        else begin
            data_r <= 8'h00;
        end
    end
    else if (sm2_state == 5'h0F) begin
        data_r  <= sm1_data_r;
        rdy_o_r <= 1'b1;
    end
    
    // One clock delayed signals
    stb_i_r <= stb_i;
  end
end

assign gpio_rtl_2_onewire_data_in   = data_r;
assign rdy_o                        = rdy_o_r;



// FSM - the protocol master
always @(posedge clk_i) begin
  if (rst_i) begin
    sm1_send_r          <=  8'h00;
    sm1_send_stb        <=  1'b0;
    sm1_data_r          <=  8'h00;
    sm1_receive_stb     <=  1'b0;
    
    sm1_state           <=  5'h00;
  end 
  else begin
    // FSM
    case (sm1_state)
    
    // Wait for a new cycle
    5'h00: 
        begin
            sm1_data_r      <= 8'h00;
            sm1_send_stb    <= 1'b0;
            
            sm1_send_r      <= 8'h00;
            sm1_send_stb    <= 1'b0;

            sm1_send_r      <= c_startHeader;

            if (stb_i_r) begin
                sm1_send_stb    <= 1'b1;
                sm1_state       <= 5'h01;
            end
        end
    
    // Handshake    
    5'h01:
        if (sm2_send_busy) begin
            // Release strobe
            sm1_send_stb    <= 1'b0;
            sm1_send_r      <= c_deviceAddr;
            sm1_state       <= 5'h02;
        end
    
    // Wait for sync pattern done    
    5'h02:
        if (!sm2_send_busy) begin
            sm1_send_stb    <= 1'b1;
            sm1_state       <= 5'h03;
        end
    
    // Handshake    
    5'h03:
        if (sm2_send_busy) begin
            // Release strobe
            sm1_send_stb    <= 1'b0;
            
            if (!wr_i_r) begin
                // READ access
                sm1_send_r      <= c_cmdRead;
                sm1_state <= 5'h04;
            end
            else begin
                // WRITE access
                sm1_send_r      <= c_cmdWrite;
                sm1_state <= 5'h10;
            end
        end
    
    // READ - Wait for device address done
    5'h04:
        if (!sm2_send_busy) begin
            sm1_send_stb    <= 1'b1;
            sm1_state       <= 5'h05;
        end
    
    // Handshake    
    5'h05:
        if (sm2_send_busy) begin
            // Release strobe
            sm1_send_stb    <= 1'b0;
            sm1_send_r      <= addr_r[15:8];
            sm1_state       <= 5'h06;
        end
    
    // READ - Wait for command done
    5'h06:
        if (!sm2_send_busy) begin
            sm1_send_stb    <= 1'b1;
            sm1_state       <= 5'h07;
        end
    
    // Handshake    
    5'h07:
        if (sm2_send_busy) begin
            // Release strobe
            sm1_send_stb    <= 1'b0;
            sm1_send_r      <= addr_r[7:0];
            sm1_state       <= 5'h08;
        end
    
    // READ - Wait for address MSB done
    5'h08:
        if (!sm2_send_busy) begin
            sm1_send_stb    <= 1'b1;
            sm1_state       <= 5'h09;
        end
    
    // Handshake
    5'h09:
        if (sm2_send_busy) begin
            // Release strobe
            sm1_send_stb    <= 1'b0;
            sm1_state       <= 5'h0A;
        end
    
    // READ - Wait for address LSB done, switch to receive mode
    5'h0A:
        if (!sm2_send_busy) begin
            sm1_receive_stb <= 1'b1;
            sm1_state       <= 5'h0B;
        end
    
    // Handshake    
    5'h0B:
        if (sm2_receive_busy) begin
            // Release strobe
            sm1_receive_stb <= 1'b0;
            sm1_state       <= 5'h0F;
        end
    
    // READ - read ONEWIRE data
    5'h0F:
        if (!sm2_receive_busy) begin
            sm1_data_r      <= sm2_read_r;
            sm1_state       <= 5'h00;
        end
    
    
    // WRITE - Wait for device address done
    5'h10:
        if (!sm2_send_busy) begin
            // Not implemented yet
            sm1_state <= 5'h00;
        end
    
    endcase
  end
end


// FSM - the bit banger
always @(posedge clk_i) begin
    if (rst_i) begin
        sm2_send_busy           <=  1'b1;
        sm2_receive_busy        <=  1'b1;
        sm2_read_r              <=  8'h00;
        
        sm2_bittrain            <= 20'h0;
        sm2_bittrain_ctr        <=  5'd0;
        
        sm2_10ns_timer_val      <=  9'd0;
        
        onewire_o_r             <=  1'b0;
        onewire_t_r             <=  1'b1;
        
        sm2_state               <=  4'h0;
    end 
    else begin
        // FSM
        case (sm2_state)
        
        4'h0:
            begin
                sm2_send_busy       <=  1'b0;
                sm2_receive_busy    <=  1'b0;
                
                // Wait until command comes in
                if (sm1_send_stb) begin
                    // Write access
                    
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
                    
                    
                    // Ack data received
                    sm2_send_busy    <= 1'b1;
                    
                    // Only at protocol start
                    if (sm1_state == 5'h01) begin
                        // T_HDR >= 5 us before with '0'
                        sm2_10ns_timer_val  <= c_te_half_10ns;
                        
                        // Write mode
                        onewire_o_r     <= 1'b0;
                        onewire_t_r     <= 1'b0;
                    end
                    
                    sm2_state           <= 4'h1;
                end
                else if (sm1_receive_stb) begin
                    // Read access
                    
                    sm2_state           <= 4'h8;
                end
            end
        
        // Wait until T_HDR has elapsed
        4'h1:
            // Write mode
            if (!sm2_10ns_timer_val) begin
                sm2_bittrain_ctr    <= 5'd20;
                sm2_10ns_timer_val  <= c_te_half_10ns;
                sm2_state           <= 4'h2;
            end
        
        // Send and receive bits
        4'h2:
            begin
                if (sm2_bittrain_ctr >= 5'd3) begin
                    // Write data bit
                    onewire_o_r <= sm2_bittrain[sm2_bittrain_ctr - 1];
                end
                else begin
                    // Read mode
                    onewire_t_r <= 1'b1;
                end
                
                if (!sm2_10ns_timer_val) begin
                    sm2_10ns_timer_val <= c_te_half_10ns;
                    
                    if (sm2_bittrain_ctr) begin
                        if (sm2_bittrain_ctr <= 5'd2) begin
                            // Read data bit (SAK)
                            sm2_bittrain[sm2_bittrain_ctr - 1'd1] <= onewire_i;
                        end
                        
                        // Move on to the next bit
                        sm2_bittrain_ctr <= sm2_bittrain_ctr - 1'd1;
                    end
                    else begin
                        // Read mode
                        sm2_send_busy   <= 1'b0;
                        sm2_state       <= 4'hF;
                    end
                end
            end
        
        
        // Read data
        4'h8:
            begin
            // TODO: coding here
                sm2_receive_busy <= 1'b1;
                sm2_state <= 4'hF;
            end
        
        
        // Wait until strobes are released
        4'hF:
            if (!sm1_send_stb && !sm1_receive_stb) begin
                sm2_send_busy       <= 1'b0;
                sm2_receive_busy    <= 1'b0;
                sm2_state           <= 4'h0;
            end
        
        endcase
    end
    
    
    // Count 10ns timer
    if (sm2_10ns_timer_val) begin
        sm2_10ns_timer_val <= sm2_10ns_timer_val - 1'd1;
    end
end

endmodule
