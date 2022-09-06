module FtqNRSRAM(
  input         clock,
  input         reset,
  input  [5:0]  io_raddr_0,
  input  [5:0]  io_raddr_1,
  input  [5:0]  io_raddr_2,
  input         io_ren_0,
  input         io_ren_1,
  input         io_ren_2,
  output [4:0]  io_rdata_0_rasSp,
  output [38:0] io_rdata_0_rasEntry_retAddr,
  output [7:0]  io_rdata_0_rasEntry_ctr,
  output [7:0]  io_rdata_0_folded_hist_hist_36_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_35_folded_hist,
  output [12:0] io_rdata_0_folded_hist_hist_34_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_33_folded_hist,
  output [9:0]  io_rdata_0_folded_hist_hist_32_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_31_folded_hist,
  output [8:0]  io_rdata_0_folded_hist_hist_30_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_29_folded_hist,
  output [10:0] io_rdata_0_folded_hist_hist_28_folded_hist,
  output [5:0]  io_rdata_0_folded_hist_hist_27_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_26_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_25_folded_hist,
  output [5:0]  io_rdata_0_folded_hist_hist_24_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_23_folded_hist,
  output [11:0] io_rdata_0_folded_hist_hist_22_folded_hist,
  output [8:0]  io_rdata_0_folded_hist_hist_21_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_20_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_19_folded_hist,
  output [11:0] io_rdata_0_folded_hist_hist_18_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_17_folded_hist,
  output [9:0]  io_rdata_0_folded_hist_hist_16_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_15_folded_hist,
  output [8:0]  io_rdata_0_folded_hist_hist_14_folded_hist,
  output [6:0]  io_rdata_0_folded_hist_hist_13_folded_hist,
  output [8:0]  io_rdata_0_folded_hist_hist_12_folded_hist,
  output [9:0]  io_rdata_0_folded_hist_hist_11_folded_hist,
  output [4:0]  io_rdata_0_folded_hist_hist_10_folded_hist,
  output [8:0]  io_rdata_0_folded_hist_hist_9_folded_hist,
  output [8:0]  io_rdata_0_folded_hist_hist_8_folded_hist,
  output [3:0]  io_rdata_0_folded_hist_hist_7_folded_hist,
  output [4:0]  io_rdata_0_folded_hist_hist_6_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_5_folded_hist,
  output [5:0]  io_rdata_0_folded_hist_hist_4_folded_hist,
  output [5:0]  io_rdata_0_folded_hist_hist_3_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_2_folded_hist,
  output [7:0]  io_rdata_0_folded_hist_hist_1_folded_hist,
  output [12:0] io_rdata_0_folded_hist_hist_0_folded_hist,
  output        io_rdata_0_afhob_afhob_12_bits_0,
  output        io_rdata_0_afhob_afhob_12_bits_1,
  output        io_rdata_0_afhob_afhob_12_bits_2,
  output        io_rdata_0_afhob_afhob_11_bits_0,
  output        io_rdata_0_afhob_afhob_11_bits_1,
  output        io_rdata_0_afhob_afhob_11_bits_2,
  output        io_rdata_0_afhob_afhob_11_bits_3,
  output        io_rdata_0_afhob_afhob_10_bits_0,
  output        io_rdata_0_afhob_afhob_10_bits_1,
  output        io_rdata_0_afhob_afhob_10_bits_2,
  output        io_rdata_0_afhob_afhob_10_bits_3,
  output        io_rdata_0_afhob_afhob_9_bits_0,
  output        io_rdata_0_afhob_afhob_9_bits_1,
  output        io_rdata_0_afhob_afhob_9_bits_2,
  output        io_rdata_0_afhob_afhob_9_bits_3,
  output        io_rdata_0_afhob_afhob_8_bits_0,
  output        io_rdata_0_afhob_afhob_8_bits_1,
  output        io_rdata_0_afhob_afhob_8_bits_2,
  output        io_rdata_0_afhob_afhob_8_bits_3,
  output        io_rdata_0_afhob_afhob_7_bits_0,
  output        io_rdata_0_afhob_afhob_7_bits_1,
  output        io_rdata_0_afhob_afhob_7_bits_2,
  output        io_rdata_0_afhob_afhob_7_bits_3,
  output        io_rdata_0_afhob_afhob_6_bits_0,
  output        io_rdata_0_afhob_afhob_6_bits_1,
  output        io_rdata_0_afhob_afhob_6_bits_2,
  output        io_rdata_0_afhob_afhob_6_bits_3,
  output        io_rdata_0_afhob_afhob_5_bits_0,
  output        io_rdata_0_afhob_afhob_5_bits_1,
  output        io_rdata_0_afhob_afhob_5_bits_2,
  output        io_rdata_0_afhob_afhob_5_bits_3,
  output        io_rdata_0_afhob_afhob_4_bits_0,
  output        io_rdata_0_afhob_afhob_4_bits_1,
  output        io_rdata_0_afhob_afhob_4_bits_2,
  output        io_rdata_0_afhob_afhob_4_bits_3,
  output        io_rdata_0_afhob_afhob_3_bits_0,
  output        io_rdata_0_afhob_afhob_3_bits_1,
  output        io_rdata_0_afhob_afhob_3_bits_2,
  output        io_rdata_0_afhob_afhob_3_bits_3,
  output        io_rdata_0_afhob_afhob_2_bits_0,
  output        io_rdata_0_afhob_afhob_2_bits_1,
  output        io_rdata_0_afhob_afhob_2_bits_2,
  output        io_rdata_0_afhob_afhob_2_bits_3,
  output        io_rdata_0_afhob_afhob_1_bits_0,
  output        io_rdata_0_afhob_afhob_1_bits_1,
  output        io_rdata_0_afhob_afhob_1_bits_2,
  output        io_rdata_0_afhob_afhob_1_bits_3,
  output        io_rdata_0_afhob_afhob_0_bits_0,
  output        io_rdata_0_afhob_afhob_0_bits_1,
  output        io_rdata_0_afhob_afhob_0_bits_2,
  output        io_rdata_0_afhob_afhob_0_bits_3,
  output [2:0]  io_rdata_0_lastBrNumOH,
  output        io_rdata_0_histPtr_flag,
  output [8:0]  io_rdata_0_histPtr_value,
  output [4:0]  io_rdata_1_rasSp,
  output [38:0] io_rdata_1_rasEntry_retAddr,
  output [7:0]  io_rdata_1_rasEntry_ctr,
  output [7:0]  io_rdata_1_folded_hist_hist_36_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_35_folded_hist,
  output [12:0] io_rdata_1_folded_hist_hist_34_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_33_folded_hist,
  output [9:0]  io_rdata_1_folded_hist_hist_32_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_31_folded_hist,
  output [8:0]  io_rdata_1_folded_hist_hist_30_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_29_folded_hist,
  output [10:0] io_rdata_1_folded_hist_hist_28_folded_hist,
  output [5:0]  io_rdata_1_folded_hist_hist_27_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_26_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_25_folded_hist,
  output [5:0]  io_rdata_1_folded_hist_hist_24_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_23_folded_hist,
  output [11:0] io_rdata_1_folded_hist_hist_22_folded_hist,
  output [8:0]  io_rdata_1_folded_hist_hist_21_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_20_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_19_folded_hist,
  output [11:0] io_rdata_1_folded_hist_hist_18_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_17_folded_hist,
  output [9:0]  io_rdata_1_folded_hist_hist_16_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_15_folded_hist,
  output [8:0]  io_rdata_1_folded_hist_hist_14_folded_hist,
  output [6:0]  io_rdata_1_folded_hist_hist_13_folded_hist,
  output [8:0]  io_rdata_1_folded_hist_hist_12_folded_hist,
  output [9:0]  io_rdata_1_folded_hist_hist_11_folded_hist,
  output [4:0]  io_rdata_1_folded_hist_hist_10_folded_hist,
  output [8:0]  io_rdata_1_folded_hist_hist_9_folded_hist,
  output [8:0]  io_rdata_1_folded_hist_hist_8_folded_hist,
  output [3:0]  io_rdata_1_folded_hist_hist_7_folded_hist,
  output [4:0]  io_rdata_1_folded_hist_hist_6_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_5_folded_hist,
  output [5:0]  io_rdata_1_folded_hist_hist_4_folded_hist,
  output [5:0]  io_rdata_1_folded_hist_hist_3_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_2_folded_hist,
  output [7:0]  io_rdata_1_folded_hist_hist_1_folded_hist,
  output [12:0] io_rdata_1_folded_hist_hist_0_folded_hist,
  output        io_rdata_1_afhob_afhob_12_bits_0,
  output        io_rdata_1_afhob_afhob_12_bits_1,
  output        io_rdata_1_afhob_afhob_12_bits_2,
  output        io_rdata_1_afhob_afhob_11_bits_0,
  output        io_rdata_1_afhob_afhob_11_bits_1,
  output        io_rdata_1_afhob_afhob_11_bits_2,
  output        io_rdata_1_afhob_afhob_11_bits_3,
  output        io_rdata_1_afhob_afhob_10_bits_0,
  output        io_rdata_1_afhob_afhob_10_bits_1,
  output        io_rdata_1_afhob_afhob_10_bits_2,
  output        io_rdata_1_afhob_afhob_10_bits_3,
  output        io_rdata_1_afhob_afhob_9_bits_0,
  output        io_rdata_1_afhob_afhob_9_bits_1,
  output        io_rdata_1_afhob_afhob_9_bits_2,
  output        io_rdata_1_afhob_afhob_9_bits_3,
  output        io_rdata_1_afhob_afhob_8_bits_0,
  output        io_rdata_1_afhob_afhob_8_bits_1,
  output        io_rdata_1_afhob_afhob_8_bits_2,
  output        io_rdata_1_afhob_afhob_8_bits_3,
  output        io_rdata_1_afhob_afhob_7_bits_0,
  output        io_rdata_1_afhob_afhob_7_bits_1,
  output        io_rdata_1_afhob_afhob_7_bits_2,
  output        io_rdata_1_afhob_afhob_7_bits_3,
  output        io_rdata_1_afhob_afhob_6_bits_0,
  output        io_rdata_1_afhob_afhob_6_bits_1,
  output        io_rdata_1_afhob_afhob_6_bits_2,
  output        io_rdata_1_afhob_afhob_6_bits_3,
  output        io_rdata_1_afhob_afhob_5_bits_0,
  output        io_rdata_1_afhob_afhob_5_bits_1,
  output        io_rdata_1_afhob_afhob_5_bits_2,
  output        io_rdata_1_afhob_afhob_5_bits_3,
  output        io_rdata_1_afhob_afhob_4_bits_0,
  output        io_rdata_1_afhob_afhob_4_bits_1,
  output        io_rdata_1_afhob_afhob_4_bits_2,
  output        io_rdata_1_afhob_afhob_4_bits_3,
  output        io_rdata_1_afhob_afhob_3_bits_0,
  output        io_rdata_1_afhob_afhob_3_bits_1,
  output        io_rdata_1_afhob_afhob_3_bits_2,
  output        io_rdata_1_afhob_afhob_3_bits_3,
  output        io_rdata_1_afhob_afhob_2_bits_0,
  output        io_rdata_1_afhob_afhob_2_bits_1,
  output        io_rdata_1_afhob_afhob_2_bits_2,
  output        io_rdata_1_afhob_afhob_2_bits_3,
  output        io_rdata_1_afhob_afhob_1_bits_0,
  output        io_rdata_1_afhob_afhob_1_bits_1,
  output        io_rdata_1_afhob_afhob_1_bits_2,
  output        io_rdata_1_afhob_afhob_1_bits_3,
  output        io_rdata_1_afhob_afhob_0_bits_0,
  output        io_rdata_1_afhob_afhob_0_bits_1,
  output        io_rdata_1_afhob_afhob_0_bits_2,
  output        io_rdata_1_afhob_afhob_0_bits_3,
  output [2:0]  io_rdata_1_lastBrNumOH,
  output        io_rdata_1_histPtr_flag,
  output [8:0]  io_rdata_1_histPtr_value,
  output [7:0]  io_rdata_2_folded_hist_hist_36_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_35_folded_hist,
  output [12:0] io_rdata_2_folded_hist_hist_34_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_33_folded_hist,
  output [9:0]  io_rdata_2_folded_hist_hist_32_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_31_folded_hist,
  output [8:0]  io_rdata_2_folded_hist_hist_30_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_29_folded_hist,
  output [10:0] io_rdata_2_folded_hist_hist_28_folded_hist,
  output [5:0]  io_rdata_2_folded_hist_hist_27_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_26_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_25_folded_hist,
  output [5:0]  io_rdata_2_folded_hist_hist_24_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_23_folded_hist,
  output [11:0] io_rdata_2_folded_hist_hist_22_folded_hist,
  output [8:0]  io_rdata_2_folded_hist_hist_21_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_20_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_19_folded_hist,
  output [11:0] io_rdata_2_folded_hist_hist_18_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_17_folded_hist,
  output [9:0]  io_rdata_2_folded_hist_hist_16_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_15_folded_hist,
  output [8:0]  io_rdata_2_folded_hist_hist_14_folded_hist,
  output [6:0]  io_rdata_2_folded_hist_hist_13_folded_hist,
  output [8:0]  io_rdata_2_folded_hist_hist_12_folded_hist,
  output [9:0]  io_rdata_2_folded_hist_hist_11_folded_hist,
  output [4:0]  io_rdata_2_folded_hist_hist_10_folded_hist,
  output [8:0]  io_rdata_2_folded_hist_hist_9_folded_hist,
  output [8:0]  io_rdata_2_folded_hist_hist_8_folded_hist,
  output [3:0]  io_rdata_2_folded_hist_hist_7_folded_hist,
  output [4:0]  io_rdata_2_folded_hist_hist_6_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_5_folded_hist,
  output [5:0]  io_rdata_2_folded_hist_hist_4_folded_hist,
  output [5:0]  io_rdata_2_folded_hist_hist_3_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_2_folded_hist,
  output [7:0]  io_rdata_2_folded_hist_hist_1_folded_hist,
  output [12:0] io_rdata_2_folded_hist_hist_0_folded_hist,
  input  [5:0]  io_waddr,
  input         io_wen,
  input  [4:0]  io_wdata_rasSp,
  input  [38:0] io_wdata_rasEntry_retAddr,
  input  [7:0]  io_wdata_rasEntry_ctr,
  input  [7:0]  io_wdata_folded_hist_hist_36_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_35_folded_hist,
  input  [12:0] io_wdata_folded_hist_hist_34_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_33_folded_hist,
  input  [9:0]  io_wdata_folded_hist_hist_32_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_31_folded_hist,
  input  [8:0]  io_wdata_folded_hist_hist_30_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_29_folded_hist,
  input  [10:0] io_wdata_folded_hist_hist_28_folded_hist,
  input  [5:0]  io_wdata_folded_hist_hist_27_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_26_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_25_folded_hist,
  input  [5:0]  io_wdata_folded_hist_hist_24_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_23_folded_hist,
  input  [11:0] io_wdata_folded_hist_hist_22_folded_hist,
  input  [8:0]  io_wdata_folded_hist_hist_21_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_20_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_19_folded_hist,
  input  [11:0] io_wdata_folded_hist_hist_18_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_17_folded_hist,
  input  [9:0]  io_wdata_folded_hist_hist_16_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_15_folded_hist,
  input  [8:0]  io_wdata_folded_hist_hist_14_folded_hist,
  input  [6:0]  io_wdata_folded_hist_hist_13_folded_hist,
  input  [8:0]  io_wdata_folded_hist_hist_12_folded_hist,
  input  [9:0]  io_wdata_folded_hist_hist_11_folded_hist,
  input  [4:0]  io_wdata_folded_hist_hist_10_folded_hist,
  input  [8:0]  io_wdata_folded_hist_hist_9_folded_hist,
  input  [8:0]  io_wdata_folded_hist_hist_8_folded_hist,
  input  [3:0]  io_wdata_folded_hist_hist_7_folded_hist,
  input  [4:0]  io_wdata_folded_hist_hist_6_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_5_folded_hist,
  input  [5:0]  io_wdata_folded_hist_hist_4_folded_hist,
  input  [5:0]  io_wdata_folded_hist_hist_3_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_2_folded_hist,
  input  [7:0]  io_wdata_folded_hist_hist_1_folded_hist,
  input  [12:0] io_wdata_folded_hist_hist_0_folded_hist,
  input         io_wdata_afhob_afhob_12_bits_0,
  input         io_wdata_afhob_afhob_12_bits_1,
  input         io_wdata_afhob_afhob_12_bits_2,
  input         io_wdata_afhob_afhob_12_bits_3,
  input         io_wdata_afhob_afhob_11_bits_0,
  input         io_wdata_afhob_afhob_11_bits_1,
  input         io_wdata_afhob_afhob_11_bits_2,
  input         io_wdata_afhob_afhob_11_bits_3,
  input         io_wdata_afhob_afhob_10_bits_0,
  input         io_wdata_afhob_afhob_10_bits_1,
  input         io_wdata_afhob_afhob_10_bits_2,
  input         io_wdata_afhob_afhob_10_bits_3,
  input         io_wdata_afhob_afhob_9_bits_0,
  input         io_wdata_afhob_afhob_9_bits_1,
  input         io_wdata_afhob_afhob_9_bits_2,
  input         io_wdata_afhob_afhob_9_bits_3,
  input         io_wdata_afhob_afhob_8_bits_0,
  input         io_wdata_afhob_afhob_8_bits_1,
  input         io_wdata_afhob_afhob_8_bits_2,
  input         io_wdata_afhob_afhob_8_bits_3,
  input         io_wdata_afhob_afhob_7_bits_0,
  input         io_wdata_afhob_afhob_7_bits_1,
  input         io_wdata_afhob_afhob_7_bits_2,
  input         io_wdata_afhob_afhob_7_bits_3,
  input         io_wdata_afhob_afhob_6_bits_0,
  input         io_wdata_afhob_afhob_6_bits_1,
  input         io_wdata_afhob_afhob_6_bits_2,
  input         io_wdata_afhob_afhob_6_bits_3,
  input         io_wdata_afhob_afhob_5_bits_0,
  input         io_wdata_afhob_afhob_5_bits_1,
  input         io_wdata_afhob_afhob_5_bits_2,
  input         io_wdata_afhob_afhob_5_bits_3,
  input         io_wdata_afhob_afhob_4_bits_0,
  input         io_wdata_afhob_afhob_4_bits_1,
  input         io_wdata_afhob_afhob_4_bits_2,
  input         io_wdata_afhob_afhob_4_bits_3,
  input         io_wdata_afhob_afhob_3_bits_0,
  input         io_wdata_afhob_afhob_3_bits_1,
  input         io_wdata_afhob_afhob_3_bits_2,
  input         io_wdata_afhob_afhob_3_bits_3,
  input         io_wdata_afhob_afhob_2_bits_0,
  input         io_wdata_afhob_afhob_2_bits_1,
  input         io_wdata_afhob_afhob_2_bits_2,
  input         io_wdata_afhob_afhob_2_bits_3,
  input         io_wdata_afhob_afhob_1_bits_0,
  input         io_wdata_afhob_afhob_1_bits_1,
  input         io_wdata_afhob_afhob_1_bits_2,
  input         io_wdata_afhob_afhob_1_bits_3,
  input         io_wdata_afhob_afhob_0_bits_0,
  input         io_wdata_afhob_afhob_0_bits_1,
  input         io_wdata_afhob_afhob_0_bits_2,
  input         io_wdata_afhob_afhob_0_bits_3,
  input  [2:0]  io_wdata_lastBrNumOH,
  input         io_wdata_histPtr_flag,
  input  [8:0]  io_wdata_histPtr_value
);
  wire  sram_clock; // @[NewFtq.scala 58:22]
  wire  sram_reset; // @[NewFtq.scala 58:22]
  wire  sram_io_rreq_valid; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_rreq_bits_setIdx; // @[NewFtq.scala 58:22]
  wire [4:0] sram_io_rresp_data_0_rasSp; // @[NewFtq.scala 58:22]
  wire [38:0] sram_io_rresp_data_0_rasEntry_retAddr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_rresp_data_0_rasEntry_ctr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_io_rresp_data_0_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_io_rresp_data_0_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_rresp_data_0_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 58:22]
  wire [10:0] sram_io_rresp_data_0_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_rresp_data_0_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_rresp_data_0_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_io_rresp_data_0_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_rresp_data_0_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_io_rresp_data_0_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 58:22]
  wire [3:0] sram_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_12_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_12_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_12_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_11_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_11_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_11_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_11_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_10_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_10_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_10_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_10_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_9_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_9_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_9_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_9_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_8_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_8_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_8_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_8_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_7_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_7_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_7_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_7_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_6_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_6_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_6_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_6_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 58:22]
  wire [2:0] sram_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 58:22]
  wire  sram_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_valid; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_wreq_bits_setIdx; // @[NewFtq.scala 58:22]
  wire [4:0] sram_io_wreq_bits_data_0_rasSp; // @[NewFtq.scala 58:22]
  wire [38:0] sram_io_wreq_bits_data_0_rasEntry_retAddr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_wreq_bits_data_0_rasEntry_ctr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_io_wreq_bits_data_0_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_io_wreq_bits_data_0_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_wreq_bits_data_0_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 58:22]
  wire [10:0] sram_io_wreq_bits_data_0_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_wreq_bits_data_0_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_wreq_bits_data_0_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_io_wreq_bits_data_0_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_wreq_bits_data_0_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_io_wreq_bits_data_0_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 58:22]
  wire [3:0] sram_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_12_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_12_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_12_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_12_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_11_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_11_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_11_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_11_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_10_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_10_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_10_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_10_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_9_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_9_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_9_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_9_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_8_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_8_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_8_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_8_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_7_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_7_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_7_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_7_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_6_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_6_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_6_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_6_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 58:22]
  wire [2:0] sram_io_wreq_bits_data_0_lastBrNumOH; // @[NewFtq.scala 58:22]
  wire  sram_io_wreq_bits_data_0_histPtr_flag; // @[NewFtq.scala 58:22]
  wire [8:0] sram_io_wreq_bits_data_0_histPtr_value; // @[NewFtq.scala 58:22]
  wire  sram_1_clock; // @[NewFtq.scala 58:22]
  wire  sram_1_reset; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rreq_valid; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_rreq_bits_setIdx; // @[NewFtq.scala 58:22]
  wire [4:0] sram_1_io_rresp_data_0_rasSp; // @[NewFtq.scala 58:22]
  wire [38:0] sram_1_io_rresp_data_0_rasEntry_retAddr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_rresp_data_0_rasEntry_ctr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_1_io_rresp_data_0_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_1_io_rresp_data_0_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_rresp_data_0_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 58:22]
  wire [10:0] sram_1_io_rresp_data_0_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_rresp_data_0_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_rresp_data_0_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_1_io_rresp_data_0_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_rresp_data_0_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_1_io_rresp_data_0_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_1_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_1_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_1_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 58:22]
  wire [3:0] sram_1_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_1_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_1_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_12_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_12_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_12_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_11_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_11_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_11_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_11_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_10_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_10_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_10_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_10_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_9_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_9_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_9_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_9_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_8_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_8_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_8_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_8_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_7_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_7_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_7_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_7_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_6_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_6_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_6_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_6_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 58:22]
  wire [2:0] sram_1_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 58:22]
  wire  sram_1_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_valid; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_wreq_bits_setIdx; // @[NewFtq.scala 58:22]
  wire [4:0] sram_1_io_wreq_bits_data_0_rasSp; // @[NewFtq.scala 58:22]
  wire [38:0] sram_1_io_wreq_bits_data_0_rasEntry_retAddr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_rasEntry_ctr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 58:22]
  wire [10:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 58:22]
  wire [3:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_1_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 58:22]
  wire [2:0] sram_1_io_wreq_bits_data_0_lastBrNumOH; // @[NewFtq.scala 58:22]
  wire  sram_1_io_wreq_bits_data_0_histPtr_flag; // @[NewFtq.scala 58:22]
  wire [8:0] sram_1_io_wreq_bits_data_0_histPtr_value; // @[NewFtq.scala 58:22]
  wire  sram_2_clock; // @[NewFtq.scala 58:22]
  wire  sram_2_reset; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rreq_valid; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_rreq_bits_setIdx; // @[NewFtq.scala 58:22]
  wire [4:0] sram_2_io_rresp_data_0_rasSp; // @[NewFtq.scala 58:22]
  wire [38:0] sram_2_io_rresp_data_0_rasEntry_retAddr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_rresp_data_0_rasEntry_ctr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_2_io_rresp_data_0_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_2_io_rresp_data_0_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_rresp_data_0_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 58:22]
  wire [10:0] sram_2_io_rresp_data_0_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_rresp_data_0_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_rresp_data_0_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_2_io_rresp_data_0_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_rresp_data_0_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_2_io_rresp_data_0_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_2_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_2_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_2_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 58:22]
  wire [3:0] sram_2_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_2_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_2_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_12_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_12_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_12_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_11_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_11_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_11_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_11_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_10_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_10_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_10_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_10_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_9_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_9_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_9_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_9_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_8_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_8_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_8_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_8_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_7_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_7_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_7_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_7_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_6_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_6_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_6_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_6_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 58:22]
  wire [2:0] sram_2_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 58:22]
  wire  sram_2_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_valid; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_wreq_bits_setIdx; // @[NewFtq.scala 58:22]
  wire [4:0] sram_2_io_wreq_bits_data_0_rasSp; // @[NewFtq.scala 58:22]
  wire [38:0] sram_2_io_wreq_bits_data_0_rasEntry_retAddr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_rasEntry_ctr; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 58:22]
  wire [10:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 58:22]
  wire [11:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 58:22]
  wire [6:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 58:22]
  wire [9:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 58:22]
  wire [3:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 58:22]
  wire [4:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 58:22]
  wire [5:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 58:22]
  wire [7:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 58:22]
  wire [12:0] sram_2_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 58:22]
  wire [2:0] sram_2_io_wreq_bits_data_0_lastBrNumOH; // @[NewFtq.scala 58:22]
  wire  sram_2_io_wreq_bits_data_0_histPtr_flag; // @[NewFtq.scala 58:22]
  wire [8:0] sram_2_io_wreq_bits_data_0_histPtr_value; // @[NewFtq.scala 58:22]
  SRAMTemplate_114 sram ( // @[NewFtq.scala 58:22]
    .clock(sram_clock),
    .reset(sram_reset),
    .io_rreq_valid(sram_io_rreq_valid),
    .io_rreq_bits_setIdx(sram_io_rreq_bits_setIdx),
    .io_rresp_data_0_rasSp(sram_io_rresp_data_0_rasSp),
    .io_rresp_data_0_rasEntry_retAddr(sram_io_rresp_data_0_rasEntry_retAddr),
    .io_rresp_data_0_rasEntry_ctr(sram_io_rresp_data_0_rasEntry_ctr),
    .io_rresp_data_0_folded_hist_hist_36_folded_hist(sram_io_rresp_data_0_folded_hist_hist_36_folded_hist),
    .io_rresp_data_0_folded_hist_hist_35_folded_hist(sram_io_rresp_data_0_folded_hist_hist_35_folded_hist),
    .io_rresp_data_0_folded_hist_hist_34_folded_hist(sram_io_rresp_data_0_folded_hist_hist_34_folded_hist),
    .io_rresp_data_0_folded_hist_hist_33_folded_hist(sram_io_rresp_data_0_folded_hist_hist_33_folded_hist),
    .io_rresp_data_0_folded_hist_hist_32_folded_hist(sram_io_rresp_data_0_folded_hist_hist_32_folded_hist),
    .io_rresp_data_0_folded_hist_hist_31_folded_hist(sram_io_rresp_data_0_folded_hist_hist_31_folded_hist),
    .io_rresp_data_0_folded_hist_hist_30_folded_hist(sram_io_rresp_data_0_folded_hist_hist_30_folded_hist),
    .io_rresp_data_0_folded_hist_hist_29_folded_hist(sram_io_rresp_data_0_folded_hist_hist_29_folded_hist),
    .io_rresp_data_0_folded_hist_hist_28_folded_hist(sram_io_rresp_data_0_folded_hist_hist_28_folded_hist),
    .io_rresp_data_0_folded_hist_hist_27_folded_hist(sram_io_rresp_data_0_folded_hist_hist_27_folded_hist),
    .io_rresp_data_0_folded_hist_hist_26_folded_hist(sram_io_rresp_data_0_folded_hist_hist_26_folded_hist),
    .io_rresp_data_0_folded_hist_hist_25_folded_hist(sram_io_rresp_data_0_folded_hist_hist_25_folded_hist),
    .io_rresp_data_0_folded_hist_hist_24_folded_hist(sram_io_rresp_data_0_folded_hist_hist_24_folded_hist),
    .io_rresp_data_0_folded_hist_hist_23_folded_hist(sram_io_rresp_data_0_folded_hist_hist_23_folded_hist),
    .io_rresp_data_0_folded_hist_hist_22_folded_hist(sram_io_rresp_data_0_folded_hist_hist_22_folded_hist),
    .io_rresp_data_0_folded_hist_hist_21_folded_hist(sram_io_rresp_data_0_folded_hist_hist_21_folded_hist),
    .io_rresp_data_0_folded_hist_hist_20_folded_hist(sram_io_rresp_data_0_folded_hist_hist_20_folded_hist),
    .io_rresp_data_0_folded_hist_hist_19_folded_hist(sram_io_rresp_data_0_folded_hist_hist_19_folded_hist),
    .io_rresp_data_0_folded_hist_hist_18_folded_hist(sram_io_rresp_data_0_folded_hist_hist_18_folded_hist),
    .io_rresp_data_0_folded_hist_hist_17_folded_hist(sram_io_rresp_data_0_folded_hist_hist_17_folded_hist),
    .io_rresp_data_0_folded_hist_hist_16_folded_hist(sram_io_rresp_data_0_folded_hist_hist_16_folded_hist),
    .io_rresp_data_0_folded_hist_hist_15_folded_hist(sram_io_rresp_data_0_folded_hist_hist_15_folded_hist),
    .io_rresp_data_0_folded_hist_hist_14_folded_hist(sram_io_rresp_data_0_folded_hist_hist_14_folded_hist),
    .io_rresp_data_0_folded_hist_hist_13_folded_hist(sram_io_rresp_data_0_folded_hist_hist_13_folded_hist),
    .io_rresp_data_0_folded_hist_hist_12_folded_hist(sram_io_rresp_data_0_folded_hist_hist_12_folded_hist),
    .io_rresp_data_0_folded_hist_hist_11_folded_hist(sram_io_rresp_data_0_folded_hist_hist_11_folded_hist),
    .io_rresp_data_0_folded_hist_hist_10_folded_hist(sram_io_rresp_data_0_folded_hist_hist_10_folded_hist),
    .io_rresp_data_0_folded_hist_hist_9_folded_hist(sram_io_rresp_data_0_folded_hist_hist_9_folded_hist),
    .io_rresp_data_0_folded_hist_hist_8_folded_hist(sram_io_rresp_data_0_folded_hist_hist_8_folded_hist),
    .io_rresp_data_0_folded_hist_hist_7_folded_hist(sram_io_rresp_data_0_folded_hist_hist_7_folded_hist),
    .io_rresp_data_0_folded_hist_hist_6_folded_hist(sram_io_rresp_data_0_folded_hist_hist_6_folded_hist),
    .io_rresp_data_0_folded_hist_hist_5_folded_hist(sram_io_rresp_data_0_folded_hist_hist_5_folded_hist),
    .io_rresp_data_0_folded_hist_hist_4_folded_hist(sram_io_rresp_data_0_folded_hist_hist_4_folded_hist),
    .io_rresp_data_0_folded_hist_hist_3_folded_hist(sram_io_rresp_data_0_folded_hist_hist_3_folded_hist),
    .io_rresp_data_0_folded_hist_hist_2_folded_hist(sram_io_rresp_data_0_folded_hist_hist_2_folded_hist),
    .io_rresp_data_0_folded_hist_hist_1_folded_hist(sram_io_rresp_data_0_folded_hist_hist_1_folded_hist),
    .io_rresp_data_0_folded_hist_hist_0_folded_hist(sram_io_rresp_data_0_folded_hist_hist_0_folded_hist),
    .io_rresp_data_0_afhob_afhob_12_bits_0(sram_io_rresp_data_0_afhob_afhob_12_bits_0),
    .io_rresp_data_0_afhob_afhob_12_bits_1(sram_io_rresp_data_0_afhob_afhob_12_bits_1),
    .io_rresp_data_0_afhob_afhob_12_bits_2(sram_io_rresp_data_0_afhob_afhob_12_bits_2),
    .io_rresp_data_0_afhob_afhob_11_bits_0(sram_io_rresp_data_0_afhob_afhob_11_bits_0),
    .io_rresp_data_0_afhob_afhob_11_bits_1(sram_io_rresp_data_0_afhob_afhob_11_bits_1),
    .io_rresp_data_0_afhob_afhob_11_bits_2(sram_io_rresp_data_0_afhob_afhob_11_bits_2),
    .io_rresp_data_0_afhob_afhob_11_bits_3(sram_io_rresp_data_0_afhob_afhob_11_bits_3),
    .io_rresp_data_0_afhob_afhob_10_bits_0(sram_io_rresp_data_0_afhob_afhob_10_bits_0),
    .io_rresp_data_0_afhob_afhob_10_bits_1(sram_io_rresp_data_0_afhob_afhob_10_bits_1),
    .io_rresp_data_0_afhob_afhob_10_bits_2(sram_io_rresp_data_0_afhob_afhob_10_bits_2),
    .io_rresp_data_0_afhob_afhob_10_bits_3(sram_io_rresp_data_0_afhob_afhob_10_bits_3),
    .io_rresp_data_0_afhob_afhob_9_bits_0(sram_io_rresp_data_0_afhob_afhob_9_bits_0),
    .io_rresp_data_0_afhob_afhob_9_bits_1(sram_io_rresp_data_0_afhob_afhob_9_bits_1),
    .io_rresp_data_0_afhob_afhob_9_bits_2(sram_io_rresp_data_0_afhob_afhob_9_bits_2),
    .io_rresp_data_0_afhob_afhob_9_bits_3(sram_io_rresp_data_0_afhob_afhob_9_bits_3),
    .io_rresp_data_0_afhob_afhob_8_bits_0(sram_io_rresp_data_0_afhob_afhob_8_bits_0),
    .io_rresp_data_0_afhob_afhob_8_bits_1(sram_io_rresp_data_0_afhob_afhob_8_bits_1),
    .io_rresp_data_0_afhob_afhob_8_bits_2(sram_io_rresp_data_0_afhob_afhob_8_bits_2),
    .io_rresp_data_0_afhob_afhob_8_bits_3(sram_io_rresp_data_0_afhob_afhob_8_bits_3),
    .io_rresp_data_0_afhob_afhob_7_bits_0(sram_io_rresp_data_0_afhob_afhob_7_bits_0),
    .io_rresp_data_0_afhob_afhob_7_bits_1(sram_io_rresp_data_0_afhob_afhob_7_bits_1),
    .io_rresp_data_0_afhob_afhob_7_bits_2(sram_io_rresp_data_0_afhob_afhob_7_bits_2),
    .io_rresp_data_0_afhob_afhob_7_bits_3(sram_io_rresp_data_0_afhob_afhob_7_bits_3),
    .io_rresp_data_0_afhob_afhob_6_bits_0(sram_io_rresp_data_0_afhob_afhob_6_bits_0),
    .io_rresp_data_0_afhob_afhob_6_bits_1(sram_io_rresp_data_0_afhob_afhob_6_bits_1),
    .io_rresp_data_0_afhob_afhob_6_bits_2(sram_io_rresp_data_0_afhob_afhob_6_bits_2),
    .io_rresp_data_0_afhob_afhob_6_bits_3(sram_io_rresp_data_0_afhob_afhob_6_bits_3),
    .io_rresp_data_0_afhob_afhob_5_bits_0(sram_io_rresp_data_0_afhob_afhob_5_bits_0),
    .io_rresp_data_0_afhob_afhob_5_bits_1(sram_io_rresp_data_0_afhob_afhob_5_bits_1),
    .io_rresp_data_0_afhob_afhob_5_bits_2(sram_io_rresp_data_0_afhob_afhob_5_bits_2),
    .io_rresp_data_0_afhob_afhob_5_bits_3(sram_io_rresp_data_0_afhob_afhob_5_bits_3),
    .io_rresp_data_0_afhob_afhob_4_bits_0(sram_io_rresp_data_0_afhob_afhob_4_bits_0),
    .io_rresp_data_0_afhob_afhob_4_bits_1(sram_io_rresp_data_0_afhob_afhob_4_bits_1),
    .io_rresp_data_0_afhob_afhob_4_bits_2(sram_io_rresp_data_0_afhob_afhob_4_bits_2),
    .io_rresp_data_0_afhob_afhob_4_bits_3(sram_io_rresp_data_0_afhob_afhob_4_bits_3),
    .io_rresp_data_0_afhob_afhob_3_bits_0(sram_io_rresp_data_0_afhob_afhob_3_bits_0),
    .io_rresp_data_0_afhob_afhob_3_bits_1(sram_io_rresp_data_0_afhob_afhob_3_bits_1),
    .io_rresp_data_0_afhob_afhob_3_bits_2(sram_io_rresp_data_0_afhob_afhob_3_bits_2),
    .io_rresp_data_0_afhob_afhob_3_bits_3(sram_io_rresp_data_0_afhob_afhob_3_bits_3),
    .io_rresp_data_0_afhob_afhob_2_bits_0(sram_io_rresp_data_0_afhob_afhob_2_bits_0),
    .io_rresp_data_0_afhob_afhob_2_bits_1(sram_io_rresp_data_0_afhob_afhob_2_bits_1),
    .io_rresp_data_0_afhob_afhob_2_bits_2(sram_io_rresp_data_0_afhob_afhob_2_bits_2),
    .io_rresp_data_0_afhob_afhob_2_bits_3(sram_io_rresp_data_0_afhob_afhob_2_bits_3),
    .io_rresp_data_0_afhob_afhob_1_bits_0(sram_io_rresp_data_0_afhob_afhob_1_bits_0),
    .io_rresp_data_0_afhob_afhob_1_bits_1(sram_io_rresp_data_0_afhob_afhob_1_bits_1),
    .io_rresp_data_0_afhob_afhob_1_bits_2(sram_io_rresp_data_0_afhob_afhob_1_bits_2),
    .io_rresp_data_0_afhob_afhob_1_bits_3(sram_io_rresp_data_0_afhob_afhob_1_bits_3),
    .io_rresp_data_0_afhob_afhob_0_bits_0(sram_io_rresp_data_0_afhob_afhob_0_bits_0),
    .io_rresp_data_0_afhob_afhob_0_bits_1(sram_io_rresp_data_0_afhob_afhob_0_bits_1),
    .io_rresp_data_0_afhob_afhob_0_bits_2(sram_io_rresp_data_0_afhob_afhob_0_bits_2),
    .io_rresp_data_0_afhob_afhob_0_bits_3(sram_io_rresp_data_0_afhob_afhob_0_bits_3),
    .io_rresp_data_0_lastBrNumOH(sram_io_rresp_data_0_lastBrNumOH),
    .io_rresp_data_0_histPtr_flag(sram_io_rresp_data_0_histPtr_flag),
    .io_rresp_data_0_histPtr_value(sram_io_rresp_data_0_histPtr_value),
    .io_wreq_valid(sram_io_wreq_valid),
    .io_wreq_bits_setIdx(sram_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_rasSp(sram_io_wreq_bits_data_0_rasSp),
    .io_wreq_bits_data_0_rasEntry_retAddr(sram_io_wreq_bits_data_0_rasEntry_retAddr),
    .io_wreq_bits_data_0_rasEntry_ctr(sram_io_wreq_bits_data_0_rasEntry_ctr),
    .io_wreq_bits_data_0_folded_hist_hist_36_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_36_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_35_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_35_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_34_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_34_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_33_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_33_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_32_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_32_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_31_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_31_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_30_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_30_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_29_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_29_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_28_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_28_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_27_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_27_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_26_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_26_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_25_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_25_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_24_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_24_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_23_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_23_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_22_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_22_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_21_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_21_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_20_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_20_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_19_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_19_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_18_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_18_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_17_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_16_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_15_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_14_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_13_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_12_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_11_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_10_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_9_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_8_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_7_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_6_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_5_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_4_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_3_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_2_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_1_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_0_folded_hist(sram_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_12_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_12_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_12_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_12_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_11_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_11_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_11_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_11_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_10_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_10_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_10_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_10_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_9_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_9_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_9_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_9_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_8_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_8_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_8_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_8_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_7_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_7_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_7_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_7_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_6_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_6_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_6_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_6_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_5_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_5_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_5_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_5_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_4_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_4_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_4_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_4_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_3_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_3_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_3_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_3_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_2_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_2_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_2_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_2_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_1_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_1_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_1_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_1_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_0(sram_io_wreq_bits_data_0_afhob_afhob_0_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_1(sram_io_wreq_bits_data_0_afhob_afhob_0_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_2(sram_io_wreq_bits_data_0_afhob_afhob_0_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_3(sram_io_wreq_bits_data_0_afhob_afhob_0_bits_3),
    .io_wreq_bits_data_0_lastBrNumOH(sram_io_wreq_bits_data_0_lastBrNumOH),
    .io_wreq_bits_data_0_histPtr_flag(sram_io_wreq_bits_data_0_histPtr_flag),
    .io_wreq_bits_data_0_histPtr_value(sram_io_wreq_bits_data_0_histPtr_value)
  );
  SRAMTemplate_114 sram_1 ( // @[NewFtq.scala 58:22]
    .clock(sram_1_clock),
    .reset(sram_1_reset),
    .io_rreq_valid(sram_1_io_rreq_valid),
    .io_rreq_bits_setIdx(sram_1_io_rreq_bits_setIdx),
    .io_rresp_data_0_rasSp(sram_1_io_rresp_data_0_rasSp),
    .io_rresp_data_0_rasEntry_retAddr(sram_1_io_rresp_data_0_rasEntry_retAddr),
    .io_rresp_data_0_rasEntry_ctr(sram_1_io_rresp_data_0_rasEntry_ctr),
    .io_rresp_data_0_folded_hist_hist_36_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_36_folded_hist),
    .io_rresp_data_0_folded_hist_hist_35_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_35_folded_hist),
    .io_rresp_data_0_folded_hist_hist_34_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_34_folded_hist),
    .io_rresp_data_0_folded_hist_hist_33_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_33_folded_hist),
    .io_rresp_data_0_folded_hist_hist_32_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_32_folded_hist),
    .io_rresp_data_0_folded_hist_hist_31_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_31_folded_hist),
    .io_rresp_data_0_folded_hist_hist_30_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_30_folded_hist),
    .io_rresp_data_0_folded_hist_hist_29_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_29_folded_hist),
    .io_rresp_data_0_folded_hist_hist_28_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_28_folded_hist),
    .io_rresp_data_0_folded_hist_hist_27_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_27_folded_hist),
    .io_rresp_data_0_folded_hist_hist_26_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_26_folded_hist),
    .io_rresp_data_0_folded_hist_hist_25_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_25_folded_hist),
    .io_rresp_data_0_folded_hist_hist_24_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_24_folded_hist),
    .io_rresp_data_0_folded_hist_hist_23_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_23_folded_hist),
    .io_rresp_data_0_folded_hist_hist_22_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_22_folded_hist),
    .io_rresp_data_0_folded_hist_hist_21_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_21_folded_hist),
    .io_rresp_data_0_folded_hist_hist_20_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_20_folded_hist),
    .io_rresp_data_0_folded_hist_hist_19_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_19_folded_hist),
    .io_rresp_data_0_folded_hist_hist_18_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_18_folded_hist),
    .io_rresp_data_0_folded_hist_hist_17_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_17_folded_hist),
    .io_rresp_data_0_folded_hist_hist_16_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_16_folded_hist),
    .io_rresp_data_0_folded_hist_hist_15_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_15_folded_hist),
    .io_rresp_data_0_folded_hist_hist_14_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_14_folded_hist),
    .io_rresp_data_0_folded_hist_hist_13_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_13_folded_hist),
    .io_rresp_data_0_folded_hist_hist_12_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_12_folded_hist),
    .io_rresp_data_0_folded_hist_hist_11_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_11_folded_hist),
    .io_rresp_data_0_folded_hist_hist_10_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_10_folded_hist),
    .io_rresp_data_0_folded_hist_hist_9_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_9_folded_hist),
    .io_rresp_data_0_folded_hist_hist_8_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_8_folded_hist),
    .io_rresp_data_0_folded_hist_hist_7_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_7_folded_hist),
    .io_rresp_data_0_folded_hist_hist_6_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_6_folded_hist),
    .io_rresp_data_0_folded_hist_hist_5_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_5_folded_hist),
    .io_rresp_data_0_folded_hist_hist_4_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_4_folded_hist),
    .io_rresp_data_0_folded_hist_hist_3_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_3_folded_hist),
    .io_rresp_data_0_folded_hist_hist_2_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_2_folded_hist),
    .io_rresp_data_0_folded_hist_hist_1_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_1_folded_hist),
    .io_rresp_data_0_folded_hist_hist_0_folded_hist(sram_1_io_rresp_data_0_folded_hist_hist_0_folded_hist),
    .io_rresp_data_0_afhob_afhob_12_bits_0(sram_1_io_rresp_data_0_afhob_afhob_12_bits_0),
    .io_rresp_data_0_afhob_afhob_12_bits_1(sram_1_io_rresp_data_0_afhob_afhob_12_bits_1),
    .io_rresp_data_0_afhob_afhob_12_bits_2(sram_1_io_rresp_data_0_afhob_afhob_12_bits_2),
    .io_rresp_data_0_afhob_afhob_11_bits_0(sram_1_io_rresp_data_0_afhob_afhob_11_bits_0),
    .io_rresp_data_0_afhob_afhob_11_bits_1(sram_1_io_rresp_data_0_afhob_afhob_11_bits_1),
    .io_rresp_data_0_afhob_afhob_11_bits_2(sram_1_io_rresp_data_0_afhob_afhob_11_bits_2),
    .io_rresp_data_0_afhob_afhob_11_bits_3(sram_1_io_rresp_data_0_afhob_afhob_11_bits_3),
    .io_rresp_data_0_afhob_afhob_10_bits_0(sram_1_io_rresp_data_0_afhob_afhob_10_bits_0),
    .io_rresp_data_0_afhob_afhob_10_bits_1(sram_1_io_rresp_data_0_afhob_afhob_10_bits_1),
    .io_rresp_data_0_afhob_afhob_10_bits_2(sram_1_io_rresp_data_0_afhob_afhob_10_bits_2),
    .io_rresp_data_0_afhob_afhob_10_bits_3(sram_1_io_rresp_data_0_afhob_afhob_10_bits_3),
    .io_rresp_data_0_afhob_afhob_9_bits_0(sram_1_io_rresp_data_0_afhob_afhob_9_bits_0),
    .io_rresp_data_0_afhob_afhob_9_bits_1(sram_1_io_rresp_data_0_afhob_afhob_9_bits_1),
    .io_rresp_data_0_afhob_afhob_9_bits_2(sram_1_io_rresp_data_0_afhob_afhob_9_bits_2),
    .io_rresp_data_0_afhob_afhob_9_bits_3(sram_1_io_rresp_data_0_afhob_afhob_9_bits_3),
    .io_rresp_data_0_afhob_afhob_8_bits_0(sram_1_io_rresp_data_0_afhob_afhob_8_bits_0),
    .io_rresp_data_0_afhob_afhob_8_bits_1(sram_1_io_rresp_data_0_afhob_afhob_8_bits_1),
    .io_rresp_data_0_afhob_afhob_8_bits_2(sram_1_io_rresp_data_0_afhob_afhob_8_bits_2),
    .io_rresp_data_0_afhob_afhob_8_bits_3(sram_1_io_rresp_data_0_afhob_afhob_8_bits_3),
    .io_rresp_data_0_afhob_afhob_7_bits_0(sram_1_io_rresp_data_0_afhob_afhob_7_bits_0),
    .io_rresp_data_0_afhob_afhob_7_bits_1(sram_1_io_rresp_data_0_afhob_afhob_7_bits_1),
    .io_rresp_data_0_afhob_afhob_7_bits_2(sram_1_io_rresp_data_0_afhob_afhob_7_bits_2),
    .io_rresp_data_0_afhob_afhob_7_bits_3(sram_1_io_rresp_data_0_afhob_afhob_7_bits_3),
    .io_rresp_data_0_afhob_afhob_6_bits_0(sram_1_io_rresp_data_0_afhob_afhob_6_bits_0),
    .io_rresp_data_0_afhob_afhob_6_bits_1(sram_1_io_rresp_data_0_afhob_afhob_6_bits_1),
    .io_rresp_data_0_afhob_afhob_6_bits_2(sram_1_io_rresp_data_0_afhob_afhob_6_bits_2),
    .io_rresp_data_0_afhob_afhob_6_bits_3(sram_1_io_rresp_data_0_afhob_afhob_6_bits_3),
    .io_rresp_data_0_afhob_afhob_5_bits_0(sram_1_io_rresp_data_0_afhob_afhob_5_bits_0),
    .io_rresp_data_0_afhob_afhob_5_bits_1(sram_1_io_rresp_data_0_afhob_afhob_5_bits_1),
    .io_rresp_data_0_afhob_afhob_5_bits_2(sram_1_io_rresp_data_0_afhob_afhob_5_bits_2),
    .io_rresp_data_0_afhob_afhob_5_bits_3(sram_1_io_rresp_data_0_afhob_afhob_5_bits_3),
    .io_rresp_data_0_afhob_afhob_4_bits_0(sram_1_io_rresp_data_0_afhob_afhob_4_bits_0),
    .io_rresp_data_0_afhob_afhob_4_bits_1(sram_1_io_rresp_data_0_afhob_afhob_4_bits_1),
    .io_rresp_data_0_afhob_afhob_4_bits_2(sram_1_io_rresp_data_0_afhob_afhob_4_bits_2),
    .io_rresp_data_0_afhob_afhob_4_bits_3(sram_1_io_rresp_data_0_afhob_afhob_4_bits_3),
    .io_rresp_data_0_afhob_afhob_3_bits_0(sram_1_io_rresp_data_0_afhob_afhob_3_bits_0),
    .io_rresp_data_0_afhob_afhob_3_bits_1(sram_1_io_rresp_data_0_afhob_afhob_3_bits_1),
    .io_rresp_data_0_afhob_afhob_3_bits_2(sram_1_io_rresp_data_0_afhob_afhob_3_bits_2),
    .io_rresp_data_0_afhob_afhob_3_bits_3(sram_1_io_rresp_data_0_afhob_afhob_3_bits_3),
    .io_rresp_data_0_afhob_afhob_2_bits_0(sram_1_io_rresp_data_0_afhob_afhob_2_bits_0),
    .io_rresp_data_0_afhob_afhob_2_bits_1(sram_1_io_rresp_data_0_afhob_afhob_2_bits_1),
    .io_rresp_data_0_afhob_afhob_2_bits_2(sram_1_io_rresp_data_0_afhob_afhob_2_bits_2),
    .io_rresp_data_0_afhob_afhob_2_bits_3(sram_1_io_rresp_data_0_afhob_afhob_2_bits_3),
    .io_rresp_data_0_afhob_afhob_1_bits_0(sram_1_io_rresp_data_0_afhob_afhob_1_bits_0),
    .io_rresp_data_0_afhob_afhob_1_bits_1(sram_1_io_rresp_data_0_afhob_afhob_1_bits_1),
    .io_rresp_data_0_afhob_afhob_1_bits_2(sram_1_io_rresp_data_0_afhob_afhob_1_bits_2),
    .io_rresp_data_0_afhob_afhob_1_bits_3(sram_1_io_rresp_data_0_afhob_afhob_1_bits_3),
    .io_rresp_data_0_afhob_afhob_0_bits_0(sram_1_io_rresp_data_0_afhob_afhob_0_bits_0),
    .io_rresp_data_0_afhob_afhob_0_bits_1(sram_1_io_rresp_data_0_afhob_afhob_0_bits_1),
    .io_rresp_data_0_afhob_afhob_0_bits_2(sram_1_io_rresp_data_0_afhob_afhob_0_bits_2),
    .io_rresp_data_0_afhob_afhob_0_bits_3(sram_1_io_rresp_data_0_afhob_afhob_0_bits_3),
    .io_rresp_data_0_lastBrNumOH(sram_1_io_rresp_data_0_lastBrNumOH),
    .io_rresp_data_0_histPtr_flag(sram_1_io_rresp_data_0_histPtr_flag),
    .io_rresp_data_0_histPtr_value(sram_1_io_rresp_data_0_histPtr_value),
    .io_wreq_valid(sram_1_io_wreq_valid),
    .io_wreq_bits_setIdx(sram_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_rasSp(sram_1_io_wreq_bits_data_0_rasSp),
    .io_wreq_bits_data_0_rasEntry_retAddr(sram_1_io_wreq_bits_data_0_rasEntry_retAddr),
    .io_wreq_bits_data_0_rasEntry_ctr(sram_1_io_wreq_bits_data_0_rasEntry_ctr),
    .io_wreq_bits_data_0_folded_hist_hist_36_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_36_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_35_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_35_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_34_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_34_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_33_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_33_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_32_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_32_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_31_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_31_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_30_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_30_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_29_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_29_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_28_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_28_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_27_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_27_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_26_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_26_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_25_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_25_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_24_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_24_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_23_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_23_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_22_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_22_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_21_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_21_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_20_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_20_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_19_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_19_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_18_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_18_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_17_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_16_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_15_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_14_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_13_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_12_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_11_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_10_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_9_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_8_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_7_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_6_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_5_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_4_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_3_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_2_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_1_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_0_folded_hist(sram_1_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_0(sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_1(sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_2(sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_3(sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_3),
    .io_wreq_bits_data_0_lastBrNumOH(sram_1_io_wreq_bits_data_0_lastBrNumOH),
    .io_wreq_bits_data_0_histPtr_flag(sram_1_io_wreq_bits_data_0_histPtr_flag),
    .io_wreq_bits_data_0_histPtr_value(sram_1_io_wreq_bits_data_0_histPtr_value)
  );
  SRAMTemplate_114 sram_2 ( // @[NewFtq.scala 58:22]
    .clock(sram_2_clock),
    .reset(sram_2_reset),
    .io_rreq_valid(sram_2_io_rreq_valid),
    .io_rreq_bits_setIdx(sram_2_io_rreq_bits_setIdx),
    .io_rresp_data_0_rasSp(sram_2_io_rresp_data_0_rasSp),
    .io_rresp_data_0_rasEntry_retAddr(sram_2_io_rresp_data_0_rasEntry_retAddr),
    .io_rresp_data_0_rasEntry_ctr(sram_2_io_rresp_data_0_rasEntry_ctr),
    .io_rresp_data_0_folded_hist_hist_36_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_36_folded_hist),
    .io_rresp_data_0_folded_hist_hist_35_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_35_folded_hist),
    .io_rresp_data_0_folded_hist_hist_34_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_34_folded_hist),
    .io_rresp_data_0_folded_hist_hist_33_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_33_folded_hist),
    .io_rresp_data_0_folded_hist_hist_32_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_32_folded_hist),
    .io_rresp_data_0_folded_hist_hist_31_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_31_folded_hist),
    .io_rresp_data_0_folded_hist_hist_30_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_30_folded_hist),
    .io_rresp_data_0_folded_hist_hist_29_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_29_folded_hist),
    .io_rresp_data_0_folded_hist_hist_28_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_28_folded_hist),
    .io_rresp_data_0_folded_hist_hist_27_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_27_folded_hist),
    .io_rresp_data_0_folded_hist_hist_26_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_26_folded_hist),
    .io_rresp_data_0_folded_hist_hist_25_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_25_folded_hist),
    .io_rresp_data_0_folded_hist_hist_24_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_24_folded_hist),
    .io_rresp_data_0_folded_hist_hist_23_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_23_folded_hist),
    .io_rresp_data_0_folded_hist_hist_22_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_22_folded_hist),
    .io_rresp_data_0_folded_hist_hist_21_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_21_folded_hist),
    .io_rresp_data_0_folded_hist_hist_20_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_20_folded_hist),
    .io_rresp_data_0_folded_hist_hist_19_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_19_folded_hist),
    .io_rresp_data_0_folded_hist_hist_18_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_18_folded_hist),
    .io_rresp_data_0_folded_hist_hist_17_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_17_folded_hist),
    .io_rresp_data_0_folded_hist_hist_16_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_16_folded_hist),
    .io_rresp_data_0_folded_hist_hist_15_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_15_folded_hist),
    .io_rresp_data_0_folded_hist_hist_14_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_14_folded_hist),
    .io_rresp_data_0_folded_hist_hist_13_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_13_folded_hist),
    .io_rresp_data_0_folded_hist_hist_12_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_12_folded_hist),
    .io_rresp_data_0_folded_hist_hist_11_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_11_folded_hist),
    .io_rresp_data_0_folded_hist_hist_10_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_10_folded_hist),
    .io_rresp_data_0_folded_hist_hist_9_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_9_folded_hist),
    .io_rresp_data_0_folded_hist_hist_8_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_8_folded_hist),
    .io_rresp_data_0_folded_hist_hist_7_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_7_folded_hist),
    .io_rresp_data_0_folded_hist_hist_6_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_6_folded_hist),
    .io_rresp_data_0_folded_hist_hist_5_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_5_folded_hist),
    .io_rresp_data_0_folded_hist_hist_4_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_4_folded_hist),
    .io_rresp_data_0_folded_hist_hist_3_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_3_folded_hist),
    .io_rresp_data_0_folded_hist_hist_2_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_2_folded_hist),
    .io_rresp_data_0_folded_hist_hist_1_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_1_folded_hist),
    .io_rresp_data_0_folded_hist_hist_0_folded_hist(sram_2_io_rresp_data_0_folded_hist_hist_0_folded_hist),
    .io_rresp_data_0_afhob_afhob_12_bits_0(sram_2_io_rresp_data_0_afhob_afhob_12_bits_0),
    .io_rresp_data_0_afhob_afhob_12_bits_1(sram_2_io_rresp_data_0_afhob_afhob_12_bits_1),
    .io_rresp_data_0_afhob_afhob_12_bits_2(sram_2_io_rresp_data_0_afhob_afhob_12_bits_2),
    .io_rresp_data_0_afhob_afhob_11_bits_0(sram_2_io_rresp_data_0_afhob_afhob_11_bits_0),
    .io_rresp_data_0_afhob_afhob_11_bits_1(sram_2_io_rresp_data_0_afhob_afhob_11_bits_1),
    .io_rresp_data_0_afhob_afhob_11_bits_2(sram_2_io_rresp_data_0_afhob_afhob_11_bits_2),
    .io_rresp_data_0_afhob_afhob_11_bits_3(sram_2_io_rresp_data_0_afhob_afhob_11_bits_3),
    .io_rresp_data_0_afhob_afhob_10_bits_0(sram_2_io_rresp_data_0_afhob_afhob_10_bits_0),
    .io_rresp_data_0_afhob_afhob_10_bits_1(sram_2_io_rresp_data_0_afhob_afhob_10_bits_1),
    .io_rresp_data_0_afhob_afhob_10_bits_2(sram_2_io_rresp_data_0_afhob_afhob_10_bits_2),
    .io_rresp_data_0_afhob_afhob_10_bits_3(sram_2_io_rresp_data_0_afhob_afhob_10_bits_3),
    .io_rresp_data_0_afhob_afhob_9_bits_0(sram_2_io_rresp_data_0_afhob_afhob_9_bits_0),
    .io_rresp_data_0_afhob_afhob_9_bits_1(sram_2_io_rresp_data_0_afhob_afhob_9_bits_1),
    .io_rresp_data_0_afhob_afhob_9_bits_2(sram_2_io_rresp_data_0_afhob_afhob_9_bits_2),
    .io_rresp_data_0_afhob_afhob_9_bits_3(sram_2_io_rresp_data_0_afhob_afhob_9_bits_3),
    .io_rresp_data_0_afhob_afhob_8_bits_0(sram_2_io_rresp_data_0_afhob_afhob_8_bits_0),
    .io_rresp_data_0_afhob_afhob_8_bits_1(sram_2_io_rresp_data_0_afhob_afhob_8_bits_1),
    .io_rresp_data_0_afhob_afhob_8_bits_2(sram_2_io_rresp_data_0_afhob_afhob_8_bits_2),
    .io_rresp_data_0_afhob_afhob_8_bits_3(sram_2_io_rresp_data_0_afhob_afhob_8_bits_3),
    .io_rresp_data_0_afhob_afhob_7_bits_0(sram_2_io_rresp_data_0_afhob_afhob_7_bits_0),
    .io_rresp_data_0_afhob_afhob_7_bits_1(sram_2_io_rresp_data_0_afhob_afhob_7_bits_1),
    .io_rresp_data_0_afhob_afhob_7_bits_2(sram_2_io_rresp_data_0_afhob_afhob_7_bits_2),
    .io_rresp_data_0_afhob_afhob_7_bits_3(sram_2_io_rresp_data_0_afhob_afhob_7_bits_3),
    .io_rresp_data_0_afhob_afhob_6_bits_0(sram_2_io_rresp_data_0_afhob_afhob_6_bits_0),
    .io_rresp_data_0_afhob_afhob_6_bits_1(sram_2_io_rresp_data_0_afhob_afhob_6_bits_1),
    .io_rresp_data_0_afhob_afhob_6_bits_2(sram_2_io_rresp_data_0_afhob_afhob_6_bits_2),
    .io_rresp_data_0_afhob_afhob_6_bits_3(sram_2_io_rresp_data_0_afhob_afhob_6_bits_3),
    .io_rresp_data_0_afhob_afhob_5_bits_0(sram_2_io_rresp_data_0_afhob_afhob_5_bits_0),
    .io_rresp_data_0_afhob_afhob_5_bits_1(sram_2_io_rresp_data_0_afhob_afhob_5_bits_1),
    .io_rresp_data_0_afhob_afhob_5_bits_2(sram_2_io_rresp_data_0_afhob_afhob_5_bits_2),
    .io_rresp_data_0_afhob_afhob_5_bits_3(sram_2_io_rresp_data_0_afhob_afhob_5_bits_3),
    .io_rresp_data_0_afhob_afhob_4_bits_0(sram_2_io_rresp_data_0_afhob_afhob_4_bits_0),
    .io_rresp_data_0_afhob_afhob_4_bits_1(sram_2_io_rresp_data_0_afhob_afhob_4_bits_1),
    .io_rresp_data_0_afhob_afhob_4_bits_2(sram_2_io_rresp_data_0_afhob_afhob_4_bits_2),
    .io_rresp_data_0_afhob_afhob_4_bits_3(sram_2_io_rresp_data_0_afhob_afhob_4_bits_3),
    .io_rresp_data_0_afhob_afhob_3_bits_0(sram_2_io_rresp_data_0_afhob_afhob_3_bits_0),
    .io_rresp_data_0_afhob_afhob_3_bits_1(sram_2_io_rresp_data_0_afhob_afhob_3_bits_1),
    .io_rresp_data_0_afhob_afhob_3_bits_2(sram_2_io_rresp_data_0_afhob_afhob_3_bits_2),
    .io_rresp_data_0_afhob_afhob_3_bits_3(sram_2_io_rresp_data_0_afhob_afhob_3_bits_3),
    .io_rresp_data_0_afhob_afhob_2_bits_0(sram_2_io_rresp_data_0_afhob_afhob_2_bits_0),
    .io_rresp_data_0_afhob_afhob_2_bits_1(sram_2_io_rresp_data_0_afhob_afhob_2_bits_1),
    .io_rresp_data_0_afhob_afhob_2_bits_2(sram_2_io_rresp_data_0_afhob_afhob_2_bits_2),
    .io_rresp_data_0_afhob_afhob_2_bits_3(sram_2_io_rresp_data_0_afhob_afhob_2_bits_3),
    .io_rresp_data_0_afhob_afhob_1_bits_0(sram_2_io_rresp_data_0_afhob_afhob_1_bits_0),
    .io_rresp_data_0_afhob_afhob_1_bits_1(sram_2_io_rresp_data_0_afhob_afhob_1_bits_1),
    .io_rresp_data_0_afhob_afhob_1_bits_2(sram_2_io_rresp_data_0_afhob_afhob_1_bits_2),
    .io_rresp_data_0_afhob_afhob_1_bits_3(sram_2_io_rresp_data_0_afhob_afhob_1_bits_3),
    .io_rresp_data_0_afhob_afhob_0_bits_0(sram_2_io_rresp_data_0_afhob_afhob_0_bits_0),
    .io_rresp_data_0_afhob_afhob_0_bits_1(sram_2_io_rresp_data_0_afhob_afhob_0_bits_1),
    .io_rresp_data_0_afhob_afhob_0_bits_2(sram_2_io_rresp_data_0_afhob_afhob_0_bits_2),
    .io_rresp_data_0_afhob_afhob_0_bits_3(sram_2_io_rresp_data_0_afhob_afhob_0_bits_3),
    .io_rresp_data_0_lastBrNumOH(sram_2_io_rresp_data_0_lastBrNumOH),
    .io_rresp_data_0_histPtr_flag(sram_2_io_rresp_data_0_histPtr_flag),
    .io_rresp_data_0_histPtr_value(sram_2_io_rresp_data_0_histPtr_value),
    .io_wreq_valid(sram_2_io_wreq_valid),
    .io_wreq_bits_setIdx(sram_2_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_rasSp(sram_2_io_wreq_bits_data_0_rasSp),
    .io_wreq_bits_data_0_rasEntry_retAddr(sram_2_io_wreq_bits_data_0_rasEntry_retAddr),
    .io_wreq_bits_data_0_rasEntry_ctr(sram_2_io_wreq_bits_data_0_rasEntry_ctr),
    .io_wreq_bits_data_0_folded_hist_hist_36_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_36_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_35_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_35_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_34_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_34_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_33_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_33_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_32_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_32_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_31_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_31_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_30_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_30_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_29_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_29_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_28_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_28_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_27_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_27_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_26_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_26_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_25_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_25_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_24_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_24_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_23_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_23_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_22_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_22_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_21_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_21_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_20_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_20_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_19_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_19_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_18_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_18_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_17_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_16_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_15_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_14_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_13_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_12_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_11_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_10_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_9_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_8_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_7_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_6_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_5_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_4_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_3_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_2_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_1_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist),
    .io_wreq_bits_data_0_folded_hist_hist_0_folded_hist(sram_2_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_12_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_11_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_10_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_9_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_8_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_7_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_6_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_5_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_4_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_3_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_2_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_1_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_3),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_0(sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_0),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_1(sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_1),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_2(sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_2),
    .io_wreq_bits_data_0_afhob_afhob_0_bits_3(sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_3),
    .io_wreq_bits_data_0_lastBrNumOH(sram_2_io_wreq_bits_data_0_lastBrNumOH),
    .io_wreq_bits_data_0_histPtr_flag(sram_2_io_wreq_bits_data_0_histPtr_flag),
    .io_wreq_bits_data_0_histPtr_value(sram_2_io_wreq_bits_data_0_histPtr_value)
  );
  assign io_rdata_0_rasSp = sram_io_rresp_data_0_rasSp; // @[NewFtq.scala 61:17]
  assign io_rdata_0_rasEntry_retAddr = sram_io_rresp_data_0_rasEntry_retAddr; // @[NewFtq.scala 61:17]
  assign io_rdata_0_rasEntry_ctr = sram_io_rresp_data_0_rasEntry_ctr; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_36_folded_hist = sram_io_rresp_data_0_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_35_folded_hist = sram_io_rresp_data_0_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_34_folded_hist = sram_io_rresp_data_0_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_33_folded_hist = sram_io_rresp_data_0_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_32_folded_hist = sram_io_rresp_data_0_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_31_folded_hist = sram_io_rresp_data_0_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_30_folded_hist = sram_io_rresp_data_0_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_29_folded_hist = sram_io_rresp_data_0_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_28_folded_hist = sram_io_rresp_data_0_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_27_folded_hist = sram_io_rresp_data_0_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_26_folded_hist = sram_io_rresp_data_0_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_25_folded_hist = sram_io_rresp_data_0_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_24_folded_hist = sram_io_rresp_data_0_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_23_folded_hist = sram_io_rresp_data_0_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_22_folded_hist = sram_io_rresp_data_0_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_21_folded_hist = sram_io_rresp_data_0_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_20_folded_hist = sram_io_rresp_data_0_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_19_folded_hist = sram_io_rresp_data_0_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_18_folded_hist = sram_io_rresp_data_0_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_17_folded_hist = sram_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_16_folded_hist = sram_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_15_folded_hist = sram_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_14_folded_hist = sram_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_13_folded_hist = sram_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_12_folded_hist = sram_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_11_folded_hist = sram_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_10_folded_hist = sram_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_9_folded_hist = sram_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_8_folded_hist = sram_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_7_folded_hist = sram_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_6_folded_hist = sram_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_5_folded_hist = sram_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_4_folded_hist = sram_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_3_folded_hist = sram_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_2_folded_hist = sram_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_1_folded_hist = sram_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_folded_hist_hist_0_folded_hist = sram_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_12_bits_0 = sram_io_rresp_data_0_afhob_afhob_12_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_12_bits_1 = sram_io_rresp_data_0_afhob_afhob_12_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_12_bits_2 = sram_io_rresp_data_0_afhob_afhob_12_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_11_bits_0 = sram_io_rresp_data_0_afhob_afhob_11_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_11_bits_1 = sram_io_rresp_data_0_afhob_afhob_11_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_11_bits_2 = sram_io_rresp_data_0_afhob_afhob_11_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_11_bits_3 = sram_io_rresp_data_0_afhob_afhob_11_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_10_bits_0 = sram_io_rresp_data_0_afhob_afhob_10_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_10_bits_1 = sram_io_rresp_data_0_afhob_afhob_10_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_10_bits_2 = sram_io_rresp_data_0_afhob_afhob_10_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_10_bits_3 = sram_io_rresp_data_0_afhob_afhob_10_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_9_bits_0 = sram_io_rresp_data_0_afhob_afhob_9_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_9_bits_1 = sram_io_rresp_data_0_afhob_afhob_9_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_9_bits_2 = sram_io_rresp_data_0_afhob_afhob_9_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_9_bits_3 = sram_io_rresp_data_0_afhob_afhob_9_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_8_bits_0 = sram_io_rresp_data_0_afhob_afhob_8_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_8_bits_1 = sram_io_rresp_data_0_afhob_afhob_8_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_8_bits_2 = sram_io_rresp_data_0_afhob_afhob_8_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_8_bits_3 = sram_io_rresp_data_0_afhob_afhob_8_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_7_bits_0 = sram_io_rresp_data_0_afhob_afhob_7_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_7_bits_1 = sram_io_rresp_data_0_afhob_afhob_7_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_7_bits_2 = sram_io_rresp_data_0_afhob_afhob_7_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_7_bits_3 = sram_io_rresp_data_0_afhob_afhob_7_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_6_bits_0 = sram_io_rresp_data_0_afhob_afhob_6_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_6_bits_1 = sram_io_rresp_data_0_afhob_afhob_6_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_6_bits_2 = sram_io_rresp_data_0_afhob_afhob_6_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_6_bits_3 = sram_io_rresp_data_0_afhob_afhob_6_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_5_bits_0 = sram_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_5_bits_1 = sram_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_5_bits_2 = sram_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_5_bits_3 = sram_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_4_bits_0 = sram_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_4_bits_1 = sram_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_4_bits_2 = sram_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_4_bits_3 = sram_io_rresp_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_3_bits_0 = sram_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_3_bits_1 = sram_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_3_bits_2 = sram_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_3_bits_3 = sram_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_2_bits_0 = sram_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_2_bits_1 = sram_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_2_bits_2 = sram_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_2_bits_3 = sram_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_1_bits_0 = sram_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_1_bits_1 = sram_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_1_bits_2 = sram_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_1_bits_3 = sram_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_0_bits_0 = sram_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_0_bits_1 = sram_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_0_bits_2 = sram_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_0_afhob_afhob_0_bits_3 = sram_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_0_lastBrNumOH = sram_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 61:17]
  assign io_rdata_0_histPtr_flag = sram_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 61:17]
  assign io_rdata_0_histPtr_value = sram_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 61:17]
  assign io_rdata_1_rasSp = sram_1_io_rresp_data_0_rasSp; // @[NewFtq.scala 61:17]
  assign io_rdata_1_rasEntry_retAddr = sram_1_io_rresp_data_0_rasEntry_retAddr; // @[NewFtq.scala 61:17]
  assign io_rdata_1_rasEntry_ctr = sram_1_io_rresp_data_0_rasEntry_ctr; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_36_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_35_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_34_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_33_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_32_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_31_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_30_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_29_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_28_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_27_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_26_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_25_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_24_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_23_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_22_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_21_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_20_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_19_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_18_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_17_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_16_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_15_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_14_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_13_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_12_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_11_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_10_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_9_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_8_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_7_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_6_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_5_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_4_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_3_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_2_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_1_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_folded_hist_hist_0_folded_hist = sram_1_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_12_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_12_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_12_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_12_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_12_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_12_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_11_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_11_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_11_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_11_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_11_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_11_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_11_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_11_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_10_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_10_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_10_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_10_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_10_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_10_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_10_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_10_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_9_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_9_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_9_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_9_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_9_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_9_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_9_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_9_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_8_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_8_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_8_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_8_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_8_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_8_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_8_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_8_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_7_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_7_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_7_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_7_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_7_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_7_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_7_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_7_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_6_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_6_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_6_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_6_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_6_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_6_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_6_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_6_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_5_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_5_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_5_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_5_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_5_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_5_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_5_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_5_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_4_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_4_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_4_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_4_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_4_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_4_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_4_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_4_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_3_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_3_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_3_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_3_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_3_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_3_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_3_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_3_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_2_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_2_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_2_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_2_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_2_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_2_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_2_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_2_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_1_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_1_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_1_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_1_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_1_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_1_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_1_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_1_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_0_bits_0 = sram_1_io_rresp_data_0_afhob_afhob_0_bits_0; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_0_bits_1 = sram_1_io_rresp_data_0_afhob_afhob_0_bits_1; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_0_bits_2 = sram_1_io_rresp_data_0_afhob_afhob_0_bits_2; // @[NewFtq.scala 61:17]
  assign io_rdata_1_afhob_afhob_0_bits_3 = sram_1_io_rresp_data_0_afhob_afhob_0_bits_3; // @[NewFtq.scala 61:17]
  assign io_rdata_1_lastBrNumOH = sram_1_io_rresp_data_0_lastBrNumOH; // @[NewFtq.scala 61:17]
  assign io_rdata_1_histPtr_flag = sram_1_io_rresp_data_0_histPtr_flag; // @[NewFtq.scala 61:17]
  assign io_rdata_1_histPtr_value = sram_1_io_rresp_data_0_histPtr_value; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_36_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_35_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_34_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_33_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_32_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_31_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_30_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_29_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_28_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_27_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_26_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_25_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_24_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_23_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_22_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_21_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_20_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_19_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_18_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_17_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_16_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_15_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_14_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_13_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_12_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_11_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_10_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_9_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_8_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_7_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_6_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_5_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_4_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_3_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_2_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_1_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 61:17]
  assign io_rdata_2_folded_hist_hist_0_folded_hist = sram_2_io_rresp_data_0_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 61:17]
  assign sram_clock = clock;
  assign sram_reset = reset;
  assign sram_io_rreq_valid = io_ren_0; // @[NewFtq.scala 59:25]
  assign sram_io_rreq_bits_setIdx = io_raddr_0; // @[NewFtq.scala 60:31]
  assign sram_io_wreq_valid = io_wen; // @[NewFtq.scala 62:25]
  assign sram_io_wreq_bits_setIdx = io_waddr; // @[NewFtq.scala 63:31]
  assign sram_io_wreq_bits_data_0_rasSp = io_wdata_rasSp; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_rasEntry_retAddr = io_wdata_rasEntry_retAddr; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_rasEntry_ctr = io_wdata_rasEntry_ctr; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_36_folded_hist = io_wdata_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_35_folded_hist = io_wdata_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_34_folded_hist = io_wdata_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_33_folded_hist = io_wdata_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_32_folded_hist = io_wdata_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_31_folded_hist = io_wdata_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_30_folded_hist = io_wdata_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_29_folded_hist = io_wdata_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_28_folded_hist = io_wdata_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_27_folded_hist = io_wdata_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_26_folded_hist = io_wdata_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_25_folded_hist = io_wdata_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_24_folded_hist = io_wdata_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_23_folded_hist = io_wdata_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_22_folded_hist = io_wdata_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_21_folded_hist = io_wdata_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_20_folded_hist = io_wdata_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_19_folded_hist = io_wdata_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_18_folded_hist = io_wdata_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist = io_wdata_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist = io_wdata_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist = io_wdata_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist = io_wdata_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist = io_wdata_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist = io_wdata_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist = io_wdata_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist = io_wdata_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist = io_wdata_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist = io_wdata_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist = io_wdata_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist = io_wdata_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist = io_wdata_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist = io_wdata_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist = io_wdata_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist = io_wdata_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist = io_wdata_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist = io_wdata_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_12_bits_0 = io_wdata_afhob_afhob_12_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_12_bits_1 = io_wdata_afhob_afhob_12_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_12_bits_2 = io_wdata_afhob_afhob_12_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_12_bits_3 = io_wdata_afhob_afhob_12_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_11_bits_0 = io_wdata_afhob_afhob_11_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_11_bits_1 = io_wdata_afhob_afhob_11_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_11_bits_2 = io_wdata_afhob_afhob_11_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_11_bits_3 = io_wdata_afhob_afhob_11_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_10_bits_0 = io_wdata_afhob_afhob_10_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_10_bits_1 = io_wdata_afhob_afhob_10_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_10_bits_2 = io_wdata_afhob_afhob_10_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_10_bits_3 = io_wdata_afhob_afhob_10_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_9_bits_0 = io_wdata_afhob_afhob_9_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_9_bits_1 = io_wdata_afhob_afhob_9_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_9_bits_2 = io_wdata_afhob_afhob_9_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_9_bits_3 = io_wdata_afhob_afhob_9_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_8_bits_0 = io_wdata_afhob_afhob_8_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_8_bits_1 = io_wdata_afhob_afhob_8_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_8_bits_2 = io_wdata_afhob_afhob_8_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_8_bits_3 = io_wdata_afhob_afhob_8_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_7_bits_0 = io_wdata_afhob_afhob_7_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_7_bits_1 = io_wdata_afhob_afhob_7_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_7_bits_2 = io_wdata_afhob_afhob_7_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_7_bits_3 = io_wdata_afhob_afhob_7_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_6_bits_0 = io_wdata_afhob_afhob_6_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_6_bits_1 = io_wdata_afhob_afhob_6_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_6_bits_2 = io_wdata_afhob_afhob_6_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_6_bits_3 = io_wdata_afhob_afhob_6_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_5_bits_0 = io_wdata_afhob_afhob_5_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_5_bits_1 = io_wdata_afhob_afhob_5_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_5_bits_2 = io_wdata_afhob_afhob_5_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_5_bits_3 = io_wdata_afhob_afhob_5_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_4_bits_0 = io_wdata_afhob_afhob_4_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_4_bits_1 = io_wdata_afhob_afhob_4_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_4_bits_2 = io_wdata_afhob_afhob_4_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_4_bits_3 = io_wdata_afhob_afhob_4_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_3_bits_0 = io_wdata_afhob_afhob_3_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_3_bits_1 = io_wdata_afhob_afhob_3_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_3_bits_2 = io_wdata_afhob_afhob_3_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_3_bits_3 = io_wdata_afhob_afhob_3_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_2_bits_0 = io_wdata_afhob_afhob_2_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_2_bits_1 = io_wdata_afhob_afhob_2_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_2_bits_2 = io_wdata_afhob_afhob_2_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_2_bits_3 = io_wdata_afhob_afhob_2_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_1_bits_0 = io_wdata_afhob_afhob_1_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_1_bits_1 = io_wdata_afhob_afhob_1_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_1_bits_2 = io_wdata_afhob_afhob_1_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_1_bits_3 = io_wdata_afhob_afhob_1_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_0_bits_0 = io_wdata_afhob_afhob_0_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_0_bits_1 = io_wdata_afhob_afhob_0_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_0_bits_2 = io_wdata_afhob_afhob_0_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_afhob_afhob_0_bits_3 = io_wdata_afhob_afhob_0_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_lastBrNumOH = io_wdata_lastBrNumOH; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_histPtr_flag = io_wdata_histPtr_flag; // @[NewFtq.scala 64:{39,39}]
  assign sram_io_wreq_bits_data_0_histPtr_value = io_wdata_histPtr_value; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_clock = clock;
  assign sram_1_reset = reset;
  assign sram_1_io_rreq_valid = io_ren_1; // @[NewFtq.scala 59:25]
  assign sram_1_io_rreq_bits_setIdx = io_raddr_1; // @[NewFtq.scala 60:31]
  assign sram_1_io_wreq_valid = io_wen; // @[NewFtq.scala 62:25]
  assign sram_1_io_wreq_bits_setIdx = io_waddr; // @[NewFtq.scala 63:31]
  assign sram_1_io_wreq_bits_data_0_rasSp = io_wdata_rasSp; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_rasEntry_retAddr = io_wdata_rasEntry_retAddr; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_rasEntry_ctr = io_wdata_rasEntry_ctr; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_36_folded_hist = io_wdata_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_35_folded_hist = io_wdata_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_34_folded_hist = io_wdata_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_33_folded_hist = io_wdata_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_32_folded_hist = io_wdata_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_31_folded_hist = io_wdata_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_30_folded_hist = io_wdata_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_29_folded_hist = io_wdata_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_28_folded_hist = io_wdata_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_27_folded_hist = io_wdata_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_26_folded_hist = io_wdata_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_25_folded_hist = io_wdata_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_24_folded_hist = io_wdata_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_23_folded_hist = io_wdata_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_22_folded_hist = io_wdata_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_21_folded_hist = io_wdata_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_20_folded_hist = io_wdata_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_19_folded_hist = io_wdata_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_18_folded_hist = io_wdata_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist = io_wdata_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist = io_wdata_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist = io_wdata_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist = io_wdata_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist = io_wdata_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist = io_wdata_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist = io_wdata_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist = io_wdata_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist = io_wdata_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist = io_wdata_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist = io_wdata_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist = io_wdata_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist = io_wdata_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist = io_wdata_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist = io_wdata_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist = io_wdata_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist = io_wdata_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist = io_wdata_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_0 = io_wdata_afhob_afhob_12_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_1 = io_wdata_afhob_afhob_12_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_2 = io_wdata_afhob_afhob_12_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_12_bits_3 = io_wdata_afhob_afhob_12_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_0 = io_wdata_afhob_afhob_11_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_1 = io_wdata_afhob_afhob_11_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_2 = io_wdata_afhob_afhob_11_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_11_bits_3 = io_wdata_afhob_afhob_11_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_0 = io_wdata_afhob_afhob_10_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_1 = io_wdata_afhob_afhob_10_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_2 = io_wdata_afhob_afhob_10_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_10_bits_3 = io_wdata_afhob_afhob_10_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_0 = io_wdata_afhob_afhob_9_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_1 = io_wdata_afhob_afhob_9_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_2 = io_wdata_afhob_afhob_9_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_9_bits_3 = io_wdata_afhob_afhob_9_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_0 = io_wdata_afhob_afhob_8_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_1 = io_wdata_afhob_afhob_8_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_2 = io_wdata_afhob_afhob_8_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_8_bits_3 = io_wdata_afhob_afhob_8_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_0 = io_wdata_afhob_afhob_7_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_1 = io_wdata_afhob_afhob_7_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_2 = io_wdata_afhob_afhob_7_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_7_bits_3 = io_wdata_afhob_afhob_7_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_0 = io_wdata_afhob_afhob_6_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_1 = io_wdata_afhob_afhob_6_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_2 = io_wdata_afhob_afhob_6_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_6_bits_3 = io_wdata_afhob_afhob_6_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_0 = io_wdata_afhob_afhob_5_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_1 = io_wdata_afhob_afhob_5_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_2 = io_wdata_afhob_afhob_5_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_5_bits_3 = io_wdata_afhob_afhob_5_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_0 = io_wdata_afhob_afhob_4_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_1 = io_wdata_afhob_afhob_4_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_2 = io_wdata_afhob_afhob_4_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_4_bits_3 = io_wdata_afhob_afhob_4_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_0 = io_wdata_afhob_afhob_3_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_1 = io_wdata_afhob_afhob_3_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_2 = io_wdata_afhob_afhob_3_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_3_bits_3 = io_wdata_afhob_afhob_3_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_0 = io_wdata_afhob_afhob_2_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_1 = io_wdata_afhob_afhob_2_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_2 = io_wdata_afhob_afhob_2_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_2_bits_3 = io_wdata_afhob_afhob_2_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_0 = io_wdata_afhob_afhob_1_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_1 = io_wdata_afhob_afhob_1_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_2 = io_wdata_afhob_afhob_1_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_1_bits_3 = io_wdata_afhob_afhob_1_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_0 = io_wdata_afhob_afhob_0_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_1 = io_wdata_afhob_afhob_0_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_2 = io_wdata_afhob_afhob_0_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_afhob_afhob_0_bits_3 = io_wdata_afhob_afhob_0_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_lastBrNumOH = io_wdata_lastBrNumOH; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_histPtr_flag = io_wdata_histPtr_flag; // @[NewFtq.scala 64:{39,39}]
  assign sram_1_io_wreq_bits_data_0_histPtr_value = io_wdata_histPtr_value; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_clock = clock;
  assign sram_2_reset = reset;
  assign sram_2_io_rreq_valid = io_ren_2; // @[NewFtq.scala 59:25]
  assign sram_2_io_rreq_bits_setIdx = io_raddr_2; // @[NewFtq.scala 60:31]
  assign sram_2_io_wreq_valid = io_wen; // @[NewFtq.scala 62:25]
  assign sram_2_io_wreq_bits_setIdx = io_waddr; // @[NewFtq.scala 63:31]
  assign sram_2_io_wreq_bits_data_0_rasSp = io_wdata_rasSp; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_rasEntry_retAddr = io_wdata_rasEntry_retAddr; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_rasEntry_ctr = io_wdata_rasEntry_ctr; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_36_folded_hist = io_wdata_folded_hist_hist_36_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_35_folded_hist = io_wdata_folded_hist_hist_35_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_34_folded_hist = io_wdata_folded_hist_hist_34_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_33_folded_hist = io_wdata_folded_hist_hist_33_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_32_folded_hist = io_wdata_folded_hist_hist_32_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_31_folded_hist = io_wdata_folded_hist_hist_31_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_30_folded_hist = io_wdata_folded_hist_hist_30_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_29_folded_hist = io_wdata_folded_hist_hist_29_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_28_folded_hist = io_wdata_folded_hist_hist_28_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_27_folded_hist = io_wdata_folded_hist_hist_27_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_26_folded_hist = io_wdata_folded_hist_hist_26_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_25_folded_hist = io_wdata_folded_hist_hist_25_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_24_folded_hist = io_wdata_folded_hist_hist_24_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_23_folded_hist = io_wdata_folded_hist_hist_23_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_22_folded_hist = io_wdata_folded_hist_hist_22_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_21_folded_hist = io_wdata_folded_hist_hist_21_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_20_folded_hist = io_wdata_folded_hist_hist_20_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_19_folded_hist = io_wdata_folded_hist_hist_19_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_18_folded_hist = io_wdata_folded_hist_hist_18_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_17_folded_hist = io_wdata_folded_hist_hist_17_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_16_folded_hist = io_wdata_folded_hist_hist_16_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_15_folded_hist = io_wdata_folded_hist_hist_15_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_14_folded_hist = io_wdata_folded_hist_hist_14_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_13_folded_hist = io_wdata_folded_hist_hist_13_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_12_folded_hist = io_wdata_folded_hist_hist_12_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_11_folded_hist = io_wdata_folded_hist_hist_11_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_10_folded_hist = io_wdata_folded_hist_hist_10_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_9_folded_hist = io_wdata_folded_hist_hist_9_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_8_folded_hist = io_wdata_folded_hist_hist_8_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_7_folded_hist = io_wdata_folded_hist_hist_7_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_6_folded_hist = io_wdata_folded_hist_hist_6_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_5_folded_hist = io_wdata_folded_hist_hist_5_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_4_folded_hist = io_wdata_folded_hist_hist_4_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_3_folded_hist = io_wdata_folded_hist_hist_3_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_2_folded_hist = io_wdata_folded_hist_hist_2_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_1_folded_hist = io_wdata_folded_hist_hist_1_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_folded_hist_hist_0_folded_hist = io_wdata_folded_hist_hist_0_folded_hist; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_0 = io_wdata_afhob_afhob_12_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_1 = io_wdata_afhob_afhob_12_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_2 = io_wdata_afhob_afhob_12_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_12_bits_3 = io_wdata_afhob_afhob_12_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_0 = io_wdata_afhob_afhob_11_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_1 = io_wdata_afhob_afhob_11_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_2 = io_wdata_afhob_afhob_11_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_11_bits_3 = io_wdata_afhob_afhob_11_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_0 = io_wdata_afhob_afhob_10_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_1 = io_wdata_afhob_afhob_10_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_2 = io_wdata_afhob_afhob_10_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_10_bits_3 = io_wdata_afhob_afhob_10_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_0 = io_wdata_afhob_afhob_9_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_1 = io_wdata_afhob_afhob_9_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_2 = io_wdata_afhob_afhob_9_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_9_bits_3 = io_wdata_afhob_afhob_9_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_0 = io_wdata_afhob_afhob_8_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_1 = io_wdata_afhob_afhob_8_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_2 = io_wdata_afhob_afhob_8_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_8_bits_3 = io_wdata_afhob_afhob_8_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_0 = io_wdata_afhob_afhob_7_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_1 = io_wdata_afhob_afhob_7_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_2 = io_wdata_afhob_afhob_7_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_7_bits_3 = io_wdata_afhob_afhob_7_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_0 = io_wdata_afhob_afhob_6_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_1 = io_wdata_afhob_afhob_6_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_2 = io_wdata_afhob_afhob_6_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_6_bits_3 = io_wdata_afhob_afhob_6_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_0 = io_wdata_afhob_afhob_5_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_1 = io_wdata_afhob_afhob_5_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_2 = io_wdata_afhob_afhob_5_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_5_bits_3 = io_wdata_afhob_afhob_5_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_0 = io_wdata_afhob_afhob_4_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_1 = io_wdata_afhob_afhob_4_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_2 = io_wdata_afhob_afhob_4_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_4_bits_3 = io_wdata_afhob_afhob_4_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_0 = io_wdata_afhob_afhob_3_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_1 = io_wdata_afhob_afhob_3_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_2 = io_wdata_afhob_afhob_3_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_3_bits_3 = io_wdata_afhob_afhob_3_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_0 = io_wdata_afhob_afhob_2_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_1 = io_wdata_afhob_afhob_2_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_2 = io_wdata_afhob_afhob_2_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_2_bits_3 = io_wdata_afhob_afhob_2_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_0 = io_wdata_afhob_afhob_1_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_1 = io_wdata_afhob_afhob_1_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_2 = io_wdata_afhob_afhob_1_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_1_bits_3 = io_wdata_afhob_afhob_1_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_0 = io_wdata_afhob_afhob_0_bits_0; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_1 = io_wdata_afhob_afhob_0_bits_1; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_2 = io_wdata_afhob_afhob_0_bits_2; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_afhob_afhob_0_bits_3 = io_wdata_afhob_afhob_0_bits_3; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_lastBrNumOH = io_wdata_lastBrNumOH; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_histPtr_flag = io_wdata_histPtr_flag; // @[NewFtq.scala 64:{39,39}]
  assign sram_2_io_wreq_bits_data_0_histPtr_value = io_wdata_histPtr_value; // @[NewFtq.scala 64:{39,39}]
endmodule
