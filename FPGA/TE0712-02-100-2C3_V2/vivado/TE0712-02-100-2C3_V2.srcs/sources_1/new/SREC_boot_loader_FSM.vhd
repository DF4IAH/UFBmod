----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2020 11:25:19
-- Design Name: 
-- Module Name: SREC_boot_loader_FSM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SREC_boot_loader_FSM is
    Port ( 
        -- Ports of Axi Master Bus Interface M00_AXI
        m00_axi_aclk                                    : in    STD_LOGIC;
        m00_axi_aresetn                                 : in    STD_LOGIC;
        
        m00_axi_awaddr                                  : out   STD_LOGIC_VECTOR ( 31 downto 0 );
        m00_axi_awprot                                  : out   STD_LOGIC_VECTOR (  2 downto 0 );
        m00_axi_awvalid                                 : out   STD_LOGIC;
        m00_axi_awready                                 : in    STD_LOGIC;
        m00_axi_wdata                                   : out   STD_LOGIC_VECTOR ( 31 downto 0 );
        m00_axi_wstrb                                   : out   STD_LOGIC_VECTOR (  3 downto 0 );
        m00_axi_wvalid                                  : out   STD_LOGIC;
        m00_axi_wready                                  : in    STD_LOGIC;
        m00_axi_bresp                                   : in    STD_LOGIC_VECTOR (  1 downto 0 );
        m00_axi_bvalid                                  : in    STD_LOGIC;
        m00_axi_bready                                  : out   STD_LOGIC;
        m00_axi_araddr                                  : out   STD_LOGIC_VECTOR ( 31 downto 0 );
        m00_axi_arprot                                  : out   STD_LOGIC_VECTOR (  2 downto 0 );
        m00_axi_arvalid                                 : out   STD_LOGIC;
        m00_axi_arready                                 : in    STD_LOGIC;
        m00_axi_rdata                                   : in    STD_LOGIC_VECTOR ( 31 downto 0 );
        m00_axi_rresp                                   : in    STD_LOGIC_VECTOR (  1 downto 0 );
        m00_axi_rvalid                                  : in    STD_LOGIC;
        m00_axi_rready                                  : out   STD_LOGIC;
        
        qspi_irpt                                       : in    STD_LOGIC;
        
        SREC_start                                      : in    STD_LOGIC;
        SREC_enable                                     : in    STD_LOGIC;
        
        SREC_error                                      : out   STD_LOGIC;
        SREC_resetn                                     : out   STD_LOGIC;
        SREC_done                                       : out   STD_LOGIC;
        
        DBG_out                                         : out   STD_LOGIC_VECTOR(  7 downto 0 )
    );
end SREC_boot_loader_FSM;


architecture Behavioral of SREC_boot_loader_FSM is
    
    -- function called clogb2 that returns an integer which has the
	-- value of the ceiling of the log base 2
	function clogb2 (bit_depth : INTEGER)  return INTEGER  is
	   variable depth  : INTEGER := bit_depth;
	   variable count  : INTEGER := 1;
    begin
        for clogb2 in 1 to bit_depth loop                                   -- Works for up to 32 bit integers
            if (bit_depth <= 2) then
                count := 1;
            else
                if (depth <= 1) then
                    count := count;
                else
                    depth := depth / 2;
                    count := count + 1;
                end if;
            end if;
        end loop;
        return(count);
    end;
    
    
    -- Example user application signals
    
    -- TRANS_NUM_BITS is the width of the index counter for
    -- number of write or read transaction..
    --constant  TRANS_NUM_BITS  : integer := clogb2(C_M_TRANSACTIONS_NUM-1);
    
    -- Example State machine to initialize counter, initialize write transactions, 
    -- initialize read transactions and comparison of read data with the
    -- written data words.
    type state is                                       (                   -- This state initiates AXI4Lite transaction
                                                            IDLE,           -- after the state machine changes state to INIT_WRITE
                                                                            -- when there is 0 to 1 transition on INIT_AXI_TXN
                                                            INIT_WRITE,     -- This state initializes write transaction,
                                                                            -- once writes are done, the state machine 
                                                                            -- changes state to INIT_READ 
                                                            INIT_READ,      -- This state initializes read transaction
                                                                            -- once reads are done, the state machine 
                                                                            -- changes state to INIT_COMPARE 
                                                            INIT_COMPARE    -- This state issues the status of comparison 
                                                        );			        -- of the written data with the read data
    
  --signal mst_exec_state                               : state; 
    
    -- AXI4LITE signals
    --write address valid
    signal io_axi_awvalid                               : STD_LOGIC;
    
    --write data valid
    signal io_axi_wvalid                                : STD_LOGIC;
    
    --read address valid
    signal io_axi_arvalid                               : STD_LOGIC;
    
    --read data acceptance
    signal io_axi_rready                                : STD_LOGIC;
    
    --write response acceptance
    signal io_axi_bready                                : STD_LOGIC;
    
    --write address
    signal io_axi_awaddr                                : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal fsm_axi_awaddr                               : STD_LOGIC_VECTOR ( 31 downto 0 );
    
    --write data
    signal io_axi_wdata                                 : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal fsm_axi_wdata                                : STD_LOGIC_VECTOR ( 31 downto 0 );
    
    --read addresss
    signal io_axi_araddr                                : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal fsm_axi_araddr                               : STD_LOGIC_VECTOR ( 31 downto 0 );
    
    --read data
    signal fsm_rdata                                    : STD_LOGIC_VECTOR ( 31 downto 0 );
    
    
    --Asserts when there is a write response error
    signal fsm_write_resp_error                         : STD_LOGIC;
    
    --Asserts when there is a read response error
    signal fsm_read_resp_error                          : STD_LOGIC;
    
    --A pulse to initiate a write transaction
    signal fsm_start_axi_write                          : STD_LOGIC;
    
    --A pulse to initiate a read transaction
    signal fsm_start_axi_read                           : STD_LOGIC;
    
    --flag that marks the completion of write trasactions. The number of write transaction is user selected by the parameter C_M_TRANSACTIONS_NUM.
    signal fsm_writes_done                              : STD_LOGIC;
    
    --flag that marks the completion of read trasactions. The number of read transaction is user selected by the parameter C_M_TRANSACTIONS_NUM
    signal fsm_reads_done                               : STD_LOGIC;
    
    --The error register is asserted when any of the write response error, read response error or the data mismatch flags are asserted.
    signal fsm_error_reg                                : STD_LOGIC;
    
    --index counter to track the number of write transaction issued
    signal fsm_write_index                              : STD_LOGIC_VECTOR (  7 downto 0 );
    
    --index counter to track the number of read transaction issued
    signal fsm_read_index                               : STD_LOGIC_VECTOR (  7 downto 0 );
    
    --Expected read data used to compare with the read data.
  --signal fsm_expected_rdata                           : STD_LOGIC_VECTOR ( 31 downto 0 );
    
    --Flag marks the completion of comparison of the read data with the expected read data
  --signal fsm_compare_done                             : STD_LOGIC;
    
    --This flag is asserted when there is a mismatch of the read data with the expected read data.
  --signal fsm_read_mismatch                            : STD_LOGIC;
    
    --Flag is asserted when the write index reaches the last write transction number
    signal fsm_last_write                               : STD_LOGIC;
    
    --Flag is asserted when the read index reaches the last read transction number
    signal fsm_last_read                                : STD_LOGIC;
    
    signal fsm_init_txn_ff                              : STD_LOGIC;
    signal fsm_init_txn_ff2                             : STD_LOGIC;
    signal fsm_init_txn_pulse                           : STD_LOGIC;
    
    
    -- AXI access FSM
    signal fsm_fifo_reset_run                           : STD_LOGIC;
    signal fsm_srec_process_run                         : STD_LOGIC;
    signal fsm_master_reset_run                         : STD_LOGIC;
    signal fsm_srec_decoder_c                           : STD_LOGIC_VECTOR (  7 downto 0 );
    signal fsm_out_resetn                               : STD_LOGIC;
    signal fsm_out_error                                : STD_LOGIC;
    
    -- MAIN FSM
    signal fsm_fifo_reset_do                            : STD_LOGIC;
    signal fsm_srec_process_do                          : STD_LOGIC;
    signal fsm_master_reset_do                          : STD_LOGIC;
    signal fsm_main_done                                : STD_LOGIC;
    
begin
    -- I/O Connections assignments
    
    --Adding the offset address to the base addr of the slave
    m00_axi_awaddr      <= io_axi_awaddr;
	
	--AXI 4 write data
    m00_axi_wdata       <= io_axi_wdata;
    m00_axi_awprot      <= "000";   -- Data(2), Secure(1), Unprivileged(0)
    m00_axi_awvalid     <= io_axi_awvalid;
	
    --Write Data(W)
    m00_axi_wvalid      <= io_axi_wvalid;
	
    --Set all byte strobes in this example
    m00_axi_wstrb       <= "1111";
	
    --Write Response (B)
    m00_axi_bready      <= io_axi_bready;
	
    --Read Address (AR)
    m00_axi_araddr      <= io_axi_araddr;
    m00_axi_arvalid     <= io_axi_arvalid;
    m00_axi_arprot      <= "001";   -- Data(2), Secure(1), Privileged(0)
	
    --Read and Read Response (R)
    m00_axi_rready      <= io_axi_rready;
	
    --Example design I/O
    SREC_resetn         <= fsm_out_resetn;
    SREC_error          <= fsm_out_error;
    SREC_done           <= fsm_main_done;
    fsm_init_txn_pulse  <= (not fsm_init_txn_ff2)  and  fsm_init_txn_ff;
    
    
    --Generate a pulse to initiate AXI transaction.
    process (m00_axi_aclk)
	begin
	   if (rising_edge (m00_axi_aclk)) then
	       -- Initiates AXI transaction delay
	       if (m00_axi_aresetn = '0') then
	           fsm_init_txn_ff     <= '0';
	           fsm_init_txn_ff2    <= '0';
	       else
	           fsm_init_txn_ff     <= SREC_start;
	           fsm_init_txn_ff2    <= fsm_init_txn_ff;
	       end if;
	   end if;
	end process;
    
    
    ----------------------
    --Write Address Channel
    ----------------------
    
    -- The purpose of the write address channel is to request the address and
    -- command information for the entire transaction.  It is a single beat
    -- of information.
    
    -- Note for this example the axi_awvalid/axi_wvalid are asserted at the same
    -- time, and then each is deasserted independent from each other.
    -- This is a lower-performance, but simplier control scheme.
    
    -- AXI VALID signals must be held active until accepted by the partner.
    
    -- A data transfer is accepted by the slave when a master has
    -- VALID data and the slave acknoledges it is also READY. While the master
    -- is allowed to generated multiple, back-to-back requests by not
    -- deasserting VALID, this design will add rest cycle for
    -- simplicity.
    
	-- Since only one outstanding transaction is issued by the user design,
	-- there will not be a collision between a new request and an accepted
	-- request on the same clock cycle.
    
    process (m00_axi_aclk)                                                          
    begin
        if (rising_edge (m00_axi_aclk)) then
            --Only VALID signals must be deasserted during reset per AXI spec
            --Consider inverting then registering active-low reset for higher fmax        
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then                                                
                io_axi_awvalid <= '0';                                                         
            else
                --Signal a new address/data command is available by user logic              
                if (fsm_start_axi_write = '1') then                                          
                    io_axi_awvalid <= '1';
                elsif (m00_axi_awready = '1' and io_axi_awvalid = '1') then
                    --Address accepted by interconnect/slave (issue of M_AXI_AWREADY by slave)
                    io_axi_awvalid <= '0';
                end if;
            end if;
        end if;
    end process;
	
    -- start_single_write triggers a new write
    -- transaction. write_index is a counter to
    -- keep track with number of write transaction
    -- issued/initiated
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                fsm_write_index <= (others => '0');
            elsif (m00_axi_wready = '0' and io_axi_wvalid = '0') then
                fsm_write_index <= (others => '0');
            elsif (m00_axi_wready = '1' and io_axi_wvalid = '1') then
                -- Signals every data transfer
                fsm_write_index <= std_logic_vector(unsigned(fsm_write_index) + 1);
            end if;
        end if;
    end process;
    
    
    ----------------------
    --Write Data Channel
    ----------------------
    
    --The write data channel is for transfering the actual data.
    --The data generation is speific to the example design, and
    --so only the WVALID/WREADY handshake is shown here
    
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1' ) then
                io_axi_wvalid <= '0';
            else
                if (fsm_start_axi_write = '1') then
                    --Signal a new address/data command is available by user logic
                    io_axi_wvalid <= '1';
                elsif (m00_axi_wready = '1' and io_axi_wvalid = '1') then
                    --Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)
                    io_axi_wvalid <= '0';
                end if;
            end if;
        end if;
    end process;
    
    
    ------------------------------
    --Write Response (B) Channel
    ------------------------------
    
    --The write response channel provides feedback that the write has committed
    --to memory. BREADY will occur after both the data and the write address
    --has arrived and been accepted by the slave, and can guarantee that no
    --other accesses launched afterwards will be able to be reordered before it.
    
    --The BRESP bit [1] is used indicate any errors from the interconnect or
    --slave for the entire write burst. This example will capture the error.
    
    --While not necessary per spec, it is advisable to reset READY signals in
    --case of differing reset latencies between master/slave.
    
	process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                io_axi_bready <= '0';
            else
                if (m00_axi_bvalid = '1' and io_axi_bready = '0') then
                    -- accept/acknowledge bresp with axi_bready by the master
                    -- when M_AXI_BVALID is asserted by slave
                    io_axi_bready <= '1';
                elsif (io_axi_bready = '1') then
                    -- deassert after one clock cycle
                    io_axi_bready <= '0';
                end if;
            end if;
        end if;
    end process;
    
    --Flag write errors
    fsm_write_resp_error <= (io_axi_bready and m00_axi_bvalid and m00_axi_bresp(1));   -- 00: OKAY, 01: EXOKAY, 10: SLVERR, 11: DECERR
    
    
	------------------------------
	--Read Address Channel
	------------------------------
    
	--start_single_read triggers a new read transaction. read_index is a counter to
	--keep track with number of read transaction issued/initiated
    
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                fsm_read_index <= (others => '0');
            else
                if (fsm_start_axi_read = '1') then
                    -- Signals a new read address is
                    -- available by user logic
                    fsm_read_index <= std_logic_vector(unsigned(fsm_read_index) + 1);
                end if;
            end if;
        end if;
    end process;
    
    -- A new axi_arvalid is asserted when there is a valid read address
    -- available by the master. start_single_read triggers a new read
    -- transaction
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                io_axi_arvalid <= '0';
            else
                if (fsm_start_axi_read = '1') then
                    --Signal a new read address command is available by user logic
                    io_axi_arvalid <= '1';
                elsif (m00_axi_arready = '1' and io_axi_arvalid = '1') then
                    --RAddress accepted by interconnect/slave (issue of M_AXI_ARREADY by slave)
                    io_axi_arvalid <= '0';
                end if;
            end if;
        end if;
    end process;
    
    
    ----------------------------------
	--Read Data (and Response) Channel
	----------------------------------
    
    --The Read Data channel returns the results of the read request
    --The master will accept the read data by asserting axi_rready
    --when there is a valid read data available.
    --While not necessary per spec, it is advisable to reset READY signals in
    --case of differing reset latencies between master/slave.
    
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                io_axi_rready <= '0';
            else
                if (m00_axi_rvalid = '1' and io_axi_rready = '0') then
                    -- accept/acknowledge rdata/rresp with axi_rready by the master
                    -- when M_AXI_RVALID is asserted by slave
                    io_axi_rready <= '1';
                elsif (io_axi_rready = '1') then
                    -- deassert after one clock cycle
                    io_axi_rready <= '0';
                end if;
            end if;
        end if;
    end process;
    
    --Flag write errors
    fsm_read_resp_error <= (io_axi_rready and m00_axi_rvalid and m00_axi_rresp(1));
    
    
    ----------------------------------
    --User Logic
    ----------------------------------
    
    --Address/Data Stimulus
    
    --Address/data pairs for this example. The read and write values should
    --match.
    --Modify these as desired for different address patterns.
    
    --  Write Addresses
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                io_axi_awaddr <= (others => '0');
            else
                io_axi_awaddr <= fsm_axi_awaddr;
            end if;
        end if;
    end process;
    
    -- Read Addresses
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1' ) then
                io_axi_araddr <= (others => '0');
            else
                io_axi_araddr <= fsm_axi_araddr;
            end if;
        end if;
    end process;
    
    -- Write data
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                io_axi_wdata <= (others => '0');
            else
                if (fsm_start_axi_write = '1') then
                    io_axi_wdata <= fsm_axi_wdata;
                elsif (m00_axi_wready = '1' and io_axi_wvalid = '1') then
                    -- Data write transfer complete
                    io_axi_wdata <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    
    --Terminal write count
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                -- reset condition
                fsm_last_write <= '0';
            else
                --The last write should be associated with a write address ready response
                if (fsm_write_index = x"00" and m00_axi_awready = '1') then
                    fsm_last_write  <= '1';
                end if;
            end if;
        end if;
    end process;
    
    --/*
    -- Check for last write completion.
    --
    -- This logic is to qualify the last write count with the final write
    -- response. This demonstrates how to confirm that a write has been
    -- committed.
    -- */
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                -- reset condition
                fsm_writes_done <= '0';
            else
                if (fsm_last_write = '1' and m00_axi_bvalid = '1' and io_axi_bready = '1') then
                    --The writes_done should be associated with a bready response
                    fsm_writes_done <= '1';
                elsif (fsm_start_axi_write = '1') then
                    fsm_writes_done <= '0';
                end if;
            end if;
        end if;
    end process;
    
    
    --------------
    --Read example
    --------------
	                                                                                                    
    --Terminal Read Count
    
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then                                                              
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                fsm_last_read <= '0';
            else
                if ((fsm_read_index = x"00") and (m00_axi_arready = '1')) then
                    --The last read should be associated with a read address ready response
                    fsm_last_read <= '1';
                end if;
	       end if;
       end if;
    end process;
    
    
    --/*
    -- Check for last read completion.
    --
    -- This logic is to qualify the last read count with the final read
    -- response/data.
    -- */
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                fsm_reads_done <= '0';
            else
                if (fsm_last_read = '1' and m00_axi_rvalid = '1' and io_axi_rready = '1') then
                    --The reads_done should be associated with a read ready response
                    fsm_reads_done <= '1';
                elsif (fsm_start_axi_read = '1') then
                    fsm_reads_done <= '0';
                end if;
            end if;
        end if;
    end process;
    
	
    ------------------------------/
    --Example design error register
    ------------------------------/
    
    --Data Comparison
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
              --fsm_read_mismatch <= '0';
            else
                if (m00_axi_rvalid = '1' and io_axi_rready = '1') then
                    --The read data when available (on axi_rready) is compared with the expected data
                    fsm_rdata <= m00_axi_rdata;
                end if;
            end if;
        end if;
    end process;
    
    -- Register and hold any data mismatches, or read/write interface errors
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                fsm_error_reg <= '0';
            else
                if (fsm_write_resp_error = '1' or fsm_read_resp_error = '1') then
                    --Capture any error types
                    fsm_error_reg <= '1';
                end if;
            end if;
        end if;
    end process;
    
    
    
    -- AXI access FSM
    --
    axi_FSM_proc : process (m00_axi_aclk)
        constant QSPI_SKIP_CNT                      : Integer := 9;
        constant QSPI_LOAD_CNT                      : Integer := 245;   -- test: 16;
        
        constant QSPI_BASE_ADDR                     : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310000";
        
        constant QSPI_SRR_ADDR                      : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310040";
        constant QSPI_SPICR_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310060";
        constant QSPI_SPISR_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310064";
        constant QSPI_SPIDTR_ADDR                   : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310068";
        constant QSPI_SPIDRR_ADDR                   : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"7531006c";
        constant QSPI_SPISSR_ADDR                   : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310070";
        constant QSPI_TX_OCCI_ADDR                  : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310074";
        constant QSPI_RX_OCCU_ADDR                  : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310078";
        
        constant QSPI_DGIER_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"7531001c";
        constant QSPI_IPISR_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310020";
        constant QSPI_IPIER_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310028";
        

        constant GPIO_LIGHTS_BASE_ADDR              : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"54040000";

        constant GPIO_LIGHTS_GPIO_DATA_ADDR         : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"54040000";
        constant GPIO_LIGHTS_GPIO_TRI_ADDR          : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"54040004";
        constant GPIO_LIGHTS_GPIO2_DATA_ADDR        : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"54040008";
        constant GPIO_LIGHTS_GPIO2_TRI_ADDR         : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"5404000c";
        
        
        type StateType                              is (
                                                        axi_init,
                                                        
                                                        qspi_reset_start,               qspi_reset_wait,
                                                        
                                                        fifo_reset_start,               fifo_reset_wait,                    fifo_reset_complete,
                                                        fifo_show_start,                fifo_show_wait,
                                                        fifo_deassert_start,            fifo_deassert_wait,                 fifo_deassert_complete,
                                                        fifo_int1_start,                fifo_int1_wait,
                                                        fifo_int2_start,                fifo_int2_wait,
                                                        
                                                        fifo_srec_load_0_start,         fifo_srec_load_0_wait,
                                                        fifo_srec_load_1_start,         fifo_srec_load_1_wait,
                                                        fifo_srec_load_2_start,         fifo_srec_load_2_wait,
                                                        fifo_srec_load_3_start,         fifo_srec_load_3_wait,
                                                        fifo_srec_load_4_start,         fifo_srec_load_4_wait,
                                                        fifo_srec_load_5_start,         fifo_srec_load_5_wait,
                                                        fifo_srec_load_prefill_init,    fifo_srec_load_prefill_start,       fifo_srec_load_prefill_loop,
                                                        fifo_srec_load_show_start,      fifo_srec_load_show_wait,
                                                        fifo_srec_int1_start,           fifo_srec_int1_wait,
                                                        fifo_srec_int2_start,           fifo_srec_int2_wait,
                                                        fifo_srec_int3_start,           fifo_srec_int3_wait,
                                                        fifo_srec_load_cs_start,        fifo_srec_load_cs_wait,
                                                        fifo_srec_load_master_start,    fifo_srec_load_master_wait,
                                                        fifo_srec_load_int_wait,
                                                        fifo_srec_load_un_cs_start,     fifo_srec_load_un_cs_wait,
                                                        fifo_srec_load_un_master_start, fifo_srec_load_un_master_wait,
                                                        fifo_srec_proc_show_start,      fifo_srec_proc_show_wait,
                                                        fifo_srec_load_strip_init,      fifo_srec_load_strip_start,         fifo_srec_load_strip_loop,
                                                        
                                                        fifo_srec_read_init,            fifo_srec_read_start,               fifo_srec_read_wait,
                                                        axi_dec_init,
                                                        
                                                        qspi_master_reset_start,        qspi_master_reset_wait,
                                                        
                                                        axi_good,                       axi_good_show_start,                axi_good_show_wait,                 axi_good_final,
                                                        axi_error,                      axi_error_show_start,               axi_error_show_wait,                axi_error_final
                                                    );
        variable state                              : StateType;
        
        type DecStateType                           is (
                                                        searchS,
                                                        getStype,
                                                        getCountHi,     getCountLo,
                                                        getAddr3Hi,     getAddr3Lo,     getAddr2Hi, getAddr2Lo,     getAddr1Hi, getAddr1Lo,     getAddr0Hi, getAddr0Lo,
                                                        getDataHi,      getDataLo,
                                                        getChecksumHi,  getCheckSumLo,
                                                        copy_start,     copy_wait,
                                                        exec_start,     exec_wait,
                                                        dec_stop
                                                    );
        variable fsm_dec_state                      : DecStateType;
        
        variable fsm_pad32                          : STD_LOGIC_VECTOR (31 downto 0);
        
        variable fsm_dec_s_type                     : Integer  range 0 to (2**4 - 1);
        
        variable fsm_fifo_prefill_cnt               : Integer  range 0 to (2**8 - 1);
        variable fsm_fifo_read_cnt                  : Integer  range 0 to (2**8 - 1);
        variable fsm_fifo_strip_cnt                 : Integer  range 0 to (2**4 - 1);
        
        variable fsm_dec_do_copy                    : STD_LOGIC;
        variable fsm_dec_do_exec                    : STD_LOGIC;
        variable fsm_dec_nibble                     : Integer  range 0 to ( 2**8 - 1 );
        variable fsm_dec_addrlen                    : Integer  range 2 to 4;
        variable fsm_dec_cnt                        : Integer  range 0 to ( 2**8 - 1 );
        variable fsm_dec_addr                       : Integer;
        variable fsm_dec_data                       : Integer  range 0 to ( 2**8 - 1 );
        variable fsm_dec_checksum                   : Integer  range 0 to ( 2**8 - 1 );
        
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0') then
                fsm_axi_awaddr          <= (others => '0');
                fsm_axi_wdata           <= (others => '0');
                fsm_axi_araddr          <= (others => '0');
                
                fsm_out_error           <= '0';
                fsm_out_resetn          <= not SREC_enable;
                
                fsm_start_axi_write     <= '0';
                fsm_start_axi_read      <= '0';
                
                fsm_fifo_reset_run      <= '0';
                fsm_srec_process_run    <= '0';
                fsm_master_reset_run    <= '0';
                
                fsm_pad32               := (others => '0');
                
                fsm_fifo_prefill_cnt    := 0;
                fsm_fifo_read_cnt       := 0;
                fsm_fifo_strip_cnt      := 0;
                
                fsm_srec_decoder_c      <= (others => '0');
                
                fsm_dec_state           := searchS;
                fsm_dec_s_type          := 0;
                fsm_dec_do_copy         := '0';
                fsm_dec_do_exec         := '0';
                fsm_dec_nibble          := 0;
                fsm_dec_addrlen         := 2;
                fsm_dec_cnt             := 0;
                fsm_dec_addr            := 0;
                fsm_dec_data            := 0;
                fsm_dec_checksum        := 0;
                
                DBG_out <= (others => '0');
                
                state := axi_init;
                
            else
                case state is
                    when axi_init =>
                        fsm_axi_awaddr          <= (others => '0');
                        fsm_axi_wdata           <= (others => '0');
                        fsm_axi_araddr          <= (others => '0');
                        
                        fsm_out_error           <= '0';
                        
                        fsm_start_axi_write     <= '0';
                        fsm_start_axi_read      <= '0';
                        
                        fsm_fifo_reset_run      <= '0';
                        fsm_srec_process_run    <= '0';
                        fsm_master_reset_run    <= '0';
                        
                        fsm_pad32               := (others => '0');
                        
                        fsm_fifo_prefill_cnt    := 0;
                        fsm_fifo_read_cnt       := 0;
                        fsm_fifo_strip_cnt      := 0;
                        
                        fsm_srec_decoder_c      <= (others => '0');
                        
                        fsm_dec_state           := searchS;
                        fsm_dec_s_type          := 0;
                        fsm_dec_do_copy         := '0';
                        fsm_dec_do_exec         := '0';
                        fsm_dec_nibble          := 0;
                        fsm_dec_addrlen         := 2;
                        fsm_dec_cnt             := 0;
                        fsm_dec_addr            := 0;
                        fsm_dec_data            := 0;
                        fsm_dec_checksum        := 0;
                        
                        DBG_out <= "00000001";
                        
                        if (fsm_fifo_reset_do = '1') then
                            DBG_out <= "00010000";
                            state := qspi_reset_start;
                            
                        elsif (fsm_srec_process_do = '1') then
                            DBG_out <= "00100000";
                            state := fifo_srec_load_0_start;
                            
                        elsif (fsm_master_reset_do = '1') then
                            DBG_out <= "00110000";
                            state := qspi_master_reset_start;
                        end if;
                        
                        
                    when qspi_reset_start =>
                        fsm_fifo_reset_run      <= '1';
                        DBG_out <= "11010001";
                        
                        -- Write to SPICR - Preparations: Master inhibit + FIFO reset (PG153 p106) - value: 0x0001e6
                        fsm_axi_awaddr          <= QSPI_SRR_ADDR;
                        fsm_axi_wdata           <= x"0000000a";
                        fsm_start_axi_write     <= '1';
                        state := qspi_reset_wait;
                        
                    when qspi_reset_wait =>
                        fsm_start_axi_write  <= '0';
                        DBG_out <= "11010010";
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            DBG_out <= "11010011";
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "11010100";
                                state := fifo_reset_start;
                            else
                                DBG_out <= "11010101";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_reset_start =>
                        fsm_fifo_reset_run      <= '1';
                        DBG_out <= "00010001";
                        
                        -- Write to SPICR - Preparations: Master inhibit + FIFO reset (PG153 p106) - value: 0x0001e6
                        fsm_axi_awaddr          <= QSPI_SPICR_ADDR;
                        fsm_axi_wdata           <= x"000001e6";
                        fsm_start_axi_write     <= '1';
                        state := fifo_reset_wait;
                        
                    when fifo_reset_wait =>
                        fsm_start_axi_write  <= '0';
                        DBG_out <= "00010010";
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            DBG_out <= "00010011";
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00010100";
                                state := fifo_reset_complete;
                            else
                                DBG_out <= "00010101";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_reset_complete =>
                        DBG_out <= "00010110";
                        fsm_fifo_reset_run <= '0';
                        if (fsm_fifo_reset_do = '0') then
                            DBG_out <= "00010111";
                            state := fifo_show_start;
                        end if;
                        
                    
                    when fifo_show_start =>
                        DBG_out <= "00011000";
                        fsm_axi_awaddr          <= GPIO_LIGHTS_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= x"00200000";     -- Blue LED
                        fsm_start_axi_write     <= '1';
                        state := fifo_show_wait;
                        
                    when fifo_show_wait =>
                        DBG_out <= "00011001";
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            DBG_out <= "00011010";
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00011011";
                                state := fifo_deassert_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                    
                        
                    when fifo_deassert_start =>
                        DBG_out <= "00011100";
                        -- Write to SPICR - Preparations: Master inhibit + FIFO reset (PG153 p106) - value: 0x0001e6
                        fsm_axi_awaddr          <= QSPI_SPISSR_ADDR;
                        fsm_axi_wdata           <= x"00000001";
                        fsm_start_axi_write     <= '1';
                        state := fifo_deassert_wait;
                        
                    when fifo_deassert_wait =>
                        DBG_out <= "00011101";
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                state := fifo_int1_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_int1_start =>
                        fsm_axi_awaddr          <= QSPI_IPIER_ADDR;
                        fsm_axi_wdata           <= x"00000000";                 -- Disable all interrupts
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_int1_wait;
                        
                    when fifo_int1_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00011110";
                                state := fifo_int2_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_int2_start =>
                        fsm_axi_awaddr          <= QSPI_DGIER_ADDR;
                        fsm_axi_wdata           <= x"80000000";                 -- Enable global interrupt
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_int2_wait;
                        
                    when fifo_int2_wait =>
                        fsm_start_axi_write <= '0';
                        fsm_fifo_reset_run  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00011111";
                                state := axi_init;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_load_0_start =>
                        fsm_srec_process_run    <= '1';
                        DBG_out <= "00100001";
                        
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"0000006c";                 -- QSPI 4x read mode
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_0_wait;
                        
                    when fifo_srec_load_0_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00100010";
                                fsm_fifo_read_cnt := fsm_fifo_read_cnt + 1;
                                
                                state           := fifo_srec_load_1_start;
                            else
                                state           := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_srec_load_1_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"00000000";                 -- Source address: MSB
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_1_wait;
                        
                    when fifo_srec_load_1_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00100011";
                                fsm_fifo_read_cnt := fsm_fifo_read_cnt + 1;
                                
                                state := fifo_srec_load_2_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_srec_load_2_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"00000080";                 -- Source address
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_2_wait;
                        
                    when fifo_srec_load_2_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00100100";
                                fsm_fifo_read_cnt := fsm_fifo_read_cnt + 1;
                                
                                state := fifo_srec_load_3_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_srec_load_3_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"00000000";                 -- Source address
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_3_wait;
                        
                    when fifo_srec_load_3_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                fsm_fifo_read_cnt := fsm_fifo_read_cnt + 1;
                                
                                state := fifo_srec_load_4_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_srec_load_4_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"00000000";                 -- Source address: LSB
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_4_wait;
                        
                    when fifo_srec_load_4_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00100101";
                                fsm_fifo_read_cnt := fsm_fifo_read_cnt + 1;
                                
                                state := fifo_srec_load_prefill_init;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_load_prefill_init =>
                        fsm_fifo_prefill_cnt := (QSPI_SKIP_CNT - 5) + QSPI_LOAD_CNT;
                        state := fifo_srec_load_prefill_start;
                        
                    when fifo_srec_load_prefill_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"00000000";                 -- Void data
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_prefill_loop;
                        
                    when fifo_srec_load_prefill_loop =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00100110";
                                fsm_fifo_read_cnt       := fsm_fifo_read_cnt    + 1;
                                fsm_fifo_prefill_cnt    := fsm_fifo_prefill_cnt - 1;
                                
                                if (fsm_fifo_prefill_cnt /= 0) then
                                    state := fifo_srec_load_prefill_start;
                                else
                                    state := fifo_srec_load_show_start;
                                end if;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_load_show_start =>
                        fsm_axi_awaddr          <= GPIO_LIGHTS_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= x"00002020";     -- Yellow LED
                        fsm_start_axi_write     <= '1';
                        state := fifo_srec_proc_show_wait;
                        
                    when fifo_srec_load_show_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00100111";
                                state := fifo_srec_int1_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    -- Reset all interrupt flags by reading current status ...
                    when fifo_srec_int1_start =>
                        fsm_axi_araddr          <= QSPI_IPISR_ADDR;
                        fsm_start_axi_read      <= '1';
                        state := fifo_srec_int1_wait;
                        
                    when fifo_srec_int1_wait =>
                        fsm_start_axi_read      <= '0';
                        if (m00_axi_rvalid = '1' and io_axi_rready = '1') then
                            if (m00_axi_rresp(1) = '0') then
                                fsm_pad32   := m00_axi_rdata;
                                state := fifo_srec_int2_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_araddr  <= (others => '0');
                        end if;
                        
                    -- ... and toggling these bits to zero
                    when fifo_srec_int2_start =>
                        fsm_axi_awaddr          <= QSPI_IPISR_ADDR;
                        fsm_axi_wdata           <= fsm_pad32;
                        fsm_start_axi_write     <= '1';
                        state := fifo_srec_int2_wait;
                        
                    when fifo_srec_int2_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                state := fifo_srec_int3_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    -- ... and then enabling interrupts to listen to.
                    when fifo_srec_int3_start =>
                        fsm_axi_awaddr          <= QSPI_IPIER_ADDR;
                        fsm_axi_wdata           <= x"00000004";                 -- Enable DTR empty interrupt
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_int3_wait;
                        
                    when fifo_srec_int3_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                state := fifo_srec_load_cs_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_load_cs_start =>
                        fsm_axi_awaddr          <= QSPI_SPISSR_ADDR;
                        fsm_axi_wdata           <= x"00000000";                 -- Issue chip select
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_cs_wait;
                        
                    when fifo_srec_load_cs_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00101000";
                                state := fifo_srec_load_master_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_load_master_start =>
                        fsm_axi_awaddr          <= QSPI_SPICR_ADDR;
                        fsm_axi_wdata           <= x"00000086";                 -- Enable master transaction
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_master_wait;
                        
                    when fifo_srec_load_master_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00101001";
                                state := fifo_srec_load_int_wait;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    -- Wait for interrupt of empty TX FIFO
                    when fifo_srec_load_int_wait =>
                        DBG_out <= "00101010";
                        if (qspi_irpt = '1') then
                            DBG_out <= "00101011";
                            state := fifo_srec_load_un_cs_start;
                        end if;
                        
                        
                    when fifo_srec_load_un_cs_start =>
                        fsm_axi_awaddr          <= QSPI_SPISSR_ADDR;
                        fsm_axi_wdata           <= x"00000001";                 -- Deassert chip select
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_un_cs_wait;
                        
                    when fifo_srec_load_un_cs_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00101100";
                                state := fifo_srec_load_un_master_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_load_un_master_start =>
                        fsm_axi_awaddr          <= QSPI_SPICR_ADDR;
                        fsm_axi_wdata           <= x"00000186";                 -- Disable master transaction
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_un_master_wait;
                        
                    when fifo_srec_load_un_master_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then 
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00101101";
                                state := fifo_srec_proc_show_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_proc_show_start =>
                        fsm_axi_awaddr          <= GPIO_LIGHTS_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= x"00200000";     -- Blue LED
                        fsm_start_axi_write     <= '1';
                        state := fifo_srec_proc_show_wait;
                        
                    when fifo_srec_proc_show_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00101110";
                                state := fifo_srec_load_strip_init;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    -- Strip first section off  
                    when fifo_srec_load_strip_init =>
                        fsm_fifo_strip_cnt := QSPI_SKIP_CNT;
                        state := fifo_srec_load_strip_start;
                        
                    when fifo_srec_load_strip_start =>
                        fsm_axi_araddr          <= QSPI_SPIDRR_ADDR;
                        fsm_start_axi_read      <= '1';
                        DBG_out <= "11110000";
                        state := fifo_srec_load_strip_loop;
                        
                    when fifo_srec_load_strip_loop =>
                        DBG_out <= "11110001";
                        fsm_start_axi_read      <= '0';
                        if (m00_axi_rvalid = '1' and io_axi_rready = '1') then
                            DBG_out <= "11110010";
                            if (m00_axi_rresp(1) = '0') then
                                DBG_out <= "00101111";
                                fsm_fifo_strip_cnt  := fsm_fifo_strip_cnt   - 1;
                                fsm_fifo_read_cnt   := fsm_fifo_read_cnt    - 1;
                                
                                if (fsm_fifo_strip_cnt /= 0) then
                                    state := fifo_srec_load_strip_start;
                                else
                                    state := fifo_srec_read_init;
                                end if;
                            else
                                DBG_out <= "11110011";
                                state := axi_error;
                            end if;
                            fsm_axi_araddr  <= (others => '0');
                        end if;
                        
                        
                    -- Entry point of SREC decoder   
                    when fifo_srec_read_init =>
                        DBG_out <= "01101111";
                        if (fsm_fifo_read_cnt = 0) then
                            -- Get next chunk from QSPI FLASH chip
                            state := fifo_srec_load_0_start;
                        else
                            state := fifo_srec_read_start;
                        end if;
                        
                    when fifo_srec_read_start =>
                        fsm_axi_araddr          <= QSPI_SPIDRR_ADDR;
                        fsm_start_axi_read      <= '1';
                        state := fifo_srec_read_wait;
                        
                    when fifo_srec_read_wait =>    
                        fsm_start_axi_read      <= '0';
                        if (m00_axi_rvalid = '1' and io_axi_rready = '1') then
                            if (m00_axi_rresp(1) = '0') then
                                DBG_out <= "01100000";
                                fsm_fifo_read_cnt   := fsm_fifo_read_cnt    - 1;
                                fsm_srec_decoder_c  <= m00_axi_rdata(7 downto 0);
                                state := axi_dec_init;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_araddr  <= (others => '0');
                        end if;
                        
                        
                    when axi_dec_init =>
                        -- Default target state if not otherwise overwritten
                        DBG_out <= "01100001";
                        state := fifo_srec_read_init;
                        
                        case fsm_dec_state is
                            when searchS =>
                                fsm_dec_do_copy     := '0';
                                fsm_dec_do_exec     := '0';
                                fsm_dec_nibble      := 0;
                                fsm_dec_addrlen     := 2;
                                fsm_dec_cnt         := 0;
                                fsm_dec_addr        := 0;
                                fsm_dec_data        := 0;
                                fsm_dec_checksum    := 0;
                                DBG_out <= "01100010";
                                
                                if ((fsm_srec_decoder_c = x"53")  or  (fsm_srec_decoder_c = x"73")) then
                                    -- 'S' found
                                    DBG_out <= "01100011";
                                    fsm_dec_state := getStype;
                                end if;
                                
                            when getStype =>
                                DBG_out <= "01100100";
                                if ((48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 58)) then
                                    DBG_out <= "01100101";
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;    -- hex character '0'
                                    fsm_dec_s_type := fsm_dec_nibble;
                                    
                                    case fsm_dec_s_type is
                                        when 1 =>
                                            fsm_dec_addrlen := 2;
                                            fsm_dec_do_copy := '1';
                                            
                                        when 2 =>
                                            fsm_dec_addrlen := 3;
                                            fsm_dec_do_copy := '1';
                                            
                                        when 3 =>
                                            fsm_dec_addrlen := 4;
                                            fsm_dec_do_copy := '1';
                                            
                                        when 7 =>
                                            fsm_dec_addrlen := 4;
                                            fsm_dec_do_exec := '1';
                                            
                                        when 8 =>
                                            fsm_dec_addrlen := 3;
                                            fsm_dec_do_exec := '1';
                                            
                                        when 9 =>
                                            fsm_dec_addrlen := 2;
                                            fsm_dec_do_exec := '1';
                                            
                                        when others =>
                                            fsm_dec_addrlen := 2;
                                            
                                    end case;  -- fsm_dec_s_type
                                    
                                    fsm_dec_state := getCountHi;
                                    
                                else
                                    -- Out of sync
                                    fsm_dec_state := searchS;
                                end if;
                                
                            when getCountHi =>
                                DBG_out <= "01100110";
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_cnt         := 16 * fsm_dec_nibble;
                                fsm_dec_checksum    := 16 * fsm_dec_nibble;
                                
                                fsm_dec_state := getCountLo;
                                
                            when getCountLo =>
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                DBG_out <= "01100111";
                                fsm_dec_cnt         := fsm_dec_cnt + fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + fsm_dec_nibble) mod 256;
                                
                                if    (fsm_dec_addrlen = 4) then
                                    DBG_out <= "01101000";
                                    fsm_dec_state := getAddr3Hi;
                                    
                                elsif (fsm_dec_addrlen = 3) then
                                    DBG_out <= "01101001";
                                    fsm_dec_state := getAddr2Hi;
                                    
                                elsif (fsm_dec_addrlen = 2) then
                                    DBG_out <= "01101010";
                                    fsm_dec_state := getAddr1Hi;
                                    
                                else
                                    -- Out of sync
                                    fsm_dec_state := searchS;
                                end if;
                                
                            when getAddr3Hi =>
                                DBG_out <= "01101011";
                                fsm_dec_cnt := fsm_dec_cnt - 1;
                                
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_addr        := 268435456 * fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + 16 * fsm_dec_nibble) mod 256;
                                
                                fsm_dec_state := getAddr3Lo;
                                
                            when getAddr3Lo =>
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_addr        := fsm_dec_addr + 16777216 * fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + fsm_dec_nibble) mod 256;
                                DBG_out <= "01101100";
                                
                                fsm_dec_state := getAddr2Hi;
                                
                            when getAddr2Hi =>
                                DBG_out <= "01101101";
                                fsm_dec_cnt := fsm_dec_cnt - 1;
                                
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_addr        := fsm_dec_addr + 1048576 * fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + 16 * fsm_dec_nibble) mod 256;
                                
                                fsm_dec_state := getAddr2Lo;
                                
                            when getAddr2Lo =>
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_addr        := fsm_dec_addr + 65536 * fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + fsm_dec_nibble) mod 256;
                                DBG_out <= "01101110";
                                
                                fsm_dec_state := getAddr1Hi;
                                
                            when getAddr1Hi =>
                                DBG_out <= "01101111";
                                fsm_dec_cnt := fsm_dec_cnt - 1;
                                
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_addr        := fsm_dec_addr + 4096 * fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + 16 * fsm_dec_nibble) mod 256;
                                
                                fsm_dec_state := getAddr1Lo;
                                
                            when getAddr1Lo =>
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_addr        := fsm_dec_addr + 256 * fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + fsm_dec_nibble) mod 256;
                                DBG_out <= "10100000";
                                
                                fsm_dec_state := getAddr0Hi;
                                
                            when getAddr0Hi =>
                                DBG_out <= "10100001";
                                fsm_dec_cnt := fsm_dec_cnt - 1;
                                
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_addr        := fsm_dec_addr + fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + 16 * fsm_dec_nibble) mod 256;
                                
                                fsm_dec_state := getAddr0Lo;
                                
                            when getAddr0Lo =>
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_addr        := fsm_dec_addr + fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + fsm_dec_nibble) mod 256;
                                DBG_out <= "10100010";
                                
                                if (fsm_dec_cnt > 1) then
                                    DBG_out <= "10100011";
                                    fsm_dec_state := getDataHi;
                                else
                                    DBG_out <= "10100100";
                                    fsm_dec_state := getChecksumHi;
                                end if;
                                
                            when getDataHi =>
                                DBG_out <= "10100101";
                                fsm_dec_cnt := fsm_dec_cnt - 1;
                                
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_data        := 16 * fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + 16 * fsm_dec_nibble) mod 256;
                                
                                fsm_dec_state := getDataLo;
                                
                            when getDataLo =>
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_data        := fsm_dec_data + fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + fsm_dec_nibble) mod 256;
                                DBG_out <= "10100110";
                                
                                if (fsm_dec_do_copy = '1') then
                                    -- Continue with next clock @ copy_start
                                    DBG_out <= "10100111";
                                    state           := axi_dec_init;
                                    fsm_dec_state   := copy_start;
                                else
                                    -- Consume and process
                                    DBG_out <= "10101000";
                                    if (fsm_dec_cnt > 1) then
                                        DBG_out <= "10101001";
                                        fsm_dec_state := getDataHi;
                                    else
                                        DBG_out <= "10101010";
                                        fsm_dec_state := getChecksumHi;
                                    end if;
                                end if;
                                
                            when copy_start =>
                                DBG_out <= "10101011";
                                fsm_axi_awaddr          <= std_logic_vector(to_unsigned(fsm_dec_addr, fsm_axi_awaddr'length));
                                fsm_axi_wdata           <= std_logic_vector(to_unsigned(fsm_dec_data, fsm_axi_wdata'length));
                                fsm_start_axi_write     <= '1';
                                
                                fsm_dec_addr            := fsm_dec_addr + 1;
                                
                                -- Continue with next clock @ copy_wait
                                state           := axi_dec_init;
                                fsm_dec_state   := copy_wait;
                                
                            when copy_wait =>
                                DBG_out <= "10101100";
                                fsm_start_axi_write     <= '0';
                                
                                if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                                    if (m00_axi_bresp(1) = '0') then
                                        DBG_out <= "10101101";
                                        if (fsm_dec_cnt > 1) then
                                            DBG_out <= "10101110";
                                            fsm_dec_state := getDataHi;
                                        else
                                            DBG_out <= "10101111";
                                            fsm_dec_state := getChecksumHi;
                                        end if;
                                    else
                                        DBG_out <= "11100000";
                                        fsm_dec_state := dec_stop;
                                    end if;
                                    fsm_axi_awaddr      <= (others => '0');
                                    fsm_axi_wdata       <= (others => '0');
                                    
                                else
                                    -- Continue with this state
                                    DBG_out <= "11100001";
                                    state           := axi_dec_init;
                                    fsm_dec_state   := copy_wait;
                                end if;
                                
                            when getChecksumHi =>
                                DBG_out <= "11100010";
                                fsm_dec_cnt := fsm_dec_cnt - 1;
                                
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_checksum    := (fsm_dec_checksum + 16 * fsm_dec_nibble) mod 256;
                                
                                fsm_dec_state := getChecksumLo;
                                
                            when getChecksumLo =>
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_checksum := (fsm_dec_checksum + fsm_dec_nibble) mod 256;
                                DBG_out <= "11100011";
                                
                                if (fsm_dec_checksum = 255) then
                                    DBG_out <= "11100100";
                                    if (fsm_dec_do_exec = '1') then
                                        DBG_out <= "11100101";
                                        fsm_dec_state   := exec_start;
                                    else
                                        DBG_out <= "11100110";
                                        fsm_dec_state   := searchS;
                                    end if;
                                    
                                else
                                    -- Bad checksum
                                    DBG_out <= "11100111";
                                    fsm_dec_state   := dec_stop;
                                    state           := axi_error;
                                end if;
                                
                                
                            when exec_start =>
                                -- Start CPU
                                DBG_out <= "11101000";
                                fsm_out_resetn  <= '1';
                                
                                fsm_dec_state   := dec_stop;
                                state           := axi_init;
                                
                            when dec_stop =>
                                -- Never come out
                                
                            when others =>
                                DBG_out <= "11101001";
                                fsm_dec_state := dec_stop;
                        end case;   -- fsm_dec_state
                        
                        
                    when qspi_master_reset_start =>
                        fsm_master_reset_run    <= '1';
                        DBG_out <= "00110001";
                        
                        fsm_axi_awaddr          <= QSPI_SRR_ADDR;
                        fsm_axi_wdata           <= x"0000000a";                 -- Command to master reset the QSPI device
                        fsm_start_axi_write     <= '1';
                        
                        state := qspi_master_reset_wait;
                        
                    when qspi_master_reset_wait =>
                        fsm_start_axi_write     <= '0';
                        DBG_out <= "00110010";
                        
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            DBG_out <= "00110011"; 
                            fsm_master_reset_run <= '0';
                            
                            if (m00_axi_bresp(1) = '0') then
                                DBG_out <= "00110100";
                                state := axi_good;
                            else
                                DBG_out <= "00110101";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when axi_good =>
                        DBG_out <= "00110110";
                        fsm_axi_awaddr          <= (others => '0');
                        fsm_axi_wdata           <= (others => '0');
                        fsm_axi_araddr          <= (others => '0');
                        
                        fsm_out_error           <= '0';
                        
                        fsm_start_axi_write     <= '0';
                        fsm_start_axi_read      <= '0';
                        
                        fsm_fifo_reset_run      <= '0';
                        fsm_srec_process_run    <= '0';
                        fsm_master_reset_run    <= '0';
                        
                        fsm_srec_decoder_c      <= (others => '0');
                        
                        state := axi_good_show_start;
                        
                    when axi_good_show_start =>
                        fsm_axi_awaddr          <= GPIO_LIGHTS_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= x"00002000";     -- Green LED
                        fsm_start_axi_write     <= '1';
                        state := axi_good_show_wait;
                        
                    when axi_good_show_wait =>
                        fsm_start_axi_write <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                state := axi_good_final;
                            else
                                state := axi_error;
                            end if;
                            
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when axi_good_final =>
                        DBG_out <= "00110111";
                        -- GOOD
                        
                        
                    when axi_error =>
                        -- Some error has occured.
                        fsm_out_error <= '1';
                        --DBG_out <= "00111111";
                        
                        fsm_fifo_reset_run      <= '0';
                        fsm_srec_process_run    <= '0';
                        fsm_master_reset_run    <= '0';
                        
                        fsm_out_resetn          <= '1';     -- Start CPU for debugging
                        
                        state := axi_error_show_start;
                        
                    when axi_error_show_start =>
                        --DBG_out <= "00111110";
                        fsm_axi_awaddr          <= GPIO_LIGHTS_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= x"00000020";     -- Red LED
                        fsm_start_axi_write     <= '1';
                        state := axi_error_show_wait;
                        
                    when axi_error_show_wait =>
                        --DBG_out <= "00111101";
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            --DBG_out <= "00111100";
                            state := axi_error_final;
                            
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when axi_error_final =>
                        --DBG_out <= "00111011";
                        -- ERROR
                        
                        
                    when others =>
                        state := axi_init;
                        
                end case;   -- state
            end if;
        end if;
    end process axi_FSM_proc;
    
    
    -- MAIN FSM
    --
    main_FSM_proc : process (m00_axi_aclk)
        type StateType                              is (
                                                        init,
                                                        fifo_reset_start, fifo_reset_wait, 
                                                        fifo_read_activate_start, fifo_read_activate_wait,
                                                        master_reset_start, master_reset_wait,
                                                        final
                                                    );
        variable state                              : StateType;
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0') then
                fsm_main_done           <= '0';
                fsm_fifo_reset_do       <= '0';
                fsm_srec_process_do     <= '0';
                fsm_master_reset_do     <= '0';
                state := init;
                
            else
                case state is
                    when init =>
                        fsm_main_done           <= '0';
                        fsm_fifo_reset_do       <= '0';
                        fsm_srec_process_do     <= '0';
                        fsm_master_reset_do     <= '0';
                        
                        if (SREC_enable = '0') then
                            -- Stay at init when SREC is disabled
                            state := init;
                            
                        elsif (fsm_init_txn_pulse = '1') then
                            state := fifo_reset_start;
                        end if;
                        
                        
                    when fifo_reset_start =>
                        fsm_fifo_reset_do <= '1';
                        if (fsm_fifo_reset_run = '1') then
                            fsm_fifo_reset_do <= '0';
                            state := fifo_reset_wait;
                        end if;
                        
                    when fifo_reset_wait =>
                        if (fsm_fifo_reset_run = '0') then
                            state := fifo_read_activate_start;
                        end if;
                        
                        
                    when fifo_read_activate_start =>
                        fsm_srec_process_do <= '1';
                        
                        if (fsm_srec_process_run = '1') then
                            fsm_srec_process_do <= '0';
                            state := fifo_read_activate_wait;
                        end if;
                        
                    when fifo_read_activate_wait =>
                        if (fsm_srec_process_run = '0') then
                            state := master_reset_start;
                        end if;
                        
                        
                    when master_reset_start =>
                        fsm_master_reset_do <= '1';
                        if (fsm_master_reset_run = '1') then
                            state := master_reset_wait;
                        end if;
                        
                    when master_reset_wait =>
                        fsm_master_reset_do <= '0';
                        if (fsm_master_reset_run = '0') then
                            state := final;
                        end if;
                        
                        
                    when final =>
                        if (fsm_out_error = '0') then
                            fsm_main_done <= '1';
                        end if;
                        
                    when others =>
                        state := init;
                        
                end case;
            end if;
        end if;
    end process main_FSM_proc;
    
end Behavioral;
