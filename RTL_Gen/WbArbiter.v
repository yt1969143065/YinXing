module WbArbiter(
  input         clock,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_in_0_valid,
  input         io_in_0_bits_uop_cf_trigger_backendHit_0,
  input         io_in_0_bits_uop_cf_trigger_backendHit_1,
  input         io_in_0_bits_uop_cf_trigger_backendHit_2,
  input         io_in_0_bits_uop_cf_trigger_backendHit_3,
  input         io_in_0_bits_uop_cf_trigger_backendHit_4,
  input         io_in_0_bits_uop_cf_trigger_backendHit_5,
  input         io_in_0_bits_uop_ctrl_rfWen,
  input  [6:0]  io_in_0_bits_uop_pdest,
  input         io_in_0_bits_uop_robIdx_flag,
  input  [6:0]  io_in_0_bits_uop_robIdx_value,
  input  [63:0] io_in_0_bits_data,
  input         io_in_0_bits_redirectValid,
  input         io_in_0_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_1_valid,
  input         io_in_1_bits_uop_cf_trigger_backendHit_0,
  input         io_in_1_bits_uop_cf_trigger_backendHit_1,
  input         io_in_1_bits_uop_cf_trigger_backendHit_2,
  input         io_in_1_bits_uop_cf_trigger_backendHit_3,
  input         io_in_1_bits_uop_cf_trigger_backendHit_4,
  input         io_in_1_bits_uop_cf_trigger_backendHit_5,
  input         io_in_1_bits_uop_ctrl_rfWen,
  input  [6:0]  io_in_1_bits_uop_pdest,
  input         io_in_1_bits_uop_robIdx_flag,
  input  [6:0]  io_in_1_bits_uop_robIdx_value,
  input  [63:0] io_in_1_bits_data,
  input         io_in_1_bits_redirectValid,
  input         io_in_1_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_2_valid,
  input         io_in_2_bits_uop_cf_trigger_backendHit_0,
  input         io_in_2_bits_uop_cf_trigger_backendHit_1,
  input         io_in_2_bits_uop_cf_trigger_backendHit_2,
  input         io_in_2_bits_uop_cf_trigger_backendHit_3,
  input         io_in_2_bits_uop_cf_trigger_backendHit_4,
  input         io_in_2_bits_uop_cf_trigger_backendHit_5,
  input         io_in_2_bits_uop_ctrl_rfWen,
  input  [6:0]  io_in_2_bits_uop_pdest,
  input         io_in_2_bits_uop_robIdx_flag,
  input  [6:0]  io_in_2_bits_uop_robIdx_value,
  input  [63:0] io_in_2_bits_data,
  input         io_in_2_bits_redirectValid,
  input         io_in_2_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_3_valid,
  input         io_in_3_bits_uop_cf_trigger_backendHit_0,
  input         io_in_3_bits_uop_cf_trigger_backendHit_1,
  input         io_in_3_bits_uop_cf_trigger_backendHit_2,
  input         io_in_3_bits_uop_cf_trigger_backendHit_3,
  input         io_in_3_bits_uop_cf_trigger_backendHit_4,
  input         io_in_3_bits_uop_cf_trigger_backendHit_5,
  input         io_in_3_bits_uop_ctrl_rfWen,
  input  [6:0]  io_in_3_bits_uop_pdest,
  input         io_in_3_bits_uop_robIdx_flag,
  input  [6:0]  io_in_3_bits_uop_robIdx_value,
  input  [63:0] io_in_3_bits_data,
  input         io_in_3_bits_redirectValid,
  input         io_in_3_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_4_valid,
  input         io_in_4_bits_uop_cf_trigger_backendHit_0,
  input         io_in_4_bits_uop_cf_trigger_backendHit_1,
  input         io_in_4_bits_uop_cf_trigger_backendHit_2,
  input         io_in_4_bits_uop_cf_trigger_backendHit_3,
  input         io_in_4_bits_uop_cf_trigger_backendHit_4,
  input         io_in_4_bits_uop_cf_trigger_backendHit_5,
  input         io_in_4_bits_uop_ctrl_rfWen,
  input         io_in_4_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_4_bits_uop_pdest,
  input         io_in_4_bits_uop_robIdx_flag,
  input  [6:0]  io_in_4_bits_uop_robIdx_value,
  input  [63:0] io_in_4_bits_data,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input         io_in_5_bits_uop_cf_exceptionVec_2,
  input         io_in_5_bits_uop_cf_exceptionVec_3,
  input         io_in_5_bits_uop_cf_exceptionVec_8,
  input         io_in_5_bits_uop_cf_exceptionVec_9,
  input         io_in_5_bits_uop_cf_exceptionVec_11,
  input         io_in_5_bits_uop_cf_trigger_backendHit_0,
  input         io_in_5_bits_uop_cf_trigger_backendHit_1,
  input         io_in_5_bits_uop_cf_trigger_backendHit_2,
  input         io_in_5_bits_uop_cf_trigger_backendHit_3,
  input         io_in_5_bits_uop_cf_trigger_backendHit_4,
  input         io_in_5_bits_uop_cf_trigger_backendHit_5,
  input         io_in_5_bits_uop_ctrl_rfWen,
  input         io_in_5_bits_uop_ctrl_fpWen,
  input         io_in_5_bits_uop_ctrl_flushPipe,
  input  [6:0]  io_in_5_bits_uop_pdest,
  input         io_in_5_bits_uop_robIdx_flag,
  input  [6:0]  io_in_5_bits_uop_robIdx_value,
  input  [63:0] io_in_5_bits_data,
  input         io_in_5_bits_redirectValid,
  input         io_in_5_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_5_bits_debug_isPerfCnt,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input         io_in_6_bits_uop_cf_trigger_backendHit_0,
  input         io_in_6_bits_uop_cf_trigger_backendHit_1,
  input         io_in_6_bits_uop_cf_trigger_backendHit_2,
  input         io_in_6_bits_uop_cf_trigger_backendHit_3,
  input         io_in_6_bits_uop_cf_trigger_backendHit_4,
  input         io_in_6_bits_uop_cf_trigger_backendHit_5,
  input         io_in_6_bits_uop_ctrl_rfWen,
  input         io_in_6_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_6_bits_uop_pdest,
  input         io_in_6_bits_uop_robIdx_flag,
  input  [6:0]  io_in_6_bits_uop_robIdx_value,
  input  [63:0] io_in_6_bits_data,
  input         io_in_7_valid,
  input         io_in_7_bits_uop_cf_exceptionVec_4,
  input         io_in_7_bits_uop_cf_exceptionVec_5,
  input         io_in_7_bits_uop_cf_exceptionVec_13,
  input         io_in_7_bits_uop_cf_trigger_backendHit_0,
  input         io_in_7_bits_uop_cf_trigger_backendHit_1,
  input         io_in_7_bits_uop_cf_trigger_backendHit_2,
  input         io_in_7_bits_uop_cf_trigger_backendHit_3,
  input         io_in_7_bits_uop_cf_trigger_backendHit_4,
  input         io_in_7_bits_uop_cf_trigger_backendHit_5,
  input         io_in_7_bits_uop_ctrl_rfWen,
  input         io_in_7_bits_uop_ctrl_fpWen,
  input         io_in_7_bits_uop_ctrl_flushPipe,
  input         io_in_7_bits_uop_ctrl_replayInst,
  input  [6:0]  io_in_7_bits_uop_pdest,
  input         io_in_7_bits_uop_robIdx_flag,
  input  [6:0]  io_in_7_bits_uop_robIdx_value,
  input  [63:0] io_in_7_bits_data,
  input         io_in_7_bits_debug_isMMIO,
  input         io_in_8_valid,
  input         io_in_8_bits_uop_cf_exceptionVec_4,
  input         io_in_8_bits_uop_cf_exceptionVec_5,
  input         io_in_8_bits_uop_cf_exceptionVec_13,
  input         io_in_8_bits_uop_cf_trigger_backendHit_0,
  input         io_in_8_bits_uop_cf_trigger_backendHit_1,
  input         io_in_8_bits_uop_cf_trigger_backendHit_2,
  input         io_in_8_bits_uop_cf_trigger_backendHit_3,
  input         io_in_8_bits_uop_cf_trigger_backendHit_4,
  input         io_in_8_bits_uop_cf_trigger_backendHit_5,
  input         io_in_8_bits_uop_ctrl_rfWen,
  input         io_in_8_bits_uop_ctrl_fpWen,
  input         io_in_8_bits_uop_ctrl_flushPipe,
  input         io_in_8_bits_uop_ctrl_replayInst,
  input  [6:0]  io_in_8_bits_uop_pdest,
  input         io_in_8_bits_uop_robIdx_flag,
  input  [6:0]  io_in_8_bits_uop_robIdx_value,
  input  [63:0] io_in_8_bits_data,
  input         io_in_8_bits_debug_isMMIO,
  output        io_out_0_valid,
  output        io_out_0_bits_uop_cf_trigger_backendHit_0,
  output        io_out_0_bits_uop_cf_trigger_backendHit_1,
  output        io_out_0_bits_uop_cf_trigger_backendHit_2,
  output        io_out_0_bits_uop_cf_trigger_backendHit_3,
  output        io_out_0_bits_uop_cf_trigger_backendHit_4,
  output        io_out_0_bits_uop_cf_trigger_backendHit_5,
  output        io_out_0_bits_uop_ctrl_rfWen,
  output [6:0]  io_out_0_bits_uop_pdest,
  output        io_out_0_bits_uop_robIdx_flag,
  output [6:0]  io_out_0_bits_uop_robIdx_value,
  output [63:0] io_out_0_bits_data,
  output        io_out_0_bits_redirectValid,
  output        io_out_0_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_1_valid,
  output        io_out_1_bits_uop_cf_trigger_backendHit_0,
  output        io_out_1_bits_uop_cf_trigger_backendHit_1,
  output        io_out_1_bits_uop_cf_trigger_backendHit_2,
  output        io_out_1_bits_uop_cf_trigger_backendHit_3,
  output        io_out_1_bits_uop_cf_trigger_backendHit_4,
  output        io_out_1_bits_uop_cf_trigger_backendHit_5,
  output        io_out_1_bits_uop_ctrl_rfWen,
  output [6:0]  io_out_1_bits_uop_pdest,
  output        io_out_1_bits_uop_robIdx_flag,
  output [6:0]  io_out_1_bits_uop_robIdx_value,
  output [63:0] io_out_1_bits_data,
  output        io_out_1_bits_redirectValid,
  output        io_out_1_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_2_valid,
  output        io_out_2_bits_uop_cf_trigger_backendHit_0,
  output        io_out_2_bits_uop_cf_trigger_backendHit_1,
  output        io_out_2_bits_uop_cf_trigger_backendHit_2,
  output        io_out_2_bits_uop_cf_trigger_backendHit_3,
  output        io_out_2_bits_uop_cf_trigger_backendHit_4,
  output        io_out_2_bits_uop_cf_trigger_backendHit_5,
  output        io_out_2_bits_uop_ctrl_rfWen,
  output [6:0]  io_out_2_bits_uop_pdest,
  output        io_out_2_bits_uop_robIdx_flag,
  output [6:0]  io_out_2_bits_uop_robIdx_value,
  output [63:0] io_out_2_bits_data,
  output        io_out_2_bits_redirectValid,
  output        io_out_2_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_3_valid,
  output        io_out_3_bits_uop_cf_trigger_backendHit_0,
  output        io_out_3_bits_uop_cf_trigger_backendHit_1,
  output        io_out_3_bits_uop_cf_trigger_backendHit_2,
  output        io_out_3_bits_uop_cf_trigger_backendHit_3,
  output        io_out_3_bits_uop_cf_trigger_backendHit_4,
  output        io_out_3_bits_uop_cf_trigger_backendHit_5,
  output        io_out_3_bits_uop_ctrl_rfWen,
  output [6:0]  io_out_3_bits_uop_pdest,
  output        io_out_3_bits_uop_robIdx_flag,
  output [6:0]  io_out_3_bits_uop_robIdx_value,
  output [63:0] io_out_3_bits_data,
  output        io_out_3_bits_redirectValid,
  output        io_out_3_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_4_valid,
  output        io_out_4_bits_uop_cf_exceptionVec_4,
  output        io_out_4_bits_uop_cf_exceptionVec_5,
  output        io_out_4_bits_uop_cf_exceptionVec_13,
  output        io_out_4_bits_uop_cf_trigger_backendHit_0,
  output        io_out_4_bits_uop_cf_trigger_backendHit_1,
  output        io_out_4_bits_uop_cf_trigger_backendHit_2,
  output        io_out_4_bits_uop_cf_trigger_backendHit_3,
  output        io_out_4_bits_uop_cf_trigger_backendHit_4,
  output        io_out_4_bits_uop_cf_trigger_backendHit_5,
  output        io_out_4_bits_uop_ctrl_rfWen,
  output        io_out_4_bits_uop_ctrl_fpWen,
  output        io_out_4_bits_uop_ctrl_flushPipe,
  output        io_out_4_bits_uop_ctrl_replayInst,
  output [6:0]  io_out_4_bits_uop_pdest,
  output        io_out_4_bits_uop_robIdx_flag,
  output [6:0]  io_out_4_bits_uop_robIdx_value,
  output [63:0] io_out_4_bits_data,
  output        io_out_4_bits_debug_isMMIO,
  output        io_out_5_valid,
  output        io_out_5_bits_uop_cf_exceptionVec_4,
  output        io_out_5_bits_uop_cf_exceptionVec_5,
  output        io_out_5_bits_uop_cf_exceptionVec_13,
  output        io_out_5_bits_uop_cf_trigger_backendHit_0,
  output        io_out_5_bits_uop_cf_trigger_backendHit_1,
  output        io_out_5_bits_uop_cf_trigger_backendHit_2,
  output        io_out_5_bits_uop_cf_trigger_backendHit_3,
  output        io_out_5_bits_uop_cf_trigger_backendHit_4,
  output        io_out_5_bits_uop_cf_trigger_backendHit_5,
  output        io_out_5_bits_uop_ctrl_rfWen,
  output        io_out_5_bits_uop_ctrl_fpWen,
  output        io_out_5_bits_uop_ctrl_flushPipe,
  output        io_out_5_bits_uop_ctrl_replayInst,
  output [6:0]  io_out_5_bits_uop_pdest,
  output        io_out_5_bits_uop_robIdx_flag,
  output [6:0]  io_out_5_bits_uop_robIdx_value,
  output [63:0] io_out_5_bits_data,
  output        io_out_5_bits_debug_isMMIO,
  output        io_out_6_valid,
  output        io_out_6_bits_uop_cf_exceptionVec_2,
  output        io_out_6_bits_uop_cf_exceptionVec_3,
  output        io_out_6_bits_uop_cf_exceptionVec_8,
  output        io_out_6_bits_uop_cf_exceptionVec_9,
  output        io_out_6_bits_uop_cf_exceptionVec_11,
  output        io_out_6_bits_uop_cf_trigger_backendHit_0,
  output        io_out_6_bits_uop_cf_trigger_backendHit_1,
  output        io_out_6_bits_uop_cf_trigger_backendHit_2,
  output        io_out_6_bits_uop_cf_trigger_backendHit_3,
  output        io_out_6_bits_uop_cf_trigger_backendHit_4,
  output        io_out_6_bits_uop_cf_trigger_backendHit_5,
  output        io_out_6_bits_uop_ctrl_rfWen,
  output        io_out_6_bits_uop_ctrl_fpWen,
  output        io_out_6_bits_uop_ctrl_flushPipe,
  output [6:0]  io_out_6_bits_uop_pdest,
  output        io_out_6_bits_uop_robIdx_flag,
  output [6:0]  io_out_6_bits_uop_robIdx_value,
  output [63:0] io_out_6_bits_data,
  output        io_out_6_bits_redirectValid,
  output        io_out_6_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_6_bits_debug_isPerfCnt
);
  wire  arb_clock; // @[WbArbiter.scala 184:21]
  wire  arb_io_redirect_valid; // @[WbArbiter.scala 184:21]
  wire  arb_io_redirect_bits_robIdx_flag; // @[WbArbiter.scala 184:21]
  wire [6:0] arb_io_redirect_bits_robIdx_value; // @[WbArbiter.scala 184:21]
  wire  arb_io_redirect_bits_level; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_ready; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_valid; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 184:21]
  wire [6:0] arb_io_in_0_bits_uop_pdest; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 184:21]
  wire [6:0] arb_io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 184:21]
  wire [63:0] arb_io_in_0_bits_data; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_ready; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_valid; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 184:21]
  wire [6:0] arb_io_in_1_bits_uop_pdest; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 184:21]
  wire [6:0] arb_io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 184:21]
  wire [63:0] arb_io_in_1_bits_data; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_redirectValid; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_1_bits_debug_isPerfCnt; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_ready; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_valid; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 184:21]
  wire [6:0] arb_io_in_2_bits_uop_pdest; // @[WbArbiter.scala 184:21]
  wire  arb_io_in_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 184:21]
  wire [6:0] arb_io_in_2_bits_uop_robIdx_value; // @[WbArbiter.scala 184:21]
  wire [63:0] arb_io_in_2_bits_data; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_valid; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 184:21]
  wire [6:0] arb_io_out_bits_uop_pdest; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_uop_robIdx_flag; // @[WbArbiter.scala 184:21]
  wire [6:0] arb_io_out_bits_uop_robIdx_value; // @[WbArbiter.scala 184:21]
  wire [63:0] arb_io_out_bits_data; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_redirectValid; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 184:21]
  wire  arb_io_out_bits_debug_isPerfCnt; // @[WbArbiter.scala 184:21]
  ExuWbArbiter arb ( // @[WbArbiter.scala 184:21]
    .clock(arb_clock),
    .io_redirect_valid(arb_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(arb_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(arb_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(arb_io_redirect_bits_level),
    .io_in_0_ready(arb_io_in_0_ready),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_uop_cf_trigger_backendHit_0(arb_io_in_0_bits_uop_cf_trigger_backendHit_0),
    .io_in_0_bits_uop_cf_trigger_backendHit_1(arb_io_in_0_bits_uop_cf_trigger_backendHit_1),
    .io_in_0_bits_uop_cf_trigger_backendHit_2(arb_io_in_0_bits_uop_cf_trigger_backendHit_2),
    .io_in_0_bits_uop_cf_trigger_backendHit_3(arb_io_in_0_bits_uop_cf_trigger_backendHit_3),
    .io_in_0_bits_uop_cf_trigger_backendHit_4(arb_io_in_0_bits_uop_cf_trigger_backendHit_4),
    .io_in_0_bits_uop_cf_trigger_backendHit_5(arb_io_in_0_bits_uop_cf_trigger_backendHit_5),
    .io_in_0_bits_uop_ctrl_rfWen(arb_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_ctrl_fpWen(arb_io_in_0_bits_uop_ctrl_fpWen),
    .io_in_0_bits_uop_pdest(arb_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(arb_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(arb_io_in_0_bits_uop_robIdx_value),
    .io_in_0_bits_data(arb_io_in_0_bits_data),
    .io_in_1_ready(arb_io_in_1_ready),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_uop_cf_exceptionVec_2(arb_io_in_1_bits_uop_cf_exceptionVec_2),
    .io_in_1_bits_uop_cf_exceptionVec_3(arb_io_in_1_bits_uop_cf_exceptionVec_3),
    .io_in_1_bits_uop_cf_exceptionVec_8(arb_io_in_1_bits_uop_cf_exceptionVec_8),
    .io_in_1_bits_uop_cf_exceptionVec_9(arb_io_in_1_bits_uop_cf_exceptionVec_9),
    .io_in_1_bits_uop_cf_exceptionVec_11(arb_io_in_1_bits_uop_cf_exceptionVec_11),
    .io_in_1_bits_uop_cf_trigger_backendHit_0(arb_io_in_1_bits_uop_cf_trigger_backendHit_0),
    .io_in_1_bits_uop_cf_trigger_backendHit_1(arb_io_in_1_bits_uop_cf_trigger_backendHit_1),
    .io_in_1_bits_uop_cf_trigger_backendHit_2(arb_io_in_1_bits_uop_cf_trigger_backendHit_2),
    .io_in_1_bits_uop_cf_trigger_backendHit_3(arb_io_in_1_bits_uop_cf_trigger_backendHit_3),
    .io_in_1_bits_uop_cf_trigger_backendHit_4(arb_io_in_1_bits_uop_cf_trigger_backendHit_4),
    .io_in_1_bits_uop_cf_trigger_backendHit_5(arb_io_in_1_bits_uop_cf_trigger_backendHit_5),
    .io_in_1_bits_uop_ctrl_rfWen(arb_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_ctrl_fpWen(arb_io_in_1_bits_uop_ctrl_fpWen),
    .io_in_1_bits_uop_ctrl_flushPipe(arb_io_in_1_bits_uop_ctrl_flushPipe),
    .io_in_1_bits_uop_pdest(arb_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(arb_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(arb_io_in_1_bits_uop_robIdx_value),
    .io_in_1_bits_data(arb_io_in_1_bits_data),
    .io_in_1_bits_redirectValid(arb_io_in_1_bits_redirectValid),
    .io_in_1_bits_redirect_cfiUpdate_isMisPred(arb_io_in_1_bits_redirect_cfiUpdate_isMisPred),
    .io_in_1_bits_debug_isPerfCnt(arb_io_in_1_bits_debug_isPerfCnt),
    .io_in_2_ready(arb_io_in_2_ready),
    .io_in_2_valid(arb_io_in_2_valid),
    .io_in_2_bits_uop_cf_trigger_backendHit_0(arb_io_in_2_bits_uop_cf_trigger_backendHit_0),
    .io_in_2_bits_uop_cf_trigger_backendHit_1(arb_io_in_2_bits_uop_cf_trigger_backendHit_1),
    .io_in_2_bits_uop_cf_trigger_backendHit_2(arb_io_in_2_bits_uop_cf_trigger_backendHit_2),
    .io_in_2_bits_uop_cf_trigger_backendHit_3(arb_io_in_2_bits_uop_cf_trigger_backendHit_3),
    .io_in_2_bits_uop_cf_trigger_backendHit_4(arb_io_in_2_bits_uop_cf_trigger_backendHit_4),
    .io_in_2_bits_uop_cf_trigger_backendHit_5(arb_io_in_2_bits_uop_cf_trigger_backendHit_5),
    .io_in_2_bits_uop_ctrl_rfWen(arb_io_in_2_bits_uop_ctrl_rfWen),
    .io_in_2_bits_uop_ctrl_fpWen(arb_io_in_2_bits_uop_ctrl_fpWen),
    .io_in_2_bits_uop_pdest(arb_io_in_2_bits_uop_pdest),
    .io_in_2_bits_uop_robIdx_flag(arb_io_in_2_bits_uop_robIdx_flag),
    .io_in_2_bits_uop_robIdx_value(arb_io_in_2_bits_uop_robIdx_value),
    .io_in_2_bits_data(arb_io_in_2_bits_data),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_2(arb_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(arb_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_8(arb_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(arb_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(arb_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_cf_trigger_backendHit_0(arb_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(arb_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(arb_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(arb_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(arb_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(arb_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(arb_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(arb_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(arb_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_pdest(arb_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(arb_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(arb_io_out_bits_uop_robIdx_value),
    .io_out_bits_data(arb_io_out_bits_data),
    .io_out_bits_redirectValid(arb_io_out_bits_redirectValid),
    .io_out_bits_redirect_cfiUpdate_isMisPred(arb_io_out_bits_redirect_cfiUpdate_isMisPred),
    .io_out_bits_debug_isPerfCnt(arb_io_out_bits_debug_isPerfCnt)
  );
  assign io_in_5_ready = arb_io_in_1_ready; // @[WbArbiter.scala 186:15]
  assign io_in_6_ready = arb_io_in_2_ready; // @[WbArbiter.scala 186:15]
  assign io_out_0_valid = io_in_0_valid; // @[WbArbiter.scala 163:17]
  assign io_out_0_bits_uop_cf_trigger_backendHit_0 = io_in_0_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_uop_cf_trigger_backendHit_1 = io_in_0_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_uop_cf_trigger_backendHit_2 = io_in_0_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_uop_cf_trigger_backendHit_3 = io_in_0_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_uop_cf_trigger_backendHit_4 = io_in_0_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_uop_cf_trigger_backendHit_5 = io_in_0_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_uop_ctrl_rfWen = io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_uop_pdest = io_in_0_bits_uop_pdest; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_uop_robIdx_flag = io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_uop_robIdx_value = io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_data = io_in_0_bits_data; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_redirectValid = io_in_0_bits_redirectValid; // @[WbArbiter.scala 164:16]
  assign io_out_0_bits_redirect_cfiUpdate_isMisPred = io_in_0_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 164:16]
  assign io_out_1_valid = io_in_1_valid; // @[WbArbiter.scala 163:17]
  assign io_out_1_bits_uop_cf_trigger_backendHit_0 = io_in_1_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_uop_cf_trigger_backendHit_1 = io_in_1_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_uop_cf_trigger_backendHit_2 = io_in_1_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_uop_cf_trigger_backendHit_3 = io_in_1_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_uop_cf_trigger_backendHit_4 = io_in_1_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_uop_cf_trigger_backendHit_5 = io_in_1_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_uop_ctrl_rfWen = io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_uop_pdest = io_in_1_bits_uop_pdest; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_uop_robIdx_flag = io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_uop_robIdx_value = io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_data = io_in_1_bits_data; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_redirectValid = io_in_1_bits_redirectValid; // @[WbArbiter.scala 164:16]
  assign io_out_1_bits_redirect_cfiUpdate_isMisPred = io_in_1_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 164:16]
  assign io_out_2_valid = io_in_2_valid; // @[WbArbiter.scala 163:17]
  assign io_out_2_bits_uop_cf_trigger_backendHit_0 = io_in_2_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_uop_cf_trigger_backendHit_1 = io_in_2_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_uop_cf_trigger_backendHit_2 = io_in_2_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_uop_cf_trigger_backendHit_3 = io_in_2_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_uop_cf_trigger_backendHit_4 = io_in_2_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_uop_cf_trigger_backendHit_5 = io_in_2_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_uop_ctrl_rfWen = io_in_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_uop_pdest = io_in_2_bits_uop_pdest; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_uop_robIdx_flag = io_in_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_uop_robIdx_value = io_in_2_bits_uop_robIdx_value; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_data = io_in_2_bits_data; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_redirectValid = io_in_2_bits_redirectValid; // @[WbArbiter.scala 164:16]
  assign io_out_2_bits_redirect_cfiUpdate_isMisPred = io_in_2_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 164:16]
  assign io_out_3_valid = io_in_3_valid; // @[WbArbiter.scala 163:17]
  assign io_out_3_bits_uop_cf_trigger_backendHit_0 = io_in_3_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_uop_cf_trigger_backendHit_1 = io_in_3_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_uop_cf_trigger_backendHit_2 = io_in_3_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_uop_cf_trigger_backendHit_3 = io_in_3_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_uop_cf_trigger_backendHit_4 = io_in_3_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_uop_cf_trigger_backendHit_5 = io_in_3_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_uop_ctrl_rfWen = io_in_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_uop_pdest = io_in_3_bits_uop_pdest; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_uop_robIdx_flag = io_in_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_uop_robIdx_value = io_in_3_bits_uop_robIdx_value; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_data = io_in_3_bits_data; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_redirectValid = io_in_3_bits_redirectValid; // @[WbArbiter.scala 164:16]
  assign io_out_3_bits_redirect_cfiUpdate_isMisPred = io_in_3_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 164:16]
  assign io_out_4_valid = io_in_7_valid; // @[WbArbiter.scala 163:17]
  assign io_out_4_bits_uop_cf_exceptionVec_4 = io_in_7_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_cf_exceptionVec_5 = io_in_7_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_cf_exceptionVec_13 = io_in_7_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_cf_trigger_backendHit_0 = io_in_7_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_cf_trigger_backendHit_1 = io_in_7_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_cf_trigger_backendHit_2 = io_in_7_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_cf_trigger_backendHit_3 = io_in_7_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_cf_trigger_backendHit_4 = io_in_7_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_cf_trigger_backendHit_5 = io_in_7_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_ctrl_rfWen = io_in_7_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_ctrl_fpWen = io_in_7_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_ctrl_flushPipe = io_in_7_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_ctrl_replayInst = io_in_7_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_pdest = io_in_7_bits_uop_pdest; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_robIdx_flag = io_in_7_bits_uop_robIdx_flag; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_uop_robIdx_value = io_in_7_bits_uop_robIdx_value; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_data = io_in_7_bits_data; // @[WbArbiter.scala 164:16]
  assign io_out_4_bits_debug_isMMIO = io_in_7_bits_debug_isMMIO; // @[WbArbiter.scala 164:16]
  assign io_out_5_valid = io_in_8_valid; // @[WbArbiter.scala 163:17]
  assign io_out_5_bits_uop_cf_exceptionVec_4 = io_in_8_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_cf_exceptionVec_5 = io_in_8_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_cf_exceptionVec_13 = io_in_8_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_cf_trigger_backendHit_0 = io_in_8_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_cf_trigger_backendHit_1 = io_in_8_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_cf_trigger_backendHit_2 = io_in_8_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_cf_trigger_backendHit_3 = io_in_8_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_cf_trigger_backendHit_4 = io_in_8_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_cf_trigger_backendHit_5 = io_in_8_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_ctrl_rfWen = io_in_8_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_ctrl_fpWen = io_in_8_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_ctrl_flushPipe = io_in_8_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_ctrl_replayInst = io_in_8_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_pdest = io_in_8_bits_uop_pdest; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_robIdx_flag = io_in_8_bits_uop_robIdx_flag; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_uop_robIdx_value = io_in_8_bits_uop_robIdx_value; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_data = io_in_8_bits_data; // @[WbArbiter.scala 164:16]
  assign io_out_5_bits_debug_isMMIO = io_in_8_bits_debug_isMMIO; // @[WbArbiter.scala 164:16]
  assign io_out_6_valid = arb_io_out_valid; // @[WbArbiter.scala 187:15]
  assign io_out_6_bits_uop_cf_exceptionVec_2 = arb_io_out_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_exceptionVec_3 = arb_io_out_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_exceptionVec_8 = arb_io_out_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_exceptionVec_9 = arb_io_out_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_exceptionVec_11 = arb_io_out_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_trigger_backendHit_0 = arb_io_out_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_trigger_backendHit_1 = arb_io_out_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_trigger_backendHit_2 = arb_io_out_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_trigger_backendHit_3 = arb_io_out_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_trigger_backendHit_4 = arb_io_out_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_cf_trigger_backendHit_5 = arb_io_out_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_ctrl_rfWen = arb_io_out_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_ctrl_fpWen = arb_io_out_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_ctrl_flushPipe = arb_io_out_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_pdest = arb_io_out_bits_uop_pdest; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_robIdx_flag = arb_io_out_bits_uop_robIdx_flag; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_uop_robIdx_value = arb_io_out_bits_uop_robIdx_value; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_data = arb_io_out_bits_data; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_redirectValid = arb_io_out_bits_redirectValid; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_redirect_cfiUpdate_isMisPred = arb_io_out_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 188:14]
  assign io_out_6_bits_debug_isPerfCnt = arb_io_out_bits_debug_isPerfCnt; // @[WbArbiter.scala 188:14]
  assign arb_clock = clock;
  assign arb_io_redirect_valid = io_redirect_valid; // @[WbArbiter.scala 185:21]
  assign arb_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[WbArbiter.scala 185:21]
  assign arb_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[WbArbiter.scala 185:21]
  assign arb_io_redirect_bits_level = io_redirect_bits_level; // @[WbArbiter.scala 185:21]
  assign arb_io_in_0_valid = io_in_4_valid; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_0 = io_in_4_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_1 = io_in_4_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_2 = io_in_4_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_3 = io_in_4_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_4 = io_in_4_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_5 = io_in_4_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_ctrl_rfWen = io_in_4_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_ctrl_fpWen = io_in_4_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_pdest = io_in_4_bits_uop_pdest; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_robIdx_flag = io_in_4_bits_uop_robIdx_flag; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_robIdx_value = io_in_4_bits_uop_robIdx_value; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_data = io_in_4_bits_data; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_valid = io_in_5_valid; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_2 = io_in_5_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_3 = io_in_5_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_8 = io_in_5_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_9 = io_in_5_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_11 = io_in_5_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_0 = io_in_5_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_1 = io_in_5_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_2 = io_in_5_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_3 = io_in_5_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_4 = io_in_5_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_5 = io_in_5_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_ctrl_rfWen = io_in_5_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_ctrl_fpWen = io_in_5_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_ctrl_flushPipe = io_in_5_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_pdest = io_in_5_bits_uop_pdest; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_robIdx_flag = io_in_5_bits_uop_robIdx_flag; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_robIdx_value = io_in_5_bits_uop_robIdx_value; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_data = io_in_5_bits_data; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_redirectValid = io_in_5_bits_redirectValid; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_redirect_cfiUpdate_isMisPred = io_in_5_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_debug_isPerfCnt = io_in_5_bits_debug_isPerfCnt; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_valid = io_in_6_valid; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_cf_trigger_backendHit_0 = io_in_6_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_cf_trigger_backendHit_1 = io_in_6_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_cf_trigger_backendHit_2 = io_in_6_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_cf_trigger_backendHit_3 = io_in_6_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_cf_trigger_backendHit_4 = io_in_6_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_cf_trigger_backendHit_5 = io_in_6_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_ctrl_rfWen = io_in_6_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_ctrl_fpWen = io_in_6_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_pdest = io_in_6_bits_uop_pdest; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_robIdx_flag = io_in_6_bits_uop_robIdx_flag; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_uop_robIdx_value = io_in_6_bits_uop_robIdx_value; // @[WbArbiter.scala 186:15]
  assign arb_io_in_2_bits_data = io_in_6_bits_data; // @[WbArbiter.scala 186:15]
endmodule
