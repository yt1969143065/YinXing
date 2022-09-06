module Dispatch2Rs_1(
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
  input  [6:0]  io_in_0_bits_cf_waitForRobIdx_value,
  input         io_in_0_bits_cf_loadWaitBit,
  input         io_in_0_bits_cf_loadWaitStrict,
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
  input  [6:0]  io_in_1_bits_cf_waitForRobIdx_value,
  input         io_in_1_bits_cf_loadWaitBit,
  input         io_in_1_bits_cf_loadWaitStrict,
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
  input  [6:0]  io_in_2_bits_cf_waitForRobIdx_value,
  input         io_in_2_bits_cf_loadWaitBit,
  input         io_in_2_bits_cf_loadWaitStrict,
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
  input  [6:0]  io_in_3_bits_cf_waitForRobIdx_value,
  input         io_in_3_bits_cf_loadWaitBit,
  input         io_in_3_bits_cf_loadWaitStrict,
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
  output [6:0]  io_readFpState_0_req,
  input         io_readFpState_0_resp,
  output [6:0]  io_readFpState_1_req,
  input         io_readFpState_1_resp,
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
  output [6:0]  io_out_0_bits_cf_waitForRobIdx_value,
  output        io_out_0_bits_cf_loadWaitBit,
  output        io_out_0_bits_cf_loadWaitStrict,
  output [4:0]  io_out_0_bits_cf_ssid,
  output        io_out_0_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_0_bits_cf_ftqPtr_value,
  output [2:0]  io_out_0_bits_cf_ftqOffset,
  output [1:0]  io_out_0_bits_ctrl_srcType_0,
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
  output [6:0]  io_out_1_bits_cf_waitForRobIdx_value,
  output        io_out_1_bits_cf_loadWaitBit,
  output        io_out_1_bits_cf_loadWaitStrict,
  output [4:0]  io_out_1_bits_cf_ssid,
  output        io_out_1_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_1_bits_cf_ftqPtr_value,
  output [2:0]  io_out_1_bits_cf_ftqOffset,
  output [1:0]  io_out_1_bits_ctrl_srcType_0,
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
  output [6:0]  io_out_2_bits_cf_waitForRobIdx_value,
  output        io_out_2_bits_cf_loadWaitBit,
  output        io_out_2_bits_cf_loadWaitStrict,
  output [4:0]  io_out_2_bits_cf_ssid,
  output        io_out_2_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_2_bits_cf_ftqPtr_value,
  output [2:0]  io_out_2_bits_cf_ftqOffset,
  output [1:0]  io_out_2_bits_ctrl_srcType_0,
  output [3:0]  io_out_2_bits_ctrl_fuType,
  output [6:0]  io_out_2_bits_ctrl_fuOpType,
  output        io_out_2_bits_ctrl_rfWen,
  output        io_out_2_bits_ctrl_fpWen,
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
  output [6:0]  io_out_2_bits_psrc_0,
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
  output [6:0]  io_out_3_bits_cf_waitForRobIdx_value,
  output        io_out_3_bits_cf_loadWaitBit,
  output        io_out_3_bits_cf_loadWaitStrict,
  output [4:0]  io_out_3_bits_cf_ssid,
  output        io_out_3_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_3_bits_cf_ftqPtr_value,
  output [2:0]  io_out_3_bits_cf_ftqOffset,
  output [1:0]  io_out_3_bits_ctrl_srcType_0,
  output [3:0]  io_out_3_bits_ctrl_fuType,
  output [6:0]  io_out_3_bits_ctrl_fuOpType,
  output        io_out_3_bits_ctrl_rfWen,
  output        io_out_3_bits_ctrl_fpWen,
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
  output [6:0]  io_out_3_bits_psrc_0,
  output [6:0]  io_out_3_bits_pdest,
  output        io_out_3_bits_robIdx_flag,
  output [6:0]  io_out_3_bits_robIdx_value,
  output        io_out_3_bits_lqIdx_flag,
  output [5:0]  io_out_3_bits_lqIdx_value,
  output        io_out_3_bits_sqIdx_flag,
  output [4:0]  io_out_3_bits_sqIdx_value,
  input         io_out_4_ready,
  output        io_out_4_valid,
  output        io_out_4_bits_cf_trigger_backendEn_0,
  output        io_out_4_bits_cf_trigger_backendEn_1,
  output        io_out_4_bits_cf_trigger_backendHit_0,
  output        io_out_4_bits_cf_trigger_backendHit_1,
  output        io_out_4_bits_cf_trigger_backendHit_2,
  output        io_out_4_bits_cf_trigger_backendHit_3,
  output        io_out_4_bits_cf_trigger_backendHit_4,
  output        io_out_4_bits_cf_trigger_backendHit_5,
  output        io_out_4_bits_cf_pd_isRVC,
  output [1:0]  io_out_4_bits_cf_pd_brType,
  output        io_out_4_bits_cf_pd_isCall,
  output        io_out_4_bits_cf_pd_isRet,
  output        io_out_4_bits_cf_pred_taken,
  output [4:0]  io_out_4_bits_cf_ssid,
  output        io_out_4_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_4_bits_cf_ftqPtr_value,
  output [2:0]  io_out_4_bits_cf_ftqOffset,
  output [1:0]  io_out_4_bits_ctrl_srcType_0,
  output [1:0]  io_out_4_bits_ctrl_srcType_1,
  output [3:0]  io_out_4_bits_ctrl_fuType,
  output [6:0]  io_out_4_bits_ctrl_fuOpType,
  output        io_out_4_bits_ctrl_rfWen,
  output        io_out_4_bits_ctrl_fpWen,
  output [19:0] io_out_4_bits_ctrl_imm,
  output        io_out_4_bits_ctrl_fpu_isAddSub,
  output        io_out_4_bits_ctrl_fpu_typeTagIn,
  output        io_out_4_bits_ctrl_fpu_typeTagOut,
  output        io_out_4_bits_ctrl_fpu_fromInt,
  output        io_out_4_bits_ctrl_fpu_wflags,
  output        io_out_4_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_4_bits_ctrl_fpu_fmaCmd,
  output        io_out_4_bits_ctrl_fpu_div,
  output        io_out_4_bits_ctrl_fpu_sqrt,
  output        io_out_4_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_4_bits_ctrl_fpu_typ,
  output [1:0]  io_out_4_bits_ctrl_fpu_fmt,
  output        io_out_4_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_4_bits_ctrl_fpu_rm,
  output        io_out_4_bits_srcState_0,
  output [6:0]  io_out_4_bits_psrc_0,
  output [6:0]  io_out_4_bits_psrc_1,
  output [6:0]  io_out_4_bits_pdest,
  output        io_out_4_bits_robIdx_flag,
  output [6:0]  io_out_4_bits_robIdx_value,
  output        io_out_4_bits_lqIdx_flag,
  output [5:0]  io_out_4_bits_lqIdx_value,
  output        io_out_4_bits_sqIdx_flag,
  output [4:0]  io_out_4_bits_sqIdx_value,
  input         io_out_5_ready,
  output        io_out_5_valid,
  output        io_out_5_bits_cf_trigger_backendEn_0,
  output        io_out_5_bits_cf_trigger_backendEn_1,
  output        io_out_5_bits_cf_trigger_backendHit_0,
  output        io_out_5_bits_cf_trigger_backendHit_1,
  output        io_out_5_bits_cf_trigger_backendHit_2,
  output        io_out_5_bits_cf_trigger_backendHit_3,
  output        io_out_5_bits_cf_trigger_backendHit_4,
  output        io_out_5_bits_cf_trigger_backendHit_5,
  output        io_out_5_bits_cf_pd_isRVC,
  output [1:0]  io_out_5_bits_cf_pd_brType,
  output        io_out_5_bits_cf_pd_isCall,
  output        io_out_5_bits_cf_pd_isRet,
  output        io_out_5_bits_cf_pred_taken,
  output [4:0]  io_out_5_bits_cf_ssid,
  output        io_out_5_bits_cf_ftqPtr_flag,
  output [5:0]  io_out_5_bits_cf_ftqPtr_value,
  output [2:0]  io_out_5_bits_cf_ftqOffset,
  output [1:0]  io_out_5_bits_ctrl_srcType_0,
  output [1:0]  io_out_5_bits_ctrl_srcType_1,
  output [3:0]  io_out_5_bits_ctrl_fuType,
  output [6:0]  io_out_5_bits_ctrl_fuOpType,
  output        io_out_5_bits_ctrl_rfWen,
  output        io_out_5_bits_ctrl_fpWen,
  output [19:0] io_out_5_bits_ctrl_imm,
  output        io_out_5_bits_ctrl_fpu_isAddSub,
  output        io_out_5_bits_ctrl_fpu_typeTagIn,
  output        io_out_5_bits_ctrl_fpu_typeTagOut,
  output        io_out_5_bits_ctrl_fpu_fromInt,
  output        io_out_5_bits_ctrl_fpu_wflags,
  output        io_out_5_bits_ctrl_fpu_fpWen,
  output [1:0]  io_out_5_bits_ctrl_fpu_fmaCmd,
  output        io_out_5_bits_ctrl_fpu_div,
  output        io_out_5_bits_ctrl_fpu_sqrt,
  output        io_out_5_bits_ctrl_fpu_fcvt,
  output [1:0]  io_out_5_bits_ctrl_fpu_typ,
  output [1:0]  io_out_5_bits_ctrl_fpu_fmt,
  output        io_out_5_bits_ctrl_fpu_ren3,
  output [2:0]  io_out_5_bits_ctrl_fpu_rm,
  output        io_out_5_bits_srcState_0,
  output [6:0]  io_out_5_bits_psrc_0,
  output [6:0]  io_out_5_bits_psrc_1,
  output [6:0]  io_out_5_bits_pdest,
  output        io_out_5_bits_robIdx_flag,
  output [6:0]  io_out_5_bits_robIdx_value,
  output        io_out_5_bits_lqIdx_flag,
  output [5:0]  io_out_5_bits_lqIdx_value,
  output        io_out_5_bits_sqIdx_flag,
  output [4:0]  io_out_5_bits_sqIdx_value,
  input         io_enqLsq_canAccept,
  output [1:0]  io_enqLsq_needAlloc_0,
  output [1:0]  io_enqLsq_needAlloc_1,
  output [1:0]  io_enqLsq_needAlloc_2,
  output [1:0]  io_enqLsq_needAlloc_3,
  output        io_enqLsq_req_0_valid,
  output        io_enqLsq_req_0_bits_robIdx_flag,
  output [6:0]  io_enqLsq_req_0_bits_robIdx_value,
  output        io_enqLsq_req_1_valid,
  output        io_enqLsq_req_1_bits_robIdx_flag,
  output [6:0]  io_enqLsq_req_1_bits_robIdx_value,
  output        io_enqLsq_req_2_valid,
  output        io_enqLsq_req_2_bits_robIdx_flag,
  output [6:0]  io_enqLsq_req_2_bits_robIdx_value,
  output        io_enqLsq_req_3_valid,
  output        io_enqLsq_req_3_bits_robIdx_flag,
  output [6:0]  io_enqLsq_req_3_bits_robIdx_value,
  input         io_enqLsq_resp_0_lqIdx_flag,
  input  [5:0]  io_enqLsq_resp_0_lqIdx_value,
  input         io_enqLsq_resp_0_sqIdx_flag,
  input  [4:0]  io_enqLsq_resp_0_sqIdx_value,
  input         io_enqLsq_resp_1_lqIdx_flag,
  input  [5:0]  io_enqLsq_resp_1_lqIdx_value,
  input         io_enqLsq_resp_1_sqIdx_flag,
  input  [4:0]  io_enqLsq_resp_1_sqIdx_value,
  input         io_enqLsq_resp_2_lqIdx_flag,
  input  [5:0]  io_enqLsq_resp_2_lqIdx_value,
  input         io_enqLsq_resp_2_sqIdx_flag,
  input  [4:0]  io_enqLsq_resp_2_sqIdx_value,
  input         io_enqLsq_resp_3_lqIdx_flag,
  input  [5:0]  io_enqLsq_resp_3_lqIdx_value,
  input         io_enqLsq_resp_3_sqIdx_flag,
  input  [4:0]  io_enqLsq_resp_3_sqIdx_value
);
  wire  _isLs_T_1 = io_in_0_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 80:47]
  wire  _isLs_T_3 = ~io_in_0_bits_ctrl_fuType[1]; // @[package.scala 81:57]
  wire  isLs_0 = _isLs_T_1 & ~io_in_0_bits_ctrl_fuType[1]; // @[package.scala 81:54]
  wire  _isLs_T_5 = io_in_1_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 80:47]
  wire  _isLs_T_7 = ~io_in_1_bits_ctrl_fuType[1]; // @[package.scala 81:57]
  wire  isLs_1 = _isLs_T_5 & ~io_in_1_bits_ctrl_fuType[1]; // @[package.scala 81:54]
  wire  _isLs_T_9 = io_in_2_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 80:47]
  wire  _isLs_T_11 = ~io_in_2_bits_ctrl_fuType[1]; // @[package.scala 81:57]
  wire  isLs_2 = _isLs_T_9 & ~io_in_2_bits_ctrl_fuType[1]; // @[package.scala 81:54]
  wire  _isLs_T_13 = io_in_3_bits_ctrl_fuType[3:2] == 2'h3; // @[package.scala 80:47]
  wire  _isLs_T_15 = ~io_in_3_bits_ctrl_fuType[1]; // @[package.scala 81:57]
  wire  isLs_3 = _isLs_T_13 & ~io_in_3_bits_ctrl_fuType[1]; // @[package.scala 81:54]
  wire  isStore_0 = _isLs_T_1 & io_in_0_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  wire  isStore_1 = _isLs_T_5 & io_in_1_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  wire  isStore_2 = _isLs_T_9 & io_in_2_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  wire  isStore_3 = _isLs_T_13 & io_in_3_bits_ctrl_fuType[0]; // @[package.scala 82:53]
  wire  isLoadArrays_1_0 = io_in_0_valid & ~isStore_0; // @[Dispatch2Rs.scala 192:87]
  wire  isLoadArrays_2_1 = io_in_1_valid & ~isStore_1; // @[Dispatch2Rs.scala 192:87]
  wire  isLoadArrays_3_2 = io_in_2_valid & ~isStore_2; // @[Dispatch2Rs.scala 192:87]
  wire  isStoreArrays_1_0 = io_in_0_valid & isStore_0; // @[Dispatch2Rs.scala 193:88]
  wire  isStoreArrays_2_1 = io_in_1_valid & isStore_1; // @[Dispatch2Rs.scala 193:88]
  wire  isStoreArrays_3_2 = io_in_2_valid & isStore_2; // @[Dispatch2Rs.scala 193:88]
  wire [1:0] _blockLoads_T = isLoadArrays_1_0 + isLoadArrays_2_1; // @[Bitwise.scala 48:55]
  wire  blockLoads_2 = _blockLoads_T >= 2'h2; // @[Dispatch2Rs.scala 194:51]
  wire [1:0] _blockLoads_T_2 = isLoadArrays_2_1 + isLoadArrays_3_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_35 = {{1'd0}, isLoadArrays_1_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _blockLoads_T_4 = _GEN_35 + _blockLoads_T_2; // @[Bitwise.scala 48:55]
  wire  blockLoads_3 = _blockLoads_T_4[1:0] >= 2'h2; // @[Dispatch2Rs.scala 194:51]
  wire [1:0] _blockStores_T = isStoreArrays_1_0 + isStoreArrays_2_1; // @[Bitwise.scala 48:55]
  wire  blockStores_2 = _blockStores_T >= 2'h2; // @[Dispatch2Rs.scala 195:53]
  wire [1:0] _blockStores_T_2 = isStoreArrays_2_1 + isStoreArrays_3_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_36 = {{1'd0}, isStoreArrays_1_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _blockStores_T_4 = _GEN_36 + _blockStores_T_2; // @[Bitwise.scala 48:55]
  wire  blockStores_3 = _blockStores_T_4[1:0] >= 2'h2; // @[Dispatch2Rs.scala 195:53]
  wire [5:0] _T_70 = {io_out_5_ready,io_out_4_ready,io_out_3_ready,io_out_2_ready,io_out_1_ready,io_out_0_ready}; // @[Dispatch2Rs.scala 265:41]
  wire  _T_71 = &_T_70; // @[Dispatch2Rs.scala 265:48]
  wire  _canAccept_T_8 = 4'hd == io_in_0_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire  _canAccept_T_9 = 4'hf == io_in_0_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire [1:0] _canAccept_T_10 = {_canAccept_T_8,_canAccept_T_9}; // @[Cat.scala 31:58]
  wire  _canAccept_T_11 = |_canAccept_T_10; // @[Exu.scala 104:48]
  wire  canAccept_0_1 = io_in_0_valid & _canAccept_T_11; // @[Dispatch2Rs.scala 219:46]
  wire  _canAccept_T_1 = |(4'hc == io_in_0_bits_ctrl_fuType); // @[Exu.scala 104:48]
  wire  canAccept_0 = io_in_0_valid & _canAccept_T_1; // @[Dispatch2Rs.scala 219:46]
  wire  _GEN_0 = canAccept_0 & io_out_0_ready; // @[Dispatch2Rs.scala 180:22 236:{63,74}]
  wire  _GEN_8 = canAccept_0_1 ? io_out_2_ready : _GEN_0; // @[Dispatch2Rs.scala 236:{63,74}]
  wire [1:0] _io_enqLsq_needAlloc_0_T_3 = isStore_0 & _isLs_T_3 ? 2'h2 : 2'h1; // @[Dispatch2Rs.scala 206:66]
  wire  _canAccept_T_12 = 4'hd == io_in_1_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire  _canAccept_T_13 = 4'hf == io_in_1_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire [1:0] _canAccept_T_14 = {_canAccept_T_12,_canAccept_T_13}; // @[Cat.scala 31:58]
  wire  _canAccept_T_15 = |_canAccept_T_14; // @[Exu.scala 104:48]
  wire  canAccept_1_1 = io_in_1_valid & _canAccept_T_15; // @[Dispatch2Rs.scala 219:46]
  wire  selectIdxOH_3_1 = canAccept_1_1 & canAccept_0_1; // @[BitUtils.scala 239:62]
  wire  matrix_1_1_0 = ~(|canAccept_0_1); // @[BitUtils.scala 222:50]
  wire  selectIdxOH_2_1 = canAccept_1_1 & matrix_1_1_0; // @[BitUtils.scala 239:62]
  wire  _canAccept_T_3 = |(4'hc == io_in_1_bits_ctrl_fuType); // @[Exu.scala 104:48]
  wire  canAccept_1 = io_in_1_valid & _canAccept_T_3; // @[Dispatch2Rs.scala 219:46]
  wire  selectIdxOH_1_1 = canAccept_1 & canAccept_0; // @[BitUtils.scala 239:62]
  wire  matrix__1_0 = ~(|canAccept_0); // @[BitUtils.scala 222:50]
  wire  selectIdxOH__1 = canAccept_1 & matrix__1_0; // @[BitUtils.scala 239:62]
  wire  _GEN_1 = selectIdxOH__1 & io_out_0_ready; // @[Dispatch2Rs.scala 180:22 236:{63,74}]
  wire  _GEN_5 = selectIdxOH_1_1 ? io_out_1_ready : _GEN_1; // @[Dispatch2Rs.scala 236:{63,74}]
  wire  _GEN_9 = selectIdxOH_2_1 ? io_out_2_ready : _GEN_5; // @[Dispatch2Rs.scala 236:{63,74}]
  wire  _GEN_13 = selectIdxOH_3_1 ? io_out_3_ready : _GEN_9; // @[Dispatch2Rs.scala 236:{63,74}]
  wire [1:0] _io_enqLsq_needAlloc_1_T_3 = isStore_1 & _isLs_T_7 ? 2'h2 : 2'h1; // @[Dispatch2Rs.scala 206:66]
  wire  is_blocked_2 = isStore_2 ? blockStores_2 : blockLoads_2; // @[Dispatch2Rs.scala 199:40]
  wire  _in_2_valid_T = ~is_blocked_2; // @[Dispatch2Rs.scala 202:40]
  wire  in_2_valid = io_in_2_valid & ~is_blocked_2; // @[Dispatch2Rs.scala 202:37]
  wire  _canAccept_T_16 = 4'hd == io_in_2_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire  _canAccept_T_17 = 4'hf == io_in_2_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire [1:0] _canAccept_T_18 = {_canAccept_T_16,_canAccept_T_17}; // @[Cat.scala 31:58]
  wire  _canAccept_T_19 = |_canAccept_T_18; // @[Exu.scala 104:48]
  wire  canAccept_2_1 = io_in_2_valid & _canAccept_T_19; // @[Dispatch2Rs.scala 219:46]
  wire  matrix_1_2_1 = selectIdxOH_2_1 | ~canAccept_1_1 & canAccept_0_1; // @[BitUtils.scala 229:61]
  wire  selectIdxOH_3_2 = canAccept_2_1 & matrix_1_2_1; // @[BitUtils.scala 239:62]
  wire [1:0] _matrix_2_0_T_3 = {canAccept_0_1,canAccept_1_1}; // @[Cat.scala 31:58]
  wire  matrix_1_2_0 = ~(|_matrix_2_0_T_3); // @[BitUtils.scala 222:50]
  wire  selectIdxOH_2_2 = canAccept_2_1 & matrix_1_2_0; // @[BitUtils.scala 239:62]
  wire  _canAccept_T_5 = |(4'hc == io_in_2_bits_ctrl_fuType); // @[Exu.scala 104:48]
  wire  canAccept_2 = io_in_2_valid & _canAccept_T_5; // @[Dispatch2Rs.scala 219:46]
  wire  matrix__2_1 = selectIdxOH__1 | ~canAccept_1 & canAccept_0; // @[BitUtils.scala 229:61]
  wire  selectIdxOH_1_2 = canAccept_2 & matrix__2_1; // @[BitUtils.scala 239:62]
  wire [1:0] _matrix_2_0_T = {canAccept_0,canAccept_1}; // @[Cat.scala 31:58]
  wire  matrix__2_0 = ~(|_matrix_2_0_T); // @[BitUtils.scala 222:50]
  wire  selectIdxOH__2 = canAccept_2 & matrix__2_0; // @[BitUtils.scala 239:62]
  wire  _GEN_2 = selectIdxOH__2 & io_out_0_ready; // @[Dispatch2Rs.scala 180:22 236:{63,74}]
  wire  _GEN_6 = selectIdxOH_1_2 ? io_out_1_ready : _GEN_2; // @[Dispatch2Rs.scala 236:{63,74}]
  wire  _GEN_10 = selectIdxOH_2_2 ? io_out_2_ready : _GEN_6; // @[Dispatch2Rs.scala 236:{63,74}]
  wire  _GEN_14 = selectIdxOH_3_2 ? io_out_3_ready : _GEN_10; // @[Dispatch2Rs.scala 236:{63,74}]
  wire  in_2_ready = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : _GEN_14; // @[Dispatch2Rs.scala 265:82 266:26]
  wire [1:0] _io_enqLsq_needAlloc_2_T_3 = isStore_2 & _isLs_T_11 ? 2'h2 : 2'h1; // @[Dispatch2Rs.scala 206:66]
  wire  _is_blocked_3_T = isStore_3 ? blockStores_3 : blockLoads_3; // @[Dispatch2Rs.scala 199:40]
  wire  is_blocked_3 = _is_blocked_3_T | is_blocked_2; // @[Dispatch2Rs.scala 199:84]
  wire  _in_3_valid_T = ~is_blocked_3; // @[Dispatch2Rs.scala 202:40]
  wire  in_3_valid = io_in_3_valid & ~is_blocked_3; // @[Dispatch2Rs.scala 202:37]
  wire  _canAccept_T_20 = 4'hd == io_in_3_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire  _canAccept_T_21 = 4'hf == io_in_3_bits_ctrl_fuType; // @[Exu.scala 104:32]
  wire [1:0] _canAccept_T_22 = {_canAccept_T_20,_canAccept_T_21}; // @[Cat.scala 31:58]
  wire  _canAccept_T_23 = |_canAccept_T_22; // @[Exu.scala 104:48]
  wire  canAccept_3_1 = io_in_3_valid & _canAccept_T_23; // @[Dispatch2Rs.scala 219:46]
  wire  matrix_1_3_1 = selectIdxOH_2_2 | ~canAccept_2_1 & matrix_1_2_1; // @[BitUtils.scala 229:61]
  wire  selectIdxOH_3_3 = canAccept_3_1 & matrix_1_3_1; // @[BitUtils.scala 239:62]
  wire [2:0] _matrix_3_0_T_3 = {canAccept_0_1,canAccept_1_1,canAccept_2_1}; // @[Cat.scala 31:58]
  wire  matrix_1_3_0 = ~(|_matrix_3_0_T_3); // @[BitUtils.scala 222:50]
  wire  selectIdxOH_2_3 = canAccept_3_1 & matrix_1_3_0; // @[BitUtils.scala 239:62]
  wire  _canAccept_T_7 = |(4'hc == io_in_3_bits_ctrl_fuType); // @[Exu.scala 104:48]
  wire  canAccept_3 = io_in_3_valid & _canAccept_T_7; // @[Dispatch2Rs.scala 219:46]
  wire  matrix__3_1 = selectIdxOH__2 | ~canAccept_2 & matrix__2_1; // @[BitUtils.scala 229:61]
  wire  selectIdxOH_1_3 = canAccept_3 & matrix__3_1; // @[BitUtils.scala 239:62]
  wire [2:0] _matrix_3_0_T = {canAccept_0,canAccept_1,canAccept_2}; // @[Cat.scala 31:58]
  wire  matrix__3_0 = ~(|_matrix_3_0_T); // @[BitUtils.scala 222:50]
  wire  selectIdxOH__3 = canAccept_3 & matrix__3_0; // @[BitUtils.scala 239:62]
  wire  _GEN_3 = selectIdxOH__3 & io_out_0_ready; // @[Dispatch2Rs.scala 180:22 236:{63,74}]
  wire  _GEN_7 = selectIdxOH_1_3 ? io_out_1_ready : _GEN_3; // @[Dispatch2Rs.scala 236:{63,74}]
  wire  _GEN_11 = selectIdxOH_2_3 ? io_out_2_ready : _GEN_7; // @[Dispatch2Rs.scala 236:{63,74}]
  wire  _GEN_15 = selectIdxOH_3_3 ? io_out_3_ready : _GEN_11; // @[Dispatch2Rs.scala 236:{63,74}]
  wire  in_3_ready = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : _GEN_15; // @[Dispatch2Rs.scala 265:82 266:26]
  wire [1:0] _io_enqLsq_needAlloc_3_T_3 = isStore_3 & _isLs_T_15 ? 2'h2 : 2'h1; // @[Dispatch2Rs.scala 206:66]
  wire  selectValid = canAccept_0 | (canAccept_1 | (canAccept_2 | canAccept_3)); // @[BitUtils.scala 199:49]
  wire  _io_out_0_valid_T_6 = selectIdxOH__2 & is_blocked_2 | selectIdxOH__3 & is_blocked_3; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_63 = canAccept_0 ? io_enqLsq_resp_0_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_64 = selectIdxOH__1 ? io_enqLsq_resp_1_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_65 = selectIdxOH__2 ? io_enqLsq_resp_2_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_66 = selectIdxOH__3 ? io_enqLsq_resp_3_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_67 = _io_out_0_bits_T_63 | _io_out_0_bits_T_64; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_68 = _io_out_0_bits_T_67 | _io_out_0_bits_T_65; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_77 = canAccept_0 ? io_enqLsq_resp_0_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_78 = selectIdxOH__1 ? io_enqLsq_resp_1_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_79 = selectIdxOH__2 ? io_enqLsq_resp_2_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_80 = selectIdxOH__3 ? io_enqLsq_resp_3_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_81 = _io_out_0_bits_T_77 | _io_out_0_bits_T_78; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_82 = _io_out_0_bits_T_81 | _io_out_0_bits_T_79; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_91 = canAccept_0 ? io_in_0_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_92 = selectIdxOH__1 ? io_in_1_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_93 = selectIdxOH__2 ? io_in_2_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_94 = selectIdxOH__3 ? io_in_3_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_95 = _io_out_0_bits_T_91 | _io_out_0_bits_T_92; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_96 = _io_out_0_bits_T_95 | _io_out_0_bits_T_93; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_112 = canAccept_0 ? io_in_0_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_113 = selectIdxOH__1 ? io_in_1_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_114 = selectIdxOH__2 ? io_in_2_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_115 = selectIdxOH__3 ? io_in_3_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_116 = _io_out_0_bits_T_112 | _io_out_0_bits_T_113; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_117 = _io_out_0_bits_T_116 | _io_out_0_bits_T_114; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_119 = canAccept_0 ? io_in_0_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_120 = selectIdxOH__1 ? io_in_1_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_121 = selectIdxOH__2 ? io_in_2_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_122 = selectIdxOH__3 ? io_in_3_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_123 = _io_out_0_bits_T_119 | _io_out_0_bits_T_120; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_124 = _io_out_0_bits_T_123 | _io_out_0_bits_T_121; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_126 = canAccept_0 ? io_in_0_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_127 = selectIdxOH__1 ? io_in_1_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_128 = selectIdxOH__2 ? io_in_2_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_129 = selectIdxOH__3 ? io_in_3_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_130 = _io_out_0_bits_T_126 | _io_out_0_bits_T_127; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_131 = _io_out_0_bits_T_130 | _io_out_0_bits_T_128; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_182 = canAccept_0 ? io_in_0_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_183 = selectIdxOH__1 ? io_in_1_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_184 = selectIdxOH__2 ? io_in_2_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_185 = selectIdxOH__3 ? io_in_3_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_186 = _io_out_0_bits_T_182 | _io_out_0_bits_T_183; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_187 = _io_out_0_bits_T_186 | _io_out_0_bits_T_184; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_196 = canAccept_0 ? io_in_0_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_197 = selectIdxOH__1 ? io_in_1_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_198 = selectIdxOH__2 ? io_in_2_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_199 = selectIdxOH__3 ? io_in_3_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_200 = _io_out_0_bits_T_196 | _io_out_0_bits_T_197; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_201 = _io_out_0_bits_T_200 | _io_out_0_bits_T_198; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_203 = canAccept_0 ? io_in_0_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_204 = selectIdxOH__1 ? io_in_1_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_205 = selectIdxOH__2 ? io_in_2_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_206 = selectIdxOH__3 ? io_in_3_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_207 = _io_out_0_bits_T_203 | _io_out_0_bits_T_204; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_208 = _io_out_0_bits_T_207 | _io_out_0_bits_T_205; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_231 = canAccept_0 ? io_in_0_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_232 = selectIdxOH__1 ? io_in_1_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_233 = selectIdxOH__2 ? io_in_2_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_234 = selectIdxOH__3 ? io_in_3_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_235 = _io_out_0_bits_T_231 | _io_out_0_bits_T_232; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_236 = _io_out_0_bits_T_235 | _io_out_0_bits_T_233; // @[Mux.scala 27:73]
  wire [19:0] _io_out_0_bits_T_287 = canAccept_0 ? io_in_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_0_bits_T_288 = selectIdxOH__1 ? io_in_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_0_bits_T_289 = selectIdxOH__2 ? io_in_2_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_0_bits_T_290 = selectIdxOH__3 ? io_in_3_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_0_bits_T_291 = _io_out_0_bits_T_287 | _io_out_0_bits_T_288; // @[Mux.scala 27:73]
  wire [19:0] _io_out_0_bits_T_292 = _io_out_0_bits_T_291 | _io_out_0_bits_T_289; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_350 = canAccept_0 ? io_in_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_351 = selectIdxOH__1 ? io_in_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_352 = selectIdxOH__2 ? io_in_2_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_353 = selectIdxOH__3 ? io_in_3_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_354 = _io_out_0_bits_T_350 | _io_out_0_bits_T_351; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_355 = _io_out_0_bits_T_354 | _io_out_0_bits_T_352; // @[Mux.scala 27:73]
  wire [3:0] _io_out_0_bits_T_357 = canAccept_0 ? io_in_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_0_bits_T_358 = selectIdxOH__1 ? io_in_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_0_bits_T_359 = selectIdxOH__2 ? io_in_2_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_0_bits_T_360 = selectIdxOH__3 ? io_in_3_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_0_bits_T_361 = _io_out_0_bits_T_357 | _io_out_0_bits_T_358; // @[Mux.scala 27:73]
  wire [3:0] _io_out_0_bits_T_362 = _io_out_0_bits_T_361 | _io_out_0_bits_T_359; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_392 = canAccept_0 ? io_in_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_393 = selectIdxOH__1 ? io_in_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_394 = selectIdxOH__2 ? io_in_2_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_395 = selectIdxOH__3 ? io_in_3_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_396 = _io_out_0_bits_T_392 | _io_out_0_bits_T_393; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_397 = _io_out_0_bits_T_396 | _io_out_0_bits_T_394; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_420 = canAccept_0 ? io_in_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_421 = selectIdxOH__1 ? io_in_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_422 = selectIdxOH__2 ? io_in_2_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_423 = selectIdxOH__3 ? io_in_3_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_424 = _io_out_0_bits_T_420 | _io_out_0_bits_T_421; // @[Mux.scala 27:73]
  wire [2:0] _io_out_0_bits_T_425 = _io_out_0_bits_T_424 | _io_out_0_bits_T_422; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_427 = canAccept_0 ? io_in_0_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_428 = selectIdxOH__1 ? io_in_1_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_429 = selectIdxOH__2 ? io_in_2_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_430 = selectIdxOH__3 ? io_in_3_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_431 = _io_out_0_bits_T_427 | _io_out_0_bits_T_428; // @[Mux.scala 27:73]
  wire [5:0] _io_out_0_bits_T_432 = _io_out_0_bits_T_431 | _io_out_0_bits_T_429; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_441 = canAccept_0 ? io_in_0_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_442 = selectIdxOH__1 ? io_in_1_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_443 = selectIdxOH__2 ? io_in_2_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_444 = selectIdxOH__3 ? io_in_3_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_445 = _io_out_0_bits_T_441 | _io_out_0_bits_T_442; // @[Mux.scala 27:73]
  wire [4:0] _io_out_0_bits_T_446 = _io_out_0_bits_T_445 | _io_out_0_bits_T_443; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_462 = canAccept_0 ? io_in_0_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_463 = selectIdxOH__1 ? io_in_1_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_464 = selectIdxOH__2 ? io_in_2_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_465 = selectIdxOH__3 ? io_in_3_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_466 = _io_out_0_bits_T_462 | _io_out_0_bits_T_463; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_T_467 = _io_out_0_bits_T_466 | _io_out_0_bits_T_464; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_511 = canAccept_0 ? io_in_0_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_512 = selectIdxOH__1 ? io_in_1_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_513 = selectIdxOH__2 ? io_in_2_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_514 = selectIdxOH__3 ? io_in_3_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_515 = _io_out_0_bits_T_511 | _io_out_0_bits_T_512; // @[Mux.scala 27:73]
  wire [1:0] _io_out_0_bits_T_516 = _io_out_0_bits_T_515 | _io_out_0_bits_T_513; // @[Mux.scala 27:73]
  wire  selectValid_1 = canAccept_0 & (canAccept_1 | (canAccept_2 | canAccept_3)) | (canAccept_1 & (canAccept_2 |
    canAccept_3) | canAccept_2 & canAccept_3); // @[BitUtils.scala 199:49]
  wire  _io_out_1_valid_T_6 = selectIdxOH_1_2 & is_blocked_2 | selectIdxOH_1_3 & is_blocked_3; // @[Mux.scala 27:73]
  wire [4:0] _io_out_1_bits_T_64 = selectIdxOH_1_1 ? io_enqLsq_resp_1_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_1_bits_T_65 = selectIdxOH_1_2 ? io_enqLsq_resp_2_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_1_bits_T_66 = selectIdxOH_1_3 ? io_enqLsq_resp_3_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_1_bits_T_68 = _io_out_1_bits_T_64 | _io_out_1_bits_T_65; // @[Mux.scala 27:73]
  wire [5:0] _io_out_1_bits_T_78 = selectIdxOH_1_1 ? io_enqLsq_resp_1_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_1_bits_T_79 = selectIdxOH_1_2 ? io_enqLsq_resp_2_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_1_bits_T_80 = selectIdxOH_1_3 ? io_enqLsq_resp_3_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_1_bits_T_82 = _io_out_1_bits_T_78 | _io_out_1_bits_T_79; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_92 = selectIdxOH_1_1 ? io_in_1_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_93 = selectIdxOH_1_2 ? io_in_2_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_94 = selectIdxOH_1_3 ? io_in_3_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_96 = _io_out_1_bits_T_92 | _io_out_1_bits_T_93; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_113 = selectIdxOH_1_1 ? io_in_1_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_114 = selectIdxOH_1_2 ? io_in_2_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_115 = selectIdxOH_1_3 ? io_in_3_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_117 = _io_out_1_bits_T_113 | _io_out_1_bits_T_114; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_120 = selectIdxOH_1_1 ? io_in_1_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_121 = selectIdxOH_1_2 ? io_in_2_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_122 = selectIdxOH_1_3 ? io_in_3_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_124 = _io_out_1_bits_T_120 | _io_out_1_bits_T_121; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_127 = selectIdxOH_1_1 ? io_in_1_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_128 = selectIdxOH_1_2 ? io_in_2_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_129 = selectIdxOH_1_3 ? io_in_3_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_131 = _io_out_1_bits_T_127 | _io_out_1_bits_T_128; // @[Mux.scala 27:73]
  wire [2:0] _io_out_1_bits_T_183 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_1_bits_T_184 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_1_bits_T_185 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_1_bits_T_187 = _io_out_1_bits_T_183 | _io_out_1_bits_T_184; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_197 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_198 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_199 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_201 = _io_out_1_bits_T_197 | _io_out_1_bits_T_198; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_204 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_205 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_206 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_208 = _io_out_1_bits_T_204 | _io_out_1_bits_T_205; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_232 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_233 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_234 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_236 = _io_out_1_bits_T_232 | _io_out_1_bits_T_233; // @[Mux.scala 27:73]
  wire [19:0] _io_out_1_bits_T_288 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_1_bits_T_289 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_1_bits_T_290 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_1_bits_T_292 = _io_out_1_bits_T_288 | _io_out_1_bits_T_289; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_351 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_352 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_353 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_355 = _io_out_1_bits_T_351 | _io_out_1_bits_T_352; // @[Mux.scala 27:73]
  wire [3:0] _io_out_1_bits_T_358 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_1_bits_T_359 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_1_bits_T_360 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_1_bits_T_362 = _io_out_1_bits_T_358 | _io_out_1_bits_T_359; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_393 = selectIdxOH_1_1 ? io_in_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_394 = selectIdxOH_1_2 ? io_in_2_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_395 = selectIdxOH_1_3 ? io_in_3_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_397 = _io_out_1_bits_T_393 | _io_out_1_bits_T_394; // @[Mux.scala 27:73]
  wire [2:0] _io_out_1_bits_T_421 = selectIdxOH_1_1 ? io_in_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_1_bits_T_422 = selectIdxOH_1_2 ? io_in_2_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_1_bits_T_423 = selectIdxOH_1_3 ? io_in_3_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_1_bits_T_425 = _io_out_1_bits_T_421 | _io_out_1_bits_T_422; // @[Mux.scala 27:73]
  wire [5:0] _io_out_1_bits_T_428 = selectIdxOH_1_1 ? io_in_1_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_1_bits_T_429 = selectIdxOH_1_2 ? io_in_2_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_1_bits_T_430 = selectIdxOH_1_3 ? io_in_3_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_1_bits_T_432 = _io_out_1_bits_T_428 | _io_out_1_bits_T_429; // @[Mux.scala 27:73]
  wire [4:0] _io_out_1_bits_T_442 = selectIdxOH_1_1 ? io_in_1_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_1_bits_T_443 = selectIdxOH_1_2 ? io_in_2_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_1_bits_T_444 = selectIdxOH_1_3 ? io_in_3_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_1_bits_T_446 = _io_out_1_bits_T_442 | _io_out_1_bits_T_443; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_463 = selectIdxOH_1_1 ? io_in_1_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_464 = selectIdxOH_1_2 ? io_in_2_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_465 = selectIdxOH_1_3 ? io_in_3_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_1_bits_T_467 = _io_out_1_bits_T_463 | _io_out_1_bits_T_464; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_512 = selectIdxOH_1_1 ? io_in_1_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_513 = selectIdxOH_1_2 ? io_in_2_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_514 = selectIdxOH_1_3 ? io_in_3_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_1_bits_T_516 = _io_out_1_bits_T_512 | _io_out_1_bits_T_513; // @[Mux.scala 27:73]
  wire  selectValid_2 = canAccept_0_1 | (canAccept_1_1 | (canAccept_2_1 | canAccept_3_1)); // @[BitUtils.scala 199:49]
  wire  _io_out_2_valid_T_6 = selectIdxOH_2_2 & is_blocked_2 | selectIdxOH_2_3 & is_blocked_3; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_63 = canAccept_0_1 ? io_enqLsq_resp_0_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_64 = selectIdxOH_2_1 ? io_enqLsq_resp_1_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_65 = selectIdxOH_2_2 ? io_enqLsq_resp_2_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_66 = selectIdxOH_2_3 ? io_enqLsq_resp_3_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_67 = _io_out_2_bits_T_63 | _io_out_2_bits_T_64; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_68 = _io_out_2_bits_T_67 | _io_out_2_bits_T_65; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_77 = canAccept_0_1 ? io_enqLsq_resp_0_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_78 = selectIdxOH_2_1 ? io_enqLsq_resp_1_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_79 = selectIdxOH_2_2 ? io_enqLsq_resp_2_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_80 = selectIdxOH_2_3 ? io_enqLsq_resp_3_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_81 = _io_out_2_bits_T_77 | _io_out_2_bits_T_78; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_82 = _io_out_2_bits_T_81 | _io_out_2_bits_T_79; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_91 = canAccept_0_1 ? io_in_0_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_92 = selectIdxOH_2_1 ? io_in_1_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_93 = selectIdxOH_2_2 ? io_in_2_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_94 = selectIdxOH_2_3 ? io_in_3_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_95 = _io_out_2_bits_T_91 | _io_out_2_bits_T_92; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_96 = _io_out_2_bits_T_95 | _io_out_2_bits_T_93; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_112 = canAccept_0_1 ? io_in_0_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_113 = selectIdxOH_2_1 ? io_in_1_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_114 = selectIdxOH_2_2 ? io_in_2_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_115 = selectIdxOH_2_3 ? io_in_3_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_116 = _io_out_2_bits_T_112 | _io_out_2_bits_T_113; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_117 = _io_out_2_bits_T_116 | _io_out_2_bits_T_114; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_119 = canAccept_0_1 ? io_in_0_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_120 = selectIdxOH_2_1 ? io_in_1_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_121 = selectIdxOH_2_2 ? io_in_2_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_122 = selectIdxOH_2_3 ? io_in_3_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_123 = _io_out_2_bits_T_119 | _io_out_2_bits_T_120; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_124 = _io_out_2_bits_T_123 | _io_out_2_bits_T_121; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_126 = canAccept_0_1 ? io_in_0_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_127 = selectIdxOH_2_1 ? io_in_1_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_128 = selectIdxOH_2_2 ? io_in_2_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_129 = selectIdxOH_2_3 ? io_in_3_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_130 = _io_out_2_bits_T_126 | _io_out_2_bits_T_127; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_131 = _io_out_2_bits_T_130 | _io_out_2_bits_T_128; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_182 = canAccept_0_1 ? io_in_0_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_183 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_184 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_185 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_186 = _io_out_2_bits_T_182 | _io_out_2_bits_T_183; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_187 = _io_out_2_bits_T_186 | _io_out_2_bits_T_184; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_196 = canAccept_0_1 ? io_in_0_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_197 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_198 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_199 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_200 = _io_out_2_bits_T_196 | _io_out_2_bits_T_197; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_201 = _io_out_2_bits_T_200 | _io_out_2_bits_T_198; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_203 = canAccept_0_1 ? io_in_0_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_204 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_205 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_206 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_207 = _io_out_2_bits_T_203 | _io_out_2_bits_T_204; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_208 = _io_out_2_bits_T_207 | _io_out_2_bits_T_205; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_231 = canAccept_0_1 ? io_in_0_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_232 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_233 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_234 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_235 = _io_out_2_bits_T_231 | _io_out_2_bits_T_232; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_236 = _io_out_2_bits_T_235 | _io_out_2_bits_T_233; // @[Mux.scala 27:73]
  wire [19:0] _io_out_2_bits_T_287 = canAccept_0_1 ? io_in_0_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_2_bits_T_288 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_2_bits_T_289 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_2_bits_T_290 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_2_bits_T_291 = _io_out_2_bits_T_287 | _io_out_2_bits_T_288; // @[Mux.scala 27:73]
  wire [19:0] _io_out_2_bits_T_292 = _io_out_2_bits_T_291 | _io_out_2_bits_T_289; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_350 = canAccept_0_1 ? io_in_0_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_351 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_352 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_353 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_354 = _io_out_2_bits_T_350 | _io_out_2_bits_T_351; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_355 = _io_out_2_bits_T_354 | _io_out_2_bits_T_352; // @[Mux.scala 27:73]
  wire [3:0] _io_out_2_bits_T_357 = canAccept_0_1 ? io_in_0_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_2_bits_T_358 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_2_bits_T_359 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_2_bits_T_360 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_2_bits_T_361 = _io_out_2_bits_T_357 | _io_out_2_bits_T_358; // @[Mux.scala 27:73]
  wire [3:0] _io_out_2_bits_T_362 = _io_out_2_bits_T_361 | _io_out_2_bits_T_359; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_392 = canAccept_0_1 ? io_in_0_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_393 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_394 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_395 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_396 = _io_out_2_bits_T_392 | _io_out_2_bits_T_393; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_397 = _io_out_2_bits_T_396 | _io_out_2_bits_T_394; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_399 = canAccept_0_1 ? io_in_0_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_400 = selectIdxOH_2_1 ? io_in_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_401 = selectIdxOH_2_2 ? io_in_2_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_402 = selectIdxOH_2_3 ? io_in_3_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_403 = _io_out_2_bits_T_399 | _io_out_2_bits_T_400; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_404 = _io_out_2_bits_T_403 | _io_out_2_bits_T_401; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_420 = canAccept_0_1 ? io_in_0_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_421 = selectIdxOH_2_1 ? io_in_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_422 = selectIdxOH_2_2 ? io_in_2_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_423 = selectIdxOH_2_3 ? io_in_3_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_424 = _io_out_2_bits_T_420 | _io_out_2_bits_T_421; // @[Mux.scala 27:73]
  wire [2:0] _io_out_2_bits_T_425 = _io_out_2_bits_T_424 | _io_out_2_bits_T_422; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_427 = canAccept_0_1 ? io_in_0_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_428 = selectIdxOH_2_1 ? io_in_1_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_429 = selectIdxOH_2_2 ? io_in_2_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_430 = selectIdxOH_2_3 ? io_in_3_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_431 = _io_out_2_bits_T_427 | _io_out_2_bits_T_428; // @[Mux.scala 27:73]
  wire [5:0] _io_out_2_bits_T_432 = _io_out_2_bits_T_431 | _io_out_2_bits_T_429; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_441 = canAccept_0_1 ? io_in_0_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_442 = selectIdxOH_2_1 ? io_in_1_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_443 = selectIdxOH_2_2 ? io_in_2_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_444 = selectIdxOH_2_3 ? io_in_3_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_445 = _io_out_2_bits_T_441 | _io_out_2_bits_T_442; // @[Mux.scala 27:73]
  wire [4:0] _io_out_2_bits_T_446 = _io_out_2_bits_T_445 | _io_out_2_bits_T_443; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_462 = canAccept_0_1 ? io_in_0_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_463 = selectIdxOH_2_1 ? io_in_1_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_464 = selectIdxOH_2_2 ? io_in_2_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_465 = selectIdxOH_2_3 ? io_in_3_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_466 = _io_out_2_bits_T_462 | _io_out_2_bits_T_463; // @[Mux.scala 27:73]
  wire [6:0] _io_out_2_bits_T_467 = _io_out_2_bits_T_466 | _io_out_2_bits_T_464; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_511 = canAccept_0_1 ? io_in_0_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_512 = selectIdxOH_2_1 ? io_in_1_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_513 = selectIdxOH_2_2 ? io_in_2_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_514 = selectIdxOH_2_3 ? io_in_3_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_515 = _io_out_2_bits_T_511 | _io_out_2_bits_T_512; // @[Mux.scala 27:73]
  wire [1:0] _io_out_2_bits_T_516 = _io_out_2_bits_T_515 | _io_out_2_bits_T_513; // @[Mux.scala 27:73]
  wire  selectValid_3 = canAccept_0_1 & (canAccept_1_1 | (canAccept_2_1 | canAccept_3_1)) | (canAccept_1_1 & (
    canAccept_2_1 | canAccept_3_1) | canAccept_2_1 & canAccept_3_1); // @[BitUtils.scala 199:49]
  wire  _io_out_3_valid_T_6 = selectIdxOH_3_2 & is_blocked_2 | selectIdxOH_3_3 & is_blocked_3; // @[Mux.scala 27:73]
  wire [4:0] _io_out_3_bits_T_64 = selectIdxOH_3_1 ? io_enqLsq_resp_1_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_3_bits_T_65 = selectIdxOH_3_2 ? io_enqLsq_resp_2_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_3_bits_T_66 = selectIdxOH_3_3 ? io_enqLsq_resp_3_sqIdx_value : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_3_bits_T_68 = _io_out_3_bits_T_64 | _io_out_3_bits_T_65; // @[Mux.scala 27:73]
  wire [5:0] _io_out_3_bits_T_78 = selectIdxOH_3_1 ? io_enqLsq_resp_1_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_3_bits_T_79 = selectIdxOH_3_2 ? io_enqLsq_resp_2_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_3_bits_T_80 = selectIdxOH_3_3 ? io_enqLsq_resp_3_lqIdx_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_3_bits_T_82 = _io_out_3_bits_T_78 | _io_out_3_bits_T_79; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_92 = selectIdxOH_3_1 ? io_in_1_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_93 = selectIdxOH_3_2 ? io_in_2_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_94 = selectIdxOH_3_3 ? io_in_3_bits_robIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_96 = _io_out_3_bits_T_92 | _io_out_3_bits_T_93; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_113 = selectIdxOH_3_1 ? io_in_1_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_114 = selectIdxOH_3_2 ? io_in_2_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_115 = selectIdxOH_3_3 ? io_in_3_bits_pdest : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_117 = _io_out_3_bits_T_113 | _io_out_3_bits_T_114; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_120 = selectIdxOH_3_1 ? io_in_1_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_121 = selectIdxOH_3_2 ? io_in_2_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_122 = selectIdxOH_3_3 ? io_in_3_bits_psrc_0 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_124 = _io_out_3_bits_T_120 | _io_out_3_bits_T_121; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_127 = selectIdxOH_3_1 ? io_in_1_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_128 = selectIdxOH_3_2 ? io_in_2_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_129 = selectIdxOH_3_3 ? io_in_3_bits_psrc_1 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_131 = _io_out_3_bits_T_127 | _io_out_3_bits_T_128; // @[Mux.scala 27:73]
  wire [2:0] _io_out_3_bits_T_183 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_3_bits_T_184 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_3_bits_T_185 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_fpu_rm : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_3_bits_T_187 = _io_out_3_bits_T_183 | _io_out_3_bits_T_184; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_197 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_198 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_199 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_fpu_fmt : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_201 = _io_out_3_bits_T_197 | _io_out_3_bits_T_198; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_204 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_205 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_206 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_fpu_typ : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_208 = _io_out_3_bits_T_204 | _io_out_3_bits_T_205; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_232 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_233 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_234 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_fpu_fmaCmd : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_236 = _io_out_3_bits_T_232 | _io_out_3_bits_T_233; // @[Mux.scala 27:73]
  wire [19:0] _io_out_3_bits_T_288 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_3_bits_T_289 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_3_bits_T_290 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_imm : 20'h0; // @[Mux.scala 27:73]
  wire [19:0] _io_out_3_bits_T_292 = _io_out_3_bits_T_288 | _io_out_3_bits_T_289; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_351 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_352 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_353 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_fuOpType : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_355 = _io_out_3_bits_T_351 | _io_out_3_bits_T_352; // @[Mux.scala 27:73]
  wire [3:0] _io_out_3_bits_T_358 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_3_bits_T_359 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_3_bits_T_360 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_fuType : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_3_bits_T_362 = _io_out_3_bits_T_358 | _io_out_3_bits_T_359; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_393 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_394 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_395 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_srcType_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_397 = _io_out_3_bits_T_393 | _io_out_3_bits_T_394; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_400 = selectIdxOH_3_1 ? io_in_1_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_401 = selectIdxOH_3_2 ? io_in_2_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_402 = selectIdxOH_3_3 ? io_in_3_bits_ctrl_srcType_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_404 = _io_out_3_bits_T_400 | _io_out_3_bits_T_401; // @[Mux.scala 27:73]
  wire [2:0] _io_out_3_bits_T_421 = selectIdxOH_3_1 ? io_in_1_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_3_bits_T_422 = selectIdxOH_3_2 ? io_in_2_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_3_bits_T_423 = selectIdxOH_3_3 ? io_in_3_bits_cf_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_3_bits_T_425 = _io_out_3_bits_T_421 | _io_out_3_bits_T_422; // @[Mux.scala 27:73]
  wire [5:0] _io_out_3_bits_T_428 = selectIdxOH_3_1 ? io_in_1_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_3_bits_T_429 = selectIdxOH_3_2 ? io_in_2_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_3_bits_T_430 = selectIdxOH_3_3 ? io_in_3_bits_cf_ftqPtr_value : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_3_bits_T_432 = _io_out_3_bits_T_428 | _io_out_3_bits_T_429; // @[Mux.scala 27:73]
  wire [4:0] _io_out_3_bits_T_442 = selectIdxOH_3_1 ? io_in_1_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_3_bits_T_443 = selectIdxOH_3_2 ? io_in_2_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_3_bits_T_444 = selectIdxOH_3_3 ? io_in_3_bits_cf_ssid : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_3_bits_T_446 = _io_out_3_bits_T_442 | _io_out_3_bits_T_443; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_463 = selectIdxOH_3_1 ? io_in_1_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_464 = selectIdxOH_3_2 ? io_in_2_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_465 = selectIdxOH_3_3 ? io_in_3_bits_cf_waitForRobIdx_value : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_3_bits_T_467 = _io_out_3_bits_T_463 | _io_out_3_bits_T_464; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_512 = selectIdxOH_3_1 ? io_in_1_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_513 = selectIdxOH_3_2 ? io_in_2_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_514 = selectIdxOH_3_3 ? io_in_3_bits_cf_pd_brType : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_3_bits_T_516 = _io_out_3_bits_T_512 | _io_out_3_bits_T_513; // @[Mux.scala 27:73]
  assign io_in_0_ready = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : _GEN_8; // @[Dispatch2Rs.scala 265:82 266:26]
  assign io_in_1_ready = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : _GEN_13; // @[Dispatch2Rs.scala 265:82 266:26]
  assign io_in_2_ready = in_2_ready & _in_2_valid_T; // @[Dispatch2Rs.scala 203:37]
  assign io_in_3_ready = in_3_ready & _in_3_valid_T; // @[Dispatch2Rs.scala 203:37]
  assign io_readIntState_0_req = io_out_0_bits_psrc_0; // @[Dispatch2Rs.scala 243:72]
  assign io_readIntState_1_req = io_out_1_bits_psrc_0; // @[Dispatch2Rs.scala 243:72]
  assign io_readIntState_2_req = io_out_2_bits_psrc_0; // @[Dispatch2Rs.scala 243:72]
  assign io_readIntState_3_req = io_out_3_bits_psrc_0; // @[Dispatch2Rs.scala 243:72]
  assign io_readIntState_4_req = io_out_4_bits_psrc_0; // @[Dispatch2Rs.scala 243:72]
  assign io_readIntState_5_req = io_out_5_bits_psrc_0; // @[Dispatch2Rs.scala 243:72]
  assign io_readFpState_0_req = io_out_4_bits_psrc_0; // @[Dispatch2Rs.scala 250:71]
  assign io_readFpState_1_req = io_out_5_bits_psrc_0; // @[Dispatch2Rs.scala 250:71]
  assign io_out_0_valid = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : selectValid & ~_io_out_0_valid_T_6; // @[Dispatch2Rs.scala 223:25 265:82 267:30]
  assign io_out_0_bits_cf_trigger_backendEn_0 = canAccept_0 & io_in_0_bits_cf_trigger_backendEn_0 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_trigger_backendEn_1 = canAccept_0 & io_in_0_bits_cf_trigger_backendEn_1 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_trigger_backendHit_0 = canAccept_0 & io_in_0_bits_cf_trigger_backendHit_0 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendHit_0 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendHit_0 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendHit_0; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_trigger_backendHit_1 = canAccept_0 & io_in_0_bits_cf_trigger_backendHit_1 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendHit_1 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendHit_1 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendHit_1; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_trigger_backendHit_2 = canAccept_0 & io_in_0_bits_cf_trigger_backendHit_2 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendHit_2 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendHit_2 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendHit_2; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_trigger_backendHit_3 = canAccept_0 & io_in_0_bits_cf_trigger_backendHit_3 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendHit_3 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendHit_3 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendHit_3; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_trigger_backendHit_4 = canAccept_0 & io_in_0_bits_cf_trigger_backendHit_4 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendHit_4 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendHit_4 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendHit_4; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_trigger_backendHit_5 = canAccept_0 & io_in_0_bits_cf_trigger_backendHit_5 | selectIdxOH__1 &
    io_in_1_bits_cf_trigger_backendHit_5 | selectIdxOH__2 & io_in_2_bits_cf_trigger_backendHit_5 | selectIdxOH__3 &
    io_in_3_bits_cf_trigger_backendHit_5; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_pd_isRVC = canAccept_0 & io_in_0_bits_cf_pd_isRVC | selectIdxOH__1 & io_in_1_bits_cf_pd_isRVC
     | selectIdxOH__2 & io_in_2_bits_cf_pd_isRVC | selectIdxOH__3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_pd_brType = _io_out_0_bits_T_516 | _io_out_0_bits_T_514; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_pd_isCall = canAccept_0 & io_in_0_bits_cf_pd_isCall | selectIdxOH__1 &
    io_in_1_bits_cf_pd_isCall | selectIdxOH__2 & io_in_2_bits_cf_pd_isCall | selectIdxOH__3 & io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_pd_isRet = canAccept_0 & io_in_0_bits_cf_pd_isRet | selectIdxOH__1 & io_in_1_bits_cf_pd_isRet
     | selectIdxOH__2 & io_in_2_bits_cf_pd_isRet | selectIdxOH__3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_pred_taken = canAccept_0 & io_in_0_bits_cf_pred_taken | selectIdxOH__1 &
    io_in_1_bits_cf_pred_taken | selectIdxOH__2 & io_in_2_bits_cf_pred_taken | selectIdxOH__3 &
    io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_waitForRobIdx_value = _io_out_0_bits_T_467 | _io_out_0_bits_T_465; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_loadWaitBit = canAccept_0 & io_in_0_bits_cf_loadWaitBit | selectIdxOH__1 &
    io_in_1_bits_cf_loadWaitBit | selectIdxOH__2 & io_in_2_bits_cf_loadWaitBit | selectIdxOH__3 &
    io_in_3_bits_cf_loadWaitBit; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_loadWaitStrict = canAccept_0 & io_in_0_bits_cf_loadWaitStrict | selectIdxOH__1 &
    io_in_1_bits_cf_loadWaitStrict | selectIdxOH__2 & io_in_2_bits_cf_loadWaitStrict | selectIdxOH__3 &
    io_in_3_bits_cf_loadWaitStrict; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_ssid = _io_out_0_bits_T_446 | _io_out_0_bits_T_444; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_ftqPtr_flag = canAccept_0 & io_in_0_bits_cf_ftqPtr_flag | selectIdxOH__1 &
    io_in_1_bits_cf_ftqPtr_flag | selectIdxOH__2 & io_in_2_bits_cf_ftqPtr_flag | selectIdxOH__3 &
    io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_ftqPtr_value = _io_out_0_bits_T_432 | _io_out_0_bits_T_430; // @[Mux.scala 27:73]
  assign io_out_0_bits_cf_ftqOffset = _io_out_0_bits_T_425 | _io_out_0_bits_T_423; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_srcType_0 = _io_out_0_bits_T_397 | _io_out_0_bits_T_395; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fuType = _io_out_0_bits_T_362 | _io_out_0_bits_T_360; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fuOpType = _io_out_0_bits_T_355 | _io_out_0_bits_T_353; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_rfWen = canAccept_0 & io_in_0_bits_ctrl_rfWen | selectIdxOH__1 & io_in_1_bits_ctrl_rfWen |
    selectIdxOH__2 & io_in_2_bits_ctrl_rfWen | selectIdxOH__3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpWen = canAccept_0 & io_in_0_bits_ctrl_fpWen | selectIdxOH__1 & io_in_1_bits_ctrl_fpWen |
    selectIdxOH__2 & io_in_2_bits_ctrl_fpWen | selectIdxOH__3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_imm = _io_out_0_bits_T_292 | _io_out_0_bits_T_290; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_isAddSub = canAccept_0 & io_in_0_bits_ctrl_fpu_isAddSub | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_isAddSub | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_isAddSub | selectIdxOH__3 &
    io_in_3_bits_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_typeTagIn = canAccept_0 & io_in_0_bits_ctrl_fpu_typeTagIn | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_typeTagIn | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_typeTagIn | selectIdxOH__3 &
    io_in_3_bits_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_typeTagOut = canAccept_0 & io_in_0_bits_ctrl_fpu_typeTagOut | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_typeTagOut | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_typeTagOut | selectIdxOH__3 &
    io_in_3_bits_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_fromInt = canAccept_0 & io_in_0_bits_ctrl_fpu_fromInt | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_fromInt | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_fromInt | selectIdxOH__3 &
    io_in_3_bits_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_wflags = canAccept_0 & io_in_0_bits_ctrl_fpu_wflags | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_wflags | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_wflags | selectIdxOH__3 &
    io_in_3_bits_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_fpWen = canAccept_0 & io_in_0_bits_ctrl_fpu_fpWen | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_fpWen | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_fpWen | selectIdxOH__3 &
    io_in_3_bits_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_fmaCmd = _io_out_0_bits_T_236 | _io_out_0_bits_T_234; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_div = canAccept_0 & io_in_0_bits_ctrl_fpu_div | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_div | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_div | selectIdxOH__3 & io_in_3_bits_ctrl_fpu_div; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_sqrt = canAccept_0 & io_in_0_bits_ctrl_fpu_sqrt | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_sqrt | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_sqrt | selectIdxOH__3 &
    io_in_3_bits_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_fcvt = canAccept_0 & io_in_0_bits_ctrl_fpu_fcvt | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_fcvt | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_fcvt | selectIdxOH__3 &
    io_in_3_bits_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_typ = _io_out_0_bits_T_208 | _io_out_0_bits_T_206; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_fmt = _io_out_0_bits_T_201 | _io_out_0_bits_T_199; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_ren3 = canAccept_0 & io_in_0_bits_ctrl_fpu_ren3 | selectIdxOH__1 &
    io_in_1_bits_ctrl_fpu_ren3 | selectIdxOH__2 & io_in_2_bits_ctrl_fpu_ren3 | selectIdxOH__3 &
    io_in_3_bits_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  assign io_out_0_bits_ctrl_fpu_rm = _io_out_0_bits_T_187 | _io_out_0_bits_T_185; // @[Mux.scala 27:73]
  assign io_out_0_bits_srcState_0 = io_readIntState_0_resp; // @[Dispatch2Rs.scala 245:74]
  assign io_out_0_bits_psrc_0 = _io_out_0_bits_T_124 | _io_out_0_bits_T_122; // @[Mux.scala 27:73]
  assign io_out_0_bits_psrc_1 = _io_out_0_bits_T_131 | _io_out_0_bits_T_129; // @[Mux.scala 27:73]
  assign io_out_0_bits_pdest = _io_out_0_bits_T_117 | _io_out_0_bits_T_115; // @[Mux.scala 27:73]
  assign io_out_0_bits_robIdx_flag = canAccept_0 & io_in_0_bits_robIdx_flag | selectIdxOH__1 & io_in_1_bits_robIdx_flag
     | selectIdxOH__2 & io_in_2_bits_robIdx_flag | selectIdxOH__3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  assign io_out_0_bits_robIdx_value = _io_out_0_bits_T_96 | _io_out_0_bits_T_94; // @[Mux.scala 27:73]
  assign io_out_0_bits_lqIdx_flag = canAccept_0 & io_enqLsq_resp_0_lqIdx_flag | selectIdxOH__1 &
    io_enqLsq_resp_1_lqIdx_flag | selectIdxOH__2 & io_enqLsq_resp_2_lqIdx_flag | selectIdxOH__3 &
    io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_0_bits_lqIdx_value = _io_out_0_bits_T_82 | _io_out_0_bits_T_80; // @[Mux.scala 27:73]
  assign io_out_0_bits_sqIdx_flag = canAccept_0 & io_enqLsq_resp_0_sqIdx_flag | selectIdxOH__1 &
    io_enqLsq_resp_1_sqIdx_flag | selectIdxOH__2 & io_enqLsq_resp_2_sqIdx_flag | selectIdxOH__3 &
    io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_0_bits_sqIdx_value = _io_out_0_bits_T_68 | _io_out_0_bits_T_66; // @[Mux.scala 27:73]
  assign io_out_1_valid = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : selectValid_1 & ~_io_out_1_valid_T_6; // @[Dispatch2Rs.scala 223:25 265:82 267:30]
  assign io_out_1_bits_cf_trigger_backendEn_0 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH_1_2
     & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_trigger_backendEn_1 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH_1_2
     & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_trigger_backendHit_0 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendHit_0 |
    selectIdxOH_1_2 & io_in_2_bits_cf_trigger_backendHit_0 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendHit_0; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_trigger_backendHit_1 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendHit_1 |
    selectIdxOH_1_2 & io_in_2_bits_cf_trigger_backendHit_1 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendHit_1; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_trigger_backendHit_2 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendHit_2 |
    selectIdxOH_1_2 & io_in_2_bits_cf_trigger_backendHit_2 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendHit_2; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_trigger_backendHit_3 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendHit_3 |
    selectIdxOH_1_2 & io_in_2_bits_cf_trigger_backendHit_3 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendHit_3; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_trigger_backendHit_4 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendHit_4 |
    selectIdxOH_1_2 & io_in_2_bits_cf_trigger_backendHit_4 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendHit_4; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_trigger_backendHit_5 = selectIdxOH_1_1 & io_in_1_bits_cf_trigger_backendHit_5 |
    selectIdxOH_1_2 & io_in_2_bits_cf_trigger_backendHit_5 | selectIdxOH_1_3 & io_in_3_bits_cf_trigger_backendHit_5; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_pd_isRVC = selectIdxOH_1_1 & io_in_1_bits_cf_pd_isRVC | selectIdxOH_1_2 &
    io_in_2_bits_cf_pd_isRVC | selectIdxOH_1_3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_pd_brType = _io_out_1_bits_T_516 | _io_out_1_bits_T_514; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_pd_isCall = selectIdxOH_1_1 & io_in_1_bits_cf_pd_isCall | selectIdxOH_1_2 &
    io_in_2_bits_cf_pd_isCall | selectIdxOH_1_3 & io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_pd_isRet = selectIdxOH_1_1 & io_in_1_bits_cf_pd_isRet | selectIdxOH_1_2 &
    io_in_2_bits_cf_pd_isRet | selectIdxOH_1_3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_pred_taken = selectIdxOH_1_1 & io_in_1_bits_cf_pred_taken | selectIdxOH_1_2 &
    io_in_2_bits_cf_pred_taken | selectIdxOH_1_3 & io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_waitForRobIdx_value = _io_out_1_bits_T_467 | _io_out_1_bits_T_465; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_loadWaitBit = selectIdxOH_1_1 & io_in_1_bits_cf_loadWaitBit | selectIdxOH_1_2 &
    io_in_2_bits_cf_loadWaitBit | selectIdxOH_1_3 & io_in_3_bits_cf_loadWaitBit; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_loadWaitStrict = selectIdxOH_1_1 & io_in_1_bits_cf_loadWaitStrict | selectIdxOH_1_2 &
    io_in_2_bits_cf_loadWaitStrict | selectIdxOH_1_3 & io_in_3_bits_cf_loadWaitStrict; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_ssid = _io_out_1_bits_T_446 | _io_out_1_bits_T_444; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_ftqPtr_flag = selectIdxOH_1_1 & io_in_1_bits_cf_ftqPtr_flag | selectIdxOH_1_2 &
    io_in_2_bits_cf_ftqPtr_flag | selectIdxOH_1_3 & io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_ftqPtr_value = _io_out_1_bits_T_432 | _io_out_1_bits_T_430; // @[Mux.scala 27:73]
  assign io_out_1_bits_cf_ftqOffset = _io_out_1_bits_T_425 | _io_out_1_bits_T_423; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_srcType_0 = _io_out_1_bits_T_397 | _io_out_1_bits_T_395; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fuType = _io_out_1_bits_T_362 | _io_out_1_bits_T_360; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fuOpType = _io_out_1_bits_T_355 | _io_out_1_bits_T_353; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_rfWen = selectIdxOH_1_1 & io_in_1_bits_ctrl_rfWen | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_rfWen | selectIdxOH_1_3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpWen = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpWen | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpWen | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_imm = _io_out_1_bits_T_292 | _io_out_1_bits_T_290; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_isAddSub = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_isAddSub | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_isAddSub | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_typeTagIn = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_typeTagIn | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_typeTagIn | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_typeTagOut = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_typeTagOut | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_typeTagOut | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_fromInt = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_fromInt | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_fromInt | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_wflags = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_wflags | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_wflags | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_fpWen = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_fpWen | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_fpWen | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_fmaCmd = _io_out_1_bits_T_236 | _io_out_1_bits_T_234; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_div = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_div | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_div | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_div; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_sqrt = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_sqrt | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_sqrt | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_fcvt = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_fcvt | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_fcvt | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_typ = _io_out_1_bits_T_208 | _io_out_1_bits_T_206; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_fmt = _io_out_1_bits_T_201 | _io_out_1_bits_T_199; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_ren3 = selectIdxOH_1_1 & io_in_1_bits_ctrl_fpu_ren3 | selectIdxOH_1_2 &
    io_in_2_bits_ctrl_fpu_ren3 | selectIdxOH_1_3 & io_in_3_bits_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  assign io_out_1_bits_ctrl_fpu_rm = _io_out_1_bits_T_187 | _io_out_1_bits_T_185; // @[Mux.scala 27:73]
  assign io_out_1_bits_srcState_0 = io_readIntState_1_resp; // @[Dispatch2Rs.scala 245:74]
  assign io_out_1_bits_psrc_0 = _io_out_1_bits_T_124 | _io_out_1_bits_T_122; // @[Mux.scala 27:73]
  assign io_out_1_bits_psrc_1 = _io_out_1_bits_T_131 | _io_out_1_bits_T_129; // @[Mux.scala 27:73]
  assign io_out_1_bits_pdest = _io_out_1_bits_T_117 | _io_out_1_bits_T_115; // @[Mux.scala 27:73]
  assign io_out_1_bits_robIdx_flag = selectIdxOH_1_1 & io_in_1_bits_robIdx_flag | selectIdxOH_1_2 &
    io_in_2_bits_robIdx_flag | selectIdxOH_1_3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  assign io_out_1_bits_robIdx_value = _io_out_1_bits_T_96 | _io_out_1_bits_T_94; // @[Mux.scala 27:73]
  assign io_out_1_bits_lqIdx_flag = selectIdxOH_1_1 & io_enqLsq_resp_1_lqIdx_flag | selectIdxOH_1_2 &
    io_enqLsq_resp_2_lqIdx_flag | selectIdxOH_1_3 & io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_1_bits_lqIdx_value = _io_out_1_bits_T_82 | _io_out_1_bits_T_80; // @[Mux.scala 27:73]
  assign io_out_1_bits_sqIdx_flag = selectIdxOH_1_1 & io_enqLsq_resp_1_sqIdx_flag | selectIdxOH_1_2 &
    io_enqLsq_resp_2_sqIdx_flag | selectIdxOH_1_3 & io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_1_bits_sqIdx_value = _io_out_1_bits_T_68 | _io_out_1_bits_T_66; // @[Mux.scala 27:73]
  assign io_out_2_valid = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : io_out_4_valid; // @[Dispatch2Rs.scala 228:19 265:82 267:30]
  assign io_out_2_bits_cf_trigger_backendEn_0 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendEn_0 | selectIdxOH_2_1 &
    io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH_2_3 &
    io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_trigger_backendEn_1 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendEn_1 | selectIdxOH_2_1 &
    io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH_2_3 &
    io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_trigger_backendHit_0 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_0 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_0 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_0 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_0; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_trigger_backendHit_1 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_1 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_1 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_1 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_1; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_trigger_backendHit_2 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_2 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_2 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_2 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_2; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_trigger_backendHit_3 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_3 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_3 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_3 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_3; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_trigger_backendHit_4 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_4 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_4 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_4 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_4; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_trigger_backendHit_5 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_5 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_5 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_5 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_5; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_pd_isRVC = canAccept_0_1 & io_in_0_bits_cf_pd_isRVC | selectIdxOH_2_1 &
    io_in_1_bits_cf_pd_isRVC | selectIdxOH_2_2 & io_in_2_bits_cf_pd_isRVC | selectIdxOH_2_3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_pd_brType = _io_out_2_bits_T_516 | _io_out_2_bits_T_514; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_pd_isCall = canAccept_0_1 & io_in_0_bits_cf_pd_isCall | selectIdxOH_2_1 &
    io_in_1_bits_cf_pd_isCall | selectIdxOH_2_2 & io_in_2_bits_cf_pd_isCall | selectIdxOH_2_3 &
    io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_pd_isRet = canAccept_0_1 & io_in_0_bits_cf_pd_isRet | selectIdxOH_2_1 &
    io_in_1_bits_cf_pd_isRet | selectIdxOH_2_2 & io_in_2_bits_cf_pd_isRet | selectIdxOH_2_3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_pred_taken = canAccept_0_1 & io_in_0_bits_cf_pred_taken | selectIdxOH_2_1 &
    io_in_1_bits_cf_pred_taken | selectIdxOH_2_2 & io_in_2_bits_cf_pred_taken | selectIdxOH_2_3 &
    io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_waitForRobIdx_value = _io_out_2_bits_T_467 | _io_out_2_bits_T_465; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_loadWaitBit = canAccept_0_1 & io_in_0_bits_cf_loadWaitBit | selectIdxOH_2_1 &
    io_in_1_bits_cf_loadWaitBit | selectIdxOH_2_2 & io_in_2_bits_cf_loadWaitBit | selectIdxOH_2_3 &
    io_in_3_bits_cf_loadWaitBit; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_loadWaitStrict = canAccept_0_1 & io_in_0_bits_cf_loadWaitStrict | selectIdxOH_2_1 &
    io_in_1_bits_cf_loadWaitStrict | selectIdxOH_2_2 & io_in_2_bits_cf_loadWaitStrict | selectIdxOH_2_3 &
    io_in_3_bits_cf_loadWaitStrict; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_ssid = _io_out_2_bits_T_446 | _io_out_2_bits_T_444; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_ftqPtr_flag = canAccept_0_1 & io_in_0_bits_cf_ftqPtr_flag | selectIdxOH_2_1 &
    io_in_1_bits_cf_ftqPtr_flag | selectIdxOH_2_2 & io_in_2_bits_cf_ftqPtr_flag | selectIdxOH_2_3 &
    io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_ftqPtr_value = _io_out_2_bits_T_432 | _io_out_2_bits_T_430; // @[Mux.scala 27:73]
  assign io_out_2_bits_cf_ftqOffset = _io_out_2_bits_T_425 | _io_out_2_bits_T_423; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_srcType_0 = _io_out_2_bits_T_397 | _io_out_2_bits_T_395; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fuType = _io_out_2_bits_T_362 | _io_out_2_bits_T_360; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fuOpType = _io_out_2_bits_T_355 | _io_out_2_bits_T_353; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_rfWen = canAccept_0_1 & io_in_0_bits_ctrl_rfWen | selectIdxOH_2_1 & io_in_1_bits_ctrl_rfWen
     | selectIdxOH_2_2 & io_in_2_bits_ctrl_rfWen | selectIdxOH_2_3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpWen = canAccept_0_1 & io_in_0_bits_ctrl_fpWen | selectIdxOH_2_1 & io_in_1_bits_ctrl_fpWen
     | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpWen | selectIdxOH_2_3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_imm = _io_out_2_bits_T_292 | _io_out_2_bits_T_290; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_isAddSub = canAccept_0_1 & io_in_0_bits_ctrl_fpu_isAddSub | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_isAddSub | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_isAddSub | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_typeTagIn = canAccept_0_1 & io_in_0_bits_ctrl_fpu_typeTagIn | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_typeTagIn | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_typeTagIn | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_typeTagOut = canAccept_0_1 & io_in_0_bits_ctrl_fpu_typeTagOut | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_typeTagOut | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_typeTagOut | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_fromInt = canAccept_0_1 & io_in_0_bits_ctrl_fpu_fromInt | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_fromInt | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_fromInt | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_wflags = canAccept_0_1 & io_in_0_bits_ctrl_fpu_wflags | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_wflags | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_wflags | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_fpWen = canAccept_0_1 & io_in_0_bits_ctrl_fpu_fpWen | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_fpWen | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_fpWen | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_fmaCmd = _io_out_2_bits_T_236 | _io_out_2_bits_T_234; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_div = canAccept_0_1 & io_in_0_bits_ctrl_fpu_div | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_div | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_div | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_div; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_sqrt = canAccept_0_1 & io_in_0_bits_ctrl_fpu_sqrt | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_sqrt | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_sqrt | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_fcvt = canAccept_0_1 & io_in_0_bits_ctrl_fpu_fcvt | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_fcvt | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_fcvt | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_typ = _io_out_2_bits_T_208 | _io_out_2_bits_T_206; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_fmt = _io_out_2_bits_T_201 | _io_out_2_bits_T_199; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_ren3 = canAccept_0_1 & io_in_0_bits_ctrl_fpu_ren3 | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_ren3 | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_ren3 | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  assign io_out_2_bits_ctrl_fpu_rm = _io_out_2_bits_T_187 | _io_out_2_bits_T_185; // @[Mux.scala 27:73]
  assign io_out_2_bits_srcState_0 = io_readIntState_2_resp; // @[Dispatch2Rs.scala 245:74]
  assign io_out_2_bits_psrc_0 = _io_out_2_bits_T_124 | _io_out_2_bits_T_122; // @[Mux.scala 27:73]
  assign io_out_2_bits_pdest = _io_out_2_bits_T_117 | _io_out_2_bits_T_115; // @[Mux.scala 27:73]
  assign io_out_2_bits_robIdx_flag = canAccept_0_1 & io_in_0_bits_robIdx_flag | selectIdxOH_2_1 &
    io_in_1_bits_robIdx_flag | selectIdxOH_2_2 & io_in_2_bits_robIdx_flag | selectIdxOH_2_3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  assign io_out_2_bits_robIdx_value = _io_out_2_bits_T_96 | _io_out_2_bits_T_94; // @[Mux.scala 27:73]
  assign io_out_2_bits_lqIdx_flag = canAccept_0_1 & io_enqLsq_resp_0_lqIdx_flag | selectIdxOH_2_1 &
    io_enqLsq_resp_1_lqIdx_flag | selectIdxOH_2_2 & io_enqLsq_resp_2_lqIdx_flag | selectIdxOH_2_3 &
    io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_2_bits_lqIdx_value = _io_out_2_bits_T_82 | _io_out_2_bits_T_80; // @[Mux.scala 27:73]
  assign io_out_2_bits_sqIdx_flag = canAccept_0_1 & io_enqLsq_resp_0_sqIdx_flag | selectIdxOH_2_1 &
    io_enqLsq_resp_1_sqIdx_flag | selectIdxOH_2_2 & io_enqLsq_resp_2_sqIdx_flag | selectIdxOH_2_3 &
    io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_2_bits_sqIdx_value = _io_out_2_bits_T_68 | _io_out_2_bits_T_66; // @[Mux.scala 27:73]
  assign io_out_3_valid = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : io_out_5_valid; // @[Dispatch2Rs.scala 228:19 265:82 267:30]
  assign io_out_3_bits_cf_trigger_backendEn_0 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH_3_2
     & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_trigger_backendEn_1 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH_3_2
     & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_trigger_backendHit_0 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_0 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_0 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_0; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_trigger_backendHit_1 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_1 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_1 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_1; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_trigger_backendHit_2 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_2 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_2 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_2; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_trigger_backendHit_3 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_3 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_3 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_3; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_trigger_backendHit_4 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_4 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_4 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_4; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_trigger_backendHit_5 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_5 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_5 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_5; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_pd_isRVC = selectIdxOH_3_1 & io_in_1_bits_cf_pd_isRVC | selectIdxOH_3_2 &
    io_in_2_bits_cf_pd_isRVC | selectIdxOH_3_3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_pd_brType = _io_out_3_bits_T_516 | _io_out_3_bits_T_514; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_pd_isCall = selectIdxOH_3_1 & io_in_1_bits_cf_pd_isCall | selectIdxOH_3_2 &
    io_in_2_bits_cf_pd_isCall | selectIdxOH_3_3 & io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_pd_isRet = selectIdxOH_3_1 & io_in_1_bits_cf_pd_isRet | selectIdxOH_3_2 &
    io_in_2_bits_cf_pd_isRet | selectIdxOH_3_3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_pred_taken = selectIdxOH_3_1 & io_in_1_bits_cf_pred_taken | selectIdxOH_3_2 &
    io_in_2_bits_cf_pred_taken | selectIdxOH_3_3 & io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_waitForRobIdx_value = _io_out_3_bits_T_467 | _io_out_3_bits_T_465; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_loadWaitBit = selectIdxOH_3_1 & io_in_1_bits_cf_loadWaitBit | selectIdxOH_3_2 &
    io_in_2_bits_cf_loadWaitBit | selectIdxOH_3_3 & io_in_3_bits_cf_loadWaitBit; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_loadWaitStrict = selectIdxOH_3_1 & io_in_1_bits_cf_loadWaitStrict | selectIdxOH_3_2 &
    io_in_2_bits_cf_loadWaitStrict | selectIdxOH_3_3 & io_in_3_bits_cf_loadWaitStrict; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_ssid = _io_out_3_bits_T_446 | _io_out_3_bits_T_444; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_ftqPtr_flag = selectIdxOH_3_1 & io_in_1_bits_cf_ftqPtr_flag | selectIdxOH_3_2 &
    io_in_2_bits_cf_ftqPtr_flag | selectIdxOH_3_3 & io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_ftqPtr_value = _io_out_3_bits_T_432 | _io_out_3_bits_T_430; // @[Mux.scala 27:73]
  assign io_out_3_bits_cf_ftqOffset = _io_out_3_bits_T_425 | _io_out_3_bits_T_423; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_srcType_0 = _io_out_3_bits_T_397 | _io_out_3_bits_T_395; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fuType = _io_out_3_bits_T_362 | _io_out_3_bits_T_360; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fuOpType = _io_out_3_bits_T_355 | _io_out_3_bits_T_353; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_rfWen = selectIdxOH_3_1 & io_in_1_bits_ctrl_rfWen | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_rfWen | selectIdxOH_3_3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpWen = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpWen | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpWen | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_imm = _io_out_3_bits_T_292 | _io_out_3_bits_T_290; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_isAddSub = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_isAddSub | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_isAddSub | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_typeTagIn = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_typeTagIn | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_typeTagIn | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_typeTagOut = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_typeTagOut | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_typeTagOut | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_fromInt = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_fromInt | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_fromInt | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_wflags = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_wflags | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_wflags | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_fpWen = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_fpWen | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_fpWen | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_fmaCmd = _io_out_3_bits_T_236 | _io_out_3_bits_T_234; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_div = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_div | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_div | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_div; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_sqrt = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_sqrt | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_sqrt | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_fcvt = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_fcvt | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_fcvt | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_typ = _io_out_3_bits_T_208 | _io_out_3_bits_T_206; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_fmt = _io_out_3_bits_T_201 | _io_out_3_bits_T_199; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_ren3 = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_ren3 | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_ren3 | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  assign io_out_3_bits_ctrl_fpu_rm = _io_out_3_bits_T_187 | _io_out_3_bits_T_185; // @[Mux.scala 27:73]
  assign io_out_3_bits_srcState_0 = io_readIntState_3_resp; // @[Dispatch2Rs.scala 245:74]
  assign io_out_3_bits_psrc_0 = _io_out_3_bits_T_124 | _io_out_3_bits_T_122; // @[Mux.scala 27:73]
  assign io_out_3_bits_pdest = _io_out_3_bits_T_117 | _io_out_3_bits_T_115; // @[Mux.scala 27:73]
  assign io_out_3_bits_robIdx_flag = selectIdxOH_3_1 & io_in_1_bits_robIdx_flag | selectIdxOH_3_2 &
    io_in_2_bits_robIdx_flag | selectIdxOH_3_3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  assign io_out_3_bits_robIdx_value = _io_out_3_bits_T_96 | _io_out_3_bits_T_94; // @[Mux.scala 27:73]
  assign io_out_3_bits_lqIdx_flag = selectIdxOH_3_1 & io_enqLsq_resp_1_lqIdx_flag | selectIdxOH_3_2 &
    io_enqLsq_resp_2_lqIdx_flag | selectIdxOH_3_3 & io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_3_bits_lqIdx_value = _io_out_3_bits_T_82 | _io_out_3_bits_T_80; // @[Mux.scala 27:73]
  assign io_out_3_bits_sqIdx_flag = selectIdxOH_3_1 & io_enqLsq_resp_1_sqIdx_flag | selectIdxOH_3_2 &
    io_enqLsq_resp_2_sqIdx_flag | selectIdxOH_3_3 & io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_3_bits_sqIdx_value = _io_out_3_bits_T_68 | _io_out_3_bits_T_66; // @[Mux.scala 27:73]
  assign io_out_4_valid = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : selectValid_2 & ~_io_out_2_valid_T_6; // @[Dispatch2Rs.scala 223:25 265:82 267:30]
  assign io_out_4_bits_cf_trigger_backendEn_0 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendEn_0 | selectIdxOH_2_1 &
    io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH_2_3 &
    io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_trigger_backendEn_1 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendEn_1 | selectIdxOH_2_1 &
    io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH_2_3 &
    io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_trigger_backendHit_0 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_0 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_0 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_0 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_0; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_trigger_backendHit_1 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_1 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_1 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_1 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_1; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_trigger_backendHit_2 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_2 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_2 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_2 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_2; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_trigger_backendHit_3 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_3 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_3 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_3 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_3; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_trigger_backendHit_4 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_4 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_4 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_4 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_4; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_trigger_backendHit_5 = canAccept_0_1 & io_in_0_bits_cf_trigger_backendHit_5 | selectIdxOH_2_1
     & io_in_1_bits_cf_trigger_backendHit_5 | selectIdxOH_2_2 & io_in_2_bits_cf_trigger_backendHit_5 | selectIdxOH_2_3
     & io_in_3_bits_cf_trigger_backendHit_5; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_pd_isRVC = canAccept_0_1 & io_in_0_bits_cf_pd_isRVC | selectIdxOH_2_1 &
    io_in_1_bits_cf_pd_isRVC | selectIdxOH_2_2 & io_in_2_bits_cf_pd_isRVC | selectIdxOH_2_3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_pd_brType = _io_out_2_bits_T_516 | _io_out_2_bits_T_514; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_pd_isCall = canAccept_0_1 & io_in_0_bits_cf_pd_isCall | selectIdxOH_2_1 &
    io_in_1_bits_cf_pd_isCall | selectIdxOH_2_2 & io_in_2_bits_cf_pd_isCall | selectIdxOH_2_3 &
    io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_pd_isRet = canAccept_0_1 & io_in_0_bits_cf_pd_isRet | selectIdxOH_2_1 &
    io_in_1_bits_cf_pd_isRet | selectIdxOH_2_2 & io_in_2_bits_cf_pd_isRet | selectIdxOH_2_3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_pred_taken = canAccept_0_1 & io_in_0_bits_cf_pred_taken | selectIdxOH_2_1 &
    io_in_1_bits_cf_pred_taken | selectIdxOH_2_2 & io_in_2_bits_cf_pred_taken | selectIdxOH_2_3 &
    io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_ssid = _io_out_2_bits_T_446 | _io_out_2_bits_T_444; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_ftqPtr_flag = canAccept_0_1 & io_in_0_bits_cf_ftqPtr_flag | selectIdxOH_2_1 &
    io_in_1_bits_cf_ftqPtr_flag | selectIdxOH_2_2 & io_in_2_bits_cf_ftqPtr_flag | selectIdxOH_2_3 &
    io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_ftqPtr_value = _io_out_2_bits_T_432 | _io_out_2_bits_T_430; // @[Mux.scala 27:73]
  assign io_out_4_bits_cf_ftqOffset = _io_out_2_bits_T_425 | _io_out_2_bits_T_423; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_srcType_0 = io_out_4_bits_ctrl_srcType_1; // @[Dispatch2Rs.scala 229:42]
  assign io_out_4_bits_ctrl_srcType_1 = _io_out_2_bits_T_404 | _io_out_2_bits_T_402; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fuType = _io_out_2_bits_T_362 | _io_out_2_bits_T_360; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fuOpType = _io_out_2_bits_T_355 | _io_out_2_bits_T_353; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_rfWen = canAccept_0_1 & io_in_0_bits_ctrl_rfWen | selectIdxOH_2_1 & io_in_1_bits_ctrl_rfWen
     | selectIdxOH_2_2 & io_in_2_bits_ctrl_rfWen | selectIdxOH_2_3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpWen = canAccept_0_1 & io_in_0_bits_ctrl_fpWen | selectIdxOH_2_1 & io_in_1_bits_ctrl_fpWen
     | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpWen | selectIdxOH_2_3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_imm = _io_out_2_bits_T_292 | _io_out_2_bits_T_290; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_isAddSub = canAccept_0_1 & io_in_0_bits_ctrl_fpu_isAddSub | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_isAddSub | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_isAddSub | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_typeTagIn = canAccept_0_1 & io_in_0_bits_ctrl_fpu_typeTagIn | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_typeTagIn | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_typeTagIn | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_typeTagOut = canAccept_0_1 & io_in_0_bits_ctrl_fpu_typeTagOut | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_typeTagOut | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_typeTagOut | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_fromInt = canAccept_0_1 & io_in_0_bits_ctrl_fpu_fromInt | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_fromInt | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_fromInt | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_wflags = canAccept_0_1 & io_in_0_bits_ctrl_fpu_wflags | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_wflags | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_wflags | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_fpWen = canAccept_0_1 & io_in_0_bits_ctrl_fpu_fpWen | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_fpWen | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_fpWen | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_fmaCmd = _io_out_2_bits_T_236 | _io_out_2_bits_T_234; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_div = canAccept_0_1 & io_in_0_bits_ctrl_fpu_div | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_div | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_div | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_div; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_sqrt = canAccept_0_1 & io_in_0_bits_ctrl_fpu_sqrt | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_sqrt | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_sqrt | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_fcvt = canAccept_0_1 & io_in_0_bits_ctrl_fpu_fcvt | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_fcvt | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_fcvt | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_typ = _io_out_2_bits_T_208 | _io_out_2_bits_T_206; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_fmt = _io_out_2_bits_T_201 | _io_out_2_bits_T_199; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_ren3 = canAccept_0_1 & io_in_0_bits_ctrl_fpu_ren3 | selectIdxOH_2_1 &
    io_in_1_bits_ctrl_fpu_ren3 | selectIdxOH_2_2 & io_in_2_bits_ctrl_fpu_ren3 | selectIdxOH_2_3 &
    io_in_3_bits_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  assign io_out_4_bits_ctrl_fpu_rm = _io_out_2_bits_T_187 | _io_out_2_bits_T_185; // @[Mux.scala 27:73]
  assign io_out_4_bits_srcState_0 = io_out_4_bits_ctrl_srcType_0[1] ? io_readFpState_0_resp : io_readIntState_4_resp; // @[Dispatch2Rs.scala 256:70 257:17 245:74]
  assign io_out_4_bits_psrc_0 = io_out_4_bits_psrc_1; // @[Dispatch2Rs.scala 230:34]
  assign io_out_4_bits_psrc_1 = _io_out_2_bits_T_131 | _io_out_2_bits_T_129; // @[Mux.scala 27:73]
  assign io_out_4_bits_pdest = _io_out_2_bits_T_117 | _io_out_2_bits_T_115; // @[Mux.scala 27:73]
  assign io_out_4_bits_robIdx_flag = canAccept_0_1 & io_in_0_bits_robIdx_flag | selectIdxOH_2_1 &
    io_in_1_bits_robIdx_flag | selectIdxOH_2_2 & io_in_2_bits_robIdx_flag | selectIdxOH_2_3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  assign io_out_4_bits_robIdx_value = _io_out_2_bits_T_96 | _io_out_2_bits_T_94; // @[Mux.scala 27:73]
  assign io_out_4_bits_lqIdx_flag = canAccept_0_1 & io_enqLsq_resp_0_lqIdx_flag | selectIdxOH_2_1 &
    io_enqLsq_resp_1_lqIdx_flag | selectIdxOH_2_2 & io_enqLsq_resp_2_lqIdx_flag | selectIdxOH_2_3 &
    io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_4_bits_lqIdx_value = _io_out_2_bits_T_82 | _io_out_2_bits_T_80; // @[Mux.scala 27:73]
  assign io_out_4_bits_sqIdx_flag = canAccept_0_1 & io_enqLsq_resp_0_sqIdx_flag | selectIdxOH_2_1 &
    io_enqLsq_resp_1_sqIdx_flag | selectIdxOH_2_2 & io_enqLsq_resp_2_sqIdx_flag | selectIdxOH_2_3 &
    io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_4_bits_sqIdx_value = _io_out_2_bits_T_68 | _io_out_2_bits_T_66; // @[Mux.scala 27:73]
  assign io_out_5_valid = ~(&_T_70) | ~io_enqLsq_canAccept ? 1'h0 : selectValid_3 & ~_io_out_3_valid_T_6; // @[Dispatch2Rs.scala 223:25 265:82 267:30]
  assign io_out_5_bits_cf_trigger_backendEn_0 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendEn_0 | selectIdxOH_3_2
     & io_in_2_bits_cf_trigger_backendEn_0 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendEn_0; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_trigger_backendEn_1 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendEn_1 | selectIdxOH_3_2
     & io_in_2_bits_cf_trigger_backendEn_1 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendEn_1; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_trigger_backendHit_0 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_0 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_0 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_0; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_trigger_backendHit_1 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_1 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_1 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_1; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_trigger_backendHit_2 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_2 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_2 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_2; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_trigger_backendHit_3 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_3 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_3 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_3; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_trigger_backendHit_4 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_4 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_4 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_4; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_trigger_backendHit_5 = selectIdxOH_3_1 & io_in_1_bits_cf_trigger_backendHit_5 |
    selectIdxOH_3_2 & io_in_2_bits_cf_trigger_backendHit_5 | selectIdxOH_3_3 & io_in_3_bits_cf_trigger_backendHit_5; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_pd_isRVC = selectIdxOH_3_1 & io_in_1_bits_cf_pd_isRVC | selectIdxOH_3_2 &
    io_in_2_bits_cf_pd_isRVC | selectIdxOH_3_3 & io_in_3_bits_cf_pd_isRVC; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_pd_brType = _io_out_3_bits_T_516 | _io_out_3_bits_T_514; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_pd_isCall = selectIdxOH_3_1 & io_in_1_bits_cf_pd_isCall | selectIdxOH_3_2 &
    io_in_2_bits_cf_pd_isCall | selectIdxOH_3_3 & io_in_3_bits_cf_pd_isCall; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_pd_isRet = selectIdxOH_3_1 & io_in_1_bits_cf_pd_isRet | selectIdxOH_3_2 &
    io_in_2_bits_cf_pd_isRet | selectIdxOH_3_3 & io_in_3_bits_cf_pd_isRet; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_pred_taken = selectIdxOH_3_1 & io_in_1_bits_cf_pred_taken | selectIdxOH_3_2 &
    io_in_2_bits_cf_pred_taken | selectIdxOH_3_3 & io_in_3_bits_cf_pred_taken; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_ssid = _io_out_3_bits_T_446 | _io_out_3_bits_T_444; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_ftqPtr_flag = selectIdxOH_3_1 & io_in_1_bits_cf_ftqPtr_flag | selectIdxOH_3_2 &
    io_in_2_bits_cf_ftqPtr_flag | selectIdxOH_3_3 & io_in_3_bits_cf_ftqPtr_flag; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_ftqPtr_value = _io_out_3_bits_T_432 | _io_out_3_bits_T_430; // @[Mux.scala 27:73]
  assign io_out_5_bits_cf_ftqOffset = _io_out_3_bits_T_425 | _io_out_3_bits_T_423; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_srcType_0 = io_out_5_bits_ctrl_srcType_1; // @[Dispatch2Rs.scala 229:42]
  assign io_out_5_bits_ctrl_srcType_1 = _io_out_3_bits_T_404 | _io_out_3_bits_T_402; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fuType = _io_out_3_bits_T_362 | _io_out_3_bits_T_360; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fuOpType = _io_out_3_bits_T_355 | _io_out_3_bits_T_353; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_rfWen = selectIdxOH_3_1 & io_in_1_bits_ctrl_rfWen | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_rfWen | selectIdxOH_3_3 & io_in_3_bits_ctrl_rfWen; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpWen = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpWen | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpWen | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpWen; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_imm = _io_out_3_bits_T_292 | _io_out_3_bits_T_290; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_isAddSub = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_isAddSub | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_isAddSub | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_isAddSub; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_typeTagIn = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_typeTagIn | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_typeTagIn | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_typeTagIn; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_typeTagOut = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_typeTagOut | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_typeTagOut | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_typeTagOut; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_fromInt = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_fromInt | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_fromInt | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_fromInt; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_wflags = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_wflags | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_wflags | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_wflags; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_fpWen = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_fpWen | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_fpWen | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_fpWen; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_fmaCmd = _io_out_3_bits_T_236 | _io_out_3_bits_T_234; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_div = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_div | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_div | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_div; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_sqrt = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_sqrt | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_sqrt | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_sqrt; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_fcvt = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_fcvt | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_fcvt | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_fcvt; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_typ = _io_out_3_bits_T_208 | _io_out_3_bits_T_206; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_fmt = _io_out_3_bits_T_201 | _io_out_3_bits_T_199; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_ren3 = selectIdxOH_3_1 & io_in_1_bits_ctrl_fpu_ren3 | selectIdxOH_3_2 &
    io_in_2_bits_ctrl_fpu_ren3 | selectIdxOH_3_3 & io_in_3_bits_ctrl_fpu_ren3; // @[Mux.scala 27:73]
  assign io_out_5_bits_ctrl_fpu_rm = _io_out_3_bits_T_187 | _io_out_3_bits_T_185; // @[Mux.scala 27:73]
  assign io_out_5_bits_srcState_0 = io_out_5_bits_ctrl_srcType_0[1] ? io_readFpState_1_resp : io_readIntState_5_resp; // @[Dispatch2Rs.scala 256:70 257:17 245:74]
  assign io_out_5_bits_psrc_0 = io_out_5_bits_psrc_1; // @[Dispatch2Rs.scala 230:34]
  assign io_out_5_bits_psrc_1 = _io_out_3_bits_T_131 | _io_out_3_bits_T_129; // @[Mux.scala 27:73]
  assign io_out_5_bits_pdest = _io_out_3_bits_T_117 | _io_out_3_bits_T_115; // @[Mux.scala 27:73]
  assign io_out_5_bits_robIdx_flag = selectIdxOH_3_1 & io_in_1_bits_robIdx_flag | selectIdxOH_3_2 &
    io_in_2_bits_robIdx_flag | selectIdxOH_3_3 & io_in_3_bits_robIdx_flag; // @[Mux.scala 27:73]
  assign io_out_5_bits_robIdx_value = _io_out_3_bits_T_96 | _io_out_3_bits_T_94; // @[Mux.scala 27:73]
  assign io_out_5_bits_lqIdx_flag = selectIdxOH_3_1 & io_enqLsq_resp_1_lqIdx_flag | selectIdxOH_3_2 &
    io_enqLsq_resp_2_lqIdx_flag | selectIdxOH_3_3 & io_enqLsq_resp_3_lqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_5_bits_lqIdx_value = _io_out_3_bits_T_82 | _io_out_3_bits_T_80; // @[Mux.scala 27:73]
  assign io_out_5_bits_sqIdx_flag = selectIdxOH_3_1 & io_enqLsq_resp_1_sqIdx_flag | selectIdxOH_3_2 &
    io_enqLsq_resp_2_sqIdx_flag | selectIdxOH_3_3 & io_enqLsq_resp_3_sqIdx_flag; // @[Mux.scala 27:73]
  assign io_out_5_bits_sqIdx_value = _io_out_3_bits_T_68 | _io_out_3_bits_T_66; // @[Mux.scala 27:73]
  assign io_enqLsq_needAlloc_0 = io_in_0_valid & isLs_0 ? _io_enqLsq_needAlloc_0_T_3 : 2'h0; // @[Dispatch2Rs.scala 206:35]
  assign io_enqLsq_needAlloc_1 = io_in_1_valid & isLs_1 ? _io_enqLsq_needAlloc_1_T_3 : 2'h0; // @[Dispatch2Rs.scala 206:35]
  assign io_enqLsq_needAlloc_2 = io_in_2_valid & isLs_2 ? _io_enqLsq_needAlloc_2_T_3 : 2'h0; // @[Dispatch2Rs.scala 206:35]
  assign io_enqLsq_needAlloc_3 = io_in_3_valid & isLs_3 ? _io_enqLsq_needAlloc_3_T_3 : 2'h0; // @[Dispatch2Rs.scala 206:35]
  assign io_enqLsq_req_0_valid = io_in_0_valid & _T_71; // @[Dispatch2Rs.scala 211:44]
  assign io_enqLsq_req_0_bits_robIdx_flag = io_in_0_bits_robIdx_flag; // @[Dispatch2Rs.scala 207:28]
  assign io_enqLsq_req_0_bits_robIdx_value = io_in_0_bits_robIdx_value; // @[Dispatch2Rs.scala 207:28]
  assign io_enqLsq_req_1_valid = io_in_1_valid & _T_71; // @[Dispatch2Rs.scala 211:44]
  assign io_enqLsq_req_1_bits_robIdx_flag = io_in_1_bits_robIdx_flag; // @[Dispatch2Rs.scala 207:28]
  assign io_enqLsq_req_1_bits_robIdx_value = io_in_1_bits_robIdx_value; // @[Dispatch2Rs.scala 207:28]
  assign io_enqLsq_req_2_valid = in_2_valid & _T_71; // @[Dispatch2Rs.scala 211:44]
  assign io_enqLsq_req_2_bits_robIdx_flag = io_in_2_bits_robIdx_flag; // @[Dispatch2Rs.scala 207:28]
  assign io_enqLsq_req_2_bits_robIdx_value = io_in_2_bits_robIdx_value; // @[Dispatch2Rs.scala 207:28]
  assign io_enqLsq_req_3_valid = in_3_valid & _T_71; // @[Dispatch2Rs.scala 211:44]
  assign io_enqLsq_req_3_bits_robIdx_flag = io_in_3_bits_robIdx_flag; // @[Dispatch2Rs.scala 207:28]
  assign io_enqLsq_req_3_bits_robIdx_value = io_in_3_bits_robIdx_value; // @[Dispatch2Rs.scala 207:28]
endmodule
