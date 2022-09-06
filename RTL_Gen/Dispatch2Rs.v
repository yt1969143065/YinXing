module Dispatch2Rs(
  input         clock,
  input         reset,
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
  input  [3:0]  io_in_0_bits_ctrl_fuType,
  input  [6:0]  io_in_0_bits_ctrl_fuOpType,
  input         io_in_0_bits_ctrl_rfWen,
  input         io_in_0_bits_ctrl_fpWen,
  input  [3:0]  io_in_0_bits_ctrl_selImm,
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
  input  [3:0]  io_in_1_bits_ctrl_fuType,
  input  [6:0]  io_in_1_bits_ctrl_fuOpType,
  input         io_in_1_bits_ctrl_rfWen,
  input         io_in_1_bits_ctrl_fpWen,
  input  [3:0]  io_in_1_bits_ctrl_selImm,
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
  input  [6:0]  io_in_1_bits_pdest,
  input         io_in_1_bits_robIdx_flag,
  input  [6:0]  io_in_1_bits_robIdx_value,
  input         io_in_1_bits_lqIdx_flag,
  input  [5:0]  io_in_1_bits_lqIdx_value,
  input         io_in_1_bits_sqIdx_flag,
  input  [4:0]  io_in_1_bits_sqIdx_value,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input         io_in_2_bits_cf_trigger_backendEn_0,
  input         io_in_2_bits_cf_trigger_backendEn_1,
  input         io_in_2_bits_cf_trigger_backendHit_0,
  input         io_in_2_bits_cf_trigger_backendHit_1,
  input         io_in_2_bits_cf_trigger_backendHit_2,
  input         io_in_2_bits_cf_trigger_backendHit_3,
  input         io_in_2_bits_cf_trigger_backendHit_4,
  input         io_in_2_bits_cf_trigger_backendHit_5,
  input         io_in_2_bits_cf_pd_isRVC,
  input  [1:0]  io_in_2_bits_cf_pd_brType,
  input         io_in_2_bits_cf_pd_isCall,
  input         io_in_2_bits_cf_pd_isRet,
  input         io_in_2_bits_cf_pred_taken,
  input  [4:0]  io_in_2_bits_cf_ssid,
  input         io_in_2_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_2_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_2_bits_cf_ftqOffset,
  input  [1:0]  io_in_2_bits_ctrl_srcType_0,
  input  [1:0]  io_in_2_bits_ctrl_srcType_1,
  input  [3:0]  io_in_2_bits_ctrl_fuType,
  input  [6:0]  io_in_2_bits_ctrl_fuOpType,
  input         io_in_2_bits_ctrl_rfWen,
  input         io_in_2_bits_ctrl_fpWen,
  input  [3:0]  io_in_2_bits_ctrl_selImm,
  input  [19:0] io_in_2_bits_ctrl_imm,
  input         io_in_2_bits_ctrl_fpu_isAddSub,
  input         io_in_2_bits_ctrl_fpu_typeTagIn,
  input         io_in_2_bits_ctrl_fpu_typeTagOut,
  input         io_in_2_bits_ctrl_fpu_fromInt,
  input         io_in_2_bits_ctrl_fpu_wflags,
  input         io_in_2_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_2_bits_ctrl_fpu_fmaCmd,
  input         io_in_2_bits_ctrl_fpu_div,
  input         io_in_2_bits_ctrl_fpu_sqrt,
  input         io_in_2_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_2_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_2_bits_ctrl_fpu_fmt,
  input         io_in_2_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_2_bits_ctrl_fpu_rm,
  input  [6:0]  io_in_2_bits_psrc_0,
  input  [6:0]  io_in_2_bits_psrc_1,
  input  [6:0]  io_in_2_bits_pdest,
  input         io_in_2_bits_robIdx_flag,
  input  [6:0]  io_in_2_bits_robIdx_value,
  input         io_in_2_bits_lqIdx_flag,
  input  [5:0]  io_in_2_bits_lqIdx_value,
  input         io_in_2_bits_sqIdx_flag,
  input  [4:0]  io_in_2_bits_sqIdx_value,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input         io_in_3_bits_cf_trigger_backendEn_0,
  input         io_in_3_bits_cf_trigger_backendEn_1,
  input         io_in_3_bits_cf_trigger_backendHit_0,
  input         io_in_3_bits_cf_trigger_backendHit_1,
  input         io_in_3_bits_cf_trigger_backendHit_2,
  input         io_in_3_bits_cf_trigger_backendHit_3,
  input         io_in_3_bits_cf_trigger_backendHit_4,
  input         io_in_3_bits_cf_trigger_backendHit_5,
  input         io_in_3_bits_cf_pd_isRVC,
  input  [1:0]  io_in_3_bits_cf_pd_brType,
  input         io_in_3_bits_cf_pd_isCall,
  input         io_in_3_bits_cf_pd_isRet,
  input         io_in_3_bits_cf_pred_taken,
  input  [4:0]  io_in_3_bits_cf_ssid,
  input         io_in_3_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_3_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_3_bits_cf_ftqOffset,
  input  [1:0]  io_in_3_bits_ctrl_srcType_0,
  input  [1:0]  io_in_3_bits_ctrl_srcType_1,
  input  [3:0]  io_in_3_bits_ctrl_fuType,
  input  [6:0]  io_in_3_bits_ctrl_fuOpType,
  input         io_in_3_bits_ctrl_rfWen,
  input         io_in_3_bits_ctrl_fpWen,
  input  [3:0]  io_in_3_bits_ctrl_selImm,
  input  [19:0] io_in_3_bits_ctrl_imm,
  input         io_in_3_bits_ctrl_fpu_isAddSub,
  input         io_in_3_bits_ctrl_fpu_typeTagIn,
  input         io_in_3_bits_ctrl_fpu_typeTagOut,
  input         io_in_3_bits_ctrl_fpu_fromInt,
  input         io_in_3_bits_ctrl_fpu_wflags,
  input         io_in_3_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_3_bits_ctrl_fpu_fmaCmd,
  input         io_in_3_bits_ctrl_fpu_div,
  input         io_in_3_bits_ctrl_fpu_sqrt,
  input         io_in_3_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_3_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_3_bits_ctrl_fpu_fmt,
  input         io_in_3_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_3_bits_ctrl_fpu_rm,
  input  [6:0]  io_in_3_bits_psrc_0,
  input  [6:0]  io_in_3_bits_psrc_1,
  input  [6:0]  io_in_3_bits_pdest,
  input         io_in_3_bits_robIdx_flag,
  input  [6:0]  io_in_3_bits_robIdx_value,
  input         io_in_3_bits_lqIdx_flag,
  input  [5:0]  io_in_3_bits_lqIdx_value,
  input         io_in_3_bits_sqIdx_flag,
  input  [4:0]  io_in_3_bits_sqIdx_value,
  output [6:0]  io_readIntState_0_req,
  input         io_readIntState_0_resp,
  output [6:0]  io_readIntState_1_req,
  input         io_readIntState_1_resp,
  output [6:0]  io_readIntState_2_req,
  input         io_readIntState_2_resp,
  output [6:0]  io_readIntState_3_req,
  input         io_readIntState_3_resp,
  output [6:0]  io_readIntState_4_req,
  input         io_readIntState_4_resp,
  output [6:0]  io_readIntState_5_req,
  input         io_readIntState_5_resp,
  output [6:0]  io_readIntState_6_req,
  input         io_readIntState_6_resp,
  output [6:0]  io_readIntState_7_req,
  input         io_readIntState_7_resp,
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
  output [3:0]  io_out_0_bits_ctrl_fuType,
  output [6:0]  io_out_0_bits_ctrl_fuOpType,
  output        io_out_0_bits_ctrl_rfWen,
  output        io_out_0_bits_ctrl_fpWen,
  output [3:0]  io_out_0_bits_ctrl_selImm,
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
  output [6:0]  io_out_0_bits_psrc_0,
  output [6:0]  io_out_0_bits_psrc_1,
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
  output [3:0]  io_out_1_bits_ctrl_fuType,
  output [6:0]  io_out_1_bits_ctrl_fuOpType,
  output        io_out_1_bits_ctrl_rfWen,
  output        io_out_1_bits_ctrl_fpWen,
  output [3:0]  io_out_1_bits_ctrl_selImm,
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
  output [6:0]  io_out_1_bits_psrc_0,
  output [6:0]  io_out_1_bits_psrc_1,
  output [6:0]  io_out_1_bits_pdest,
  output        io_out_1_bits_robIdx_flag,
  output [6:0]  io_out_1_bits_robIdx_value,
  output        io_out_1_bits_lqIdx_flag,
  output [5:0]  io_out_1_bits_lqIdx_value,
  output        io_out_1_bits_sqIdx_flag,
  output [4:0]  io_out_1_bits_sqIdx_value,
  input         io_out_2_ready,
  output        io_out_2_valid,
  output        io_out_2_bits_cf_trigger_backendEn_0,
  output        io_out_2_bits_cf_trigger_backendEn_1,
  output        io_out_2_bits_cf_trigger_backendHit_0,
  output        io_out_2_bits_cf_trigger_backendHit_1,
  output        io_out_2_bits_cf_trigger_backendHit_2,
  output        io_out_2_bits_cf_trigger_backendHit_3,
  output        io_out_2_bits_cf_trigger_backendHit_4,
  output        io_out_2_bits_cf_trigger_backendHit_5,
  output        io_out_2_bits_cf_pd_isRVC,
  output [1:0]  io_out_2_bits_cf_pd_brType,
  output        io_out_2_bits_cf_pd_isCall,
  output        io_out_2_bits_cf_pd_isRet,
  output        io_out_2_bits_cf_pred_taken,
  output [4:0]  io_out_2_bits_cf_ssid,
  output        io_out_2_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_2_bits_cf_ftqPtr_value,
  output [2:0]  io_out_2_bits_cf_ftqOffset,
  output [1:0]  io_out_2_bits_ctrl_srcType_0,
  output [1:0]  io_out_2_bits_ctrl_srcType_1,
  output [3:0]  io_out_2_bits_ctrl_fuType,
  output [6:0]  io_out_2_bits_ctrl_fuOpType,
  output        io_out_2_bits_ctrl_rfWen,
  output        io_out_2_bits_ctrl_fpWen,
  output [3:0]  io_out_2_bits_ctrl_selImm,
  output [19:0] io_out_2_bits_ctrl_imm,
  output        io_out_2_bits_ctrl_fpu_isAddSub,
  output        io_out_2_bits_ctrl_fpu_typeTagIn,
  output        io_out_2_bits_ctrl_fpu_typeTagOut,
  output        io_out_2_bits_ctrl_fpu_fromInt,
  output        io_out_2_bits_ctrl_fpu_wflags,
  output        io_out_2_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_2_bits_ctrl_fpu_fmaCmd,
  output        io_out_2_bits_ctrl_fpu_div,
  output        io_out_2_bits_ctrl_fpu_sqrt,
  output        io_out_2_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_2_bits_ctrl_fpu_typ,
  output [1:0]  io_out_2_bits_ctrl_fpu_fmt,
  output        io_out_2_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_2_bits_ctrl_fpu_rm,
  output        io_out_2_bits_srcState_0,
  output        io_out_2_bits_srcState_1,
  output [6:0]  io_out_2_bits_psrc_0,
  output [6:0]  io_out_2_bits_psrc_1,
  output [6:0]  io_out_2_bits_pdest,
  output        io_out_2_bits_robIdx_flag,
  output [6:0]  io_out_2_bits_robIdx_value,
  output        io_out_2_bits_lqIdx_flag,
  output [5:0]  io_out_2_bits_lqIdx_value,
  output        io_out_2_bits_sqIdx_flag,
  output [4:0]  io_out_2_bits_sqIdx_value,
  input         io_out_3_ready,
  output        io_out_3_valid,
  output        io_out_3_bits_cf_trigger_backendEn_0,
  output        io_out_3_bits_cf_trigger_backendEn_1,
  output        io_out_3_bits_cf_trigger_backendHit_0,
  output        io_out_3_bits_cf_trigger_backendHit_1,
  output        io_out_3_bits_cf_trigger_backendHit_2,
  output        io_out_3_bits_cf_trigger_backendHit_3,
  output        io_out_3_bits_cf_trigger_backendHit_4,
  output        io_out_3_bits_cf_trigger_backendHit_5,
  output        io_out_3_bits_cf_pd_isRVC,
  output [1:0]  io_out_3_bits_cf_pd_brType,
  output        io_out_3_bits_cf_pd_isCall,
  output        io_out_3_bits_cf_pd_isRet,
  output        io_out_3_bits_cf_pred_taken,
  output [4:0]  io_out_3_bits_cf_ssid,
  output        io_out_3_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_3_bits_cf_ftqPtr_value,
  output [2:0]  io_out_3_bits_cf_ftqOffset,
  output [1:0]  io_out_3_bits_ctrl_srcType_0,
  output [1:0]  io_out_3_bits_ctrl_srcType_1,
  output [3:0]  io_out_3_bits_ctrl_fuType,
  output [6:0]  io_out_3_bits_ctrl_fuOpType,
  output        io_out_3_bits_ctrl_rfWen,
  output        io_out_3_bits_ctrl_fpWen,
  output [3:0]  io_out_3_bits_ctrl_selImm,
  output [19:0] io_out_3_bits_ctrl_imm,
  output        io_out_3_bits_ctrl_fpu_isAddSub,
  output        io_out_3_bits_ctrl_fpu_typeTagIn,
  output        io_out_3_bits_ctrl_fpu_typeTagOut,
  output        io_out_3_bits_ctrl_fpu_fromInt,
  output        io_out_3_bits_ctrl_fpu_wflags,
  output        io_out_3_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_3_bits_ctrl_fpu_fmaCmd,
  output        io_out_3_bits_ctrl_fpu_div,
  output        io_out_3_bits_ctrl_fpu_sqrt,
  output        io_out_3_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_3_bits_ctrl_fpu_typ,
  output [1:0]  io_out_3_bits_ctrl_fpu_fmt,
  output        io_out_3_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_3_bits_ctrl_fpu_rm,
  output        io_out_3_bits_srcState_0,
  output        io_out_3_bits_srcState_1,
  output [6:0]  io_out_3_bits_psrc_0,
  output [6:0]  io_out_3_bits_psrc_1,
  output [6:0]  io_out_3_bits_pdest,
  output        io_out_3_bits_robIdx_flag,
  output [6:0]  io_out_3_bits_robIdx_value,
  output        io_out_3_bits_lqIdx_flag,
  output [5:0]  io_out_3_bits_lqIdx_value,
  output        io_out_3_bits_sqIdx_flag,
  output [4:0]  io_out_3_bits_sqIdx_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  pingpong_0; // @[Dispatch2Rs.scala 108:51]
  reg  pingpong_1; // @[Dispatch2Rs.scala 108:51]
  wire  _thisCanAccept_T_1 = |(4'h6 == io_in_1_bits_ctrl_fuType); // @[Exu.scala 104:48]
  wire  _thisCanAccept_T_2 = 4'h4 == io_in_1_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire  _thisCanAccept_T_3 = 4'h5 == io_in_1_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire  _thisCanAccept_T_4 = 4'h7 == io_in_1_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire [2:0] _thisCanAccept_T_5 = {_thisCanAccept_T_2,_thisCanAccept_T_3,_thisCanAccept_T_4}; // @[Cat.scala 31:58]
  wire  _thisCanAccept_T_6 = |_thisCanAccept_T_5; // @[Exu.scala 104:48]
  wire  thisCanAccept = _thisCanAccept_T_1 | _thisCanAccept_T_6; // @[Dispatch2Rs.scala 125:87]
  wire  thisCanAccept_1 = |(4'h6 == io_in_2_bits_ctrl_fuType); // @[Exu.scala 104:48]
  wire  thisCanAccept_2 = |(4'h6 == io_in_3_bits_ctrl_fuType); // @[Exu.scala 104:48]
  wire  _thisCanAccept_T_11 = 4'h4 == io_in_3_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire  _thisCanAccept_T_12 = 4'h5 == io_in_3_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire  _thisCanAccept_T_13 = 4'h7 == io_in_3_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire [2:0] _thisCanAccept_T_14 = {_thisCanAccept_T_11,_thisCanAccept_T_12,_thisCanAccept_T_13}; // @[Cat.scala 31:58]
  wire  _thisCanAccept_T_15 = |_thisCanAccept_T_14; // @[Exu.scala 104:48]
  wire  thisCanAccept_3 = thisCanAccept_2 | _thisCanAccept_T_15; // @[Dispatch2Rs.scala 137:100]
  wire  thisCanAccept_4 = |(4'h6 == io_in_0_bits_ctrl_fuType); // @[Exu.scala 104:48]
  assign io_in_0_ready = pingpong_0 ? io_out_2_ready & thisCanAccept_4 : io_out_0_ready; // @[Dispatch2Rs.scala 121:15 134:31 139:35]
  assign io_in_1_ready = pingpong_1 ? io_out_3_ready & _thisCanAccept_T_1 : io_out_1_ready & thisCanAccept; // @[Dispatch2Rs.scala 127:22 134:31 139:35]
  assign io_in_2_ready = pingpong_0 ? io_out_0_ready : io_out_2_ready & thisCanAccept_1; // @[Dispatch2Rs.scala 134:31 135:17 127:22]
  assign io_in_3_ready = pingpong_1 ? io_out_1_ready & thisCanAccept_3 : io_out_3_ready & thisCanAccept_2; // @[Dispatch2Rs.scala 127:22 134:31 139:35]
  assign io_readIntState_0_req = io_in_0_bits_psrc_0; // @[Dispatch2Rs.scala 99:63]
  assign io_readIntState_1_req = io_in_0_bits_psrc_1; // @[Dispatch2Rs.scala 99:63]
  assign io_readIntState_2_req = io_in_1_bits_psrc_0; // @[Dispatch2Rs.scala 99:63]
  assign io_readIntState_3_req = io_in_1_bits_psrc_1; // @[Dispatch2Rs.scala 99:63]
  assign io_readIntState_4_req = io_in_2_bits_psrc_0; // @[Dispatch2Rs.scala 99:63]
  assign io_readIntState_5_req = io_in_2_bits_psrc_1; // @[Dispatch2Rs.scala 99:63]
  assign io_readIntState_6_req = io_in_3_bits_psrc_0; // @[Dispatch2Rs.scala 99:63]
  assign io_readIntState_7_req = io_in_3_bits_psrc_1; // @[Dispatch2Rs.scala 99:63]
  assign io_out_0_valid = pingpong_0 ? io_in_2_valid : io_in_0_valid; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendEn_0 = pingpong_0 ? io_in_2_bits_cf_trigger_backendEn_0 :
    io_in_0_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendEn_1 = pingpong_0 ? io_in_2_bits_cf_trigger_backendEn_1 :
    io_in_0_bits_cf_trigger_backendEn_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_0 = pingpong_0 ? io_in_2_bits_cf_trigger_backendHit_0 :
    io_in_0_bits_cf_trigger_backendHit_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_1 = pingpong_0 ? io_in_2_bits_cf_trigger_backendHit_1 :
    io_in_0_bits_cf_trigger_backendHit_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_2 = pingpong_0 ? io_in_2_bits_cf_trigger_backendHit_2 :
    io_in_0_bits_cf_trigger_backendHit_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_3 = pingpong_0 ? io_in_2_bits_cf_trigger_backendHit_3 :
    io_in_0_bits_cf_trigger_backendHit_3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_4 = pingpong_0 ? io_in_2_bits_cf_trigger_backendHit_4 :
    io_in_0_bits_cf_trigger_backendHit_4; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_trigger_backendHit_5 = pingpong_0 ? io_in_2_bits_cf_trigger_backendHit_5 :
    io_in_0_bits_cf_trigger_backendHit_5; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pd_isRVC = pingpong_0 ? io_in_2_bits_cf_pd_isRVC : io_in_0_bits_cf_pd_isRVC; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pd_brType = pingpong_0 ? io_in_2_bits_cf_pd_brType : io_in_0_bits_cf_pd_brType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pd_isCall = pingpong_0 ? io_in_2_bits_cf_pd_isCall : io_in_0_bits_cf_pd_isCall; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pd_isRet = pingpong_0 ? io_in_2_bits_cf_pd_isRet : io_in_0_bits_cf_pd_isRet; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_pred_taken = pingpong_0 ? io_in_2_bits_cf_pred_taken : io_in_0_bits_cf_pred_taken; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_ssid = pingpong_0 ? io_in_2_bits_cf_ssid : io_in_0_bits_cf_ssid; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_ftqPtr_flag = pingpong_0 ? io_in_2_bits_cf_ftqPtr_flag : io_in_0_bits_cf_ftqPtr_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_ftqPtr_value = pingpong_0 ? io_in_2_bits_cf_ftqPtr_value : io_in_0_bits_cf_ftqPtr_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_cf_ftqOffset = pingpong_0 ? io_in_2_bits_cf_ftqOffset : io_in_0_bits_cf_ftqOffset; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_srcType_0 = pingpong_0 ? io_in_2_bits_ctrl_srcType_0 : io_in_0_bits_ctrl_srcType_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_srcType_1 = pingpong_0 ? io_in_2_bits_ctrl_srcType_1 : io_in_0_bits_ctrl_srcType_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fuType = pingpong_0 ? io_in_2_bits_ctrl_fuType : io_in_0_bits_ctrl_fuType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fuOpType = pingpong_0 ? io_in_2_bits_ctrl_fuOpType : io_in_0_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_rfWen = pingpong_0 ? io_in_2_bits_ctrl_rfWen : io_in_0_bits_ctrl_rfWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpWen = pingpong_0 ? io_in_2_bits_ctrl_fpWen : io_in_0_bits_ctrl_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_selImm = pingpong_0 ? io_in_2_bits_ctrl_selImm : io_in_0_bits_ctrl_selImm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_imm = pingpong_0 ? io_in_2_bits_ctrl_imm : io_in_0_bits_ctrl_imm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_isAddSub = pingpong_0 ? io_in_2_bits_ctrl_fpu_isAddSub : io_in_0_bits_ctrl_fpu_isAddSub; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_typeTagIn = pingpong_0 ? io_in_2_bits_ctrl_fpu_typeTagIn :
    io_in_0_bits_ctrl_fpu_typeTagIn; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_typeTagOut = pingpong_0 ? io_in_2_bits_ctrl_fpu_typeTagOut :
    io_in_0_bits_ctrl_fpu_typeTagOut; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fromInt = pingpong_0 ? io_in_2_bits_ctrl_fpu_fromInt : io_in_0_bits_ctrl_fpu_fromInt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_wflags = pingpong_0 ? io_in_2_bits_ctrl_fpu_wflags : io_in_0_bits_ctrl_fpu_wflags; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fpWen = pingpong_0 ? io_in_2_bits_ctrl_fpu_fpWen : io_in_0_bits_ctrl_fpu_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fmaCmd = pingpong_0 ? io_in_2_bits_ctrl_fpu_fmaCmd : io_in_0_bits_ctrl_fpu_fmaCmd; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_div = pingpong_0 ? io_in_2_bits_ctrl_fpu_div : io_in_0_bits_ctrl_fpu_div; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_sqrt = pingpong_0 ? io_in_2_bits_ctrl_fpu_sqrt : io_in_0_bits_ctrl_fpu_sqrt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fcvt = pingpong_0 ? io_in_2_bits_ctrl_fpu_fcvt : io_in_0_bits_ctrl_fpu_fcvt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_typ = pingpong_0 ? io_in_2_bits_ctrl_fpu_typ : io_in_0_bits_ctrl_fpu_typ; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_fmt = pingpong_0 ? io_in_2_bits_ctrl_fpu_fmt : io_in_0_bits_ctrl_fpu_fmt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_ren3 = pingpong_0 ? io_in_2_bits_ctrl_fpu_ren3 : io_in_0_bits_ctrl_fpu_ren3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_ctrl_fpu_rm = pingpong_0 ? io_in_2_bits_ctrl_fpu_rm : io_in_0_bits_ctrl_fpu_rm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_srcState_0 = pingpong_0 ? io_readIntState_4_resp : io_readIntState_0_resp; // @[Dispatch2Rs.scala 151:33 148:75 152:94]
  assign io_out_0_bits_srcState_1 = pingpong_0 ? io_readIntState_5_resp : io_readIntState_1_resp; // @[Dispatch2Rs.scala 151:33 148:75 152:94]
  assign io_out_0_bits_psrc_0 = pingpong_0 ? io_in_2_bits_psrc_0 : io_in_0_bits_psrc_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_psrc_1 = pingpong_0 ? io_in_2_bits_psrc_1 : io_in_0_bits_psrc_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_pdest = pingpong_0 ? io_in_2_bits_pdest : io_in_0_bits_pdest; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_robIdx_flag = pingpong_0 ? io_in_2_bits_robIdx_flag : io_in_0_bits_robIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_robIdx_value = pingpong_0 ? io_in_2_bits_robIdx_value : io_in_0_bits_robIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_lqIdx_flag = pingpong_0 ? io_in_2_bits_lqIdx_flag : io_in_0_bits_lqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_lqIdx_value = pingpong_0 ? io_in_2_bits_lqIdx_value : io_in_0_bits_lqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_sqIdx_flag = pingpong_0 ? io_in_2_bits_sqIdx_flag : io_in_0_bits_sqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_0_bits_sqIdx_value = pingpong_0 ? io_in_2_bits_sqIdx_value : io_in_0_bits_sqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_valid = pingpong_1 ? io_in_3_valid & thisCanAccept_3 : io_in_1_valid & thisCanAccept; // @[Dispatch2Rs.scala 126:23 134:31 138:25]
  assign io_out_1_bits_cf_trigger_backendEn_0 = pingpong_1 ? io_in_3_bits_cf_trigger_backendEn_0 :
    io_in_1_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendEn_1 = pingpong_1 ? io_in_3_bits_cf_trigger_backendEn_1 :
    io_in_1_bits_cf_trigger_backendEn_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_0 = pingpong_1 ? io_in_3_bits_cf_trigger_backendHit_0 :
    io_in_1_bits_cf_trigger_backendHit_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_1 = pingpong_1 ? io_in_3_bits_cf_trigger_backendHit_1 :
    io_in_1_bits_cf_trigger_backendHit_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_2 = pingpong_1 ? io_in_3_bits_cf_trigger_backendHit_2 :
    io_in_1_bits_cf_trigger_backendHit_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_3 = pingpong_1 ? io_in_3_bits_cf_trigger_backendHit_3 :
    io_in_1_bits_cf_trigger_backendHit_3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_4 = pingpong_1 ? io_in_3_bits_cf_trigger_backendHit_4 :
    io_in_1_bits_cf_trigger_backendHit_4; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_trigger_backendHit_5 = pingpong_1 ? io_in_3_bits_cf_trigger_backendHit_5 :
    io_in_1_bits_cf_trigger_backendHit_5; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pd_isRVC = pingpong_1 ? io_in_3_bits_cf_pd_isRVC : io_in_1_bits_cf_pd_isRVC; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pd_brType = pingpong_1 ? io_in_3_bits_cf_pd_brType : io_in_1_bits_cf_pd_brType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pd_isCall = pingpong_1 ? io_in_3_bits_cf_pd_isCall : io_in_1_bits_cf_pd_isCall; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pd_isRet = pingpong_1 ? io_in_3_bits_cf_pd_isRet : io_in_1_bits_cf_pd_isRet; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_pred_taken = pingpong_1 ? io_in_3_bits_cf_pred_taken : io_in_1_bits_cf_pred_taken; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_ssid = pingpong_1 ? io_in_3_bits_cf_ssid : io_in_1_bits_cf_ssid; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_ftqPtr_flag = pingpong_1 ? io_in_3_bits_cf_ftqPtr_flag : io_in_1_bits_cf_ftqPtr_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_ftqPtr_value = pingpong_1 ? io_in_3_bits_cf_ftqPtr_value : io_in_1_bits_cf_ftqPtr_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_cf_ftqOffset = pingpong_1 ? io_in_3_bits_cf_ftqOffset : io_in_1_bits_cf_ftqOffset; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_srcType_0 = pingpong_1 ? io_in_3_bits_ctrl_srcType_0 : io_in_1_bits_ctrl_srcType_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_srcType_1 = pingpong_1 ? io_in_3_bits_ctrl_srcType_1 : io_in_1_bits_ctrl_srcType_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fuType = pingpong_1 ? io_in_3_bits_ctrl_fuType : io_in_1_bits_ctrl_fuType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fuOpType = pingpong_1 ? io_in_3_bits_ctrl_fuOpType : io_in_1_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_rfWen = pingpong_1 ? io_in_3_bits_ctrl_rfWen : io_in_1_bits_ctrl_rfWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpWen = pingpong_1 ? io_in_3_bits_ctrl_fpWen : io_in_1_bits_ctrl_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_selImm = pingpong_1 ? io_in_3_bits_ctrl_selImm : io_in_1_bits_ctrl_selImm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_imm = pingpong_1 ? io_in_3_bits_ctrl_imm : io_in_1_bits_ctrl_imm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_isAddSub = pingpong_1 ? io_in_3_bits_ctrl_fpu_isAddSub : io_in_1_bits_ctrl_fpu_isAddSub; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_typeTagIn = pingpong_1 ? io_in_3_bits_ctrl_fpu_typeTagIn :
    io_in_1_bits_ctrl_fpu_typeTagIn; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_typeTagOut = pingpong_1 ? io_in_3_bits_ctrl_fpu_typeTagOut :
    io_in_1_bits_ctrl_fpu_typeTagOut; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fromInt = pingpong_1 ? io_in_3_bits_ctrl_fpu_fromInt : io_in_1_bits_ctrl_fpu_fromInt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_wflags = pingpong_1 ? io_in_3_bits_ctrl_fpu_wflags : io_in_1_bits_ctrl_fpu_wflags; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fpWen = pingpong_1 ? io_in_3_bits_ctrl_fpu_fpWen : io_in_1_bits_ctrl_fpu_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fmaCmd = pingpong_1 ? io_in_3_bits_ctrl_fpu_fmaCmd : io_in_1_bits_ctrl_fpu_fmaCmd; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_div = pingpong_1 ? io_in_3_bits_ctrl_fpu_div : io_in_1_bits_ctrl_fpu_div; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_sqrt = pingpong_1 ? io_in_3_bits_ctrl_fpu_sqrt : io_in_1_bits_ctrl_fpu_sqrt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fcvt = pingpong_1 ? io_in_3_bits_ctrl_fpu_fcvt : io_in_1_bits_ctrl_fpu_fcvt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_typ = pingpong_1 ? io_in_3_bits_ctrl_fpu_typ : io_in_1_bits_ctrl_fpu_typ; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_fmt = pingpong_1 ? io_in_3_bits_ctrl_fpu_fmt : io_in_1_bits_ctrl_fpu_fmt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_ren3 = pingpong_1 ? io_in_3_bits_ctrl_fpu_ren3 : io_in_1_bits_ctrl_fpu_ren3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_ctrl_fpu_rm = pingpong_1 ? io_in_3_bits_ctrl_fpu_rm : io_in_1_bits_ctrl_fpu_rm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_srcState_0 = pingpong_1 ? io_readIntState_6_resp : io_readIntState_2_resp; // @[Dispatch2Rs.scala 151:33 148:75 152:94]
  assign io_out_1_bits_srcState_1 = pingpong_1 ? io_readIntState_7_resp : io_readIntState_3_resp; // @[Dispatch2Rs.scala 151:33 148:75 152:94]
  assign io_out_1_bits_psrc_0 = pingpong_1 ? io_in_3_bits_psrc_0 : io_in_1_bits_psrc_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_psrc_1 = pingpong_1 ? io_in_3_bits_psrc_1 : io_in_1_bits_psrc_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_pdest = pingpong_1 ? io_in_3_bits_pdest : io_in_1_bits_pdest; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_robIdx_flag = pingpong_1 ? io_in_3_bits_robIdx_flag : io_in_1_bits_robIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_robIdx_value = pingpong_1 ? io_in_3_bits_robIdx_value : io_in_1_bits_robIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_lqIdx_flag = pingpong_1 ? io_in_3_bits_lqIdx_flag : io_in_1_bits_lqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_lqIdx_value = pingpong_1 ? io_in_3_bits_lqIdx_value : io_in_1_bits_lqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_sqIdx_flag = pingpong_1 ? io_in_3_bits_sqIdx_flag : io_in_1_bits_sqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_1_bits_sqIdx_value = pingpong_1 ? io_in_3_bits_sqIdx_value : io_in_1_bits_sqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_valid = pingpong_0 ? io_in_0_valid & thisCanAccept_4 : io_in_2_valid & thisCanAccept_1; // @[Dispatch2Rs.scala 126:23 134:31 138:25]
  assign io_out_2_bits_cf_trigger_backendEn_0 = pingpong_0 ? io_in_0_bits_cf_trigger_backendEn_0 :
    io_in_2_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_trigger_backendEn_1 = pingpong_0 ? io_in_0_bits_cf_trigger_backendEn_1 :
    io_in_2_bits_cf_trigger_backendEn_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_trigger_backendHit_0 = pingpong_0 ? io_in_0_bits_cf_trigger_backendHit_0 :
    io_in_2_bits_cf_trigger_backendHit_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_trigger_backendHit_1 = pingpong_0 ? io_in_0_bits_cf_trigger_backendHit_1 :
    io_in_2_bits_cf_trigger_backendHit_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_trigger_backendHit_2 = pingpong_0 ? io_in_0_bits_cf_trigger_backendHit_2 :
    io_in_2_bits_cf_trigger_backendHit_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_trigger_backendHit_3 = pingpong_0 ? io_in_0_bits_cf_trigger_backendHit_3 :
    io_in_2_bits_cf_trigger_backendHit_3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_trigger_backendHit_4 = pingpong_0 ? io_in_0_bits_cf_trigger_backendHit_4 :
    io_in_2_bits_cf_trigger_backendHit_4; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_trigger_backendHit_5 = pingpong_0 ? io_in_0_bits_cf_trigger_backendHit_5 :
    io_in_2_bits_cf_trigger_backendHit_5; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_pd_isRVC = pingpong_0 ? io_in_0_bits_cf_pd_isRVC : io_in_2_bits_cf_pd_isRVC; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_pd_brType = pingpong_0 ? io_in_0_bits_cf_pd_brType : io_in_2_bits_cf_pd_brType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_pd_isCall = pingpong_0 ? io_in_0_bits_cf_pd_isCall : io_in_2_bits_cf_pd_isCall; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_pd_isRet = pingpong_0 ? io_in_0_bits_cf_pd_isRet : io_in_2_bits_cf_pd_isRet; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_pred_taken = pingpong_0 ? io_in_0_bits_cf_pred_taken : io_in_2_bits_cf_pred_taken; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_ssid = pingpong_0 ? io_in_0_bits_cf_ssid : io_in_2_bits_cf_ssid; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_ftqPtr_flag = pingpong_0 ? io_in_0_bits_cf_ftqPtr_flag : io_in_2_bits_cf_ftqPtr_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_ftqPtr_value = pingpong_0 ? io_in_0_bits_cf_ftqPtr_value : io_in_2_bits_cf_ftqPtr_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_cf_ftqOffset = pingpong_0 ? io_in_0_bits_cf_ftqOffset : io_in_2_bits_cf_ftqOffset; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_srcType_0 = pingpong_0 ? io_in_0_bits_ctrl_srcType_0 : io_in_2_bits_ctrl_srcType_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_srcType_1 = pingpong_0 ? io_in_0_bits_ctrl_srcType_1 : io_in_2_bits_ctrl_srcType_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fuType = pingpong_0 ? io_in_0_bits_ctrl_fuType : io_in_2_bits_ctrl_fuType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fuOpType = pingpong_0 ? io_in_0_bits_ctrl_fuOpType : io_in_2_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_rfWen = pingpong_0 ? io_in_0_bits_ctrl_rfWen : io_in_2_bits_ctrl_rfWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpWen = pingpong_0 ? io_in_0_bits_ctrl_fpWen : io_in_2_bits_ctrl_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_selImm = pingpong_0 ? io_in_0_bits_ctrl_selImm : io_in_2_bits_ctrl_selImm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_imm = pingpong_0 ? io_in_0_bits_ctrl_imm : io_in_2_bits_ctrl_imm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_isAddSub = pingpong_0 ? io_in_0_bits_ctrl_fpu_isAddSub : io_in_2_bits_ctrl_fpu_isAddSub; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_typeTagIn = pingpong_0 ? io_in_0_bits_ctrl_fpu_typeTagIn :
    io_in_2_bits_ctrl_fpu_typeTagIn; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_typeTagOut = pingpong_0 ? io_in_0_bits_ctrl_fpu_typeTagOut :
    io_in_2_bits_ctrl_fpu_typeTagOut; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_fromInt = pingpong_0 ? io_in_0_bits_ctrl_fpu_fromInt : io_in_2_bits_ctrl_fpu_fromInt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_wflags = pingpong_0 ? io_in_0_bits_ctrl_fpu_wflags : io_in_2_bits_ctrl_fpu_wflags; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_fpWen = pingpong_0 ? io_in_0_bits_ctrl_fpu_fpWen : io_in_2_bits_ctrl_fpu_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_fmaCmd = pingpong_0 ? io_in_0_bits_ctrl_fpu_fmaCmd : io_in_2_bits_ctrl_fpu_fmaCmd; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_div = pingpong_0 ? io_in_0_bits_ctrl_fpu_div : io_in_2_bits_ctrl_fpu_div; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_sqrt = pingpong_0 ? io_in_0_bits_ctrl_fpu_sqrt : io_in_2_bits_ctrl_fpu_sqrt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_fcvt = pingpong_0 ? io_in_0_bits_ctrl_fpu_fcvt : io_in_2_bits_ctrl_fpu_fcvt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_typ = pingpong_0 ? io_in_0_bits_ctrl_fpu_typ : io_in_2_bits_ctrl_fpu_typ; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_fmt = pingpong_0 ? io_in_0_bits_ctrl_fpu_fmt : io_in_2_bits_ctrl_fpu_fmt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_ren3 = pingpong_0 ? io_in_0_bits_ctrl_fpu_ren3 : io_in_2_bits_ctrl_fpu_ren3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_ctrl_fpu_rm = pingpong_0 ? io_in_0_bits_ctrl_fpu_rm : io_in_2_bits_ctrl_fpu_rm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_srcState_0 = pingpong_0 ? io_readIntState_0_resp : io_readIntState_4_resp; // @[Dispatch2Rs.scala 151:33 148:75 152:94]
  assign io_out_2_bits_srcState_1 = pingpong_0 ? io_readIntState_1_resp : io_readIntState_5_resp; // @[Dispatch2Rs.scala 151:33 148:75 152:94]
  assign io_out_2_bits_psrc_0 = pingpong_0 ? io_in_0_bits_psrc_0 : io_in_2_bits_psrc_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_psrc_1 = pingpong_0 ? io_in_0_bits_psrc_1 : io_in_2_bits_psrc_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_pdest = pingpong_0 ? io_in_0_bits_pdest : io_in_2_bits_pdest; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_robIdx_flag = pingpong_0 ? io_in_0_bits_robIdx_flag : io_in_2_bits_robIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_robIdx_value = pingpong_0 ? io_in_0_bits_robIdx_value : io_in_2_bits_robIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_lqIdx_flag = pingpong_0 ? io_in_0_bits_lqIdx_flag : io_in_2_bits_lqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_lqIdx_value = pingpong_0 ? io_in_0_bits_lqIdx_value : io_in_2_bits_lqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_sqIdx_flag = pingpong_0 ? io_in_0_bits_sqIdx_flag : io_in_2_bits_sqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_2_bits_sqIdx_value = pingpong_0 ? io_in_0_bits_sqIdx_value : io_in_2_bits_sqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_valid = pingpong_1 ? io_in_1_valid & _thisCanAccept_T_1 : io_in_3_valid & thisCanAccept_2; // @[Dispatch2Rs.scala 126:23 134:31 138:25]
  assign io_out_3_bits_cf_trigger_backendEn_0 = pingpong_1 ? io_in_1_bits_cf_trigger_backendEn_0 :
    io_in_3_bits_cf_trigger_backendEn_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_trigger_backendEn_1 = pingpong_1 ? io_in_1_bits_cf_trigger_backendEn_1 :
    io_in_3_bits_cf_trigger_backendEn_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_trigger_backendHit_0 = pingpong_1 ? io_in_1_bits_cf_trigger_backendHit_0 :
    io_in_3_bits_cf_trigger_backendHit_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_trigger_backendHit_1 = pingpong_1 ? io_in_1_bits_cf_trigger_backendHit_1 :
    io_in_3_bits_cf_trigger_backendHit_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_trigger_backendHit_2 = pingpong_1 ? io_in_1_bits_cf_trigger_backendHit_2 :
    io_in_3_bits_cf_trigger_backendHit_2; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_trigger_backendHit_3 = pingpong_1 ? io_in_1_bits_cf_trigger_backendHit_3 :
    io_in_3_bits_cf_trigger_backendHit_3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_trigger_backendHit_4 = pingpong_1 ? io_in_1_bits_cf_trigger_backendHit_4 :
    io_in_3_bits_cf_trigger_backendHit_4; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_trigger_backendHit_5 = pingpong_1 ? io_in_1_bits_cf_trigger_backendHit_5 :
    io_in_3_bits_cf_trigger_backendHit_5; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_pd_isRVC = pingpong_1 ? io_in_1_bits_cf_pd_isRVC : io_in_3_bits_cf_pd_isRVC; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_pd_brType = pingpong_1 ? io_in_1_bits_cf_pd_brType : io_in_3_bits_cf_pd_brType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_pd_isCall = pingpong_1 ? io_in_1_bits_cf_pd_isCall : io_in_3_bits_cf_pd_isCall; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_pd_isRet = pingpong_1 ? io_in_1_bits_cf_pd_isRet : io_in_3_bits_cf_pd_isRet; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_pred_taken = pingpong_1 ? io_in_1_bits_cf_pred_taken : io_in_3_bits_cf_pred_taken; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_ssid = pingpong_1 ? io_in_1_bits_cf_ssid : io_in_3_bits_cf_ssid; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_ftqPtr_flag = pingpong_1 ? io_in_1_bits_cf_ftqPtr_flag : io_in_3_bits_cf_ftqPtr_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_ftqPtr_value = pingpong_1 ? io_in_1_bits_cf_ftqPtr_value : io_in_3_bits_cf_ftqPtr_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_cf_ftqOffset = pingpong_1 ? io_in_1_bits_cf_ftqOffset : io_in_3_bits_cf_ftqOffset; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_srcType_0 = pingpong_1 ? io_in_1_bits_ctrl_srcType_0 : io_in_3_bits_ctrl_srcType_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_srcType_1 = pingpong_1 ? io_in_1_bits_ctrl_srcType_1 : io_in_3_bits_ctrl_srcType_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fuType = pingpong_1 ? io_in_1_bits_ctrl_fuType : io_in_3_bits_ctrl_fuType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fuOpType = pingpong_1 ? io_in_1_bits_ctrl_fuOpType : io_in_3_bits_ctrl_fuOpType; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_rfWen = pingpong_1 ? io_in_1_bits_ctrl_rfWen : io_in_3_bits_ctrl_rfWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpWen = pingpong_1 ? io_in_1_bits_ctrl_fpWen : io_in_3_bits_ctrl_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_selImm = pingpong_1 ? io_in_1_bits_ctrl_selImm : io_in_3_bits_ctrl_selImm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_imm = pingpong_1 ? io_in_1_bits_ctrl_imm : io_in_3_bits_ctrl_imm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_isAddSub = pingpong_1 ? io_in_1_bits_ctrl_fpu_isAddSub : io_in_3_bits_ctrl_fpu_isAddSub; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_typeTagIn = pingpong_1 ? io_in_1_bits_ctrl_fpu_typeTagIn :
    io_in_3_bits_ctrl_fpu_typeTagIn; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_typeTagOut = pingpong_1 ? io_in_1_bits_ctrl_fpu_typeTagOut :
    io_in_3_bits_ctrl_fpu_typeTagOut; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_fromInt = pingpong_1 ? io_in_1_bits_ctrl_fpu_fromInt : io_in_3_bits_ctrl_fpu_fromInt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_wflags = pingpong_1 ? io_in_1_bits_ctrl_fpu_wflags : io_in_3_bits_ctrl_fpu_wflags; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_fpWen = pingpong_1 ? io_in_1_bits_ctrl_fpu_fpWen : io_in_3_bits_ctrl_fpu_fpWen; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_fmaCmd = pingpong_1 ? io_in_1_bits_ctrl_fpu_fmaCmd : io_in_3_bits_ctrl_fpu_fmaCmd; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_div = pingpong_1 ? io_in_1_bits_ctrl_fpu_div : io_in_3_bits_ctrl_fpu_div; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_sqrt = pingpong_1 ? io_in_1_bits_ctrl_fpu_sqrt : io_in_3_bits_ctrl_fpu_sqrt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_fcvt = pingpong_1 ? io_in_1_bits_ctrl_fpu_fcvt : io_in_3_bits_ctrl_fpu_fcvt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_typ = pingpong_1 ? io_in_1_bits_ctrl_fpu_typ : io_in_3_bits_ctrl_fpu_typ; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_fmt = pingpong_1 ? io_in_1_bits_ctrl_fpu_fmt : io_in_3_bits_ctrl_fpu_fmt; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_ren3 = pingpong_1 ? io_in_1_bits_ctrl_fpu_ren3 : io_in_3_bits_ctrl_fpu_ren3; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_ctrl_fpu_rm = pingpong_1 ? io_in_1_bits_ctrl_fpu_rm : io_in_3_bits_ctrl_fpu_rm; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_srcState_0 = pingpong_1 ? io_readIntState_2_resp : io_readIntState_6_resp; // @[Dispatch2Rs.scala 151:33 148:75 152:94]
  assign io_out_3_bits_srcState_1 = pingpong_1 ? io_readIntState_3_resp : io_readIntState_7_resp; // @[Dispatch2Rs.scala 151:33 148:75 152:94]
  assign io_out_3_bits_psrc_0 = pingpong_1 ? io_in_1_bits_psrc_0 : io_in_3_bits_psrc_0; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_psrc_1 = pingpong_1 ? io_in_1_bits_psrc_1 : io_in_3_bits_psrc_1; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_pdest = pingpong_1 ? io_in_1_bits_pdest : io_in_3_bits_pdest; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_robIdx_flag = pingpong_1 ? io_in_1_bits_robIdx_flag : io_in_3_bits_robIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_robIdx_value = pingpong_1 ? io_in_1_bits_robIdx_value : io_in_3_bits_robIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_lqIdx_flag = pingpong_1 ? io_in_1_bits_lqIdx_flag : io_in_3_bits_lqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_lqIdx_value = pingpong_1 ? io_in_1_bits_lqIdx_value : io_in_3_bits_lqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_sqIdx_flag = pingpong_1 ? io_in_1_bits_sqIdx_flag : io_in_3_bits_sqIdx_flag; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  assign io_out_3_bits_sqIdx_value = pingpong_1 ? io_in_1_bits_sqIdx_value : io_in_3_bits_sqIdx_value; // @[Dispatch2Rs.scala 121:15 134:31 135:17]
  always @(posedge clock) begin
    if (reset) begin // @[Dispatch2Rs.scala 108:51]
      pingpong_0 <= 1'h0; // @[Dispatch2Rs.scala 108:51]
    end else begin
      pingpong_0 <= ~pingpong_0; // @[Dispatch2Rs.scala 109:27]
    end
    if (reset) begin // @[Dispatch2Rs.scala 108:51]
      pingpong_1 <= 1'h0; // @[Dispatch2Rs.scala 108:51]
    end else begin
      pingpong_1 <= ~pingpong_1; // @[Dispatch2Rs.scala 109:27]
    end
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
  pingpong_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  pingpong_1 = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
