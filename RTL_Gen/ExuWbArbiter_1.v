module ExuWbArbiter_1(
  input         clock,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input         io_in_0_bits_uop_cf_trigger_backendHit_0,
  input         io_in_0_bits_uop_cf_trigger_backendHit_1,
  input         io_in_0_bits_uop_cf_trigger_backendHit_2,
  input         io_in_0_bits_uop_cf_trigger_backendHit_3,
  input         io_in_0_bits_uop_cf_trigger_backendHit_4,
  input         io_in_0_bits_uop_cf_trigger_backendHit_5,
  input         io_in_0_bits_uop_ctrl_rfWen,
  input         io_in_0_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_0_bits_uop_pdest,
  input         io_in_0_bits_uop_robIdx_flag,
  input  [6:0]  io_in_0_bits_uop_robIdx_value,
  input  [63:0] io_in_0_bits_data,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input         io_in_1_bits_uop_cf_exceptionVec_2,
  input         io_in_1_bits_uop_cf_exceptionVec_3,
  input         io_in_1_bits_uop_cf_exceptionVec_8,
  input         io_in_1_bits_uop_cf_exceptionVec_9,
  input         io_in_1_bits_uop_cf_exceptionVec_11,
  input         io_in_1_bits_uop_cf_trigger_backendHit_0,
  input         io_in_1_bits_uop_cf_trigger_backendHit_1,
  input         io_in_1_bits_uop_cf_trigger_backendHit_2,
  input         io_in_1_bits_uop_cf_trigger_backendHit_3,
  input         io_in_1_bits_uop_cf_trigger_backendHit_4,
  input         io_in_1_bits_uop_cf_trigger_backendHit_5,
  input         io_in_1_bits_uop_ctrl_rfWen,
  input         io_in_1_bits_uop_ctrl_fpWen,
  input         io_in_1_bits_uop_ctrl_flushPipe,
  input  [6:0]  io_in_1_bits_uop_pdest,
  input         io_in_1_bits_uop_robIdx_flag,
  input  [6:0]  io_in_1_bits_uop_robIdx_value,
  input  [63:0] io_in_1_bits_data,
  input         io_in_1_bits_redirectValid,
  input         io_in_1_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_1_bits_debug_isPerfCnt,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_2,
  output        io_out_bits_uop_cf_exceptionVec_3,
  output        io_out_bits_uop_cf_exceptionVec_8,
  output        io_out_bits_uop_cf_exceptionVec_9,
  output        io_out_bits_uop_cf_exceptionVec_11,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output        io_out_bits_uop_ctrl_flushPipe,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value,
  output [63:0] io_out_bits_data,
  output        io_out_bits_redirectValid,
  output        io_out_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_bits_debug_isPerfCnt
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
`endif // RANDOMIZE_REG_INIT
  wire  ctrl_arb_io_in_0_valid; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 43:24]
  wire [6:0] ctrl_arb_io_in_0_bits_uop_pdest; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 43:24]
  wire [6:0] ctrl_arb_io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_ready; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_valid; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 43:24]
  wire [6:0] ctrl_arb_io_in_1_bits_uop_pdest; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 43:24]
  wire [6:0] ctrl_arb_io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_valid; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 43:24]
  wire [6:0] ctrl_arb_io_out_bits_uop_pdest; // @[WbArbiter.scala 43:24]
  wire  ctrl_arb_io_out_bits_uop_robIdx_flag; // @[WbArbiter.scala 43:24]
  wire [6:0] ctrl_arb_io_out_bits_uop_robIdx_value; // @[WbArbiter.scala 43:24]
  wire [7:0] _io_out_valid_flushItself_T_1 = {ctrl_arb_io_out_bits_uop_robIdx_flag,ctrl_arb_io_out_bits_uop_robIdx_value
    }; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _io_out_valid_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _io_out_valid_flushItself_T_3 = _io_out_valid_flushItself_T_1 == _io_out_valid_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_out_valid_flushItself = io_redirect_bits_level & _io_out_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_out_valid_differentFlag = ctrl_arb_io_out_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_out_valid_compare = ctrl_arb_io_out_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_out_valid_T = io_out_valid_differentFlag ^ io_out_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_out_valid_T_2 = io_redirect_valid & (io_out_valid_flushItself | _io_out_valid_T); // @[Rob.scala 36:20]
  reg  io_out_valid_REG; // @[WbArbiter.scala 70:28]
  wire  _sel_T = io_in_0_ready & io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _sel_T_1 = io_in_1_ready & io_in_1_valid; // @[Decoupled.scala 50:35]
  reg [1:0] io_out_bits_REG; // @[WbArbiter.scala 76:33]
  wire [63:0] _io_out_bits_T_386 = io_out_bits_REG[0] ? io_in_0_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_bits_T_387 = io_out_bits_REG[1] ? io_in_1_bits_data : 64'h0; // @[Mux.scala 27:73]
  reg  io_out_bits_uop_REG_cf_exceptionVec_2; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_exceptionVec_3; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_exceptionVec_8; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_exceptionVec_9; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_exceptionVec_11; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_trigger_backendHit_0; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_trigger_backendHit_1; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_trigger_backendHit_2; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_trigger_backendHit_3; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_trigger_backendHit_4; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_cf_trigger_backendHit_5; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_ctrl_rfWen; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_ctrl_fpWen; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_ctrl_flushPipe; // @[WbArbiter.scala 78:31]
  reg [6:0] io_out_bits_uop_REG_pdest; // @[WbArbiter.scala 78:31]
  reg  io_out_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 78:31]
  reg [6:0] io_out_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 78:31]
  Arbiter_16 ctrl_arb ( // @[WbArbiter.scala 43:24]
    .io_in_0_valid(ctrl_arb_io_in_0_valid),
    .io_in_0_bits_uop_cf_trigger_backendHit_0(ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_0),
    .io_in_0_bits_uop_cf_trigger_backendHit_1(ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_1),
    .io_in_0_bits_uop_cf_trigger_backendHit_2(ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_2),
    .io_in_0_bits_uop_cf_trigger_backendHit_3(ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_3),
    .io_in_0_bits_uop_cf_trigger_backendHit_4(ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_4),
    .io_in_0_bits_uop_cf_trigger_backendHit_5(ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_5),
    .io_in_0_bits_uop_ctrl_rfWen(ctrl_arb_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_ctrl_fpWen(ctrl_arb_io_in_0_bits_uop_ctrl_fpWen),
    .io_in_0_bits_uop_pdest(ctrl_arb_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(ctrl_arb_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(ctrl_arb_io_in_0_bits_uop_robIdx_value),
    .io_in_1_ready(ctrl_arb_io_in_1_ready),
    .io_in_1_valid(ctrl_arb_io_in_1_valid),
    .io_in_1_bits_uop_cf_exceptionVec_2(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_2),
    .io_in_1_bits_uop_cf_exceptionVec_3(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_3),
    .io_in_1_bits_uop_cf_exceptionVec_8(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_8),
    .io_in_1_bits_uop_cf_exceptionVec_9(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_9),
    .io_in_1_bits_uop_cf_exceptionVec_11(ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_11),
    .io_in_1_bits_uop_cf_trigger_backendHit_0(ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_0),
    .io_in_1_bits_uop_cf_trigger_backendHit_1(ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_1),
    .io_in_1_bits_uop_cf_trigger_backendHit_2(ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_2),
    .io_in_1_bits_uop_cf_trigger_backendHit_3(ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_3),
    .io_in_1_bits_uop_cf_trigger_backendHit_4(ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_4),
    .io_in_1_bits_uop_cf_trigger_backendHit_5(ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_5),
    .io_in_1_bits_uop_ctrl_rfWen(ctrl_arb_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_ctrl_fpWen(ctrl_arb_io_in_1_bits_uop_ctrl_fpWen),
    .io_in_1_bits_uop_ctrl_flushPipe(ctrl_arb_io_in_1_bits_uop_ctrl_flushPipe),
    .io_in_1_bits_uop_pdest(ctrl_arb_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(ctrl_arb_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(ctrl_arb_io_in_1_bits_uop_robIdx_value),
    .io_out_valid(ctrl_arb_io_out_valid),
    .io_out_bits_uop_cf_exceptionVec_2(ctrl_arb_io_out_bits_uop_cf_exceptionVec_2),
    .io_out_bits_uop_cf_exceptionVec_3(ctrl_arb_io_out_bits_uop_cf_exceptionVec_3),
    .io_out_bits_uop_cf_exceptionVec_8(ctrl_arb_io_out_bits_uop_cf_exceptionVec_8),
    .io_out_bits_uop_cf_exceptionVec_9(ctrl_arb_io_out_bits_uop_cf_exceptionVec_9),
    .io_out_bits_uop_cf_exceptionVec_11(ctrl_arb_io_out_bits_uop_cf_exceptionVec_11),
    .io_out_bits_uop_cf_trigger_backendHit_0(ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_0),
    .io_out_bits_uop_cf_trigger_backendHit_1(ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_1),
    .io_out_bits_uop_cf_trigger_backendHit_2(ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_2),
    .io_out_bits_uop_cf_trigger_backendHit_3(ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_3),
    .io_out_bits_uop_cf_trigger_backendHit_4(ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_4),
    .io_out_bits_uop_cf_trigger_backendHit_5(ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_5),
    .io_out_bits_uop_ctrl_rfWen(ctrl_arb_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(ctrl_arb_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_flushPipe(ctrl_arb_io_out_bits_uop_ctrl_flushPipe),
    .io_out_bits_uop_pdest(ctrl_arb_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(ctrl_arb_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(ctrl_arb_io_out_bits_uop_robIdx_value)
  );
  assign io_in_0_ready = 1'h1; // @[WbArbiter.scala 56:14]
  assign io_in_1_ready = ctrl_arb_io_in_1_ready; // @[WbArbiter.scala 56:14]
  assign io_out_valid = io_out_valid_REG; // @[WbArbiter.scala 70:18]
  assign io_out_bits_uop_cf_exceptionVec_2 = io_out_bits_uop_REG_cf_exceptionVec_2; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_exceptionVec_3 = io_out_bits_uop_REG_cf_exceptionVec_3; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_exceptionVec_8 = io_out_bits_uop_REG_cf_exceptionVec_8; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_exceptionVec_9 = io_out_bits_uop_REG_cf_exceptionVec_9; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_exceptionVec_11 = io_out_bits_uop_REG_cf_exceptionVec_11; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_out_bits_uop_REG_cf_trigger_backendHit_0; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_out_bits_uop_REG_cf_trigger_backendHit_1; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_out_bits_uop_REG_cf_trigger_backendHit_2; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_out_bits_uop_REG_cf_trigger_backendHit_3; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_out_bits_uop_REG_cf_trigger_backendHit_4; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_out_bits_uop_REG_cf_trigger_backendHit_5; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_ctrl_rfWen = io_out_bits_uop_REG_ctrl_rfWen; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_ctrl_fpWen = io_out_bits_uop_REG_ctrl_fpWen; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_ctrl_flushPipe = io_out_bits_uop_REG_ctrl_flushPipe; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_pdest = io_out_bits_uop_REG_pdest; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_robIdx_flag = io_out_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 78:21]
  assign io_out_bits_uop_robIdx_value = io_out_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 78:21]
  assign io_out_bits_data = _io_out_bits_T_386 | _io_out_bits_T_387; // @[Mux.scala 27:73]
  assign io_out_bits_redirectValid = io_out_bits_REG[1] & io_in_1_bits_redirectValid; // @[Mux.scala 27:73]
  assign io_out_bits_redirect_cfiUpdate_isMisPred = io_out_bits_REG[1] & io_in_1_bits_redirect_cfiUpdate_isMisPred; // @[Mux.scala 27:73]
  assign io_out_bits_debug_isPerfCnt = io_out_bits_REG[1] & io_in_1_bits_debug_isPerfCnt; // @[Mux.scala 27:73]
  assign ctrl_arb_io_in_0_valid = io_in_0_valid; // @[WbArbiter.scala 50:16]
  assign ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_0 = io_in_0_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_1 = io_in_0_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_2 = io_in_0_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_3 = io_in_0_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_4 = io_in_0_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_cf_trigger_backendHit_5 = io_in_0_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_ctrl_rfWen = io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_ctrl_fpWen = io_in_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_pdest = io_in_0_bits_uop_pdest; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_robIdx_flag = io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_0_bits_uop_robIdx_value = io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_valid = io_in_1_valid; // @[WbArbiter.scala 50:16]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_2 = io_in_1_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_3 = io_in_1_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_8 = io_in_1_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_9 = io_in_1_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_exceptionVec_11 = io_in_1_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_0 = io_in_1_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_1 = io_in_1_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_2 = io_in_1_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_3 = io_in_1_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_4 = io_in_1_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_cf_trigger_backendHit_5 = io_in_1_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_ctrl_rfWen = io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_ctrl_fpWen = io_in_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_ctrl_flushPipe = io_in_1_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_pdest = io_in_1_bits_uop_pdest; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_robIdx_flag = io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 52:9]
  assign ctrl_arb_io_in_1_bits_uop_robIdx_value = io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 52:9]
  always @(posedge clock) begin
    io_out_valid_REG <= ctrl_arb_io_out_valid & ~_io_out_valid_T_2; // @[WbArbiter.scala 70:51]
    io_out_bits_REG <= {_sel_T_1,_sel_T}; // @[WbArbiter.scala 75:42]
    io_out_bits_uop_REG_cf_exceptionVec_2 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_exceptionVec_3 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_exceptionVec_8 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_exceptionVec_9 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_exceptionVec_11 <= ctrl_arb_io_out_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_trigger_backendHit_0 <= ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_trigger_backendHit_1 <= ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_trigger_backendHit_2 <= ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_trigger_backendHit_3 <= ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_trigger_backendHit_4 <= ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_cf_trigger_backendHit_5 <= ctrl_arb_io_out_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_ctrl_rfWen <= ctrl_arb_io_out_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_ctrl_fpWen <= ctrl_arb_io_out_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_ctrl_flushPipe <= ctrl_arb_io_out_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_pdest <= ctrl_arb_io_out_bits_uop_pdest; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_robIdx_flag <= ctrl_arb_io_out_bits_uop_robIdx_flag; // @[WbArbiter.scala 78:31]
    io_out_bits_uop_REG_robIdx_value <= ctrl_arb_io_out_bits_uop_robIdx_value; // @[WbArbiter.scala 78:31]
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
  io_out_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_bits_REG = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_exceptionVec_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_exceptionVec_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_exceptionVec_8 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_exceptionVec_9 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_exceptionVec_11 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_trigger_backendHit_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_trigger_backendHit_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_trigger_backendHit_2 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_trigger_backendHit_3 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_trigger_backendHit_4 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_bits_uop_REG_cf_trigger_backendHit_5 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_bits_uop_REG_ctrl_rfWen = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_bits_uop_REG_ctrl_fpWen = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_bits_uop_REG_ctrl_flushPipe = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_bits_uop_REG_pdest = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_bits_uop_REG_robIdx_flag = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_bits_uop_REG_robIdx_value = _RAND_18[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
