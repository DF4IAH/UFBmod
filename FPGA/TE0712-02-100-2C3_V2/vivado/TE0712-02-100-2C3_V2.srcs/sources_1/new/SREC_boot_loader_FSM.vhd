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
        fsm_axi_last_b                                  : out   STD_LOGIC_VECTOR (  1 downto 0 );
        
        qspi_irpt                                       : in    STD_LOGIC;
        
        SREC_start                                      : in    STD_LOGIC;
        SREC_enable                                     : in    STD_LOGIC;
        
        SREC_error                                      : out   STD_LOGIC;
        SREC_resetn                                     : out   STD_LOGIC;
        SREC_done                                       : out   STD_LOGIC;
        
        DBG_FSM_out                                     : out   STD_LOGIC_VECTOR( 15 downto 0 );
        DBG_AXI_DtaPad                                  : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_AXI_Addr                                    : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Sig_NxtLoad_out                             : out   STD_LOGIC;
        DBG_Sig_NxtWrite_out                            : out   STD_LOGIC;
        DBG_Flash_RD_00                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_01                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_02                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_03                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_04                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_05                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_06                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_07                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_08                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_09                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_10                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_RD_11                                 : out   STD_LOGIC_VECTOR( 31 downto 0 );
        DBG_Flash_Adr                                   : out   STD_LOGIC_VECTOR( 31 downto 0 )
        
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
  --signal fsm_rdata                                    : STD_LOGIC_VECTOR ( 31 downto 0 );
    
    
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
    
    -- Variable pulled out of process due to never-ending loop with Vivado 2020.2
    signal fsm_fifo_int_pstdly_cnt                      : Integer  range 0 to (2**4 - 1);
    signal fsm_fifo_prefill_cnt                         : Integer  range 0 to (2**8 - 1);
    signal fsm_fifo_read_cnt                            : Integer  range 0 to (2**8 - 1);
    

    
    -- AXI access FSM
  --signal fsm_fifo_reset_run                           : STD_LOGIC;
    signal fsm_srec_process_run                         : STD_LOGIC;
    signal fsm_master_reset_run                         : STD_LOGIC;
    signal fsm_srec_decoder_c                           : STD_LOGIC_VECTOR (  7 downto 0 );
    signal fsm_out_resetn                               : STD_LOGIC;
    signal fsm_out_error                                : STD_LOGIC;
    
    -- MAIN FSM
  --signal fsm_fifo_reset_do                            : STD_LOGIC;
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
                io_axi_bready   <= '0';
                fsm_axi_last_b  <= "00";
            else
                if (m00_axi_bvalid = '1' and io_axi_bready = '0') then
                    -- accept/acknowledge bresp with axi_bready by the master
                    -- when M_AXI_BVALID is asserted by slave
                    io_axi_bready   <= '1';
                    fsm_axi_last_b  <= m00_axi_bresp;
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
	--keep track of read ready length
    
    process (m00_axi_aclk)
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
                fsm_read_index <= (others => '0');
            else
                if (fsm_start_axi_read = '1') then
                    -- Signals a new read address is
                    -- available by user logic
                    --fsm_read_index <= std_logic_vector(unsigned(fsm_read_index) + 1);  -- removed by DF4IAH
                    fsm_read_index <= (others => '0');  -- added by DF4IAH
                elsif (m00_axi_arready = '1') then
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
                else
                    fsm_last_read <= '0';
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
    --process (m00_axi_aclk)
    --begin
    --    if (rising_edge (m00_axi_aclk)) then
    --        if (m00_axi_aresetn = '0' or fsm_init_txn_pulse = '1') then
    --          --fsm_read_mismatch <= '0';
    --        else
    --            if (m00_axi_rvalid = '1' and io_axi_rready = '1') then
    --                --The read data when available (on axi_rready) is compared with the expected data
    --                --fsm_rdata <= m00_axi_rdata;
    --           end if;
    --        end if;
    --    end if;
    --end process;
    
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
        constant QSPI_LOAD_CNT                      : Integer := 64;  -- min. 48, max. 245
        
        constant QSPI_BASE_ADDR                     : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310000";
        
        constant QSPI_SRR_ADDR                      : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310040";
        constant QSPI_SPICR_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310060";
        constant QSPI_SPISR_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310064";
        constant QSPI_SPIDTR_ADDR                   : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310068";
        constant QSPI_SPIDRR_ADDR                   : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"7531006c";
        constant QSPI_SPISSR_ADDR                   : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310070";
        constant QSPI_TX_OCCU_ADDR                  : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310074";
        constant QSPI_RX_OCCU_ADDR                  : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310078";
        
        constant QSPI_DGIER_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"7531001c";
        constant QSPI_IPISR_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310020";
        constant QSPI_IPIER_ADDR                    : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"75310028";
        
        
        constant GPIO_LIGHTS_BASE_ADDR              : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"54040000";
        
        constant GPIO_LIGHTS_GPIO_DATA_ADDR         : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"54040000";
        constant GPIO_LIGHTS_GPIO_TRI_ADDR          : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"54040004";
        constant GPIO_LIGHTS_GPIO2_DATA_ADDR        : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"54040008";
        constant GPIO_LIGHTS_GPIO2_TRI_ADDR         : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"5404000c";
        
        constant GPIO_DBG_GPIO_DATA_ADDR            : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"74310000";
        constant GPIO_DBG_GPIO_TRI_ADDR             : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"74310004";
        constant GPIO_DBG_GPIO2_DATA_ADDR           : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"74310008";
        constant GPIO_DBG_GPIO2_TRI_ADDR            : STD_LOGIC_VECTOR ( 31 downto 0 ) := x"7431000c";
        
        
        type StateType                              is (
                                                        axi_init,
                                                        
                                                        qspi_reset_start,               qspi_reset_wait,
                                                        fifo_reset_start,               fifo_reset_wait,                  --fifo_reset_complete,
                                                        fifo_show_start,                fifo_show_wait,
                                                        fifo_deassert_start,            fifo_deassert_wait,                 fifo_deassert_complete,
                                                        fifo_int1_start,                fifo_int1_wait,
                                                        fifo_int2_start,                fifo_int2_wait,
                                                        fifo_srec_load_0_start,         fifo_srec_load_0_wait,
                                                        fifo_srec_load_1_start,         fifo_srec_load_1_wait,
                                                        fifo_srec_load_2_start,         fifo_srec_load_2_wait,
                                                        fifo_srec_load_3_start,         fifo_srec_load_3_wait,
                                                        fifo_srec_load_4_start,         fifo_srec_load_4_wait,
                                                        fifo_srec_load_prefill_init,    fifo_srec_load_prefill_start,       fifo_srec_load_prefill_loop,
                                                        fifo_srec_load_show_start,      fifo_srec_load_show_wait,
                                                        fifo_srec_int1_start,           fifo_srec_int1_wait,
                                                        fifo_srec_int2_start,           fifo_srec_int2_wait,
                                                        fifo_srec_int3_start,           fifo_srec_int3_wait,
                                                        fifo_srec_load_cs_start,        fifo_srec_load_cs_wait,
                                                        fifo_srec_load_master_start,    fifo_srec_load_master_wait,
                                                        fifo_srec_load_int_wait,
                                                        fifo_srec_load_int_pstdly_start,fifo_srec_load_int_pstdly_wait,     fifo_srec_load_int_pstdly_loop,
                                                        fifo_srec_load_un_cs_start,     fifo_srec_load_un_cs_wait,
                                                        fifo_srec_load_un_master_start, fifo_srec_load_un_master_wait,
                                                        fifo_srec_proc_show_start,      fifo_srec_proc_show_wait,
                                                        fifo_srec_load_strip_init,      fifo_srec_load_strip_start,         fifo_srec_load_strip_loop,
                                                        
                                                        fifo_srec_read_init,            fifo_srec_read_start,               fifo_srec_read_wait,
                                                        axi_dec_init,
                                                        
                                                        qspi_master_reset_start,        qspi_master_reset_wait,
                                                        
                                                        axi_good,                       axi_good_show_start,                axi_good_show_wait,                 axi_good_final,
                                                        axi_error,                      axi_error_show_start,               axi_error_show_wait,                axi_error_final,
                                                        
                                                        dbg1_req_start,                  dbg2_req_start,
                                                        
                                                        dbg_sub_enter,
                                                        dbg_sub_read1_start,            dbg_sub_read1_wait,                 dbg_sub_write1_start,               dbg_sub_write1_wait,
                                                        dbg_sub_read2_start,            dbg_sub_read2_wait,                 dbg_sub_write2_start,               dbg_sub_write2_wait,
                                                        dbg_sub_return
                                                    );
        variable state                              : StateType;
        variable dbg_state                          : StateType;
        
        type DecStateType                           is (
                                                        searchS,
                                                        getStype,
                                                        getCountHi,         getCountLo,
                                                        getAddr3Hi,         getAddr3Lo,     getAddr2Hi, getAddr2Lo,         getAddr1Hi, getAddr1Lo,             getAddr0Hi, getAddr0Lo,
                                                        getDataHi,          getDataLo,
                                                        getChecksumHi,      getCheckSumLo,
                                                        write_prepare,      write_start,    write_wait,
                                                        exec_start,         exec_wait,
                                                        dec_stop
                                                    );
        variable fsm_dec_state                      : DecStateType;
        
        variable fsm_addr                           : STD_LOGIC_VECTOR (31 downto 0);
        variable fsm_pad32                          : STD_LOGIC_VECTOR (31 downto 0);
        variable fsm_copy32                         : STD_LOGIC_VECTOR (31 downto 0);
        
        variable DBG_Flash_RD_vec                   : STD_LOGIC_VECTOR (383 downto 0);
        
        variable fsm_dec_s_type                     : Integer  range 0 to (2**4 - 1);
        
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
                
              --fsm_fifo_reset_run      <= '0';
                fsm_srec_process_run    <= '0';
                fsm_master_reset_run    <= '0';
                
                fsm_addr                := (others => '0');
                fsm_pad32               := (others => '0');
                fsm_copy32              := (others => '0');
                
                DBG_Flash_RD_vec        := (others => '0');
                
                fsm_fifo_prefill_cnt    <= 0;
                fsm_fifo_read_cnt       <= 0;
                fsm_fifo_int_pstdly_cnt <= 0;
                
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
                
                DBG_FSM_out             <= (others => '0');
                DBG_AXI_DtaPad          <= (others => '0');
                DBG_AXI_Addr            <= (others => '0');
                DBG_Sig_NxtLoad_out     <= '0';
                DBG_Sig_NxtWrite_out    <= '0';
                DBG_Flash_Adr           <= (others => '0');
                DBG_Flash_RD_00         <= (others => '0');
                DBG_Flash_RD_01         <= (others => '0');
                DBG_Flash_RD_02         <= (others => '0');
                DBG_Flash_RD_03         <= (others => '0');
                DBG_Flash_RD_04         <= (others => '0');
                DBG_Flash_RD_05         <= (others => '0');
                DBG_Flash_RD_06         <= (others => '0');
                DBG_Flash_RD_07         <= (others => '0');
                
                state       := axi_init;
                dbg_state   := axi_error_final;
                
            else
                case state is
                    when axi_init =>
                        fsm_axi_awaddr          <= (others => '0');
                        fsm_axi_wdata           <= (others => '0');
                        fsm_axi_araddr          <= (others => '0');
                        
                        fsm_out_error           <= '0';
                        
                        fsm_start_axi_write     <= '0';
                        fsm_start_axi_read      <= '0';
                        
                      --fsm_fifo_reset_run      <= '0';
                        fsm_srec_process_run    <= '0';
                        fsm_master_reset_run    <= '0';
                        
                        -- Enter start address
                        fsm_addr                := x"00800000";
                        
                        fsm_pad32               := (others => '0');
                        fsm_copy32              := (others => '0');
                        
                        fsm_fifo_prefill_cnt    <= 0;
                        fsm_fifo_read_cnt       <= 0;
                        fsm_fifo_int_pstdly_cnt <= 0;
                        
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
                        
                        DBG_FSM_out <= x"0001";
                        
                        DBG_AXI_DtaPad          <= (others => '0');
                        
                        dbg_state := axi_error_final;
                        
                      --if (fsm_fifo_reset_do = '1') then
                      --    DBG_FSM_out <= x"0010";
                      --    state := qspi_reset_start;
                      --    
                      --els
                        if (fsm_srec_process_do = '1') then
                            DBG_FSM_out <= x"0020";
                            state := qspi_reset_start;
                            
                        elsif (fsm_master_reset_do = '1') then
                            DBG_FSM_out <= x"0030";
                            state := qspi_master_reset_start;
                        end if;
                        
                        
                    -- ENTER
                    when qspi_reset_start =>
                      --fsm_fifo_reset_run      <= '1';
                        DBG_FSM_out <= x"1000";
                        
                        -- Write to SPICR - Preparations: Master inhibit + FIFO reset (PG153 p106) - value: 0x0001e6
                        fsm_axi_awaddr          <= QSPI_SRR_ADDR;
                        fsm_axi_wdata           <= x"0000000a";
                        fsm_start_axi_write     <= '1';
                        state := qspi_reset_wait;
                        
                    when qspi_reset_wait =>
                        fsm_start_axi_write  <= '0';
                        DBG_FSM_out <= x"1001";
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            DBG_FSM_out <= x"1002";
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1003";
                                state := fifo_reset_start;
                            else
                                DBG_FSM_out <= x"1004";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_reset_start =>
                      --fsm_fifo_reset_run      <= '1';
                        DBG_FSM_out <= x"1010";
                        
                        -- Write to SPICR - Preparations: Master inhibit + FIFO reset (PG153 p106) - value: 0x0001e6
                        fsm_axi_awaddr          <= QSPI_SPICR_ADDR;
                        fsm_axi_wdata           <= x"000001e6";
                        fsm_start_axi_write     <= '1';
                        state := fifo_reset_wait;
                        
                    when fifo_reset_wait =>
                        fsm_start_axi_write  <= '0';
                        DBG_FSM_out <= x"1011";
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            DBG_FSM_out <= x"1012";
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1013";
                                state := fifo_show_start;   -- fifo_reset_complete;
                            else
                                DBG_FSM_out <= x"1014";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                  --when fifo_reset_complete =>
                  --    DBG_FSM_out <= x"1015";
                  --    fsm_fifo_reset_run <= '0';
                  --    if (fsm_fifo_reset_do = '0') then
                  --        DBG_FSM_out <= x"1016";
                  --        state := fifo_show_start;
                  --    end if;
                        
                    
                    when fifo_show_start =>
                        DBG_FSM_out <= x"1020";
                        fsm_axi_awaddr          <= GPIO_LIGHTS_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= x"00200000";     -- Blue LED
                        fsm_start_axi_write     <= '1';
                        state := fifo_show_wait;
                        
                    when fifo_show_wait =>
                        DBG_FSM_out <= x"1021";
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            DBG_FSM_out <= x"1022";
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1023";
                                state := fifo_deassert_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                    
                        
                    when fifo_deassert_start =>
                        DBG_FSM_out <= x"1100";
                        -- Write to SPICR - Preparations: Master inhibit + FIFO reset (PG153 p106) - value: 0x0001e6
                        fsm_axi_awaddr          <= QSPI_SPISSR_ADDR;
                        fsm_axi_wdata           <= x"00000001";
                        fsm_start_axi_write     <= '1';
                        state := fifo_deassert_wait;
                        
                    when fifo_deassert_wait =>
                        DBG_FSM_out <= x"1101";
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
                                DBG_FSM_out <= x"1102";
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
                      --fsm_fifo_reset_run  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1104";
                                state := fifo_srec_load_0_start;    -- axi_init;                              -- Return to initial selector
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_load_0_start =>
                        fsm_srec_process_run    <= '1';
                        DBG_FSM_out <= x"1112";
                        DBG_Sig_NxtLoad_out     <= '1';
                        fsm_fifo_read_cnt       <= 0; 
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"0000006c";                 -- QSPI 4x read mode
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_0_wait;
                        
                    when fifo_srec_load_0_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1113";
                                fsm_fifo_read_cnt <= fsm_fifo_read_cnt + 1;
                                
                                state           := fifo_srec_load_1_start;
                            else
                                state           := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_srec_load_1_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"000000" & fsm_addr(31 downto 24);   -- Source address: MSB
                        fsm_start_axi_write     <= '1';
                        DBG_FSM_out <= x"1114";
                        
                        state := fifo_srec_load_1_wait;
                        
                    when fifo_srec_load_1_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1115";
                                fsm_fifo_read_cnt <= fsm_fifo_read_cnt + 1;
                                
                                state := fifo_srec_load_2_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_srec_load_2_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"000000" & fsm_addr(23 downto 16);   -- Source address
                        fsm_start_axi_write     <= '1';
                        DBG_FSM_out <= x"1116";
                        
                        state := fifo_srec_load_2_wait;
                        
                    when fifo_srec_load_2_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1117";
                                fsm_fifo_read_cnt <= fsm_fifo_read_cnt + 1;
                                
                                state := fifo_srec_load_3_start;
                            else
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_srec_load_3_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"000000" & fsm_addr(15 downto  8);   -- Source address
                        fsm_start_axi_write     <= '1';
                        DBG_FSM_out <= x"1118";
                        
                        state := fifo_srec_load_3_wait;
                        
                    when fifo_srec_load_3_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1119";
                                fsm_fifo_read_cnt <= fsm_fifo_read_cnt + 1;
                                
                                state := fifo_srec_load_4_start;
                            else
                                DBG_FSM_out <= x"111a";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when fifo_srec_load_4_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"000000" & fsm_addr( 7 downto  0);   -- Source address: LSB
                        fsm_start_axi_write     <= '1';
                        DBG_FSM_out <= x"111b";
                        
                        state := fifo_srec_load_4_wait;
                        
                    when fifo_srec_load_4_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"111c";
                                fsm_fifo_read_cnt <= fsm_fifo_read_cnt + 1;
                                
                                state := fifo_srec_load_prefill_init;
                            else
                                DBG_FSM_out <= x"111d";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_load_prefill_init =>
                        fsm_fifo_prefill_cnt <= QSPI_LOAD_CNT;
                        DBG_FSM_out <= x"1120";
                        state := fifo_srec_load_prefill_start;
                        
                    when fifo_srec_load_prefill_start =>
                        fsm_axi_awaddr          <= QSPI_SPIDTR_ADDR;
                        fsm_axi_wdata           <= x"00000000";                 -- Void data
                        fsm_start_axi_write     <= '1';
                        DBG_FSM_out <= x"1121";
                        
                        state := fifo_srec_load_prefill_loop;
                        
                    when fifo_srec_load_prefill_loop =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1122";
                                fsm_fifo_read_cnt       <= fsm_fifo_read_cnt    + 1;
                                fsm_fifo_prefill_cnt    <= fsm_fifo_prefill_cnt - 1;
                                
                                if (fsm_fifo_prefill_cnt /= 0) then
                                    DBG_FSM_out <= x"1123";
                                    state := fifo_srec_load_prefill_start;
                                else
                                    DBG_FSM_out <= x"1124";
                                    state := fifo_srec_load_show_start;
                                end if;
                            else
                                DBG_FSM_out <= x"1125";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when fifo_srec_load_show_start =>
                        fsm_axi_awaddr          <= GPIO_LIGHTS_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= x"00002020";     -- Yellow LED
                        fsm_start_axi_write     <= '1';
                        state := fifo_srec_load_show_wait;
                        
                    when fifo_srec_load_show_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1130";
                                state := fifo_srec_int1_start;
                            else
                                DBG_FSM_out <= x"1131";
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
                                DBG_FSM_out <= x"1133";
                                state := fifo_srec_int2_start;
                            else
                                DBG_FSM_out <= x"1134";
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
                                DBG_FSM_out <= x"1136";
                                state := fifo_srec_int3_start;
                            else
                                DBG_FSM_out <= x"1137";
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
                        DBG_FSM_out <= x"1140";
                        
                        state := fifo_srec_int3_wait;
                        
                    when fifo_srec_int3_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1141";
                                state := dbg2_req_start;
                            else
                                DBG_FSM_out <= x"1142";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    -- DEBUGGING: get TX / RX FIFO fill counts - REMARKS: real_number := shown_value + 1    (@see PG153 page 34f)
                    when dbg2_req_start =>
                        state       := dbg_sub_enter;
                        dbg_state   := fifo_srec_load_cs_start;
                        
                        
                    when fifo_srec_load_cs_start =>
                        fsm_axi_awaddr          <= QSPI_SPISSR_ADDR;
                        fsm_axi_wdata           <= x"00000000";                 -- Issue chip select
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_cs_wait;
                        
                    when fifo_srec_load_cs_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1145";
                                state := fifo_srec_load_master_start;
                            else
                                DBG_FSM_out <= x"1146";
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
                                DBG_FSM_out <= x"1148";
                                state := fifo_srec_load_int_wait;
                            else
                                DBG_FSM_out <= x"1149";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    -- Wait for interrupt of empty TX FIFO
                    when fifo_srec_load_int_wait =>
                        DBG_FSM_out <= x"1200";
                        if (qspi_irpt = '1') then
                            DBG_FSM_out <= x"1201";
                            state := fifo_srec_load_int_pstdly_start;
                        end if;
                        
                        
                    -- Delay some time for the SPI unit to be ready for access
                    when fifo_srec_load_int_pstdly_start =>
                        fsm_fifo_int_pstdly_cnt <= (2**4 - 1);
                        state := fifo_srec_load_int_pstdly_wait;
                        
                    when fifo_srec_load_int_pstdly_wait =>
                        fsm_fifo_int_pstdly_cnt <= fsm_fifo_int_pstdly_cnt - 1;
                        state := fifo_srec_load_int_pstdly_loop;
                        
                    when fifo_srec_load_int_pstdly_loop =>
                        if (fsm_fifo_int_pstdly_cnt /= 0) then
                            state := fifo_srec_load_int_pstdly_wait;
                        else
                            DBG_FSM_out <= x"1202";
                            state := fifo_srec_load_un_cs_start;
                        end if;
                        
                        
                    when fifo_srec_load_un_cs_start =>
                        fsm_axi_awaddr          <= QSPI_SPISSR_ADDR;
                        fsm_axi_wdata           <= x"00000001";                 -- Deassert chip select
                        fsm_start_axi_write     <= '1';
                        
                        state := fifo_srec_load_un_cs_wait;
                        
                    when fifo_srec_load_un_cs_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then  -- w/o int_pstldy the handshake does not come sometimes
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"1203";
                                state := fifo_srec_load_un_master_start;
                            else
                                DBG_FSM_out <= x"1204";
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
                                DBG_FSM_out <= x"1206";
                                state := dbg1_req_start;
                            else
                                DBG_FSM_out <= x"1207";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    -- DEBUGGING: get TX / RX FIFO fill counts - REMARKS: real_number := shown_value + 1    (@see PG153 page 34f)
                    when dbg1_req_start =>
                        state       := dbg_sub_enter;
                        dbg_state   := fifo_srec_proc_show_start;
                        
                        
                    when fifo_srec_proc_show_start =>
                        fsm_axi_awaddr          <= GPIO_LIGHTS_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= x"00200000";     -- Blue LED
                        fsm_start_axi_write     <= '1';
                        state := fifo_srec_proc_show_wait;
                        
                    when fifo_srec_proc_show_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"120a";
                                DBG_Sig_NxtLoad_out <= '0';
                                state := fifo_srec_load_strip_init;
                            else
                                DBG_FSM_out <= x"120b";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    -- Strip first section off  
                    when fifo_srec_load_strip_init =>
                        DBG_FSM_out <= x"1300";
                        state := fifo_srec_load_strip_start;
                        
                    when fifo_srec_load_strip_start =>
                        fsm_axi_araddr          <= QSPI_SPIDRR_ADDR;
                        fsm_start_axi_read      <= '1';
                        DBG_FSM_out <= x"1301";
                        state := fifo_srec_load_strip_loop;
                        
                    when fifo_srec_load_strip_loop =>
                        DBG_FSM_out <= x"1302";
                        fsm_start_axi_read      <= '0';
                        if (m00_axi_rvalid = '1' and io_axi_rready = '1') then
                            DBG_FSM_out <= x"1303";
                            if (m00_axi_rresp(1) = '0') then
                                DBG_FSM_out <= x"1304";
                                fsm_fifo_read_cnt   <= fsm_fifo_read_cnt    - 1;
                              --fsm_addr := std_logic_vector(to_unsigned(to_integer(unsigned(fsm_addr)) + 1, fsm_addr'length));
                                
                                if (fsm_fifo_read_cnt = 0) then
                                    DBG_FSM_out <= x"1305";
                                    state := axi_error;  -- Buffer underflow
                                else
                                    if (m00_axi_rdata(7 downto 0) = x"0a") then  -- character LF found, start decoder from here
                                        DBG_FSM_out <= x"1306";
                                        DBG_Flash_RD_vec := (others => '0');
                                        state := fifo_srec_read_init;
                                    else
                                        DBG_FSM_out <= x"1307";
                                        state := fifo_srec_load_strip_start;  -- Skip to next character
                                    end if;
                                end if;
                            else
                                DBG_FSM_out <= x"1308";
                                state := axi_error;
                            end if;
                            fsm_axi_araddr  <= (others => '0');
                        end if;
                        
                        
                    -- Entry point of SREC decoder   
                    when fifo_srec_read_init =>
                        DBG_FSM_out <= x"1310";
                        if (fsm_fifo_read_cnt = 0) then
                            -- Get next chunk from QSPI FLASH chip
                            --fsm_addr := std_logic_vector(to_unsigned(to_integer(unsigned(fsm_addr)) + QSPI_LOAD_CNT, fsm_addr'length));
                            --DBG_FSM_out <= x"1311";
                            --state := qspi_reset_start;    -- fifo_srec_load_0_start;
                            
                            DBG_FSM_out <= x"9311";
                            state := axi_error; -- DEBUGGING AID
                        else
                            DBG_FSM_out <= x"1312";
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
                                DBG_FSM_out <= x"1314";
                                fsm_fifo_read_cnt   <= fsm_fifo_read_cnt    - 1;
                                fsm_addr            := std_logic_vector(to_unsigned(to_integer(unsigned(fsm_addr)) + 1, fsm_addr'length));
                                
                                fsm_srec_decoder_c  <= m00_axi_rdata(7 downto 0);
                                DBG_Flash_RD_vec    := DBG_Flash_RD_vec(375 downto 0) & m00_axi_rdata(7 downto 0);
                                
                                state := axi_dec_init;
                            else
                                DBG_FSM_out <= x"1315";
                                state := axi_error;
                            end if;
                            fsm_axi_araddr  <= (others => '0');
                        end if;
                        
                        
                    when axi_dec_init =>
                        -- Default target state if not otherwise overwritten
                        DBG_FSM_out <= x"1400";
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
                                DBG_FSM_out <= x"1401";
                                
                                if ((fsm_srec_decoder_c = x"53")  or  (fsm_srec_decoder_c = x"73")) then
                                    -- 'S' found
                                    DBG_FSM_out <= x"1402";
                                    fsm_dec_state := getStype;
                                end if;
                                
                            when getStype =>
                                DBG_FSM_out <= x"1410";
                                if ((48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 58)) then
                                    DBG_FSM_out <= x"1411";
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
                                    DBG_FSM_out <= x"141f";
                                    fsm_dec_state := searchS;
                                end if;
                                
                            when getCountHi =>
                                DBG_FSM_out <= x"1420";
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
                                DBG_FSM_out <= x"1421";
                                fsm_dec_cnt         := fsm_dec_cnt + fsm_dec_nibble;
                                fsm_dec_checksum    := (fsm_dec_checksum + fsm_dec_nibble) mod 256;
                                
                                if    (fsm_dec_addrlen = 4) then
                                    DBG_FSM_out <= x"1422";
                                    fsm_dec_state := getAddr3Hi;
                                    
                                elsif (fsm_dec_addrlen = 3) then
                                    DBG_FSM_out <= x"1423";
                                    fsm_dec_state := getAddr2Hi;
                                    
                                elsif (fsm_dec_addrlen = 2) then
                                    DBG_FSM_out <= x"1424";
                                    fsm_dec_state := getAddr1Hi;
                                    
                                else
                                    -- Out of sync
                                    fsm_dec_state := searchS;
                                end if;
                                
                            when getAddr3Hi =>
                                DBG_FSM_out <= x"1430";
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
                                DBG_FSM_out <= x"1431";
                                
                                fsm_dec_state := getAddr2Hi;
                                
                            when getAddr2Hi =>
                                DBG_FSM_out <= x"1432";
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
                                DBG_FSM_out <= x"1433";
                                
                                fsm_dec_state := getAddr1Hi;
                                
                            when getAddr1Hi =>
                                DBG_FSM_out <= x"1434";
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
                                DBG_FSM_out <= x"1435";
                                
                                fsm_dec_state := getAddr0Hi;
                                
                            when getAddr0Hi =>
                                DBG_FSM_out <= x"1436";
                                fsm_dec_cnt := fsm_dec_cnt - 1;
                                
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_addr        := fsm_dec_addr + 16 * fsm_dec_nibble;
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
                                DBG_FSM_out <= x"1437";
                                
                                if (fsm_dec_cnt > 1) then
                                    DBG_FSM_out <= x"1438";
                                    fsm_dec_state := getDataHi;
                                else
                                    DBG_FSM_out <= x"1439";
                                    fsm_dec_state := getChecksumHi;
                                end if;
                                
                            when getDataHi =>
                                DBG_FSM_out <= x"1440";
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
                                DBG_FSM_out <= x"1441";
                                
                                if (fsm_dec_do_copy = '1') then
                                    -- Continue with next clock @ copy_start
                                    DBG_FSM_out <= x"1442";
                                    state           := axi_dec_init;
                                    fsm_dec_state   := write_prepare;
                                else
                                    -- Consume and process
                                    DBG_FSM_out <= x"1443";
                                    if (fsm_dec_cnt > 1) then
                                        DBG_FSM_out <= x"1444";
                                        fsm_dec_state := getDataHi;
                                    else
                                        DBG_FSM_out <= x"1445";
                                        fsm_dec_state := getChecksumHi;
                                    end if;
                                end if;
                                
                                
                            -- Prepare and write32 (little endian for AXI4 machine)
                            when write_prepare =>
                                -- Default next step
                                if (fsm_dec_cnt > 1) then
                                    DBG_FSM_out <= x"1450";
                                    fsm_dec_state := getDataHi;
                                else
                                    DBG_FSM_out <= x"1451";
                                    fsm_dec_state := getChecksumHi;
                                end if;
                                
                                -- Prepare 32 bit data pad
                                if (std_logic_vector(to_unsigned(fsm_dec_addr, 2)) = "00") then
                                    -- Start with next word boundary with clearing pad
                                    -- LSB
                                    fsm_copy32  :=  x"000000"                   & std_logic_vector(to_unsigned(fsm_dec_data, 8));
                                    -- Addr increment
                                    fsm_dec_addr    := fsm_dec_addr + 1;
                                      
                                elsif(std_logic_vector(to_unsigned(fsm_dec_addr, 2)) = "01") then
                                    fsm_copy32  :=  x"0000"                     & std_logic_vector(to_unsigned(fsm_dec_data, 8))    & fsm_copy32( 7 downto 0);
                                    -- Addr increment
                                    fsm_dec_addr    := fsm_dec_addr + 1;
                                    
                                elsif(std_logic_vector(to_unsigned(fsm_dec_addr, 2)) = "10") then
                                    fsm_copy32  :=  x"00"                       & std_logic_vector(to_unsigned(fsm_dec_data, 8))    & fsm_copy32(15 downto 0);
                                    -- Addr increment
                                    fsm_dec_addr    := fsm_dec_addr + 1;
                                    
                                else
                                    -- MSB
                                    fsm_copy32  :=                                std_logic_vector(to_unsigned(fsm_dec_data, 8))    & fsm_copy32(23 downto 0);
                                    -- Addr increment
                                    fsm_dec_addr    := fsm_dec_addr + 1;
                                    
                                    -- Overwrite next step: save 32 bit data
                                    state           := axi_dec_init;
                                    fsm_dec_state   := write_start;
                                end if;
                                
                                DBG_AXI_DtaPad  <= fsm_copy32;
                                
                            when write_start =>
                                DBG_FSM_out <= x"1452";
                                DBG_Sig_NxtWrite_out    <= '1';
                                -- Reconstruct first address of fsm_copy32
                                DBG_AXI_Addr            <= std_logic_vector(to_unsigned(fsm_dec_addr - 4, fsm_axi_awaddr'length))  and  x"fffffffc";
                                fsm_axi_awaddr          <= std_logic_vector(to_unsigned(fsm_dec_addr - 4, fsm_axi_awaddr'length))  and  x"fffffffc";
                                fsm_axi_wdata           <= fsm_copy32;
                                fsm_start_axi_write     <= '1';
                                
                                -- Continue with next clock @ copy_wait
                                state           := axi_dec_init;
                                fsm_dec_state   := write_wait;
                                
                            when write_wait =>
                                DBG_FSM_out <= x"1453";
                                fsm_start_axi_write     <= '0';
                                
                                if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                                    DBG_Sig_NxtWrite_out <= '0';
                                    if (m00_axi_bresp(1) = '0') then
                                        DBG_FSM_out <= x"1454";
                                        if (fsm_dec_cnt > 1) then
                                            DBG_FSM_out <= x"1455";
                                            fsm_dec_state := getDataHi;
                                        else
                                            DBG_FSM_out <= x"1456";
                                            fsm_dec_state := getChecksumHi;
                                        end if;
                                    else
                                        DBG_FSM_out <= x"1457";
                                        fsm_dec_state   := dec_stop;
                                        state           := axi_error;
                                    end if;
                                    fsm_axi_awaddr      <= (others => '0');
                                    fsm_axi_wdata       <= (others => '0');
                                    
                                else
                                    -- try again next clock
                                    DBG_FSM_out <= x"1458";
                                    state           := axi_dec_init;
                                    fsm_dec_state   := write_wait;
                                end if;
                                
                                
                            when getChecksumHi =>
                                DBG_FSM_out <= x"1460";
                                fsm_dec_cnt := fsm_dec_cnt - 1;
                                
                                if (   (48 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  58)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 48;
                                elsif ((65 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) <  71)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 65 + 10;
                                elsif ((97 <= to_Integer(unsigned(fsm_srec_decoder_c)))  and  (to_Integer(unsigned(fsm_srec_decoder_c)) < 103)) then
                                    fsm_dec_nibble := to_Integer(unsigned(fsm_srec_decoder_c)) - 97 + 10;
                                end if;
                                fsm_dec_checksum    := (fsm_dec_checksum + 16 * fsm_dec_nibble) mod 256;
                                
                                -- Addr increment
                                fsm_dec_addr    := fsm_dec_addr + 1;
                                
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
                                
                                -- Addr increment
                                fsm_dec_addr    := fsm_dec_addr + 1;
                                
                                DBG_FSM_out <= x"1461";
                                
                                if (fsm_dec_checksum = 255) then
                                    DBG_FSM_out <= x"1462";
                                    if (fsm_dec_do_exec = '1') then
                                        DBG_FSM_out <= x"1463";
                                        fsm_dec_state   := exec_start;
                                    else
                                        DBG_FSM_out <= x"1464";
                                        
                                        -- Cue to next line
                                        fsm_addr        := std_logic_vector(to_unsigned(to_integer(unsigned(fsm_addr)) + 2, fsm_addr'length));
                                        
                                        fsm_dec_state   := searchS;
                                        
                                        -- Read next line from the Flash
                                        state           := qspi_reset_start;    -- fifo_srec_load_0_start;
                                    end if;
                                    
                                else
                                    -- Bad checksum
                                    DBG_FSM_out <= x"1465";
                                    fsm_dec_state   := dec_stop;
                                    state           := axi_error;
                                end if;
                                
                                
                            when exec_start =>
                                -- Start CPU
                                DBG_FSM_out <= x"1470";
                                fsm_out_resetn  <= '1';
                                
                                fsm_dec_state   := dec_stop;
                                state           := axi_init;
                                
                            when dec_stop =>
                                -- Never come out
                                
                            when others =>
                                DBG_FSM_out <= x"14f0";
                                fsm_dec_state := dec_stop;
                        end case;   -- fsm_dec_state
                        
                        
                    -- ENTER
                    when qspi_master_reset_start =>
                        fsm_master_reset_run    <= '1';
                        DBG_FSM_out <= x"2000";
                        
                        fsm_axi_awaddr          <= QSPI_SRR_ADDR;
                        fsm_axi_wdata           <= x"0000000a";                 -- Command to master reset the QSPI device
                        fsm_start_axi_write     <= '1';
                        
                        state := qspi_master_reset_wait;
                        
                    when qspi_master_reset_wait =>
                        fsm_start_axi_write     <= '0';
                        DBG_FSM_out <= x"2001";
                        
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            DBG_FSM_out <= x"2002";
                            fsm_master_reset_run <= '0';
                            
                            if (m00_axi_bresp(1) = '0') then
                                DBG_FSM_out <= x"2003";
                                state := axi_good;
                            else
                                DBG_FSM_out <= x"2004";
                                state := axi_error;
                            end if;
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                        
                    when axi_good =>
                        DBG_FSM_out <= x"3000";
                        fsm_axi_awaddr          <= (others => '0');
                        fsm_axi_wdata           <= (others => '0');
                        fsm_axi_araddr          <= (others => '0');
                        
                        fsm_out_error           <= '0';
                        
                        fsm_start_axi_write     <= '0';
                        fsm_start_axi_read      <= '0';
                        
                      --fsm_fifo_reset_run      <= '0';
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
                        DBG_FSM_out <= x"300f";
                        -- GOOD
                        
                        
                    when axi_error =>
                        -- Some error has occured.
                        fsm_out_error <= '1';
                        
                      --fsm_fifo_reset_run      <= '0';
                        fsm_srec_process_run    <= '0';
                        fsm_master_reset_run    <= '0';
                        
                        fsm_out_resetn          <= '1';     -- Start CPU for debugging
                        
                        state := axi_error_show_start;
                        
                    when axi_error_show_start =>
                        fsm_axi_awaddr          <= GPIO_LIGHTS_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= x"00000020";     -- Red LED
                        fsm_start_axi_write     <= '1';
                        state := axi_error_show_wait;
                        
                    when axi_error_show_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            state := axi_error_final;
                            
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when axi_error_final =>
                        -- ERROR
                        
                        
                    when dbg_sub_enter =>
                        state := dbg_sub_read1_start;
                        
                    when dbg_sub_read1_start =>
                        fsm_axi_araddr          <= QSPI_TX_OCCU_ADDR;
                        fsm_start_axi_read      <= '1';
                        state := dbg_sub_read1_wait;
                        
                    when dbg_sub_read1_wait =>
                        fsm_start_axi_read      <= '0';
                        if (m00_axi_rvalid = '1' and io_axi_rready = '1') then
                            if (m00_axi_rresp(1) = '0') then
                                fsm_pad32   := m00_axi_rdata;
                                state := dbg_sub_write1_start;
                            else
                                DBG_FSM_out <= x"4001";
                                state := axi_error;
                            end if;
                            fsm_axi_araddr  <= (others => '0');
                        end if;
                        
                    when dbg_sub_write1_start =>
                        fsm_axi_awaddr          <= GPIO_DBG_GPIO_DATA_ADDR;
                        fsm_axi_wdata           <= fsm_pad32;
                        fsm_start_axi_write     <= '1';
                        state := dbg_sub_write1_wait;
                        
                    when dbg_sub_write1_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            state := dbg_sub_read2_start;
                            
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when dbg_sub_read2_start =>
                        fsm_axi_araddr          <= QSPI_RX_OCCU_ADDR;
                        fsm_start_axi_read      <= '1';
                        state := dbg_sub_read2_wait;
                        
                    when dbg_sub_read2_wait =>
                        fsm_start_axi_read      <= '0';
                        if (m00_axi_rvalid = '1' and io_axi_rready = '1') then
                            if (m00_axi_rresp(1) = '0') then
                                fsm_pad32   := m00_axi_rdata;
                                state := dbg_sub_write2_start;
                            else
                                DBG_FSM_out <= x"400f";
                                state := axi_error;
                            end if;
                            fsm_axi_araddr  <= (others => '0');
                        end if;
                        
                    when dbg_sub_write2_start =>
                        fsm_axi_awaddr          <= GPIO_DBG_GPIO2_DATA_ADDR;
                        fsm_axi_wdata           <= fsm_pad32;
                        fsm_start_axi_write     <= '1';
                        state := dbg_sub_write2_wait;
                        
                    when dbg_sub_write2_wait =>
                        fsm_start_axi_write  <= '0';
                        if (m00_axi_bvalid = '1' and io_axi_bready = '1') then
                            state := dbg_sub_return;
                            
                            fsm_axi_awaddr      <= (others => '0');
                            fsm_axi_wdata       <= (others => '0');
                        end if;
                        
                    when dbg_sub_return =>
                        state       := dbg_state;
                        dbg_state   := axi_error_final;
                        
                        
                    when others =>
                        state := axi_init;
                        
                end case;   -- state
                
                DBG_Flash_Adr   <= fsm_addr;
                
                DBG_Flash_RD_00 <= DBG_Flash_RD_vec( 31 downto   0);
                DBG_Flash_RD_01 <= DBG_Flash_RD_vec( 63 downto  32);
                DBG_Flash_RD_02 <= DBG_Flash_RD_vec( 95 downto  64);
                DBG_Flash_RD_03 <= DBG_Flash_RD_vec(127 downto  96);
                DBG_Flash_RD_04 <= DBG_Flash_RD_vec(159 downto 128);
                DBG_Flash_RD_05 <= DBG_Flash_RD_vec(191 downto 160);
                DBG_Flash_RD_06 <= DBG_Flash_RD_vec(223 downto 192);
                DBG_Flash_RD_07 <= DBG_Flash_RD_vec(255 downto 224);
                DBG_Flash_RD_08 <= DBG_Flash_RD_vec(287 downto 256);
                DBG_Flash_RD_09 <= DBG_Flash_RD_vec(319 downto 288);
                DBG_Flash_RD_10 <= DBG_Flash_RD_vec(351 downto 320);
                DBG_Flash_RD_11 <= DBG_Flash_RD_vec(383 downto 352);
            end if;
        end if;
    end process axi_FSM_proc;
    
    
    -- MAIN FSM
    --
    main_FSM_proc : process (m00_axi_aclk)
        type StateType                              is (
                                                        init,
                                                      --fifo_reset_start, fifo_reset_wait, 
                                                        fifo_read_activate_start, fifo_read_activate_wait,
                                                        master_reset_start, master_reset_wait,
                                                        final
                                                    );
        variable state                              : StateType;
    begin
        if (rising_edge (m00_axi_aclk)) then
            if (m00_axi_aresetn = '0') then
                fsm_main_done           <= '0';
              --fsm_fifo_reset_do       <= '0';
                fsm_srec_process_do     <= '0';
                fsm_master_reset_do     <= '0';
                state := init;
                
            else
                case state is
                    when init =>
                        fsm_main_done           <= '0';
                      --fsm_fifo_reset_do       <= '0';
                        fsm_srec_process_do     <= '0';
                        fsm_master_reset_do     <= '0';
                        
                        if (SREC_enable = '0') then
                            -- Stay at init when SREC is disabled
                            state := init;
                            
                        elsif (fsm_init_txn_pulse = '1') then
                            state := fifo_read_activate_start;  -- fifo_reset_start
                        end if;
                        
                        
                  --when fifo_reset_start =>
                  --    fsm_fifo_reset_do <= '1';
                  --    if (fsm_fifo_reset_run = '1') then
                  --        fsm_fifo_reset_do <= '0';
                  --        state := fifo_reset_wait;
                  --    end if;
                        
                  --when fifo_reset_wait =>
                  --    if (fsm_fifo_reset_run = '0') then
                  --        state := fifo_read_activate_start;
                  --    end if;
                        
                        
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
