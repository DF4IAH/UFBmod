-makelib ies_lib/xpm -sv \
  "F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/UFBmod_Encoder/ip/UFBmod_Encoder_UFBmod_tx09_Encoder_0_0/sim/UFBmod_Encoder_UFBmod_tx09_Encoder_0_0.vhd" \
  "../../../bd/UFBmod_Encoder/sim/UFBmod_Encoder.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

