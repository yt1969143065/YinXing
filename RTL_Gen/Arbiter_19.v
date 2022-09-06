module Arbiter_19(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input         io_in_0_bits_uop_cf_trigger_backendHit_0,
  input         io_in_0_bits_uop_cf_trigger_backendHit_1,
  input         io_in_0_bits_uop_cf_trigger_backendHit_2,
  input         io_in_0_bits_uop_cf_trigger_backendHit_3,
  input         io_in_0_bits_uop_cf_trigger_backendHit_4,
  input         io_in_0_bits_uop_cf_trigger_backendHit_5,
  input         io_in_0_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_0_bits_uop_cf_pd_brType,
  input         io_in_0_bits_uop_cf_pd_isCall,
  input         io_in_0_bits_uop_cf_pd_isRet,
  input         io_in_0_bits_uop_ctrl_rfWen,
  input         io_in_0_bits_uop_ctrl_fpWen,
  input  [19:0] io_in_0_bits_uop_ctrl_imm,
  input  [6:0]  io_in_0_bits_uop_pdest,
  input         io_in_0_bits_uop_robIdx_flag,
  input  [6:0]  io_in_0_bits_uop_robIdx_value,
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
  input         io_in_1_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_1_bits_uop_cf_pd_brType,
  input         io_in_1_bits_uop_cf_pd_isCall,
  input         io_in_1_bits_uop_cf_pd_isRet,
  input         io_in_1_bits_uop_ctrl_rfWen,
  input         io_in_1_bits_uop_ctrl_fpWen,
  input         io_in_1_bits_uop_ctrl_flushPipe,
  input  [19:0] io_in_1_bits_uop_ctrl_imm,
  input  [6:0]  io_in_1_bits_uop_pdest,
  input         io_in_1_bits_uop_robIdx_flag,
  input  [6:0]  io_in_1_bits_uop_robIdx_value,
  input         io_in_2_valid,
  input         io_in_2_bits_uop_cf_exceptionVec_2,
  input         io_in_2_bits_uop_cf_trigger_backendHit_0,
  input         io_in_2_bits_uop_cf_trigger_backendHit_1,
  input         io_in_2_bits_uop_cf_trigger_backendHit_2,
  input         io_in_2_bits_uop_cf_trigger_backendHit_3,
  input         io_in_2_bits_uop_cf_trigger_backendHit_4,
  input         io_in_2_bits_uop_cf_trigger_backendHit_5,
  input         io_in_2_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_2_bits_uop_cf_pd_brType,
  input         io_in_2_bits_uop_cf_pd_isCall,
  input         io_in_2_bits_uop_cf_pd_isRet,
  input         io_in_2_bits_uop_ctrl_rfWen,
  input         io_in_2_bits_uop_ctrl_fpWen,
  input  [19:0] io_in_2_bits_uop_ctrl_imm,
  input  [6:0]  io_in_2_bits_uop_pdest,
  input         io_in_2_bits_uop_robIdx_flag,
  input  [6:0]  io_in_2_bits_uop_robIdx_value,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input         io_in_3_bits_uop_cf_trigger_backendHit_0,
  input         io_in_3_bits_uop_cf_trigger_backendHit_1,
  input         io_in_3_bits_uop_cf_trigger_backendHit_2,
  input         io_in_3_bits_uop_cf_trigger_backendHit_3,
  input         io_in_3_bits_uop_cf_trigger_backendHit_4,
  input         io_in_3_bits_uop_cf_trigger_backendHit_5,
  input         io_in_3_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_3_bits_uop_cf_pd_brType,
  input         io_in_3_bits_uop_cf_pd_isCall,
  input         io_in_3_bits_uop_cf_pd_isRet,
  input         io_in_3_bits_uop_ctrl_rfWen,
  input         io_in_3_bits_uop_ctrl_fpWen,
  input  [19:0] io_in_3_bits_uop_ctrl_imm,
  input  [6:0]  io_in_3_bits_uop_pdest,
  input         io_in_3_bits_uop_robIdx_flag,
  input  [6:0]  io_in_3_bits_uop_robIdx_value,
  input         io_out_ready,
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
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output        io_out_bits_uop_ctrl_flushPipe,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output [6:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [6:0]  io_out_bits_uop_robIdx_value
);
  wire [6:0] _GEN_143 = io_in_2_valid ? io_in_2_bits_uop_robIdx_value : io_in_3_bits_uop_robIdx_value; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_144 = io_in_2_valid ? io_in_2_bits_uop_robIdx_flag : io_in_3_bits_uop_robIdx_flag; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [6:0] _GEN_146 = io_in_2_valid ? io_in_2_bits_uop_pdest : io_in_3_bits_uop_pdest; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [19:0] _GEN_171 = io_in_2_valid ? io_in_2_bits_uop_ctrl_imm : io_in_3_bits_uop_ctrl_imm; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_178 = io_in_2_valid ? io_in_2_bits_uop_ctrl_fpWen : io_in_3_bits_uop_ctrl_fpWen; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_179 = io_in_2_valid ? io_in_2_bits_uop_ctrl_rfWen : io_in_3_bits_uop_ctrl_rfWen; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_201 = io_in_2_valid ? io_in_2_bits_uop_cf_pd_isRet : io_in_3_bits_uop_cf_pd_isRet; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_202 = io_in_2_valid ? io_in_2_bits_uop_cf_pd_isCall : io_in_3_bits_uop_cf_pd_isCall; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [1:0] _GEN_203 = io_in_2_valid ? io_in_2_bits_uop_cf_pd_brType : io_in_3_bits_uop_cf_pd_brType; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_204 = io_in_2_valid ? io_in_2_bits_uop_cf_pd_isRVC : io_in_3_bits_uop_cf_pd_isRVC; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_218 = io_in_2_valid ? io_in_2_bits_uop_cf_trigger_backendHit_0 : io_in_3_bits_uop_cf_trigger_backendHit_0; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_219 = io_in_2_valid ? io_in_2_bits_uop_cf_trigger_backendHit_1 : io_in_3_bits_uop_cf_trigger_backendHit_1; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_220 = io_in_2_valid ? io_in_2_bits_uop_cf_trigger_backendHit_2 : io_in_3_bits_uop_cf_trigger_backendHit_2; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_221 = io_in_2_valid ? io_in_2_bits_uop_cf_trigger_backendHit_3 : io_in_3_bits_uop_cf_trigger_backendHit_3; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_222 = io_in_2_valid ? io_in_2_bits_uop_cf_trigger_backendHit_4 : io_in_3_bits_uop_cf_trigger_backendHit_4; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_223 = io_in_2_valid ? io_in_2_bits_uop_cf_trigger_backendHit_5 : io_in_3_bits_uop_cf_trigger_backendHit_5; // @[Arbiter.scala 139:15 141:26 143:19]
  wire  _GEN_232 = io_in_2_valid & io_in_2_bits_uop_cf_exceptionVec_2; // @[Arbiter.scala 139:15 141:26 143:19]
  wire [6:0] _GEN_392 = io_in_1_valid ? io_in_1_bits_uop_robIdx_value : _GEN_143; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_393 = io_in_1_valid ? io_in_1_bits_uop_robIdx_flag : _GEN_144; // @[Arbiter.scala 141:26 143:19]
  wire [6:0] _GEN_395 = io_in_1_valid ? io_in_1_bits_uop_pdest : _GEN_146; // @[Arbiter.scala 141:26 143:19]
  wire [19:0] _GEN_420 = io_in_1_valid ? io_in_1_bits_uop_ctrl_imm : _GEN_171; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_427 = io_in_1_valid ? io_in_1_bits_uop_ctrl_fpWen : _GEN_178; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_428 = io_in_1_valid ? io_in_1_bits_uop_ctrl_rfWen : _GEN_179; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_450 = io_in_1_valid ? io_in_1_bits_uop_cf_pd_isRet : _GEN_201; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_451 = io_in_1_valid ? io_in_1_bits_uop_cf_pd_isCall : _GEN_202; // @[Arbiter.scala 141:26 143:19]
  wire [1:0] _GEN_452 = io_in_1_valid ? io_in_1_bits_uop_cf_pd_brType : _GEN_203; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_453 = io_in_1_valid ? io_in_1_bits_uop_cf_pd_isRVC : _GEN_204; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_467 = io_in_1_valid ? io_in_1_bits_uop_cf_trigger_backendHit_0 : _GEN_218; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_468 = io_in_1_valid ? io_in_1_bits_uop_cf_trigger_backendHit_1 : _GEN_219; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_469 = io_in_1_valid ? io_in_1_bits_uop_cf_trigger_backendHit_2 : _GEN_220; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_470 = io_in_1_valid ? io_in_1_bits_uop_cf_trigger_backendHit_3 : _GEN_221; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_471 = io_in_1_valid ? io_in_1_bits_uop_cf_trigger_backendHit_4 : _GEN_222; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_472 = io_in_1_valid ? io_in_1_bits_uop_cf_trigger_backendHit_5 : _GEN_223; // @[Arbiter.scala 141:26 143:19]
  wire  _GEN_481 = io_in_1_valid ? io_in_1_bits_uop_cf_exceptionVec_2 : _GEN_232; // @[Arbiter.scala 141:26 143:19]
  wire  grant_1 = ~io_in_0_valid; // @[Arbiter.scala 46:78]
  wire  grant_3 = ~(io_in_0_valid | io_in_1_valid | io_in_2_valid); // @[Arbiter.scala 46:78]
  assign io_in_0_ready = io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_1_ready = grant_1 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_in_3_ready = grant_3 & io_out_ready; // @[Arbiter.scala 149:19]
  assign io_out_valid = ~grant_3 | io_in_3_valid; // @[Arbiter.scala 150:31]
  assign io_out_bits_uop_cf_exceptionVec_2 = io_in_0_valid ? 1'h0 : _GEN_481; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_3 = io_in_0_valid ? 1'h0 : io_in_1_valid & io_in_1_bits_uop_cf_exceptionVec_3; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_8 = io_in_0_valid ? 1'h0 : io_in_1_valid & io_in_1_bits_uop_cf_exceptionVec_8; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_9 = io_in_0_valid ? 1'h0 : io_in_1_valid & io_in_1_bits_uop_cf_exceptionVec_9; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_exceptionVec_11 = io_in_0_valid ? 1'h0 : io_in_1_valid & io_in_1_bits_uop_cf_exceptionVec_11
    ; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = io_in_0_valid ? io_in_0_bits_uop_cf_trigger_backendHit_0 : _GEN_467; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = io_in_0_valid ? io_in_0_bits_uop_cf_trigger_backendHit_1 : _GEN_468; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = io_in_0_valid ? io_in_0_bits_uop_cf_trigger_backendHit_2 : _GEN_469; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = io_in_0_valid ? io_in_0_bits_uop_cf_trigger_backendHit_3 : _GEN_470; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = io_in_0_valid ? io_in_0_bits_uop_cf_trigger_backendHit_4 : _GEN_471; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = io_in_0_valid ? io_in_0_bits_uop_cf_trigger_backendHit_5 : _GEN_472; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_pd_isRVC = io_in_0_valid ? io_in_0_bits_uop_cf_pd_isRVC : _GEN_453; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_pd_brType = io_in_0_valid ? io_in_0_bits_uop_cf_pd_brType : _GEN_452; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_pd_isCall = io_in_0_valid ? io_in_0_bits_uop_cf_pd_isCall : _GEN_451; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_cf_pd_isRet = io_in_0_valid ? io_in_0_bits_uop_cf_pd_isRet : _GEN_450; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_ctrl_rfWen = io_in_0_valid ? io_in_0_bits_uop_ctrl_rfWen : _GEN_428; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_ctrl_fpWen = io_in_0_valid ? io_in_0_bits_uop_ctrl_fpWen : _GEN_427; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_ctrl_flushPipe = io_in_0_valid ? 1'h0 : io_in_1_valid & io_in_1_bits_uop_ctrl_flushPipe; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_ctrl_imm = io_in_0_valid ? io_in_0_bits_uop_ctrl_imm : _GEN_420; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_pdest = io_in_0_valid ? io_in_0_bits_uop_pdest : _GEN_395; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_robIdx_flag = io_in_0_valid ? io_in_0_bits_uop_robIdx_flag : _GEN_393; // @[Arbiter.scala 141:26 143:19]
  assign io_out_bits_uop_robIdx_value = io_in_0_valid ? io_in_0_bits_uop_robIdx_value : _GEN_392; // @[Arbiter.scala 141:26 143:19]
endmodule
