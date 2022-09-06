module WbArbiter_1(
  input         clock,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input         io_in_0_bits_uop_cf_exceptionVec_2,
  input         io_in_0_bits_uop_cf_exceptionVec_3,
  input         io_in_0_bits_uop_cf_exceptionVec_8,
  input         io_in_0_bits_uop_cf_exceptionVec_9,
  input         io_in_0_bits_uop_cf_exceptionVec_11,
  input         io_in_0_bits_uop_cf_trigger_backendHit_0,
  input         io_in_0_bits_uop_cf_trigger_backendHit_1,
  input         io_in_0_bits_uop_cf_trigger_backendHit_2,
  input         io_in_0_bits_uop_cf_trigger_backendHit_3,
  input         io_in_0_bits_uop_cf_trigger_backendHit_4,
  input         io_in_0_bits_uop_cf_trigger_backendHit_5,
  input         io_in_0_bits_uop_ctrl_rfWen,
  input         io_in_0_bits_uop_ctrl_fpWen,
  input         io_in_0_bits_uop_ctrl_flushPipe,
  input  [6:0]  io_in_0_bits_uop_pdest,
  input         io_in_0_bits_uop_robIdx_flag,
  input  [6:0]  io_in_0_bits_uop_robIdx_value,
  input  [63:0] io_in_0_bits_data,
  input         io_in_0_bits_redirectValid,
  input         io_in_0_bits_redirect_cfiUpdate_isMisPred,
  input         io_in_0_bits_debug_isPerfCnt,
  input         io_in_1_valid,
  input         io_in_1_bits_uop_cf_trigger_backendHit_0,
  input         io_in_1_bits_uop_cf_trigger_backendHit_1,
  input         io_in_1_bits_uop_cf_trigger_backendHit_2,
  input         io_in_1_bits_uop_cf_trigger_backendHit_3,
  input         io_in_1_bits_uop_cf_trigger_backendHit_4,
  input         io_in_1_bits_uop_cf_trigger_backendHit_5,
  input         io_in_1_bits_uop_ctrl_rfWen,
  input         io_in_1_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_1_bits_uop_pdest,
  input         io_in_1_bits_uop_robIdx_flag,
  input  [6:0]  io_in_1_bits_uop_robIdx_value,
  input  [63:0] io_in_1_bits_data,
  input         io_in_2_valid,
  input         io_in_2_bits_uop_cf_trigger_backendHit_0,
  input         io_in_2_bits_uop_cf_trigger_backendHit_1,
  input         io_in_2_bits_uop_cf_trigger_backendHit_2,
  input         io_in_2_bits_uop_cf_trigger_backendHit_3,
  input         io_in_2_bits_uop_cf_trigger_backendHit_4,
  input         io_in_2_bits_uop_cf_trigger_backendHit_5,
  input         io_in_2_bits_uop_ctrl_rfWen,
  input         io_in_2_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_2_bits_uop_pdest,
  input         io_in_2_bits_uop_robIdx_flag,
  input  [6:0]  io_in_2_bits_uop_robIdx_value,
  input  [63:0] io_in_2_bits_data,
  input         io_in_3_valid,
  input         io_in_3_bits_uop_cf_trigger_backendHit_0,
  input         io_in_3_bits_uop_cf_trigger_backendHit_1,
  input         io_in_3_bits_uop_cf_trigger_backendHit_2,
  input         io_in_3_bits_uop_cf_trigger_backendHit_3,
  input         io_in_3_bits_uop_cf_trigger_backendHit_4,
  input         io_in_3_bits_uop_cf_trigger_backendHit_5,
  input         io_in_3_bits_uop_ctrl_rfWen,
  input         io_in_3_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_3_bits_uop_pdest,
  input         io_in_3_bits_uop_robIdx_flag,
  input  [6:0]  io_in_3_bits_uop_robIdx_value,
  input  [63:0] io_in_3_bits_data,
  input         io_in_4_valid,
  input         io_in_4_bits_uop_ctrl_rfWen,
  input         io_in_4_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_4_bits_uop_pdest,
  input         io_in_4_bits_uop_robIdx_flag,
  input  [6:0]  io_in_4_bits_uop_robIdx_value,
  input  [63:0] io_in_4_bits_data,
  input         io_in_5_valid,
  input         io_in_5_bits_uop_ctrl_rfWen,
  input         io_in_5_bits_uop_ctrl_fpWen,
  input  [6:0]  io_in_5_bits_uop_pdest,
  input         io_in_5_bits_uop_robIdx_flag,
  input  [6:0]  io_in_5_bits_uop_robIdx_value,
  input  [63:0] io_in_5_bits_data,
  output        io_out_0_valid,
  output        io_out_0_bits_uop_cf_trigger_backendHit_0,
  output        io_out_0_bits_uop_cf_trigger_backendHit_1,
  output        io_out_0_bits_uop_cf_trigger_backendHit_2,
  output        io_out_0_bits_uop_cf_trigger_backendHit_3,
  output        io_out_0_bits_uop_cf_trigger_backendHit_4,
  output        io_out_0_bits_uop_cf_trigger_backendHit_5,
  output        io_out_0_bits_uop_ctrl_rfWen,
  output        io_out_0_bits_uop_ctrl_fpWen,
  output [6:0]  io_out_0_bits_uop_pdest,
  output        io_out_0_bits_uop_robIdx_flag,
  output [6:0]  io_out_0_bits_uop_robIdx_value,
  output [63:0] io_out_0_bits_data,
  output        io_out_1_valid,
  output        io_out_1_bits_uop_cf_trigger_backendHit_0,
  output        io_out_1_bits_uop_cf_trigger_backendHit_1,
  output        io_out_1_bits_uop_cf_trigger_backendHit_2,
  output        io_out_1_bits_uop_cf_trigger_backendHit_3,
  output        io_out_1_bits_uop_cf_trigger_backendHit_4,
  output        io_out_1_bits_uop_cf_trigger_backendHit_5,
  output        io_out_1_bits_uop_ctrl_rfWen,
  output        io_out_1_bits_uop_ctrl_fpWen,
  output [6:0]  io_out_1_bits_uop_pdest,
  output        io_out_1_bits_uop_robIdx_flag,
  output [6:0]  io_out_1_bits_uop_robIdx_value,
  output [63:0] io_out_1_bits_data,
  output        io_out_2_valid,
  output        io_out_2_bits_uop_ctrl_rfWen,
  output        io_out_2_bits_uop_ctrl_fpWen,
  output [6:0]  io_out_2_bits_uop_pdest,
  output [63:0] io_out_2_bits_data,
  output        io_out_3_valid,
  output        io_out_3_bits_uop_ctrl_rfWen,
  output        io_out_3_bits_uop_ctrl_fpWen,
  output [6:0]  io_out_3_bits_uop_pdest,
  output [63:0] io_out_3_bits_data,
  output        io_out_4_valid,
  output        io_out_4_bits_uop_cf_exceptionVec_2,
  output        io_out_4_bits_uop_cf_exceptionVec_3,
  output        io_out_4_bits_uop_cf_exceptionVec_8,
  output        io_out_4_bits_uop_cf_exceptionVec_9,
  output        io_out_4_bits_uop_cf_exceptionVec_11,
  output        io_out_4_bits_uop_cf_trigger_backendHit_0,
  output        io_out_4_bits_uop_cf_trigger_backendHit_1,
  output        io_out_4_bits_uop_cf_trigger_backendHit_2,
  output        io_out_4_bits_uop_cf_trigger_backendHit_3,
  output        io_out_4_bits_uop_cf_trigger_backendHit_4,
  output        io_out_4_bits_uop_cf_trigger_backendHit_5,
  output        io_out_4_bits_uop_ctrl_rfWen,
  output        io_out_4_bits_uop_ctrl_fpWen,
  output        io_out_4_bits_uop_ctrl_flushPipe,
  output [6:0]  io_out_4_bits_uop_pdest,
  output        io_out_4_bits_uop_robIdx_flag,
  output [6:0]  io_out_4_bits_uop_robIdx_value,
  output [63:0] io_out_4_bits_data,
  output        io_out_4_bits_redirectValid,
  output        io_out_4_bits_redirect_cfiUpdate_isMisPred,
  output        io_out_4_bits_debug_isPerfCnt
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
  reg [63:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [63:0] _RAND_33;
`endif // RANDOMIZE_REG_INIT
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
  wire [7:0] _io_out_0_valid_flushItself_T_1 = {io_in_1_bits_uop_robIdx_flag,io_in_1_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _io_out_0_valid_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _io_out_0_valid_flushItself_T_3 = _io_out_0_valid_flushItself_T_1 == _io_out_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_out_0_valid_flushItself = io_redirect_bits_level & _io_out_0_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_out_0_valid_differentFlag = io_in_1_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_out_0_valid_compare = io_in_1_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_out_0_valid_T = io_out_0_valid_differentFlag ^ io_out_0_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_out_0_valid_T_2 = io_redirect_valid & (io_out_0_valid_flushItself | _io_out_0_valid_T); // @[Rob.scala 36:20]
  reg  io_out_0_valid_REG; // @[WbArbiter.scala 168:29]
  reg  io_out_0_bits_uop_REG_cf_trigger_backendHit_0; // @[WbArbiter.scala 169:32]
  reg  io_out_0_bits_uop_REG_cf_trigger_backendHit_1; // @[WbArbiter.scala 169:32]
  reg  io_out_0_bits_uop_REG_cf_trigger_backendHit_2; // @[WbArbiter.scala 169:32]
  reg  io_out_0_bits_uop_REG_cf_trigger_backendHit_3; // @[WbArbiter.scala 169:32]
  reg  io_out_0_bits_uop_REG_cf_trigger_backendHit_4; // @[WbArbiter.scala 169:32]
  reg  io_out_0_bits_uop_REG_cf_trigger_backendHit_5; // @[WbArbiter.scala 169:32]
  reg  io_out_0_bits_uop_REG_ctrl_rfWen; // @[WbArbiter.scala 169:32]
  reg  io_out_0_bits_uop_REG_ctrl_fpWen; // @[WbArbiter.scala 169:32]
  reg [6:0] io_out_0_bits_uop_REG_pdest; // @[WbArbiter.scala 169:32]
  reg  io_out_0_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 169:32]
  reg [6:0] io_out_0_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 169:32]
  wire [7:0] _io_out_1_valid_flushItself_T_1 = {io_in_2_bits_uop_robIdx_flag,io_in_2_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _io_out_1_valid_flushItself_T_3 = _io_out_1_valid_flushItself_T_1 == _io_out_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_out_1_valid_flushItself = io_redirect_bits_level & _io_out_1_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_out_1_valid_differentFlag = io_in_2_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_out_1_valid_compare = io_in_2_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_out_1_valid_T = io_out_1_valid_differentFlag ^ io_out_1_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_out_1_valid_T_2 = io_redirect_valid & (io_out_1_valid_flushItself | _io_out_1_valid_T); // @[Rob.scala 36:20]
  reg  io_out_1_valid_REG; // @[WbArbiter.scala 168:29]
  reg  io_out_1_bits_uop_REG_cf_trigger_backendHit_0; // @[WbArbiter.scala 169:32]
  reg  io_out_1_bits_uop_REG_cf_trigger_backendHit_1; // @[WbArbiter.scala 169:32]
  reg  io_out_1_bits_uop_REG_cf_trigger_backendHit_2; // @[WbArbiter.scala 169:32]
  reg  io_out_1_bits_uop_REG_cf_trigger_backendHit_3; // @[WbArbiter.scala 169:32]
  reg  io_out_1_bits_uop_REG_cf_trigger_backendHit_4; // @[WbArbiter.scala 169:32]
  reg  io_out_1_bits_uop_REG_cf_trigger_backendHit_5; // @[WbArbiter.scala 169:32]
  reg  io_out_1_bits_uop_REG_ctrl_rfWen; // @[WbArbiter.scala 169:32]
  reg  io_out_1_bits_uop_REG_ctrl_fpWen; // @[WbArbiter.scala 169:32]
  reg [6:0] io_out_1_bits_uop_REG_pdest; // @[WbArbiter.scala 169:32]
  reg  io_out_1_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 169:32]
  reg [6:0] io_out_1_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 169:32]
  wire [7:0] _io_out_2_valid_flushItself_T_1 = {io_in_4_bits_uop_robIdx_flag,io_in_4_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _io_out_2_valid_flushItself_T_3 = _io_out_2_valid_flushItself_T_1 == _io_out_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_out_2_valid_flushItself = io_redirect_bits_level & _io_out_2_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_out_2_valid_differentFlag = io_in_4_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_out_2_valid_compare = io_in_4_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_out_2_valid_T = io_out_2_valid_differentFlag ^ io_out_2_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_out_2_valid_T_2 = io_redirect_valid & (io_out_2_valid_flushItself | _io_out_2_valid_T); // @[Rob.scala 36:20]
  reg  io_out_2_valid_REG; // @[WbArbiter.scala 172:29]
  reg  io_out_2_bits_REG_uop_ctrl_rfWen; // @[WbArbiter.scala 173:28]
  reg  io_out_2_bits_REG_uop_ctrl_fpWen; // @[WbArbiter.scala 173:28]
  reg [6:0] io_out_2_bits_REG_uop_pdest; // @[WbArbiter.scala 173:28]
  reg [63:0] io_out_2_bits_REG_data; // @[WbArbiter.scala 173:28]
  wire [7:0] _io_out_3_valid_flushItself_T_1 = {io_in_5_bits_uop_robIdx_flag,io_in_5_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _io_out_3_valid_flushItself_T_3 = _io_out_3_valid_flushItself_T_1 == _io_out_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  io_out_3_valid_flushItself = io_redirect_bits_level & _io_out_3_valid_flushItself_T_3; // @[Rob.scala 35:51]
  wire  io_out_3_valid_differentFlag = io_in_5_bits_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  io_out_3_valid_compare = io_in_5_bits_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _io_out_3_valid_T = io_out_3_valid_differentFlag ^ io_out_3_valid_compare; // @[CircularQueuePtr.scala 87:19]
  wire  _io_out_3_valid_T_2 = io_redirect_valid & (io_out_3_valid_flushItself | _io_out_3_valid_T); // @[Rob.scala 36:20]
  reg  io_out_3_valid_REG; // @[WbArbiter.scala 172:29]
  reg  io_out_3_bits_REG_uop_ctrl_rfWen; // @[WbArbiter.scala 173:28]
  reg  io_out_3_bits_REG_uop_ctrl_fpWen; // @[WbArbiter.scala 173:28]
  reg [6:0] io_out_3_bits_REG_uop_pdest; // @[WbArbiter.scala 173:28]
  reg [63:0] io_out_3_bits_REG_data; // @[WbArbiter.scala 173:28]
  ExuWbArbiter_1 arb ( // @[WbArbiter.scala 184:21]
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
  assign io_in_0_ready = arb_io_in_1_ready; // @[WbArbiter.scala 186:15]
  assign io_out_0_valid = io_out_0_valid_REG; // @[WbArbiter.scala 168:19]
  assign io_out_0_bits_uop_cf_trigger_backendHit_0 = io_out_0_bits_uop_REG_cf_trigger_backendHit_0; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_1 = io_out_0_bits_uop_REG_cf_trigger_backendHit_1; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_2 = io_out_0_bits_uop_REG_cf_trigger_backendHit_2; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_3 = io_out_0_bits_uop_REG_cf_trigger_backendHit_3; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_4 = io_out_0_bits_uop_REG_cf_trigger_backendHit_4; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_cf_trigger_backendHit_5 = io_out_0_bits_uop_REG_cf_trigger_backendHit_5; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_ctrl_rfWen = io_out_0_bits_uop_REG_ctrl_rfWen; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_ctrl_fpWen = io_out_0_bits_uop_REG_ctrl_fpWen; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_pdest = io_out_0_bits_uop_REG_pdest; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_robIdx_flag = io_out_0_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_uop_robIdx_value = io_out_0_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 169:22]
  assign io_out_0_bits_data = io_in_1_bits_data; // @[WbArbiter.scala 164:16]
  assign io_out_1_valid = io_out_1_valid_REG; // @[WbArbiter.scala 168:19]
  assign io_out_1_bits_uop_cf_trigger_backendHit_0 = io_out_1_bits_uop_REG_cf_trigger_backendHit_0; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_cf_trigger_backendHit_1 = io_out_1_bits_uop_REG_cf_trigger_backendHit_1; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_cf_trigger_backendHit_2 = io_out_1_bits_uop_REG_cf_trigger_backendHit_2; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_cf_trigger_backendHit_3 = io_out_1_bits_uop_REG_cf_trigger_backendHit_3; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_cf_trigger_backendHit_4 = io_out_1_bits_uop_REG_cf_trigger_backendHit_4; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_cf_trigger_backendHit_5 = io_out_1_bits_uop_REG_cf_trigger_backendHit_5; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_ctrl_rfWen = io_out_1_bits_uop_REG_ctrl_rfWen; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_ctrl_fpWen = io_out_1_bits_uop_REG_ctrl_fpWen; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_pdest = io_out_1_bits_uop_REG_pdest; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_robIdx_flag = io_out_1_bits_uop_REG_robIdx_flag; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_uop_robIdx_value = io_out_1_bits_uop_REG_robIdx_value; // @[WbArbiter.scala 169:22]
  assign io_out_1_bits_data = io_in_2_bits_data; // @[WbArbiter.scala 164:16]
  assign io_out_2_valid = io_out_2_valid_REG; // @[WbArbiter.scala 172:19]
  assign io_out_2_bits_uop_ctrl_rfWen = io_out_2_bits_REG_uop_ctrl_rfWen; // @[WbArbiter.scala 173:18]
  assign io_out_2_bits_uop_ctrl_fpWen = io_out_2_bits_REG_uop_ctrl_fpWen; // @[WbArbiter.scala 173:18]
  assign io_out_2_bits_uop_pdest = io_out_2_bits_REG_uop_pdest; // @[WbArbiter.scala 173:18]
  assign io_out_2_bits_data = io_out_2_bits_REG_data; // @[WbArbiter.scala 173:18]
  assign io_out_3_valid = io_out_3_valid_REG; // @[WbArbiter.scala 172:19]
  assign io_out_3_bits_uop_ctrl_rfWen = io_out_3_bits_REG_uop_ctrl_rfWen; // @[WbArbiter.scala 173:18]
  assign io_out_3_bits_uop_ctrl_fpWen = io_out_3_bits_REG_uop_ctrl_fpWen; // @[WbArbiter.scala 173:18]
  assign io_out_3_bits_uop_pdest = io_out_3_bits_REG_uop_pdest; // @[WbArbiter.scala 173:18]
  assign io_out_3_bits_data = io_out_3_bits_REG_data; // @[WbArbiter.scala 173:18]
  assign io_out_4_valid = arb_io_out_valid; // @[WbArbiter.scala 187:15]
  assign io_out_4_bits_uop_cf_exceptionVec_2 = arb_io_out_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_exceptionVec_3 = arb_io_out_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_exceptionVec_8 = arb_io_out_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_exceptionVec_9 = arb_io_out_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_exceptionVec_11 = arb_io_out_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_trigger_backendHit_0 = arb_io_out_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_trigger_backendHit_1 = arb_io_out_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_trigger_backendHit_2 = arb_io_out_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_trigger_backendHit_3 = arb_io_out_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_trigger_backendHit_4 = arb_io_out_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_cf_trigger_backendHit_5 = arb_io_out_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_ctrl_rfWen = arb_io_out_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_ctrl_fpWen = arb_io_out_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_ctrl_flushPipe = arb_io_out_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_pdest = arb_io_out_bits_uop_pdest; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_robIdx_flag = arb_io_out_bits_uop_robIdx_flag; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_uop_robIdx_value = arb_io_out_bits_uop_robIdx_value; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_data = arb_io_out_bits_data; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_redirectValid = arb_io_out_bits_redirectValid; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_redirect_cfiUpdate_isMisPred = arb_io_out_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 188:14]
  assign io_out_4_bits_debug_isPerfCnt = arb_io_out_bits_debug_isPerfCnt; // @[WbArbiter.scala 188:14]
  assign arb_clock = clock;
  assign arb_io_redirect_valid = io_redirect_valid; // @[WbArbiter.scala 185:21]
  assign arb_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[WbArbiter.scala 185:21]
  assign arb_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[WbArbiter.scala 185:21]
  assign arb_io_redirect_bits_level = io_redirect_bits_level; // @[WbArbiter.scala 185:21]
  assign arb_io_in_0_valid = io_in_3_valid; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_0 = io_in_3_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_1 = io_in_3_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_2 = io_in_3_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_3 = io_in_3_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_4 = io_in_3_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_cf_trigger_backendHit_5 = io_in_3_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_ctrl_rfWen = io_in_3_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_ctrl_fpWen = io_in_3_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_pdest = io_in_3_bits_uop_pdest; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_robIdx_flag = io_in_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_uop_robIdx_value = io_in_3_bits_uop_robIdx_value; // @[WbArbiter.scala 186:15]
  assign arb_io_in_0_bits_data = io_in_3_bits_data; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_valid = io_in_0_valid; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_2 = io_in_0_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_3 = io_in_0_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_8 = io_in_0_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_9 = io_in_0_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_exceptionVec_11 = io_in_0_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_0 = io_in_0_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_1 = io_in_0_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_2 = io_in_0_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_3 = io_in_0_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_4 = io_in_0_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_cf_trigger_backendHit_5 = io_in_0_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_ctrl_rfWen = io_in_0_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_ctrl_fpWen = io_in_0_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_ctrl_flushPipe = io_in_0_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_pdest = io_in_0_bits_uop_pdest; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_robIdx_flag = io_in_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_uop_robIdx_value = io_in_0_bits_uop_robIdx_value; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_data = io_in_0_bits_data; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_redirectValid = io_in_0_bits_redirectValid; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_redirect_cfiUpdate_isMisPred = io_in_0_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 186:15]
  assign arb_io_in_1_bits_debug_isPerfCnt = io_in_0_bits_debug_isPerfCnt; // @[WbArbiter.scala 186:15]
  always @(posedge clock) begin
    io_out_0_valid_REG <= io_in_1_valid & ~_io_out_0_valid_T_2; // @[WbArbiter.scala 168:39]
    io_out_0_bits_uop_REG_cf_trigger_backendHit_0 <= io_in_1_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_cf_trigger_backendHit_1 <= io_in_1_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_cf_trigger_backendHit_2 <= io_in_1_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_cf_trigger_backendHit_3 <= io_in_1_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_cf_trigger_backendHit_4 <= io_in_1_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_cf_trigger_backendHit_5 <= io_in_1_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_ctrl_rfWen <= io_in_1_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_ctrl_fpWen <= io_in_1_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_pdest <= io_in_1_bits_uop_pdest; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_robIdx_flag <= io_in_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 169:32]
    io_out_0_bits_uop_REG_robIdx_value <= io_in_1_bits_uop_robIdx_value; // @[WbArbiter.scala 169:32]
    io_out_1_valid_REG <= io_in_2_valid & ~_io_out_1_valid_T_2; // @[WbArbiter.scala 168:39]
    io_out_1_bits_uop_REG_cf_trigger_backendHit_0 <= io_in_2_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_cf_trigger_backendHit_1 <= io_in_2_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_cf_trigger_backendHit_2 <= io_in_2_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_cf_trigger_backendHit_3 <= io_in_2_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_cf_trigger_backendHit_4 <= io_in_2_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_cf_trigger_backendHit_5 <= io_in_2_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_ctrl_rfWen <= io_in_2_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_ctrl_fpWen <= io_in_2_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_pdest <= io_in_2_bits_uop_pdest; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_robIdx_flag <= io_in_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 169:32]
    io_out_1_bits_uop_REG_robIdx_value <= io_in_2_bits_uop_robIdx_value; // @[WbArbiter.scala 169:32]
    io_out_2_valid_REG <= io_in_4_valid & ~_io_out_2_valid_T_2; // @[WbArbiter.scala 172:39]
    io_out_2_bits_REG_uop_ctrl_rfWen <= io_in_4_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 173:28]
    io_out_2_bits_REG_uop_ctrl_fpWen <= io_in_4_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 173:28]
    io_out_2_bits_REG_uop_pdest <= io_in_4_bits_uop_pdest; // @[WbArbiter.scala 173:28]
    io_out_2_bits_REG_data <= io_in_4_bits_data; // @[WbArbiter.scala 173:28]
    io_out_3_valid_REG <= io_in_5_valid & ~_io_out_3_valid_T_2; // @[WbArbiter.scala 172:39]
    io_out_3_bits_REG_uop_ctrl_rfWen <= io_in_5_bits_uop_ctrl_rfWen; // @[WbArbiter.scala 173:28]
    io_out_3_bits_REG_uop_ctrl_fpWen <= io_in_5_bits_uop_ctrl_fpWen; // @[WbArbiter.scala 173:28]
    io_out_3_bits_REG_uop_pdest <= io_in_5_bits_uop_pdest; // @[WbArbiter.scala 173:28]
    io_out_3_bits_REG_data <= io_in_5_bits_data; // @[WbArbiter.scala 173:28]
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
  io_out_0_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_cf_trigger_backendHit_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_cf_trigger_backendHit_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_cf_trigger_backendHit_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_cf_trigger_backendHit_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_cf_trigger_backendHit_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_cf_trigger_backendHit_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_ctrl_rfWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_ctrl_fpWen = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_pdest = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_robIdx_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_0_bits_uop_REG_robIdx_value = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_1_valid_REG = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_cf_trigger_backendHit_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_cf_trigger_backendHit_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_cf_trigger_backendHit_2 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_cf_trigger_backendHit_3 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_cf_trigger_backendHit_4 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_cf_trigger_backendHit_5 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_ctrl_rfWen = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_ctrl_fpWen = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_pdest = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_robIdx_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_1_bits_uop_REG_robIdx_value = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  io_out_2_valid_REG = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_out_2_bits_REG_uop_ctrl_rfWen = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_out_2_bits_REG_uop_ctrl_fpWen = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_out_2_bits_REG_uop_pdest = _RAND_27[6:0];
  _RAND_28 = {2{`RANDOM}};
  io_out_2_bits_REG_data = _RAND_28[63:0];
  _RAND_29 = {1{`RANDOM}};
  io_out_3_valid_REG = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_out_3_bits_REG_uop_ctrl_rfWen = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_out_3_bits_REG_uop_ctrl_fpWen = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_out_3_bits_REG_uop_pdest = _RAND_32[6:0];
  _RAND_33 = {2{`RANDOM}};
  io_out_3_bits_REG_data = _RAND_33[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
