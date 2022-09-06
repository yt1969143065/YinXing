module Wb2Ctrl(
  input        clock,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [6:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level,
  input        io_in_5_ready,
  input        io_in_5_valid,
  input        io_in_5_bits_uop_cf_exceptionVec_2,
  input        io_in_5_bits_uop_cf_exceptionVec_3,
  input        io_in_5_bits_uop_cf_exceptionVec_8,
  input        io_in_5_bits_uop_cf_exceptionVec_9,
  input        io_in_5_bits_uop_cf_exceptionVec_11,
  input        io_in_5_bits_uop_cf_trigger_backendHit_0,
  input        io_in_5_bits_uop_cf_trigger_backendHit_1,
  input        io_in_5_bits_uop_cf_trigger_backendHit_2,
  input        io_in_5_bits_uop_cf_trigger_backendHit_3,
  input        io_in_5_bits_uop_cf_trigger_backendHit_4,
  input        io_in_5_bits_uop_cf_trigger_backendHit_5,
  input        io_in_5_bits_uop_ctrl_flushPipe,
  input        io_in_5_bits_uop_robIdx_flag,
  input  [6:0] io_in_5_bits_uop_robIdx_value,
  input  [4:0] io_in_5_bits_fflags,
  input        io_in_6_ready,
  input        io_in_6_valid,
  input        io_in_6_bits_uop_robIdx_flag,
  input  [6:0] io_in_6_bits_uop_robIdx_value,
  input  [4:0] io_in_6_bits_fflags,
  input        io_in_7_ready,
  input        io_in_7_valid,
  input        io_in_7_bits_uop_robIdx_flag,
  input  [6:0] io_in_7_bits_uop_robIdx_value,
  input  [4:0] io_in_7_bits_fflags,
  input        io_in_8_ready,
  input        io_in_8_valid,
  input        io_in_8_bits_uop_robIdx_flag,
  input  [6:0] io_in_8_bits_uop_robIdx_value,
  input  [4:0] io_in_8_bits_fflags,
  input        io_in_9_ready,
  input        io_in_9_valid,
  input        io_in_9_bits_uop_cf_exceptionVec_4,
  input        io_in_9_bits_uop_cf_exceptionVec_5,
  input        io_in_9_bits_uop_cf_exceptionVec_13,
  input        io_in_9_bits_uop_cf_trigger_backendHit_0,
  input        io_in_9_bits_uop_cf_trigger_backendHit_1,
  input        io_in_9_bits_uop_cf_trigger_backendHit_2,
  input        io_in_9_bits_uop_cf_trigger_backendHit_3,
  input        io_in_9_bits_uop_cf_trigger_backendHit_4,
  input        io_in_9_bits_uop_cf_trigger_backendHit_5,
  input        io_in_9_bits_uop_ctrl_flushPipe,
  input        io_in_9_bits_uop_ctrl_replayInst,
  input        io_in_9_bits_uop_robIdx_flag,
  input  [6:0] io_in_9_bits_uop_robIdx_value,
  input        io_in_10_ready,
  input        io_in_10_valid,
  input        io_in_10_bits_uop_cf_exceptionVec_4,
  input        io_in_10_bits_uop_cf_exceptionVec_5,
  input        io_in_10_bits_uop_cf_exceptionVec_13,
  input        io_in_10_bits_uop_cf_trigger_backendHit_0,
  input        io_in_10_bits_uop_cf_trigger_backendHit_1,
  input        io_in_10_bits_uop_cf_trigger_backendHit_2,
  input        io_in_10_bits_uop_cf_trigger_backendHit_3,
  input        io_in_10_bits_uop_cf_trigger_backendHit_4,
  input        io_in_10_bits_uop_cf_trigger_backendHit_5,
  input        io_in_10_bits_uop_ctrl_flushPipe,
  input        io_in_10_bits_uop_ctrl_replayInst,
  input        io_in_10_bits_uop_robIdx_flag,
  input  [6:0] io_in_10_bits_uop_robIdx_value,
  input        io_in_11_ready,
  input        io_in_11_valid,
  input        io_in_11_bits_uop_cf_exceptionVec_4,
  input        io_in_11_bits_uop_cf_exceptionVec_5,
  input        io_in_11_bits_uop_cf_exceptionVec_6,
  input        io_in_11_bits_uop_cf_exceptionVec_7,
  input        io_in_11_bits_uop_cf_exceptionVec_13,
  input        io_in_11_bits_uop_cf_exceptionVec_15,
  input        io_in_11_bits_uop_cf_trigger_backendHit_0,
  input        io_in_11_bits_uop_cf_trigger_backendHit_1,
  input        io_in_11_bits_uop_cf_trigger_backendHit_2,
  input        io_in_11_bits_uop_cf_trigger_backendHit_3,
  input        io_in_11_bits_uop_cf_trigger_backendHit_4,
  input        io_in_11_bits_uop_cf_trigger_backendHit_5,
  input        io_in_11_bits_uop_robIdx_flag,
  input  [6:0] io_in_11_bits_uop_robIdx_value,
  input        io_in_12_ready,
  input        io_in_12_valid,
  input        io_in_12_bits_uop_cf_exceptionVec_4,
  input        io_in_12_bits_uop_cf_exceptionVec_5,
  input        io_in_12_bits_uop_cf_exceptionVec_6,
  input        io_in_12_bits_uop_cf_exceptionVec_7,
  input        io_in_12_bits_uop_cf_exceptionVec_13,
  input        io_in_12_bits_uop_cf_exceptionVec_15,
  input        io_in_12_bits_uop_cf_trigger_backendHit_0,
  input        io_in_12_bits_uop_cf_trigger_backendHit_1,
  input        io_in_12_bits_uop_cf_trigger_backendHit_2,
  input        io_in_12_bits_uop_cf_trigger_backendHit_3,
  input        io_in_12_bits_uop_cf_trigger_backendHit_4,
  input        io_in_12_bits_uop_cf_trigger_backendHit_5,
  input        io_in_12_bits_uop_robIdx_flag,
  input  [6:0] io_in_12_bits_uop_robIdx_value,
  output       io_out_5_valid,
  output       io_out_5_bits_uop_cf_exceptionVec_2,
  output       io_out_5_bits_uop_cf_exceptionVec_3,
  output       io_out_5_bits_uop_cf_exceptionVec_8,
  output       io_out_5_bits_uop_cf_exceptionVec_9,
  output       io_out_5_bits_uop_cf_exceptionVec_11,
  output       io_out_5_bits_uop_cf_trigger_backendHit_0,
  output       io_out_5_bits_uop_cf_trigger_backendHit_1,
  output       io_out_5_bits_uop_cf_trigger_backendHit_2,
  output       io_out_5_bits_uop_cf_trigger_backendHit_3,
  output       io_out_5_bits_uop_cf_trigger_backendHit_4,
  output       io_out_5_bits_uop_cf_trigger_backendHit_5,
  output       io_out_5_bits_uop_ctrl_flushPipe,
  output       io_out_5_bits_uop_robIdx_flag,
  output [6:0] io_out_5_bits_uop_robIdx_value,
  output [4:0] io_out_5_bits_fflags,
  output       io_out_6_valid,
  output       io_out_6_bits_uop_robIdx_flag,
  output [6:0] io_out_6_bits_uop_robIdx_value,
  output [4:0] io_out_6_bits_fflags,
  output       io_out_7_valid,
  output       io_out_7_bits_uop_robIdx_flag,
  output [6:0] io_out_7_bits_uop_robIdx_value,
  output [4:0] io_out_7_bits_fflags,
  output       io_out_8_valid,
  output       io_out_8_bits_uop_robIdx_flag,
  output [6:0] io_out_8_bits_uop_robIdx_value,
  output [4:0] io_out_8_bits_fflags,
  output       io_out_9_valid,
  output       io_out_9_bits_uop_cf_exceptionVec_4,
  output       io_out_9_bits_uop_cf_exceptionVec_5,
  output       io_out_9_bits_uop_cf_exceptionVec_13,
  output       io_out_9_bits_uop_cf_trigger_backendHit_0,
  output       io_out_9_bits_uop_cf_trigger_backendHit_1,
  output       io_out_9_bits_uop_cf_trigger_backendHit_2,
  output       io_out_9_bits_uop_cf_trigger_backendHit_3,
  output       io_out_9_bits_uop_cf_trigger_backendHit_4,
  output       io_out_9_bits_uop_cf_trigger_backendHit_5,
  output       io_out_9_bits_uop_ctrl_flushPipe,
  output       io_out_9_bits_uop_ctrl_replayInst,
  output       io_out_9_bits_uop_robIdx_flag,
  output [6:0] io_out_9_bits_uop_robIdx_value,
  output       io_out_10_valid,
  output       io_out_10_bits_uop_cf_exceptionVec_4,
  output       io_out_10_bits_uop_cf_exceptionVec_5,
  output       io_out_10_bits_uop_cf_exceptionVec_13,
  output       io_out_10_bits_uop_cf_trigger_backendHit_0,
  output       io_out_10_bits_uop_cf_trigger_backendHit_1,
  output       io_out_10_bits_uop_cf_trigger_backendHit_2,
  output       io_out_10_bits_uop_cf_trigger_backendHit_3,
  output       io_out_10_bits_uop_cf_trigger_backendHit_4,
  output       io_out_10_bits_uop_cf_trigger_backendHit_5,
  output       io_out_10_bits_uop_ctrl_flushPipe,
  output       io_out_10_bits_uop_ctrl_replayInst,
  output       io_out_10_bits_uop_robIdx_flag,
  output [6:0] io_out_10_bits_uop_robIdx_value,
  output       io_out_11_valid,
  output       io_out_11_bits_uop_cf_exceptionVec_4,
  output       io_out_11_bits_uop_cf_exceptionVec_5,
  output       io_out_11_bits_uop_cf_exceptionVec_6,
  output       io_out_11_bits_uop_cf_exceptionVec_7,
  output       io_out_11_bits_uop_cf_exceptionVec_13,
  output       io_out_11_bits_uop_cf_exceptionVec_15,
  output       io_out_11_bits_uop_cf_trigger_backendHit_0,
  output       io_out_11_bits_uop_cf_trigger_backendHit_1,
  output       io_out_11_bits_uop_cf_trigger_backendHit_2,
  output       io_out_11_bits_uop_cf_trigger_backendHit_3,
  output       io_out_11_bits_uop_cf_trigger_backendHit_4,
  output       io_out_11_bits_uop_cf_trigger_backendHit_5,
  output       io_out_11_bits_uop_robIdx_flag,
  output [6:0] io_out_11_bits_uop_robIdx_value,
  output       io_out_12_valid,
  output       io_out_12_bits_uop_cf_exceptionVec_4,
  output       io_out_12_bits_uop_cf_exceptionVec_5,
  output       io_out_12_bits_uop_cf_exceptionVec_6,
  output       io_out_12_bits_uop_cf_exceptionVec_7,
  output       io_out_12_bits_uop_cf_exceptionVec_13,
  output       io_out_12_bits_uop_cf_exceptionVec_15,
  output       io_out_12_bits_uop_cf_trigger_backendHit_0,
  output       io_out_12_bits_uop_cf_trigger_backendHit_1,
  output       io_out_12_bits_uop_cf_trigger_backendHit_2,
  output       io_out_12_bits_uop_cf_trigger_backendHit_3,
  output       io_out_12_bits_uop_cf_trigger_backendHit_4,
  output       io_out_12_bits_uop_cf_trigger_backendHit_5,
  output       io_out_12_bits_uop_robIdx_flag,
  output [6:0] io_out_12_bits_uop_robIdx_value
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
`endif // RANDOMIZE_REG_INIT
  wire [7:0] _io_out_4_valid_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _io_out_5_valid_T = io_in_5_ready & io_in_5_valid; // @[Decoupled.scala 50:35]
  wire [7:0] _io_out_5_valid_flushItself_T_1 = {io_in_5_bits_uop_robIdx_flag,io_in_5_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _io_out_5_valid_flushItself_T_3 = _io_out_5_valid_flushItself_T_1 == _io_out_4_valid_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_out_5_valid_flushItself = io_redirect_bits_level & _io_out_5_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_out_5_valid_differentFlag = io_in_5_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_out_5_valid_compare = io_in_5_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_out_5_valid_T_2 = io_out_5_valid_differentFlag ^ io_out_5_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_out_5_valid_T_4 = io_redirect_valid & (io_out_5_valid_flushItself | _io_out_5_valid_T_2); // @[Rob.scala 36:20]
  reg  io_out_5_valid_REG; // @[WbArbiter.scala 335:29]
  reg  io_out_5_bits_uop_REG_cf_exceptionVec_2; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_exceptionVec_3; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_exceptionVec_8; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_exceptionVec_9; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_exceptionVec_11; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_trigger_backendHit_0; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_trigger_backendHit_1; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_trigger_backendHit_2; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_trigger_backendHit_3; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_trigger_backendHit_4; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_cf_trigger_backendHit_5; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_ctrl_flushPipe; // @[WbArbiter.scala 336:32]
  reg  io_out_5_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 336:32]
  reg [6:0] io_out_5_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 336:32]
  wire  _io_out_6_valid_T = io_in_6_ready & io_in_6_valid; // @[Decoupled.scala 50:35]
  wire [7:0] _io_out_6_valid_flushItself_T_1 = {io_in_6_bits_uop_robIdx_flag,io_in_6_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _io_out_6_valid_flushItself_T_3 = _io_out_6_valid_flushItself_T_1 == _io_out_4_valid_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_out_6_valid_flushItself = io_redirect_bits_level & _io_out_6_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_out_6_valid_differentFlag = io_in_6_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_out_6_valid_compare = io_in_6_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_out_6_valid_T_2 = io_out_6_valid_differentFlag ^ io_out_6_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_out_6_valid_T_4 = io_redirect_valid & (io_out_6_valid_flushItself | _io_out_6_valid_T_2); // @[Rob.scala 36:20]
  reg  io_out_6_valid_REG; // @[WbArbiter.scala 335:29]
  reg  io_out_6_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 336:32]
  reg [6:0] io_out_6_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 336:32]
  wire  _io_out_7_valid_T = io_in_7_ready & io_in_7_valid; // @[Decoupled.scala 50:35]
  wire [7:0] _io_out_7_valid_flushItself_T_1 = {io_in_7_bits_uop_robIdx_flag,io_in_7_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _io_out_7_valid_flushItself_T_3 = _io_out_7_valid_flushItself_T_1 == _io_out_4_valid_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_out_7_valid_flushItself = io_redirect_bits_level & _io_out_7_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_out_7_valid_differentFlag = io_in_7_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_out_7_valid_compare = io_in_7_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_out_7_valid_T_2 = io_out_7_valid_differentFlag ^ io_out_7_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_out_7_valid_T_4 = io_redirect_valid & (io_out_7_valid_flushItself | _io_out_7_valid_T_2); // @[Rob.scala 36:20]
  reg  io_out_7_valid_REG; // @[WbArbiter.scala 335:29]
  reg  io_out_7_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 336:32]
  reg [6:0] io_out_7_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 336:32]
  wire  _io_out_8_valid_T = io_in_8_ready & io_in_8_valid; // @[Decoupled.scala 50:35]
  wire [7:0] _io_out_8_valid_flushItself_T_1 = {io_in_8_bits_uop_robIdx_flag,io_in_8_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _io_out_8_valid_flushItself_T_3 = _io_out_8_valid_flushItself_T_1 == _io_out_4_valid_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_out_8_valid_flushItself = io_redirect_bits_level & _io_out_8_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_out_8_valid_differentFlag = io_in_8_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_out_8_valid_compare = io_in_8_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_out_8_valid_T_2 = io_out_8_valid_differentFlag ^ io_out_8_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_out_8_valid_T_4 = io_redirect_valid & (io_out_8_valid_flushItself | _io_out_8_valid_T_2); // @[Rob.scala 36:20]
  reg  io_out_8_valid_REG; // @[WbArbiter.scala 335:29]
  reg  io_out_8_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 336:32]
  reg [6:0] io_out_8_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 336:32]
  assign io_out_5_valid = io_out_5_valid_REG; // @[WbArbiter.scala 335:19]
  assign io_out_5_bits_uop_cf_exceptionVec_2 = io_out_5_bits_uop_REG_cf_exceptionVec_2; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_exceptionVec_3 = io_out_5_bits_uop_REG_cf_exceptionVec_3; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_exceptionVec_8 = io_out_5_bits_uop_REG_cf_exceptionVec_8; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_exceptionVec_9 = io_out_5_bits_uop_REG_cf_exceptionVec_9; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_exceptionVec_11 = io_out_5_bits_uop_REG_cf_exceptionVec_11; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_trigger_backendHit_0 = io_out_5_bits_uop_REG_cf_trigger_backendHit_0; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_trigger_backendHit_1 = io_out_5_bits_uop_REG_cf_trigger_backendHit_1; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_trigger_backendHit_2 = io_out_5_bits_uop_REG_cf_trigger_backendHit_2; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_trigger_backendHit_3 = io_out_5_bits_uop_REG_cf_trigger_backendHit_3; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_trigger_backendHit_4 = io_out_5_bits_uop_REG_cf_trigger_backendHit_4; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_cf_trigger_backendHit_5 = io_out_5_bits_uop_REG_cf_trigger_backendHit_5; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_ctrl_flushPipe = io_out_5_bits_uop_REG_ctrl_flushPipe; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_robIdx_flag = io_out_5_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_uop_robIdx_value = io_out_5_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 336:22]
  assign io_out_5_bits_fflags = io_in_5_bits_fflags; // @[WbArbiter.scala 333:16]
  assign io_out_6_valid = io_out_6_valid_REG; // @[WbArbiter.scala 335:19]
  assign io_out_6_bits_uop_robIdx_flag = io_out_6_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 336:22]
  assign io_out_6_bits_uop_robIdx_value = io_out_6_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 336:22]
  assign io_out_6_bits_fflags = io_in_6_bits_fflags; // @[WbArbiter.scala 333:16]
  assign io_out_7_valid = io_out_7_valid_REG; // @[WbArbiter.scala 335:19]
  assign io_out_7_bits_uop_robIdx_flag = io_out_7_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 336:22]
  assign io_out_7_bits_uop_robIdx_value = io_out_7_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 336:22]
  assign io_out_7_bits_fflags = io_in_7_bits_fflags; // @[WbArbiter.scala 333:16]
  assign io_out_8_valid = io_out_8_valid_REG; // @[WbArbiter.scala 335:19]
  assign io_out_8_bits_uop_robIdx_flag = io_out_8_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 336:22]
  assign io_out_8_bits_uop_robIdx_value = io_out_8_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 336:22]
  assign io_out_8_bits_fflags = io_in_8_bits_fflags; // @[WbArbiter.scala 333:16]
  assign io_out_9_valid = io_in_9_ready & io_in_9_valid; // @[Decoupled.scala 50:35]
  assign io_out_9_bits_uop_cf_exceptionVec_4 = io_in_9_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_cf_exceptionVec_5 = io_in_9_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_cf_exceptionVec_13 = io_in_9_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_cf_trigger_backendHit_0 = io_in_9_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_cf_trigger_backendHit_1 = io_in_9_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_cf_trigger_backendHit_2 = io_in_9_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_cf_trigger_backendHit_3 = io_in_9_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_cf_trigger_backendHit_4 = io_in_9_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_cf_trigger_backendHit_5 = io_in_9_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_ctrl_flushPipe = io_in_9_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_ctrl_replayInst = io_in_9_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_robIdx_flag = io_in_9_bits_uop_robIdx_flag; // @[WbArbiter.scala 333:16]
  assign io_out_9_bits_uop_robIdx_value = io_in_9_bits_uop_robIdx_value; // @[WbArbiter.scala 333:16]
  assign io_out_10_valid = io_in_10_ready & io_in_10_valid; // @[Decoupled.scala 50:35]
  assign io_out_10_bits_uop_cf_exceptionVec_4 = io_in_10_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_cf_exceptionVec_5 = io_in_10_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_cf_exceptionVec_13 = io_in_10_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_cf_trigger_backendHit_0 = io_in_10_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_cf_trigger_backendHit_1 = io_in_10_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_cf_trigger_backendHit_2 = io_in_10_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_cf_trigger_backendHit_3 = io_in_10_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_cf_trigger_backendHit_4 = io_in_10_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_cf_trigger_backendHit_5 = io_in_10_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_ctrl_flushPipe = io_in_10_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_ctrl_replayInst = io_in_10_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_robIdx_flag = io_in_10_bits_uop_robIdx_flag; // @[WbArbiter.scala 333:16]
  assign io_out_10_bits_uop_robIdx_value = io_in_10_bits_uop_robIdx_value; // @[WbArbiter.scala 333:16]
  assign io_out_11_valid = io_in_11_ready & io_in_11_valid; // @[Decoupled.scala 50:35]
  assign io_out_11_bits_uop_cf_exceptionVec_4 = io_in_11_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_exceptionVec_5 = io_in_11_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_exceptionVec_6 = io_in_11_bits_uop_cf_exceptionVec_6; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_exceptionVec_7 = io_in_11_bits_uop_cf_exceptionVec_7; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_exceptionVec_13 = io_in_11_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_exceptionVec_15 = io_in_11_bits_uop_cf_exceptionVec_15; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_trigger_backendHit_0 = io_in_11_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_trigger_backendHit_1 = io_in_11_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_trigger_backendHit_2 = io_in_11_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_trigger_backendHit_3 = io_in_11_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_trigger_backendHit_4 = io_in_11_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_cf_trigger_backendHit_5 = io_in_11_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_robIdx_flag = io_in_11_bits_uop_robIdx_flag; // @[WbArbiter.scala 333:16]
  assign io_out_11_bits_uop_robIdx_value = io_in_11_bits_uop_robIdx_value; // @[WbArbiter.scala 333:16]
  assign io_out_12_valid = io_in_12_ready & io_in_12_valid; // @[Decoupled.scala 50:35]
  assign io_out_12_bits_uop_cf_exceptionVec_4 = io_in_12_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_exceptionVec_5 = io_in_12_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_exceptionVec_6 = io_in_12_bits_uop_cf_exceptionVec_6; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_exceptionVec_7 = io_in_12_bits_uop_cf_exceptionVec_7; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_exceptionVec_13 = io_in_12_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_exceptionVec_15 = io_in_12_bits_uop_cf_exceptionVec_15; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_trigger_backendHit_0 = io_in_12_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_trigger_backendHit_1 = io_in_12_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_trigger_backendHit_2 = io_in_12_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_trigger_backendHit_3 = io_in_12_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_trigger_backendHit_4 = io_in_12_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_cf_trigger_backendHit_5 = io_in_12_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_robIdx_flag = io_in_12_bits_uop_robIdx_flag; // @[WbArbiter.scala 333:16]
  assign io_out_12_bits_uop_robIdx_value = io_in_12_bits_uop_robIdx_value; // @[WbArbiter.scala 333:16]
  always @(posedge clock) begin
    io_out_5_valid_REG <= _io_out_5_valid_T & ~_io_out_5_valid_T_4; // @[WbArbiter.scala 335:38]
    io_out_5_bits_uop_REG_cf_exceptionVec_2 <= io_in_5_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_exceptionVec_3 <= io_in_5_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_exceptionVec_8 <= io_in_5_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_exceptionVec_9 <= io_in_5_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_exceptionVec_11 <= io_in_5_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_trigger_backendHit_0 <= io_in_5_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_trigger_backendHit_1 <= io_in_5_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_trigger_backendHit_2 <= io_in_5_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_trigger_backendHit_3 <= io_in_5_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_trigger_backendHit_4 <= io_in_5_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_cf_trigger_backendHit_5 <= io_in_5_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_ctrl_flushPipe <= io_in_5_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_robIdx_flag <= io_in_5_bits_uop_robIdx_flag; // @[WbArbiter.scala 336:32]
    io_out_5_bits_uop_REG_robIdx_value <= io_in_5_bits_uop_robIdx_value; // @[WbArbiter.scala 336:32]
    io_out_6_valid_REG <= _io_out_6_valid_T & ~_io_out_6_valid_T_4; // @[WbArbiter.scala 335:38]
    io_out_6_bits_uop_REG_robIdx_flag <= io_in_6_bits_uop_robIdx_flag; // @[WbArbiter.scala 336:32]
    io_out_6_bits_uop_REG_robIdx_value <= io_in_6_bits_uop_robIdx_value; // @[WbArbiter.scala 336:32]
    io_out_7_valid_REG <= _io_out_7_valid_T & ~_io_out_7_valid_T_4; // @[WbArbiter.scala 335:38]
    io_out_7_bits_uop_REG_robIdx_flag <= io_in_7_bits_uop_robIdx_flag; // @[WbArbiter.scala 336:32]
    io_out_7_bits_uop_REG_robIdx_value <= io_in_7_bits_uop_robIdx_value; // @[WbArbiter.scala 336:32]
    io_out_8_valid_REG <= _io_out_8_valid_T & ~_io_out_8_valid_T_4; // @[WbArbiter.scala 335:38]
    io_out_8_bits_uop_REG_robIdx_flag <= io_in_8_bits_uop_robIdx_flag; // @[WbArbiter.scala 336:32]
    io_out_8_bits_uop_REG_robIdx_value <= io_in_8_bits_uop_robIdx_value; // @[WbArbiter.scala 336:32]
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
  io_out_5_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_exceptionVec_2 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_exceptionVec_3 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_exceptionVec_8 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_exceptionVec_9 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_exceptionVec_11 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_trigger_backendHit_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_trigger_backendHit_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_trigger_backendHit_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_trigger_backendHit_3 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_trigger_backendHit_4 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_cf_trigger_backendHit_5 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_ctrl_flushPipe = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_robIdx_flag = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_5_bits_uop_REG_robIdx_value = _RAND_14[6:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_6_valid_REG = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_6_bits_uop_REG_robIdx_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_6_bits_uop_REG_robIdx_value = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_7_valid_REG = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_7_bits_uop_REG_robIdx_flag = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_7_bits_uop_REG_robIdx_value = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_8_valid_REG = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_8_bits_uop_REG_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_8_bits_uop_REG_robIdx_value = _RAND_23[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
