module Ibuffer(
  input         clock,
  input         reset,
  input         io_flush,
  output        io_in_ready,
  input         io_in_valid,
  input  [31:0] io_in_bits_instrs_0,
  input  [31:0] io_in_bits_instrs_1,
  input  [31:0] io_in_bits_instrs_2,
  input  [31:0] io_in_bits_instrs_3,
  input  [31:0] io_in_bits_instrs_4,
  input  [31:0] io_in_bits_instrs_5,
  input  [31:0] io_in_bits_instrs_6,
  input  [31:0] io_in_bits_instrs_7,
  input  [7:0]  io_in_bits_valid,
  input  [7:0]  io_in_bits_enqEnable,
  input         io_in_bits_pd_0_isRVC,
  input  [1:0]  io_in_bits_pd_0_brType,
  input         io_in_bits_pd_0_isCall,
  input         io_in_bits_pd_0_isRet,
  input         io_in_bits_pd_1_isRVC,
  input  [1:0]  io_in_bits_pd_1_brType,
  input         io_in_bits_pd_1_isCall,
  input         io_in_bits_pd_1_isRet,
  input         io_in_bits_pd_2_isRVC,
  input  [1:0]  io_in_bits_pd_2_brType,
  input         io_in_bits_pd_2_isCall,
  input         io_in_bits_pd_2_isRet,
  input         io_in_bits_pd_3_isRVC,
  input  [1:0]  io_in_bits_pd_3_brType,
  input         io_in_bits_pd_3_isCall,
  input         io_in_bits_pd_3_isRet,
  input         io_in_bits_pd_4_isRVC,
  input  [1:0]  io_in_bits_pd_4_brType,
  input         io_in_bits_pd_4_isCall,
  input         io_in_bits_pd_4_isRet,
  input         io_in_bits_pd_5_isRVC,
  input  [1:0]  io_in_bits_pd_5_brType,
  input         io_in_bits_pd_5_isCall,
  input         io_in_bits_pd_5_isRet,
  input         io_in_bits_pd_6_isRVC,
  input  [1:0]  io_in_bits_pd_6_brType,
  input         io_in_bits_pd_6_isCall,
  input         io_in_bits_pd_6_isRet,
  input         io_in_bits_pd_7_isRVC,
  input  [1:0]  io_in_bits_pd_7_brType,
  input         io_in_bits_pd_7_isCall,
  input         io_in_bits_pd_7_isRet,
  input  [9:0]  io_in_bits_foldpc_0,
  input  [9:0]  io_in_bits_foldpc_1,
  input  [9:0]  io_in_bits_foldpc_2,
  input  [9:0]  io_in_bits_foldpc_3,
  input  [9:0]  io_in_bits_foldpc_4,
  input  [9:0]  io_in_bits_foldpc_5,
  input  [9:0]  io_in_bits_foldpc_6,
  input  [9:0]  io_in_bits_foldpc_7,
  input         io_in_bits_ftqPtr_flag,
  input  [5:0]  io_in_bits_ftqPtr_value,
  input         io_in_bits_ftqOffset_0_valid,
  input         io_in_bits_ftqOffset_1_valid,
  input         io_in_bits_ftqOffset_2_valid,
  input         io_in_bits_ftqOffset_3_valid,
  input         io_in_bits_ftqOffset_4_valid,
  input         io_in_bits_ftqOffset_5_valid,
  input         io_in_bits_ftqOffset_6_valid,
  input         io_in_bits_ftqOffset_7_valid,
  input         io_in_bits_ipf_0,
  input         io_in_bits_ipf_1,
  input         io_in_bits_ipf_2,
  input         io_in_bits_ipf_3,
  input         io_in_bits_ipf_4,
  input         io_in_bits_ipf_5,
  input         io_in_bits_ipf_6,
  input         io_in_bits_ipf_7,
  input         io_in_bits_acf_0,
  input         io_in_bits_acf_1,
  input         io_in_bits_acf_2,
  input         io_in_bits_acf_3,
  input         io_in_bits_acf_4,
  input         io_in_bits_acf_5,
  input         io_in_bits_acf_6,
  input         io_in_bits_acf_7,
  input         io_in_bits_crossPageIPFFix_0,
  input         io_in_bits_crossPageIPFFix_1,
  input         io_in_bits_crossPageIPFFix_2,
  input         io_in_bits_crossPageIPFFix_3,
  input         io_in_bits_crossPageIPFFix_4,
  input         io_in_bits_crossPageIPFFix_5,
  input         io_in_bits_crossPageIPFFix_6,
  input         io_in_bits_crossPageIPFFix_7,
  input         io_in_bits_triggered_0_frontendHit_0,
  input         io_in_bits_triggered_0_frontendHit_1,
  input         io_in_bits_triggered_0_frontendHit_2,
  input         io_in_bits_triggered_0_frontendHit_3,
  input         io_in_bits_triggered_0_backendEn_0,
  input         io_in_bits_triggered_0_backendEn_1,
  input         io_in_bits_triggered_1_frontendHit_0,
  input         io_in_bits_triggered_1_frontendHit_1,
  input         io_in_bits_triggered_1_frontendHit_2,
  input         io_in_bits_triggered_1_frontendHit_3,
  input         io_in_bits_triggered_1_backendEn_0,
  input         io_in_bits_triggered_1_backendEn_1,
  input         io_in_bits_triggered_2_frontendHit_0,
  input         io_in_bits_triggered_2_frontendHit_1,
  input         io_in_bits_triggered_2_frontendHit_2,
  input         io_in_bits_triggered_2_frontendHit_3,
  input         io_in_bits_triggered_2_backendEn_0,
  input         io_in_bits_triggered_2_backendEn_1,
  input         io_in_bits_triggered_3_frontendHit_0,
  input         io_in_bits_triggered_3_frontendHit_1,
  input         io_in_bits_triggered_3_frontendHit_2,
  input         io_in_bits_triggered_3_frontendHit_3,
  input         io_in_bits_triggered_3_backendEn_0,
  input         io_in_bits_triggered_3_backendEn_1,
  input         io_in_bits_triggered_4_frontendHit_0,
  input         io_in_bits_triggered_4_frontendHit_1,
  input         io_in_bits_triggered_4_frontendHit_2,
  input         io_in_bits_triggered_4_frontendHit_3,
  input         io_in_bits_triggered_4_backendEn_0,
  input         io_in_bits_triggered_4_backendEn_1,
  input         io_in_bits_triggered_5_frontendHit_0,
  input         io_in_bits_triggered_5_frontendHit_1,
  input         io_in_bits_triggered_5_frontendHit_2,
  input         io_in_bits_triggered_5_frontendHit_3,
  input         io_in_bits_triggered_5_backendEn_0,
  input         io_in_bits_triggered_5_backendEn_1,
  input         io_in_bits_triggered_6_frontendHit_0,
  input         io_in_bits_triggered_6_frontendHit_1,
  input         io_in_bits_triggered_6_frontendHit_2,
  input         io_in_bits_triggered_6_frontendHit_3,
  input         io_in_bits_triggered_6_backendEn_0,
  input         io_in_bits_triggered_6_backendEn_1,
  input         io_in_bits_triggered_7_frontendHit_0,
  input         io_in_bits_triggered_7_frontendHit_1,
  input         io_in_bits_triggered_7_frontendHit_2,
  input         io_in_bits_triggered_7_frontendHit_3,
  input         io_in_bits_triggered_7_backendEn_0,
  input         io_in_bits_triggered_7_backendEn_1,
  input         io_out_0_ready,
  output        io_out_0_valid,
  output [31:0] io_out_0_bits_instr,
  output [9:0]  io_out_0_bits_foldpc,
  output        io_out_0_bits_exceptionVec_1,
  output        io_out_0_bits_exceptionVec_12,
  output        io_out_0_bits_trigger_frontendHit_0,
  output        io_out_0_bits_trigger_frontendHit_1,
  output        io_out_0_bits_trigger_frontendHit_2,
  output        io_out_0_bits_trigger_frontendHit_3,
  output        io_out_0_bits_trigger_backendEn_0,
  output        io_out_0_bits_trigger_backendEn_1,
  output        io_out_0_bits_trigger_backendHit_0,
  output        io_out_0_bits_trigger_backendHit_1,
  output        io_out_0_bits_trigger_backendHit_2,
  output        io_out_0_bits_trigger_backendHit_3,
  output        io_out_0_bits_trigger_backendHit_4,
  output        io_out_0_bits_trigger_backendHit_5,
  output        io_out_0_bits_pd_isRVC,
  output [1:0]  io_out_0_bits_pd_brType,
  output        io_out_0_bits_pd_isCall,
  output        io_out_0_bits_pd_isRet,
  output        io_out_0_bits_pred_taken,
  output        io_out_0_bits_crossPageIPFFix,
  output        io_out_0_bits_ftqPtr_flag,
  output [5:0]  io_out_0_bits_ftqPtr_value,
  output [2:0]  io_out_0_bits_ftqOffset,
  input         io_out_1_ready,
  output        io_out_1_valid,
  output [31:0] io_out_1_bits_instr,
  output [9:0]  io_out_1_bits_foldpc,
  output        io_out_1_bits_exceptionVec_1,
  output        io_out_1_bits_exceptionVec_12,
  output        io_out_1_bits_trigger_frontendHit_0,
  output        io_out_1_bits_trigger_frontendHit_1,
  output        io_out_1_bits_trigger_frontendHit_2,
  output        io_out_1_bits_trigger_frontendHit_3,
  output        io_out_1_bits_trigger_backendEn_0,
  output        io_out_1_bits_trigger_backendEn_1,
  output        io_out_1_bits_trigger_backendHit_0,
  output        io_out_1_bits_trigger_backendHit_1,
  output        io_out_1_bits_trigger_backendHit_2,
  output        io_out_1_bits_trigger_backendHit_3,
  output        io_out_1_bits_trigger_backendHit_4,
  output        io_out_1_bits_trigger_backendHit_5,
  output        io_out_1_bits_pd_isRVC,
  output [1:0]  io_out_1_bits_pd_brType,
  output        io_out_1_bits_pd_isCall,
  output        io_out_1_bits_pd_isRet,
  output        io_out_1_bits_pred_taken,
  output        io_out_1_bits_crossPageIPFFix,
  output        io_out_1_bits_ftqPtr_flag,
  output [5:0]  io_out_1_bits_ftqPtr_value,
  output [2:0]  io_out_1_bits_ftqOffset,
  input         io_out_2_ready,
  output        io_out_2_valid,
  output [31:0] io_out_2_bits_instr,
  output [9:0]  io_out_2_bits_foldpc,
  output        io_out_2_bits_exceptionVec_1,
  output        io_out_2_bits_exceptionVec_12,
  output        io_out_2_bits_trigger_frontendHit_0,
  output        io_out_2_bits_trigger_frontendHit_1,
  output        io_out_2_bits_trigger_frontendHit_2,
  output        io_out_2_bits_trigger_frontendHit_3,
  output        io_out_2_bits_trigger_backendEn_0,
  output        io_out_2_bits_trigger_backendEn_1,
  output        io_out_2_bits_trigger_backendHit_0,
  output        io_out_2_bits_trigger_backendHit_1,
  output        io_out_2_bits_trigger_backendHit_2,
  output        io_out_2_bits_trigger_backendHit_3,
  output        io_out_2_bits_trigger_backendHit_4,
  output        io_out_2_bits_trigger_backendHit_5,
  output        io_out_2_bits_pd_isRVC,
  output [1:0]  io_out_2_bits_pd_brType,
  output        io_out_2_bits_pd_isCall,
  output        io_out_2_bits_pd_isRet,
  output        io_out_2_bits_pred_taken,
  output        io_out_2_bits_crossPageIPFFix,
  output        io_out_2_bits_ftqPtr_flag,
  output [5:0]  io_out_2_bits_ftqPtr_value,
  output [2:0]  io_out_2_bits_ftqOffset,
  input         io_out_3_ready,
  output        io_out_3_valid,
  output [31:0] io_out_3_bits_instr,
  output [9:0]  io_out_3_bits_foldpc,
  output        io_out_3_bits_exceptionVec_1,
  output        io_out_3_bits_exceptionVec_12,
  output        io_out_3_bits_trigger_frontendHit_0,
  output        io_out_3_bits_trigger_frontendHit_1,
  output        io_out_3_bits_trigger_frontendHit_2,
  output        io_out_3_bits_trigger_frontendHit_3,
  output        io_out_3_bits_trigger_backendEn_0,
  output        io_out_3_bits_trigger_backendEn_1,
  output        io_out_3_bits_trigger_backendHit_0,
  output        io_out_3_bits_trigger_backendHit_1,
  output        io_out_3_bits_trigger_backendHit_2,
  output        io_out_3_bits_trigger_backendHit_3,
  output        io_out_3_bits_trigger_backendHit_4,
  output        io_out_3_bits_trigger_backendHit_5,
  output        io_out_3_bits_pd_isRVC,
  output [1:0]  io_out_3_bits_pd_brType,
  output        io_out_3_bits_pd_isCall,
  output        io_out_3_bits_pd_isRet,
  output        io_out_3_bits_pred_taken,
  output        io_out_3_bits_crossPageIPFFix,
  output        io_out_3_bits_ftqPtr_flag,
  output [5:0]  io_out_3_bits_ftqPtr_value,
  output [2:0]  io_out_3_bits_ftqOffset,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
`endif // RANDOMIZE_REG_INIT
  wire  ibuf_clock; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_raddr_0; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_raddr_1; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_raddr_2; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_raddr_3; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_rdata_0_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_rdata_0_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_rdata_0_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_rdata_0_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_rdata_0_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_backendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_backendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_backendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_backendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_backendHit_4; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_0_triggered_backendHit_5; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_rdata_1_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_rdata_1_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_rdata_1_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_rdata_1_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_rdata_1_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_backendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_backendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_backendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_backendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_backendHit_4; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_1_triggered_backendHit_5; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_rdata_2_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_rdata_2_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_rdata_2_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_rdata_2_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_rdata_2_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_backendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_backendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_backendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_backendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_backendHit_4; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_2_triggered_backendHit_5; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_rdata_3_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_rdata_3_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_rdata_3_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_rdata_3_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_rdata_3_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_backendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_backendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_backendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_backendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_backendHit_4; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_rdata_3_triggered_backendHit_5; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wen_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wen_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wen_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wen_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wen_4; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wen_5; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wen_6; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wen_7; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_waddr_0; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_waddr_1; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_waddr_2; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_waddr_3; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_waddr_4; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_waddr_5; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_waddr_6; // @[Ibuffer.scala 60:20]
  wire [4:0] ibuf_io_waddr_7; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_wdata_0_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_wdata_0_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_wdata_0_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_wdata_0_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_wdata_0_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_0_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_wdata_1_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_wdata_1_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_wdata_1_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_wdata_1_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_wdata_1_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_1_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_wdata_2_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_wdata_2_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_wdata_2_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_wdata_2_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_wdata_2_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_2_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_wdata_3_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_wdata_3_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_wdata_3_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_wdata_3_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_wdata_3_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_3_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_wdata_4_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_wdata_4_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_wdata_4_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_wdata_4_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_wdata_4_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_4_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_wdata_5_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_wdata_5_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_wdata_5_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_wdata_5_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_wdata_5_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_5_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_wdata_6_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_wdata_6_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_wdata_6_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_wdata_6_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_wdata_6_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_6_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  wire [31:0] ibuf_io_wdata_7_inst; // @[Ibuffer.scala 60:20]
  wire [9:0] ibuf_io_wdata_7_foldpc; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_pd_isRVC; // @[Ibuffer.scala 60:20]
  wire [1:0] ibuf_io_wdata_7_pd_brType; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_pd_isCall; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_pd_isRet; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_pred_taken; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_ftqPtr_flag; // @[Ibuffer.scala 60:20]
  wire [5:0] ibuf_io_wdata_7_ftqPtr_value; // @[Ibuffer.scala 60:20]
  wire [2:0] ibuf_io_wdata_7_ftqOffset; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_ipf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_acf; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_crossPageIPFFix; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_triggered_frontendHit_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_triggered_frontendHit_1; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_triggered_frontendHit_2; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_triggered_frontendHit_3; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_triggered_backendEn_0; // @[Ibuffer.scala 60:20]
  wire  ibuf_io_wdata_7_triggered_backendEn_1; // @[Ibuffer.scala 60:20]
  reg  head_vec_0_flag; // @[Ibuffer.scala 62:25]
  reg [4:0] head_vec_0_value; // @[Ibuffer.scala 62:25]
  reg [4:0] head_vec_1_value; // @[Ibuffer.scala 62:25]
  reg [4:0] head_vec_2_value; // @[Ibuffer.scala 62:25]
  reg [4:0] head_vec_3_value; // @[Ibuffer.scala 62:25]
  reg  tail_vec_0_flag; // @[Ibuffer.scala 63:25]
  reg [4:0] tail_vec_0_value; // @[Ibuffer.scala 63:25]
  reg [4:0] tail_vec_1_value; // @[Ibuffer.scala 63:25]
  reg [4:0] tail_vec_2_value; // @[Ibuffer.scala 63:25]
  reg [4:0] tail_vec_3_value; // @[Ibuffer.scala 63:25]
  reg [4:0] tail_vec_4_value; // @[Ibuffer.scala 63:25]
  reg [4:0] tail_vec_5_value; // @[Ibuffer.scala 63:25]
  reg [4:0] tail_vec_6_value; // @[Ibuffer.scala 63:25]
  reg [4:0] tail_vec_7_value; // @[Ibuffer.scala 63:25]
  wire [4:0] _validEntries_T_2 = tail_vec_0_value - head_vec_0_value; // @[CircularQueuePtr.scala 80:21]
  wire [4:0] _validEntries_T_4 = 5'h18 + tail_vec_0_value; // @[CircularQueuePtr.scala 81:25]
  wire [4:0] _validEntries_T_6 = _validEntries_T_4 - head_vec_0_value; // @[CircularQueuePtr.scala 81:41]
  wire [4:0] validEntries = tail_vec_0_flag == head_vec_0_flag ? _validEntries_T_2 : _validEntries_T_6; // @[CircularQueuePtr.scala 79:8]
  reg  allowEnq; // @[Ibuffer.scala 68:25]
  wire  _numEnq_T = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _numEnq_T_9 = io_in_bits_valid[0] + io_in_bits_valid[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _numEnq_T_11 = io_in_bits_valid[2] + io_in_bits_valid[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _numEnq_T_13 = _numEnq_T_9 + _numEnq_T_11; // @[Bitwise.scala 48:55]
  wire [1:0] _numEnq_T_15 = io_in_bits_valid[4] + io_in_bits_valid[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _numEnq_T_17 = io_in_bits_valid[6] + io_in_bits_valid[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _numEnq_T_19 = _numEnq_T_15 + _numEnq_T_17; // @[Bitwise.scala 48:55]
  wire [3:0] _numEnq_T_21 = _numEnq_T_13 + _numEnq_T_19; // @[Bitwise.scala 48:55]
  wire [3:0] numEnq = _numEnq_T ? _numEnq_T_21 : 4'h0; // @[Ibuffer.scala 70:19]
  wire  _numTryDeq_T = validEntries >= 5'h4; // @[Ibuffer.scala 71:36]
  wire [4:0] numTryDeq = validEntries >= 5'h4 ? 5'h4 : validEntries; // @[Ibuffer.scala 71:22]
  wire  _numDeq_T = io_out_0_ready & io_out_0_valid; // @[Decoupled.scala 50:35]
  wire  _numDeq_T_1 = io_out_1_ready & io_out_1_valid; // @[Decoupled.scala 50:35]
  wire  _numDeq_T_2 = io_out_2_ready & io_out_2_valid; // @[Decoupled.scala 50:35]
  wire  _numDeq_T_3 = io_out_3_ready & io_out_3_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _numDeq_T_4 = _numDeq_T + _numDeq_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] _numDeq_T_6 = _numDeq_T_2 + _numDeq_T_3; // @[Bitwise.scala 48:55]
  wire [2:0] numDeq = _numDeq_T_4 + _numDeq_T_6; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_108 = {{1'd0}, numEnq}; // @[Ibuffer.scala 74:34]
  wire [5:0] numAfterEnq = validEntries + _GEN_108; // @[Ibuffer.scala 74:34]
  wire [5:0] _GEN_109 = {{1'd0}, numTryDeq}; // @[Ibuffer.scala 75:59]
  wire [5:0] _nextValidEntries_T_1 = numAfterEnq - _GEN_109; // @[Ibuffer.scala 75:59]
  wire [5:0] nextValidEntries = io_out_0_ready ? _nextValidEntries_T_1 : numAfterEnq; // @[Ibuffer.scala 75:29]
  wire [1:0] _offset_2_T_3 = io_in_bits_valid[0] + io_in_bits_valid[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_3_T_4 = io_in_bits_valid[1] + io_in_bits_valid[2]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_110 = {{1'd0}, io_in_bits_valid[0]}; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_3_T_6 = _GEN_110 + _offset_3_T_4; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_4_T_5 = io_in_bits_valid[0] + io_in_bits_valid[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_4_T_7 = io_in_bits_valid[2] + io_in_bits_valid[3]; // @[Bitwise.scala 48:55]
  wire [2:0] offset_4 = _offset_4_T_5 + _offset_4_T_7; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_5_T_6 = io_in_bits_valid[0] + io_in_bits_valid[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_5_T_8 = io_in_bits_valid[3] + io_in_bits_valid[4]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_111 = {{1'd0}, io_in_bits_valid[2]}; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_5_T_10 = _GEN_111 + _offset_5_T_8; // @[Bitwise.scala 48:55]
  wire [2:0] offset_5 = _offset_5_T_6 + _offset_5_T_10[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_6_T_7 = io_in_bits_valid[1] + io_in_bits_valid[2]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_112 = {{1'd0}, io_in_bits_valid[0]}; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_6_T_9 = _GEN_112 + _offset_6_T_7; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_6_T_11 = io_in_bits_valid[4] + io_in_bits_valid[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_113 = {{1'd0}, io_in_bits_valid[3]}; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_6_T_13 = _GEN_113 + _offset_6_T_11; // @[Bitwise.scala 48:55]
  wire [2:0] offset_6 = _offset_6_T_9[1:0] + _offset_6_T_13[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_7_T_8 = io_in_bits_valid[1] + io_in_bits_valid[2]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_114 = {{1'd0}, io_in_bits_valid[0]}; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_7_T_10 = _GEN_114 + _offset_7_T_8; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_7_T_12 = io_in_bits_valid[3] + io_in_bits_valid[4]; // @[Bitwise.scala 48:55]
  wire [1:0] _offset_7_T_14 = io_in_bits_valid[5] + io_in_bits_valid[6]; // @[Bitwise.scala 48:55]
  wire [2:0] _offset_7_T_16 = _offset_7_T_12 + _offset_7_T_14; // @[Bitwise.scala 48:55]
  wire [2:0] _GEN_115 = {{1'd0}, _offset_7_T_10[1:0]}; // @[Bitwise.scala 48:55]
  wire [3:0] _offset_7_T_18 = _GEN_115 + _offset_7_T_16; // @[Bitwise.scala 48:55]
  wire [2:0] offset_7 = _offset_7_T_18[2:0]; // @[Bitwise.scala 48:55]
  wire  _ibuf_io_wen_0_T_3 = ~io_flush; // @[Ibuffer.scala 109:66]
  wire [2:0] offset_1 = {{2'd0}, io_in_bits_valid[0]}; // @[Ibuffer.scala 81:20 86:17]
  wire [4:0] _GEN_9 = 3'h1 == offset_1 ? tail_vec_1_value : tail_vec_0_value; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_10 = 3'h2 == offset_1 ? tail_vec_2_value : _GEN_9; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_11 = 3'h3 == offset_1 ? tail_vec_3_value : _GEN_10; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_12 = 3'h4 == offset_1 ? tail_vec_4_value : _GEN_11; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_13 = 3'h5 == offset_1 ? tail_vec_5_value : _GEN_12; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_14 = 3'h6 == offset_1 ? tail_vec_6_value : _GEN_13; // @[Ibuffer.scala 107:{22,22}]
  wire [2:0] offset_2 = {{1'd0}, _offset_2_T_3}; // @[Ibuffer.scala 81:20 86:17]
  wire [4:0] _GEN_17 = 3'h1 == offset_2 ? tail_vec_1_value : tail_vec_0_value; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_18 = 3'h2 == offset_2 ? tail_vec_2_value : _GEN_17; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_19 = 3'h3 == offset_2 ? tail_vec_3_value : _GEN_18; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_20 = 3'h4 == offset_2 ? tail_vec_4_value : _GEN_19; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_21 = 3'h5 == offset_2 ? tail_vec_5_value : _GEN_20; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_22 = 3'h6 == offset_2 ? tail_vec_6_value : _GEN_21; // @[Ibuffer.scala 107:{22,22}]
  wire [2:0] offset_3 = {{1'd0}, _offset_3_T_6[1:0]}; // @[Ibuffer.scala 81:20 86:17]
  wire [4:0] _GEN_25 = 3'h1 == offset_3 ? tail_vec_1_value : tail_vec_0_value; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_26 = 3'h2 == offset_3 ? tail_vec_2_value : _GEN_25; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_27 = 3'h3 == offset_3 ? tail_vec_3_value : _GEN_26; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_28 = 3'h4 == offset_3 ? tail_vec_4_value : _GEN_27; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_29 = 3'h5 == offset_3 ? tail_vec_5_value : _GEN_28; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_30 = 3'h6 == offset_3 ? tail_vec_6_value : _GEN_29; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_33 = 3'h1 == offset_4 ? tail_vec_1_value : tail_vec_0_value; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_34 = 3'h2 == offset_4 ? tail_vec_2_value : _GEN_33; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_35 = 3'h3 == offset_4 ? tail_vec_3_value : _GEN_34; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_36 = 3'h4 == offset_4 ? tail_vec_4_value : _GEN_35; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_37 = 3'h5 == offset_4 ? tail_vec_5_value : _GEN_36; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_38 = 3'h6 == offset_4 ? tail_vec_6_value : _GEN_37; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_41 = 3'h1 == offset_5 ? tail_vec_1_value : tail_vec_0_value; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_42 = 3'h2 == offset_5 ? tail_vec_2_value : _GEN_41; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_43 = 3'h3 == offset_5 ? tail_vec_3_value : _GEN_42; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_44 = 3'h4 == offset_5 ? tail_vec_4_value : _GEN_43; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_45 = 3'h5 == offset_5 ? tail_vec_5_value : _GEN_44; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_46 = 3'h6 == offset_5 ? tail_vec_6_value : _GEN_45; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_49 = 3'h1 == offset_6 ? tail_vec_1_value : tail_vec_0_value; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_50 = 3'h2 == offset_6 ? tail_vec_2_value : _GEN_49; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_51 = 3'h3 == offset_6 ? tail_vec_3_value : _GEN_50; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_52 = 3'h4 == offset_6 ? tail_vec_4_value : _GEN_51; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_53 = 3'h5 == offset_6 ? tail_vec_5_value : _GEN_52; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_54 = 3'h6 == offset_6 ? tail_vec_6_value : _GEN_53; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_57 = 3'h1 == offset_7 ? tail_vec_1_value : tail_vec_0_value; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_58 = 3'h2 == offset_7 ? tail_vec_2_value : _GEN_57; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_59 = 3'h3 == offset_7 ? tail_vec_3_value : _GEN_58; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_60 = 3'h4 == offset_7 ? tail_vec_4_value : _GEN_59; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_61 = 3'h5 == offset_7 ? tail_vec_5_value : _GEN_60; // @[Ibuffer.scala 107:{22,22}]
  wire [4:0] _GEN_62 = 3'h6 == offset_7 ? tail_vec_6_value : _GEN_61; // @[Ibuffer.scala 107:{22,22}]
  wire [1:0] _T_11 = io_in_bits_enqEnable[0] + io_in_bits_enqEnable[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_13 = io_in_bits_enqEnable[2] + io_in_bits_enqEnable[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_15 = _T_11 + _T_13; // @[Bitwise.scala 48:55]
  wire [1:0] _T_17 = io_in_bits_enqEnable[4] + io_in_bits_enqEnable[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_19 = io_in_bits_enqEnable[6] + io_in_bits_enqEnable[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_21 = _T_17 + _T_19; // @[Bitwise.scala 48:55]
  wire [3:0] _T_23 = _T_15 + _T_21; // @[Bitwise.scala 48:55]
  wire [4:0] _GEN_116 = {{1'd0}, _T_23}; // @[CircularQueuePtr.scala 42:34]
  wire [5:0] new_value = tail_vec_0_value + _GEN_116; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _diff_T_1 = {1'h0,new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] diff = $signed(_diff_T_1) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  reverse_flag = $signed(diff) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _new_ptr_value_T = $signed(_diff_T_1) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _new_ptr_value_T_1 = reverse_flag ? _new_ptr_value_T : {{1'd0}, new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] new_value_1 = tail_vec_1_value + _GEN_116; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _diff_T_7 = {1'h0,new_value_1}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] diff_1 = $signed(_diff_T_7) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  reverse_flag_1 = $signed(diff_1) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _new_ptr_value_T_2 = $signed(_diff_T_7) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _new_ptr_value_T_3 = reverse_flag_1 ? _new_ptr_value_T_2 : {{1'd0}, new_value_1}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] new_value_2 = tail_vec_2_value + _GEN_116; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _diff_T_13 = {1'h0,new_value_2}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] diff_2 = $signed(_diff_T_13) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  reverse_flag_2 = $signed(diff_2) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _new_ptr_value_T_4 = $signed(_diff_T_13) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _new_ptr_value_T_5 = reverse_flag_2 ? _new_ptr_value_T_4 : {{1'd0}, new_value_2}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] new_value_3 = tail_vec_3_value + _GEN_116; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _diff_T_19 = {1'h0,new_value_3}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] diff_3 = $signed(_diff_T_19) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  reverse_flag_3 = $signed(diff_3) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _new_ptr_value_T_6 = $signed(_diff_T_19) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _new_ptr_value_T_7 = reverse_flag_3 ? _new_ptr_value_T_6 : {{1'd0}, new_value_3}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] new_value_4 = tail_vec_4_value + _GEN_116; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _diff_T_25 = {1'h0,new_value_4}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] diff_4 = $signed(_diff_T_25) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  reverse_flag_4 = $signed(diff_4) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _new_ptr_value_T_8 = $signed(_diff_T_25) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _new_ptr_value_T_9 = reverse_flag_4 ? _new_ptr_value_T_8 : {{1'd0}, new_value_4}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] new_value_5 = tail_vec_5_value + _GEN_116; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _diff_T_31 = {1'h0,new_value_5}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] diff_5 = $signed(_diff_T_31) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  reverse_flag_5 = $signed(diff_5) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _new_ptr_value_T_10 = $signed(_diff_T_31) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _new_ptr_value_T_11 = reverse_flag_5 ? _new_ptr_value_T_10 : {{1'd0}, new_value_5}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] new_value_6 = tail_vec_6_value + _GEN_116; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _diff_T_37 = {1'h0,new_value_6}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] diff_6 = $signed(_diff_T_37) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  reverse_flag_6 = $signed(diff_6) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _new_ptr_value_T_12 = $signed(_diff_T_37) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _new_ptr_value_T_13 = reverse_flag_6 ? _new_ptr_value_T_12 : {{1'd0}, new_value_6}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] new_value_7 = tail_vec_7_value + _GEN_116; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _diff_T_43 = {1'h0,new_value_7}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] diff_7 = $signed(_diff_T_43) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  reverse_flag_7 = $signed(diff_7) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _new_ptr_value_T_14 = $signed(_diff_T_43) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _new_ptr_value_T_15 = reverse_flag_7 ? _new_ptr_value_T_14 : {{1'd0}, new_value_7}; // @[CircularQueuePtr.scala 46:27]
  wire [4:0] new_ptr_value = _new_ptr_value_T_1[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] new_ptr_1_value = _new_ptr_value_T_3[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] new_ptr_2_value = _new_ptr_value_T_5[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] new_ptr_3_value = _new_ptr_value_T_7[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] new_ptr_4_value = _new_ptr_value_T_9[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] new_ptr_5_value = _new_ptr_value_T_11[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] new_ptr_6_value = _new_ptr_value_T_13[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] new_ptr_7_value = _new_ptr_value_T_15[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [31:0] _validVec_T_1 = 32'h1 << validEntries; // @[OneHot.scala 57:35]
  wire [3:0] _validVec_T_4 = _validVec_T_1[3:0] - 4'h1; // @[BitUtils.scala 142:75]
  wire [3:0] validVec = _numTryDeq_T ? 4'hf : _validVec_T_4; // @[Ibuffer.scala 117:21]
  wire [4:0] _GEN_124 = {{2'd0}, numDeq}; // @[CircularQueuePtr.scala 42:34]
  wire [5:0] next_head_vec_new_value = head_vec_0_value + _GEN_124; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _next_head_vec_diff_T_1 = {1'h0,next_head_vec_new_value}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] next_head_vec_diff = $signed(_next_head_vec_diff_T_1) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  next_head_vec_reverse_flag = $signed(next_head_vec_diff) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _next_head_vec_new_ptr_value_T = $signed(_next_head_vec_diff_T_1) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _next_head_vec_new_ptr_value_T_1 = next_head_vec_reverse_flag ? _next_head_vec_new_ptr_value_T : {{1'd0},
    next_head_vec_new_value}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] next_head_vec_new_value_1 = head_vec_1_value + _GEN_124; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _next_head_vec_diff_T_7 = {1'h0,next_head_vec_new_value_1}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] next_head_vec_diff_1 = $signed(_next_head_vec_diff_T_7) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  next_head_vec_reverse_flag_1 = $signed(next_head_vec_diff_1) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _next_head_vec_new_ptr_value_T_2 = $signed(_next_head_vec_diff_T_7) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _next_head_vec_new_ptr_value_T_3 = next_head_vec_reverse_flag_1 ? _next_head_vec_new_ptr_value_T_2 : {{1
    'd0}, next_head_vec_new_value_1}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] next_head_vec_new_value_2 = head_vec_2_value + _GEN_124; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _next_head_vec_diff_T_13 = {1'h0,next_head_vec_new_value_2}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] next_head_vec_diff_2 = $signed(_next_head_vec_diff_T_13) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  next_head_vec_reverse_flag_2 = $signed(next_head_vec_diff_2) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _next_head_vec_new_ptr_value_T_4 = $signed(_next_head_vec_diff_T_13) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _next_head_vec_new_ptr_value_T_5 = next_head_vec_reverse_flag_2 ? _next_head_vec_new_ptr_value_T_4 : {{1
    'd0}, next_head_vec_new_value_2}; // @[CircularQueuePtr.scala 46:27]
  wire [5:0] next_head_vec_new_value_3 = head_vec_3_value + _GEN_124; // @[CircularQueuePtr.scala 42:34]
  wire [6:0] _next_head_vec_diff_T_19 = {1'h0,next_head_vec_new_value_3}; // @[CircularQueuePtr.scala 43:49]
  wire [6:0] next_head_vec_diff_3 = $signed(_next_head_vec_diff_T_19) - 7'sh18; // @[CircularQueuePtr.scala 43:52]
  wire  next_head_vec_reverse_flag_3 = $signed(next_head_vec_diff_3) >= 7'sh0; // @[CircularQueuePtr.scala 44:31]
  wire [6:0] _next_head_vec_new_ptr_value_T_6 = $signed(_next_head_vec_diff_T_19) - 7'sh18; // @[CircularQueuePtr.scala 47:20]
  wire [6:0] _next_head_vec_new_ptr_value_T_7 = next_head_vec_reverse_flag_3 ? _next_head_vec_new_ptr_value_T_6 : {{1
    'd0}, next_head_vec_new_value_3}; // @[CircularQueuePtr.scala 46:27]
  wire  _GEN_80 = io_flush | 6'h10 >= nextValidEntries; // @[Ibuffer.scala 147:19 148:14 76:12]
  wire [4:0] next_head_vec_new_ptr_value = _next_head_vec_new_ptr_value_T_1[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] next_head_vec_new_ptr_1_value = _next_head_vec_new_ptr_value_T_3[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] next_head_vec_new_ptr_2_value = _next_head_vec_new_ptr_value_T_5[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  wire [4:0] next_head_vec_new_ptr_3_value = _next_head_vec_new_ptr_value_T_7[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  reg  afterInit; // @[Ibuffer.scala 177:26]
  reg  headBubble; // @[Ibuffer.scala 178:27]
  wire  _GEN_105 = _numEnq_T | afterInit; // @[Ibuffer.scala 179:21 177:26 179:33]
  wire  _GEN_106 = validEntries != 5'h0 ? 1'h0 : headBubble; // @[Ibuffer.scala 182:37 183:16 178:27]
  wire  _GEN_107 = io_flush | _GEN_106; // @[Ibuffer.scala 180:19 181:16]
  wire  _T_205 = io_out_0_ready & ~io_out_0_valid; // @[Ibuffer.scala 199:83]
  wire  _T_207 = io_out_1_ready & ~io_out_1_valid; // @[Ibuffer.scala 199:83]
  wire  _T_209 = io_out_2_ready & ~io_out_2_valid; // @[Ibuffer.scala 199:83]
  wire  _T_211 = io_out_3_ready & ~io_out_3_valid; // @[Ibuffer.scala 199:83]
  wire [1:0] _T_212 = _T_205 + _T_207; // @[Bitwise.scala 48:55]
  wire [1:0] _T_214 = _T_209 + _T_211; // @[Bitwise.scala 48:55]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [2:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [2:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  SyncDataModuleTemplate ibuf ( // @[Ibuffer.scala 60:20]
    .clock(ibuf_clock),
    .io_raddr_0(ibuf_io_raddr_0),
    .io_raddr_1(ibuf_io_raddr_1),
    .io_raddr_2(ibuf_io_raddr_2),
    .io_raddr_3(ibuf_io_raddr_3),
    .io_rdata_0_inst(ibuf_io_rdata_0_inst),
    .io_rdata_0_foldpc(ibuf_io_rdata_0_foldpc),
    .io_rdata_0_pd_isRVC(ibuf_io_rdata_0_pd_isRVC),
    .io_rdata_0_pd_brType(ibuf_io_rdata_0_pd_brType),
    .io_rdata_0_pd_isCall(ibuf_io_rdata_0_pd_isCall),
    .io_rdata_0_pd_isRet(ibuf_io_rdata_0_pd_isRet),
    .io_rdata_0_pred_taken(ibuf_io_rdata_0_pred_taken),
    .io_rdata_0_ftqPtr_flag(ibuf_io_rdata_0_ftqPtr_flag),
    .io_rdata_0_ftqPtr_value(ibuf_io_rdata_0_ftqPtr_value),
    .io_rdata_0_ftqOffset(ibuf_io_rdata_0_ftqOffset),
    .io_rdata_0_ipf(ibuf_io_rdata_0_ipf),
    .io_rdata_0_acf(ibuf_io_rdata_0_acf),
    .io_rdata_0_crossPageIPFFix(ibuf_io_rdata_0_crossPageIPFFix),
    .io_rdata_0_triggered_frontendHit_0(ibuf_io_rdata_0_triggered_frontendHit_0),
    .io_rdata_0_triggered_frontendHit_1(ibuf_io_rdata_0_triggered_frontendHit_1),
    .io_rdata_0_triggered_frontendHit_2(ibuf_io_rdata_0_triggered_frontendHit_2),
    .io_rdata_0_triggered_frontendHit_3(ibuf_io_rdata_0_triggered_frontendHit_3),
    .io_rdata_0_triggered_backendEn_0(ibuf_io_rdata_0_triggered_backendEn_0),
    .io_rdata_0_triggered_backendEn_1(ibuf_io_rdata_0_triggered_backendEn_1),
    .io_rdata_0_triggered_backendHit_0(ibuf_io_rdata_0_triggered_backendHit_0),
    .io_rdata_0_triggered_backendHit_1(ibuf_io_rdata_0_triggered_backendHit_1),
    .io_rdata_0_triggered_backendHit_2(ibuf_io_rdata_0_triggered_backendHit_2),
    .io_rdata_0_triggered_backendHit_3(ibuf_io_rdata_0_triggered_backendHit_3),
    .io_rdata_0_triggered_backendHit_4(ibuf_io_rdata_0_triggered_backendHit_4),
    .io_rdata_0_triggered_backendHit_5(ibuf_io_rdata_0_triggered_backendHit_5),
    .io_rdata_1_inst(ibuf_io_rdata_1_inst),
    .io_rdata_1_foldpc(ibuf_io_rdata_1_foldpc),
    .io_rdata_1_pd_isRVC(ibuf_io_rdata_1_pd_isRVC),
    .io_rdata_1_pd_brType(ibuf_io_rdata_1_pd_brType),
    .io_rdata_1_pd_isCall(ibuf_io_rdata_1_pd_isCall),
    .io_rdata_1_pd_isRet(ibuf_io_rdata_1_pd_isRet),
    .io_rdata_1_pred_taken(ibuf_io_rdata_1_pred_taken),
    .io_rdata_1_ftqPtr_flag(ibuf_io_rdata_1_ftqPtr_flag),
    .io_rdata_1_ftqPtr_value(ibuf_io_rdata_1_ftqPtr_value),
    .io_rdata_1_ftqOffset(ibuf_io_rdata_1_ftqOffset),
    .io_rdata_1_ipf(ibuf_io_rdata_1_ipf),
    .io_rdata_1_acf(ibuf_io_rdata_1_acf),
    .io_rdata_1_crossPageIPFFix(ibuf_io_rdata_1_crossPageIPFFix),
    .io_rdata_1_triggered_frontendHit_0(ibuf_io_rdata_1_triggered_frontendHit_0),
    .io_rdata_1_triggered_frontendHit_1(ibuf_io_rdata_1_triggered_frontendHit_1),
    .io_rdata_1_triggered_frontendHit_2(ibuf_io_rdata_1_triggered_frontendHit_2),
    .io_rdata_1_triggered_frontendHit_3(ibuf_io_rdata_1_triggered_frontendHit_3),
    .io_rdata_1_triggered_backendEn_0(ibuf_io_rdata_1_triggered_backendEn_0),
    .io_rdata_1_triggered_backendEn_1(ibuf_io_rdata_1_triggered_backendEn_1),
    .io_rdata_1_triggered_backendHit_0(ibuf_io_rdata_1_triggered_backendHit_0),
    .io_rdata_1_triggered_backendHit_1(ibuf_io_rdata_1_triggered_backendHit_1),
    .io_rdata_1_triggered_backendHit_2(ibuf_io_rdata_1_triggered_backendHit_2),
    .io_rdata_1_triggered_backendHit_3(ibuf_io_rdata_1_triggered_backendHit_3),
    .io_rdata_1_triggered_backendHit_4(ibuf_io_rdata_1_triggered_backendHit_4),
    .io_rdata_1_triggered_backendHit_5(ibuf_io_rdata_1_triggered_backendHit_5),
    .io_rdata_2_inst(ibuf_io_rdata_2_inst),
    .io_rdata_2_foldpc(ibuf_io_rdata_2_foldpc),
    .io_rdata_2_pd_isRVC(ibuf_io_rdata_2_pd_isRVC),
    .io_rdata_2_pd_brType(ibuf_io_rdata_2_pd_brType),
    .io_rdata_2_pd_isCall(ibuf_io_rdata_2_pd_isCall),
    .io_rdata_2_pd_isRet(ibuf_io_rdata_2_pd_isRet),
    .io_rdata_2_pred_taken(ibuf_io_rdata_2_pred_taken),
    .io_rdata_2_ftqPtr_flag(ibuf_io_rdata_2_ftqPtr_flag),
    .io_rdata_2_ftqPtr_value(ibuf_io_rdata_2_ftqPtr_value),
    .io_rdata_2_ftqOffset(ibuf_io_rdata_2_ftqOffset),
    .io_rdata_2_ipf(ibuf_io_rdata_2_ipf),
    .io_rdata_2_acf(ibuf_io_rdata_2_acf),
    .io_rdata_2_crossPageIPFFix(ibuf_io_rdata_2_crossPageIPFFix),
    .io_rdata_2_triggered_frontendHit_0(ibuf_io_rdata_2_triggered_frontendHit_0),
    .io_rdata_2_triggered_frontendHit_1(ibuf_io_rdata_2_triggered_frontendHit_1),
    .io_rdata_2_triggered_frontendHit_2(ibuf_io_rdata_2_triggered_frontendHit_2),
    .io_rdata_2_triggered_frontendHit_3(ibuf_io_rdata_2_triggered_frontendHit_3),
    .io_rdata_2_triggered_backendEn_0(ibuf_io_rdata_2_triggered_backendEn_0),
    .io_rdata_2_triggered_backendEn_1(ibuf_io_rdata_2_triggered_backendEn_1),
    .io_rdata_2_triggered_backendHit_0(ibuf_io_rdata_2_triggered_backendHit_0),
    .io_rdata_2_triggered_backendHit_1(ibuf_io_rdata_2_triggered_backendHit_1),
    .io_rdata_2_triggered_backendHit_2(ibuf_io_rdata_2_triggered_backendHit_2),
    .io_rdata_2_triggered_backendHit_3(ibuf_io_rdata_2_triggered_backendHit_3),
    .io_rdata_2_triggered_backendHit_4(ibuf_io_rdata_2_triggered_backendHit_4),
    .io_rdata_2_triggered_backendHit_5(ibuf_io_rdata_2_triggered_backendHit_5),
    .io_rdata_3_inst(ibuf_io_rdata_3_inst),
    .io_rdata_3_foldpc(ibuf_io_rdata_3_foldpc),
    .io_rdata_3_pd_isRVC(ibuf_io_rdata_3_pd_isRVC),
    .io_rdata_3_pd_brType(ibuf_io_rdata_3_pd_brType),
    .io_rdata_3_pd_isCall(ibuf_io_rdata_3_pd_isCall),
    .io_rdata_3_pd_isRet(ibuf_io_rdata_3_pd_isRet),
    .io_rdata_3_pred_taken(ibuf_io_rdata_3_pred_taken),
    .io_rdata_3_ftqPtr_flag(ibuf_io_rdata_3_ftqPtr_flag),
    .io_rdata_3_ftqPtr_value(ibuf_io_rdata_3_ftqPtr_value),
    .io_rdata_3_ftqOffset(ibuf_io_rdata_3_ftqOffset),
    .io_rdata_3_ipf(ibuf_io_rdata_3_ipf),
    .io_rdata_3_acf(ibuf_io_rdata_3_acf),
    .io_rdata_3_crossPageIPFFix(ibuf_io_rdata_3_crossPageIPFFix),
    .io_rdata_3_triggered_frontendHit_0(ibuf_io_rdata_3_triggered_frontendHit_0),
    .io_rdata_3_triggered_frontendHit_1(ibuf_io_rdata_3_triggered_frontendHit_1),
    .io_rdata_3_triggered_frontendHit_2(ibuf_io_rdata_3_triggered_frontendHit_2),
    .io_rdata_3_triggered_frontendHit_3(ibuf_io_rdata_3_triggered_frontendHit_3),
    .io_rdata_3_triggered_backendEn_0(ibuf_io_rdata_3_triggered_backendEn_0),
    .io_rdata_3_triggered_backendEn_1(ibuf_io_rdata_3_triggered_backendEn_1),
    .io_rdata_3_triggered_backendHit_0(ibuf_io_rdata_3_triggered_backendHit_0),
    .io_rdata_3_triggered_backendHit_1(ibuf_io_rdata_3_triggered_backendHit_1),
    .io_rdata_3_triggered_backendHit_2(ibuf_io_rdata_3_triggered_backendHit_2),
    .io_rdata_3_triggered_backendHit_3(ibuf_io_rdata_3_triggered_backendHit_3),
    .io_rdata_3_triggered_backendHit_4(ibuf_io_rdata_3_triggered_backendHit_4),
    .io_rdata_3_triggered_backendHit_5(ibuf_io_rdata_3_triggered_backendHit_5),
    .io_wen_0(ibuf_io_wen_0),
    .io_wen_1(ibuf_io_wen_1),
    .io_wen_2(ibuf_io_wen_2),
    .io_wen_3(ibuf_io_wen_3),
    .io_wen_4(ibuf_io_wen_4),
    .io_wen_5(ibuf_io_wen_5),
    .io_wen_6(ibuf_io_wen_6),
    .io_wen_7(ibuf_io_wen_7),
    .io_waddr_0(ibuf_io_waddr_0),
    .io_waddr_1(ibuf_io_waddr_1),
    .io_waddr_2(ibuf_io_waddr_2),
    .io_waddr_3(ibuf_io_waddr_3),
    .io_waddr_4(ibuf_io_waddr_4),
    .io_waddr_5(ibuf_io_waddr_5),
    .io_waddr_6(ibuf_io_waddr_6),
    .io_waddr_7(ibuf_io_waddr_7),
    .io_wdata_0_inst(ibuf_io_wdata_0_inst),
    .io_wdata_0_foldpc(ibuf_io_wdata_0_foldpc),
    .io_wdata_0_pd_isRVC(ibuf_io_wdata_0_pd_isRVC),
    .io_wdata_0_pd_brType(ibuf_io_wdata_0_pd_brType),
    .io_wdata_0_pd_isCall(ibuf_io_wdata_0_pd_isCall),
    .io_wdata_0_pd_isRet(ibuf_io_wdata_0_pd_isRet),
    .io_wdata_0_pred_taken(ibuf_io_wdata_0_pred_taken),
    .io_wdata_0_ftqPtr_flag(ibuf_io_wdata_0_ftqPtr_flag),
    .io_wdata_0_ftqPtr_value(ibuf_io_wdata_0_ftqPtr_value),
    .io_wdata_0_ftqOffset(ibuf_io_wdata_0_ftqOffset),
    .io_wdata_0_ipf(ibuf_io_wdata_0_ipf),
    .io_wdata_0_acf(ibuf_io_wdata_0_acf),
    .io_wdata_0_crossPageIPFFix(ibuf_io_wdata_0_crossPageIPFFix),
    .io_wdata_0_triggered_frontendHit_0(ibuf_io_wdata_0_triggered_frontendHit_0),
    .io_wdata_0_triggered_frontendHit_1(ibuf_io_wdata_0_triggered_frontendHit_1),
    .io_wdata_0_triggered_frontendHit_2(ibuf_io_wdata_0_triggered_frontendHit_2),
    .io_wdata_0_triggered_frontendHit_3(ibuf_io_wdata_0_triggered_frontendHit_3),
    .io_wdata_0_triggered_backendEn_0(ibuf_io_wdata_0_triggered_backendEn_0),
    .io_wdata_0_triggered_backendEn_1(ibuf_io_wdata_0_triggered_backendEn_1),
    .io_wdata_1_inst(ibuf_io_wdata_1_inst),
    .io_wdata_1_foldpc(ibuf_io_wdata_1_foldpc),
    .io_wdata_1_pd_isRVC(ibuf_io_wdata_1_pd_isRVC),
    .io_wdata_1_pd_brType(ibuf_io_wdata_1_pd_brType),
    .io_wdata_1_pd_isCall(ibuf_io_wdata_1_pd_isCall),
    .io_wdata_1_pd_isRet(ibuf_io_wdata_1_pd_isRet),
    .io_wdata_1_pred_taken(ibuf_io_wdata_1_pred_taken),
    .io_wdata_1_ftqPtr_flag(ibuf_io_wdata_1_ftqPtr_flag),
    .io_wdata_1_ftqPtr_value(ibuf_io_wdata_1_ftqPtr_value),
    .io_wdata_1_ftqOffset(ibuf_io_wdata_1_ftqOffset),
    .io_wdata_1_ipf(ibuf_io_wdata_1_ipf),
    .io_wdata_1_acf(ibuf_io_wdata_1_acf),
    .io_wdata_1_crossPageIPFFix(ibuf_io_wdata_1_crossPageIPFFix),
    .io_wdata_1_triggered_frontendHit_0(ibuf_io_wdata_1_triggered_frontendHit_0),
    .io_wdata_1_triggered_frontendHit_1(ibuf_io_wdata_1_triggered_frontendHit_1),
    .io_wdata_1_triggered_frontendHit_2(ibuf_io_wdata_1_triggered_frontendHit_2),
    .io_wdata_1_triggered_frontendHit_3(ibuf_io_wdata_1_triggered_frontendHit_3),
    .io_wdata_1_triggered_backendEn_0(ibuf_io_wdata_1_triggered_backendEn_0),
    .io_wdata_1_triggered_backendEn_1(ibuf_io_wdata_1_triggered_backendEn_1),
    .io_wdata_2_inst(ibuf_io_wdata_2_inst),
    .io_wdata_2_foldpc(ibuf_io_wdata_2_foldpc),
    .io_wdata_2_pd_isRVC(ibuf_io_wdata_2_pd_isRVC),
    .io_wdata_2_pd_brType(ibuf_io_wdata_2_pd_brType),
    .io_wdata_2_pd_isCall(ibuf_io_wdata_2_pd_isCall),
    .io_wdata_2_pd_isRet(ibuf_io_wdata_2_pd_isRet),
    .io_wdata_2_pred_taken(ibuf_io_wdata_2_pred_taken),
    .io_wdata_2_ftqPtr_flag(ibuf_io_wdata_2_ftqPtr_flag),
    .io_wdata_2_ftqPtr_value(ibuf_io_wdata_2_ftqPtr_value),
    .io_wdata_2_ftqOffset(ibuf_io_wdata_2_ftqOffset),
    .io_wdata_2_ipf(ibuf_io_wdata_2_ipf),
    .io_wdata_2_acf(ibuf_io_wdata_2_acf),
    .io_wdata_2_crossPageIPFFix(ibuf_io_wdata_2_crossPageIPFFix),
    .io_wdata_2_triggered_frontendHit_0(ibuf_io_wdata_2_triggered_frontendHit_0),
    .io_wdata_2_triggered_frontendHit_1(ibuf_io_wdata_2_triggered_frontendHit_1),
    .io_wdata_2_triggered_frontendHit_2(ibuf_io_wdata_2_triggered_frontendHit_2),
    .io_wdata_2_triggered_frontendHit_3(ibuf_io_wdata_2_triggered_frontendHit_3),
    .io_wdata_2_triggered_backendEn_0(ibuf_io_wdata_2_triggered_backendEn_0),
    .io_wdata_2_triggered_backendEn_1(ibuf_io_wdata_2_triggered_backendEn_1),
    .io_wdata_3_inst(ibuf_io_wdata_3_inst),
    .io_wdata_3_foldpc(ibuf_io_wdata_3_foldpc),
    .io_wdata_3_pd_isRVC(ibuf_io_wdata_3_pd_isRVC),
    .io_wdata_3_pd_brType(ibuf_io_wdata_3_pd_brType),
    .io_wdata_3_pd_isCall(ibuf_io_wdata_3_pd_isCall),
    .io_wdata_3_pd_isRet(ibuf_io_wdata_3_pd_isRet),
    .io_wdata_3_pred_taken(ibuf_io_wdata_3_pred_taken),
    .io_wdata_3_ftqPtr_flag(ibuf_io_wdata_3_ftqPtr_flag),
    .io_wdata_3_ftqPtr_value(ibuf_io_wdata_3_ftqPtr_value),
    .io_wdata_3_ftqOffset(ibuf_io_wdata_3_ftqOffset),
    .io_wdata_3_ipf(ibuf_io_wdata_3_ipf),
    .io_wdata_3_acf(ibuf_io_wdata_3_acf),
    .io_wdata_3_crossPageIPFFix(ibuf_io_wdata_3_crossPageIPFFix),
    .io_wdata_3_triggered_frontendHit_0(ibuf_io_wdata_3_triggered_frontendHit_0),
    .io_wdata_3_triggered_frontendHit_1(ibuf_io_wdata_3_triggered_frontendHit_1),
    .io_wdata_3_triggered_frontendHit_2(ibuf_io_wdata_3_triggered_frontendHit_2),
    .io_wdata_3_triggered_frontendHit_3(ibuf_io_wdata_3_triggered_frontendHit_3),
    .io_wdata_3_triggered_backendEn_0(ibuf_io_wdata_3_triggered_backendEn_0),
    .io_wdata_3_triggered_backendEn_1(ibuf_io_wdata_3_triggered_backendEn_1),
    .io_wdata_4_inst(ibuf_io_wdata_4_inst),
    .io_wdata_4_foldpc(ibuf_io_wdata_4_foldpc),
    .io_wdata_4_pd_isRVC(ibuf_io_wdata_4_pd_isRVC),
    .io_wdata_4_pd_brType(ibuf_io_wdata_4_pd_brType),
    .io_wdata_4_pd_isCall(ibuf_io_wdata_4_pd_isCall),
    .io_wdata_4_pd_isRet(ibuf_io_wdata_4_pd_isRet),
    .io_wdata_4_pred_taken(ibuf_io_wdata_4_pred_taken),
    .io_wdata_4_ftqPtr_flag(ibuf_io_wdata_4_ftqPtr_flag),
    .io_wdata_4_ftqPtr_value(ibuf_io_wdata_4_ftqPtr_value),
    .io_wdata_4_ftqOffset(ibuf_io_wdata_4_ftqOffset),
    .io_wdata_4_ipf(ibuf_io_wdata_4_ipf),
    .io_wdata_4_acf(ibuf_io_wdata_4_acf),
    .io_wdata_4_crossPageIPFFix(ibuf_io_wdata_4_crossPageIPFFix),
    .io_wdata_4_triggered_frontendHit_0(ibuf_io_wdata_4_triggered_frontendHit_0),
    .io_wdata_4_triggered_frontendHit_1(ibuf_io_wdata_4_triggered_frontendHit_1),
    .io_wdata_4_triggered_frontendHit_2(ibuf_io_wdata_4_triggered_frontendHit_2),
    .io_wdata_4_triggered_frontendHit_3(ibuf_io_wdata_4_triggered_frontendHit_3),
    .io_wdata_4_triggered_backendEn_0(ibuf_io_wdata_4_triggered_backendEn_0),
    .io_wdata_4_triggered_backendEn_1(ibuf_io_wdata_4_triggered_backendEn_1),
    .io_wdata_5_inst(ibuf_io_wdata_5_inst),
    .io_wdata_5_foldpc(ibuf_io_wdata_5_foldpc),
    .io_wdata_5_pd_isRVC(ibuf_io_wdata_5_pd_isRVC),
    .io_wdata_5_pd_brType(ibuf_io_wdata_5_pd_brType),
    .io_wdata_5_pd_isCall(ibuf_io_wdata_5_pd_isCall),
    .io_wdata_5_pd_isRet(ibuf_io_wdata_5_pd_isRet),
    .io_wdata_5_pred_taken(ibuf_io_wdata_5_pred_taken),
    .io_wdata_5_ftqPtr_flag(ibuf_io_wdata_5_ftqPtr_flag),
    .io_wdata_5_ftqPtr_value(ibuf_io_wdata_5_ftqPtr_value),
    .io_wdata_5_ftqOffset(ibuf_io_wdata_5_ftqOffset),
    .io_wdata_5_ipf(ibuf_io_wdata_5_ipf),
    .io_wdata_5_acf(ibuf_io_wdata_5_acf),
    .io_wdata_5_crossPageIPFFix(ibuf_io_wdata_5_crossPageIPFFix),
    .io_wdata_5_triggered_frontendHit_0(ibuf_io_wdata_5_triggered_frontendHit_0),
    .io_wdata_5_triggered_frontendHit_1(ibuf_io_wdata_5_triggered_frontendHit_1),
    .io_wdata_5_triggered_frontendHit_2(ibuf_io_wdata_5_triggered_frontendHit_2),
    .io_wdata_5_triggered_frontendHit_3(ibuf_io_wdata_5_triggered_frontendHit_3),
    .io_wdata_5_triggered_backendEn_0(ibuf_io_wdata_5_triggered_backendEn_0),
    .io_wdata_5_triggered_backendEn_1(ibuf_io_wdata_5_triggered_backendEn_1),
    .io_wdata_6_inst(ibuf_io_wdata_6_inst),
    .io_wdata_6_foldpc(ibuf_io_wdata_6_foldpc),
    .io_wdata_6_pd_isRVC(ibuf_io_wdata_6_pd_isRVC),
    .io_wdata_6_pd_brType(ibuf_io_wdata_6_pd_brType),
    .io_wdata_6_pd_isCall(ibuf_io_wdata_6_pd_isCall),
    .io_wdata_6_pd_isRet(ibuf_io_wdata_6_pd_isRet),
    .io_wdata_6_pred_taken(ibuf_io_wdata_6_pred_taken),
    .io_wdata_6_ftqPtr_flag(ibuf_io_wdata_6_ftqPtr_flag),
    .io_wdata_6_ftqPtr_value(ibuf_io_wdata_6_ftqPtr_value),
    .io_wdata_6_ftqOffset(ibuf_io_wdata_6_ftqOffset),
    .io_wdata_6_ipf(ibuf_io_wdata_6_ipf),
    .io_wdata_6_acf(ibuf_io_wdata_6_acf),
    .io_wdata_6_crossPageIPFFix(ibuf_io_wdata_6_crossPageIPFFix),
    .io_wdata_6_triggered_frontendHit_0(ibuf_io_wdata_6_triggered_frontendHit_0),
    .io_wdata_6_triggered_frontendHit_1(ibuf_io_wdata_6_triggered_frontendHit_1),
    .io_wdata_6_triggered_frontendHit_2(ibuf_io_wdata_6_triggered_frontendHit_2),
    .io_wdata_6_triggered_frontendHit_3(ibuf_io_wdata_6_triggered_frontendHit_3),
    .io_wdata_6_triggered_backendEn_0(ibuf_io_wdata_6_triggered_backendEn_0),
    .io_wdata_6_triggered_backendEn_1(ibuf_io_wdata_6_triggered_backendEn_1),
    .io_wdata_7_inst(ibuf_io_wdata_7_inst),
    .io_wdata_7_foldpc(ibuf_io_wdata_7_foldpc),
    .io_wdata_7_pd_isRVC(ibuf_io_wdata_7_pd_isRVC),
    .io_wdata_7_pd_brType(ibuf_io_wdata_7_pd_brType),
    .io_wdata_7_pd_isCall(ibuf_io_wdata_7_pd_isCall),
    .io_wdata_7_pd_isRet(ibuf_io_wdata_7_pd_isRet),
    .io_wdata_7_pred_taken(ibuf_io_wdata_7_pred_taken),
    .io_wdata_7_ftqPtr_flag(ibuf_io_wdata_7_ftqPtr_flag),
    .io_wdata_7_ftqPtr_value(ibuf_io_wdata_7_ftqPtr_value),
    .io_wdata_7_ftqOffset(ibuf_io_wdata_7_ftqOffset),
    .io_wdata_7_ipf(ibuf_io_wdata_7_ipf),
    .io_wdata_7_acf(ibuf_io_wdata_7_acf),
    .io_wdata_7_crossPageIPFFix(ibuf_io_wdata_7_crossPageIPFFix),
    .io_wdata_7_triggered_frontendHit_0(ibuf_io_wdata_7_triggered_frontendHit_0),
    .io_wdata_7_triggered_frontendHit_1(ibuf_io_wdata_7_triggered_frontendHit_1),
    .io_wdata_7_triggered_frontendHit_2(ibuf_io_wdata_7_triggered_frontendHit_2),
    .io_wdata_7_triggered_frontendHit_3(ibuf_io_wdata_7_triggered_frontendHit_3),
    .io_wdata_7_triggered_backendEn_0(ibuf_io_wdata_7_triggered_backendEn_0),
    .io_wdata_7_triggered_backendEn_1(ibuf_io_wdata_7_triggered_backendEn_1)
  );
  assign io_in_ready = allowEnq; // @[Ibuffer.scala 79:15]
  assign io_out_0_valid = validVec[0]; // @[Ibuffer.scala 119:32]
  assign io_out_0_bits_instr = ibuf_io_rdata_0_inst; // @[Ibuffer.scala 123:26]
  assign io_out_0_bits_foldpc = ibuf_io_rdata_0_foldpc; // @[Ibuffer.scala 133:27]
  assign io_out_0_bits_exceptionVec_1 = ibuf_io_rdata_0_acf; // @[Ibuffer.scala 127:51]
  assign io_out_0_bits_exceptionVec_12 = ibuf_io_rdata_0_ipf; // @[Ibuffer.scala 126:49]
  assign io_out_0_bits_trigger_frontendHit_0 = ibuf_io_rdata_0_triggered_frontendHit_0; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_frontendHit_1 = ibuf_io_rdata_0_triggered_frontendHit_1; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_frontendHit_2 = ibuf_io_rdata_0_triggered_frontendHit_2; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_frontendHit_3 = ibuf_io_rdata_0_triggered_frontendHit_3; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_backendEn_0 = ibuf_io_rdata_0_triggered_backendEn_0; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_backendEn_1 = ibuf_io_rdata_0_triggered_backendEn_1; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_backendHit_0 = ibuf_io_rdata_0_triggered_backendHit_0; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_backendHit_1 = ibuf_io_rdata_0_triggered_backendHit_1; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_backendHit_2 = ibuf_io_rdata_0_triggered_backendHit_2; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_backendHit_3 = ibuf_io_rdata_0_triggered_backendHit_3; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_backendHit_4 = ibuf_io_rdata_0_triggered_backendHit_4; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_trigger_backendHit_5 = ibuf_io_rdata_0_triggered_backendHit_5; // @[Ibuffer.scala 140:28]
  assign io_out_0_bits_pd_isRVC = ibuf_io_rdata_0_pd_isRVC; // @[Ibuffer.scala 128:23]
  assign io_out_0_bits_pd_brType = ibuf_io_rdata_0_pd_brType; // @[Ibuffer.scala 128:23]
  assign io_out_0_bits_pd_isCall = ibuf_io_rdata_0_pd_isCall; // @[Ibuffer.scala 128:23]
  assign io_out_0_bits_pd_isRet = ibuf_io_rdata_0_pd_isRet; // @[Ibuffer.scala 128:23]
  assign io_out_0_bits_pred_taken = ibuf_io_rdata_0_pred_taken; // @[Ibuffer.scala 129:31]
  assign io_out_0_bits_crossPageIPFFix = ibuf_io_rdata_0_crossPageIPFFix; // @[Ibuffer.scala 132:36]
  assign io_out_0_bits_ftqPtr_flag = ibuf_io_rdata_0_ftqPtr_flag; // @[Ibuffer.scala 130:27]
  assign io_out_0_bits_ftqPtr_value = ibuf_io_rdata_0_ftqPtr_value; // @[Ibuffer.scala 130:27]
  assign io_out_0_bits_ftqOffset = ibuf_io_rdata_0_ftqOffset; // @[Ibuffer.scala 131:30]
  assign io_out_1_valid = validVec[1]; // @[Ibuffer.scala 119:32]
  assign io_out_1_bits_instr = ibuf_io_rdata_1_inst; // @[Ibuffer.scala 123:26]
  assign io_out_1_bits_foldpc = ibuf_io_rdata_1_foldpc; // @[Ibuffer.scala 133:27]
  assign io_out_1_bits_exceptionVec_1 = ibuf_io_rdata_1_acf; // @[Ibuffer.scala 127:51]
  assign io_out_1_bits_exceptionVec_12 = ibuf_io_rdata_1_ipf; // @[Ibuffer.scala 126:49]
  assign io_out_1_bits_trigger_frontendHit_0 = ibuf_io_rdata_1_triggered_frontendHit_0; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_frontendHit_1 = ibuf_io_rdata_1_triggered_frontendHit_1; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_frontendHit_2 = ibuf_io_rdata_1_triggered_frontendHit_2; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_frontendHit_3 = ibuf_io_rdata_1_triggered_frontendHit_3; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_backendEn_0 = ibuf_io_rdata_1_triggered_backendEn_0; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_backendEn_1 = ibuf_io_rdata_1_triggered_backendEn_1; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_backendHit_0 = ibuf_io_rdata_1_triggered_backendHit_0; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_backendHit_1 = ibuf_io_rdata_1_triggered_backendHit_1; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_backendHit_2 = ibuf_io_rdata_1_triggered_backendHit_2; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_backendHit_3 = ibuf_io_rdata_1_triggered_backendHit_3; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_backendHit_4 = ibuf_io_rdata_1_triggered_backendHit_4; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_trigger_backendHit_5 = ibuf_io_rdata_1_triggered_backendHit_5; // @[Ibuffer.scala 140:28]
  assign io_out_1_bits_pd_isRVC = ibuf_io_rdata_1_pd_isRVC; // @[Ibuffer.scala 128:23]
  assign io_out_1_bits_pd_brType = ibuf_io_rdata_1_pd_brType; // @[Ibuffer.scala 128:23]
  assign io_out_1_bits_pd_isCall = ibuf_io_rdata_1_pd_isCall; // @[Ibuffer.scala 128:23]
  assign io_out_1_bits_pd_isRet = ibuf_io_rdata_1_pd_isRet; // @[Ibuffer.scala 128:23]
  assign io_out_1_bits_pred_taken = ibuf_io_rdata_1_pred_taken; // @[Ibuffer.scala 129:31]
  assign io_out_1_bits_crossPageIPFFix = ibuf_io_rdata_1_crossPageIPFFix; // @[Ibuffer.scala 132:36]
  assign io_out_1_bits_ftqPtr_flag = ibuf_io_rdata_1_ftqPtr_flag; // @[Ibuffer.scala 130:27]
  assign io_out_1_bits_ftqPtr_value = ibuf_io_rdata_1_ftqPtr_value; // @[Ibuffer.scala 130:27]
  assign io_out_1_bits_ftqOffset = ibuf_io_rdata_1_ftqOffset; // @[Ibuffer.scala 131:30]
  assign io_out_2_valid = validVec[2]; // @[Ibuffer.scala 119:32]
  assign io_out_2_bits_instr = ibuf_io_rdata_2_inst; // @[Ibuffer.scala 123:26]
  assign io_out_2_bits_foldpc = ibuf_io_rdata_2_foldpc; // @[Ibuffer.scala 133:27]
  assign io_out_2_bits_exceptionVec_1 = ibuf_io_rdata_2_acf; // @[Ibuffer.scala 127:51]
  assign io_out_2_bits_exceptionVec_12 = ibuf_io_rdata_2_ipf; // @[Ibuffer.scala 126:49]
  assign io_out_2_bits_trigger_frontendHit_0 = ibuf_io_rdata_2_triggered_frontendHit_0; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_frontendHit_1 = ibuf_io_rdata_2_triggered_frontendHit_1; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_frontendHit_2 = ibuf_io_rdata_2_triggered_frontendHit_2; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_frontendHit_3 = ibuf_io_rdata_2_triggered_frontendHit_3; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_backendEn_0 = ibuf_io_rdata_2_triggered_backendEn_0; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_backendEn_1 = ibuf_io_rdata_2_triggered_backendEn_1; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_backendHit_0 = ibuf_io_rdata_2_triggered_backendHit_0; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_backendHit_1 = ibuf_io_rdata_2_triggered_backendHit_1; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_backendHit_2 = ibuf_io_rdata_2_triggered_backendHit_2; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_backendHit_3 = ibuf_io_rdata_2_triggered_backendHit_3; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_backendHit_4 = ibuf_io_rdata_2_triggered_backendHit_4; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_trigger_backendHit_5 = ibuf_io_rdata_2_triggered_backendHit_5; // @[Ibuffer.scala 140:28]
  assign io_out_2_bits_pd_isRVC = ibuf_io_rdata_2_pd_isRVC; // @[Ibuffer.scala 128:23]
  assign io_out_2_bits_pd_brType = ibuf_io_rdata_2_pd_brType; // @[Ibuffer.scala 128:23]
  assign io_out_2_bits_pd_isCall = ibuf_io_rdata_2_pd_isCall; // @[Ibuffer.scala 128:23]
  assign io_out_2_bits_pd_isRet = ibuf_io_rdata_2_pd_isRet; // @[Ibuffer.scala 128:23]
  assign io_out_2_bits_pred_taken = ibuf_io_rdata_2_pred_taken; // @[Ibuffer.scala 129:31]
  assign io_out_2_bits_crossPageIPFFix = ibuf_io_rdata_2_crossPageIPFFix; // @[Ibuffer.scala 132:36]
  assign io_out_2_bits_ftqPtr_flag = ibuf_io_rdata_2_ftqPtr_flag; // @[Ibuffer.scala 130:27]
  assign io_out_2_bits_ftqPtr_value = ibuf_io_rdata_2_ftqPtr_value; // @[Ibuffer.scala 130:27]
  assign io_out_2_bits_ftqOffset = ibuf_io_rdata_2_ftqOffset; // @[Ibuffer.scala 131:30]
  assign io_out_3_valid = validVec[3]; // @[Ibuffer.scala 119:32]
  assign io_out_3_bits_instr = ibuf_io_rdata_3_inst; // @[Ibuffer.scala 123:26]
  assign io_out_3_bits_foldpc = ibuf_io_rdata_3_foldpc; // @[Ibuffer.scala 133:27]
  assign io_out_3_bits_exceptionVec_1 = ibuf_io_rdata_3_acf; // @[Ibuffer.scala 127:51]
  assign io_out_3_bits_exceptionVec_12 = ibuf_io_rdata_3_ipf; // @[Ibuffer.scala 126:49]
  assign io_out_3_bits_trigger_frontendHit_0 = ibuf_io_rdata_3_triggered_frontendHit_0; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_frontendHit_1 = ibuf_io_rdata_3_triggered_frontendHit_1; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_frontendHit_2 = ibuf_io_rdata_3_triggered_frontendHit_2; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_frontendHit_3 = ibuf_io_rdata_3_triggered_frontendHit_3; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_backendEn_0 = ibuf_io_rdata_3_triggered_backendEn_0; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_backendEn_1 = ibuf_io_rdata_3_triggered_backendEn_1; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_backendHit_0 = ibuf_io_rdata_3_triggered_backendHit_0; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_backendHit_1 = ibuf_io_rdata_3_triggered_backendHit_1; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_backendHit_2 = ibuf_io_rdata_3_triggered_backendHit_2; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_backendHit_3 = ibuf_io_rdata_3_triggered_backendHit_3; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_backendHit_4 = ibuf_io_rdata_3_triggered_backendHit_4; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_trigger_backendHit_5 = ibuf_io_rdata_3_triggered_backendHit_5; // @[Ibuffer.scala 140:28]
  assign io_out_3_bits_pd_isRVC = ibuf_io_rdata_3_pd_isRVC; // @[Ibuffer.scala 128:23]
  assign io_out_3_bits_pd_brType = ibuf_io_rdata_3_pd_brType; // @[Ibuffer.scala 128:23]
  assign io_out_3_bits_pd_isCall = ibuf_io_rdata_3_pd_isCall; // @[Ibuffer.scala 128:23]
  assign io_out_3_bits_pd_isRet = ibuf_io_rdata_3_pd_isRet; // @[Ibuffer.scala 128:23]
  assign io_out_3_bits_pred_taken = ibuf_io_rdata_3_pred_taken; // @[Ibuffer.scala 129:31]
  assign io_out_3_bits_crossPageIPFFix = ibuf_io_rdata_3_crossPageIPFFix; // @[Ibuffer.scala 132:36]
  assign io_out_3_bits_ftqPtr_flag = ibuf_io_rdata_3_ftqPtr_flag; // @[Ibuffer.scala 130:27]
  assign io_out_3_bits_ftqPtr_value = ibuf_io_rdata_3_ftqPtr_value; // @[Ibuffer.scala 130:27]
  assign io_out_3_bits_ftqOffset = ibuf_io_rdata_3_ftqOffset; // @[Ibuffer.scala 131:30]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = {{3'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 189:17]
  assign ibuf_clock = clock;
  assign ibuf_io_raddr_0 = _next_head_vec_new_ptr_value_T_1[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  assign ibuf_io_raddr_1 = _next_head_vec_new_ptr_value_T_3[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  assign ibuf_io_raddr_2 = _next_head_vec_new_ptr_value_T_5[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  assign ibuf_io_raddr_3 = _next_head_vec_new_ptr_value_T_7[4:0]; // @[CircularQueuePtr.scala 38:23 46:21]
  assign ibuf_io_wen_0 = io_in_bits_enqEnable[0] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 109:63]
  assign ibuf_io_wen_1 = io_in_bits_enqEnable[1] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 109:63]
  assign ibuf_io_wen_2 = io_in_bits_enqEnable[2] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 109:63]
  assign ibuf_io_wen_3 = io_in_bits_enqEnable[3] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 109:63]
  assign ibuf_io_wen_4 = io_in_bits_enqEnable[4] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 109:63]
  assign ibuf_io_wen_5 = io_in_bits_enqEnable[5] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 109:63]
  assign ibuf_io_wen_6 = io_in_bits_enqEnable[6] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 109:63]
  assign ibuf_io_wen_7 = io_in_bits_enqEnable[7] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 109:63]
  assign ibuf_io_waddr_0 = tail_vec_0_value; // @[Ibuffer.scala 107:{22,22}]
  assign ibuf_io_waddr_1 = 3'h7 == offset_1 ? tail_vec_7_value : _GEN_14; // @[Ibuffer.scala 107:{22,22}]
  assign ibuf_io_waddr_2 = 3'h7 == offset_2 ? tail_vec_7_value : _GEN_22; // @[Ibuffer.scala 107:{22,22}]
  assign ibuf_io_waddr_3 = 3'h7 == offset_3 ? tail_vec_7_value : _GEN_30; // @[Ibuffer.scala 107:{22,22}]
  assign ibuf_io_waddr_4 = 3'h7 == offset_4 ? tail_vec_7_value : _GEN_38; // @[Ibuffer.scala 107:{22,22}]
  assign ibuf_io_waddr_5 = 3'h7 == offset_5 ? tail_vec_7_value : _GEN_46; // @[Ibuffer.scala 107:{22,22}]
  assign ibuf_io_waddr_6 = 3'h7 == offset_6 ? tail_vec_7_value : _GEN_54; // @[Ibuffer.scala 107:{22,22}]
  assign ibuf_io_waddr_7 = 3'h7 == offset_7 ? tail_vec_7_value : _GEN_62; // @[Ibuffer.scala 107:{22,22}]
  assign ibuf_io_wdata_0_inst = io_in_bits_instrs_0; // @[Ibuffer.scala 91:22 92:19]
  assign ibuf_io_wdata_0_foldpc = io_in_bits_foldpc_0; // @[Ibuffer.scala 91:22 95:19]
  assign ibuf_io_wdata_0_pd_isRVC = io_in_bits_pd_0_isRVC; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_0_pd_brType = io_in_bits_pd_0_brType; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_0_pd_isCall = io_in_bits_pd_0_isCall; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_0_pd_isRet = io_in_bits_pd_0_isRet; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_0_pred_taken = io_in_bits_ftqOffset_0_valid; // @[Ibuffer.scala 91:22 96:23]
  assign ibuf_io_wdata_0_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_0_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_0_ftqOffset = 3'h0; // @[Ibuffer.scala 91:22 98:22]
  assign ibuf_io_wdata_0_ipf = io_in_bits_ipf_0; // @[Ibuffer.scala 91:22 99:16]
  assign ibuf_io_wdata_0_acf = io_in_bits_acf_0; // @[Ibuffer.scala 100:16 91:22]
  assign ibuf_io_wdata_0_crossPageIPFFix = io_in_bits_crossPageIPFFix_0; // @[Ibuffer.scala 91:22 101:28]
  assign ibuf_io_wdata_0_triggered_frontendHit_0 = io_in_bits_triggered_0_frontendHit_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_0_triggered_frontendHit_1 = io_in_bits_triggered_0_frontendHit_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_0_triggered_frontendHit_2 = io_in_bits_triggered_0_frontendHit_2; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_0_triggered_frontendHit_3 = io_in_bits_triggered_0_frontendHit_3; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_0_triggered_backendEn_0 = io_in_bits_triggered_0_backendEn_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_0_triggered_backendEn_1 = io_in_bits_triggered_0_backendEn_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_1_inst = io_in_bits_instrs_1; // @[Ibuffer.scala 91:22 92:19]
  assign ibuf_io_wdata_1_foldpc = io_in_bits_foldpc_1; // @[Ibuffer.scala 91:22 95:19]
  assign ibuf_io_wdata_1_pd_isRVC = io_in_bits_pd_1_isRVC; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_1_pd_brType = io_in_bits_pd_1_brType; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_1_pd_isCall = io_in_bits_pd_1_isCall; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_1_pd_isRet = io_in_bits_pd_1_isRet; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_1_pred_taken = io_in_bits_ftqOffset_1_valid; // @[Ibuffer.scala 91:22 96:23]
  assign ibuf_io_wdata_1_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_1_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_1_ftqOffset = 3'h1; // @[Ibuffer.scala 91:22 98:22]
  assign ibuf_io_wdata_1_ipf = io_in_bits_ipf_1; // @[Ibuffer.scala 91:22 99:16]
  assign ibuf_io_wdata_1_acf = io_in_bits_acf_1; // @[Ibuffer.scala 100:16 91:22]
  assign ibuf_io_wdata_1_crossPageIPFFix = io_in_bits_crossPageIPFFix_1; // @[Ibuffer.scala 91:22 101:28]
  assign ibuf_io_wdata_1_triggered_frontendHit_0 = io_in_bits_triggered_1_frontendHit_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_1_triggered_frontendHit_1 = io_in_bits_triggered_1_frontendHit_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_1_triggered_frontendHit_2 = io_in_bits_triggered_1_frontendHit_2; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_1_triggered_frontendHit_3 = io_in_bits_triggered_1_frontendHit_3; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_1_triggered_backendEn_0 = io_in_bits_triggered_1_backendEn_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_1_triggered_backendEn_1 = io_in_bits_triggered_1_backendEn_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_2_inst = io_in_bits_instrs_2; // @[Ibuffer.scala 91:22 92:19]
  assign ibuf_io_wdata_2_foldpc = io_in_bits_foldpc_2; // @[Ibuffer.scala 91:22 95:19]
  assign ibuf_io_wdata_2_pd_isRVC = io_in_bits_pd_2_isRVC; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_2_pd_brType = io_in_bits_pd_2_brType; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_2_pd_isCall = io_in_bits_pd_2_isCall; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_2_pd_isRet = io_in_bits_pd_2_isRet; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_2_pred_taken = io_in_bits_ftqOffset_2_valid; // @[Ibuffer.scala 91:22 96:23]
  assign ibuf_io_wdata_2_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_2_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_2_ftqOffset = 3'h2; // @[Ibuffer.scala 91:22 98:22]
  assign ibuf_io_wdata_2_ipf = io_in_bits_ipf_2; // @[Ibuffer.scala 91:22 99:16]
  assign ibuf_io_wdata_2_acf = io_in_bits_acf_2; // @[Ibuffer.scala 100:16 91:22]
  assign ibuf_io_wdata_2_crossPageIPFFix = io_in_bits_crossPageIPFFix_2; // @[Ibuffer.scala 91:22 101:28]
  assign ibuf_io_wdata_2_triggered_frontendHit_0 = io_in_bits_triggered_2_frontendHit_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_2_triggered_frontendHit_1 = io_in_bits_triggered_2_frontendHit_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_2_triggered_frontendHit_2 = io_in_bits_triggered_2_frontendHit_2; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_2_triggered_frontendHit_3 = io_in_bits_triggered_2_frontendHit_3; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_2_triggered_backendEn_0 = io_in_bits_triggered_2_backendEn_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_2_triggered_backendEn_1 = io_in_bits_triggered_2_backendEn_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_3_inst = io_in_bits_instrs_3; // @[Ibuffer.scala 91:22 92:19]
  assign ibuf_io_wdata_3_foldpc = io_in_bits_foldpc_3; // @[Ibuffer.scala 91:22 95:19]
  assign ibuf_io_wdata_3_pd_isRVC = io_in_bits_pd_3_isRVC; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_3_pd_brType = io_in_bits_pd_3_brType; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_3_pd_isCall = io_in_bits_pd_3_isCall; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_3_pd_isRet = io_in_bits_pd_3_isRet; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_3_pred_taken = io_in_bits_ftqOffset_3_valid; // @[Ibuffer.scala 91:22 96:23]
  assign ibuf_io_wdata_3_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_3_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_3_ftqOffset = 3'h3; // @[Ibuffer.scala 91:22 98:22]
  assign ibuf_io_wdata_3_ipf = io_in_bits_ipf_3; // @[Ibuffer.scala 91:22 99:16]
  assign ibuf_io_wdata_3_acf = io_in_bits_acf_3; // @[Ibuffer.scala 100:16 91:22]
  assign ibuf_io_wdata_3_crossPageIPFFix = io_in_bits_crossPageIPFFix_3; // @[Ibuffer.scala 91:22 101:28]
  assign ibuf_io_wdata_3_triggered_frontendHit_0 = io_in_bits_triggered_3_frontendHit_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_3_triggered_frontendHit_1 = io_in_bits_triggered_3_frontendHit_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_3_triggered_frontendHit_2 = io_in_bits_triggered_3_frontendHit_2; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_3_triggered_frontendHit_3 = io_in_bits_triggered_3_frontendHit_3; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_3_triggered_backendEn_0 = io_in_bits_triggered_3_backendEn_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_3_triggered_backendEn_1 = io_in_bits_triggered_3_backendEn_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_4_inst = io_in_bits_instrs_4; // @[Ibuffer.scala 91:22 92:19]
  assign ibuf_io_wdata_4_foldpc = io_in_bits_foldpc_4; // @[Ibuffer.scala 91:22 95:19]
  assign ibuf_io_wdata_4_pd_isRVC = io_in_bits_pd_4_isRVC; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_4_pd_brType = io_in_bits_pd_4_brType; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_4_pd_isCall = io_in_bits_pd_4_isCall; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_4_pd_isRet = io_in_bits_pd_4_isRet; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_4_pred_taken = io_in_bits_ftqOffset_4_valid; // @[Ibuffer.scala 91:22 96:23]
  assign ibuf_io_wdata_4_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_4_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_4_ftqOffset = 3'h4; // @[Ibuffer.scala 91:22 98:22]
  assign ibuf_io_wdata_4_ipf = io_in_bits_ipf_4; // @[Ibuffer.scala 91:22 99:16]
  assign ibuf_io_wdata_4_acf = io_in_bits_acf_4; // @[Ibuffer.scala 100:16 91:22]
  assign ibuf_io_wdata_4_crossPageIPFFix = io_in_bits_crossPageIPFFix_4; // @[Ibuffer.scala 91:22 101:28]
  assign ibuf_io_wdata_4_triggered_frontendHit_0 = io_in_bits_triggered_4_frontendHit_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_4_triggered_frontendHit_1 = io_in_bits_triggered_4_frontendHit_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_4_triggered_frontendHit_2 = io_in_bits_triggered_4_frontendHit_2; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_4_triggered_frontendHit_3 = io_in_bits_triggered_4_frontendHit_3; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_4_triggered_backendEn_0 = io_in_bits_triggered_4_backendEn_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_4_triggered_backendEn_1 = io_in_bits_triggered_4_backendEn_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_5_inst = io_in_bits_instrs_5; // @[Ibuffer.scala 91:22 92:19]
  assign ibuf_io_wdata_5_foldpc = io_in_bits_foldpc_5; // @[Ibuffer.scala 91:22 95:19]
  assign ibuf_io_wdata_5_pd_isRVC = io_in_bits_pd_5_isRVC; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_5_pd_brType = io_in_bits_pd_5_brType; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_5_pd_isCall = io_in_bits_pd_5_isCall; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_5_pd_isRet = io_in_bits_pd_5_isRet; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_5_pred_taken = io_in_bits_ftqOffset_5_valid; // @[Ibuffer.scala 91:22 96:23]
  assign ibuf_io_wdata_5_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_5_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_5_ftqOffset = 3'h5; // @[Ibuffer.scala 91:22 98:22]
  assign ibuf_io_wdata_5_ipf = io_in_bits_ipf_5; // @[Ibuffer.scala 91:22 99:16]
  assign ibuf_io_wdata_5_acf = io_in_bits_acf_5; // @[Ibuffer.scala 100:16 91:22]
  assign ibuf_io_wdata_5_crossPageIPFFix = io_in_bits_crossPageIPFFix_5; // @[Ibuffer.scala 91:22 101:28]
  assign ibuf_io_wdata_5_triggered_frontendHit_0 = io_in_bits_triggered_5_frontendHit_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_5_triggered_frontendHit_1 = io_in_bits_triggered_5_frontendHit_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_5_triggered_frontendHit_2 = io_in_bits_triggered_5_frontendHit_2; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_5_triggered_frontendHit_3 = io_in_bits_triggered_5_frontendHit_3; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_5_triggered_backendEn_0 = io_in_bits_triggered_5_backendEn_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_5_triggered_backendEn_1 = io_in_bits_triggered_5_backendEn_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_6_inst = io_in_bits_instrs_6; // @[Ibuffer.scala 91:22 92:19]
  assign ibuf_io_wdata_6_foldpc = io_in_bits_foldpc_6; // @[Ibuffer.scala 91:22 95:19]
  assign ibuf_io_wdata_6_pd_isRVC = io_in_bits_pd_6_isRVC; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_6_pd_brType = io_in_bits_pd_6_brType; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_6_pd_isCall = io_in_bits_pd_6_isCall; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_6_pd_isRet = io_in_bits_pd_6_isRet; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_6_pred_taken = io_in_bits_ftqOffset_6_valid; // @[Ibuffer.scala 91:22 96:23]
  assign ibuf_io_wdata_6_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_6_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_6_ftqOffset = 3'h6; // @[Ibuffer.scala 91:22 98:22]
  assign ibuf_io_wdata_6_ipf = io_in_bits_ipf_6; // @[Ibuffer.scala 91:22 99:16]
  assign ibuf_io_wdata_6_acf = io_in_bits_acf_6; // @[Ibuffer.scala 100:16 91:22]
  assign ibuf_io_wdata_6_crossPageIPFFix = io_in_bits_crossPageIPFFix_6; // @[Ibuffer.scala 91:22 101:28]
  assign ibuf_io_wdata_6_triggered_frontendHit_0 = io_in_bits_triggered_6_frontendHit_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_6_triggered_frontendHit_1 = io_in_bits_triggered_6_frontendHit_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_6_triggered_frontendHit_2 = io_in_bits_triggered_6_frontendHit_2; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_6_triggered_frontendHit_3 = io_in_bits_triggered_6_frontendHit_3; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_6_triggered_backendEn_0 = io_in_bits_triggered_6_backendEn_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_6_triggered_backendEn_1 = io_in_bits_triggered_6_backendEn_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_7_inst = io_in_bits_instrs_7; // @[Ibuffer.scala 91:22 92:19]
  assign ibuf_io_wdata_7_foldpc = io_in_bits_foldpc_7; // @[Ibuffer.scala 91:22 95:19]
  assign ibuf_io_wdata_7_pd_isRVC = io_in_bits_pd_7_isRVC; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_7_pd_brType = io_in_bits_pd_7_brType; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_7_pd_isCall = io_in_bits_pd_7_isCall; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_7_pd_isRet = io_in_bits_pd_7_isRet; // @[Ibuffer.scala 91:22 94:19]
  assign ibuf_io_wdata_7_pred_taken = io_in_bits_ftqOffset_7_valid; // @[Ibuffer.scala 91:22 96:23]
  assign ibuf_io_wdata_7_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_7_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 91:22 97:19]
  assign ibuf_io_wdata_7_ftqOffset = 3'h7; // @[Ibuffer.scala 91:22 98:22]
  assign ibuf_io_wdata_7_ipf = io_in_bits_ipf_7; // @[Ibuffer.scala 91:22 99:16]
  assign ibuf_io_wdata_7_acf = io_in_bits_acf_7; // @[Ibuffer.scala 100:16 91:22]
  assign ibuf_io_wdata_7_crossPageIPFFix = io_in_bits_crossPageIPFFix_7; // @[Ibuffer.scala 91:22 101:28]
  assign ibuf_io_wdata_7_triggered_frontendHit_0 = io_in_bits_triggered_7_frontendHit_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_7_triggered_frontendHit_1 = io_in_bits_triggered_7_frontendHit_1; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_7_triggered_frontendHit_2 = io_in_bits_triggered_7_frontendHit_2; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_7_triggered_frontendHit_3 = io_in_bits_triggered_7_frontendHit_3; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_7_triggered_backendEn_0 = io_in_bits_triggered_7_backendEn_0; // @[Ibuffer.scala 103:22 91:22]
  assign ibuf_io_wdata_7_triggered_backendEn_1 = io_in_bits_triggered_7_backendEn_1; // @[Ibuffer.scala 103:22 91:22]
  always @(posedge clock) begin
    if (reset) begin // @[Ibuffer.scala 62:25]
      head_vec_0_flag <= 1'h0; // @[Ibuffer.scala 62:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      head_vec_0_flag <= 1'h0; // @[Ibuffer.scala 149:14]
    end else if (next_head_vec_reverse_flag) begin // @[CircularQueuePtr.scala 45:26]
      head_vec_0_flag <= ~head_vec_0_flag;
    end
    if (reset) begin // @[Ibuffer.scala 62:25]
      head_vec_0_value <= 5'h0; // @[Ibuffer.scala 62:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      head_vec_0_value <= 5'h0; // @[Ibuffer.scala 149:14]
    end else begin
      head_vec_0_value <= next_head_vec_new_ptr_value; // @[Ibuffer.scala 144:12]
    end
    if (reset) begin // @[Ibuffer.scala 62:25]
      head_vec_1_value <= 5'h1; // @[Ibuffer.scala 62:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      head_vec_1_value <= 5'h1; // @[Ibuffer.scala 149:14]
    end else begin
      head_vec_1_value <= next_head_vec_new_ptr_1_value; // @[Ibuffer.scala 144:12]
    end
    if (reset) begin // @[Ibuffer.scala 62:25]
      head_vec_2_value <= 5'h2; // @[Ibuffer.scala 62:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      head_vec_2_value <= 5'h2; // @[Ibuffer.scala 149:14]
    end else begin
      head_vec_2_value <= next_head_vec_new_ptr_2_value; // @[Ibuffer.scala 144:12]
    end
    if (reset) begin // @[Ibuffer.scala 62:25]
      head_vec_3_value <= 5'h3; // @[Ibuffer.scala 62:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      head_vec_3_value <= 5'h3; // @[Ibuffer.scala 149:14]
    end else begin
      head_vec_3_value <= next_head_vec_new_ptr_3_value; // @[Ibuffer.scala 144:12]
    end
    if (reset) begin // @[Ibuffer.scala 63:25]
      tail_vec_0_flag <= 1'h0; // @[Ibuffer.scala 63:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      tail_vec_0_flag <= 1'h0; // @[Ibuffer.scala 150:14]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 112:34]
      if (reverse_flag) begin // @[CircularQueuePtr.scala 45:26]
        tail_vec_0_flag <= ~tail_vec_0_flag;
      end
    end
    if (reset) begin // @[Ibuffer.scala 63:25]
      tail_vec_0_value <= 5'h0; // @[Ibuffer.scala 63:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      tail_vec_0_value <= 5'h0; // @[Ibuffer.scala 150:14]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 112:34]
      tail_vec_0_value <= new_ptr_value; // @[Ibuffer.scala 113:14]
    end
    if (reset) begin // @[Ibuffer.scala 63:25]
      tail_vec_1_value <= 5'h1; // @[Ibuffer.scala 63:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      tail_vec_1_value <= 5'h1; // @[Ibuffer.scala 150:14]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 112:34]
      tail_vec_1_value <= new_ptr_1_value; // @[Ibuffer.scala 113:14]
    end
    if (reset) begin // @[Ibuffer.scala 63:25]
      tail_vec_2_value <= 5'h2; // @[Ibuffer.scala 63:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      tail_vec_2_value <= 5'h2; // @[Ibuffer.scala 150:14]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 112:34]
      tail_vec_2_value <= new_ptr_2_value; // @[Ibuffer.scala 113:14]
    end
    if (reset) begin // @[Ibuffer.scala 63:25]
      tail_vec_3_value <= 5'h3; // @[Ibuffer.scala 63:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      tail_vec_3_value <= 5'h3; // @[Ibuffer.scala 150:14]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 112:34]
      tail_vec_3_value <= new_ptr_3_value; // @[Ibuffer.scala 113:14]
    end
    if (reset) begin // @[Ibuffer.scala 63:25]
      tail_vec_4_value <= 5'h4; // @[Ibuffer.scala 63:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      tail_vec_4_value <= 5'h4; // @[Ibuffer.scala 150:14]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 112:34]
      tail_vec_4_value <= new_ptr_4_value; // @[Ibuffer.scala 113:14]
    end
    if (reset) begin // @[Ibuffer.scala 63:25]
      tail_vec_5_value <= 5'h5; // @[Ibuffer.scala 63:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      tail_vec_5_value <= 5'h5; // @[Ibuffer.scala 150:14]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 112:34]
      tail_vec_5_value <= new_ptr_5_value; // @[Ibuffer.scala 113:14]
    end
    if (reset) begin // @[Ibuffer.scala 63:25]
      tail_vec_6_value <= 5'h6; // @[Ibuffer.scala 63:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      tail_vec_6_value <= 5'h6; // @[Ibuffer.scala 150:14]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 112:34]
      tail_vec_6_value <= new_ptr_6_value; // @[Ibuffer.scala 113:14]
    end
    if (reset) begin // @[Ibuffer.scala 63:25]
      tail_vec_7_value <= 5'h7; // @[Ibuffer.scala 63:25]
    end else if (io_flush) begin // @[Ibuffer.scala 147:19]
      tail_vec_7_value <= 5'h7; // @[Ibuffer.scala 150:14]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 112:34]
      tail_vec_7_value <= new_ptr_7_value; // @[Ibuffer.scala 113:14]
    end
    allowEnq <= reset | _GEN_80; // @[Ibuffer.scala 68:{25,25}]
    if (reset) begin // @[Ibuffer.scala 177:26]
      afterInit <= 1'h0; // @[Ibuffer.scala 177:26]
    end else begin
      afterInit <= _GEN_105;
    end
    if (reset) begin // @[Ibuffer.scala 178:27]
      headBubble <= 1'h0; // @[Ibuffer.scala 178:27]
    end else begin
      headBubble <= _GEN_107;
    end
    io_perf_0_value_REG <= io_flush; // @[PerfCounterUtils.scala 189:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= afterInit & validEntries == 5'h0 & ~headBubble; // @[Ibuffer.scala 185:57]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= validEntries > 5'h0 & validEntries < 5'h6; // @[Ibuffer.scala 194:64]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= validEntries >= 5'h6 & validEntries < 5'hc; // @[Ibuffer.scala 195:64]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= validEntries >= 5'hc & validEntries < 5'h12; // @[Ibuffer.scala 196:64]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= validEntries >= 5'h12 & validEntries < 5'h18; // @[Ibuffer.scala 197:64]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= &validEntries; // @[Ibuffer.scala 198:41]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= _T_212 + _T_214; // @[Bitwise.scala 48:55]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
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
  _RAND_0 = {1{`RANDOM}};
  head_vec_0_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  head_vec_0_value = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  head_vec_1_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  head_vec_2_value = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  head_vec_3_value = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  tail_vec_0_flag = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  tail_vec_0_value = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  tail_vec_1_value = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  tail_vec_2_value = _RAND_8[4:0];
  _RAND_9 = {1{`RANDOM}};
  tail_vec_3_value = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  tail_vec_4_value = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  tail_vec_5_value = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  tail_vec_6_value = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  tail_vec_7_value = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  allowEnq = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  afterInit = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  headBubble = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_32[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
