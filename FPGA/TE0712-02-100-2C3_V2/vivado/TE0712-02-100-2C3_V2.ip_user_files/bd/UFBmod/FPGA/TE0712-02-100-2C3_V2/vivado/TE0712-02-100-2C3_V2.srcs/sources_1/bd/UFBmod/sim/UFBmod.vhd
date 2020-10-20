--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Tue Oct 20 23:08:38 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target UFBmod.bd
--Design      : UFBmod
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Decoder_rx09_to_FIFO_imp_JDTZXY is
  port (
    clk_100MHz : in STD_LOGIC;
    decoder_rx09_ch00_FIFO_accepted : out STD_LOGIC;
    decoder_rx09_ch00_FIFO_handshake : in STD_LOGIC;
    decoder_rx09_ch00_SoM_frameCtr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_ch00_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_remainVal : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_u32Count : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pushdata_rx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pushdata_rx09_en : out STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
end Decoder_rx09_to_FIFO_imp_JDTZXY;

architecture STRUCTURE of Decoder_rx09_to_FIFO_imp_JDTZXY is
  component UFBmod_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component UFBmod_c_counter_binary_0_0;
  component UFBmod_fifo_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component UFBmod_fifo_generator_0_0;
  component UFBmod_Decoder_rx09_to_FIFO_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    decoder_rx09_ch00_center_pos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_strength : in STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_SoM_frameCtr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_ch00_remainVal : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_u32Count : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_FIFO_handshake : in STD_LOGIC;
    decoder_rx09_ch00_FIFO_accepted : out STD_LOGIC;
    decoder_rx09_out_len : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pushdata_rx09_en : out STD_LOGIC;
    pushdata_rx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component UFBmod_Decoder_rx09_to_FIFO_0_0;
  signal Decoder_rx09_to_FIFO_0_decoder_rx09_ch00_FIFO_accepted : STD_LOGIC;
  signal Decoder_rx09_to_FIFO_0_pushdata_rx09_byteData : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Decoder_rx09_to_FIFO_0_pushdata_rx09_en : STD_LOGIC;
  signal data_rx09_c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal decoder_rx09_ch00_FIFO_handshake_1 : STD_LOGIC;
  signal decoder_rx09_ch00_SoM_frameCtr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal decoder_rx09_ch00_center_pos_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decoder_rx09_ch00_remainVal_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decoder_rx09_ch00_strength_1 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal decoder_rx09_ch00_u32Count_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_rx09_fifo_generator_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_data_rx09_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_data_rx09_fifo_generator_0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_data_rx09_fifo_generator_0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_data_rx09_fifo_generator_0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  decoder_rx09_ch00_FIFO_accepted <= Decoder_rx09_to_FIFO_0_decoder_rx09_ch00_FIFO_accepted;
  decoder_rx09_ch00_FIFO_handshake_1 <= decoder_rx09_ch00_FIFO_handshake;
  decoder_rx09_ch00_SoM_frameCtr_1(31 downto 0) <= decoder_rx09_ch00_SoM_frameCtr(31 downto 0);
  decoder_rx09_ch00_center_pos_1(7 downto 0) <= decoder_rx09_ch00_center_pos(7 downto 0);
  decoder_rx09_ch00_remainVal_1(7 downto 0) <= decoder_rx09_ch00_remainVal(7 downto 0);
  decoder_rx09_ch00_strength_1(18 downto 0) <= decoder_rx09_ch00_strength(18 downto 0);
  decoder_rx09_ch00_u32Count_1(7 downto 0) <= decoder_rx09_ch00_u32Count(7 downto 0);
  pushdata_rx09_byteData(7 downto 0) <= Decoder_rx09_to_FIFO_0_pushdata_rx09_byteData(7 downto 0);
  pushdata_rx09_en <= Decoder_rx09_to_FIFO_0_pushdata_rx09_en;
Decoder_rx09_to_FIFO_0: component UFBmod_Decoder_rx09_to_FIFO_0_0
     port map (
      clk => clk_100MHz,
      decoder_rx09_ch00_FIFO_accepted => Decoder_rx09_to_FIFO_0_decoder_rx09_ch00_FIFO_accepted,
      decoder_rx09_ch00_FIFO_handshake => decoder_rx09_ch00_FIFO_handshake_1,
      decoder_rx09_ch00_SoM_frameCtr(31 downto 0) => decoder_rx09_ch00_SoM_frameCtr_1(31 downto 0),
      decoder_rx09_ch00_center_pos(7 downto 0) => decoder_rx09_ch00_center_pos_1(7 downto 0),
      decoder_rx09_ch00_remainVal(7 downto 0) => decoder_rx09_ch00_remainVal_1(7 downto 0),
      decoder_rx09_ch00_strength(18 downto 0) => decoder_rx09_ch00_strength_1(18 downto 0),
      decoder_rx09_ch00_u32Count(7 downto 0) => decoder_rx09_ch00_u32Count_1(7 downto 0),
      decoder_rx09_out_len(9 downto 0) => data_rx09_c_counter_binary_0_Q(9 downto 0),
      pushdata_rx09_byteData(7 downto 0) => Decoder_rx09_to_FIFO_0_pushdata_rx09_byteData(7 downto 0),
      pushdata_rx09_en => Decoder_rx09_to_FIFO_0_pushdata_rx09_en,
      reset => reset_100MHz
    );
data_rx09_c_counter_binary_0: component UFBmod_c_counter_binary_0_0
     port map (
      CE => '1',
      CLK => clk_100MHz,
      Q(9 downto 0) => data_rx09_c_counter_binary_0_Q(9 downto 0),
      SCLR => reset_100MHz
    );
data_rx09_fifo_generator_0: component UFBmod_fifo_generator_0_0
     port map (
      clk => clk_100MHz,
      din(0) => '0',
      dout(7 downto 0) => NLW_data_rx09_fifo_generator_0_dout_UNCONNECTED(7 downto 0),
      empty => NLW_data_rx09_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_data_rx09_fifo_generator_0_full_UNCONNECTED,
      rd_en => '0',
      rd_rst_busy => NLW_data_rx09_fifo_generator_0_rd_rst_busy_UNCONNECTED,
      rst => reset_100MHz,
      wr_en => '0',
      wr_rst_busy => NLW_data_rx09_fifo_generator_0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FFT_rx09_to_Decoder_imp_1D60DD is
  port (
    clk : in STD_LOGIC;
    decoder_fft_frame_avail_ctr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_ch00_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    post_fft_rx09_ch00_mem_b_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    post_fft_rx09_mem_a_EoT : in STD_LOGIC;
    post_fft_rx09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    post_fft_rx09_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_bins_rx09_ch00_blk_mem_gen_0_addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    signal_bins_rx09_ch00_blk_mem_gen_0_doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end FFT_rx09_to_Decoder_imp_1D60DD;

architecture STRUCTURE of FFT_rx09_to_Decoder_imp_1D60DD is
  component UFBmod_blk_mem_gen_0_0 is
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
  end component UFBmod_blk_mem_gen_0_0;
  component UFBmod_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_xlconstant_0_0;
  component UFBmod_c_accum_0_0 is
  port (
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_c_accum_0_0;
  component UFBmod_mult_gen_0_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_mult_gen_0_0;
  component UFBmod_div_gen_0_0 is
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
  end component UFBmod_div_gen_0_0;
  component UFBmod_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_xlconstant_0_1;
  component UFBmod_xlconstant_0_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component UFBmod_xlconstant_0_2;
  component UFBmod_xlconstant_0_3 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_xlconstant_0_3;
  component UFBmod_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  end component UFBmod_xlslice_0_0;
  component UFBmod_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 18 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  end component UFBmod_c_shift_ram_0_0;
  component UFBmod_FFT_rx09_to_Decoder_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    post_fft_rx09_mem_a_EoT : in STD_LOGIC;
    post_fft_rx09_mem_addra : in STD_LOGIC_VECTOR ( 41 downto 0 );
    post_fft_rx09_mem_addrb : out STD_LOGIC_VECTOR ( 9 downto 0 );
    post_fft_rx09_mem_doutb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rowsum_rx09_ch00_accum_sclr : out STD_LOGIC;
    rowsum_rx09_ch00_accum_ce : out STD_LOGIC;
    averaging_factor_div_aclken : out STD_LOGIC;
    averaging_factor_div_dout_tvalid : in STD_LOGIC;
    averaging_factor_div_divisor_tvalid : out STD_LOGIC;
    signal_correction_rx09_ch00_mult_ce : out STD_LOGIC;
    signal_correction_rx09_ch00_mult_ina : out STD_LOGIC_VECTOR ( 15 downto 0 );
    signal_correction_rx09_ch00_mult_prod : in STD_LOGIC_VECTOR ( 15 downto 0 );
    signal_bins_rx09_ch00_mem_addra : out STD_LOGIC_VECTOR ( 10 downto 0 );
    signal_bins_rx09_ch00_mem_dina : out STD_LOGIC_VECTOR ( 15 downto 0 );
    signal_bins_rx09_ch00_mem_douta : in STD_LOGIC_VECTOR ( 15 downto 0 );
    signal_bins_rx09_ch00_mem_wea : out STD_LOGIC;
    decoder_fft_frame_avail_ctr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_FFT_rx09_to_Decoder_0_0;
  signal FFT_rx09_to_Decoder_FSM_signal_correction_rx09_ch00_mult_ina : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal averaging_factor_div_dividend_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal averaging_factor_div_dividend_tvalid : STD_LOGIC_VECTOR ( 0 to 0 );
  signal averaging_factor_div_divisor_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal averaging_factor_div_divisor_tvalid : STD_LOGIC;
  signal averaging_factor_div_dout_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal averaging_factor_div_dout_tvalid : STD_LOGIC;
  signal averaging_factor_divider_aclken : STD_LOGIC;
  signal clk_100MHz : STD_LOGIC;
  signal noise_rx09_ch00_c_shift_ram_0_Q : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal noise_rx09_ch00_xlslice_18to0_Dout : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal post_fft_rx09_mem_a_EoT_1 : STD_LOGIC;
  signal post_fft_rx09_mem_a_addr_1 : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal post_fft_rx09_mem_b_dout_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reset_100MHz : STD_LOGIC;
  signal rowsum_rx09_ch00_accum_ce : STD_LOGIC;
  signal rowsum_rx09_ch00_accum_sclr : STD_LOGIC;
  signal signal_bins_rx09_ch00_blk_mem_gen_0_addra : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal signal_bins_rx09_ch00_blk_mem_gen_0_dina : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_bins_rx09_ch00_blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_bins_rx09_ch00_blk_mem_gen_0_wea : STD_LOGIC;
  signal signal_correction_rx09_ch00_mult_ce : STD_LOGIC;
  signal signal_correction_rx09_ch00_mult_prod : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_val0_len16_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_val0_len1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_averaging_factor_rx09_ch00_div_gen_35clks_s_axis_dividend_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_averaging_factor_rx09_ch00_div_gen_35clks_s_axis_divisor_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_averaging_factor_rx09_ch00_div_gen_35clks_m_axis_dout_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  clk_100MHz <= clk;
  decoder_rx09_ch00_noise(18 downto 0) <= noise_rx09_ch00_c_shift_ram_0_Q(18 downto 0);
  post_fft_rx09_mem_a_EoT_1 <= post_fft_rx09_mem_a_EoT;
  post_fft_rx09_mem_a_addr_1(41 downto 0) <= post_fft_rx09_mem_a_addr(41 downto 0);
  post_fft_rx09_mem_b_dout_1(15 downto 0) <= post_fft_rx09_mem_b_dout(15 downto 0);
  reset_100MHz <= reset;
FFT_rx09_to_Decoder_FSM: component UFBmod_FFT_rx09_to_Decoder_0_0
     port map (
      averaging_factor_div_aclken => averaging_factor_divider_aclken,
      averaging_factor_div_divisor_tvalid => averaging_factor_div_divisor_tvalid,
      averaging_factor_div_dout_tvalid => averaging_factor_div_dout_tvalid,
      clk => clk_100MHz,
      decoder_fft_frame_avail_ctr(31 downto 0) => decoder_fft_frame_avail_ctr(31 downto 0),
      post_fft_rx09_mem_a_EoT => post_fft_rx09_mem_a_EoT_1,
      post_fft_rx09_mem_addra(41 downto 0) => post_fft_rx09_mem_a_addr_1(41 downto 0),
      post_fft_rx09_mem_addrb(9 downto 0) => post_fft_rx09_ch00_mem_b_addr(9 downto 0),
      post_fft_rx09_mem_doutb(15 downto 0) => post_fft_rx09_mem_b_dout_1(15 downto 0),
      reset => reset_100MHz,
      rowsum_rx09_ch00_accum_ce => rowsum_rx09_ch00_accum_ce,
      rowsum_rx09_ch00_accum_sclr => rowsum_rx09_ch00_accum_sclr,
      signal_bins_rx09_ch00_mem_addra(10 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_addra(10 downto 0),
      signal_bins_rx09_ch00_mem_dina(15 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_dina(15 downto 0),
      signal_bins_rx09_ch00_mem_douta(15 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_douta(15 downto 0),
      signal_bins_rx09_ch00_mem_wea => signal_bins_rx09_ch00_blk_mem_gen_0_wea,
      signal_correction_rx09_ch00_mult_ce => signal_correction_rx09_ch00_mult_ce,
      signal_correction_rx09_ch00_mult_ina(15 downto 0) => FFT_rx09_to_Decoder_FSM_signal_correction_rx09_ch00_mult_ina(15 downto 0),
      signal_correction_rx09_ch00_mult_prod(15 downto 0) => signal_correction_rx09_ch00_mult_prod(15 downto 0)
    );
averaging_factor_rx09_ch00_div_gen_35clks: component UFBmod_div_gen_0_0
     port map (
      aclk => clk_100MHz,
      aclken => averaging_factor_divider_aclken,
      m_axis_dout_tdata(31 downto 0) => averaging_factor_div_dout_tdata(31 downto 0),
      m_axis_dout_tuser(0) => NLW_averaging_factor_rx09_ch00_div_gen_35clks_m_axis_dout_tuser_UNCONNECTED(0),
      m_axis_dout_tvalid => averaging_factor_div_dout_tvalid,
      s_axis_dividend_tdata(15 downto 0) => averaging_factor_div_dividend_tdata(15 downto 0),
      s_axis_dividend_tready => NLW_averaging_factor_rx09_ch00_div_gen_35clks_s_axis_dividend_tready_UNCONNECTED,
      s_axis_dividend_tvalid => averaging_factor_div_dividend_tvalid(0),
      s_axis_divisor_tdata(31 downto 0) => averaging_factor_div_divisor_tdata(31 downto 0),
      s_axis_divisor_tready => NLW_averaging_factor_rx09_ch00_div_gen_35clks_s_axis_divisor_tready_UNCONNECTED,
      s_axis_divisor_tvalid => averaging_factor_div_divisor_tvalid
    );
noise_rx09_ch00_c_shift_ram_0: component UFBmod_c_shift_ram_0_0
     port map (
      CE => averaging_factor_div_divisor_tvalid,
      CLK => clk_100MHz,
      D(18 downto 0) => noise_rx09_ch00_xlslice_18to0_Dout(18 downto 0),
      Q(18 downto 0) => noise_rx09_ch00_c_shift_ram_0_Q(18 downto 0)
    );
noise_rx09_ch00_xlslice_18to0: component UFBmod_xlslice_0_0
     port map (
      Din(31 downto 0) => averaging_factor_div_divisor_tdata(31 downto 0),
      Dout(18 downto 0) => noise_rx09_ch00_xlslice_18to0_Dout(18 downto 0)
    );
rowsum_rx09_ch00_c_accum_1clk: component UFBmod_c_accum_0_0
     port map (
      B(15 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_dina(15 downto 0),
      CE => rowsum_rx09_ch00_accum_ce,
      CLK => clk_100MHz,
      Q(31 downto 0) => averaging_factor_div_divisor_tdata(31 downto 0),
      SCLR => rowsum_rx09_ch00_accum_sclr
    );
signal_bins_rx09_ch00_blk_mem_gen_2clks: component UFBmod_blk_mem_gen_0_0
     port map (
      addra(10 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_addra(10 downto 0),
      addrb(10 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_addrb(10 downto 0),
      clka => clk_100MHz,
      clkb => clk_100MHz,
      dina(15 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_dina(15 downto 0),
      dinb(15 downto 0) => xlconstant_val0_len16_dout(15 downto 0),
      douta(15 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_douta(15 downto 0),
      doutb(15 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_doutb(15 downto 0),
      wea(0) => signal_bins_rx09_ch00_blk_mem_gen_0_wea,
      web(0) => xlconstant_val0_len1_dout(0)
    );
signal_correction_rx09_ch00_mult_gen_4clks: component UFBmod_mult_gen_0_0
     port map (
      A(15 downto 0) => FFT_rx09_to_Decoder_FSM_signal_correction_rx09_ch00_mult_ina(15 downto 0),
      B(31 downto 0) => averaging_factor_div_dout_tdata(31 downto 0),
      CE => signal_correction_rx09_ch00_mult_ce,
      CLK => clk_100MHz,
      P(15 downto 0) => signal_correction_rx09_ch00_mult_prod(15 downto 0)
    );
xlconstant_val0_len1: component UFBmod_xlconstant_0_2
     port map (
      dout(0) => xlconstant_val0_len1_dout(0)
    );
xlconstant_val0_len16: component UFBmod_xlconstant_0_3
     port map (
      dout(15 downto 0) => xlconstant_val0_len16_dout(15 downto 0)
    );
xlconstant_val1_len1: component UFBmod_xlconstant_0_0
     port map (
      dout(0) => averaging_factor_div_dividend_tvalid(0)
    );
xlconstant_val256x32_len16: component UFBmod_xlconstant_0_1
     port map (
      dout(15 downto 0) => averaging_factor_div_dividend_tdata(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod_rx09_Decoders_imp_115KKRN is
  port (
    clk_100MHz : in STD_LOGIC;
    dds_tx09_ptt : in STD_LOGIC;
    decoder_fft_frame_avail_ctr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_ch00_FIFO_accepted : in STD_LOGIC;
    decoder_rx09_ch00_FIFO_handshake : out STD_LOGIC;
    decoder_rx09_ch00_SoM_frameCtr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_ch00_active : out STD_LOGIC;
    decoder_rx09_ch00_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_remainVal : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_sql_open : out STD_LOGIC;
    decoder_rx09_ch00_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_u32Count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_100MHz : in STD_LOGIC;
    signal_bins_rx09_ch00_blk_mem_gen_0_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    signal_bins_rx09_ch00_blk_mem_gen_0_doutb : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end UFBmod_rx09_Decoders_imp_115KKRN;

architecture STRUCTURE of UFBmod_rx09_Decoders_imp_115KKRN is
  component UFBmod_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component UFBmod_blk_mem_gen_0_1;
  component UFBmod_mult_gen_0_2 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component UFBmod_mult_gen_0_2;
  component UFBmod_UFBmod_rx09_Decoder_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    signal_bins_rx09_ch00_mem_addrb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    signal_bins_rx09_ch00_mem_datab : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_fft_frame_avail_ctr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dds_tx09_ptt : in STD_LOGIC;
    decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_artemis_rx09_ch00_mult_ce : out STD_LOGIC;
    decoder_artemis_rx09_ch00_mult_ina : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_artemis_rx09_ch00_mult_inb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_artemis_rx09_ch00_mult_outp : in STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_artemis_rx09_ch00_mem_wea : out STD_LOGIC;
    decoder_artemis_rx09_ch00_mem_addra : out STD_LOGIC_VECTOR ( 6 downto 0 );
    decoder_artemis_rx09_ch00_mem_dina : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_artemis_rx09_ch00_mem_douta : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_rx09_ch00_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_SoM_frameCtr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    decoder_rx09_ch00_remainVal : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_u32Count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_FIFO_handshake : out STD_LOGIC;
    decoder_rx09_ch00_FIFO_accepted : in STD_LOGIC;
    decoder_rx09_ch00_sql_open : out STD_LOGIC;
    decoder_rx09_ch00_active : out STD_LOGIC
  );
  end component UFBmod_UFBmod_rx09_Decoder_0_0;
  signal UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_addra : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_dina : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_wea : STD_LOGIC;
  signal UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_ce : STD_LOGIC;
  signal UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_ina : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_inb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal decoder_artemis_blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal decoder_artemis_mult_gen_4clks_P : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
UFBmod_rx09_Decoder_0: component UFBmod_UFBmod_rx09_Decoder_0_0
     port map (
      clk => clk_100MHz,
      dds_tx09_ptt => dds_tx09_ptt,
      decoder_artemis_rx09_ch00_mem_addra(6 downto 0) => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_addra(6 downto 0),
      decoder_artemis_rx09_ch00_mem_dina(15 downto 0) => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_dina(15 downto 0),
      decoder_artemis_rx09_ch00_mem_douta(15 downto 0) => decoder_artemis_blk_mem_gen_0_douta(15 downto 0),
      decoder_artemis_rx09_ch00_mem_wea => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_wea,
      decoder_artemis_rx09_ch00_mult_ce => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_ce,
      decoder_artemis_rx09_ch00_mult_ina(15 downto 0) => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_ina(15 downto 0),
      decoder_artemis_rx09_ch00_mult_inb(31 downto 0) => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_inb(31 downto 0),
      decoder_artemis_rx09_ch00_mult_outp(31 downto 0) => decoder_artemis_mult_gen_4clks_P(31 downto 0),
      decoder_fft_frame_avail_ctr(31 downto 0) => decoder_fft_frame_avail_ctr(31 downto 0),
      decoder_rx09_ch00_FIFO_accepted => decoder_rx09_ch00_FIFO_accepted,
      decoder_rx09_ch00_FIFO_handshake => decoder_rx09_ch00_FIFO_handshake,
      decoder_rx09_ch00_SoM_frameCtr(31 downto 0) => decoder_rx09_ch00_SoM_frameCtr(31 downto 0),
      decoder_rx09_ch00_active => decoder_rx09_ch00_active,
      decoder_rx09_ch00_center_pos(7 downto 0) => decoder_rx09_ch00_center_pos(7 downto 0),
      decoder_rx09_ch00_remainVal(7 downto 0) => decoder_rx09_ch00_remainVal(7 downto 0),
      decoder_rx09_ch00_sql_open => decoder_rx09_ch00_sql_open,
      decoder_rx09_ch00_squelch_lvl(15 downto 0) => decoder_rx09_squelch_lvl(15 downto 0),
      decoder_rx09_ch00_strength(18 downto 0) => decoder_rx09_ch00_strength(18 downto 0),
      decoder_rx09_ch00_u32Count(7 downto 0) => decoder_rx09_ch00_u32Count(7 downto 0),
      reset => reset_100MHz,
      signal_bins_rx09_ch00_mem_addrb(10 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_addrb(10 downto 0),
      signal_bins_rx09_ch00_mem_datab(15 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_doutb(15 downto 0)
    );
decoder_artemis_blk_mem_gen_2clks: component UFBmod_blk_mem_gen_0_1
     port map (
      addra(6 downto 0) => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_addra(6 downto 0),
      clka => clk_100MHz,
      dina(15 downto 0) => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_dina(15 downto 0),
      douta(15 downto 0) => decoder_artemis_blk_mem_gen_0_douta(15 downto 0),
      wea(0) => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_wea
    );
decoder_artemis_mult_gen_4clks: component UFBmod_mult_gen_0_2
     port map (
      A(15 downto 0) => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_ina(15 downto 0),
      B(31 downto 0) => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_inb(31 downto 0),
      CE => UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_ce,
      CLK => clk_100MHz,
      P(31 downto 0) => decoder_artemis_mult_gen_4clks_P(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UFBmod is
  port (
    clk_100MHz : in STD_LOGIC;
    dds_tx09_ptt : in STD_LOGIC;
    decoder_rx09_ch00_active : out STD_LOGIC;
    decoder_rx09_ch00_center_pos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decoder_rx09_ch00_noise : out STD_LOGIC_VECTOR ( 18 downto 0 );
    decoder_rx09_ch00_sql_open : out STD_LOGIC;
    decoder_rx09_ch00_squelch_lvl : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_rx09_ch00_strength : out STD_LOGIC_VECTOR ( 18 downto 0 );
    post_fft_rx09_mem_a_EoT : in STD_LOGIC;
    post_fft_rx09_mem_a_addr : in STD_LOGIC_VECTOR ( 41 downto 0 );
    post_fft_rx09_mem_b_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    post_fft_rx09_mem_b_dout : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pushdata_rx09_byteData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pushdata_rx09_en : out STD_LOGIC;
    reset_100MHz : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of UFBmod : entity is "UFBmod,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UFBmod,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=20,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of UFBmod : entity is "UFBmod.hwdef";
end UFBmod;

architecture STRUCTURE of UFBmod is
  signal FFT_rx09_to_Decoder_decoder_rx09_ch00_noise : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal dds_tx09_ptt_1 : STD_LOGIC;
  signal decoder_fft_frame_avail_ctr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal decoder_rx09_ch00_FIFO_accepted : STD_LOGIC;
  signal decoder_rx09_ch00_FIFO_handshake : STD_LOGIC;
  signal decoder_rx09_ch00_SoM_frameCtr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^decoder_rx09_ch00_center_pos\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decoder_rx09_ch00_remainVal : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^decoder_rx09_ch00_strength\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal decoder_rx09_ch00_u32Count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal post_fft_rx09_ch00_mem_b_addr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal post_fft_rx09_mem_a_EoT_1 : STD_LOGIC;
  signal post_fft_rx09_mem_a_addr_1 : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal post_fft_rx09_mem_b_dout_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_bins_rx09_ch00_blk_mem_gen_0_addrb : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal signal_bins_rx09_ch00_blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET reset_100MHz, CLK_DOMAIN UFBmod_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_100MHz : signal is "xilinx.com:signal:reset:1.0 RST.RESET_100MHZ RST";
  attribute X_INTERFACE_PARAMETER of reset_100MHz : signal is "XIL_INTERFACENAME RST.RESET_100MHZ, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of decoder_rx09_ch00_squelch_lvl : signal is "xilinx.com:signal:data:1.0 DATA.DECODER_RX09_CH00_SQUELCH_LVL DATA";
  attribute X_INTERFACE_PARAMETER of decoder_rx09_ch00_squelch_lvl : signal is "XIL_INTERFACENAME DATA.DECODER_RX09_CH00_SQUELCH_LVL, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of post_fft_rx09_mem_b_dout : signal is "xilinx.com:signal:data:1.0 DATA.POST_FFT_RX09_MEM_B_DOUT DATA";
  attribute X_INTERFACE_PARAMETER of post_fft_rx09_mem_b_dout : signal is "XIL_INTERFACENAME DATA.POST_FFT_RX09_MEM_B_DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of pushdata_rx09_byteData : signal is "xilinx.com:signal:data:1.0 DATA.PUSHDATA_RX09_BYTEDATA DATA";
  attribute X_INTERFACE_PARAMETER of pushdata_rx09_byteData : signal is "XIL_INTERFACENAME DATA.PUSHDATA_RX09_BYTEDATA, LAYERED_METADATA undef";
begin
  dds_tx09_ptt_1 <= dds_tx09_ptt;
  decoder_rx09_ch00_center_pos(7 downto 0) <= \^decoder_rx09_ch00_center_pos\(7 downto 0);
  decoder_rx09_ch00_noise(18 downto 0) <= FFT_rx09_to_Decoder_decoder_rx09_ch00_noise(18 downto 0);
  decoder_rx09_ch00_strength(18 downto 0) <= \^decoder_rx09_ch00_strength\(18 downto 0);
  post_fft_rx09_mem_a_EoT_1 <= post_fft_rx09_mem_a_EoT;
  post_fft_rx09_mem_a_addr_1(41 downto 0) <= post_fft_rx09_mem_a_addr(41 downto 0);
  post_fft_rx09_mem_b_addr(9 downto 0) <= post_fft_rx09_ch00_mem_b_addr(9 downto 0);
  post_fft_rx09_mem_b_dout_1(15 downto 0) <= post_fft_rx09_mem_b_dout(15 downto 0);
Decoder_rx09_to_FIFO: entity work.Decoder_rx09_to_FIFO_imp_JDTZXY
     port map (
      clk_100MHz => clk_100MHz,
      decoder_rx09_ch00_FIFO_accepted => decoder_rx09_ch00_FIFO_accepted,
      decoder_rx09_ch00_FIFO_handshake => decoder_rx09_ch00_FIFO_handshake,
      decoder_rx09_ch00_SoM_frameCtr(31 downto 0) => decoder_rx09_ch00_SoM_frameCtr(31 downto 0),
      decoder_rx09_ch00_center_pos(7 downto 0) => \^decoder_rx09_ch00_center_pos\(7 downto 0),
      decoder_rx09_ch00_remainVal(7 downto 0) => decoder_rx09_ch00_remainVal(7 downto 0),
      decoder_rx09_ch00_strength(18 downto 0) => \^decoder_rx09_ch00_strength\(18 downto 0),
      decoder_rx09_ch00_u32Count(7 downto 0) => decoder_rx09_ch00_u32Count(7 downto 0),
      pushdata_rx09_byteData(7 downto 0) => pushdata_rx09_byteData(7 downto 0),
      pushdata_rx09_en => pushdata_rx09_en,
      reset_100MHz => reset_100MHz
    );
FFT_rx09_to_Decoder: entity work.FFT_rx09_to_Decoder_imp_1D60DD
     port map (
      clk => clk_100MHz,
      decoder_fft_frame_avail_ctr(31 downto 0) => decoder_fft_frame_avail_ctr(31 downto 0),
      decoder_rx09_ch00_noise(18 downto 0) => FFT_rx09_to_Decoder_decoder_rx09_ch00_noise(18 downto 0),
      post_fft_rx09_ch00_mem_b_addr(9 downto 0) => post_fft_rx09_ch00_mem_b_addr(9 downto 0),
      post_fft_rx09_mem_a_EoT => post_fft_rx09_mem_a_EoT_1,
      post_fft_rx09_mem_a_addr(41 downto 0) => post_fft_rx09_mem_a_addr_1(41 downto 0),
      post_fft_rx09_mem_b_dout(15 downto 0) => post_fft_rx09_mem_b_dout_1(15 downto 0),
      reset => reset_100MHz,
      signal_bins_rx09_ch00_blk_mem_gen_0_addrb(10 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_addrb(10 downto 0),
      signal_bins_rx09_ch00_blk_mem_gen_0_doutb(15 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_doutb(15 downto 0)
    );
UFBmod_rx09_Decoders: entity work.UFBmod_rx09_Decoders_imp_115KKRN
     port map (
      clk_100MHz => clk_100MHz,
      dds_tx09_ptt => dds_tx09_ptt_1,
      decoder_fft_frame_avail_ctr(31 downto 0) => decoder_fft_frame_avail_ctr(31 downto 0),
      decoder_rx09_ch00_FIFO_accepted => decoder_rx09_ch00_FIFO_accepted,
      decoder_rx09_ch00_FIFO_handshake => decoder_rx09_ch00_FIFO_handshake,
      decoder_rx09_ch00_SoM_frameCtr(31 downto 0) => decoder_rx09_ch00_SoM_frameCtr(31 downto 0),
      decoder_rx09_ch00_active => decoder_rx09_ch00_active,
      decoder_rx09_ch00_center_pos(7 downto 0) => \^decoder_rx09_ch00_center_pos\(7 downto 0),
      decoder_rx09_ch00_remainVal(7 downto 0) => decoder_rx09_ch00_remainVal(7 downto 0),
      decoder_rx09_ch00_sql_open => decoder_rx09_ch00_sql_open,
      decoder_rx09_ch00_strength(18 downto 0) => \^decoder_rx09_ch00_strength\(18 downto 0),
      decoder_rx09_ch00_u32Count(7 downto 0) => decoder_rx09_ch00_u32Count(7 downto 0),
      decoder_rx09_squelch_lvl(15 downto 0) => decoder_rx09_ch00_squelch_lvl(15 downto 0),
      reset_100MHz => reset_100MHz,
      signal_bins_rx09_ch00_blk_mem_gen_0_addrb(10 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_addrb(10 downto 0),
      signal_bins_rx09_ch00_blk_mem_gen_0_doutb(15 downto 0) => signal_bins_rx09_ch00_blk_mem_gen_0_doutb(15 downto 0)
    );
end STRUCTURE;
