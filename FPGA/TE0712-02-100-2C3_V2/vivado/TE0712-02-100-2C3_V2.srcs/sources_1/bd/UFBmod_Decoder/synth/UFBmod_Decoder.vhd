--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Thu Nov  5 20:09:46 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target UFBmod_Decoder.bd
--Design      : UFBmod_Decoder
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Decoder_rx09_to_FIFO_imp_FFVYW2 is
  port (
    TRX_decoder_rx_rf09_chXX_FIFO_accepted : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_FIFO_handshake : in STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_msg_mem_b_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_decoder_rx_rf09_chXX_msg_mem_b_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_pushdata_rx_rf09_chXX_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_pushdata_rx_rf09_chXX_grant : in STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_req : out STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_wr_en : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
end Decoder_rx09_to_FIFO_imp_FFVYW2;

architecture STRUCTURE of Decoder_rx09_to_FIFO_imp_FFVYW2 is
  component UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0 is
  port (
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC;
    decoder_rx09_chXX_msg_mem_b_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_msg_mem_b_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_FIFO_handshake : in STD_LOGIC;
    decoder_rx09_chXX_FIFO_accepted : out STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_req : out STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_grant : in STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_wr_en : out STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_din : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0;
  signal TRX_decoder_rx_rf09_chXX_FIFO_accepted_0 : STD_LOGIC;
  signal TRX_decoder_rx_rf09_chXX_FIFO_handshake_0 : STD_LOGIC;
  signal TRX_decoder_rx_rf09_chXX_msg_mem_b_addr_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_msg_mem_b_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_pushdata_rx_rf09_chXX_din_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_pushdata_rx_rf09_chXX_grant_2 : STD_LOGIC;
  signal TRX_pushdata_rx_rf09_chXX_req_2 : STD_LOGIC;
  signal TRX_pushdata_rx_rf09_chXX_wr_en_0 : STD_LOGIC;
  signal clk_100MHz_0 : STD_LOGIC;
  signal reset_100MHz_0 : STD_LOGIC;
begin
  TRX_decoder_rx_rf09_chXX_FIFO_accepted <= TRX_decoder_rx_rf09_chXX_FIFO_accepted_0;
  TRX_decoder_rx_rf09_chXX_FIFO_handshake_0 <= TRX_decoder_rx_rf09_chXX_FIFO_handshake;
  TRX_decoder_rx_rf09_chXX_msg_mem_b_addr(7 downto 0) <= TRX_decoder_rx_rf09_chXX_msg_mem_b_addr_0(7 downto 0);
  TRX_decoder_rx_rf09_chXX_msg_mem_b_dout_0(7 downto 0) <= TRX_decoder_rx_rf09_chXX_msg_mem_b_din(7 downto 0);
  TRX_pushdata_rx_rf09_chXX_din(7 downto 0) <= TRX_pushdata_rx_rf09_chXX_din_0(7 downto 0);
  TRX_pushdata_rx_rf09_chXX_grant_2 <= TRX_pushdata_rx_rf09_chXX_grant;
  TRX_pushdata_rx_rf09_chXX_req <= TRX_pushdata_rx_rf09_chXX_req_2;
  TRX_pushdata_rx_rf09_chXX_wr_en <= TRX_pushdata_rx_rf09_chXX_wr_en_0;
  clk_100MHz_0 <= clk_100MHz;
  reset_100MHz_0 <= reset_100MHz;
Decoder_rx09_to_FIFO_FSM: component UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0
     port map (
      TRX_pushdata_rx_rf09_chXX_din(7 downto 0) => TRX_pushdata_rx_rf09_chXX_din_0(7 downto 0),
      TRX_pushdata_rx_rf09_chXX_grant => TRX_pushdata_rx_rf09_chXX_grant_2,
      TRX_pushdata_rx_rf09_chXX_req => TRX_pushdata_rx_rf09_chXX_req_2,
      TRX_pushdata_rx_rf09_chXX_wr_en => TRX_pushdata_rx_rf09_chXX_wr_en_0,
      clk_100MHz => clk_100MHz_0,
      decoder_rx09_chXX_FIFO_accepted => TRX_decoder_rx_rf09_chXX_FIFO_accepted_0,
      decoder_rx09_chXX_FIFO_handshake => TRX_decoder_rx_rf09_chXX_FIFO_handshake_0,
      decoder_rx09_chXX_msg_mem_b_addr(7 downto 0) => TRX_decoder_rx_rf09_chXX_msg_mem_b_addr_0(7 downto 0),
      decoder_rx09_chXX_msg_mem_b_din(7 downto 0) => TRX_decoder_rx_rf09_chXX_msg_mem_b_dout_0(7 downto 0),
      reset_100MHz => reset_100MHz_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FFT_rx09_chXX_to_Decoder_imp_1G2C2U is
  port (
    TRX_channel_rx_rf09_id : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_fft_rx_rf09_chXX_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_fft_rx_rf09_frame_avail_ctr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_post_rx_rf09_chXX_mem_a_EoT : in STD_LOGIC;
    TRX_post_rx_rf09_chXX_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_post_rx_rf09_chXX_mem_b_addr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_post_rx_rf09_chXX_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_signal_bins_rx_rf09_chXX_blk_mem_gen_0_addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    TRX_signal_bins_rx_rf09_chXX_blk_mem_gen_0_doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
end FFT_rx09_chXX_to_Decoder_imp_1G2C2U;

architecture STRUCTURE of FFT_rx09_chXX_to_Decoder_imp_1G2C2U is
  component UFBmod_Decoder_signal_bins_rx09_ch00_blk_mem_gen_2clks_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_Decoder_signal_bins_rx09_ch00_blk_mem_gen_2clks_0;
  component UFBmod_Decoder_xlconstant_val1_len1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_Decoder_xlconstant_val1_len1_0;
  component UFBmod_Decoder_rowsum_rx09_ch00_c_accum_1clk_0 is
  port (
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_Decoder_rowsum_rx09_ch00_c_accum_1clk_0;
  component UFBmod_Decoder_signal_correction_rx09_ch00_mult_gen_4clks_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_Decoder_signal_correction_rx09_ch00_mult_gen_4clks_0;
  component UFBmod_Decoder_averaging_factor_rx09_ch00_div_gen_35clks_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    s_axis_divisor_tready : out STD_LOGIC;
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_dividend_tready : out STD_LOGIC;
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_Decoder_averaging_factor_rx09_ch00_div_gen_35clks_0;
  component UFBmod_Decoder_xlconstant_val256x32_len16_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_Decoder_xlconstant_val256x32_len16_0;
  component UFBmod_Decoder_xlconstant_val0_len1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_Decoder_xlconstant_val0_len1_0;
  component UFBmod_Decoder_xlconstant_val0_len16_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_Decoder_xlconstant_val0_len16_0;
  component UFBmod_Decoder_noise_rx09_ch00_xlslice_18to0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  end component UFBmod_Decoder_noise_rx09_ch00_xlslice_18to0_0;
  component UFBmod_Decoder_noise_rx09_ch00_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 18 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  end component UFBmod_Decoder_noise_rx09_ch00_c_shift_ram_0_0;
  component UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0 is
  port (
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC;
    TRX_channel_rx_rf09_id : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_post_fft_rx_rf09_mem_a_EoT : in STD_LOGIC;
    TRX_post_fft_rx_rf09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_post_fft_rx_rf09_chXX_mem_b_addr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_post_fft_rx_rf09_chXX_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_rx09_chXX_rowsum_accum_sclr : out STD_LOGIC;
    fft_rx09_chXX_rowsum_accum_ce : out STD_LOGIC;
    fft_rx09_chXX_averaging_factor_div_aclken : out STD_LOGIC;
    fft_rx09_chXX_averaging_factor_div_dout_tvalid : in STD_LOGIC;
    fft_rx09_chXX_averaging_factor_div_divisor_tvalid : out STD_LOGIC;
    fft_rx09_chXX_signal_correction_mult_ce : out STD_LOGIC;
    fft_rx09_chXX_signal_correction_mult_ina : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_rx09_chXX_signal_correction_mult_prod : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_rx09_chXX_signal_bins_mem_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    fft_rx09_chXX_signal_bins_mem_dina : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_rx09_chXX_signal_bins_mem_douta : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_rx09_chXX_signal_bins_mem_wea : out STD_LOGIC;
    fft_rx09_chXX_frame_avail_ctr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0;
  signal TRX_channel_rx_rf09_id_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal TRX_fft_rx09_chXX_signal_bins_blk_mem_gen_0_addrb_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TRX_post_fft_rx09_mem_a_EoT_0 : STD_LOGIC;
  signal TRX_post_fft_rx_rf09_chXX_mem_b_addr_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_post_rx_rf09_chXX_mem_a_addr_1 : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal TRX_post_rx_rf09_chXX_mem_b_dout_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_100MHz_0 : STD_LOGIC;
  signal fft_rx09_chXX_averaging_factor_div_aclken_0 : STD_LOGIC;
  signal fft_rx09_chXX_averaging_factor_div_dividend_tdata_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fft_rx09_chXX_averaging_factor_div_dividend_tvalid_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fft_rx09_chXX_averaging_factor_div_divisor_tdata_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft_rx09_chXX_averaging_factor_div_divisor_tvalid_0 : STD_LOGIC;
  signal fft_rx09_chXX_averaging_factor_div_dout_tdata_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft_rx09_chXX_averaging_factor_div_dout_tvalid_0 : STD_LOGIC;
  signal fft_rx09_chXX_frame_avail_ctr_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fft_rx09_chXX_noise_c_shift_ram_Q_0 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal fft_rx09_chXX_noise_xlslice_18to0_Dout_0 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal fft_rx09_chXX_rowsum_accum_ce_0 : STD_LOGIC;
  signal fft_rx09_chXX_rowsum_accum_sclr_0 : STD_LOGIC;
  signal fft_rx09_chXX_signal_bins_blk_mem_gen_0_dina_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fft_rx09_chXX_signal_bins_blk_mem_gen_0_doutb_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fft_rx09_chXX_signal_bins_blk_mem_gen_2clks_douta_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fft_rx09_chXX_signal_bins_mem_addra_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal fft_rx09_chXX_signal_bins_mem_wea_0 : STD_LOGIC;
  signal fft_rx09_chXX_signal_correction_mult_ce_0 : STD_LOGIC;
  signal fft_rx09_chXX_signal_correction_mult_gen_4clks_P_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fft_rx09_chXX_signal_correction_mult_ina_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reset_100MHz_0 : STD_LOGIC;
  signal xlconstant_val0_len16_dout_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_val0_len1_dout_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_FFT_rx_rf09_chXX_averaging_factor_div_gen_35clks_s_axis_dividend_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_FFT_rx_rf09_chXX_averaging_factor_div_gen_35clks_s_axis_divisor_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_FFT_rx_rf09_chXX_averaging_factor_div_gen_35clks_m_axis_dout_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  TRX_channel_rx_rf09_id_1(2 downto 0) <= TRX_channel_rx_rf09_id(2 downto 0);
  TRX_fft_rx09_chXX_signal_bins_blk_mem_gen_0_addrb_0(10 downto 0) <= TRX_signal_bins_rx_rf09_chXX_blk_mem_gen_0_addrb(10 downto 0);
  TRX_fft_rx_rf09_chXX_noise(18 downto 0) <= fft_rx09_chXX_noise_c_shift_ram_Q_0(18 downto 0);
  TRX_fft_rx_rf09_frame_avail_ctr(31 downto 0) <= fft_rx09_chXX_frame_avail_ctr_0(31 downto 0);
  TRX_post_fft_rx09_mem_a_EoT_0 <= TRX_post_rx_rf09_chXX_mem_a_EoT;
  TRX_post_rx_rf09_chXX_mem_a_addr_1(41 downto 0) <= TRX_post_rx_rf09_chXX_mem_a_addr(41 downto 0);
  TRX_post_rx_rf09_chXX_mem_b_addr(4 downto 0) <= TRX_post_fft_rx_rf09_chXX_mem_b_addr_0(4 downto 0);
  TRX_post_rx_rf09_chXX_mem_b_dout_1(15 downto 0) <= TRX_post_rx_rf09_chXX_mem_b_dout(15 downto 0);
  TRX_signal_bins_rx_rf09_chXX_blk_mem_gen_0_doutb(15 downto 0) <= fft_rx09_chXX_signal_bins_blk_mem_gen_0_doutb_0(15 downto 0);
  clk_100MHz_0 <= clk_100MHz;
  reset_100MHz_0 <= reset_100MHz;
FFT_rx_rf09_chXX_averaging_factor_div_gen_35clks: component UFBmod_Decoder_averaging_factor_rx09_ch00_div_gen_35clks_0
     port map (
      aclk => clk_100MHz_0,
      aclken => fft_rx09_chXX_averaging_factor_div_aclken_0,
      m_axis_dout_tdata(31 downto 0) => fft_rx09_chXX_averaging_factor_div_dout_tdata_0(31 downto 0),
      m_axis_dout_tuser(0) => NLW_FFT_rx_rf09_chXX_averaging_factor_div_gen_35clks_m_axis_dout_tuser_UNCONNECTED(0),
      m_axis_dout_tvalid => fft_rx09_chXX_averaging_factor_div_dout_tvalid_0,
      s_axis_dividend_tdata(15 downto 0) => fft_rx09_chXX_averaging_factor_div_dividend_tdata_0(15 downto 0),
      s_axis_dividend_tready => NLW_FFT_rx_rf09_chXX_averaging_factor_div_gen_35clks_s_axis_dividend_tready_UNCONNECTED,
      s_axis_dividend_tvalid => fft_rx09_chXX_averaging_factor_div_dividend_tvalid_0(0),
      s_axis_divisor_tdata(31 downto 0) => fft_rx09_chXX_averaging_factor_div_divisor_tdata_0(31 downto 0),
      s_axis_divisor_tready => NLW_FFT_rx_rf09_chXX_averaging_factor_div_gen_35clks_s_axis_divisor_tready_UNCONNECTED,
      s_axis_divisor_tvalid => fft_rx09_chXX_averaging_factor_div_divisor_tvalid_0
    );
FFT_rx_rf09_chXX_noise_c_shift_ram_0: component UFBmod_Decoder_noise_rx09_ch00_c_shift_ram_0_0
     port map (
      CE => fft_rx09_chXX_averaging_factor_div_divisor_tvalid_0,
      CLK => clk_100MHz_0,
      D(18 downto 0) => fft_rx09_chXX_noise_xlslice_18to0_Dout_0(18 downto 0),
      Q(18 downto 0) => fft_rx09_chXX_noise_c_shift_ram_Q_0(18 downto 0)
    );
FFT_rx_rf09_chXX_noise_xlslice_18to0: component UFBmod_Decoder_noise_rx09_ch00_xlslice_18to0_0
     port map (
      Din(31 downto 0) => fft_rx09_chXX_averaging_factor_div_divisor_tdata_0(31 downto 0),
      Dout(18 downto 0) => fft_rx09_chXX_noise_xlslice_18to0_Dout_0(18 downto 0)
    );
FFT_rx_rf09_chXX_rowsum_c_accum_1clk: component UFBmod_Decoder_rowsum_rx09_ch00_c_accum_1clk_0
     port map (
      B(15 downto 0) => fft_rx09_chXX_signal_bins_blk_mem_gen_0_dina_0(15 downto 0),
      CE => fft_rx09_chXX_rowsum_accum_ce_0,
      CLK => clk_100MHz_0,
      Q(31 downto 0) => fft_rx09_chXX_averaging_factor_div_divisor_tdata_0(31 downto 0),
      SCLR => fft_rx09_chXX_rowsum_accum_sclr_0
    );
FFT_rx_rf09_chXX_signal_bins_blk_mem_gen_2clks: component UFBmod_Decoder_signal_bins_rx09_ch00_blk_mem_gen_2clks_0
     port map (
      addra(10 downto 0) => fft_rx09_chXX_signal_bins_mem_addra_0(10 downto 0),
      addrb(10 downto 0) => TRX_fft_rx09_chXX_signal_bins_blk_mem_gen_0_addrb_0(10 downto 0),
      clka => clk_100MHz_0,
      clkb => clk_100MHz_0,
      dina(15 downto 0) => fft_rx09_chXX_signal_bins_blk_mem_gen_0_dina_0(15 downto 0),
      dinb(15 downto 0) => xlconstant_val0_len16_dout_0(15 downto 0),
      douta(15 downto 0) => fft_rx09_chXX_signal_bins_blk_mem_gen_2clks_douta_0(15 downto 0),
      doutb(15 downto 0) => fft_rx09_chXX_signal_bins_blk_mem_gen_0_doutb_0(15 downto 0),
      wea(0) => fft_rx09_chXX_signal_bins_mem_wea_0,
      web(0) => xlconstant_val0_len1_dout_0(0)
    );
FFT_rx_rf09_chXX_signal_correction_mult_gen_4clks: component UFBmod_Decoder_signal_correction_rx09_ch00_mult_gen_4clks_0
     port map (
      A(15 downto 0) => fft_rx09_chXX_signal_correction_mult_ina_0(15 downto 0),
      B(31 downto 0) => fft_rx09_chXX_averaging_factor_div_dout_tdata_0(31 downto 0),
      CE => fft_rx09_chXX_signal_correction_mult_ce_0,
      CLK => clk_100MHz_0,
      P(15 downto 0) => fft_rx09_chXX_signal_correction_mult_gen_4clks_P_0(15 downto 0)
    );
FFT_rx_rf09_chXX_to_Decoder_FSM: component UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0
     port map (
      TRX_channel_rx_rf09_id(2 downto 0) => TRX_channel_rx_rf09_id_1(2 downto 0),
      TRX_post_fft_rx_rf09_chXX_mem_b_addr(4 downto 0) => TRX_post_fft_rx_rf09_chXX_mem_b_addr_0(4 downto 0),
      TRX_post_fft_rx_rf09_chXX_mem_b_dout(15 downto 0) => TRX_post_rx_rf09_chXX_mem_b_dout_1(15 downto 0),
      TRX_post_fft_rx_rf09_mem_a_EoT => TRX_post_fft_rx09_mem_a_EoT_0,
      TRX_post_fft_rx_rf09_mem_a_addr(41 downto 0) => TRX_post_rx_rf09_chXX_mem_a_addr_1(41 downto 0),
      clk_100MHz => clk_100MHz_0,
      fft_rx09_chXX_averaging_factor_div_aclken => fft_rx09_chXX_averaging_factor_div_aclken_0,
      fft_rx09_chXX_averaging_factor_div_divisor_tvalid => fft_rx09_chXX_averaging_factor_div_divisor_tvalid_0,
      fft_rx09_chXX_averaging_factor_div_dout_tvalid => fft_rx09_chXX_averaging_factor_div_dout_tvalid_0,
      fft_rx09_chXX_frame_avail_ctr(31 downto 0) => fft_rx09_chXX_frame_avail_ctr_0(31 downto 0),
      fft_rx09_chXX_rowsum_accum_ce => fft_rx09_chXX_rowsum_accum_ce_0,
      fft_rx09_chXX_rowsum_accum_sclr => fft_rx09_chXX_rowsum_accum_sclr_0,
      fft_rx09_chXX_signal_bins_mem_addra(10 downto 0) => fft_rx09_chXX_signal_bins_mem_addra_0(10 downto 0),
      fft_rx09_chXX_signal_bins_mem_dina(15 downto 0) => fft_rx09_chXX_signal_bins_blk_mem_gen_0_dina_0(15 downto 0),
      fft_rx09_chXX_signal_bins_mem_douta(15 downto 0) => fft_rx09_chXX_signal_bins_blk_mem_gen_2clks_douta_0(15 downto 0),
      fft_rx09_chXX_signal_bins_mem_wea => fft_rx09_chXX_signal_bins_mem_wea_0,
      fft_rx09_chXX_signal_correction_mult_ce => fft_rx09_chXX_signal_correction_mult_ce_0,
      fft_rx09_chXX_signal_correction_mult_ina(15 downto 0) => fft_rx09_chXX_signal_correction_mult_ina_0(15 downto 0),
      fft_rx09_chXX_signal_correction_mult_prod(15 downto 0) => fft_rx09_chXX_signal_correction_mult_gen_4clks_P_0(15 downto 0),
      reset_100MHz => reset_100MHz_0
    );
xlconstant_val0_len1: component UFBmod_Decoder_xlconstant_val0_len1_0
     port map (
      dout(0) => xlconstant_val0_len1_dout_0(0)
    );
xlconstant_val0_len16: component UFBmod_Decoder_xlconstant_val0_len16_0
     port map (
      dout(15 downto 0) => xlconstant_val0_len16_dout_0(15 downto 0)
    );
xlconstant_val1_len1: component UFBmod_Decoder_xlconstant_val1_len1_0
     port map (
      dout(0) => fft_rx09_chXX_averaging_factor_div_dividend_tvalid_0(0)
    );
xlconstant_val256x32_len16: component UFBmod_Decoder_xlconstant_val256x32_len16_0
     port map (
      dout(15 downto 0) => fft_rx09_chXX_averaging_factor_div_dividend_tdata_0(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_rx09_chXX_Decoder_imp_3KT8BU is
  port (
    TRX_dds_tx_rf09_ptt : in STD_LOGIC;
    TRX_decoder_fft_frame_avail_ctr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_decoder_rx_rf09_chXX_FIFO_accepted : in STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_FIFO_handshake : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_SoM_frameCtr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_decoder_rx_rf09_chXX_active : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_decoder_rx_rf09_chXX_msg_mem_b_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_decoder_rx_rf09_chXX_msg_mem_b_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_decoder_rx_rf09_chXX_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_doutb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_decoder_rx_rf09_chXX_sql_open : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_decoder_rx_rf09_chXX_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
end UFBmod_rx09_chXX_Decoder_imp_3KT8BU;

architecture STRUCTURE of UFBmod_rx09_chXX_Decoder_imp_3KT8BU is
  component UFBmod_Decoder_decoder_artemis_blk_mem_gen_2clks_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_Decoder_decoder_artemis_blk_mem_gen_2clks_0;
  component UFBmod_Decoder_decoder_artemis_mult_gen_4clks_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_Decoder_decoder_artemis_mult_gen_4clks_0;
  component UFBmod_Decoder_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_Decoder_blk_mem_gen_0_0;
  component UFBmod_Decoder_UFBmod_rx09_Decoder_0_0 is
  port (
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC;
    decoder_fft_frame_avail_ctr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_chXX_signal_bins_mem_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    decoder_rx09_chXX_signal_bins_mem_datab : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_dds_tx_rf09_ptt : in STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_rx09_chXX_artemis_mult_ce : out STD_LOGIC;
    decoder_rx09_chXX_artemis_mult_ina : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_rx09_chXX_artemis_mult_inb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_chXX_artemis_mult_outp : in STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_chXX_artemis_mem_wea : out STD_LOGIC;
    decoder_rx09_chXX_artemis_mem_addra : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_artemis_mem_dina : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_rx09_chXX_artemis_mem_douta : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_decoder_rx_rf09_chXX_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_decoder_rx_rf09_chXX_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_decoder_rx_rf09_chXX_noise : in STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_decoder_rx09_chXX_SoM_frameCtr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_decoder_rx_rf09_chXX_sql_open : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_active : out STD_LOGIC;
    decoder_rx09_chXX_msg_mem_a_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_msg_mem_a_we : out STD_LOGIC;
    decoder_rx09_chXX_msg_mem_a_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_chXX_FIFO_handshake : out STD_LOGIC;
    decoder_rx09_chXX_FIFO_accepted : in STD_LOGIC
  );
  end component UFBmod_Decoder_UFBmod_rx09_Decoder_0_0;
  signal TRX_dds_tx_rf09_ptt_1 : STD_LOGIC;
  signal TRX_decoder_artemis_rx_rf09_chXX_mem_dina_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_decoder_artemis_rx_rf09_chXX_mem_wea_1 : STD_LOGIC;
  signal TRX_decoder_artemis_rx_rf09_chXX_mult_ce_1 : STD_LOGIC;
  signal TRX_decoder_artemis_rx_rf09_chXX_mult_ina_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_decoder_artemis_rx_rf09_chXX_mult_inb_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_decoder_fft_frame_avail_ctr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_decoder_rx_rf09_ch00_squelch_lvl_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_FIFO_accepted_1 : STD_LOGIC;
  signal TRX_decoder_rx_rf09_chXX_FIFO_handshake_1 : STD_LOGIC;
  signal TRX_decoder_rx_rf09_chXX_SoM_frameCtr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_active_1 : STD_LOGIC;
  signal TRX_decoder_rx_rf09_chXX_artemis_blk_mem_gen_0_douta_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_artemis_mem_addra_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_artemis_mult_gen_4clks_P_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_center_pos_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_msg_blk_mem_gen_2clks_doutb_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_msg_mem_a_addr_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_msg_mem_a_din_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_msg_mem_a_we_0 : STD_LOGIC;
  signal TRX_decoder_rx_rf09_chXX_msg_mem_b_addr_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_noise_1 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_addrb_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_doutb_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_decoder_rx_rf09_chXX_sql_open_1 : STD_LOGIC;
  signal TRX_decoder_rx_rf09_chXX_strength_1 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal clk_100MHz_1 : STD_LOGIC;
  signal reset_100MHz_1 : STD_LOGIC;
begin
  TRX_dds_tx_rf09_ptt_1 <= TRX_dds_tx_rf09_ptt;
  TRX_decoder_fft_frame_avail_ctr_1(31 downto 0) <= TRX_decoder_fft_frame_avail_ctr(31 downto 0);
  TRX_decoder_rx_rf09_ch00_squelch_lvl_1(15 downto 0) <= TRX_decoder_rx_rf09_chXX_squelch_lvl(15 downto 0);
  TRX_decoder_rx_rf09_chXX_FIFO_accepted_1 <= TRX_decoder_rx_rf09_chXX_FIFO_accepted;
  TRX_decoder_rx_rf09_chXX_FIFO_handshake <= TRX_decoder_rx_rf09_chXX_FIFO_handshake_1;
  TRX_decoder_rx_rf09_chXX_SoM_frameCtr(31 downto 0) <= TRX_decoder_rx_rf09_chXX_SoM_frameCtr_1(31 downto 0);
  TRX_decoder_rx_rf09_chXX_active <= TRX_decoder_rx_rf09_chXX_active_1;
  TRX_decoder_rx_rf09_chXX_center_pos(7 downto 0) <= TRX_decoder_rx_rf09_chXX_center_pos_1(7 downto 0);
  TRX_decoder_rx_rf09_chXX_msg_mem_b_addr_1(7 downto 0) <= TRX_decoder_rx_rf09_chXX_msg_mem_b_addr(7 downto 0);
  TRX_decoder_rx_rf09_chXX_msg_mem_b_dout(7 downto 0) <= TRX_decoder_rx_rf09_chXX_msg_blk_mem_gen_2clks_doutb_1(7 downto 0);
  TRX_decoder_rx_rf09_chXX_noise_1(18 downto 0) <= TRX_decoder_rx_rf09_chXX_noise(18 downto 0);
  TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_addrb(10 downto 0) <= TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_addrb_1(10 downto 0);
  TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_doutb_1(15 downto 0) <= TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_doutb(15 downto 0);
  TRX_decoder_rx_rf09_chXX_sql_open <= TRX_decoder_rx_rf09_chXX_sql_open_1;
  TRX_decoder_rx_rf09_chXX_strength(18 downto 0) <= TRX_decoder_rx_rf09_chXX_strength_1(18 downto 0);
  clk_100MHz_1 <= clk_100MHz;
  reset_100MHz_1 <= reset_100MHz;
UFBmod_rx09_chXX_Decoder_FSM: component UFBmod_Decoder_UFBmod_rx09_Decoder_0_0
     port map (
      TRX_dds_tx_rf09_ptt => TRX_dds_tx_rf09_ptt_1,
      TRX_decoder_rx09_chXX_SoM_frameCtr(31 downto 0) => TRX_decoder_rx_rf09_chXX_SoM_frameCtr_1(31 downto 0),
      TRX_decoder_rx_rf09_chXX_active => TRX_decoder_rx_rf09_chXX_active_1,
      TRX_decoder_rx_rf09_chXX_center_pos(7 downto 0) => TRX_decoder_rx_rf09_chXX_center_pos_1(7 downto 0),
      TRX_decoder_rx_rf09_chXX_noise(18 downto 0) => TRX_decoder_rx_rf09_chXX_noise_1(18 downto 0),
      TRX_decoder_rx_rf09_chXX_sql_open => TRX_decoder_rx_rf09_chXX_sql_open_1,
      TRX_decoder_rx_rf09_chXX_squelch_lvl(15 downto 0) => TRX_decoder_rx_rf09_ch00_squelch_lvl_1(15 downto 0),
      TRX_decoder_rx_rf09_chXX_strength(18 downto 0) => TRX_decoder_rx_rf09_chXX_strength_1(18 downto 0),
      clk_100MHz => clk_100MHz_1,
      decoder_fft_frame_avail_ctr(31 downto 0) => TRX_decoder_fft_frame_avail_ctr_1(31 downto 0),
      decoder_rx09_chXX_FIFO_accepted => TRX_decoder_rx_rf09_chXX_FIFO_accepted_1,
      decoder_rx09_chXX_FIFO_handshake => TRX_decoder_rx_rf09_chXX_FIFO_handshake_1,
      decoder_rx09_chXX_artemis_mem_addra(7 downto 0) => TRX_decoder_rx_rf09_chXX_artemis_mem_addra_1(7 downto 0),
      decoder_rx09_chXX_artemis_mem_dina(15 downto 0) => TRX_decoder_artemis_rx_rf09_chXX_mem_dina_1(15 downto 0),
      decoder_rx09_chXX_artemis_mem_douta(15 downto 0) => TRX_decoder_rx_rf09_chXX_artemis_blk_mem_gen_0_douta_1(15 downto 0),
      decoder_rx09_chXX_artemis_mem_wea => TRX_decoder_artemis_rx_rf09_chXX_mem_wea_1,
      decoder_rx09_chXX_artemis_mult_ce => TRX_decoder_artemis_rx_rf09_chXX_mult_ce_1,
      decoder_rx09_chXX_artemis_mult_ina(15 downto 0) => TRX_decoder_artemis_rx_rf09_chXX_mult_ina_1(15 downto 0),
      decoder_rx09_chXX_artemis_mult_inb(31 downto 0) => TRX_decoder_artemis_rx_rf09_chXX_mult_inb_1(31 downto 0),
      decoder_rx09_chXX_artemis_mult_outp(31 downto 0) => TRX_decoder_rx_rf09_chXX_artemis_mult_gen_4clks_P_1(31 downto 0),
      decoder_rx09_chXX_msg_mem_a_addr(7 downto 0) => TRX_decoder_rx_rf09_chXX_msg_mem_a_addr_0(7 downto 0),
      decoder_rx09_chXX_msg_mem_a_din(7 downto 0) => TRX_decoder_rx_rf09_chXX_msg_mem_a_din_0(7 downto 0),
      decoder_rx09_chXX_msg_mem_a_we => TRX_decoder_rx_rf09_chXX_msg_mem_a_we_0,
      decoder_rx09_chXX_signal_bins_mem_addrb(10 downto 0) => TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_addrb_1(10 downto 0),
      decoder_rx09_chXX_signal_bins_mem_datab(15 downto 0) => TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_doutb_1(15 downto 0),
      reset_100MHz => reset_100MHz_1
    );
decoder_rx09_chXX_artemis_blk_mem_gen_2clks: component UFBmod_Decoder_decoder_artemis_blk_mem_gen_2clks_0
     port map (
      addra(7 downto 0) => TRX_decoder_rx_rf09_chXX_artemis_mem_addra_1(7 downto 0),
      clka => clk_100MHz_1,
      dina(15 downto 0) => TRX_decoder_artemis_rx_rf09_chXX_mem_dina_1(15 downto 0),
      douta(15 downto 0) => TRX_decoder_rx_rf09_chXX_artemis_blk_mem_gen_0_douta_1(15 downto 0),
      wea(0) => TRX_decoder_artemis_rx_rf09_chXX_mem_wea_1
    );
decoder_rx09_chXX_artemis_mult_gen_4clks: component UFBmod_Decoder_decoder_artemis_mult_gen_4clks_0
     port map (
      A(15 downto 0) => TRX_decoder_artemis_rx_rf09_chXX_mult_ina_1(15 downto 0),
      B(31 downto 0) => TRX_decoder_artemis_rx_rf09_chXX_mult_inb_1(31 downto 0),
      CE => TRX_decoder_artemis_rx_rf09_chXX_mult_ce_1,
      CLK => clk_100MHz_1,
      P(31 downto 0) => TRX_decoder_rx_rf09_chXX_artemis_mult_gen_4clks_P_1(31 downto 0)
    );
decoder_rx09_chXX_msg_blk_mem_gen_2clks: component UFBmod_Decoder_blk_mem_gen_0_0
     port map (
      addra(7 downto 0) => TRX_decoder_rx_rf09_chXX_msg_mem_a_addr_0(7 downto 0),
      addrb(7 downto 0) => TRX_decoder_rx_rf09_chXX_msg_mem_b_addr_1(7 downto 0),
      clka => clk_100MHz_1,
      clkb => clk_100MHz_1,
      dina(7 downto 0) => TRX_decoder_rx_rf09_chXX_msg_mem_a_din_0(7 downto 0),
      doutb(7 downto 0) => TRX_decoder_rx_rf09_chXX_msg_blk_mem_gen_2clks_doutb_1(7 downto 0),
      wea(0) => TRX_decoder_rx_rf09_chXX_msg_mem_a_we_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_Decoder is
  port (
    TRX_channel_rx_rf09_id : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TRX_dds_tx_rf09_ptt : in STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_SoM_frameCtr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_decoder_rx_rf09_chXX_active : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_decoder_rx_rf09_chXX_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_decoder_rx_rf09_chXX_sql_open : out STD_LOGIC;
    TRX_decoder_rx_rf09_chXX_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_decoder_rx_rf09_chXX_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    TRX_post_fft_rx_rf09_chXX_mem_b_addr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    TRX_post_fft_rx_rf09_chXX_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TRX_post_fft_rx_rf09_mem_a_EoT : in STD_LOGIC;
    TRX_post_fft_rx_rf09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    TRX_pushdata_rx_rf09_chXX_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TRX_pushdata_rx_rf09_chXX_grant : in STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_req : out STD_LOGIC;
    TRX_pushdata_rx_rf09_chXX_wr_en : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of UFBmod_Decoder : entity is "UFBmod_Decoder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UFBmod_Decoder,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=19,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of UFBmod_Decoder : entity is "UFBmod_Decoder.hwdef";
end UFBmod_Decoder;

architecture STRUCTURE of UFBmod_Decoder is
  signal TRX_channel_rx_rf09_id_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal TRX_dds_tx_rf09_ptt_0 : STD_LOGIC;
  signal TRX_decoder_fft_frame_avail_ctr_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRX_decoder_rx09_chXX_FIFO_accepted_1 : STD_LOGIC;
  signal TRX_decoder_rx09_chXX_FIFO_handshake_0 : STD_LOGIC;
  signal TRX_decoder_rx09_chXX_active_0 : STD_LOGIC;
  signal TRX_decoder_rx09_chXX_center_pos_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx09_chXX_msg_mem_b_addr_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx09_chXX_msg_mem_b_dout_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_decoder_rx09_chXX_noise_0 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal TRX_decoder_rx09_chXX_signal_bins_blk_mem_gen_0_doutb_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_decoder_rx09_chXX_sql_open_0 : STD_LOGIC;
  signal TRX_decoder_rx09_chXX_squelch_lvl_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_decoder_rx09_chXX_strength_0 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal TRX_fft_rx09_chXX_signal_bins_blk_mem_gen_0_addrb_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TRX_post_fft_rx09_chXX_mem_b_addr_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal TRX_post_fft_rx09_chXX_mem_b_dout_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TRX_post_fft_rx09_mem_a_EoT_0 : STD_LOGIC;
  signal TRX_post_fft_rx09_mem_a_addr_0 : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal TRX_pushdata_rx_rf09_chXX_din_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TRX_pushdata_rx_rf09_chXX_grant_2 : STD_LOGIC;
  signal TRX_pushdata_rx_rf09_chXX_req_2 : STD_LOGIC;
  signal TRX_pushdata_rx_rf09_chXX_wr_en_0 : STD_LOGIC;
  signal UFBmod_rx09_chXX_Decoder_TRX_decoder_rx_rf09_chXX_SoM_frameCtr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_100MHz_0 : STD_LOGIC;
  signal reset_100MHz_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET reset_100MHz, CLK_DOMAIN UFBmod_Decoder_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_100MHz : signal is "xilinx.com:signal:reset:1.0 RST.RESET_100MHZ RST";
  attribute X_INTERFACE_PARAMETER of reset_100MHz : signal is "XIL_INTERFACENAME RST.RESET_100MHZ, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of TRX_channel_rx_rf09_id : signal is "xilinx.com:signal:data:1.0 DATA.TRX_CHANNEL_RX_RF09_ID DATA";
  attribute X_INTERFACE_PARAMETER of TRX_channel_rx_rf09_id : signal is "XIL_INTERFACENAME DATA.TRX_CHANNEL_RX_RF09_ID, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_decoder_rx_rf09_chXX_SoM_frameCtr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_DECODER_RX_RF09_CHXX_SOM_FRAMECTR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_decoder_rx_rf09_chXX_SoM_frameCtr : signal is "XIL_INTERFACENAME DATA.TRX_DECODER_RX_RF09_CHXX_SOM_FRAMECTR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_decoder_rx_rf09_chXX_center_pos : signal is "xilinx.com:signal:data:1.0 DATA.TRX_DECODER_RX_RF09_CHXX_CENTER_POS DATA";
  attribute X_INTERFACE_PARAMETER of TRX_decoder_rx_rf09_chXX_center_pos : signal is "XIL_INTERFACENAME DATA.TRX_DECODER_RX_RF09_CHXX_CENTER_POS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_decoder_rx_rf09_chXX_squelch_lvl : signal is "xilinx.com:signal:data:1.0 DATA.TRX_DECODER_RX_RF09_CHXX_SQUELCH_LVL DATA";
  attribute X_INTERFACE_PARAMETER of TRX_decoder_rx_rf09_chXX_squelch_lvl : signal is "XIL_INTERFACENAME DATA.TRX_DECODER_RX_RF09_CHXX_SQUELCH_LVL, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_decoder_rx_rf09_chXX_strength : signal is "xilinx.com:signal:data:1.0 DATA.TRX_DECODER_RX_RF09_CHXX_STRENGTH DATA";
  attribute X_INTERFACE_PARAMETER of TRX_decoder_rx_rf09_chXX_strength : signal is "XIL_INTERFACENAME DATA.TRX_DECODER_RX_RF09_CHXX_STRENGTH, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_post_fft_rx_rf09_chXX_mem_b_addr : signal is "xilinx.com:signal:data:1.0 DATA.TRX_POST_FFT_RX_RF09_CHXX_MEM_B_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of TRX_post_fft_rx_rf09_chXX_mem_b_addr : signal is "XIL_INTERFACENAME DATA.TRX_POST_FFT_RX_RF09_CHXX_MEM_B_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_post_fft_rx_rf09_chXX_mem_b_dout : signal is "xilinx.com:signal:data:1.0 DATA.TRX_POST_FFT_RX_RF09_CHXX_MEM_B_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of TRX_post_fft_rx_rf09_chXX_mem_b_dout : signal is "XIL_INTERFACENAME DATA.TRX_POST_FFT_RX_RF09_CHXX_MEM_B_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of TRX_pushdata_rx_rf09_chXX_din : signal is "xilinx.com:signal:data:1.0 DATA.TRX_PUSHDATA_RX_RF09_CHXX_DIN DATA";
  attribute X_INTERFACE_PARAMETER of TRX_pushdata_rx_rf09_chXX_din : signal is "XIL_INTERFACENAME DATA.TRX_PUSHDATA_RX_RF09_CHXX_DIN, LAYERED_METADATA undef";
begin
  TRX_channel_rx_rf09_id_1(2 downto 0) <= TRX_channel_rx_rf09_id(2 downto 0);
  TRX_dds_tx_rf09_ptt_0 <= TRX_dds_tx_rf09_ptt;
  TRX_decoder_rx09_chXX_squelch_lvl_1(15 downto 0) <= TRX_decoder_rx_rf09_chXX_squelch_lvl(15 downto 0);
  TRX_decoder_rx_rf09_chXX_SoM_frameCtr(31 downto 0) <= UFBmod_rx09_chXX_Decoder_TRX_decoder_rx_rf09_chXX_SoM_frameCtr(31 downto 0);
  TRX_decoder_rx_rf09_chXX_active <= TRX_decoder_rx09_chXX_active_0;
  TRX_decoder_rx_rf09_chXX_center_pos(7 downto 0) <= TRX_decoder_rx09_chXX_center_pos_0(7 downto 0);
  TRX_decoder_rx_rf09_chXX_noise(18 downto 0) <= TRX_decoder_rx09_chXX_noise_0(18 downto 0);
  TRX_decoder_rx_rf09_chXX_sql_open <= TRX_decoder_rx09_chXX_sql_open_0;
  TRX_decoder_rx_rf09_chXX_strength(18 downto 0) <= TRX_decoder_rx09_chXX_strength_0(18 downto 0);
  TRX_post_fft_rx09_chXX_mem_b_dout_0(15 downto 0) <= TRX_post_fft_rx_rf09_chXX_mem_b_dout(15 downto 0);
  TRX_post_fft_rx09_mem_a_EoT_0 <= TRX_post_fft_rx_rf09_mem_a_EoT;
  TRX_post_fft_rx09_mem_a_addr_0(41 downto 0) <= TRX_post_fft_rx_rf09_mem_a_addr(41 downto 0);
  TRX_post_fft_rx_rf09_chXX_mem_b_addr(4 downto 0) <= TRX_post_fft_rx09_chXX_mem_b_addr_0(4 downto 0);
  TRX_pushdata_rx_rf09_chXX_din(7 downto 0) <= TRX_pushdata_rx_rf09_chXX_din_0(7 downto 0);
  TRX_pushdata_rx_rf09_chXX_grant_2 <= TRX_pushdata_rx_rf09_chXX_grant;
  TRX_pushdata_rx_rf09_chXX_req <= TRX_pushdata_rx_rf09_chXX_req_2;
  TRX_pushdata_rx_rf09_chXX_wr_en <= TRX_pushdata_rx_rf09_chXX_wr_en_0;
  clk_100MHz_0 <= clk_100MHz;
  reset_100MHz_0 <= reset_100MHz;
Decoder_rx09_to_FIFO: entity work.Decoder_rx09_to_FIFO_imp_FFVYW2
     port map (
      TRX_decoder_rx_rf09_chXX_FIFO_accepted => TRX_decoder_rx09_chXX_FIFO_accepted_1,
      TRX_decoder_rx_rf09_chXX_FIFO_handshake => TRX_decoder_rx09_chXX_FIFO_handshake_0,
      TRX_decoder_rx_rf09_chXX_msg_mem_b_addr(7 downto 0) => TRX_decoder_rx09_chXX_msg_mem_b_addr_1(7 downto 0),
      TRX_decoder_rx_rf09_chXX_msg_mem_b_din(7 downto 0) => TRX_decoder_rx09_chXX_msg_mem_b_dout_0(7 downto 0),
      TRX_pushdata_rx_rf09_chXX_din(7 downto 0) => TRX_pushdata_rx_rf09_chXX_din_0(7 downto 0),
      TRX_pushdata_rx_rf09_chXX_grant => TRX_pushdata_rx_rf09_chXX_grant_2,
      TRX_pushdata_rx_rf09_chXX_req => TRX_pushdata_rx_rf09_chXX_req_2,
      TRX_pushdata_rx_rf09_chXX_wr_en => TRX_pushdata_rx_rf09_chXX_wr_en_0,
      clk_100MHz => clk_100MHz_0,
      reset_100MHz => reset_100MHz_0
    );
FFT_rx09_chXX_to_Decoder: entity work.FFT_rx09_chXX_to_Decoder_imp_1G2C2U
     port map (
      TRX_channel_rx_rf09_id(2 downto 0) => TRX_channel_rx_rf09_id_1(2 downto 0),
      TRX_fft_rx_rf09_chXX_noise(18 downto 0) => TRX_decoder_rx09_chXX_noise_0(18 downto 0),
      TRX_fft_rx_rf09_frame_avail_ctr(31 downto 0) => TRX_decoder_fft_frame_avail_ctr_0(31 downto 0),
      TRX_post_rx_rf09_chXX_mem_a_EoT => TRX_post_fft_rx09_mem_a_EoT_0,
      TRX_post_rx_rf09_chXX_mem_a_addr(41 downto 0) => TRX_post_fft_rx09_mem_a_addr_0(41 downto 0),
      TRX_post_rx_rf09_chXX_mem_b_addr(4 downto 0) => TRX_post_fft_rx09_chXX_mem_b_addr_0(4 downto 0),
      TRX_post_rx_rf09_chXX_mem_b_dout(15 downto 0) => TRX_post_fft_rx09_chXX_mem_b_dout_0(15 downto 0),
      TRX_signal_bins_rx_rf09_chXX_blk_mem_gen_0_addrb(10 downto 0) => TRX_fft_rx09_chXX_signal_bins_blk_mem_gen_0_addrb_1(10 downto 0),
      TRX_signal_bins_rx_rf09_chXX_blk_mem_gen_0_doutb(15 downto 0) => TRX_decoder_rx09_chXX_signal_bins_blk_mem_gen_0_doutb_0(15 downto 0),
      clk_100MHz => clk_100MHz_0,
      reset_100MHz => reset_100MHz_0
    );
UFBmod_rx09_chXX_Decoder: entity work.UFBmod_rx09_chXX_Decoder_imp_3KT8BU
     port map (
      TRX_dds_tx_rf09_ptt => TRX_dds_tx_rf09_ptt_0,
      TRX_decoder_fft_frame_avail_ctr(31 downto 0) => TRX_decoder_fft_frame_avail_ctr_0(31 downto 0),
      TRX_decoder_rx_rf09_chXX_FIFO_accepted => TRX_decoder_rx09_chXX_FIFO_accepted_1,
      TRX_decoder_rx_rf09_chXX_FIFO_handshake => TRX_decoder_rx09_chXX_FIFO_handshake_0,
      TRX_decoder_rx_rf09_chXX_SoM_frameCtr(31 downto 0) => UFBmod_rx09_chXX_Decoder_TRX_decoder_rx_rf09_chXX_SoM_frameCtr(31 downto 0),
      TRX_decoder_rx_rf09_chXX_active => TRX_decoder_rx09_chXX_active_0,
      TRX_decoder_rx_rf09_chXX_center_pos(7 downto 0) => TRX_decoder_rx09_chXX_center_pos_0(7 downto 0),
      TRX_decoder_rx_rf09_chXX_msg_mem_b_addr(7 downto 0) => TRX_decoder_rx09_chXX_msg_mem_b_addr_1(7 downto 0),
      TRX_decoder_rx_rf09_chXX_msg_mem_b_dout(7 downto 0) => TRX_decoder_rx09_chXX_msg_mem_b_dout_0(7 downto 0),
      TRX_decoder_rx_rf09_chXX_noise(18 downto 0) => TRX_decoder_rx09_chXX_noise_0(18 downto 0),
      TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_addrb(10 downto 0) => TRX_fft_rx09_chXX_signal_bins_blk_mem_gen_0_addrb_1(10 downto 0),
      TRX_decoder_rx_rf09_chXX_signal_bins_blk_mem_gen_0_doutb(15 downto 0) => TRX_decoder_rx09_chXX_signal_bins_blk_mem_gen_0_doutb_0(15 downto 0),
      TRX_decoder_rx_rf09_chXX_sql_open => TRX_decoder_rx09_chXX_sql_open_0,
      TRX_decoder_rx_rf09_chXX_squelch_lvl(15 downto 0) => TRX_decoder_rx09_chXX_squelch_lvl_1(15 downto 0),
      TRX_decoder_rx_rf09_chXX_strength(18 downto 0) => TRX_decoder_rx09_chXX_strength_0(18 downto 0),
      clk_100MHz => clk_100MHz_0,
      reset_100MHz => reset_100MHz_0
    );
end STRUCTURE;
