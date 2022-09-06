module SRAMTemplate_114(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [5:0]  io_rreq_bits_setIdx,
  output [4:0]  io_rresp_data_0_rasSp,
  output [38:0] io_rresp_data_0_rasEntry_retAddr,
  output [7:0]  io_rresp_data_0_rasEntry_ctr,
  output [7:0]  io_rresp_data_0_folded_hist_hist_36_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_35_folded_hist,
  output [12:0] io_rresp_data_0_folded_hist_hist_34_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_33_folded_hist,
  output [9:0]  io_rresp_data_0_folded_hist_hist_32_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_31_folded_hist,
  output [8:0]  io_rresp_data_0_folded_hist_hist_30_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_29_folded_hist,
  output [10:0] io_rresp_data_0_folded_hist_hist_28_folded_hist,
  output [5:0]  io_rresp_data_0_folded_hist_hist_27_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_26_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_25_folded_hist,
  output [5:0]  io_rresp_data_0_folded_hist_hist_24_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_23_folded_hist,
  output [11:0] io_rresp_data_0_folded_hist_hist_22_folded_hist,
  output [8:0]  io_rresp_data_0_folded_hist_hist_21_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_20_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_19_folded_hist,
  output [11:0] io_rresp_data_0_folded_hist_hist_18_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_17_folded_hist,
  output [9:0]  io_rresp_data_0_folded_hist_hist_16_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_15_folded_hist,
  output [8:0]  io_rresp_data_0_folded_hist_hist_14_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_13_folded_hist,
  output [8:0]  io_rresp_data_0_folded_hist_hist_12_folded_hist,
  output [9:0]  io_rresp_data_0_folded_hist_hist_11_folded_hist,
  output [4:0]  io_rresp_data_0_folded_hist_hist_10_folded_hist,
  output [8:0]  io_rresp_data_0_folded_hist_hist_9_folded_hist,
  output [8:0]  io_rresp_data_0_folded_hist_hist_8_folded_hist,
  output [3:0]  io_rresp_data_0_folded_hist_hist_7_folded_hist,
  output [4:0]  io_rresp_data_0_folded_hist_hist_6_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_5_folded_hist,
  output [5:0]  io_rresp_data_0_folded_hist_hist_4_folded_hist,
  output [5:0]  io_rresp_data_0_folded_hist_hist_3_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_2_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_1_folded_hist,
  output [12:0] io_rresp_data_0_folded_hist_hist_0_folded_hist,
  output        io_rresp_data_0_afhob_afhob_12_bits_0,
  output        io_rresp_data_0_afhob_afhob_12_bits_1,
  output        io_rresp_data_0_afhob_afhob_12_bits_2,
  output        io_rresp_data_0_afhob_afhob_11_bits_0,
  output        io_rresp_data_0_afhob_afhob_11_bits_1,
  output        io_rresp_data_0_afhob_afhob_11_bits_2,
  output        io_rresp_data_0_afhob_afhob_11_bits_3,
  output        io_rresp_data_0_afhob_afhob_10_bits_0,
  output        io_rresp_data_0_afhob_afhob_10_bits_1,
  output        io_rresp_data_0_afhob_afhob_10_bits_2,
  output        io_rresp_data_0_afhob_afhob_10_bits_3,
  output        io_rresp_data_0_afhob_afhob_9_bits_0,
  output        io_rresp_data_0_afhob_afhob_9_bits_1,
  output        io_rresp_data_0_afhob_afhob_9_bits_2,
  output        io_rresp_data_0_afhob_afhob_9_bits_3,
  output        io_rresp_data_0_afhob_afhob_8_bits_0,
  output        io_rresp_data_0_afhob_afhob_8_bits_1,
  output        io_rresp_data_0_afhob_afhob_8_bits_2,
  output        io_rresp_data_0_afhob_afhob_8_bits_3,
  output        io_rresp_data_0_afhob_afhob_7_bits_0,
  output        io_rresp_data_0_afhob_afhob_7_bits_1,
  output        io_rresp_data_0_afhob_afhob_7_bits_2,
  output        io_rresp_data_0_afhob_afhob_7_bits_3,
  output        io_rresp_data_0_afhob_afhob_6_bits_0,
  output        io_rresp_data_0_afhob_afhob_6_bits_1,
  output        io_rresp_data_0_afhob_afhob_6_bits_2,
  output        io_rresp_data_0_afhob_afhob_6_bits_3,
  output        io_rresp_data_0_afhob_afhob_5_bits_0,
  output        io_rresp_data_0_afhob_afhob_5_bits_1,
  output        io_rresp_data_0_afhob_afhob_5_bits_2,
  output        io_rresp_data_0_afhob_afhob_5_bits_3,
  output        io_rresp_data_0_afhob_afhob_4_bits_0,
  output        io_rresp_data_0_afhob_afhob_4_bits_1,
  output        io_rresp_data_0_afhob_afhob_4_bits_2,
  output        io_rresp_data_0_afhob_afhob_4_bits_3,
  output        io_rresp_data_0_afhob_afhob_3_bits_0,
  output        io_rresp_data_0_afhob_afhob_3_bits_1,
  output        io_rresp_data_0_afhob_afhob_3_bits_2,
  output        io_rresp_data_0_afhob_afhob_3_bits_3,
  output        io_rresp_data_0_afhob_afhob_2_bits_0,
  output        io_rresp_data_0_afhob_afhob_2_bits_1,
  output        io_rresp_data_0_afhob_afhob_2_bits_2,
  output        io_rresp_data_0_afhob_afhob_2_bits_3,
  output        io_rresp_data_0_afhob_afhob_1_bits_0,
  output        io_rresp_data_0_afhob_afhob_1_bits_1,
  output        io_rresp_data_0_afhob_afhob_1_bits_2,
  output        io_rresp_data_0_afhob_afhob_1_bits_3,
  output        io_rresp_data_0_afhob_afhob_0_bits_0,
  output        io_rresp_data_0_afhob_afhob_0_bits_1,
  output        io_rresp_data_0_afhob_afhob_0_bits_2,
  output        io_rresp_data_0_afhob_afhob_0_bits_3,
  output [2:0]  io_rresp_data_0_lastBrNumOH,
  output        io_rresp_data_0_histPtr_flag,
  output [8:0]  io_rresp_data_0_histPtr_value,
  input         io_wreq_valid,
  input  [5:0]  io_wreq_bits_setIdx,
  input  [4:0]  io_wreq_bits_data_0_rasSp,
  input  [38:0] io_wreq_bits_data_0_rasEntry_retAddr,
  input  [7:0]  io_wreq_bits_data_0_rasEntry_ctr,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_36_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_35_folded_hist,
  input  [12:0] io_wreq_bits_data_0_folded_hist_hist_34_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_33_folded_hist,
  input  [9:0]  io_wreq_bits_data_0_folded_hist_hist_32_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_31_folded_hist,
  input  [8:0]  io_wreq_bits_data_0_folded_hist_hist_30_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_29_folded_hist,
  input  [10:0] io_wreq_bits_data_0_folded_hist_hist_28_folded_hist,
  input  [5:0]  io_wreq_bits_data_0_folded_hist_hist_27_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_26_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_25_folded_hist,
  input  [5:0]  io_wreq_bits_data_0_folded_hist_hist_24_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_23_folded_hist,
  input  [11:0] io_wreq_bits_data_0_folded_hist_hist_22_folded_hist,
  input  [8:0]  io_wreq_bits_data_0_folded_hist_hist_21_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_20_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_19_folded_hist,
  input  [11:0] io_wreq_bits_data_0_folded_hist_hist_18_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_17_folded_hist,
  input  [9:0]  io_wreq_bits_data_0_folded_hist_hist_16_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_15_folded_hist,
  input  [8:0]  io_wreq_bits_data_0_folded_hist_hist_14_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_13_folded_hist,
  input  [8:0]  io_wreq_bits_data_0_folded_hist_hist_12_folded_hist,
  input  [9:0]  io_wreq_bits_data_0_folded_hist_hist_11_folded_hist,
  input  [4:0]  io_wreq_bits_data_0_folded_hist_hist_10_folded_hist,
  input  [8:0]  io_wreq_bits_data_0_folded_hist_hist_9_folded_hist,
  input  [8:0]  io_wreq_bits_data_0_folded_hist_hist_8_folded_hist,
  input  [3:0]  io_wreq_bits_data_0_folded_hist_hist_7_folded_hist,
  input  [4:0]  io_wreq_bits_data_0_folded_hist_hist_6_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_5_folded_hist,
  input  [5:0]  io_wreq_bits_data_0_folded_hist_hist_4_folded_hist,
  input  [5:0]  io_wreq_bits_data_0_folded_hist_hist_3_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_2_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_1_folded_hist,
  input  [12:0] io_wreq_bits_data_0_folded_hist_hist_0_folded_hist,
  input         io_wreq_bits_data_0_afhob_afhob_12_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_12_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_12_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_12_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_11_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_11_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_11_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_11_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_10_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_10_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_10_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_10_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_9_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_9_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_9_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_9_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_8_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_8_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_8_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_8_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_7_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_7_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_7_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_7_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_6_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_6_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_6_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_6_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_5_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_5_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_5_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_5_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_4_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_4_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_4_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_4_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_3_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_3_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_3_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_3_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_2_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_2_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_2_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_2_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_1_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_1_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_1_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_1_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_0_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_0_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_0_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_0_bits_3,
  input  [2:0]  io_wreq_bits_data_0_lastBrNumOH,
  input         io_wreq_bits_data_0_histPtr_flag,
  input  [8:0]  io_wreq_bits_data_0_histPtr_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [5:0] array_R0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_R0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_R0_clk; // @[SRAMTemplate.scala 102:26]
  wire [419:0] array_R0_data_0; // @[SRAMTemplate.scala 102:26]
  wire [5:0] array_W0_addr; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_en; // @[SRAMTemplate.scala 102:26]
  wire  array_W0_clk; // @[SRAMTemplate.scala 102:26]
  wire [419:0] array_W0_data_0; // @[SRAMTemplate.scala 102:26]
  wire [14:0] wdata_lo_lo_lo_lo = {io_wreq_bits_data_0_afhob_afhob_0_bits_1,io_wreq_bits_data_0_afhob_afhob_0_bits_0,
    io_wreq_bits_data_0_lastBrNumOH,io_wreq_bits_data_0_histPtr_flag,io_wreq_bits_data_0_histPtr_value}; // @[SRAMTemplate.scala 118:102]
  wire [20:0] wdata_lo_lo_lo = {io_wreq_bits_data_0_afhob_afhob_1_bits_3,io_wreq_bits_data_0_afhob_afhob_1_bits_2,
    io_wreq_bits_data_0_afhob_afhob_1_bits_1,io_wreq_bits_data_0_afhob_afhob_1_bits_0,
    io_wreq_bits_data_0_afhob_afhob_0_bits_3,io_wreq_bits_data_0_afhob_afhob_0_bits_2,wdata_lo_lo_lo_lo}; // @[SRAMTemplate.scala 118:102]
  wire [5:0] wdata_lo_lo_hi_lo = {io_wreq_bits_data_0_afhob_afhob_3_bits_1,io_wreq_bits_data_0_afhob_afhob_3_bits_0,
    io_wreq_bits_data_0_afhob_afhob_2_bits_3,io_wreq_bits_data_0_afhob_afhob_2_bits_2,
    io_wreq_bits_data_0_afhob_afhob_2_bits_1,io_wreq_bits_data_0_afhob_afhob_2_bits_0}; // @[SRAMTemplate.scala 118:102]
  wire [32:0] wdata_lo_lo = {io_wreq_bits_data_0_afhob_afhob_4_bits_3,io_wreq_bits_data_0_afhob_afhob_4_bits_2,
    io_wreq_bits_data_0_afhob_afhob_4_bits_1,io_wreq_bits_data_0_afhob_afhob_4_bits_0,
    io_wreq_bits_data_0_afhob_afhob_3_bits_3,io_wreq_bits_data_0_afhob_afhob_3_bits_2,wdata_lo_lo_hi_lo,wdata_lo_lo_lo
    }; // @[SRAMTemplate.scala 118:102]
  wire [5:0] wdata_lo_hi_lo_lo = {io_wreq_bits_data_0_afhob_afhob_6_bits_1,io_wreq_bits_data_0_afhob_afhob_6_bits_0,
    io_wreq_bits_data_0_afhob_afhob_5_bits_3,io_wreq_bits_data_0_afhob_afhob_5_bits_2,
    io_wreq_bits_data_0_afhob_afhob_5_bits_1,io_wreq_bits_data_0_afhob_afhob_5_bits_0}; // @[SRAMTemplate.scala 118:102]
  wire [11:0] wdata_lo_hi_lo = {io_wreq_bits_data_0_afhob_afhob_7_bits_3,io_wreq_bits_data_0_afhob_afhob_7_bits_2,
    io_wreq_bits_data_0_afhob_afhob_7_bits_1,io_wreq_bits_data_0_afhob_afhob_7_bits_0,
    io_wreq_bits_data_0_afhob_afhob_6_bits_3,io_wreq_bits_data_0_afhob_afhob_6_bits_2,wdata_lo_hi_lo_lo}; // @[SRAMTemplate.scala 118:102]
  wire [5:0] wdata_lo_hi_hi_lo = {io_wreq_bits_data_0_afhob_afhob_9_bits_1,io_wreq_bits_data_0_afhob_afhob_9_bits_0,
    io_wreq_bits_data_0_afhob_afhob_8_bits_3,io_wreq_bits_data_0_afhob_afhob_8_bits_2,
    io_wreq_bits_data_0_afhob_afhob_8_bits_1,io_wreq_bits_data_0_afhob_afhob_8_bits_0}; // @[SRAMTemplate.scala 118:102]
  wire [56:0] wdata_lo = {io_wreq_bits_data_0_afhob_afhob_10_bits_3,io_wreq_bits_data_0_afhob_afhob_10_bits_2,
    io_wreq_bits_data_0_afhob_afhob_10_bits_1,io_wreq_bits_data_0_afhob_afhob_10_bits_0,
    io_wreq_bits_data_0_afhob_afhob_9_bits_3,io_wreq_bits_data_0_afhob_afhob_9_bits_2,wdata_lo_hi_hi_lo,wdata_lo_hi_lo
    ,wdata_lo_lo}; // @[SRAMTemplate.scala 118:102]
  wire [5:0] wdata_hi_lo_lo_lo = {io_wreq_bits_data_0_afhob_afhob_12_bits_1,io_wreq_bits_data_0_afhob_afhob_12_bits_0,
    io_wreq_bits_data_0_afhob_afhob_11_bits_3,io_wreq_bits_data_0_afhob_afhob_11_bits_2,
    io_wreq_bits_data_0_afhob_afhob_11_bits_1,io_wreq_bits_data_0_afhob_afhob_11_bits_0}; // @[SRAMTemplate.scala 118:102]
  wire [42:0] wdata_hi_lo_lo = {io_wreq_bits_data_0_folded_hist_hist_3_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_2_folded_hist,io_wreq_bits_data_0_folded_hist_hist_1_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_0_folded_hist,io_wreq_bits_data_0_afhob_afhob_12_bits_3,
    io_wreq_bits_data_0_afhob_afhob_12_bits_2,wdata_hi_lo_lo_lo}; // @[SRAMTemplate.scala 118:102]
  wire [40:0] wdata_hi_lo_hi_lo = {io_wreq_bits_data_0_folded_hist_hist_9_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_8_folded_hist,io_wreq_bits_data_0_folded_hist_hist_7_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_6_folded_hist,io_wreq_bits_data_0_folded_hist_hist_5_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_4_folded_hist}; // @[SRAMTemplate.scala 118:102]
  wire [131:0] wdata_hi_lo = {io_wreq_bits_data_0_folded_hist_hist_15_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_14_folded_hist,io_wreq_bits_data_0_folded_hist_hist_13_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_12_folded_hist,io_wreq_bits_data_0_folded_hist_hist_11_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_10_folded_hist,wdata_hi_lo_hi_lo,wdata_hi_lo_lo}; // @[SRAMTemplate.scala 118:102]
  wire [51:0] wdata_hi_hi_lo_lo = {io_wreq_bits_data_0_folded_hist_hist_21_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_20_folded_hist,io_wreq_bits_data_0_folded_hist_hist_19_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_18_folded_hist,io_wreq_bits_data_0_folded_hist_hist_17_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_16_folded_hist}; // @[SRAMTemplate.scala 118:102]
  wire [97:0] wdata_hi_hi_lo = {io_wreq_bits_data_0_folded_hist_hist_27_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_26_folded_hist,io_wreq_bits_data_0_folded_hist_hist_25_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_24_folded_hist,io_wreq_bits_data_0_folded_hist_hist_23_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_22_folded_hist,wdata_hi_hi_lo_lo}; // @[SRAMTemplate.scala 118:102]
  wire [51:0] wdata_hi_hi_hi_lo = {io_wreq_bits_data_0_folded_hist_hist_33_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_32_folded_hist,io_wreq_bits_data_0_folded_hist_hist_31_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_30_folded_hist,io_wreq_bits_data_0_folded_hist_hist_29_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_28_folded_hist}; // @[SRAMTemplate.scala 118:102]
  wire [362:0] wdata_hi = {io_wreq_bits_data_0_rasSp,io_wreq_bits_data_0_rasEntry_retAddr,
    io_wreq_bits_data_0_rasEntry_ctr,io_wreq_bits_data_0_folded_hist_hist_36_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_35_folded_hist,io_wreq_bits_data_0_folded_hist_hist_34_folded_hist,
    wdata_hi_hi_hi_lo,wdata_hi_hi_lo,wdata_hi_lo}; // @[SRAMTemplate.scala 118:102]
  reg [63:0] bypass_wdata_lfsr; // @[LFSR64.scala 26:23]
  wire  bypass_wdata_xor = bypass_wdata_lfsr[0] ^ bypass_wdata_lfsr[1] ^ bypass_wdata_lfsr[3] ^ bypass_wdata_lfsr[4]; // @[LFSR64.scala 27:43]
  wire [63:0] _bypass_wdata_lfsr_T_2 = {bypass_wdata_xor,bypass_wdata_lfsr[63:1]}; // @[Cat.scala 31:58]
  reg  bypass_mask_need_check; // @[SRAMTemplate.scala 127:29]
  reg [5:0] bypass_mask_waddr_reg; // @[SRAMTemplate.scala 128:28]
  reg [5:0] bypass_mask_raddr_reg; // @[SRAMTemplate.scala 129:28]
  wire  bypass_mask_bypass = bypass_mask_need_check & bypass_mask_waddr_reg == bypass_mask_raddr_reg; // @[SRAMTemplate.scala 131:39]
  wire [419:0] bypass_wdata_0 = {{356'd0}, bypass_wdata_lfsr}; // @[SRAMTemplate.scala 135:{58,58}]
  wire [419:0] mem_rdata_0 = bypass_mask_bypass ? bypass_wdata_0 : array_R0_data_0; // @[SRAMTemplate.scala 140:30]
  array_18 array ( // @[SRAMTemplate.scala 102:26]
    .R0_addr(array_R0_addr),
    .R0_en(array_R0_en),
    .R0_clk(array_R0_clk),
    .R0_data_0(array_R0_data_0),
    .W0_addr(array_W0_addr),
    .W0_en(array_W0_en),
    .W0_clk(array_W0_clk),
    .W0_data_0(array_W0_data_0)
  );
  assign io_rresp_data_0_rasSp = mem_rdata_0[419:415]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_rasEntry_retAddr = mem_rdata_0[414:376]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_rasEntry_ctr = mem_rdata_0[375:368]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_36_folded_hist = mem_rdata_0[367:360]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_35_folded_hist = mem_rdata_0[359:352]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_34_folded_hist = mem_rdata_0[351:339]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_33_folded_hist = mem_rdata_0[338:332]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_32_folded_hist = mem_rdata_0[331:322]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_31_folded_hist = mem_rdata_0[321:315]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_30_folded_hist = mem_rdata_0[314:306]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_29_folded_hist = mem_rdata_0[305:298]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_28_folded_hist = mem_rdata_0[297:287]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_27_folded_hist = mem_rdata_0[286:281]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_26_folded_hist = mem_rdata_0[280:274]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_25_folded_hist = mem_rdata_0[273:267]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_24_folded_hist = mem_rdata_0[266:261]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_23_folded_hist = mem_rdata_0[260:253]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_22_folded_hist = mem_rdata_0[252:241]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_21_folded_hist = mem_rdata_0[240:232]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_20_folded_hist = mem_rdata_0[231:225]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_19_folded_hist = mem_rdata_0[224:218]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_18_folded_hist = mem_rdata_0[217:206]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_17_folded_hist = mem_rdata_0[205:199]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_16_folded_hist = mem_rdata_0[198:189]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_15_folded_hist = mem_rdata_0[188:181]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_14_folded_hist = mem_rdata_0[180:172]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_13_folded_hist = mem_rdata_0[171:165]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_12_folded_hist = mem_rdata_0[164:156]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_11_folded_hist = mem_rdata_0[155:146]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_10_folded_hist = mem_rdata_0[145:141]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_9_folded_hist = mem_rdata_0[140:132]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_8_folded_hist = mem_rdata_0[131:123]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_7_folded_hist = mem_rdata_0[122:119]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_6_folded_hist = mem_rdata_0[118:114]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_5_folded_hist = mem_rdata_0[113:106]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_4_folded_hist = mem_rdata_0[105:100]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_3_folded_hist = mem_rdata_0[99:94]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_2_folded_hist = mem_rdata_0[93:86]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_1_folded_hist = mem_rdata_0[85:78]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_folded_hist_hist_0_folded_hist = mem_rdata_0[77:65]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_12_bits_0 = mem_rdata_0[61]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_12_bits_1 = mem_rdata_0[62]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_12_bits_2 = mem_rdata_0[63]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_11_bits_0 = mem_rdata_0[57]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_11_bits_1 = mem_rdata_0[58]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_11_bits_2 = mem_rdata_0[59]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_11_bits_3 = mem_rdata_0[60]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_10_bits_0 = mem_rdata_0[53]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_10_bits_1 = mem_rdata_0[54]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_10_bits_2 = mem_rdata_0[55]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_10_bits_3 = mem_rdata_0[56]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_9_bits_0 = mem_rdata_0[49]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_9_bits_1 = mem_rdata_0[50]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_9_bits_2 = mem_rdata_0[51]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_9_bits_3 = mem_rdata_0[52]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_8_bits_0 = mem_rdata_0[45]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_8_bits_1 = mem_rdata_0[46]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_8_bits_2 = mem_rdata_0[47]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_8_bits_3 = mem_rdata_0[48]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_7_bits_0 = mem_rdata_0[41]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_7_bits_1 = mem_rdata_0[42]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_7_bits_2 = mem_rdata_0[43]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_7_bits_3 = mem_rdata_0[44]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_6_bits_0 = mem_rdata_0[37]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_6_bits_1 = mem_rdata_0[38]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_6_bits_2 = mem_rdata_0[39]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_6_bits_3 = mem_rdata_0[40]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_5_bits_0 = mem_rdata_0[33]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_5_bits_1 = mem_rdata_0[34]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_5_bits_2 = mem_rdata_0[35]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_5_bits_3 = mem_rdata_0[36]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_4_bits_0 = mem_rdata_0[29]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_4_bits_1 = mem_rdata_0[30]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_4_bits_2 = mem_rdata_0[31]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_4_bits_3 = mem_rdata_0[32]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_3_bits_0 = mem_rdata_0[25]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_3_bits_1 = mem_rdata_0[26]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_3_bits_2 = mem_rdata_0[27]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_3_bits_3 = mem_rdata_0[28]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_2_bits_0 = mem_rdata_0[21]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_2_bits_1 = mem_rdata_0[22]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_2_bits_2 = mem_rdata_0[23]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_2_bits_3 = mem_rdata_0[24]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_1_bits_0 = mem_rdata_0[17]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_1_bits_1 = mem_rdata_0[18]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_1_bits_2 = mem_rdata_0[19]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_1_bits_3 = mem_rdata_0[20]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_0_bits_0 = mem_rdata_0[13]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_0_bits_1 = mem_rdata_0[14]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_0_bits_2 = mem_rdata_0[15]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_afhob_afhob_0_bits_3 = mem_rdata_0[16]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_lastBrNumOH = mem_rdata_0[12:10]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_histPtr_flag = mem_rdata_0[9]; // @[SRAMTemplate.scala 146:45]
  assign io_rresp_data_0_histPtr_value = mem_rdata_0[8:0]; // @[SRAMTemplate.scala 146:45]
  assign array_R0_addr = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 122:29]
  assign array_R0_en = io_rreq_valid; // @[SRAMTemplate.scala 102:26 122:{29,29}]
  assign array_R0_clk = clock; // @[SRAMTemplate.scala 122:{29,29}]
  assign array_W0_addr = io_wreq_bits_setIdx; // @[SRAMTemplate.scala 120:14]
  assign array_W0_en = io_wreq_valid; // @[SRAMTemplate.scala 120:14 102:26]
  assign array_W0_clk = clock; // @[SRAMTemplate.scala 120:14]
  assign array_W0_data_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 118:102]
  always @(posedge clock) begin
    if (reset) begin // @[LFSR64.scala 26:23]
      bypass_wdata_lfsr <= 64'h1234567887654321; // @[LFSR64.scala 26:23]
    end else if (bypass_wdata_lfsr == 64'h0) begin // @[LFSR64.scala 29:18]
      bypass_wdata_lfsr <= 64'h1;
    end else begin
      bypass_wdata_lfsr <= _bypass_wdata_lfsr_T_2;
    end
    bypass_mask_need_check <= io_rreq_valid & io_wreq_valid; // @[SRAMTemplate.scala 127:34]
    bypass_mask_waddr_reg <= io_wreq_bits_setIdx; // @[SRAMTemplate.scala 128:28]
    bypass_mask_raddr_reg <= io_rreq_bits_setIdx; // @[SRAMTemplate.scala 129:28]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  bypass_wdata_lfsr = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  bypass_mask_need_check = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  bypass_mask_waddr_reg = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  bypass_mask_raddr_reg = _RAND_3[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
