module Dispatch2Rs_2(
  output        io_in_0_ready,
  input         io_in_0_valid,
  input         io_in_0_bits_cf_trigger_backendEn_0,
  input         io_in_0_bits_cf_trigger_backendEn_1,
  input         io_in_0_bits_cf_trigger_backendHit_0,
  input         io_in_0_bits_cf_trigger_backendHit_1,
  input         io_in_0_bits_cf_trigger_backendHit_2,
  input         io_in_0_bits_cf_trigger_backendHit_3,
  input         io_in_0_bits_cf_trigger_backendHit_4,
  input         io_in_0_bits_cf_trigger_backendHit_5,
  input         io_in_0_bits_cf_pd_isRVC,
  input  [1:0]  io_in_0_bits_cf_pd_brType,
  input         io_in_0_bits_cf_pd_isCall,
  input         io_in_0_bits_cf_pd_isRet,
  input         io_in_0_bits_cf_pred_taken,
  input  [4:0]  io_in_0_bits_cf_ssid,
  input         io_in_0_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_0_bits_cf_ftqOffset,
  input  [1:0]  io_in_0_bits_ctrl_srcType_0,
  input  [1:0]  io_in_0_bits_ctrl_srcType_1,
  input  [1:0]  io_in_0_bits_ctrl_srcType_2,
  input  [3:0]  io_in_0_bits_ctrl_fuType,
  input  [6:0]  io_in_0_bits_ctrl_fuOpType,
  input         io_in_0_bits_ctrl_rfWen,
  input         io_in_0_bits_ctrl_fpWen,
  input  [19:0] io_in_0_bits_ctrl_imm,
  input         io_in_0_bits_ctrl_fpu_isAddSub,
  input         io_in_0_bits_ctrl_fpu_typeTagIn,
  input         io_in_0_bits_ctrl_fpu_typeTagOut,
  input         io_in_0_bits_ctrl_fpu_fromInt,
  input         io_in_0_bits_ctrl_fpu_wflags,
  input         io_in_0_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_0_bits_ctrl_fpu_fmaCmd,
  input         io_in_0_bits_ctrl_fpu_div,
  input         io_in_0_bits_ctrl_fpu_sqrt,
  input         io_in_0_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_0_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_0_bits_ctrl_fpu_fmt,
  input         io_in_0_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_0_bits_ctrl_fpu_rm,
  input  [6:0]  io_in_0_bits_psrc_0,
  input  [6:0]  io_in_0_bits_psrc_1,
  input  [6:0]  io_in_0_bits_psrc_2,
  input  [6:0]  io_in_0_bits_pdest,
  input         io_in_0_bits_robIdx_flag,
  input  [6:0]  io_in_0_bits_robIdx_value,
  input         io_in_0_bits_lqIdx_flag,
  input  [5:0]  io_in_0_bits_lqIdx_value,
  input         io_in_0_bits_sqIdx_flag,
  input  [4:0]  io_in_0_bits_sqIdx_value,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input         io_in_1_bits_cf_trigger_backendEn_0,
  input         io_in_1_bits_cf_trigger_backendEn_1,
  input         io_in_1_bits_cf_trigger_backendHit_0,
  input         io_in_1_bits_cf_trigger_backendHit_1,
  input         io_in_1_bits_cf_trigger_backendHit_2,
  input         io_in_1_bits_cf_trigger_backendHit_3,
  input         io_in_1_bits_cf_trigger_backendHit_4,
  input         io_in_1_bits_cf_trigger_backendHit_5,
  input         io_in_1_bits_cf_pd_isRVC,
  input  [1:0]  io_in_1_bits_cf_pd_brType,
  input         io_in_1_bits_cf_pd_isCall,
  input         io_in_1_bits_cf_pd_isRet,
  input         io_in_1_bits_cf_pred_taken,
  input  [4:0]  io_in_1_bits_cf_ssid,
  input         io_in_1_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_1_bits_cf_ftqOffset,
  input  [1:0]  io_in_1_bits_ctrl_srcType_0,
  input  [1:0]  io_in_1_bits_ctrl_srcType_1,
  input  [1:0]  io_in_1_bits_ctrl_srcType_2,
  input  [3:0]  io_in_1_bits_ctrl_fuType,
  input  [6:0]  io_in_1_bits_ctrl_fuOpType,
  input         io_in_1_bits_ctrl_rfWen,
  input         io_in_1_bits_ctrl_fpWen,
  input  [19:0] io_in_1_bits_ctrl_imm,
  input         io_in_1_bits_ctrl_fpu_isAddSub,
  input         io_in_1_bits_ctrl_fpu_typeTagIn,
  input         io_in_1_bits_ctrl_fpu_typeTagOut,
  input         io_in_1_bits_ctrl_fpu_fromInt,
  input         io_in_1_bits_ctrl_fpu_wflags,
  input         io_in_1_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_1_bits_ctrl_fpu_fmaCmd,
  input         io_in_1_bits_ctrl_fpu_div,
  input         io_in_1_bits_ctrl_fpu_sqrt,
  input         io_in_1_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_1_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_1_bits_ctrl_fpu_fmt,
  input         io_in_1_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_1_bits_ctrl_fpu_rm,
  input  [6:0]  io_in_1_bits_psrc_0,
  input  [6:0]  io_in_1_bits_psrc_1,
  input  [6:0]  io_in_1_bits_psrc_2,
  input  [6:0]  io_in_1_bits_pdest,
  input         io_in_1_bits_robIdx_flag,
  input  [6:0]  io_in_1_bits_robIdx_value,
  input         io_in_1_bits_lqIdx_flag,
  input  [5:0]  io_in_1_bits_lqIdx_value,
  input         io_in_1_bits_sqIdx_flag,
  input  [4:0]  io_in_1_bits_sqIdx_value,
  output [6:0]  io_readFpState_0_req,
  input         io_readFpState_0_resp,
  output [6:0]  io_readFpState_1_req,
  input         io_readFpState_1_resp,
  output [6:0]  io_readFpState_2_req,
  input         io_readFpState_2_resp,
  output [6:0]  io_readFpState_3_req,
  input         io_readFpState_3_resp,
  output [6:0]  io_readFpState_4_req,
  input         io_readFpState_4_resp,
  output [6:0]  io_readFpState_5_req,
  input         io_readFpState_5_resp,
  input         io_out_0_ready,
  output        io_out_0_valid,
  output        io_out_0_bits_cf_trigger_backendEn_0,
  output        io_out_0_bits_cf_trigger_backendEn_1,
  output        io_out_0_bits_cf_trigger_backendHit_0,
  output        io_out_0_bits_cf_trigger_backendHit_1,
  output        io_out_0_bits_cf_trigger_backendHit_2,
  output        io_out_0_bits_cf_trigger_backendHit_3,
  output        io_out_0_bits_cf_trigger_backendHit_4,
  output        io_out_0_bits_cf_trigger_backendHit_5,
  output        io_out_0_bits_cf_pd_isRVC,
  output [1:0]  io_out_0_bits_cf_pd_brType,
  output        io_out_0_bits_cf_pd_isCall,
  output        io_out_0_bits_cf_pd_isRet,
  output        io_out_0_bits_cf_pred_taken,
  output [4:0]  io_out_0_bits_cf_ssid,
  output        io_out_0_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_0_bits_cf_ftqPtr_value,
  output [2:0]  io_out_0_bits_cf_ftqOffset,
  output [1:0]  io_out_0_bits_ctrl_srcType_0,
  output [1:0]  io_out_0_bits_ctrl_srcType_1,
  output [1:0]  io_out_0_bits_ctrl_srcType_2,
  output [3:0]  io_out_0_bits_ctrl_fuType,
  output [6:0]  io_out_0_bits_ctrl_fuOpType,
  output        io_out_0_bits_ctrl_rfWen,
  output        io_out_0_bits_ctrl_fpWen,
  output [19:0] io_out_0_bits_ctrl_imm,
  output        io_out_0_bits_ctrl_fpu_isAddSub,
  output        io_out_0_bits_ctrl_fpu_typeTagIn,
  output        io_out_0_bits_ctrl_fpu_typeTagOut,
  output        io_out_0_bits_ctrl_fpu_fromInt,
  output        io_out_0_bits_ctrl_fpu_wflags,
  output        io_out_0_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_0_bits_ctrl_fpu_fmaCmd,
  output        io_out_0_bits_ctrl_fpu_div,
  output        io_out_0_bits_ctrl_fpu_sqrt,
  output        io_out_0_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_0_bits_ctrl_fpu_typ,
  output [1:0]  io_out_0_bits_ctrl_fpu_fmt,
  output        io_out_0_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_0_bits_ctrl_fpu_rm,
  output        io_out_0_bits_srcState_0,
  output        io_out_0_bits_srcState_1,
  output        io_out_0_bits_srcState_2,
  output [6:0]  io_out_0_bits_psrc_0,
  output [6:0]  io_out_0_bits_psrc_1,
  output [6:0]  io_out_0_bits_psrc_2,
  output [6:0]  io_out_0_bits_pdest,
  output        io_out_0_bits_robIdx_flag,
  output [6:0]  io_out_0_bits_robIdx_value,
  output        io_out_0_bits_lqIdx_flag,
  output [5:0]  io_out_0_bits_lqIdx_value,
  output        io_out_0_bits_sqIdx_flag,
  output [4:0]  io_out_0_bits_sqIdx_value,
  input         io_out_1_ready,
  output        io_out_1_valid,
  output        io_out_1_bits_cf_trigger_backendEn_0,
  output        io_out_1_bits_cf_trigger_backendEn_1,
  output        io_out_1_bits_cf_trigger_backendHit_0,
  output        io_out_1_bits_cf_trigger_backendHit_1,
  output        io_out_1_bits_cf_trigger_backendHit_2,
  output        io_out_1_bits_cf_trigger_backendHit_3,
  output        io_out_1_bits_cf_trigger_backendHit_4,
  output        io_out_1_bits_cf_trigger_backendHit_5,
  output        io_out_1_bits_cf_pd_isRVC,
  output [1:0]  io_out_1_bits_cf_pd_brType,
  output        io_out_1_bits_cf_pd_isCall,
  output        io_out_1_bits_cf_pd_isRet,
  output        io_out_1_bits_cf_pred_taken,
  output [4:0]  io_out_1_bits_cf_ssid,
  output        io_out_1_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_1_bits_cf_ftqPtr_value,
  output [2:0]  io_out_1_bits_cf_ftqOffset,
  output [1:0]  io_out_1_bits_ctrl_srcType_0,
  output [1:0]  io_out_1_bits_ctrl_srcType_1,
  output [1:0]  io_out_1_bits_ctrl_srcType_2,
  output [3:0]  io_out_1_bits_ctrl_fuType,
  output [6:0]  io_out_1_bits_ctrl_fuOpType,
  output        io_out_1_bits_ctrl_rfWen,
  output        io_out_1_bits_ctrl_fpWen,
  output [19:0] io_out_1_bits_ctrl_imm,
  output        io_out_1_bits_ctrl_fpu_isAddSub,
  output        io_out_1_bits_ctrl_fpu_typeTagIn,
  output        io_out_1_bits_ctrl_fpu_typeTagOut,
  output        io_out_1_bits_ctrl_fpu_fromInt,
  output        io_out_1_bits_ctrl_fpu_wflags,
  output        io_out_1_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_1_bits_ctrl_fpu_fmaCmd,
  output        io_out_1_bits_ctrl_fpu_div,
  output        io_out_1_bits_ctrl_fpu_sqrt,
  output        io_out_1_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_1_bits_ctrl_fpu_typ,
  output [1:0]  io_out_1_bits_ctrl_fpu_fmt,
  output        io_out_1_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_1_bits_ctrl_fpu_rm,
  output        io_out_1_bits_srcState_0,
  output        io_out_1_bits_srcState_1,
  output        io_out_1_bits_srcState_2,
  output [6:0]  io_out_1_bits_psrc_0,
  output [6:0]  io_out_1_bits_psrc_1,
  output [6:0]  io_out_1_bits_psrc_2,
  output [6:0]  io_out_1_bits_pdest,
  output        io_out_1_bits_robIdx_flag,
  output [6:0]  io_out_1_bits_robIdx_value,
  output        io_out_1_bits_lqIdx_flag,
  output [5:0]  io_out_1_bits_lqIdx_value,
  output        io_out_1_bits_sqIdx_flag,
  output [4:0]  io_out_1_bits_sqIdx_value
);
  assign io_in_0_ready = io_out_0_ready; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_in_1_ready = io_out_1_ready; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_readFpState_0_req = io_in_0_bits_psrc_0; // @[Dispatch2Rs.scala 103:62]
  assign io_readFpState_1_req = io_in_0_bits_psrc_1; // @[Dispatch2Rs.scala 103:62]
  assign io_readFpState_2_req = io_in_0_bits_psrc_2; // @[Dispatch2Rs.scala 103:62]
  assign io_readFpState_3_req = io_in_1_bits_psrc_0; // @[Dispatch2Rs.scala 103:62]
  assign io_readFpState_4_req = io_in_1_bits_psrc_1; // @[Dispatch2Rs.scala 103:62]
  assign io_readFpState_5_req = io_in_1_bits_psrc_2; // @[Dispatch2Rs.scala 103:62]
  assign io_out_0_valid = io_in_0_valid; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendEn_0 = io_in_0_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendEn_1 = io_in_0_bits_cf_trigger_backendEn_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_0 = io_in_0_bits_cf_trigger_backendHit_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_1 = io_in_0_bits_cf_trigger_backendHit_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_2 = io_in_0_bits_cf_trigger_backendHit_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_3 = io_in_0_bits_cf_trigger_backendHit_3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_4 = io_in_0_bits_cf_trigger_backendHit_4; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_5 = io_in_0_bits_cf_trigger_backendHit_5; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pd_isRVC = io_in_0_bits_cf_pd_isRVC; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pd_brType = io_in_0_bits_cf_pd_brType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pd_isCall = io_in_0_bits_cf_pd_isCall; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pd_isRet = io_in_0_bits_cf_pd_isRet; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pred_taken = io_in_0_bits_cf_pred_taken; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_ssid = io_in_0_bits_cf_ssid; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_ftqPtr_flag = io_in_0_bits_cf_ftqPtr_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_ftqPtr_value = io_in_0_bits_cf_ftqPtr_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_ftqOffset = io_in_0_bits_cf_ftqOffset; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_srcType_0 = io_in_0_bits_ctrl_srcType_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_srcType_1 = io_in_0_bits_ctrl_srcType_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_srcType_2 = io_in_0_bits_ctrl_srcType_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fuType = io_in_0_bits_ctrl_fuType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fuOpType = io_in_0_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_rfWen = io_in_0_bits_ctrl_rfWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpWen = io_in_0_bits_ctrl_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_imm = io_in_0_bits_ctrl_imm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_isAddSub = io_in_0_bits_ctrl_fpu_isAddSub; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_typeTagIn = io_in_0_bits_ctrl_fpu_typeTagIn; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_typeTagOut = io_in_0_bits_ctrl_fpu_typeTagOut; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fromInt = io_in_0_bits_ctrl_fpu_fromInt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_wflags = io_in_0_bits_ctrl_fpu_wflags; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fpWen = io_in_0_bits_ctrl_fpu_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fmaCmd = io_in_0_bits_ctrl_fpu_fmaCmd; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_div = io_in_0_bits_ctrl_fpu_div; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_sqrt = io_in_0_bits_ctrl_fpu_sqrt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fcvt = io_in_0_bits_ctrl_fpu_fcvt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_typ = io_in_0_bits_ctrl_fpu_typ; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fmt = io_in_0_bits_ctrl_fpu_fmt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_ren3 = io_in_0_bits_ctrl_fpu_ren3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_rm = io_in_0_bits_ctrl_fpu_rm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_srcState_0 = io_readFpState_0_resp; // @[Dispatch2Rs.scala 162:33 159:73 163:93]
  assign io_out_0_bits_srcState_1 = io_readFpState_1_resp; // @[Dispatch2Rs.scala 162:33 159:73 163:93]
  assign io_out_0_bits_srcState_2 = io_readFpState_2_resp; // @[Dispatch2Rs.scala 162:33 159:73 163:93]
  assign io_out_0_bits_psrc_0 = io_in_0_bits_psrc_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_psrc_1 = io_in_0_bits_psrc_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_psrc_2 = io_in_0_bits_psrc_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_pdest = io_in_0_bits_pdest; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_robIdx_flag = io_in_0_bits_robIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_robIdx_value = io_in_0_bits_robIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_lqIdx_flag = io_in_0_bits_lqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_lqIdx_value = io_in_0_bits_lqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_sqIdx_flag = io_in_0_bits_sqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_sqIdx_value = io_in_0_bits_sqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_valid = io_in_1_valid; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendEn_0 = io_in_1_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendEn_1 = io_in_1_bits_cf_trigger_backendEn_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_0 = io_in_1_bits_cf_trigger_backendHit_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_1 = io_in_1_bits_cf_trigger_backendHit_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_2 = io_in_1_bits_cf_trigger_backendHit_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_3 = io_in_1_bits_cf_trigger_backendHit_3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_4 = io_in_1_bits_cf_trigger_backendHit_4; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_5 = io_in_1_bits_cf_trigger_backendHit_5; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pd_isRVC = io_in_1_bits_cf_pd_isRVC; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pd_brType = io_in_1_bits_cf_pd_brType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pd_isCall = io_in_1_bits_cf_pd_isCall; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pd_isRet = io_in_1_bits_cf_pd_isRet; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pred_taken = io_in_1_bits_cf_pred_taken; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_ssid = io_in_1_bits_cf_ssid; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_ftqPtr_flag = io_in_1_bits_cf_ftqPtr_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_ftqPtr_value = io_in_1_bits_cf_ftqPtr_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_ftqOffset = io_in_1_bits_cf_ftqOffset; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_srcType_0 = io_in_1_bits_ctrl_srcType_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_srcType_1 = io_in_1_bits_ctrl_srcType_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_srcType_2 = io_in_1_bits_ctrl_srcType_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fuType = io_in_1_bits_ctrl_fuType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fuOpType = io_in_1_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_rfWen = io_in_1_bits_ctrl_rfWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpWen = io_in_1_bits_ctrl_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_imm = io_in_1_bits_ctrl_imm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_isAddSub = io_in_1_bits_ctrl_fpu_isAddSub; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_typeTagIn = io_in_1_bits_ctrl_fpu_typeTagIn; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_typeTagOut = io_in_1_bits_ctrl_fpu_typeTagOut; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fromInt = io_in_1_bits_ctrl_fpu_fromInt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_wflags = io_in_1_bits_ctrl_fpu_wflags; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fpWen = io_in_1_bits_ctrl_fpu_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fmaCmd = io_in_1_bits_ctrl_fpu_fmaCmd; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_div = io_in_1_bits_ctrl_fpu_div; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_sqrt = io_in_1_bits_ctrl_fpu_sqrt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fcvt = io_in_1_bits_ctrl_fpu_fcvt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_typ = io_in_1_bits_ctrl_fpu_typ; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fmt = io_in_1_bits_ctrl_fpu_fmt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_ren3 = io_in_1_bits_ctrl_fpu_ren3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_rm = io_in_1_bits_ctrl_fpu_rm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_srcState_0 = io_readFpState_3_resp; // @[Dispatch2Rs.scala 162:33 159:73 163:93]
  assign io_out_1_bits_srcState_1 = io_readFpState_4_resp; // @[Dispatch2Rs.scala 162:33 159:73 163:93]
  assign io_out_1_bits_srcState_2 = io_readFpState_5_resp; // @[Dispatch2Rs.scala 162:33 159:73 163:93]
  assign io_out_1_bits_psrc_0 = io_in_1_bits_psrc_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_psrc_1 = io_in_1_bits_psrc_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_psrc_2 = io_in_1_bits_psrc_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_pdest = io_in_1_bits_pdest; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_robIdx_flag = io_in_1_bits_robIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_robIdx_value = io_in_1_bits_robIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_lqIdx_flag = io_in_1_bits_lqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_lqIdx_value = io_in_1_bits_lqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_sqIdx_flag = io_in_1_bits_sqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_sqIdx_value = io_in_1_bits_sqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
endmodule
