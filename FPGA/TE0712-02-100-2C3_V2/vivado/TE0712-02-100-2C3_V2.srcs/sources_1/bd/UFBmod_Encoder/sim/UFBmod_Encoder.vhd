--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Fri Nov  6 23:02:46 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target UFBmod_Encoder.bd
--Design      : UFBmod_Encoder
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_Encoder is
  port (
    TRX_dds_tx_rf09_inc : out STD_LOGIC_VECTOR ( 25 downto 0 );
    TRX_dds_tx_rf09_ptt : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    decoder_rx09_chAll_active : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chAll_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 );
    encoder_pull_FIFO_dump : in STD_LOGIC;
    encoder_pull_data_len : in STD_LOGIC_VECTOR ( 6 downto 0 );
    encoder_pull_do_start : in STD_LOGIC;
    pulldata_tx09_byteData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pulldata_tx09_en : out STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of UFBmod_Encoder : entity is "UFBmod_Encoder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UFBmod_Encoder,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_BD}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of UFBmod_Encoder : entity is "UFBmod_Encoder.hwdef";
end UFBmod_Encoder;

architecture STRUCTURE of UFBmod_Encoder is
  component UFBmod_Encoder_UFBmod_tx09_Encoder_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    decoder_rx09_chAll_sql_open : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chAll_active : in STD_LOGIC_VECTOR ( 7 downto 0 );
    encoder_pull_FIFO_dump : in STD_LOGIC;
    encoder_pull_do_start : in STD_LOGIC;
    encoder_pull_data_len : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pulldata_tx09_en : out STD_LOGIC;
    pulldata_tx09_byteData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dds_tx09_inc : out STD_LOGIC_VECTOR ( 25 downto 0 );
    dds_tx09_ptt : out STD_LOGIC
  );
  end component UFBmod_Encoder_UFBmod_tx09_Encoder_0_0;
  signal dds_tx09_inc_0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal dds_tx09_ptt_0 : STD_LOGIC;
  signal decoder_rx09_chAll_active_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decoder_rx09_chAll_sql_open_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encoder_pull_FIFO_dump_0 : STD_LOGIC;
  signal encoder_pull_data_len_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal encoder_pull_do_start_0 : STD_LOGIC;
  signal pulldata_tx09_byteData_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pulldata_tx09_en_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET reset_100MHz, CLK_DOMAIN UFBmod_Encoder_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_100MHz : signal is "xilinx.com:signal:reset:1.0 RST.RESET_100MHZ RST";
  attribute X_INTERFACE_PARAMETER of reset_100MHz : signal is "XIL_INTERFACENAME RST.RESET_100MHZ, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of TRX_dds_tx_rf09_inc : signal is "xilinx.com:signal:data:1.0 DATA.TRX_DDS_TX_RF09_INC DATA";
  attribute X_INTERFACE_PARAMETER of TRX_dds_tx_rf09_inc : signal is "XIL_INTERFACENAME DATA.TRX_DDS_TX_RF09_INC, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of encoder_pull_data_len : signal is "xilinx.com:signal:data:1.0 DATA.ENCODER_PULL_DATA_LEN DATA";
  attribute X_INTERFACE_PARAMETER of encoder_pull_data_len : signal is "XIL_INTERFACENAME DATA.ENCODER_PULL_DATA_LEN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of pulldata_tx09_byteData : signal is "xilinx.com:signal:data:1.0 DATA.PULLDATA_TX09_BYTEDATA DATA";
  attribute X_INTERFACE_PARAMETER of pulldata_tx09_byteData : signal is "XIL_INTERFACENAME DATA.PULLDATA_TX09_BYTEDATA, LAYERED_METADATA undef";
begin
  TRX_dds_tx_rf09_inc(25 downto 0) <= dds_tx09_inc_0(25 downto 0);
  TRX_dds_tx_rf09_ptt <= dds_tx09_ptt_0;
  decoder_rx09_chAll_active_1(7 downto 0) <= decoder_rx09_chAll_active(7 downto 0);
  decoder_rx09_chAll_sql_open_1(7 downto 0) <= decoder_rx09_chAll_sql_open(7 downto 0);
  encoder_pull_FIFO_dump_0 <= encoder_pull_FIFO_dump;
  encoder_pull_data_len_0(6 downto 0) <= encoder_pull_data_len(6 downto 0);
  encoder_pull_do_start_0 <= encoder_pull_do_start;
  pulldata_tx09_byteData_0(7 downto 0) <= pulldata_tx09_byteData(7 downto 0);
  pulldata_tx09_en <= pulldata_tx09_en_0;
UFBmod_tx09_Encoder_0: component UFBmod_Encoder_UFBmod_tx09_Encoder_0_0
     port map (
      clk => clk_100MHz,
      dds_tx09_inc(25 downto 0) => dds_tx09_inc_0(25 downto 0),
      dds_tx09_ptt => dds_tx09_ptt_0,
      decoder_rx09_chAll_active(7 downto 0) => decoder_rx09_chAll_active_1(7 downto 0),
      decoder_rx09_chAll_sql_open(7 downto 0) => decoder_rx09_chAll_sql_open_1(7 downto 0),
      encoder_pull_FIFO_dump => encoder_pull_FIFO_dump_0,
      encoder_pull_data_len(6 downto 0) => encoder_pull_data_len_0(6 downto 0),
      encoder_pull_do_start => encoder_pull_do_start_0,
      pulldata_tx09_byteData(7 downto 0) => pulldata_tx09_byteData_0(7 downto 0),
      pulldata_tx09_en => pulldata_tx09_en_0,
      reset => reset_100MHz
    );
end STRUCTURE;
