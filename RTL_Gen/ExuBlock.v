module ExuBlock(
  input         clock,
  input         reset,
  input  [7:0]  io_hartId,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [6:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_allocPregs_0_isInt,
  input         io_allocPregs_0_isFp,
  input  [6:0]  io_allocPregs_0_preg,
  input         io_allocPregs_1_isInt,
  input         io_allocPregs_1_isFp,
  input  [6:0]  io_allocPregs_1_preg,
  input         io_allocPregs_2_isInt,
  input         io_allocPregs_2_isFp,
  input  [6:0]  io_allocPregs_2_preg,
  input         io_allocPregs_3_isInt,
  input         io_allocPregs_3_isFp,
  input  [6:0]  io_allocPregs_3_preg,
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
  output        io_in_4_ready,
  input         io_in_4_valid,
  input         io_in_4_bits_cf_trigger_backendEn_0,
  input         io_in_4_bits_cf_trigger_backendEn_1,
  input         io_in_4_bits_cf_trigger_backendHit_0,
  input         io_in_4_bits_cf_trigger_backendHit_1,
  input         io_in_4_bits_cf_trigger_backendHit_2,
  input         io_in_4_bits_cf_trigger_backendHit_3,
  input         io_in_4_bits_cf_trigger_backendHit_4,
  input         io_in_4_bits_cf_trigger_backendHit_5,
  input         io_in_4_bits_cf_pd_isRVC,
  input  [1:0]  io_in_4_bits_cf_pd_brType,
  input         io_in_4_bits_cf_pd_isCall,
  input         io_in_4_bits_cf_pd_isRet,
  input         io_in_4_bits_cf_pred_taken,
  input  [6:0]  io_in_4_bits_cf_waitForRobIdx_value,
  input         io_in_4_bits_cf_loadWaitBit,
  input         io_in_4_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_4_bits_cf_ssid,
  input         io_in_4_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_4_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_4_bits_cf_ftqOffset,
  input  [1:0]  io_in_4_bits_ctrl_srcType_0,
  input  [1:0]  io_in_4_bits_ctrl_srcType_1,
  input  [3:0]  io_in_4_bits_ctrl_fuType,
  input  [6:0]  io_in_4_bits_ctrl_fuOpType,
  input         io_in_4_bits_ctrl_rfWen,
  input         io_in_4_bits_ctrl_fpWen,
  input  [19:0] io_in_4_bits_ctrl_imm,
  input         io_in_4_bits_ctrl_fpu_isAddSub,
  input         io_in_4_bits_ctrl_fpu_typeTagIn,
  input         io_in_4_bits_ctrl_fpu_typeTagOut,
  input         io_in_4_bits_ctrl_fpu_fromInt,
  input         io_in_4_bits_ctrl_fpu_wflags,
  input         io_in_4_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_4_bits_ctrl_fpu_fmaCmd,
  input         io_in_4_bits_ctrl_fpu_div,
  input         io_in_4_bits_ctrl_fpu_sqrt,
  input         io_in_4_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_4_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_4_bits_ctrl_fpu_fmt,
  input         io_in_4_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_4_bits_ctrl_fpu_rm,
  input  [6:0]  io_in_4_bits_psrc_0,
  input  [6:0]  io_in_4_bits_psrc_1,
  input  [6:0]  io_in_4_bits_pdest,
  input         io_in_4_bits_robIdx_flag,
  input  [6:0]  io_in_4_bits_robIdx_value,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input         io_in_5_bits_cf_trigger_backendEn_0,
  input         io_in_5_bits_cf_trigger_backendEn_1,
  input         io_in_5_bits_cf_trigger_backendHit_0,
  input         io_in_5_bits_cf_trigger_backendHit_1,
  input         io_in_5_bits_cf_trigger_backendHit_2,
  input         io_in_5_bits_cf_trigger_backendHit_3,
  input         io_in_5_bits_cf_trigger_backendHit_4,
  input         io_in_5_bits_cf_trigger_backendHit_5,
  input         io_in_5_bits_cf_pd_isRVC,
  input  [1:0]  io_in_5_bits_cf_pd_brType,
  input         io_in_5_bits_cf_pd_isCall,
  input         io_in_5_bits_cf_pd_isRet,
  input         io_in_5_bits_cf_pred_taken,
  input  [6:0]  io_in_5_bits_cf_waitForRobIdx_value,
  input         io_in_5_bits_cf_loadWaitBit,
  input         io_in_5_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_5_bits_cf_ssid,
  input         io_in_5_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_5_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_5_bits_cf_ftqOffset,
  input  [1:0]  io_in_5_bits_ctrl_srcType_0,
  input  [1:0]  io_in_5_bits_ctrl_srcType_1,
  input  [3:0]  io_in_5_bits_ctrl_fuType,
  input  [6:0]  io_in_5_bits_ctrl_fuOpType,
  input         io_in_5_bits_ctrl_rfWen,
  input         io_in_5_bits_ctrl_fpWen,
  input  [19:0] io_in_5_bits_ctrl_imm,
  input         io_in_5_bits_ctrl_fpu_isAddSub,
  input         io_in_5_bits_ctrl_fpu_typeTagIn,
  input         io_in_5_bits_ctrl_fpu_typeTagOut,
  input         io_in_5_bits_ctrl_fpu_fromInt,
  input         io_in_5_bits_ctrl_fpu_wflags,
  input         io_in_5_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_5_bits_ctrl_fpu_fmaCmd,
  input         io_in_5_bits_ctrl_fpu_div,
  input         io_in_5_bits_ctrl_fpu_sqrt,
  input         io_in_5_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_5_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_5_bits_ctrl_fpu_fmt,
  input         io_in_5_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_5_bits_ctrl_fpu_rm,
  input  [6:0]  io_in_5_bits_psrc_0,
  input  [6:0]  io_in_5_bits_psrc_1,
  input  [6:0]  io_in_5_bits_pdest,
  input         io_in_5_bits_robIdx_flag,
  input  [6:0]  io_in_5_bits_robIdx_value,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input         io_in_6_bits_cf_trigger_backendEn_0,
  input         io_in_6_bits_cf_trigger_backendEn_1,
  input         io_in_6_bits_cf_trigger_backendHit_0,
  input         io_in_6_bits_cf_trigger_backendHit_1,
  input         io_in_6_bits_cf_trigger_backendHit_2,
  input         io_in_6_bits_cf_trigger_backendHit_3,
  input         io_in_6_bits_cf_trigger_backendHit_4,
  input         io_in_6_bits_cf_trigger_backendHit_5,
  input         io_in_6_bits_cf_pd_isRVC,
  input  [1:0]  io_in_6_bits_cf_pd_brType,
  input         io_in_6_bits_cf_pd_isCall,
  input         io_in_6_bits_cf_pd_isRet,
  input         io_in_6_bits_cf_pred_taken,
  input  [6:0]  io_in_6_bits_cf_waitForRobIdx_value,
  input         io_in_6_bits_cf_loadWaitBit,
  input         io_in_6_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_6_bits_cf_ssid,
  input         io_in_6_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_6_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_6_bits_cf_ftqOffset,
  input  [1:0]  io_in_6_bits_ctrl_srcType_0,
  input  [1:0]  io_in_6_bits_ctrl_srcType_1,
  input  [3:0]  io_in_6_bits_ctrl_fuType,
  input  [6:0]  io_in_6_bits_ctrl_fuOpType,
  input         io_in_6_bits_ctrl_rfWen,
  input         io_in_6_bits_ctrl_fpWen,
  input  [19:0] io_in_6_bits_ctrl_imm,
  input         io_in_6_bits_ctrl_fpu_isAddSub,
  input         io_in_6_bits_ctrl_fpu_typeTagIn,
  input         io_in_6_bits_ctrl_fpu_typeTagOut,
  input         io_in_6_bits_ctrl_fpu_fromInt,
  input         io_in_6_bits_ctrl_fpu_wflags,
  input         io_in_6_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_6_bits_ctrl_fpu_fmaCmd,
  input         io_in_6_bits_ctrl_fpu_div,
  input         io_in_6_bits_ctrl_fpu_sqrt,
  input         io_in_6_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_6_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_6_bits_ctrl_fpu_fmt,
  input         io_in_6_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_6_bits_ctrl_fpu_rm,
  input  [6:0]  io_in_6_bits_psrc_0,
  input  [6:0]  io_in_6_bits_psrc_1,
  input  [6:0]  io_in_6_bits_pdest,
  input         io_in_6_bits_robIdx_flag,
  input  [6:0]  io_in_6_bits_robIdx_value,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input         io_in_7_bits_cf_trigger_backendEn_0,
  input         io_in_7_bits_cf_trigger_backendEn_1,
  input         io_in_7_bits_cf_trigger_backendHit_0,
  input         io_in_7_bits_cf_trigger_backendHit_1,
  input         io_in_7_bits_cf_trigger_backendHit_2,
  input         io_in_7_bits_cf_trigger_backendHit_3,
  input         io_in_7_bits_cf_trigger_backendHit_4,
  input         io_in_7_bits_cf_trigger_backendHit_5,
  input         io_in_7_bits_cf_pd_isRVC,
  input  [1:0]  io_in_7_bits_cf_pd_brType,
  input         io_in_7_bits_cf_pd_isCall,
  input         io_in_7_bits_cf_pd_isRet,
  input         io_in_7_bits_cf_pred_taken,
  input  [6:0]  io_in_7_bits_cf_waitForRobIdx_value,
  input         io_in_7_bits_cf_loadWaitBit,
  input         io_in_7_bits_cf_loadWaitStrict,
  input  [4:0]  io_in_7_bits_cf_ssid,
  input         io_in_7_bits_cf_ftqPtr_flag,
  input  [5:0]  io_in_7_bits_cf_ftqPtr_value,
  input  [2:0]  io_in_7_bits_cf_ftqOffset,
  input  [1:0]  io_in_7_bits_ctrl_srcType_0,
  input  [1:0]  io_in_7_bits_ctrl_srcType_1,
  input  [3:0]  io_in_7_bits_ctrl_fuType,
  input  [6:0]  io_in_7_bits_ctrl_fuOpType,
  input         io_in_7_bits_ctrl_rfWen,
  input         io_in_7_bits_ctrl_fpWen,
  input  [19:0] io_in_7_bits_ctrl_imm,
  input         io_in_7_bits_ctrl_fpu_isAddSub,
  input         io_in_7_bits_ctrl_fpu_typeTagIn,
  input         io_in_7_bits_ctrl_fpu_typeTagOut,
  input         io_in_7_bits_ctrl_fpu_fromInt,
  input         io_in_7_bits_ctrl_fpu_wflags,
  input         io_in_7_bits_ctrl_fpu_fpWen,
  input  [1:0]  io_in_7_bits_ctrl_fpu_fmaCmd,
  input         io_in_7_bits_ctrl_fpu_div,
  input         io_in_7_bits_ctrl_fpu_sqrt,
  input         io_in_7_bits_ctrl_fpu_fcvt,
  input  [1:0]  io_in_7_bits_ctrl_fpu_typ,
  input  [1:0]  io_in_7_bits_ctrl_fpu_fmt,
  input         io_in_7_bits_ctrl_fpu_ren3,
  input  [2:0]  io_in_7_bits_ctrl_fpu_rm,
  input  [6:0]  io_in_7_bits_psrc_0,
  input  [6:0]  io_in_7_bits_psrc_1,
  input  [6:0]  io_in_7_bits_pdest,
  input         io_in_7_bits_robIdx_flag,
  input  [6:0]  io_in_7_bits_robIdx_value,
  input         io_issue_0_ready,
  output        io_issue_0_valid,
  output        io_issue_0_bits_uop_cf_trigger_backendEn_0,
  output        io_issue_0_bits_uop_cf_trigger_backendEn_1,
  output        io_issue_0_bits_uop_cf_trigger_backendHit_0,
  output        io_issue_0_bits_uop_cf_trigger_backendHit_1,
  output        io_issue_0_bits_uop_cf_trigger_backendHit_2,
  output        io_issue_0_bits_uop_cf_trigger_backendHit_3,
  output        io_issue_0_bits_uop_cf_trigger_backendHit_4,
  output        io_issue_0_bits_uop_cf_trigger_backendHit_5,
  output        io_issue_0_bits_uop_cf_ftqPtr_flag,
  output [5:0]  io_issue_0_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_0_bits_uop_cf_ftqOffset,
  output [6:0]  io_issue_0_bits_uop_ctrl_fuOpType,
  output        io_issue_0_bits_uop_ctrl_rfWen,
  output        io_issue_0_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_0_bits_uop_ctrl_imm,
  output [6:0]  io_issue_0_bits_uop_pdest,
  output        io_issue_0_bits_uop_robIdx_flag,
  output [6:0]  io_issue_0_bits_uop_robIdx_value,
  output        io_issue_0_bits_uop_lqIdx_flag,
  output [5:0]  io_issue_0_bits_uop_lqIdx_value,
  output        io_issue_0_bits_uop_sqIdx_flag,
  output [4:0]  io_issue_0_bits_uop_sqIdx_value,
  output [63:0] io_issue_0_bits_src_0,
  input         io_issue_1_ready,
  output        io_issue_1_valid,
  output        io_issue_1_bits_uop_cf_trigger_backendEn_0,
  output        io_issue_1_bits_uop_cf_trigger_backendEn_1,
  output        io_issue_1_bits_uop_cf_trigger_backendHit_0,
  output        io_issue_1_bits_uop_cf_trigger_backendHit_1,
  output        io_issue_1_bits_uop_cf_trigger_backendHit_2,
  output        io_issue_1_bits_uop_cf_trigger_backendHit_3,
  output        io_issue_1_bits_uop_cf_trigger_backendHit_4,
  output        io_issue_1_bits_uop_cf_trigger_backendHit_5,
  output        io_issue_1_bits_uop_cf_ftqPtr_flag,
  output [5:0]  io_issue_1_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_1_bits_uop_cf_ftqOffset,
  output [6:0]  io_issue_1_bits_uop_ctrl_fuOpType,
  output        io_issue_1_bits_uop_ctrl_rfWen,
  output        io_issue_1_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_1_bits_uop_ctrl_imm,
  output [6:0]  io_issue_1_bits_uop_pdest,
  output        io_issue_1_bits_uop_robIdx_flag,
  output [6:0]  io_issue_1_bits_uop_robIdx_value,
  output        io_issue_1_bits_uop_lqIdx_flag,
  output [5:0]  io_issue_1_bits_uop_lqIdx_value,
  output        io_issue_1_bits_uop_sqIdx_flag,
  output [4:0]  io_issue_1_bits_uop_sqIdx_value,
  output [63:0] io_issue_1_bits_src_0,
  input         io_issue_2_ready,
  output        io_issue_2_valid,
  output        io_issue_2_bits_uop_cf_trigger_backendEn_0,
  output        io_issue_2_bits_uop_cf_trigger_backendEn_1,
  output        io_issue_2_bits_uop_cf_trigger_backendHit_0,
  output        io_issue_2_bits_uop_cf_trigger_backendHit_1,
  output        io_issue_2_bits_uop_cf_trigger_backendHit_2,
  output        io_issue_2_bits_uop_cf_trigger_backendHit_3,
  output        io_issue_2_bits_uop_cf_trigger_backendHit_4,
  output        io_issue_2_bits_uop_cf_trigger_backendHit_5,
  output [4:0]  io_issue_2_bits_uop_cf_ssid,
  output        io_issue_2_bits_uop_cf_ftqPtr_flag,
  output [5:0]  io_issue_2_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_2_bits_uop_cf_ftqOffset,
  output [3:0]  io_issue_2_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_2_bits_uop_ctrl_fuOpType,
  output        io_issue_2_bits_uop_ctrl_rfWen,
  output        io_issue_2_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_2_bits_uop_ctrl_imm,
  output [6:0]  io_issue_2_bits_uop_pdest,
  output        io_issue_2_bits_uop_robIdx_flag,
  output [6:0]  io_issue_2_bits_uop_robIdx_value,
  output        io_issue_2_bits_uop_lqIdx_flag,
  output [5:0]  io_issue_2_bits_uop_lqIdx_value,
  output        io_issue_2_bits_uop_sqIdx_flag,
  output [4:0]  io_issue_2_bits_uop_sqIdx_value,
  output [63:0] io_issue_2_bits_src_0,
  input         io_issue_3_ready,
  output        io_issue_3_valid,
  output        io_issue_3_bits_uop_cf_trigger_backendEn_0,
  output        io_issue_3_bits_uop_cf_trigger_backendEn_1,
  output        io_issue_3_bits_uop_cf_trigger_backendHit_0,
  output        io_issue_3_bits_uop_cf_trigger_backendHit_1,
  output        io_issue_3_bits_uop_cf_trigger_backendHit_2,
  output        io_issue_3_bits_uop_cf_trigger_backendHit_3,
  output        io_issue_3_bits_uop_cf_trigger_backendHit_4,
  output        io_issue_3_bits_uop_cf_trigger_backendHit_5,
  output [4:0]  io_issue_3_bits_uop_cf_ssid,
  output        io_issue_3_bits_uop_cf_ftqPtr_flag,
  output [5:0]  io_issue_3_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_issue_3_bits_uop_cf_ftqOffset,
  output [3:0]  io_issue_3_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_3_bits_uop_ctrl_fuOpType,
  output        io_issue_3_bits_uop_ctrl_rfWen,
  output        io_issue_3_bits_uop_ctrl_fpWen,
  output [19:0] io_issue_3_bits_uop_ctrl_imm,
  output [6:0]  io_issue_3_bits_uop_pdest,
  output        io_issue_3_bits_uop_robIdx_flag,
  output [6:0]  io_issue_3_bits_uop_robIdx_value,
  output        io_issue_3_bits_uop_lqIdx_flag,
  output [5:0]  io_issue_3_bits_uop_lqIdx_value,
  output        io_issue_3_bits_uop_sqIdx_flag,
  output [4:0]  io_issue_3_bits_uop_sqIdx_value,
  output [63:0] io_issue_3_bits_src_0,
  input         io_issue_4_ready,
  output        io_issue_4_valid,
  output [3:0]  io_issue_4_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_4_bits_uop_ctrl_fuOpType,
  output        io_issue_4_bits_uop_robIdx_flag,
  output [6:0]  io_issue_4_bits_uop_robIdx_value,
  output [4:0]  io_issue_4_bits_uop_sqIdx_value,
  output [63:0] io_issue_4_bits_src_0,
  input         io_issue_5_ready,
  output        io_issue_5_valid,
  output [3:0]  io_issue_5_bits_uop_ctrl_fuType,
  output [6:0]  io_issue_5_bits_uop_ctrl_fuOpType,
  output        io_issue_5_bits_uop_robIdx_flag,
  output [6:0]  io_issue_5_bits_uop_robIdx_value,
  output [4:0]  io_issue_5_bits_uop_sqIdx_value,
  output [63:0] io_issue_5_bits_src_0,
  input         io_rfWriteback_4_valid,
  input         io_rfWriteback_4_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_4_bits_uop_ctrl_fpWen,
  input  [6:0]  io_rfWriteback_4_bits_uop_pdest,
  input  [63:0] io_rfWriteback_4_bits_data,
  input         io_rfWriteback_5_valid,
  input         io_rfWriteback_5_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_5_bits_uop_ctrl_fpWen,
  input  [6:0]  io_rfWriteback_5_bits_uop_pdest,
  input  [63:0] io_rfWriteback_5_bits_data,
  input         io_rfWriteback_6_valid,
  input         io_rfWriteback_6_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_6_bits_uop_ctrl_fpWen,
  input  [6:0]  io_rfWriteback_6_bits_uop_pdest,
  input  [63:0] io_rfWriteback_6_bits_data,
  input         io_rfWriteback_7_valid,
  input         io_rfWriteback_7_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_7_bits_uop_ctrl_fpWen,
  input  [6:0]  io_rfWriteback_7_bits_uop_pdest,
  input  [63:0] io_rfWriteback_7_bits_data,
  input         io_rfWriteback_8_valid,
  input         io_rfWriteback_8_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_8_bits_uop_ctrl_fpWen,
  input  [6:0]  io_rfWriteback_8_bits_uop_pdest,
  input  [63:0] io_rfWriteback_8_bits_data,
  input         io_rfWriteback_9_valid,
  input         io_rfWriteback_9_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_9_bits_uop_ctrl_fpWen,
  input  [6:0]  io_rfWriteback_9_bits_uop_pdest,
  input  [63:0] io_rfWriteback_9_bits_data,
  input         io_rfWriteback_10_valid,
  input         io_rfWriteback_10_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_10_bits_uop_ctrl_fpWen,
  input  [6:0]  io_rfWriteback_10_bits_uop_pdest,
  input  [63:0] io_rfWriteback_10_bits_data,
  input         io_rfWriteback_11_valid,
  input         io_rfWriteback_11_bits_uop_ctrl_rfWen,
  input         io_rfWriteback_11_bits_uop_ctrl_fpWen,
  input  [6:0]  io_rfWriteback_11_bits_uop_pdest,
  input  [63:0] io_rfWriteback_11_bits_data,
  input         io_fastUopIn_4_valid,
  input         io_fastUopIn_4_bits_ctrl_rfWen,
  input  [6:0]  io_fastUopIn_4_bits_pdest,
  input         io_fastUopIn_5_valid,
  input         io_fastUopIn_5_bits_ctrl_rfWen,
  input  [6:0]  io_fastUopIn_5_bits_pdest,
  output        io_fuWriteback_0_valid,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_0,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_1,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_2,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_3,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_4,
  output        io_fuWriteback_0_bits_uop_cf_trigger_backendHit_5,
  output        io_fuWriteback_0_bits_uop_ctrl_rfWen,
  output [6:0]  io_fuWriteback_0_bits_uop_pdest,
  output        io_fuWriteback_0_bits_uop_robIdx_flag,
  output [6:0]  io_fuWriteback_0_bits_uop_robIdx_value,
  output [63:0] io_fuWriteback_0_bits_data,
  output        io_fuWriteback_0_bits_redirectValid,
  output        io_fuWriteback_0_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuWriteback_1_valid,
  output        io_fuWriteback_1_bits_uop_cf_trigger_backendHit_0,
  output        io_fuWriteback_1_bits_uop_cf_trigger_backendHit_1,
  output        io_fuWriteback_1_bits_uop_cf_trigger_backendHit_2,
  output        io_fuWriteback_1_bits_uop_cf_trigger_backendHit_3,
  output        io_fuWriteback_1_bits_uop_cf_trigger_backendHit_4,
  output        io_fuWriteback_1_bits_uop_cf_trigger_backendHit_5,
  output        io_fuWriteback_1_bits_uop_ctrl_rfWen,
  output [6:0]  io_fuWriteback_1_bits_uop_pdest,
  output        io_fuWriteback_1_bits_uop_robIdx_flag,
  output [6:0]  io_fuWriteback_1_bits_uop_robIdx_value,
  output [63:0] io_fuWriteback_1_bits_data,
  output        io_fuWriteback_1_bits_redirectValid,
  output        io_fuWriteback_1_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuWriteback_2_valid,
  output        io_fuWriteback_2_bits_uop_cf_trigger_backendHit_0,
  output        io_fuWriteback_2_bits_uop_cf_trigger_backendHit_1,
  output        io_fuWriteback_2_bits_uop_cf_trigger_backendHit_2,
  output        io_fuWriteback_2_bits_uop_cf_trigger_backendHit_3,
  output        io_fuWriteback_2_bits_uop_cf_trigger_backendHit_4,
  output        io_fuWriteback_2_bits_uop_cf_trigger_backendHit_5,
  output        io_fuWriteback_2_bits_uop_ctrl_rfWen,
  output [6:0]  io_fuWriteback_2_bits_uop_pdest,
  output        io_fuWriteback_2_bits_uop_robIdx_flag,
  output [6:0]  io_fuWriteback_2_bits_uop_robIdx_value,
  output [63:0] io_fuWriteback_2_bits_data,
  output        io_fuWriteback_2_bits_redirectValid,
  output        io_fuWriteback_2_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuWriteback_3_valid,
  output        io_fuWriteback_3_bits_uop_cf_trigger_backendHit_0,
  output        io_fuWriteback_3_bits_uop_cf_trigger_backendHit_1,
  output        io_fuWriteback_3_bits_uop_cf_trigger_backendHit_2,
  output        io_fuWriteback_3_bits_uop_cf_trigger_backendHit_3,
  output        io_fuWriteback_3_bits_uop_cf_trigger_backendHit_4,
  output        io_fuWriteback_3_bits_uop_cf_trigger_backendHit_5,
  output        io_fuWriteback_3_bits_uop_ctrl_rfWen,
  output [6:0]  io_fuWriteback_3_bits_uop_pdest,
  output        io_fuWriteback_3_bits_uop_robIdx_flag,
  output [6:0]  io_fuWriteback_3_bits_uop_robIdx_value,
  output [63:0] io_fuWriteback_3_bits_data,
  output        io_fuWriteback_3_bits_redirectValid,
  output        io_fuWriteback_3_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuWriteback_4_valid,
  output        io_fuWriteback_4_bits_uop_cf_trigger_backendHit_0,
  output        io_fuWriteback_4_bits_uop_cf_trigger_backendHit_1,
  output        io_fuWriteback_4_bits_uop_cf_trigger_backendHit_2,
  output        io_fuWriteback_4_bits_uop_cf_trigger_backendHit_3,
  output        io_fuWriteback_4_bits_uop_cf_trigger_backendHit_4,
  output        io_fuWriteback_4_bits_uop_cf_trigger_backendHit_5,
  output        io_fuWriteback_4_bits_uop_ctrl_rfWen,
  output        io_fuWriteback_4_bits_uop_ctrl_fpWen,
  output [6:0]  io_fuWriteback_4_bits_uop_pdest,
  output        io_fuWriteback_4_bits_uop_robIdx_flag,
  output [6:0]  io_fuWriteback_4_bits_uop_robIdx_value,
  output [63:0] io_fuWriteback_4_bits_data,
  input         io_fuWriteback_5_ready,
  output        io_fuWriteback_5_valid,
  output        io_fuWriteback_5_bits_uop_cf_exceptionVec_2,
  output        io_fuWriteback_5_bits_uop_cf_exceptionVec_3,
  output        io_fuWriteback_5_bits_uop_cf_exceptionVec_8,
  output        io_fuWriteback_5_bits_uop_cf_exceptionVec_9,
  output        io_fuWriteback_5_bits_uop_cf_exceptionVec_11,
  output        io_fuWriteback_5_bits_uop_cf_trigger_backendHit_0,
  output        io_fuWriteback_5_bits_uop_cf_trigger_backendHit_1,
  output        io_fuWriteback_5_bits_uop_cf_trigger_backendHit_2,
  output        io_fuWriteback_5_bits_uop_cf_trigger_backendHit_3,
  output        io_fuWriteback_5_bits_uop_cf_trigger_backendHit_4,
  output        io_fuWriteback_5_bits_uop_cf_trigger_backendHit_5,
  output        io_fuWriteback_5_bits_uop_ctrl_rfWen,
  output        io_fuWriteback_5_bits_uop_ctrl_fpWen,
  output        io_fuWriteback_5_bits_uop_ctrl_flushPipe,
  output [6:0]  io_fuWriteback_5_bits_uop_pdest,
  output        io_fuWriteback_5_bits_uop_robIdx_flag,
  output [6:0]  io_fuWriteback_5_bits_uop_robIdx_value,
  output [63:0] io_fuWriteback_5_bits_data,
  output [4:0]  io_fuWriteback_5_bits_fflags,
  output        io_fuWriteback_5_bits_redirectValid,
  output        io_fuWriteback_5_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuWriteback_5_bits_debug_isPerfCnt,
  input         io_scheExtra_feedback_0_feedbackSlow_valid,
  input  [4:0]  io_scheExtra_feedback_0_feedbackSlow_bits_rsIdx,
  input         io_scheExtra_feedback_0_feedbackSlow_bits_hit,
  input  [2:0]  io_scheExtra_feedback_0_feedbackSlow_bits_sourceType,
  input  [4:0]  io_scheExtra_feedback_0_feedbackSlow_bits_dataInvalidSqIdx_value,
  input         io_scheExtra_feedback_0_feedbackFast_valid,
  input  [4:0]  io_scheExtra_feedback_0_feedbackFast_bits_rsIdx,
  input  [2:0]  io_scheExtra_feedback_0_feedbackFast_bits_sourceType,
  output [4:0]  io_scheExtra_feedback_0_rsIdx,
  input         io_scheExtra_feedback_1_feedbackSlow_valid,
  input  [4:0]  io_scheExtra_feedback_1_feedbackSlow_bits_rsIdx,
  input         io_scheExtra_feedback_1_feedbackSlow_bits_hit,
  input  [2:0]  io_scheExtra_feedback_1_feedbackSlow_bits_sourceType,
  input  [4:0]  io_scheExtra_feedback_1_feedbackSlow_bits_dataInvalidSqIdx_value,
  input         io_scheExtra_feedback_1_feedbackFast_valid,
  input  [4:0]  io_scheExtra_feedback_1_feedbackFast_bits_rsIdx,
  input  [2:0]  io_scheExtra_feedback_1_feedbackFast_bits_sourceType,
  output [4:0]  io_scheExtra_feedback_1_rsIdx,
  input         io_scheExtra_feedback_2_feedbackSlow_valid,
  input  [4:0]  io_scheExtra_feedback_2_feedbackSlow_bits_rsIdx,
  input         io_scheExtra_feedback_2_feedbackSlow_bits_hit,
  output [4:0]  io_scheExtra_feedback_2_rsIdx,
  input         io_scheExtra_feedback_3_feedbackSlow_valid,
  input  [4:0]  io_scheExtra_feedback_3_feedbackSlow_bits_rsIdx,
  input         io_scheExtra_feedback_3_feedbackSlow_bits_hit,
  output [4:0]  io_scheExtra_feedback_3_rsIdx,
  output [6:0]  io_scheExtra_fpRfReadIn_0_addr,
  input  [63:0] io_scheExtra_fpRfReadIn_0_data,
  output [6:0]  io_scheExtra_fpRfReadIn_1_addr,
  input  [63:0] io_scheExtra_fpRfReadIn_1_data,
  input  [38:0] io_scheExtra_jumpPc,
  input  [38:0] io_scheExtra_jalr_target,
  input         io_scheExtra_stIssuePtr_flag,
  input  [4:0]  io_scheExtra_stIssuePtr_value,
  output [1:0]  io_scheExtra_enqLsq_needAlloc_0,
  output [1:0]  io_scheExtra_enqLsq_needAlloc_1,
  output [1:0]  io_scheExtra_enqLsq_needAlloc_2,
  output [1:0]  io_scheExtra_enqLsq_needAlloc_3,
  output        io_scheExtra_enqLsq_req_0_valid,
  output        io_scheExtra_enqLsq_req_0_bits_robIdx_flag,
  output [6:0]  io_scheExtra_enqLsq_req_0_bits_robIdx_value,
  output [5:0]  io_scheExtra_enqLsq_req_0_bits_lqIdx_value,
  output [4:0]  io_scheExtra_enqLsq_req_0_bits_sqIdx_value,
  output        io_scheExtra_enqLsq_req_1_valid,
  output        io_scheExtra_enqLsq_req_1_bits_robIdx_flag,
  output [6:0]  io_scheExtra_enqLsq_req_1_bits_robIdx_value,
  output [5:0]  io_scheExtra_enqLsq_req_1_bits_lqIdx_value,
  output [4:0]  io_scheExtra_enqLsq_req_1_bits_sqIdx_value,
  output        io_scheExtra_enqLsq_req_2_valid,
  output        io_scheExtra_enqLsq_req_2_bits_robIdx_flag,
  output [6:0]  io_scheExtra_enqLsq_req_2_bits_robIdx_value,
  output [5:0]  io_scheExtra_enqLsq_req_2_bits_lqIdx_value,
  output [4:0]  io_scheExtra_enqLsq_req_2_bits_sqIdx_value,
  output        io_scheExtra_enqLsq_req_3_valid,
  output        io_scheExtra_enqLsq_req_3_bits_robIdx_flag,
  output [6:0]  io_scheExtra_enqLsq_req_3_bits_robIdx_value,
  output [5:0]  io_scheExtra_enqLsq_req_3_bits_lqIdx_value,
  output [4:0]  io_scheExtra_enqLsq_req_3_bits_sqIdx_value,
  input  [2:0]  io_scheExtra_lcommit,
  input  [1:0]  io_scheExtra_scommit,
  input  [5:0]  io_scheExtra_lqCancelCnt,
  input  [5:0]  io_scheExtra_sqCancelCnt,
  input         io_scheExtra_memWaitUpdateReq_staIssue_0_valid,
  input  [6:0]  io_scheExtra_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value,
  input         io_scheExtra_memWaitUpdateReq_staIssue_1_valid,
  input  [6:0]  io_scheExtra_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value,
  input         io_scheExtra_memWaitUpdateReq_stdIssue_0_valid,
  input  [4:0]  io_scheExtra_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value,
  input         io_scheExtra_memWaitUpdateReq_stdIssue_1_valid,
  input  [4:0]  io_scheExtra_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value,
  input  [6:0]  io_scheExtra_debug_int_rat_0,
  input  [6:0]  io_scheExtra_debug_int_rat_1,
  input  [6:0]  io_scheExtra_debug_int_rat_2,
  input  [6:0]  io_scheExtra_debug_int_rat_3,
  input  [6:0]  io_scheExtra_debug_int_rat_4,
  input  [6:0]  io_scheExtra_debug_int_rat_5,
  input  [6:0]  io_scheExtra_debug_int_rat_6,
  input  [6:0]  io_scheExtra_debug_int_rat_7,
  input  [6:0]  io_scheExtra_debug_int_rat_8,
  input  [6:0]  io_scheExtra_debug_int_rat_9,
  input  [6:0]  io_scheExtra_debug_int_rat_10,
  input  [6:0]  io_scheExtra_debug_int_rat_11,
  input  [6:0]  io_scheExtra_debug_int_rat_12,
  input  [6:0]  io_scheExtra_debug_int_rat_13,
  input  [6:0]  io_scheExtra_debug_int_rat_14,
  input  [6:0]  io_scheExtra_debug_int_rat_15,
  input  [6:0]  io_scheExtra_debug_int_rat_16,
  input  [6:0]  io_scheExtra_debug_int_rat_17,
  input  [6:0]  io_scheExtra_debug_int_rat_18,
  input  [6:0]  io_scheExtra_debug_int_rat_19,
  input  [6:0]  io_scheExtra_debug_int_rat_20,
  input  [6:0]  io_scheExtra_debug_int_rat_21,
  input  [6:0]  io_scheExtra_debug_int_rat_22,
  input  [6:0]  io_scheExtra_debug_int_rat_23,
  input  [6:0]  io_scheExtra_debug_int_rat_24,
  input  [6:0]  io_scheExtra_debug_int_rat_25,
  input  [6:0]  io_scheExtra_debug_int_rat_26,
  input  [6:0]  io_scheExtra_debug_int_rat_27,
  input  [6:0]  io_scheExtra_debug_int_rat_28,
  input  [6:0]  io_scheExtra_debug_int_rat_29,
  input  [6:0]  io_scheExtra_debug_int_rat_30,
  input  [6:0]  io_scheExtra_debug_int_rat_31,
  output        io_fuExtra_exuRedirect_0_valid,
  output        io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRVC,
  output [1:0]  io_fuExtra_exuRedirect_0_bits_uop_cf_pd_brType,
  output        io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isCall,
  output        io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRet,
  output [19:0] io_fuExtra_exuRedirect_0_bits_uop_ctrl_imm,
  output        io_fuExtra_exuRedirect_0_bits_uop_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_0_bits_uop_robIdx_value,
  output        io_fuExtra_exuRedirect_0_bits_redirectValid,
  output        io_fuExtra_exuRedirect_0_bits_redirect_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_0_bits_redirect_robIdx_value,
  output        io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_flag,
  output [5:0]  io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_value,
  output [2:0]  io_fuExtra_exuRedirect_0_bits_redirect_ftqOffset,
  output [38:0] io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_target,
  output        io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuExtra_exuRedirect_1_valid,
  output        io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRVC,
  output [1:0]  io_fuExtra_exuRedirect_1_bits_uop_cf_pd_brType,
  output        io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isCall,
  output        io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRet,
  output [19:0] io_fuExtra_exuRedirect_1_bits_uop_ctrl_imm,
  output        io_fuExtra_exuRedirect_1_bits_uop_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_1_bits_uop_robIdx_value,
  output        io_fuExtra_exuRedirect_1_bits_redirectValid,
  output        io_fuExtra_exuRedirect_1_bits_redirect_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_1_bits_redirect_robIdx_value,
  output        io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_flag,
  output [5:0]  io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_value,
  output [2:0]  io_fuExtra_exuRedirect_1_bits_redirect_ftqOffset,
  output        io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_taken,
  output        io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuExtra_exuRedirect_2_valid,
  output        io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRVC,
  output [1:0]  io_fuExtra_exuRedirect_2_bits_uop_cf_pd_brType,
  output        io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isCall,
  output        io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRet,
  output [19:0] io_fuExtra_exuRedirect_2_bits_uop_ctrl_imm,
  output        io_fuExtra_exuRedirect_2_bits_uop_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_2_bits_uop_robIdx_value,
  output        io_fuExtra_exuRedirect_2_bits_redirectValid,
  output        io_fuExtra_exuRedirect_2_bits_redirect_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_2_bits_redirect_robIdx_value,
  output        io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_flag,
  output [5:0]  io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_value,
  output [2:0]  io_fuExtra_exuRedirect_2_bits_redirect_ftqOffset,
  output        io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_taken,
  output        io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuExtra_exuRedirect_3_valid,
  output        io_fuExtra_exuRedirect_3_bits_uop_cf_pd_isRVC,
  output [1:0]  io_fuExtra_exuRedirect_3_bits_uop_cf_pd_brType,
  output        io_fuExtra_exuRedirect_3_bits_uop_cf_pd_isCall,
  output        io_fuExtra_exuRedirect_3_bits_uop_cf_pd_isRet,
  output [19:0] io_fuExtra_exuRedirect_3_bits_uop_ctrl_imm,
  output        io_fuExtra_exuRedirect_3_bits_uop_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_3_bits_uop_robIdx_value,
  output        io_fuExtra_exuRedirect_3_bits_redirectValid,
  output        io_fuExtra_exuRedirect_3_bits_redirect_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_3_bits_redirect_robIdx_value,
  output        io_fuExtra_exuRedirect_3_bits_redirect_ftqIdx_flag,
  output [5:0]  io_fuExtra_exuRedirect_3_bits_redirect_ftqIdx_value,
  output [2:0]  io_fuExtra_exuRedirect_3_bits_redirect_ftqOffset,
  output        io_fuExtra_exuRedirect_3_bits_redirect_cfiUpdate_taken,
  output        io_fuExtra_exuRedirect_3_bits_redirect_cfiUpdate_isMisPred,
  output        io_fuExtra_exuRedirect_4_valid,
  output        io_fuExtra_exuRedirect_4_bits_uop_cf_pd_isRVC,
  output [1:0]  io_fuExtra_exuRedirect_4_bits_uop_cf_pd_brType,
  output        io_fuExtra_exuRedirect_4_bits_uop_cf_pd_isCall,
  output        io_fuExtra_exuRedirect_4_bits_uop_cf_pd_isRet,
  output [19:0] io_fuExtra_exuRedirect_4_bits_uop_ctrl_imm,
  output        io_fuExtra_exuRedirect_4_bits_uop_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_4_bits_uop_robIdx_value,
  output        io_fuExtra_exuRedirect_4_bits_redirectValid,
  output        io_fuExtra_exuRedirect_4_bits_redirect_robIdx_flag,
  output [6:0]  io_fuExtra_exuRedirect_4_bits_redirect_robIdx_value,
  output        io_fuExtra_exuRedirect_4_bits_redirect_ftqIdx_flag,
  output [5:0]  io_fuExtra_exuRedirect_4_bits_redirect_ftqIdx_value,
  output [2:0]  io_fuExtra_exuRedirect_4_bits_redirect_ftqOffset,
  output        io_fuExtra_exuRedirect_4_bits_redirect_cfiUpdate_taken,
  output        io_fuExtra_exuRedirect_4_bits_redirect_cfiUpdate_isMisPred,
  input  [7:0]  io_fuExtra_csrio_hartId,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_0_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_1_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_2_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_3_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_4_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_5_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_6_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsFrontend_7_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_0_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_1_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_2_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_3_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_4_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_5_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_6_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsCtrl_7_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_0_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_1_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_2_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_3_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_4_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_5_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_6_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsLsu_7_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_0_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_1_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_2_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_3_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_4_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_5_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_6_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_7_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_8_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_9_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_10_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_11_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_12_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_13_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_14_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_15_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_16_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_17_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_18_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_19_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_20_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_21_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_22_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_23_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_24_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_25_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_26_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_27_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_28_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_29_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_30_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_31_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_32_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_33_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_34_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_35_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_36_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_37_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_38_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_39_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_40_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_41_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_42_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_43_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_44_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_45_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_46_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_47_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_48_value,
  input  [5:0]  io_fuExtra_csrio_perf_perfEventsHc_49_value,
  input  [2:0]  io_fuExtra_csrio_perf_retiredInstr,
  input         io_fuExtra_csrio_fpu_fflags_valid,
  input  [4:0]  io_fuExtra_csrio_fpu_fflags_bits,
  input         io_fuExtra_csrio_fpu_dirty_fs,
  output [2:0]  io_fuExtra_csrio_fpu_frm,
  input         io_fuExtra_csrio_exception_valid,
  input  [38:0] io_fuExtra_csrio_exception_bits_uop_cf_pc,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_0,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_1,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_2,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_3,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_4,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_5,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_6,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_7,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_8,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_9,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_11,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_12,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_13,
  input         io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_15,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_0,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_1,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_2,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_3,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_0,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_1,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_2,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_3,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_4,
  input         io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_5,
  input         io_fuExtra_csrio_exception_bits_uop_cf_crossPageIPFFix,
  input         io_fuExtra_csrio_exception_bits_uop_ctrl_singleStep,
  input         io_fuExtra_csrio_exception_bits_isInterrupt,
  output        io_fuExtra_csrio_isXRet,
  output [38:0] io_fuExtra_csrio_trapTarget,
  output        io_fuExtra_csrio_interrupt,
  output        io_fuExtra_csrio_wfi_event,
  input  [38:0] io_fuExtra_csrio_memExceptionVAddr,
  input         io_fuExtra_csrio_externalInterrupt_mtip,
  input         io_fuExtra_csrio_externalInterrupt_msip,
  input         io_fuExtra_csrio_externalInterrupt_meip,
  input         io_fuExtra_csrio_externalInterrupt_seip,
  input         io_fuExtra_csrio_externalInterrupt_debug,
  output        io_fuExtra_csrio_tlb_satp_changed,
  output [3:0]  io_fuExtra_csrio_tlb_satp_mode,
  output [15:0] io_fuExtra_csrio_tlb_satp_asid,
  output [43:0] io_fuExtra_csrio_tlb_satp_ppn,
  output        io_fuExtra_csrio_tlb_priv_mxr,
  output        io_fuExtra_csrio_tlb_priv_sum,
  output [1:0]  io_fuExtra_csrio_tlb_priv_imode,
  output [1:0]  io_fuExtra_csrio_tlb_priv_dmode,
  output        io_fuExtra_csrio_customCtrl_l1I_pf_enable,
  output        io_fuExtra_csrio_customCtrl_icache_parity_enable,
  output        io_fuExtra_csrio_customCtrl_lvpred_disable,
  output        io_fuExtra_csrio_customCtrl_no_spec_load,
  output        io_fuExtra_csrio_customCtrl_storeset_wait_store,
  output [4:0]  io_fuExtra_csrio_customCtrl_lvpred_timeout,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_ubtb_enable,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_btb_enable,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_tage_enable,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_sc_enable,
  output        io_fuExtra_csrio_customCtrl_bp_ctrl_ras_enable,
  output [3:0]  io_fuExtra_csrio_customCtrl_sbuffer_threshold,
  output        io_fuExtra_csrio_customCtrl_ldld_vio_check_enable,
  output        io_fuExtra_csrio_customCtrl_soft_prefetch_enable,
  output        io_fuExtra_csrio_customCtrl_cache_error_enable,
  output        io_fuExtra_csrio_customCtrl_svinval_enable,
  output        io_fuExtra_csrio_customCtrl_distribute_csr_wvalid,
  output [11:0] io_fuExtra_csrio_customCtrl_distribute_csr_waddr,
  output [63:0] io_fuExtra_csrio_customCtrl_distribute_csr_wdata,
  output        io_fuExtra_csrio_customCtrl_singlestep,
  output        io_fuExtra_csrio_customCtrl_frontend_trigger_t_valid,
  output [1:0]  io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_addr,
  output [1:0]  io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType,
  output        io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select,
  output        io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing,
  output        io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain,
  output [63:0] io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2,
  output        io_fuExtra_csrio_customCtrl_mem_trigger_t_valid,
  output [2:0]  io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_addr,
  output [1:0]  io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType,
  output        io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_select,
  output        io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain,
  output [63:0] io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_0,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_1,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_2,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_3,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_4,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_5,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_6,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_7,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_8,
  output        io_fuExtra_csrio_customCtrl_trigger_enable_9,
  input         io_fuExtra_csrio_distributedUpdate_0_wvalid,
  input  [11:0] io_fuExtra_csrio_distributedUpdate_0_waddr,
  input  [63:0] io_fuExtra_csrio_distributedUpdate_0_wdata,
  input         io_fuExtra_csrio_distributedUpdate_1_wvalid,
  input  [11:0] io_fuExtra_csrio_distributedUpdate_1_waddr,
  input  [63:0] io_fuExtra_csrio_distributedUpdate_1_wdata,
  output        io_fuExtra_fenceio_sfence_valid,
  output        io_fuExtra_fenceio_sfence_bits_rs1,
  output        io_fuExtra_fenceio_sfence_bits_rs2,
  output [38:0] io_fuExtra_fenceio_sfence_bits_addr,
  output [15:0] io_fuExtra_fenceio_sfence_bits_asid,
  output        io_fuExtra_fenceio_sbuffer_flushSb,
  input         io_fuExtra_fenceio_sbuffer_sbIsEmpty,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value,
  output [5:0]  io_perf_8_value,
  output [5:0]  io_perf_9_value,
  output [5:0]  io_perf_10_value,
  output [5:0]  io_perf_11_value,
  output [5:0]  io_perf_12_value
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
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
`endif // RANDOMIZE_REG_INIT
  wire  scheduler_clock; // @[ExuBlock.scala 39:29]
  wire  scheduler_reset; // @[ExuBlock.scala 39:29]
  wire [7:0] scheduler_io_hartId; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_redirect_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_redirect_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_redirect_bits_level; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_0_isInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_0_isFp; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_allocPregs_0_preg; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_1_isInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_1_isFp; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_allocPregs_1_preg; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_2_isInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_2_isFp; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_allocPregs_2_preg; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_3_isInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_allocPregs_3_isFp; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_allocPregs_3_preg; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_0_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_0_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_0_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_0_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_0_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_0_bits_ctrl_selImm; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_0_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_0_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_0_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_0_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_0_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_0_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_0_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_0_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_0_bits_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_0_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_1_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_1_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_1_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_1_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_1_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_1_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_1_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_1_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_1_bits_ctrl_selImm; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_1_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_1_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_1_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_1_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_1_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_1_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_1_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_1_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_1_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_1_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_1_bits_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_1_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_2_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_2_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_2_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_2_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_2_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_2_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_2_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_2_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_2_bits_ctrl_selImm; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_2_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_2_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_2_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_2_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_2_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_2_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_2_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_2_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_2_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_2_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_2_bits_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_2_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_3_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_3_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_3_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_3_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_3_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_3_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_3_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_3_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_3_bits_ctrl_selImm; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_3_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_3_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_3_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_3_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_3_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_3_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_3_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_3_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_3_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_3_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_3_bits_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_3_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_4_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_4_bits_cf_waitForRobIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_loadWaitBit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_4_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_4_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_4_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_4_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_4_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_4_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_4_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_4_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_4_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_4_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_4_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_4_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_4_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_4_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_4_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_4_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_4_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_5_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_5_bits_cf_waitForRobIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_loadWaitBit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_5_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_5_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_5_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_5_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_5_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_5_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_5_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_5_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_5_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_5_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_5_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_5_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_5_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_5_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_5_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_5_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_5_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_6_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_6_bits_cf_waitForRobIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_loadWaitBit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_6_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_6_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_6_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_6_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_6_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_6_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_6_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_6_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_6_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_6_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_6_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_6_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_6_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_6_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_6_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_6_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_6_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_7_bits_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_7_bits_cf_waitForRobIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_loadWaitBit; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_loadWaitStrict; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_in_7_bits_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_in_7_bits_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_7_bits_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_7_bits_ctrl_srcType_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_7_bits_ctrl_srcType_1; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_in_7_bits_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_7_bits_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_in_7_bits_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_7_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_div; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_7_bits_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_in_7_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_in_7_bits_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_7_bits_psrc_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_7_bits_psrc_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_7_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_in_7_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_in_7_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_0_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_0_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_0_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_0_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_0_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_0_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_1_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_1_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_1_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_1_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_1_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_1_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_2_bits_uop_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_2_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_2_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_2_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_2_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_2_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_2_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_2_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_2_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_3_bits_uop_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_3_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_3_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_3_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_3_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_3_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_3_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_3_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_3_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_4_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_4_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_4_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_4_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_4_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_4_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_4_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_valid; // @[ExuBlock.scala 39:29]
  wire [38:0] scheduler_io_issue_5_bits_uop_cf_pc; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_5_bits_uop_cf_pd_brType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_pred_taken; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_5_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_5_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_5_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_5_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_5_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_ctrl_fpu_fromInt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_ctrl_fpu_wflags; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_issue_5_bits_uop_ctrl_fpu_typ; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_5_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_5_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_5_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_5_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_5_bits_src_0; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_5_bits_src_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_6_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_6_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_6_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_6_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_6_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_6_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_6_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_6_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_6_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_6_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_7_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_7_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_7_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_7_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_7_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_7_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_7_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_7_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_7_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_7_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_8_bits_uop_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_8_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_8_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_8_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_8_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_8_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_8_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_8_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_8_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_8_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_8_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_8_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_9_bits_uop_cf_ssid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_9_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_issue_9_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_9_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_9_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [19:0] scheduler_io_issue_9_bits_uop_ctrl_imm; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_9_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_9_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_lqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_issue_9_bits_uop_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_9_bits_uop_sqIdx_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_9_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_9_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_10_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_10_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_10_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_10_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_10_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_10_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_10_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_10_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_11_ready; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_11_valid; // @[ExuBlock.scala 39:29]
  wire [3:0] scheduler_io_issue_11_bits_uop_ctrl_fuType; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_11_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_issue_11_bits_uop_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_issue_11_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_issue_11_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_issue_11_bits_src_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopOut_0_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_0_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopOut_0_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopOut_1_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_1_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopOut_1_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopOut_2_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_2_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopOut_2_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_bits_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopOut_3_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopOut_3_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopOut_3_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_0_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_0_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_0_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_0_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_1_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_1_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_1_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_1_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_2_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_2_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_2_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_2_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_2_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_3_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_3_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_3_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_3_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_3_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_4_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_4_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_4_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_5_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_5_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_5_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_6_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_6_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_6_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_6_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_7_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_7_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_7_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_7_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_8_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_8_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_8_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_8_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_8_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_9_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_9_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_9_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_9_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_9_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_10_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_10_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_10_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_10_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_10_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_11_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_11_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_writeback_11_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_writeback_11_bits_uop_pdest; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_writeback_11_bits_data; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_4_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_4_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopIn_4_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_5_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_fastUopIn_5_bits_ctrl_rfWen; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_fastUopIn_5_bits_pdest; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_0_feedbackSlow_valid; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_0_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_0_feedbackSlow_bits_hit; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_extra_feedback_0_feedbackSlow_bits_sourceType; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_0_feedbackSlow_bits_dataInvalidSqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_0_feedbackFast_valid; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_0_feedbackFast_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_extra_feedback_0_feedbackFast_bits_sourceType; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_0_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_1_feedbackSlow_valid; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_1_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_1_feedbackSlow_bits_hit; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_extra_feedback_1_feedbackSlow_bits_sourceType; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_1_feedbackSlow_bits_dataInvalidSqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_1_feedbackFast_valid; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_1_feedbackFast_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_extra_feedback_1_feedbackFast_bits_sourceType; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_1_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_2_feedbackSlow_valid; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_2_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_2_feedbackSlow_bits_hit; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_2_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_3_feedbackSlow_valid; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_3_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_feedback_3_feedbackSlow_bits_hit; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_feedback_3_rsIdx; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_fpRfReadIn_0_addr; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_extra_fpRfReadIn_0_data; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_fpRfReadIn_1_addr; // @[ExuBlock.scala 39:29]
  wire [63:0] scheduler_io_extra_fpRfReadIn_1_data; // @[ExuBlock.scala 39:29]
  wire [38:0] scheduler_io_extra_jumpPc; // @[ExuBlock.scala 39:29]
  wire [38:0] scheduler_io_extra_jalr_target; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_stIssuePtr_flag; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_stIssuePtr_value; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_extra_enqLsq_needAlloc_0; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_extra_enqLsq_needAlloc_1; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_extra_enqLsq_needAlloc_2; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_extra_enqLsq_needAlloc_3; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_enqLsq_req_0_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_enqLsq_req_0_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_enqLsq_req_0_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_enqLsq_req_0_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_enqLsq_req_0_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_enqLsq_req_1_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_enqLsq_req_1_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_enqLsq_req_1_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_enqLsq_req_1_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_enqLsq_req_1_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_enqLsq_req_2_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_enqLsq_req_2_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_enqLsq_req_2_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_enqLsq_req_2_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_enqLsq_req_2_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_enqLsq_req_3_valid; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_enqLsq_req_3_bits_robIdx_flag; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_enqLsq_req_3_bits_robIdx_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_enqLsq_req_3_bits_lqIdx_value; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_enqLsq_req_3_bits_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [2:0] scheduler_io_extra_lcommit; // @[ExuBlock.scala 39:29]
  wire [1:0] scheduler_io_extra_scommit; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_lqCancelCnt; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_extra_sqCancelCnt; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_memWaitUpdateReq_staIssue_0_valid; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_memWaitUpdateReq_staIssue_1_valid; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_memWaitUpdateReq_stdIssue_0_valid; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire  scheduler_io_extra_memWaitUpdateReq_stdIssue_1_valid; // @[ExuBlock.scala 39:29]
  wire [4:0] scheduler_io_extra_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_0; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_1; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_2; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_3; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_4; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_5; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_6; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_7; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_8; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_9; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_10; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_11; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_12; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_13; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_14; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_15; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_16; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_17; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_18; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_19; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_20; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_21; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_22; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_23; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_24; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_25; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_26; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_27; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_28; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_29; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_30; // @[ExuBlock.scala 39:29]
  wire [6:0] scheduler_io_extra_debug_int_rat_31; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_0_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_1_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_2_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_3_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_4_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_5_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_6_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_7_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_8_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_9_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_10_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_11_value; // @[ExuBlock.scala 39:29]
  wire [5:0] scheduler_io_perf_12_value; // @[ExuBlock.scala 39:29]
  wire  fuBlock_clock; // @[ExuBlock.scala 62:23]
  wire  fuBlock_reset; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_redirect_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_redirect_bits_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_redirect_bits_level; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_pred_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_issue_0_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_0_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_0_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_0_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_issue_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_0_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_0_bits_src_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_pred_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_issue_1_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_1_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_1_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_1_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_issue_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_1_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_1_bits_src_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_2_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_cf_pred_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_issue_2_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_2_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_2_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_2_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_issue_2_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_2_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_2_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_2_bits_src_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_3_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_pred_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_issue_3_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_3_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_3_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_3_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_issue_3_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_3_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_3_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_3_bits_src_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_ready; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_4_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_4_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_4_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_4_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_4_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_4_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_4_bits_src_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_ready; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_valid; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_issue_5_bits_uop_cf_pc; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_5_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_pred_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_issue_5_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_5_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_issue_5_bits_uop_ctrl_fuType; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_5_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_issue_5_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_ctrl_fpu_fromInt; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_ctrl_fpu_wflags; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_issue_5_bits_uop_ctrl_fpu_typ; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_issue_5_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_5_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_issue_5_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_issue_5_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_5_bits_src_0; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_issue_5_bits_src_1; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_0_bits_data; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_0_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_1_bits_data; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_1_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_2_bits_data; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_2_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_2_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_3_bits_data; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_3_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_writeback_4_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_4_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_writeback_4_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_4_bits_data; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_ready; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_8; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_9; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_11; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_ctrl_flushPipe; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_writeback_5_bits_uop_pdest; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_writeback_5_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_writeback_5_bits_data; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_writeback_5_bits_fflags; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_writeback_5_bits_debug_isPerfCnt; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_extra_exuRedirect_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqOffset; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_extra_exuRedirect_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqOffset; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_extra_exuRedirect_2_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqOffset; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_extra_exuRedirect_3_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_3_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_bits_redirect_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_3_bits_redirect_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_exuRedirect_3_bits_redirect_ftqIdx_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_3_bits_redirect_ftqOffset; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_3_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_brType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 62:23]
  wire [19:0] fuBlock_io_extra_exuRedirect_4_bits_uop_ctrl_imm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_bits_uop_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_4_bits_uop_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_bits_redirectValid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_bits_redirect_robIdx_flag; // @[ExuBlock.scala 62:23]
  wire [6:0] fuBlock_io_extra_exuRedirect_4_bits_redirect_robIdx_value; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_exuRedirect_4_bits_redirect_ftqIdx_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_exuRedirect_4_bits_redirect_ftqOffset; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_exuRedirect_4_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 62:23]
  wire [7:0] fuBlock_io_extra_csrio_hartId; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_0_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_1_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_2_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_3_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_4_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_5_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_6_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsFrontend_7_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_0_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_1_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_2_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_3_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_4_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_5_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_6_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsCtrl_7_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_0_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_1_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_2_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_3_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_4_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_5_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_6_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsLsu_7_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_0_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_1_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_2_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_3_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_4_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_5_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_6_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_7_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_8_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_9_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_10_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_11_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_12_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_13_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_14_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_15_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_16_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_17_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_18_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_19_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_20_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_21_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_22_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_23_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_24_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_25_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_26_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_27_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_28_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_29_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_30_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_31_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_32_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_33_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_34_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_35_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_36_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_37_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_38_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_39_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_40_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_41_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_42_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_43_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_44_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_45_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_46_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_47_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_48_value; // @[ExuBlock.scala 62:23]
  wire [5:0] fuBlock_io_extra_csrio_perf_perfEventsHc_49_value; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_csrio_perf_retiredInstr; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_fpu_fflags_valid; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_csrio_fpu_fflags_bits; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_fpu_dirty_fs; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_csrio_fpu_frm; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_valid; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_csrio_exception_bits_uop_cf_pc; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_6; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_7; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_8; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_9; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_11; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_12; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_13; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_15; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_uop_ctrl_singleStep; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_exception_bits_isInterrupt; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_isXRet; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_csrio_trapTarget; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_interrupt; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_wfi_event; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_csrio_memExceptionVAddr; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_mtip; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_msip; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_meip; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_seip; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_externalInterrupt_debug; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_tlb_satp_changed; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_extra_csrio_tlb_satp_mode; // @[ExuBlock.scala 62:23]
  wire [15:0] fuBlock_io_extra_csrio_tlb_satp_asid; // @[ExuBlock.scala 62:23]
  wire [43:0] fuBlock_io_extra_csrio_tlb_satp_ppn; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_tlb_priv_mxr; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_tlb_priv_sum; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_tlb_priv_imode; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_tlb_priv_dmode; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_l1I_pf_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_icache_parity_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_lvpred_disable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_no_spec_load; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_storeset_wait_store; // @[ExuBlock.scala 62:23]
  wire [4:0] fuBlock_io_extra_csrio_customCtrl_lvpred_timeout; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_btb_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_tage_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_sc_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ras_enable; // @[ExuBlock.scala 62:23]
  wire [3:0] fuBlock_io_extra_csrio_customCtrl_sbuffer_threshold; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_ldld_vio_check_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_soft_prefetch_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_cache_error_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_svinval_enable; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_distribute_csr_wvalid; // @[ExuBlock.scala 62:23]
  wire [11:0] fuBlock_io_extra_csrio_customCtrl_distribute_csr_waddr; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_customCtrl_distribute_csr_wdata; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_singlestep; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_valid; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_valid; // @[ExuBlock.scala 62:23]
  wire [2:0] fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_addr; // @[ExuBlock.scala 62:23]
  wire [1:0] fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_0; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_2; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_3; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_4; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_5; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_6; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_7; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_8; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_customCtrl_trigger_enable_9; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_distributedUpdate_0_wvalid; // @[ExuBlock.scala 62:23]
  wire [11:0] fuBlock_io_extra_csrio_distributedUpdate_0_waddr; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_distributedUpdate_0_wdata; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_csrio_distributedUpdate_1_wvalid; // @[ExuBlock.scala 62:23]
  wire [11:0] fuBlock_io_extra_csrio_distributedUpdate_1_waddr; // @[ExuBlock.scala 62:23]
  wire [63:0] fuBlock_io_extra_csrio_distributedUpdate_1_wdata; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sfence_valid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sfence_bits_rs1; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sfence_bits_rs2; // @[ExuBlock.scala 62:23]
  wire [38:0] fuBlock_io_extra_fenceio_sfence_bits_addr; // @[ExuBlock.scala 62:23]
  wire [15:0] fuBlock_io_extra_fenceio_sfence_bits_asid; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sbuffer_flushSb; // @[ExuBlock.scala 62:23]
  wire  fuBlock_io_extra_fenceio_sbuffer_sbIsEmpty; // @[ExuBlock.scala 62:23]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  reg [5:0] io_perf_12_value_REG; // @[PerfCounterUtils.scala 189:35]
  reg [5:0] io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 189:27]
  wire [7:0] _isFlushed_flushItself_T_1 = {scheduler_io_fastUopOut_0_bits_robIdx_flag,
    scheduler_io_fastUopOut_0_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire [7:0] _isFlushed_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:70]
  wire  _isFlushed_flushItself_T_3 = _isFlushed_flushItself_T_1 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself = io_redirect_bits_level & _isFlushed_flushItself_T_3; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag = scheduler_io_fastUopOut_0_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare = scheduler_io_fastUopOut_0_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T = isFlushed_differentFlag ^ isFlushed_compare; // @[CircularQueuePtr.scala 87:19]
  wire  isFlushed = io_redirect_valid & (isFlushed_flushItself | _isFlushed_T); // @[Rob.scala 36:20]
  wire  _io_fuWriteback_0_valid_T = ~isFlushed; // @[ExuBlock.scala 169:50]
  reg  io_fuWriteback_0_valid_REG; // @[ExuBlock.scala 169:29]
  reg  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_0_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 170:32]
  reg [6:0] io_fuWriteback_0_bits_uop_REG_pdest; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_0_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 170:32]
  reg [6:0] io_fuWriteback_0_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 170:32]
  wire [7:0] _isFlushed_flushItself_T_5 = {scheduler_io_fastUopOut_1_bits_robIdx_flag,
    scheduler_io_fastUopOut_1_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_7 = _isFlushed_flushItself_T_5 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_1 = io_redirect_bits_level & _isFlushed_flushItself_T_7; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_1 = scheduler_io_fastUopOut_1_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_1 = scheduler_io_fastUopOut_1_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_2 = isFlushed_differentFlag_1 ^ isFlushed_compare_1; // @[CircularQueuePtr.scala 87:19]
  wire  isFlushed_1 = io_redirect_valid & (isFlushed_flushItself_1 | _isFlushed_T_2); // @[Rob.scala 36:20]
  wire  _io_fuWriteback_1_valid_T = ~isFlushed_1; // @[ExuBlock.scala 169:50]
  reg  io_fuWriteback_1_valid_REG; // @[ExuBlock.scala 169:29]
  reg  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_1_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 170:32]
  reg [6:0] io_fuWriteback_1_bits_uop_REG_pdest; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_1_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 170:32]
  reg [6:0] io_fuWriteback_1_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 170:32]
  wire [7:0] _isFlushed_flushItself_T_9 = {scheduler_io_fastUopOut_2_bits_robIdx_flag,
    scheduler_io_fastUopOut_2_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_11 = _isFlushed_flushItself_T_9 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_2 = io_redirect_bits_level & _isFlushed_flushItself_T_11; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_2 = scheduler_io_fastUopOut_2_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_2 = scheduler_io_fastUopOut_2_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_4 = isFlushed_differentFlag_2 ^ isFlushed_compare_2; // @[CircularQueuePtr.scala 87:19]
  wire  isFlushed_2 = io_redirect_valid & (isFlushed_flushItself_2 | _isFlushed_T_4); // @[Rob.scala 36:20]
  wire  _io_fuWriteback_2_valid_T = ~isFlushed_2; // @[ExuBlock.scala 169:50]
  reg  io_fuWriteback_2_valid_REG; // @[ExuBlock.scala 169:29]
  reg  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_2_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 170:32]
  reg [6:0] io_fuWriteback_2_bits_uop_REG_pdest; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_2_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 170:32]
  reg [6:0] io_fuWriteback_2_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 170:32]
  wire [7:0] _isFlushed_flushItself_T_13 = {scheduler_io_fastUopOut_3_bits_robIdx_flag,
    scheduler_io_fastUopOut_3_bits_robIdx_value}; // @[CircularQueuePtr.scala 62:50]
  wire  _isFlushed_flushItself_T_15 = _isFlushed_flushItself_T_13 == _isFlushed_flushItself_T_2; // @[CircularQueuePtr.scala 62:52]
  wire  isFlushed_flushItself_3 = io_redirect_bits_level & _isFlushed_flushItself_T_15; // @[Rob.scala 35:51]
  wire  isFlushed_differentFlag_3 = scheduler_io_fastUopOut_3_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 85:35]
  wire  isFlushed_compare_3 = scheduler_io_fastUopOut_3_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 86:30]
  wire  _isFlushed_T_6 = isFlushed_differentFlag_3 ^ isFlushed_compare_3; // @[CircularQueuePtr.scala 87:19]
  wire  isFlushed_3 = io_redirect_valid & (isFlushed_flushItself_3 | _isFlushed_T_6); // @[Rob.scala 36:20]
  wire  _io_fuWriteback_3_valid_T = ~isFlushed_3; // @[ExuBlock.scala 169:50]
  reg  io_fuWriteback_3_valid_REG; // @[ExuBlock.scala 169:29]
  reg  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_3_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 170:32]
  reg [6:0] io_fuWriteback_3_bits_uop_REG_pdest; // @[ExuBlock.scala 170:32]
  reg  io_fuWriteback_3_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 170:32]
  reg [6:0] io_fuWriteback_3_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 170:32]
  reg  scheduler_io_writeback_0_valid_REG; // @[ExuBlock.scala 193:30]
  reg  scheduler_io_writeback_0_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 194:33]
  reg  scheduler_io_writeback_0_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 194:33]
  reg [6:0] scheduler_io_writeback_0_bits_uop_REG_pdest; // @[ExuBlock.scala 194:33]
  reg  scheduler_io_writeback_1_valid_REG; // @[ExuBlock.scala 193:30]
  reg  scheduler_io_writeback_1_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 194:33]
  reg  scheduler_io_writeback_1_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 194:33]
  reg [6:0] scheduler_io_writeback_1_bits_uop_REG_pdest; // @[ExuBlock.scala 194:33]
  reg  scheduler_io_writeback_2_valid_REG; // @[ExuBlock.scala 193:30]
  reg  scheduler_io_writeback_2_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 194:33]
  reg  scheduler_io_writeback_2_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 194:33]
  reg [6:0] scheduler_io_writeback_2_bits_uop_REG_pdest; // @[ExuBlock.scala 194:33]
  reg  scheduler_io_writeback_3_valid_REG; // @[ExuBlock.scala 193:30]
  reg  scheduler_io_writeback_3_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 194:33]
  reg  scheduler_io_writeback_3_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 194:33]
  reg [6:0] scheduler_io_writeback_3_bits_uop_REG_pdest; // @[ExuBlock.scala 194:33]
  Scheduler scheduler ( // @[ExuBlock.scala 39:29]
    .clock(scheduler_clock),
    .reset(scheduler_reset),
    .io_hartId(scheduler_io_hartId),
    .io_redirect_valid(scheduler_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(scheduler_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(scheduler_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(scheduler_io_redirect_bits_level),
    .io_allocPregs_0_isInt(scheduler_io_allocPregs_0_isInt),
    .io_allocPregs_0_isFp(scheduler_io_allocPregs_0_isFp),
    .io_allocPregs_0_preg(scheduler_io_allocPregs_0_preg),
    .io_allocPregs_1_isInt(scheduler_io_allocPregs_1_isInt),
    .io_allocPregs_1_isFp(scheduler_io_allocPregs_1_isFp),
    .io_allocPregs_1_preg(scheduler_io_allocPregs_1_preg),
    .io_allocPregs_2_isInt(scheduler_io_allocPregs_2_isInt),
    .io_allocPregs_2_isFp(scheduler_io_allocPregs_2_isFp),
    .io_allocPregs_2_preg(scheduler_io_allocPregs_2_preg),
    .io_allocPregs_3_isInt(scheduler_io_allocPregs_3_isInt),
    .io_allocPregs_3_isFp(scheduler_io_allocPregs_3_isFp),
    .io_allocPregs_3_preg(scheduler_io_allocPregs_3_preg),
    .io_in_0_ready(scheduler_io_in_0_ready),
    .io_in_0_valid(scheduler_io_in_0_valid),
    .io_in_0_bits_cf_trigger_backendEn_0(scheduler_io_in_0_bits_cf_trigger_backendEn_0),
    .io_in_0_bits_cf_trigger_backendEn_1(scheduler_io_in_0_bits_cf_trigger_backendEn_1),
    .io_in_0_bits_cf_trigger_backendHit_0(scheduler_io_in_0_bits_cf_trigger_backendHit_0),
    .io_in_0_bits_cf_trigger_backendHit_1(scheduler_io_in_0_bits_cf_trigger_backendHit_1),
    .io_in_0_bits_cf_trigger_backendHit_2(scheduler_io_in_0_bits_cf_trigger_backendHit_2),
    .io_in_0_bits_cf_trigger_backendHit_3(scheduler_io_in_0_bits_cf_trigger_backendHit_3),
    .io_in_0_bits_cf_trigger_backendHit_4(scheduler_io_in_0_bits_cf_trigger_backendHit_4),
    .io_in_0_bits_cf_trigger_backendHit_5(scheduler_io_in_0_bits_cf_trigger_backendHit_5),
    .io_in_0_bits_cf_pd_isRVC(scheduler_io_in_0_bits_cf_pd_isRVC),
    .io_in_0_bits_cf_pd_brType(scheduler_io_in_0_bits_cf_pd_brType),
    .io_in_0_bits_cf_pd_isCall(scheduler_io_in_0_bits_cf_pd_isCall),
    .io_in_0_bits_cf_pd_isRet(scheduler_io_in_0_bits_cf_pd_isRet),
    .io_in_0_bits_cf_pred_taken(scheduler_io_in_0_bits_cf_pred_taken),
    .io_in_0_bits_cf_ssid(scheduler_io_in_0_bits_cf_ssid),
    .io_in_0_bits_cf_ftqPtr_flag(scheduler_io_in_0_bits_cf_ftqPtr_flag),
    .io_in_0_bits_cf_ftqPtr_value(scheduler_io_in_0_bits_cf_ftqPtr_value),
    .io_in_0_bits_cf_ftqOffset(scheduler_io_in_0_bits_cf_ftqOffset),
    .io_in_0_bits_ctrl_srcType_0(scheduler_io_in_0_bits_ctrl_srcType_0),
    .io_in_0_bits_ctrl_srcType_1(scheduler_io_in_0_bits_ctrl_srcType_1),
    .io_in_0_bits_ctrl_fuType(scheduler_io_in_0_bits_ctrl_fuType),
    .io_in_0_bits_ctrl_fuOpType(scheduler_io_in_0_bits_ctrl_fuOpType),
    .io_in_0_bits_ctrl_rfWen(scheduler_io_in_0_bits_ctrl_rfWen),
    .io_in_0_bits_ctrl_fpWen(scheduler_io_in_0_bits_ctrl_fpWen),
    .io_in_0_bits_ctrl_selImm(scheduler_io_in_0_bits_ctrl_selImm),
    .io_in_0_bits_ctrl_imm(scheduler_io_in_0_bits_ctrl_imm),
    .io_in_0_bits_ctrl_fpu_isAddSub(scheduler_io_in_0_bits_ctrl_fpu_isAddSub),
    .io_in_0_bits_ctrl_fpu_typeTagIn(scheduler_io_in_0_bits_ctrl_fpu_typeTagIn),
    .io_in_0_bits_ctrl_fpu_typeTagOut(scheduler_io_in_0_bits_ctrl_fpu_typeTagOut),
    .io_in_0_bits_ctrl_fpu_fromInt(scheduler_io_in_0_bits_ctrl_fpu_fromInt),
    .io_in_0_bits_ctrl_fpu_wflags(scheduler_io_in_0_bits_ctrl_fpu_wflags),
    .io_in_0_bits_ctrl_fpu_fpWen(scheduler_io_in_0_bits_ctrl_fpu_fpWen),
    .io_in_0_bits_ctrl_fpu_fmaCmd(scheduler_io_in_0_bits_ctrl_fpu_fmaCmd),
    .io_in_0_bits_ctrl_fpu_div(scheduler_io_in_0_bits_ctrl_fpu_div),
    .io_in_0_bits_ctrl_fpu_sqrt(scheduler_io_in_0_bits_ctrl_fpu_sqrt),
    .io_in_0_bits_ctrl_fpu_fcvt(scheduler_io_in_0_bits_ctrl_fpu_fcvt),
    .io_in_0_bits_ctrl_fpu_typ(scheduler_io_in_0_bits_ctrl_fpu_typ),
    .io_in_0_bits_ctrl_fpu_fmt(scheduler_io_in_0_bits_ctrl_fpu_fmt),
    .io_in_0_bits_ctrl_fpu_ren3(scheduler_io_in_0_bits_ctrl_fpu_ren3),
    .io_in_0_bits_ctrl_fpu_rm(scheduler_io_in_0_bits_ctrl_fpu_rm),
    .io_in_0_bits_psrc_0(scheduler_io_in_0_bits_psrc_0),
    .io_in_0_bits_psrc_1(scheduler_io_in_0_bits_psrc_1),
    .io_in_0_bits_pdest(scheduler_io_in_0_bits_pdest),
    .io_in_0_bits_robIdx_flag(scheduler_io_in_0_bits_robIdx_flag),
    .io_in_0_bits_robIdx_value(scheduler_io_in_0_bits_robIdx_value),
    .io_in_0_bits_lqIdx_flag(scheduler_io_in_0_bits_lqIdx_flag),
    .io_in_0_bits_lqIdx_value(scheduler_io_in_0_bits_lqIdx_value),
    .io_in_0_bits_sqIdx_flag(scheduler_io_in_0_bits_sqIdx_flag),
    .io_in_0_bits_sqIdx_value(scheduler_io_in_0_bits_sqIdx_value),
    .io_in_1_ready(scheduler_io_in_1_ready),
    .io_in_1_valid(scheduler_io_in_1_valid),
    .io_in_1_bits_cf_trigger_backendEn_0(scheduler_io_in_1_bits_cf_trigger_backendEn_0),
    .io_in_1_bits_cf_trigger_backendEn_1(scheduler_io_in_1_bits_cf_trigger_backendEn_1),
    .io_in_1_bits_cf_trigger_backendHit_0(scheduler_io_in_1_bits_cf_trigger_backendHit_0),
    .io_in_1_bits_cf_trigger_backendHit_1(scheduler_io_in_1_bits_cf_trigger_backendHit_1),
    .io_in_1_bits_cf_trigger_backendHit_2(scheduler_io_in_1_bits_cf_trigger_backendHit_2),
    .io_in_1_bits_cf_trigger_backendHit_3(scheduler_io_in_1_bits_cf_trigger_backendHit_3),
    .io_in_1_bits_cf_trigger_backendHit_4(scheduler_io_in_1_bits_cf_trigger_backendHit_4),
    .io_in_1_bits_cf_trigger_backendHit_5(scheduler_io_in_1_bits_cf_trigger_backendHit_5),
    .io_in_1_bits_cf_pd_isRVC(scheduler_io_in_1_bits_cf_pd_isRVC),
    .io_in_1_bits_cf_pd_brType(scheduler_io_in_1_bits_cf_pd_brType),
    .io_in_1_bits_cf_pd_isCall(scheduler_io_in_1_bits_cf_pd_isCall),
    .io_in_1_bits_cf_pd_isRet(scheduler_io_in_1_bits_cf_pd_isRet),
    .io_in_1_bits_cf_pred_taken(scheduler_io_in_1_bits_cf_pred_taken),
    .io_in_1_bits_cf_ssid(scheduler_io_in_1_bits_cf_ssid),
    .io_in_1_bits_cf_ftqPtr_flag(scheduler_io_in_1_bits_cf_ftqPtr_flag),
    .io_in_1_bits_cf_ftqPtr_value(scheduler_io_in_1_bits_cf_ftqPtr_value),
    .io_in_1_bits_cf_ftqOffset(scheduler_io_in_1_bits_cf_ftqOffset),
    .io_in_1_bits_ctrl_srcType_0(scheduler_io_in_1_bits_ctrl_srcType_0),
    .io_in_1_bits_ctrl_srcType_1(scheduler_io_in_1_bits_ctrl_srcType_1),
    .io_in_1_bits_ctrl_fuType(scheduler_io_in_1_bits_ctrl_fuType),
    .io_in_1_bits_ctrl_fuOpType(scheduler_io_in_1_bits_ctrl_fuOpType),
    .io_in_1_bits_ctrl_rfWen(scheduler_io_in_1_bits_ctrl_rfWen),
    .io_in_1_bits_ctrl_fpWen(scheduler_io_in_1_bits_ctrl_fpWen),
    .io_in_1_bits_ctrl_selImm(scheduler_io_in_1_bits_ctrl_selImm),
    .io_in_1_bits_ctrl_imm(scheduler_io_in_1_bits_ctrl_imm),
    .io_in_1_bits_ctrl_fpu_isAddSub(scheduler_io_in_1_bits_ctrl_fpu_isAddSub),
    .io_in_1_bits_ctrl_fpu_typeTagIn(scheduler_io_in_1_bits_ctrl_fpu_typeTagIn),
    .io_in_1_bits_ctrl_fpu_typeTagOut(scheduler_io_in_1_bits_ctrl_fpu_typeTagOut),
    .io_in_1_bits_ctrl_fpu_fromInt(scheduler_io_in_1_bits_ctrl_fpu_fromInt),
    .io_in_1_bits_ctrl_fpu_wflags(scheduler_io_in_1_bits_ctrl_fpu_wflags),
    .io_in_1_bits_ctrl_fpu_fpWen(scheduler_io_in_1_bits_ctrl_fpu_fpWen),
    .io_in_1_bits_ctrl_fpu_fmaCmd(scheduler_io_in_1_bits_ctrl_fpu_fmaCmd),
    .io_in_1_bits_ctrl_fpu_div(scheduler_io_in_1_bits_ctrl_fpu_div),
    .io_in_1_bits_ctrl_fpu_sqrt(scheduler_io_in_1_bits_ctrl_fpu_sqrt),
    .io_in_1_bits_ctrl_fpu_fcvt(scheduler_io_in_1_bits_ctrl_fpu_fcvt),
    .io_in_1_bits_ctrl_fpu_typ(scheduler_io_in_1_bits_ctrl_fpu_typ),
    .io_in_1_bits_ctrl_fpu_fmt(scheduler_io_in_1_bits_ctrl_fpu_fmt),
    .io_in_1_bits_ctrl_fpu_ren3(scheduler_io_in_1_bits_ctrl_fpu_ren3),
    .io_in_1_bits_ctrl_fpu_rm(scheduler_io_in_1_bits_ctrl_fpu_rm),
    .io_in_1_bits_psrc_0(scheduler_io_in_1_bits_psrc_0),
    .io_in_1_bits_psrc_1(scheduler_io_in_1_bits_psrc_1),
    .io_in_1_bits_pdest(scheduler_io_in_1_bits_pdest),
    .io_in_1_bits_robIdx_flag(scheduler_io_in_1_bits_robIdx_flag),
    .io_in_1_bits_robIdx_value(scheduler_io_in_1_bits_robIdx_value),
    .io_in_1_bits_lqIdx_flag(scheduler_io_in_1_bits_lqIdx_flag),
    .io_in_1_bits_lqIdx_value(scheduler_io_in_1_bits_lqIdx_value),
    .io_in_1_bits_sqIdx_flag(scheduler_io_in_1_bits_sqIdx_flag),
    .io_in_1_bits_sqIdx_value(scheduler_io_in_1_bits_sqIdx_value),
    .io_in_2_ready(scheduler_io_in_2_ready),
    .io_in_2_valid(scheduler_io_in_2_valid),
    .io_in_2_bits_cf_trigger_backendEn_0(scheduler_io_in_2_bits_cf_trigger_backendEn_0),
    .io_in_2_bits_cf_trigger_backendEn_1(scheduler_io_in_2_bits_cf_trigger_backendEn_1),
    .io_in_2_bits_cf_trigger_backendHit_0(scheduler_io_in_2_bits_cf_trigger_backendHit_0),
    .io_in_2_bits_cf_trigger_backendHit_1(scheduler_io_in_2_bits_cf_trigger_backendHit_1),
    .io_in_2_bits_cf_trigger_backendHit_2(scheduler_io_in_2_bits_cf_trigger_backendHit_2),
    .io_in_2_bits_cf_trigger_backendHit_3(scheduler_io_in_2_bits_cf_trigger_backendHit_3),
    .io_in_2_bits_cf_trigger_backendHit_4(scheduler_io_in_2_bits_cf_trigger_backendHit_4),
    .io_in_2_bits_cf_trigger_backendHit_5(scheduler_io_in_2_bits_cf_trigger_backendHit_5),
    .io_in_2_bits_cf_pd_isRVC(scheduler_io_in_2_bits_cf_pd_isRVC),
    .io_in_2_bits_cf_pd_brType(scheduler_io_in_2_bits_cf_pd_brType),
    .io_in_2_bits_cf_pd_isCall(scheduler_io_in_2_bits_cf_pd_isCall),
    .io_in_2_bits_cf_pd_isRet(scheduler_io_in_2_bits_cf_pd_isRet),
    .io_in_2_bits_cf_pred_taken(scheduler_io_in_2_bits_cf_pred_taken),
    .io_in_2_bits_cf_ssid(scheduler_io_in_2_bits_cf_ssid),
    .io_in_2_bits_cf_ftqPtr_flag(scheduler_io_in_2_bits_cf_ftqPtr_flag),
    .io_in_2_bits_cf_ftqPtr_value(scheduler_io_in_2_bits_cf_ftqPtr_value),
    .io_in_2_bits_cf_ftqOffset(scheduler_io_in_2_bits_cf_ftqOffset),
    .io_in_2_bits_ctrl_srcType_0(scheduler_io_in_2_bits_ctrl_srcType_0),
    .io_in_2_bits_ctrl_srcType_1(scheduler_io_in_2_bits_ctrl_srcType_1),
    .io_in_2_bits_ctrl_fuType(scheduler_io_in_2_bits_ctrl_fuType),
    .io_in_2_bits_ctrl_fuOpType(scheduler_io_in_2_bits_ctrl_fuOpType),
    .io_in_2_bits_ctrl_rfWen(scheduler_io_in_2_bits_ctrl_rfWen),
    .io_in_2_bits_ctrl_fpWen(scheduler_io_in_2_bits_ctrl_fpWen),
    .io_in_2_bits_ctrl_selImm(scheduler_io_in_2_bits_ctrl_selImm),
    .io_in_2_bits_ctrl_imm(scheduler_io_in_2_bits_ctrl_imm),
    .io_in_2_bits_ctrl_fpu_isAddSub(scheduler_io_in_2_bits_ctrl_fpu_isAddSub),
    .io_in_2_bits_ctrl_fpu_typeTagIn(scheduler_io_in_2_bits_ctrl_fpu_typeTagIn),
    .io_in_2_bits_ctrl_fpu_typeTagOut(scheduler_io_in_2_bits_ctrl_fpu_typeTagOut),
    .io_in_2_bits_ctrl_fpu_fromInt(scheduler_io_in_2_bits_ctrl_fpu_fromInt),
    .io_in_2_bits_ctrl_fpu_wflags(scheduler_io_in_2_bits_ctrl_fpu_wflags),
    .io_in_2_bits_ctrl_fpu_fpWen(scheduler_io_in_2_bits_ctrl_fpu_fpWen),
    .io_in_2_bits_ctrl_fpu_fmaCmd(scheduler_io_in_2_bits_ctrl_fpu_fmaCmd),
    .io_in_2_bits_ctrl_fpu_div(scheduler_io_in_2_bits_ctrl_fpu_div),
    .io_in_2_bits_ctrl_fpu_sqrt(scheduler_io_in_2_bits_ctrl_fpu_sqrt),
    .io_in_2_bits_ctrl_fpu_fcvt(scheduler_io_in_2_bits_ctrl_fpu_fcvt),
    .io_in_2_bits_ctrl_fpu_typ(scheduler_io_in_2_bits_ctrl_fpu_typ),
    .io_in_2_bits_ctrl_fpu_fmt(scheduler_io_in_2_bits_ctrl_fpu_fmt),
    .io_in_2_bits_ctrl_fpu_ren3(scheduler_io_in_2_bits_ctrl_fpu_ren3),
    .io_in_2_bits_ctrl_fpu_rm(scheduler_io_in_2_bits_ctrl_fpu_rm),
    .io_in_2_bits_psrc_0(scheduler_io_in_2_bits_psrc_0),
    .io_in_2_bits_psrc_1(scheduler_io_in_2_bits_psrc_1),
    .io_in_2_bits_pdest(scheduler_io_in_2_bits_pdest),
    .io_in_2_bits_robIdx_flag(scheduler_io_in_2_bits_robIdx_flag),
    .io_in_2_bits_robIdx_value(scheduler_io_in_2_bits_robIdx_value),
    .io_in_2_bits_lqIdx_flag(scheduler_io_in_2_bits_lqIdx_flag),
    .io_in_2_bits_lqIdx_value(scheduler_io_in_2_bits_lqIdx_value),
    .io_in_2_bits_sqIdx_flag(scheduler_io_in_2_bits_sqIdx_flag),
    .io_in_2_bits_sqIdx_value(scheduler_io_in_2_bits_sqIdx_value),
    .io_in_3_ready(scheduler_io_in_3_ready),
    .io_in_3_valid(scheduler_io_in_3_valid),
    .io_in_3_bits_cf_trigger_backendEn_0(scheduler_io_in_3_bits_cf_trigger_backendEn_0),
    .io_in_3_bits_cf_trigger_backendEn_1(scheduler_io_in_3_bits_cf_trigger_backendEn_1),
    .io_in_3_bits_cf_trigger_backendHit_0(scheduler_io_in_3_bits_cf_trigger_backendHit_0),
    .io_in_3_bits_cf_trigger_backendHit_1(scheduler_io_in_3_bits_cf_trigger_backendHit_1),
    .io_in_3_bits_cf_trigger_backendHit_2(scheduler_io_in_3_bits_cf_trigger_backendHit_2),
    .io_in_3_bits_cf_trigger_backendHit_3(scheduler_io_in_3_bits_cf_trigger_backendHit_3),
    .io_in_3_bits_cf_trigger_backendHit_4(scheduler_io_in_3_bits_cf_trigger_backendHit_4),
    .io_in_3_bits_cf_trigger_backendHit_5(scheduler_io_in_3_bits_cf_trigger_backendHit_5),
    .io_in_3_bits_cf_pd_isRVC(scheduler_io_in_3_bits_cf_pd_isRVC),
    .io_in_3_bits_cf_pd_brType(scheduler_io_in_3_bits_cf_pd_brType),
    .io_in_3_bits_cf_pd_isCall(scheduler_io_in_3_bits_cf_pd_isCall),
    .io_in_3_bits_cf_pd_isRet(scheduler_io_in_3_bits_cf_pd_isRet),
    .io_in_3_bits_cf_pred_taken(scheduler_io_in_3_bits_cf_pred_taken),
    .io_in_3_bits_cf_ssid(scheduler_io_in_3_bits_cf_ssid),
    .io_in_3_bits_cf_ftqPtr_flag(scheduler_io_in_3_bits_cf_ftqPtr_flag),
    .io_in_3_bits_cf_ftqPtr_value(scheduler_io_in_3_bits_cf_ftqPtr_value),
    .io_in_3_bits_cf_ftqOffset(scheduler_io_in_3_bits_cf_ftqOffset),
    .io_in_3_bits_ctrl_srcType_0(scheduler_io_in_3_bits_ctrl_srcType_0),
    .io_in_3_bits_ctrl_srcType_1(scheduler_io_in_3_bits_ctrl_srcType_1),
    .io_in_3_bits_ctrl_fuType(scheduler_io_in_3_bits_ctrl_fuType),
    .io_in_3_bits_ctrl_fuOpType(scheduler_io_in_3_bits_ctrl_fuOpType),
    .io_in_3_bits_ctrl_rfWen(scheduler_io_in_3_bits_ctrl_rfWen),
    .io_in_3_bits_ctrl_fpWen(scheduler_io_in_3_bits_ctrl_fpWen),
    .io_in_3_bits_ctrl_selImm(scheduler_io_in_3_bits_ctrl_selImm),
    .io_in_3_bits_ctrl_imm(scheduler_io_in_3_bits_ctrl_imm),
    .io_in_3_bits_ctrl_fpu_isAddSub(scheduler_io_in_3_bits_ctrl_fpu_isAddSub),
    .io_in_3_bits_ctrl_fpu_typeTagIn(scheduler_io_in_3_bits_ctrl_fpu_typeTagIn),
    .io_in_3_bits_ctrl_fpu_typeTagOut(scheduler_io_in_3_bits_ctrl_fpu_typeTagOut),
    .io_in_3_bits_ctrl_fpu_fromInt(scheduler_io_in_3_bits_ctrl_fpu_fromInt),
    .io_in_3_bits_ctrl_fpu_wflags(scheduler_io_in_3_bits_ctrl_fpu_wflags),
    .io_in_3_bits_ctrl_fpu_fpWen(scheduler_io_in_3_bits_ctrl_fpu_fpWen),
    .io_in_3_bits_ctrl_fpu_fmaCmd(scheduler_io_in_3_bits_ctrl_fpu_fmaCmd),
    .io_in_3_bits_ctrl_fpu_div(scheduler_io_in_3_bits_ctrl_fpu_div),
    .io_in_3_bits_ctrl_fpu_sqrt(scheduler_io_in_3_bits_ctrl_fpu_sqrt),
    .io_in_3_bits_ctrl_fpu_fcvt(scheduler_io_in_3_bits_ctrl_fpu_fcvt),
    .io_in_3_bits_ctrl_fpu_typ(scheduler_io_in_3_bits_ctrl_fpu_typ),
    .io_in_3_bits_ctrl_fpu_fmt(scheduler_io_in_3_bits_ctrl_fpu_fmt),
    .io_in_3_bits_ctrl_fpu_ren3(scheduler_io_in_3_bits_ctrl_fpu_ren3),
    .io_in_3_bits_ctrl_fpu_rm(scheduler_io_in_3_bits_ctrl_fpu_rm),
    .io_in_3_bits_psrc_0(scheduler_io_in_3_bits_psrc_0),
    .io_in_3_bits_psrc_1(scheduler_io_in_3_bits_psrc_1),
    .io_in_3_bits_pdest(scheduler_io_in_3_bits_pdest),
    .io_in_3_bits_robIdx_flag(scheduler_io_in_3_bits_robIdx_flag),
    .io_in_3_bits_robIdx_value(scheduler_io_in_3_bits_robIdx_value),
    .io_in_3_bits_lqIdx_flag(scheduler_io_in_3_bits_lqIdx_flag),
    .io_in_3_bits_lqIdx_value(scheduler_io_in_3_bits_lqIdx_value),
    .io_in_3_bits_sqIdx_flag(scheduler_io_in_3_bits_sqIdx_flag),
    .io_in_3_bits_sqIdx_value(scheduler_io_in_3_bits_sqIdx_value),
    .io_in_4_ready(scheduler_io_in_4_ready),
    .io_in_4_valid(scheduler_io_in_4_valid),
    .io_in_4_bits_cf_trigger_backendEn_0(scheduler_io_in_4_bits_cf_trigger_backendEn_0),
    .io_in_4_bits_cf_trigger_backendEn_1(scheduler_io_in_4_bits_cf_trigger_backendEn_1),
    .io_in_4_bits_cf_trigger_backendHit_0(scheduler_io_in_4_bits_cf_trigger_backendHit_0),
    .io_in_4_bits_cf_trigger_backendHit_1(scheduler_io_in_4_bits_cf_trigger_backendHit_1),
    .io_in_4_bits_cf_trigger_backendHit_2(scheduler_io_in_4_bits_cf_trigger_backendHit_2),
    .io_in_4_bits_cf_trigger_backendHit_3(scheduler_io_in_4_bits_cf_trigger_backendHit_3),
    .io_in_4_bits_cf_trigger_backendHit_4(scheduler_io_in_4_bits_cf_trigger_backendHit_4),
    .io_in_4_bits_cf_trigger_backendHit_5(scheduler_io_in_4_bits_cf_trigger_backendHit_5),
    .io_in_4_bits_cf_pd_isRVC(scheduler_io_in_4_bits_cf_pd_isRVC),
    .io_in_4_bits_cf_pd_brType(scheduler_io_in_4_bits_cf_pd_brType),
    .io_in_4_bits_cf_pd_isCall(scheduler_io_in_4_bits_cf_pd_isCall),
    .io_in_4_bits_cf_pd_isRet(scheduler_io_in_4_bits_cf_pd_isRet),
    .io_in_4_bits_cf_pred_taken(scheduler_io_in_4_bits_cf_pred_taken),
    .io_in_4_bits_cf_waitForRobIdx_value(scheduler_io_in_4_bits_cf_waitForRobIdx_value),
    .io_in_4_bits_cf_loadWaitBit(scheduler_io_in_4_bits_cf_loadWaitBit),
    .io_in_4_bits_cf_loadWaitStrict(scheduler_io_in_4_bits_cf_loadWaitStrict),
    .io_in_4_bits_cf_ssid(scheduler_io_in_4_bits_cf_ssid),
    .io_in_4_bits_cf_ftqPtr_flag(scheduler_io_in_4_bits_cf_ftqPtr_flag),
    .io_in_4_bits_cf_ftqPtr_value(scheduler_io_in_4_bits_cf_ftqPtr_value),
    .io_in_4_bits_cf_ftqOffset(scheduler_io_in_4_bits_cf_ftqOffset),
    .io_in_4_bits_ctrl_srcType_0(scheduler_io_in_4_bits_ctrl_srcType_0),
    .io_in_4_bits_ctrl_srcType_1(scheduler_io_in_4_bits_ctrl_srcType_1),
    .io_in_4_bits_ctrl_fuType(scheduler_io_in_4_bits_ctrl_fuType),
    .io_in_4_bits_ctrl_fuOpType(scheduler_io_in_4_bits_ctrl_fuOpType),
    .io_in_4_bits_ctrl_rfWen(scheduler_io_in_4_bits_ctrl_rfWen),
    .io_in_4_bits_ctrl_fpWen(scheduler_io_in_4_bits_ctrl_fpWen),
    .io_in_4_bits_ctrl_imm(scheduler_io_in_4_bits_ctrl_imm),
    .io_in_4_bits_ctrl_fpu_isAddSub(scheduler_io_in_4_bits_ctrl_fpu_isAddSub),
    .io_in_4_bits_ctrl_fpu_typeTagIn(scheduler_io_in_4_bits_ctrl_fpu_typeTagIn),
    .io_in_4_bits_ctrl_fpu_typeTagOut(scheduler_io_in_4_bits_ctrl_fpu_typeTagOut),
    .io_in_4_bits_ctrl_fpu_fromInt(scheduler_io_in_4_bits_ctrl_fpu_fromInt),
    .io_in_4_bits_ctrl_fpu_wflags(scheduler_io_in_4_bits_ctrl_fpu_wflags),
    .io_in_4_bits_ctrl_fpu_fpWen(scheduler_io_in_4_bits_ctrl_fpu_fpWen),
    .io_in_4_bits_ctrl_fpu_fmaCmd(scheduler_io_in_4_bits_ctrl_fpu_fmaCmd),
    .io_in_4_bits_ctrl_fpu_div(scheduler_io_in_4_bits_ctrl_fpu_div),
    .io_in_4_bits_ctrl_fpu_sqrt(scheduler_io_in_4_bits_ctrl_fpu_sqrt),
    .io_in_4_bits_ctrl_fpu_fcvt(scheduler_io_in_4_bits_ctrl_fpu_fcvt),
    .io_in_4_bits_ctrl_fpu_typ(scheduler_io_in_4_bits_ctrl_fpu_typ),
    .io_in_4_bits_ctrl_fpu_fmt(scheduler_io_in_4_bits_ctrl_fpu_fmt),
    .io_in_4_bits_ctrl_fpu_ren3(scheduler_io_in_4_bits_ctrl_fpu_ren3),
    .io_in_4_bits_ctrl_fpu_rm(scheduler_io_in_4_bits_ctrl_fpu_rm),
    .io_in_4_bits_psrc_0(scheduler_io_in_4_bits_psrc_0),
    .io_in_4_bits_psrc_1(scheduler_io_in_4_bits_psrc_1),
    .io_in_4_bits_pdest(scheduler_io_in_4_bits_pdest),
    .io_in_4_bits_robIdx_flag(scheduler_io_in_4_bits_robIdx_flag),
    .io_in_4_bits_robIdx_value(scheduler_io_in_4_bits_robIdx_value),
    .io_in_5_ready(scheduler_io_in_5_ready),
    .io_in_5_valid(scheduler_io_in_5_valid),
    .io_in_5_bits_cf_trigger_backendEn_0(scheduler_io_in_5_bits_cf_trigger_backendEn_0),
    .io_in_5_bits_cf_trigger_backendEn_1(scheduler_io_in_5_bits_cf_trigger_backendEn_1),
    .io_in_5_bits_cf_trigger_backendHit_0(scheduler_io_in_5_bits_cf_trigger_backendHit_0),
    .io_in_5_bits_cf_trigger_backendHit_1(scheduler_io_in_5_bits_cf_trigger_backendHit_1),
    .io_in_5_bits_cf_trigger_backendHit_2(scheduler_io_in_5_bits_cf_trigger_backendHit_2),
    .io_in_5_bits_cf_trigger_backendHit_3(scheduler_io_in_5_bits_cf_trigger_backendHit_3),
    .io_in_5_bits_cf_trigger_backendHit_4(scheduler_io_in_5_bits_cf_trigger_backendHit_4),
    .io_in_5_bits_cf_trigger_backendHit_5(scheduler_io_in_5_bits_cf_trigger_backendHit_5),
    .io_in_5_bits_cf_pd_isRVC(scheduler_io_in_5_bits_cf_pd_isRVC),
    .io_in_5_bits_cf_pd_brType(scheduler_io_in_5_bits_cf_pd_brType),
    .io_in_5_bits_cf_pd_isCall(scheduler_io_in_5_bits_cf_pd_isCall),
    .io_in_5_bits_cf_pd_isRet(scheduler_io_in_5_bits_cf_pd_isRet),
    .io_in_5_bits_cf_pred_taken(scheduler_io_in_5_bits_cf_pred_taken),
    .io_in_5_bits_cf_waitForRobIdx_value(scheduler_io_in_5_bits_cf_waitForRobIdx_value),
    .io_in_5_bits_cf_loadWaitBit(scheduler_io_in_5_bits_cf_loadWaitBit),
    .io_in_5_bits_cf_loadWaitStrict(scheduler_io_in_5_bits_cf_loadWaitStrict),
    .io_in_5_bits_cf_ssid(scheduler_io_in_5_bits_cf_ssid),
    .io_in_5_bits_cf_ftqPtr_flag(scheduler_io_in_5_bits_cf_ftqPtr_flag),
    .io_in_5_bits_cf_ftqPtr_value(scheduler_io_in_5_bits_cf_ftqPtr_value),
    .io_in_5_bits_cf_ftqOffset(scheduler_io_in_5_bits_cf_ftqOffset),
    .io_in_5_bits_ctrl_srcType_0(scheduler_io_in_5_bits_ctrl_srcType_0),
    .io_in_5_bits_ctrl_srcType_1(scheduler_io_in_5_bits_ctrl_srcType_1),
    .io_in_5_bits_ctrl_fuType(scheduler_io_in_5_bits_ctrl_fuType),
    .io_in_5_bits_ctrl_fuOpType(scheduler_io_in_5_bits_ctrl_fuOpType),
    .io_in_5_bits_ctrl_rfWen(scheduler_io_in_5_bits_ctrl_rfWen),
    .io_in_5_bits_ctrl_fpWen(scheduler_io_in_5_bits_ctrl_fpWen),
    .io_in_5_bits_ctrl_imm(scheduler_io_in_5_bits_ctrl_imm),
    .io_in_5_bits_ctrl_fpu_isAddSub(scheduler_io_in_5_bits_ctrl_fpu_isAddSub),
    .io_in_5_bits_ctrl_fpu_typeTagIn(scheduler_io_in_5_bits_ctrl_fpu_typeTagIn),
    .io_in_5_bits_ctrl_fpu_typeTagOut(scheduler_io_in_5_bits_ctrl_fpu_typeTagOut),
    .io_in_5_bits_ctrl_fpu_fromInt(scheduler_io_in_5_bits_ctrl_fpu_fromInt),
    .io_in_5_bits_ctrl_fpu_wflags(scheduler_io_in_5_bits_ctrl_fpu_wflags),
    .io_in_5_bits_ctrl_fpu_fpWen(scheduler_io_in_5_bits_ctrl_fpu_fpWen),
    .io_in_5_bits_ctrl_fpu_fmaCmd(scheduler_io_in_5_bits_ctrl_fpu_fmaCmd),
    .io_in_5_bits_ctrl_fpu_div(scheduler_io_in_5_bits_ctrl_fpu_div),
    .io_in_5_bits_ctrl_fpu_sqrt(scheduler_io_in_5_bits_ctrl_fpu_sqrt),
    .io_in_5_bits_ctrl_fpu_fcvt(scheduler_io_in_5_bits_ctrl_fpu_fcvt),
    .io_in_5_bits_ctrl_fpu_typ(scheduler_io_in_5_bits_ctrl_fpu_typ),
    .io_in_5_bits_ctrl_fpu_fmt(scheduler_io_in_5_bits_ctrl_fpu_fmt),
    .io_in_5_bits_ctrl_fpu_ren3(scheduler_io_in_5_bits_ctrl_fpu_ren3),
    .io_in_5_bits_ctrl_fpu_rm(scheduler_io_in_5_bits_ctrl_fpu_rm),
    .io_in_5_bits_psrc_0(scheduler_io_in_5_bits_psrc_0),
    .io_in_5_bits_psrc_1(scheduler_io_in_5_bits_psrc_1),
    .io_in_5_bits_pdest(scheduler_io_in_5_bits_pdest),
    .io_in_5_bits_robIdx_flag(scheduler_io_in_5_bits_robIdx_flag),
    .io_in_5_bits_robIdx_value(scheduler_io_in_5_bits_robIdx_value),
    .io_in_6_ready(scheduler_io_in_6_ready),
    .io_in_6_valid(scheduler_io_in_6_valid),
    .io_in_6_bits_cf_trigger_backendEn_0(scheduler_io_in_6_bits_cf_trigger_backendEn_0),
    .io_in_6_bits_cf_trigger_backendEn_1(scheduler_io_in_6_bits_cf_trigger_backendEn_1),
    .io_in_6_bits_cf_trigger_backendHit_0(scheduler_io_in_6_bits_cf_trigger_backendHit_0),
    .io_in_6_bits_cf_trigger_backendHit_1(scheduler_io_in_6_bits_cf_trigger_backendHit_1),
    .io_in_6_bits_cf_trigger_backendHit_2(scheduler_io_in_6_bits_cf_trigger_backendHit_2),
    .io_in_6_bits_cf_trigger_backendHit_3(scheduler_io_in_6_bits_cf_trigger_backendHit_3),
    .io_in_6_bits_cf_trigger_backendHit_4(scheduler_io_in_6_bits_cf_trigger_backendHit_4),
    .io_in_6_bits_cf_trigger_backendHit_5(scheduler_io_in_6_bits_cf_trigger_backendHit_5),
    .io_in_6_bits_cf_pd_isRVC(scheduler_io_in_6_bits_cf_pd_isRVC),
    .io_in_6_bits_cf_pd_brType(scheduler_io_in_6_bits_cf_pd_brType),
    .io_in_6_bits_cf_pd_isCall(scheduler_io_in_6_bits_cf_pd_isCall),
    .io_in_6_bits_cf_pd_isRet(scheduler_io_in_6_bits_cf_pd_isRet),
    .io_in_6_bits_cf_pred_taken(scheduler_io_in_6_bits_cf_pred_taken),
    .io_in_6_bits_cf_waitForRobIdx_value(scheduler_io_in_6_bits_cf_waitForRobIdx_value),
    .io_in_6_bits_cf_loadWaitBit(scheduler_io_in_6_bits_cf_loadWaitBit),
    .io_in_6_bits_cf_loadWaitStrict(scheduler_io_in_6_bits_cf_loadWaitStrict),
    .io_in_6_bits_cf_ssid(scheduler_io_in_6_bits_cf_ssid),
    .io_in_6_bits_cf_ftqPtr_flag(scheduler_io_in_6_bits_cf_ftqPtr_flag),
    .io_in_6_bits_cf_ftqPtr_value(scheduler_io_in_6_bits_cf_ftqPtr_value),
    .io_in_6_bits_cf_ftqOffset(scheduler_io_in_6_bits_cf_ftqOffset),
    .io_in_6_bits_ctrl_srcType_0(scheduler_io_in_6_bits_ctrl_srcType_0),
    .io_in_6_bits_ctrl_srcType_1(scheduler_io_in_6_bits_ctrl_srcType_1),
    .io_in_6_bits_ctrl_fuType(scheduler_io_in_6_bits_ctrl_fuType),
    .io_in_6_bits_ctrl_fuOpType(scheduler_io_in_6_bits_ctrl_fuOpType),
    .io_in_6_bits_ctrl_rfWen(scheduler_io_in_6_bits_ctrl_rfWen),
    .io_in_6_bits_ctrl_fpWen(scheduler_io_in_6_bits_ctrl_fpWen),
    .io_in_6_bits_ctrl_imm(scheduler_io_in_6_bits_ctrl_imm),
    .io_in_6_bits_ctrl_fpu_isAddSub(scheduler_io_in_6_bits_ctrl_fpu_isAddSub),
    .io_in_6_bits_ctrl_fpu_typeTagIn(scheduler_io_in_6_bits_ctrl_fpu_typeTagIn),
    .io_in_6_bits_ctrl_fpu_typeTagOut(scheduler_io_in_6_bits_ctrl_fpu_typeTagOut),
    .io_in_6_bits_ctrl_fpu_fromInt(scheduler_io_in_6_bits_ctrl_fpu_fromInt),
    .io_in_6_bits_ctrl_fpu_wflags(scheduler_io_in_6_bits_ctrl_fpu_wflags),
    .io_in_6_bits_ctrl_fpu_fpWen(scheduler_io_in_6_bits_ctrl_fpu_fpWen),
    .io_in_6_bits_ctrl_fpu_fmaCmd(scheduler_io_in_6_bits_ctrl_fpu_fmaCmd),
    .io_in_6_bits_ctrl_fpu_div(scheduler_io_in_6_bits_ctrl_fpu_div),
    .io_in_6_bits_ctrl_fpu_sqrt(scheduler_io_in_6_bits_ctrl_fpu_sqrt),
    .io_in_6_bits_ctrl_fpu_fcvt(scheduler_io_in_6_bits_ctrl_fpu_fcvt),
    .io_in_6_bits_ctrl_fpu_typ(scheduler_io_in_6_bits_ctrl_fpu_typ),
    .io_in_6_bits_ctrl_fpu_fmt(scheduler_io_in_6_bits_ctrl_fpu_fmt),
    .io_in_6_bits_ctrl_fpu_ren3(scheduler_io_in_6_bits_ctrl_fpu_ren3),
    .io_in_6_bits_ctrl_fpu_rm(scheduler_io_in_6_bits_ctrl_fpu_rm),
    .io_in_6_bits_psrc_0(scheduler_io_in_6_bits_psrc_0),
    .io_in_6_bits_psrc_1(scheduler_io_in_6_bits_psrc_1),
    .io_in_6_bits_pdest(scheduler_io_in_6_bits_pdest),
    .io_in_6_bits_robIdx_flag(scheduler_io_in_6_bits_robIdx_flag),
    .io_in_6_bits_robIdx_value(scheduler_io_in_6_bits_robIdx_value),
    .io_in_7_ready(scheduler_io_in_7_ready),
    .io_in_7_valid(scheduler_io_in_7_valid),
    .io_in_7_bits_cf_trigger_backendEn_0(scheduler_io_in_7_bits_cf_trigger_backendEn_0),
    .io_in_7_bits_cf_trigger_backendEn_1(scheduler_io_in_7_bits_cf_trigger_backendEn_1),
    .io_in_7_bits_cf_trigger_backendHit_0(scheduler_io_in_7_bits_cf_trigger_backendHit_0),
    .io_in_7_bits_cf_trigger_backendHit_1(scheduler_io_in_7_bits_cf_trigger_backendHit_1),
    .io_in_7_bits_cf_trigger_backendHit_2(scheduler_io_in_7_bits_cf_trigger_backendHit_2),
    .io_in_7_bits_cf_trigger_backendHit_3(scheduler_io_in_7_bits_cf_trigger_backendHit_3),
    .io_in_7_bits_cf_trigger_backendHit_4(scheduler_io_in_7_bits_cf_trigger_backendHit_4),
    .io_in_7_bits_cf_trigger_backendHit_5(scheduler_io_in_7_bits_cf_trigger_backendHit_5),
    .io_in_7_bits_cf_pd_isRVC(scheduler_io_in_7_bits_cf_pd_isRVC),
    .io_in_7_bits_cf_pd_brType(scheduler_io_in_7_bits_cf_pd_brType),
    .io_in_7_bits_cf_pd_isCall(scheduler_io_in_7_bits_cf_pd_isCall),
    .io_in_7_bits_cf_pd_isRet(scheduler_io_in_7_bits_cf_pd_isRet),
    .io_in_7_bits_cf_pred_taken(scheduler_io_in_7_bits_cf_pred_taken),
    .io_in_7_bits_cf_waitForRobIdx_value(scheduler_io_in_7_bits_cf_waitForRobIdx_value),
    .io_in_7_bits_cf_loadWaitBit(scheduler_io_in_7_bits_cf_loadWaitBit),
    .io_in_7_bits_cf_loadWaitStrict(scheduler_io_in_7_bits_cf_loadWaitStrict),
    .io_in_7_bits_cf_ssid(scheduler_io_in_7_bits_cf_ssid),
    .io_in_7_bits_cf_ftqPtr_flag(scheduler_io_in_7_bits_cf_ftqPtr_flag),
    .io_in_7_bits_cf_ftqPtr_value(scheduler_io_in_7_bits_cf_ftqPtr_value),
    .io_in_7_bits_cf_ftqOffset(scheduler_io_in_7_bits_cf_ftqOffset),
    .io_in_7_bits_ctrl_srcType_0(scheduler_io_in_7_bits_ctrl_srcType_0),
    .io_in_7_bits_ctrl_srcType_1(scheduler_io_in_7_bits_ctrl_srcType_1),
    .io_in_7_bits_ctrl_fuType(scheduler_io_in_7_bits_ctrl_fuType),
    .io_in_7_bits_ctrl_fuOpType(scheduler_io_in_7_bits_ctrl_fuOpType),
    .io_in_7_bits_ctrl_rfWen(scheduler_io_in_7_bits_ctrl_rfWen),
    .io_in_7_bits_ctrl_fpWen(scheduler_io_in_7_bits_ctrl_fpWen),
    .io_in_7_bits_ctrl_imm(scheduler_io_in_7_bits_ctrl_imm),
    .io_in_7_bits_ctrl_fpu_isAddSub(scheduler_io_in_7_bits_ctrl_fpu_isAddSub),
    .io_in_7_bits_ctrl_fpu_typeTagIn(scheduler_io_in_7_bits_ctrl_fpu_typeTagIn),
    .io_in_7_bits_ctrl_fpu_typeTagOut(scheduler_io_in_7_bits_ctrl_fpu_typeTagOut),
    .io_in_7_bits_ctrl_fpu_fromInt(scheduler_io_in_7_bits_ctrl_fpu_fromInt),
    .io_in_7_bits_ctrl_fpu_wflags(scheduler_io_in_7_bits_ctrl_fpu_wflags),
    .io_in_7_bits_ctrl_fpu_fpWen(scheduler_io_in_7_bits_ctrl_fpu_fpWen),
    .io_in_7_bits_ctrl_fpu_fmaCmd(scheduler_io_in_7_bits_ctrl_fpu_fmaCmd),
    .io_in_7_bits_ctrl_fpu_div(scheduler_io_in_7_bits_ctrl_fpu_div),
    .io_in_7_bits_ctrl_fpu_sqrt(scheduler_io_in_7_bits_ctrl_fpu_sqrt),
    .io_in_7_bits_ctrl_fpu_fcvt(scheduler_io_in_7_bits_ctrl_fpu_fcvt),
    .io_in_7_bits_ctrl_fpu_typ(scheduler_io_in_7_bits_ctrl_fpu_typ),
    .io_in_7_bits_ctrl_fpu_fmt(scheduler_io_in_7_bits_ctrl_fpu_fmt),
    .io_in_7_bits_ctrl_fpu_ren3(scheduler_io_in_7_bits_ctrl_fpu_ren3),
    .io_in_7_bits_ctrl_fpu_rm(scheduler_io_in_7_bits_ctrl_fpu_rm),
    .io_in_7_bits_psrc_0(scheduler_io_in_7_bits_psrc_0),
    .io_in_7_bits_psrc_1(scheduler_io_in_7_bits_psrc_1),
    .io_in_7_bits_pdest(scheduler_io_in_7_bits_pdest),
    .io_in_7_bits_robIdx_flag(scheduler_io_in_7_bits_robIdx_flag),
    .io_in_7_bits_robIdx_value(scheduler_io_in_7_bits_robIdx_value),
    .io_issue_0_valid(scheduler_io_issue_0_valid),
    .io_issue_0_bits_uop_cf_pd_isRVC(scheduler_io_issue_0_bits_uop_cf_pd_isRVC),
    .io_issue_0_bits_uop_cf_pd_brType(scheduler_io_issue_0_bits_uop_cf_pd_brType),
    .io_issue_0_bits_uop_cf_pd_isCall(scheduler_io_issue_0_bits_uop_cf_pd_isCall),
    .io_issue_0_bits_uop_cf_pd_isRet(scheduler_io_issue_0_bits_uop_cf_pd_isRet),
    .io_issue_0_bits_uop_cf_pred_taken(scheduler_io_issue_0_bits_uop_cf_pred_taken),
    .io_issue_0_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_0_bits_uop_cf_ftqPtr_flag),
    .io_issue_0_bits_uop_cf_ftqPtr_value(scheduler_io_issue_0_bits_uop_cf_ftqPtr_value),
    .io_issue_0_bits_uop_cf_ftqOffset(scheduler_io_issue_0_bits_uop_cf_ftqOffset),
    .io_issue_0_bits_uop_ctrl_fuType(scheduler_io_issue_0_bits_uop_ctrl_fuType),
    .io_issue_0_bits_uop_ctrl_fuOpType(scheduler_io_issue_0_bits_uop_ctrl_fuOpType),
    .io_issue_0_bits_uop_ctrl_imm(scheduler_io_issue_0_bits_uop_ctrl_imm),
    .io_issue_0_bits_uop_robIdx_flag(scheduler_io_issue_0_bits_uop_robIdx_flag),
    .io_issue_0_bits_uop_robIdx_value(scheduler_io_issue_0_bits_uop_robIdx_value),
    .io_issue_0_bits_src_0(scheduler_io_issue_0_bits_src_0),
    .io_issue_0_bits_src_1(scheduler_io_issue_0_bits_src_1),
    .io_issue_1_valid(scheduler_io_issue_1_valid),
    .io_issue_1_bits_uop_cf_pd_isRVC(scheduler_io_issue_1_bits_uop_cf_pd_isRVC),
    .io_issue_1_bits_uop_cf_pd_brType(scheduler_io_issue_1_bits_uop_cf_pd_brType),
    .io_issue_1_bits_uop_cf_pd_isCall(scheduler_io_issue_1_bits_uop_cf_pd_isCall),
    .io_issue_1_bits_uop_cf_pd_isRet(scheduler_io_issue_1_bits_uop_cf_pd_isRet),
    .io_issue_1_bits_uop_cf_pred_taken(scheduler_io_issue_1_bits_uop_cf_pred_taken),
    .io_issue_1_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_1_bits_uop_cf_ftqPtr_flag),
    .io_issue_1_bits_uop_cf_ftqPtr_value(scheduler_io_issue_1_bits_uop_cf_ftqPtr_value),
    .io_issue_1_bits_uop_cf_ftqOffset(scheduler_io_issue_1_bits_uop_cf_ftqOffset),
    .io_issue_1_bits_uop_ctrl_fuType(scheduler_io_issue_1_bits_uop_ctrl_fuType),
    .io_issue_1_bits_uop_ctrl_fuOpType(scheduler_io_issue_1_bits_uop_ctrl_fuOpType),
    .io_issue_1_bits_uop_ctrl_imm(scheduler_io_issue_1_bits_uop_ctrl_imm),
    .io_issue_1_bits_uop_robIdx_flag(scheduler_io_issue_1_bits_uop_robIdx_flag),
    .io_issue_1_bits_uop_robIdx_value(scheduler_io_issue_1_bits_uop_robIdx_value),
    .io_issue_1_bits_src_0(scheduler_io_issue_1_bits_src_0),
    .io_issue_1_bits_src_1(scheduler_io_issue_1_bits_src_1),
    .io_issue_2_valid(scheduler_io_issue_2_valid),
    .io_issue_2_bits_uop_cf_pd_isRVC(scheduler_io_issue_2_bits_uop_cf_pd_isRVC),
    .io_issue_2_bits_uop_cf_pd_brType(scheduler_io_issue_2_bits_uop_cf_pd_brType),
    .io_issue_2_bits_uop_cf_pd_isCall(scheduler_io_issue_2_bits_uop_cf_pd_isCall),
    .io_issue_2_bits_uop_cf_pd_isRet(scheduler_io_issue_2_bits_uop_cf_pd_isRet),
    .io_issue_2_bits_uop_cf_pred_taken(scheduler_io_issue_2_bits_uop_cf_pred_taken),
    .io_issue_2_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_2_bits_uop_cf_ftqPtr_flag),
    .io_issue_2_bits_uop_cf_ftqPtr_value(scheduler_io_issue_2_bits_uop_cf_ftqPtr_value),
    .io_issue_2_bits_uop_cf_ftqOffset(scheduler_io_issue_2_bits_uop_cf_ftqOffset),
    .io_issue_2_bits_uop_ctrl_fuType(scheduler_io_issue_2_bits_uop_ctrl_fuType),
    .io_issue_2_bits_uop_ctrl_fuOpType(scheduler_io_issue_2_bits_uop_ctrl_fuOpType),
    .io_issue_2_bits_uop_ctrl_imm(scheduler_io_issue_2_bits_uop_ctrl_imm),
    .io_issue_2_bits_uop_robIdx_flag(scheduler_io_issue_2_bits_uop_robIdx_flag),
    .io_issue_2_bits_uop_robIdx_value(scheduler_io_issue_2_bits_uop_robIdx_value),
    .io_issue_2_bits_src_0(scheduler_io_issue_2_bits_src_0),
    .io_issue_2_bits_src_1(scheduler_io_issue_2_bits_src_1),
    .io_issue_3_valid(scheduler_io_issue_3_valid),
    .io_issue_3_bits_uop_cf_pd_isRVC(scheduler_io_issue_3_bits_uop_cf_pd_isRVC),
    .io_issue_3_bits_uop_cf_pd_brType(scheduler_io_issue_3_bits_uop_cf_pd_brType),
    .io_issue_3_bits_uop_cf_pd_isCall(scheduler_io_issue_3_bits_uop_cf_pd_isCall),
    .io_issue_3_bits_uop_cf_pd_isRet(scheduler_io_issue_3_bits_uop_cf_pd_isRet),
    .io_issue_3_bits_uop_cf_pred_taken(scheduler_io_issue_3_bits_uop_cf_pred_taken),
    .io_issue_3_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_3_bits_uop_cf_ftqPtr_flag),
    .io_issue_3_bits_uop_cf_ftqPtr_value(scheduler_io_issue_3_bits_uop_cf_ftqPtr_value),
    .io_issue_3_bits_uop_cf_ftqOffset(scheduler_io_issue_3_bits_uop_cf_ftqOffset),
    .io_issue_3_bits_uop_ctrl_fuType(scheduler_io_issue_3_bits_uop_ctrl_fuType),
    .io_issue_3_bits_uop_ctrl_fuOpType(scheduler_io_issue_3_bits_uop_ctrl_fuOpType),
    .io_issue_3_bits_uop_ctrl_imm(scheduler_io_issue_3_bits_uop_ctrl_imm),
    .io_issue_3_bits_uop_robIdx_flag(scheduler_io_issue_3_bits_uop_robIdx_flag),
    .io_issue_3_bits_uop_robIdx_value(scheduler_io_issue_3_bits_uop_robIdx_value),
    .io_issue_3_bits_src_0(scheduler_io_issue_3_bits_src_0),
    .io_issue_3_bits_src_1(scheduler_io_issue_3_bits_src_1),
    .io_issue_4_ready(scheduler_io_issue_4_ready),
    .io_issue_4_valid(scheduler_io_issue_4_valid),
    .io_issue_4_bits_uop_cf_trigger_backendHit_0(scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_0),
    .io_issue_4_bits_uop_cf_trigger_backendHit_1(scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_1),
    .io_issue_4_bits_uop_cf_trigger_backendHit_2(scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_2),
    .io_issue_4_bits_uop_cf_trigger_backendHit_3(scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_3),
    .io_issue_4_bits_uop_cf_trigger_backendHit_4(scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_4),
    .io_issue_4_bits_uop_cf_trigger_backendHit_5(scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_5),
    .io_issue_4_bits_uop_ctrl_fuType(scheduler_io_issue_4_bits_uop_ctrl_fuType),
    .io_issue_4_bits_uop_ctrl_fuOpType(scheduler_io_issue_4_bits_uop_ctrl_fuOpType),
    .io_issue_4_bits_uop_ctrl_rfWen(scheduler_io_issue_4_bits_uop_ctrl_rfWen),
    .io_issue_4_bits_uop_ctrl_fpWen(scheduler_io_issue_4_bits_uop_ctrl_fpWen),
    .io_issue_4_bits_uop_pdest(scheduler_io_issue_4_bits_uop_pdest),
    .io_issue_4_bits_uop_robIdx_flag(scheduler_io_issue_4_bits_uop_robIdx_flag),
    .io_issue_4_bits_uop_robIdx_value(scheduler_io_issue_4_bits_uop_robIdx_value),
    .io_issue_4_bits_src_0(scheduler_io_issue_4_bits_src_0),
    .io_issue_4_bits_src_1(scheduler_io_issue_4_bits_src_1),
    .io_issue_5_ready(scheduler_io_issue_5_ready),
    .io_issue_5_valid(scheduler_io_issue_5_valid),
    .io_issue_5_bits_uop_cf_pc(scheduler_io_issue_5_bits_uop_cf_pc),
    .io_issue_5_bits_uop_cf_trigger_backendHit_0(scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_0),
    .io_issue_5_bits_uop_cf_trigger_backendHit_1(scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_1),
    .io_issue_5_bits_uop_cf_trigger_backendHit_2(scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_2),
    .io_issue_5_bits_uop_cf_trigger_backendHit_3(scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_3),
    .io_issue_5_bits_uop_cf_trigger_backendHit_4(scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_4),
    .io_issue_5_bits_uop_cf_trigger_backendHit_5(scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_5),
    .io_issue_5_bits_uop_cf_pd_isRVC(scheduler_io_issue_5_bits_uop_cf_pd_isRVC),
    .io_issue_5_bits_uop_cf_pd_brType(scheduler_io_issue_5_bits_uop_cf_pd_brType),
    .io_issue_5_bits_uop_cf_pd_isCall(scheduler_io_issue_5_bits_uop_cf_pd_isCall),
    .io_issue_5_bits_uop_cf_pd_isRet(scheduler_io_issue_5_bits_uop_cf_pd_isRet),
    .io_issue_5_bits_uop_cf_pred_taken(scheduler_io_issue_5_bits_uop_cf_pred_taken),
    .io_issue_5_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_5_bits_uop_cf_ftqPtr_flag),
    .io_issue_5_bits_uop_cf_ftqPtr_value(scheduler_io_issue_5_bits_uop_cf_ftqPtr_value),
    .io_issue_5_bits_uop_cf_ftqOffset(scheduler_io_issue_5_bits_uop_cf_ftqOffset),
    .io_issue_5_bits_uop_ctrl_fuType(scheduler_io_issue_5_bits_uop_ctrl_fuType),
    .io_issue_5_bits_uop_ctrl_fuOpType(scheduler_io_issue_5_bits_uop_ctrl_fuOpType),
    .io_issue_5_bits_uop_ctrl_rfWen(scheduler_io_issue_5_bits_uop_ctrl_rfWen),
    .io_issue_5_bits_uop_ctrl_fpWen(scheduler_io_issue_5_bits_uop_ctrl_fpWen),
    .io_issue_5_bits_uop_ctrl_imm(scheduler_io_issue_5_bits_uop_ctrl_imm),
    .io_issue_5_bits_uop_ctrl_fpu_typeTagOut(scheduler_io_issue_5_bits_uop_ctrl_fpu_typeTagOut),
    .io_issue_5_bits_uop_ctrl_fpu_fromInt(scheduler_io_issue_5_bits_uop_ctrl_fpu_fromInt),
    .io_issue_5_bits_uop_ctrl_fpu_wflags(scheduler_io_issue_5_bits_uop_ctrl_fpu_wflags),
    .io_issue_5_bits_uop_ctrl_fpu_typ(scheduler_io_issue_5_bits_uop_ctrl_fpu_typ),
    .io_issue_5_bits_uop_ctrl_fpu_rm(scheduler_io_issue_5_bits_uop_ctrl_fpu_rm),
    .io_issue_5_bits_uop_pdest(scheduler_io_issue_5_bits_uop_pdest),
    .io_issue_5_bits_uop_robIdx_flag(scheduler_io_issue_5_bits_uop_robIdx_flag),
    .io_issue_5_bits_uop_robIdx_value(scheduler_io_issue_5_bits_uop_robIdx_value),
    .io_issue_5_bits_src_0(scheduler_io_issue_5_bits_src_0),
    .io_issue_5_bits_src_1(scheduler_io_issue_5_bits_src_1),
    .io_issue_6_ready(scheduler_io_issue_6_ready),
    .io_issue_6_valid(scheduler_io_issue_6_valid),
    .io_issue_6_bits_uop_cf_trigger_backendEn_0(scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_0),
    .io_issue_6_bits_uop_cf_trigger_backendEn_1(scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_1),
    .io_issue_6_bits_uop_cf_trigger_backendHit_0(scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_0),
    .io_issue_6_bits_uop_cf_trigger_backendHit_1(scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_1),
    .io_issue_6_bits_uop_cf_trigger_backendHit_2(scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_2),
    .io_issue_6_bits_uop_cf_trigger_backendHit_3(scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_3),
    .io_issue_6_bits_uop_cf_trigger_backendHit_4(scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_4),
    .io_issue_6_bits_uop_cf_trigger_backendHit_5(scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_5),
    .io_issue_6_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_6_bits_uop_cf_ftqPtr_flag),
    .io_issue_6_bits_uop_cf_ftqPtr_value(scheduler_io_issue_6_bits_uop_cf_ftqPtr_value),
    .io_issue_6_bits_uop_cf_ftqOffset(scheduler_io_issue_6_bits_uop_cf_ftqOffset),
    .io_issue_6_bits_uop_ctrl_fuOpType(scheduler_io_issue_6_bits_uop_ctrl_fuOpType),
    .io_issue_6_bits_uop_ctrl_rfWen(scheduler_io_issue_6_bits_uop_ctrl_rfWen),
    .io_issue_6_bits_uop_ctrl_fpWen(scheduler_io_issue_6_bits_uop_ctrl_fpWen),
    .io_issue_6_bits_uop_ctrl_imm(scheduler_io_issue_6_bits_uop_ctrl_imm),
    .io_issue_6_bits_uop_pdest(scheduler_io_issue_6_bits_uop_pdest),
    .io_issue_6_bits_uop_robIdx_flag(scheduler_io_issue_6_bits_uop_robIdx_flag),
    .io_issue_6_bits_uop_robIdx_value(scheduler_io_issue_6_bits_uop_robIdx_value),
    .io_issue_6_bits_uop_lqIdx_flag(scheduler_io_issue_6_bits_uop_lqIdx_flag),
    .io_issue_6_bits_uop_lqIdx_value(scheduler_io_issue_6_bits_uop_lqIdx_value),
    .io_issue_6_bits_uop_sqIdx_flag(scheduler_io_issue_6_bits_uop_sqIdx_flag),
    .io_issue_6_bits_uop_sqIdx_value(scheduler_io_issue_6_bits_uop_sqIdx_value),
    .io_issue_6_bits_src_0(scheduler_io_issue_6_bits_src_0),
    .io_issue_7_ready(scheduler_io_issue_7_ready),
    .io_issue_7_valid(scheduler_io_issue_7_valid),
    .io_issue_7_bits_uop_cf_trigger_backendEn_0(scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_0),
    .io_issue_7_bits_uop_cf_trigger_backendEn_1(scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_1),
    .io_issue_7_bits_uop_cf_trigger_backendHit_0(scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_0),
    .io_issue_7_bits_uop_cf_trigger_backendHit_1(scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_1),
    .io_issue_7_bits_uop_cf_trigger_backendHit_2(scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_2),
    .io_issue_7_bits_uop_cf_trigger_backendHit_3(scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_3),
    .io_issue_7_bits_uop_cf_trigger_backendHit_4(scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_4),
    .io_issue_7_bits_uop_cf_trigger_backendHit_5(scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_5),
    .io_issue_7_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_7_bits_uop_cf_ftqPtr_flag),
    .io_issue_7_bits_uop_cf_ftqPtr_value(scheduler_io_issue_7_bits_uop_cf_ftqPtr_value),
    .io_issue_7_bits_uop_cf_ftqOffset(scheduler_io_issue_7_bits_uop_cf_ftqOffset),
    .io_issue_7_bits_uop_ctrl_fuOpType(scheduler_io_issue_7_bits_uop_ctrl_fuOpType),
    .io_issue_7_bits_uop_ctrl_rfWen(scheduler_io_issue_7_bits_uop_ctrl_rfWen),
    .io_issue_7_bits_uop_ctrl_fpWen(scheduler_io_issue_7_bits_uop_ctrl_fpWen),
    .io_issue_7_bits_uop_ctrl_imm(scheduler_io_issue_7_bits_uop_ctrl_imm),
    .io_issue_7_bits_uop_pdest(scheduler_io_issue_7_bits_uop_pdest),
    .io_issue_7_bits_uop_robIdx_flag(scheduler_io_issue_7_bits_uop_robIdx_flag),
    .io_issue_7_bits_uop_robIdx_value(scheduler_io_issue_7_bits_uop_robIdx_value),
    .io_issue_7_bits_uop_lqIdx_flag(scheduler_io_issue_7_bits_uop_lqIdx_flag),
    .io_issue_7_bits_uop_lqIdx_value(scheduler_io_issue_7_bits_uop_lqIdx_value),
    .io_issue_7_bits_uop_sqIdx_flag(scheduler_io_issue_7_bits_uop_sqIdx_flag),
    .io_issue_7_bits_uop_sqIdx_value(scheduler_io_issue_7_bits_uop_sqIdx_value),
    .io_issue_7_bits_src_0(scheduler_io_issue_7_bits_src_0),
    .io_issue_8_ready(scheduler_io_issue_8_ready),
    .io_issue_8_valid(scheduler_io_issue_8_valid),
    .io_issue_8_bits_uop_cf_trigger_backendEn_0(scheduler_io_issue_8_bits_uop_cf_trigger_backendEn_0),
    .io_issue_8_bits_uop_cf_trigger_backendEn_1(scheduler_io_issue_8_bits_uop_cf_trigger_backendEn_1),
    .io_issue_8_bits_uop_cf_trigger_backendHit_0(scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_0),
    .io_issue_8_bits_uop_cf_trigger_backendHit_1(scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_1),
    .io_issue_8_bits_uop_cf_trigger_backendHit_2(scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_2),
    .io_issue_8_bits_uop_cf_trigger_backendHit_3(scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_3),
    .io_issue_8_bits_uop_cf_trigger_backendHit_4(scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_4),
    .io_issue_8_bits_uop_cf_trigger_backendHit_5(scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_5),
    .io_issue_8_bits_uop_cf_ssid(scheduler_io_issue_8_bits_uop_cf_ssid),
    .io_issue_8_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_8_bits_uop_cf_ftqPtr_flag),
    .io_issue_8_bits_uop_cf_ftqPtr_value(scheduler_io_issue_8_bits_uop_cf_ftqPtr_value),
    .io_issue_8_bits_uop_cf_ftqOffset(scheduler_io_issue_8_bits_uop_cf_ftqOffset),
    .io_issue_8_bits_uop_ctrl_fuType(scheduler_io_issue_8_bits_uop_ctrl_fuType),
    .io_issue_8_bits_uop_ctrl_fuOpType(scheduler_io_issue_8_bits_uop_ctrl_fuOpType),
    .io_issue_8_bits_uop_ctrl_rfWen(scheduler_io_issue_8_bits_uop_ctrl_rfWen),
    .io_issue_8_bits_uop_ctrl_fpWen(scheduler_io_issue_8_bits_uop_ctrl_fpWen),
    .io_issue_8_bits_uop_ctrl_imm(scheduler_io_issue_8_bits_uop_ctrl_imm),
    .io_issue_8_bits_uop_pdest(scheduler_io_issue_8_bits_uop_pdest),
    .io_issue_8_bits_uop_robIdx_flag(scheduler_io_issue_8_bits_uop_robIdx_flag),
    .io_issue_8_bits_uop_robIdx_value(scheduler_io_issue_8_bits_uop_robIdx_value),
    .io_issue_8_bits_uop_lqIdx_flag(scheduler_io_issue_8_bits_uop_lqIdx_flag),
    .io_issue_8_bits_uop_lqIdx_value(scheduler_io_issue_8_bits_uop_lqIdx_value),
    .io_issue_8_bits_uop_sqIdx_flag(scheduler_io_issue_8_bits_uop_sqIdx_flag),
    .io_issue_8_bits_uop_sqIdx_value(scheduler_io_issue_8_bits_uop_sqIdx_value),
    .io_issue_8_bits_src_0(scheduler_io_issue_8_bits_src_0),
    .io_issue_9_ready(scheduler_io_issue_9_ready),
    .io_issue_9_valid(scheduler_io_issue_9_valid),
    .io_issue_9_bits_uop_cf_trigger_backendEn_0(scheduler_io_issue_9_bits_uop_cf_trigger_backendEn_0),
    .io_issue_9_bits_uop_cf_trigger_backendEn_1(scheduler_io_issue_9_bits_uop_cf_trigger_backendEn_1),
    .io_issue_9_bits_uop_cf_trigger_backendHit_0(scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_0),
    .io_issue_9_bits_uop_cf_trigger_backendHit_1(scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_1),
    .io_issue_9_bits_uop_cf_trigger_backendHit_2(scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_2),
    .io_issue_9_bits_uop_cf_trigger_backendHit_3(scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_3),
    .io_issue_9_bits_uop_cf_trigger_backendHit_4(scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_4),
    .io_issue_9_bits_uop_cf_trigger_backendHit_5(scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_5),
    .io_issue_9_bits_uop_cf_ssid(scheduler_io_issue_9_bits_uop_cf_ssid),
    .io_issue_9_bits_uop_cf_ftqPtr_flag(scheduler_io_issue_9_bits_uop_cf_ftqPtr_flag),
    .io_issue_9_bits_uop_cf_ftqPtr_value(scheduler_io_issue_9_bits_uop_cf_ftqPtr_value),
    .io_issue_9_bits_uop_cf_ftqOffset(scheduler_io_issue_9_bits_uop_cf_ftqOffset),
    .io_issue_9_bits_uop_ctrl_fuType(scheduler_io_issue_9_bits_uop_ctrl_fuType),
    .io_issue_9_bits_uop_ctrl_fuOpType(scheduler_io_issue_9_bits_uop_ctrl_fuOpType),
    .io_issue_9_bits_uop_ctrl_rfWen(scheduler_io_issue_9_bits_uop_ctrl_rfWen),
    .io_issue_9_bits_uop_ctrl_fpWen(scheduler_io_issue_9_bits_uop_ctrl_fpWen),
    .io_issue_9_bits_uop_ctrl_imm(scheduler_io_issue_9_bits_uop_ctrl_imm),
    .io_issue_9_bits_uop_pdest(scheduler_io_issue_9_bits_uop_pdest),
    .io_issue_9_bits_uop_robIdx_flag(scheduler_io_issue_9_bits_uop_robIdx_flag),
    .io_issue_9_bits_uop_robIdx_value(scheduler_io_issue_9_bits_uop_robIdx_value),
    .io_issue_9_bits_uop_lqIdx_flag(scheduler_io_issue_9_bits_uop_lqIdx_flag),
    .io_issue_9_bits_uop_lqIdx_value(scheduler_io_issue_9_bits_uop_lqIdx_value),
    .io_issue_9_bits_uop_sqIdx_flag(scheduler_io_issue_9_bits_uop_sqIdx_flag),
    .io_issue_9_bits_uop_sqIdx_value(scheduler_io_issue_9_bits_uop_sqIdx_value),
    .io_issue_9_bits_src_0(scheduler_io_issue_9_bits_src_0),
    .io_issue_10_ready(scheduler_io_issue_10_ready),
    .io_issue_10_valid(scheduler_io_issue_10_valid),
    .io_issue_10_bits_uop_ctrl_fuType(scheduler_io_issue_10_bits_uop_ctrl_fuType),
    .io_issue_10_bits_uop_ctrl_fuOpType(scheduler_io_issue_10_bits_uop_ctrl_fuOpType),
    .io_issue_10_bits_uop_robIdx_flag(scheduler_io_issue_10_bits_uop_robIdx_flag),
    .io_issue_10_bits_uop_robIdx_value(scheduler_io_issue_10_bits_uop_robIdx_value),
    .io_issue_10_bits_uop_sqIdx_value(scheduler_io_issue_10_bits_uop_sqIdx_value),
    .io_issue_10_bits_src_0(scheduler_io_issue_10_bits_src_0),
    .io_issue_11_ready(scheduler_io_issue_11_ready),
    .io_issue_11_valid(scheduler_io_issue_11_valid),
    .io_issue_11_bits_uop_ctrl_fuType(scheduler_io_issue_11_bits_uop_ctrl_fuType),
    .io_issue_11_bits_uop_ctrl_fuOpType(scheduler_io_issue_11_bits_uop_ctrl_fuOpType),
    .io_issue_11_bits_uop_robIdx_flag(scheduler_io_issue_11_bits_uop_robIdx_flag),
    .io_issue_11_bits_uop_robIdx_value(scheduler_io_issue_11_bits_uop_robIdx_value),
    .io_issue_11_bits_uop_sqIdx_value(scheduler_io_issue_11_bits_uop_sqIdx_value),
    .io_issue_11_bits_src_0(scheduler_io_issue_11_bits_src_0),
    .io_fastUopOut_0_valid(scheduler_io_fastUopOut_0_valid),
    .io_fastUopOut_0_bits_cf_trigger_backendHit_0(scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_0),
    .io_fastUopOut_0_bits_cf_trigger_backendHit_1(scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_1),
    .io_fastUopOut_0_bits_cf_trigger_backendHit_2(scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_2),
    .io_fastUopOut_0_bits_cf_trigger_backendHit_3(scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_3),
    .io_fastUopOut_0_bits_cf_trigger_backendHit_4(scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_4),
    .io_fastUopOut_0_bits_cf_trigger_backendHit_5(scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_5),
    .io_fastUopOut_0_bits_ctrl_rfWen(scheduler_io_fastUopOut_0_bits_ctrl_rfWen),
    .io_fastUopOut_0_bits_ctrl_fpWen(scheduler_io_fastUopOut_0_bits_ctrl_fpWen),
    .io_fastUopOut_0_bits_pdest(scheduler_io_fastUopOut_0_bits_pdest),
    .io_fastUopOut_0_bits_robIdx_flag(scheduler_io_fastUopOut_0_bits_robIdx_flag),
    .io_fastUopOut_0_bits_robIdx_value(scheduler_io_fastUopOut_0_bits_robIdx_value),
    .io_fastUopOut_1_valid(scheduler_io_fastUopOut_1_valid),
    .io_fastUopOut_1_bits_cf_trigger_backendHit_0(scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_0),
    .io_fastUopOut_1_bits_cf_trigger_backendHit_1(scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_1),
    .io_fastUopOut_1_bits_cf_trigger_backendHit_2(scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_2),
    .io_fastUopOut_1_bits_cf_trigger_backendHit_3(scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_3),
    .io_fastUopOut_1_bits_cf_trigger_backendHit_4(scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_4),
    .io_fastUopOut_1_bits_cf_trigger_backendHit_5(scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_5),
    .io_fastUopOut_1_bits_ctrl_rfWen(scheduler_io_fastUopOut_1_bits_ctrl_rfWen),
    .io_fastUopOut_1_bits_ctrl_fpWen(scheduler_io_fastUopOut_1_bits_ctrl_fpWen),
    .io_fastUopOut_1_bits_pdest(scheduler_io_fastUopOut_1_bits_pdest),
    .io_fastUopOut_1_bits_robIdx_flag(scheduler_io_fastUopOut_1_bits_robIdx_flag),
    .io_fastUopOut_1_bits_robIdx_value(scheduler_io_fastUopOut_1_bits_robIdx_value),
    .io_fastUopOut_2_valid(scheduler_io_fastUopOut_2_valid),
    .io_fastUopOut_2_bits_cf_trigger_backendHit_0(scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_0),
    .io_fastUopOut_2_bits_cf_trigger_backendHit_1(scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_1),
    .io_fastUopOut_2_bits_cf_trigger_backendHit_2(scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_2),
    .io_fastUopOut_2_bits_cf_trigger_backendHit_3(scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_3),
    .io_fastUopOut_2_bits_cf_trigger_backendHit_4(scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_4),
    .io_fastUopOut_2_bits_cf_trigger_backendHit_5(scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_5),
    .io_fastUopOut_2_bits_ctrl_rfWen(scheduler_io_fastUopOut_2_bits_ctrl_rfWen),
    .io_fastUopOut_2_bits_ctrl_fpWen(scheduler_io_fastUopOut_2_bits_ctrl_fpWen),
    .io_fastUopOut_2_bits_pdest(scheduler_io_fastUopOut_2_bits_pdest),
    .io_fastUopOut_2_bits_robIdx_flag(scheduler_io_fastUopOut_2_bits_robIdx_flag),
    .io_fastUopOut_2_bits_robIdx_value(scheduler_io_fastUopOut_2_bits_robIdx_value),
    .io_fastUopOut_3_valid(scheduler_io_fastUopOut_3_valid),
    .io_fastUopOut_3_bits_cf_trigger_backendHit_0(scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_0),
    .io_fastUopOut_3_bits_cf_trigger_backendHit_1(scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_1),
    .io_fastUopOut_3_bits_cf_trigger_backendHit_2(scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_2),
    .io_fastUopOut_3_bits_cf_trigger_backendHit_3(scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_3),
    .io_fastUopOut_3_bits_cf_trigger_backendHit_4(scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_4),
    .io_fastUopOut_3_bits_cf_trigger_backendHit_5(scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_5),
    .io_fastUopOut_3_bits_ctrl_rfWen(scheduler_io_fastUopOut_3_bits_ctrl_rfWen),
    .io_fastUopOut_3_bits_ctrl_fpWen(scheduler_io_fastUopOut_3_bits_ctrl_fpWen),
    .io_fastUopOut_3_bits_pdest(scheduler_io_fastUopOut_3_bits_pdest),
    .io_fastUopOut_3_bits_robIdx_flag(scheduler_io_fastUopOut_3_bits_robIdx_flag),
    .io_fastUopOut_3_bits_robIdx_value(scheduler_io_fastUopOut_3_bits_robIdx_value),
    .io_writeback_0_valid(scheduler_io_writeback_0_valid),
    .io_writeback_0_bits_uop_ctrl_rfWen(scheduler_io_writeback_0_bits_uop_ctrl_rfWen),
    .io_writeback_0_bits_uop_ctrl_fpWen(scheduler_io_writeback_0_bits_uop_ctrl_fpWen),
    .io_writeback_0_bits_uop_pdest(scheduler_io_writeback_0_bits_uop_pdest),
    .io_writeback_0_bits_data(scheduler_io_writeback_0_bits_data),
    .io_writeback_1_valid(scheduler_io_writeback_1_valid),
    .io_writeback_1_bits_uop_ctrl_rfWen(scheduler_io_writeback_1_bits_uop_ctrl_rfWen),
    .io_writeback_1_bits_uop_ctrl_fpWen(scheduler_io_writeback_1_bits_uop_ctrl_fpWen),
    .io_writeback_1_bits_uop_pdest(scheduler_io_writeback_1_bits_uop_pdest),
    .io_writeback_1_bits_data(scheduler_io_writeback_1_bits_data),
    .io_writeback_2_valid(scheduler_io_writeback_2_valid),
    .io_writeback_2_bits_uop_ctrl_rfWen(scheduler_io_writeback_2_bits_uop_ctrl_rfWen),
    .io_writeback_2_bits_uop_ctrl_fpWen(scheduler_io_writeback_2_bits_uop_ctrl_fpWen),
    .io_writeback_2_bits_uop_pdest(scheduler_io_writeback_2_bits_uop_pdest),
    .io_writeback_2_bits_data(scheduler_io_writeback_2_bits_data),
    .io_writeback_3_valid(scheduler_io_writeback_3_valid),
    .io_writeback_3_bits_uop_ctrl_rfWen(scheduler_io_writeback_3_bits_uop_ctrl_rfWen),
    .io_writeback_3_bits_uop_ctrl_fpWen(scheduler_io_writeback_3_bits_uop_ctrl_fpWen),
    .io_writeback_3_bits_uop_pdest(scheduler_io_writeback_3_bits_uop_pdest),
    .io_writeback_3_bits_data(scheduler_io_writeback_3_bits_data),
    .io_writeback_4_valid(scheduler_io_writeback_4_valid),
    .io_writeback_4_bits_uop_ctrl_rfWen(scheduler_io_writeback_4_bits_uop_ctrl_rfWen),
    .io_writeback_4_bits_uop_ctrl_fpWen(scheduler_io_writeback_4_bits_uop_ctrl_fpWen),
    .io_writeback_4_bits_uop_pdest(scheduler_io_writeback_4_bits_uop_pdest),
    .io_writeback_4_bits_data(scheduler_io_writeback_4_bits_data),
    .io_writeback_5_valid(scheduler_io_writeback_5_valid),
    .io_writeback_5_bits_uop_ctrl_rfWen(scheduler_io_writeback_5_bits_uop_ctrl_rfWen),
    .io_writeback_5_bits_uop_ctrl_fpWen(scheduler_io_writeback_5_bits_uop_ctrl_fpWen),
    .io_writeback_5_bits_uop_pdest(scheduler_io_writeback_5_bits_uop_pdest),
    .io_writeback_5_bits_data(scheduler_io_writeback_5_bits_data),
    .io_writeback_6_valid(scheduler_io_writeback_6_valid),
    .io_writeback_6_bits_uop_ctrl_rfWen(scheduler_io_writeback_6_bits_uop_ctrl_rfWen),
    .io_writeback_6_bits_uop_ctrl_fpWen(scheduler_io_writeback_6_bits_uop_ctrl_fpWen),
    .io_writeback_6_bits_uop_pdest(scheduler_io_writeback_6_bits_uop_pdest),
    .io_writeback_6_bits_data(scheduler_io_writeback_6_bits_data),
    .io_writeback_7_valid(scheduler_io_writeback_7_valid),
    .io_writeback_7_bits_uop_ctrl_rfWen(scheduler_io_writeback_7_bits_uop_ctrl_rfWen),
    .io_writeback_7_bits_uop_ctrl_fpWen(scheduler_io_writeback_7_bits_uop_ctrl_fpWen),
    .io_writeback_7_bits_uop_pdest(scheduler_io_writeback_7_bits_uop_pdest),
    .io_writeback_7_bits_data(scheduler_io_writeback_7_bits_data),
    .io_writeback_8_valid(scheduler_io_writeback_8_valid),
    .io_writeback_8_bits_uop_ctrl_rfWen(scheduler_io_writeback_8_bits_uop_ctrl_rfWen),
    .io_writeback_8_bits_uop_ctrl_fpWen(scheduler_io_writeback_8_bits_uop_ctrl_fpWen),
    .io_writeback_8_bits_uop_pdest(scheduler_io_writeback_8_bits_uop_pdest),
    .io_writeback_8_bits_data(scheduler_io_writeback_8_bits_data),
    .io_writeback_9_valid(scheduler_io_writeback_9_valid),
    .io_writeback_9_bits_uop_ctrl_rfWen(scheduler_io_writeback_9_bits_uop_ctrl_rfWen),
    .io_writeback_9_bits_uop_ctrl_fpWen(scheduler_io_writeback_9_bits_uop_ctrl_fpWen),
    .io_writeback_9_bits_uop_pdest(scheduler_io_writeback_9_bits_uop_pdest),
    .io_writeback_9_bits_data(scheduler_io_writeback_9_bits_data),
    .io_writeback_10_valid(scheduler_io_writeback_10_valid),
    .io_writeback_10_bits_uop_ctrl_rfWen(scheduler_io_writeback_10_bits_uop_ctrl_rfWen),
    .io_writeback_10_bits_uop_ctrl_fpWen(scheduler_io_writeback_10_bits_uop_ctrl_fpWen),
    .io_writeback_10_bits_uop_pdest(scheduler_io_writeback_10_bits_uop_pdest),
    .io_writeback_10_bits_data(scheduler_io_writeback_10_bits_data),
    .io_writeback_11_valid(scheduler_io_writeback_11_valid),
    .io_writeback_11_bits_uop_ctrl_rfWen(scheduler_io_writeback_11_bits_uop_ctrl_rfWen),
    .io_writeback_11_bits_uop_ctrl_fpWen(scheduler_io_writeback_11_bits_uop_ctrl_fpWen),
    .io_writeback_11_bits_uop_pdest(scheduler_io_writeback_11_bits_uop_pdest),
    .io_writeback_11_bits_data(scheduler_io_writeback_11_bits_data),
    .io_fastUopIn_4_valid(scheduler_io_fastUopIn_4_valid),
    .io_fastUopIn_4_bits_ctrl_rfWen(scheduler_io_fastUopIn_4_bits_ctrl_rfWen),
    .io_fastUopIn_4_bits_pdest(scheduler_io_fastUopIn_4_bits_pdest),
    .io_fastUopIn_5_valid(scheduler_io_fastUopIn_5_valid),
    .io_fastUopIn_5_bits_ctrl_rfWen(scheduler_io_fastUopIn_5_bits_ctrl_rfWen),
    .io_fastUopIn_5_bits_pdest(scheduler_io_fastUopIn_5_bits_pdest),
    .io_extra_feedback_0_feedbackSlow_valid(scheduler_io_extra_feedback_0_feedbackSlow_valid),
    .io_extra_feedback_0_feedbackSlow_bits_rsIdx(scheduler_io_extra_feedback_0_feedbackSlow_bits_rsIdx),
    .io_extra_feedback_0_feedbackSlow_bits_hit(scheduler_io_extra_feedback_0_feedbackSlow_bits_hit),
    .io_extra_feedback_0_feedbackSlow_bits_sourceType(scheduler_io_extra_feedback_0_feedbackSlow_bits_sourceType),
    .io_extra_feedback_0_feedbackSlow_bits_dataInvalidSqIdx_value(
      scheduler_io_extra_feedback_0_feedbackSlow_bits_dataInvalidSqIdx_value),
    .io_extra_feedback_0_feedbackFast_valid(scheduler_io_extra_feedback_0_feedbackFast_valid),
    .io_extra_feedback_0_feedbackFast_bits_rsIdx(scheduler_io_extra_feedback_0_feedbackFast_bits_rsIdx),
    .io_extra_feedback_0_feedbackFast_bits_sourceType(scheduler_io_extra_feedback_0_feedbackFast_bits_sourceType),
    .io_extra_feedback_0_rsIdx(scheduler_io_extra_feedback_0_rsIdx),
    .io_extra_feedback_1_feedbackSlow_valid(scheduler_io_extra_feedback_1_feedbackSlow_valid),
    .io_extra_feedback_1_feedbackSlow_bits_rsIdx(scheduler_io_extra_feedback_1_feedbackSlow_bits_rsIdx),
    .io_extra_feedback_1_feedbackSlow_bits_hit(scheduler_io_extra_feedback_1_feedbackSlow_bits_hit),
    .io_extra_feedback_1_feedbackSlow_bits_sourceType(scheduler_io_extra_feedback_1_feedbackSlow_bits_sourceType),
    .io_extra_feedback_1_feedbackSlow_bits_dataInvalidSqIdx_value(
      scheduler_io_extra_feedback_1_feedbackSlow_bits_dataInvalidSqIdx_value),
    .io_extra_feedback_1_feedbackFast_valid(scheduler_io_extra_feedback_1_feedbackFast_valid),
    .io_extra_feedback_1_feedbackFast_bits_rsIdx(scheduler_io_extra_feedback_1_feedbackFast_bits_rsIdx),
    .io_extra_feedback_1_feedbackFast_bits_sourceType(scheduler_io_extra_feedback_1_feedbackFast_bits_sourceType),
    .io_extra_feedback_1_rsIdx(scheduler_io_extra_feedback_1_rsIdx),
    .io_extra_feedback_2_feedbackSlow_valid(scheduler_io_extra_feedback_2_feedbackSlow_valid),
    .io_extra_feedback_2_feedbackSlow_bits_rsIdx(scheduler_io_extra_feedback_2_feedbackSlow_bits_rsIdx),
    .io_extra_feedback_2_feedbackSlow_bits_hit(scheduler_io_extra_feedback_2_feedbackSlow_bits_hit),
    .io_extra_feedback_2_rsIdx(scheduler_io_extra_feedback_2_rsIdx),
    .io_extra_feedback_3_feedbackSlow_valid(scheduler_io_extra_feedback_3_feedbackSlow_valid),
    .io_extra_feedback_3_feedbackSlow_bits_rsIdx(scheduler_io_extra_feedback_3_feedbackSlow_bits_rsIdx),
    .io_extra_feedback_3_feedbackSlow_bits_hit(scheduler_io_extra_feedback_3_feedbackSlow_bits_hit),
    .io_extra_feedback_3_rsIdx(scheduler_io_extra_feedback_3_rsIdx),
    .io_extra_fpRfReadIn_0_addr(scheduler_io_extra_fpRfReadIn_0_addr),
    .io_extra_fpRfReadIn_0_data(scheduler_io_extra_fpRfReadIn_0_data),
    .io_extra_fpRfReadIn_1_addr(scheduler_io_extra_fpRfReadIn_1_addr),
    .io_extra_fpRfReadIn_1_data(scheduler_io_extra_fpRfReadIn_1_data),
    .io_extra_jumpPc(scheduler_io_extra_jumpPc),
    .io_extra_jalr_target(scheduler_io_extra_jalr_target),
    .io_extra_stIssuePtr_flag(scheduler_io_extra_stIssuePtr_flag),
    .io_extra_stIssuePtr_value(scheduler_io_extra_stIssuePtr_value),
    .io_extra_enqLsq_needAlloc_0(scheduler_io_extra_enqLsq_needAlloc_0),
    .io_extra_enqLsq_needAlloc_1(scheduler_io_extra_enqLsq_needAlloc_1),
    .io_extra_enqLsq_needAlloc_2(scheduler_io_extra_enqLsq_needAlloc_2),
    .io_extra_enqLsq_needAlloc_3(scheduler_io_extra_enqLsq_needAlloc_3),
    .io_extra_enqLsq_req_0_valid(scheduler_io_extra_enqLsq_req_0_valid),
    .io_extra_enqLsq_req_0_bits_robIdx_flag(scheduler_io_extra_enqLsq_req_0_bits_robIdx_flag),
    .io_extra_enqLsq_req_0_bits_robIdx_value(scheduler_io_extra_enqLsq_req_0_bits_robIdx_value),
    .io_extra_enqLsq_req_0_bits_lqIdx_value(scheduler_io_extra_enqLsq_req_0_bits_lqIdx_value),
    .io_extra_enqLsq_req_0_bits_sqIdx_value(scheduler_io_extra_enqLsq_req_0_bits_sqIdx_value),
    .io_extra_enqLsq_req_1_valid(scheduler_io_extra_enqLsq_req_1_valid),
    .io_extra_enqLsq_req_1_bits_robIdx_flag(scheduler_io_extra_enqLsq_req_1_bits_robIdx_flag),
    .io_extra_enqLsq_req_1_bits_robIdx_value(scheduler_io_extra_enqLsq_req_1_bits_robIdx_value),
    .io_extra_enqLsq_req_1_bits_lqIdx_value(scheduler_io_extra_enqLsq_req_1_bits_lqIdx_value),
    .io_extra_enqLsq_req_1_bits_sqIdx_value(scheduler_io_extra_enqLsq_req_1_bits_sqIdx_value),
    .io_extra_enqLsq_req_2_valid(scheduler_io_extra_enqLsq_req_2_valid),
    .io_extra_enqLsq_req_2_bits_robIdx_flag(scheduler_io_extra_enqLsq_req_2_bits_robIdx_flag),
    .io_extra_enqLsq_req_2_bits_robIdx_value(scheduler_io_extra_enqLsq_req_2_bits_robIdx_value),
    .io_extra_enqLsq_req_2_bits_lqIdx_value(scheduler_io_extra_enqLsq_req_2_bits_lqIdx_value),
    .io_extra_enqLsq_req_2_bits_sqIdx_value(scheduler_io_extra_enqLsq_req_2_bits_sqIdx_value),
    .io_extra_enqLsq_req_3_valid(scheduler_io_extra_enqLsq_req_3_valid),
    .io_extra_enqLsq_req_3_bits_robIdx_flag(scheduler_io_extra_enqLsq_req_3_bits_robIdx_flag),
    .io_extra_enqLsq_req_3_bits_robIdx_value(scheduler_io_extra_enqLsq_req_3_bits_robIdx_value),
    .io_extra_enqLsq_req_3_bits_lqIdx_value(scheduler_io_extra_enqLsq_req_3_bits_lqIdx_value),
    .io_extra_enqLsq_req_3_bits_sqIdx_value(scheduler_io_extra_enqLsq_req_3_bits_sqIdx_value),
    .io_extra_lcommit(scheduler_io_extra_lcommit),
    .io_extra_scommit(scheduler_io_extra_scommit),
    .io_extra_lqCancelCnt(scheduler_io_extra_lqCancelCnt),
    .io_extra_sqCancelCnt(scheduler_io_extra_sqCancelCnt),
    .io_extra_memWaitUpdateReq_staIssue_0_valid(scheduler_io_extra_memWaitUpdateReq_staIssue_0_valid),
    .io_extra_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value(
      scheduler_io_extra_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value),
    .io_extra_memWaitUpdateReq_staIssue_1_valid(scheduler_io_extra_memWaitUpdateReq_staIssue_1_valid),
    .io_extra_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value(
      scheduler_io_extra_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value),
    .io_extra_memWaitUpdateReq_stdIssue_0_valid(scheduler_io_extra_memWaitUpdateReq_stdIssue_0_valid),
    .io_extra_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value(
      scheduler_io_extra_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value),
    .io_extra_memWaitUpdateReq_stdIssue_1_valid(scheduler_io_extra_memWaitUpdateReq_stdIssue_1_valid),
    .io_extra_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value(
      scheduler_io_extra_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value),
    .io_extra_debug_int_rat_0(scheduler_io_extra_debug_int_rat_0),
    .io_extra_debug_int_rat_1(scheduler_io_extra_debug_int_rat_1),
    .io_extra_debug_int_rat_2(scheduler_io_extra_debug_int_rat_2),
    .io_extra_debug_int_rat_3(scheduler_io_extra_debug_int_rat_3),
    .io_extra_debug_int_rat_4(scheduler_io_extra_debug_int_rat_4),
    .io_extra_debug_int_rat_5(scheduler_io_extra_debug_int_rat_5),
    .io_extra_debug_int_rat_6(scheduler_io_extra_debug_int_rat_6),
    .io_extra_debug_int_rat_7(scheduler_io_extra_debug_int_rat_7),
    .io_extra_debug_int_rat_8(scheduler_io_extra_debug_int_rat_8),
    .io_extra_debug_int_rat_9(scheduler_io_extra_debug_int_rat_9),
    .io_extra_debug_int_rat_10(scheduler_io_extra_debug_int_rat_10),
    .io_extra_debug_int_rat_11(scheduler_io_extra_debug_int_rat_11),
    .io_extra_debug_int_rat_12(scheduler_io_extra_debug_int_rat_12),
    .io_extra_debug_int_rat_13(scheduler_io_extra_debug_int_rat_13),
    .io_extra_debug_int_rat_14(scheduler_io_extra_debug_int_rat_14),
    .io_extra_debug_int_rat_15(scheduler_io_extra_debug_int_rat_15),
    .io_extra_debug_int_rat_16(scheduler_io_extra_debug_int_rat_16),
    .io_extra_debug_int_rat_17(scheduler_io_extra_debug_int_rat_17),
    .io_extra_debug_int_rat_18(scheduler_io_extra_debug_int_rat_18),
    .io_extra_debug_int_rat_19(scheduler_io_extra_debug_int_rat_19),
    .io_extra_debug_int_rat_20(scheduler_io_extra_debug_int_rat_20),
    .io_extra_debug_int_rat_21(scheduler_io_extra_debug_int_rat_21),
    .io_extra_debug_int_rat_22(scheduler_io_extra_debug_int_rat_22),
    .io_extra_debug_int_rat_23(scheduler_io_extra_debug_int_rat_23),
    .io_extra_debug_int_rat_24(scheduler_io_extra_debug_int_rat_24),
    .io_extra_debug_int_rat_25(scheduler_io_extra_debug_int_rat_25),
    .io_extra_debug_int_rat_26(scheduler_io_extra_debug_int_rat_26),
    .io_extra_debug_int_rat_27(scheduler_io_extra_debug_int_rat_27),
    .io_extra_debug_int_rat_28(scheduler_io_extra_debug_int_rat_28),
    .io_extra_debug_int_rat_29(scheduler_io_extra_debug_int_rat_29),
    .io_extra_debug_int_rat_30(scheduler_io_extra_debug_int_rat_30),
    .io_extra_debug_int_rat_31(scheduler_io_extra_debug_int_rat_31),
    .io_perf_0_value(scheduler_io_perf_0_value),
    .io_perf_1_value(scheduler_io_perf_1_value),
    .io_perf_2_value(scheduler_io_perf_2_value),
    .io_perf_3_value(scheduler_io_perf_3_value),
    .io_perf_4_value(scheduler_io_perf_4_value),
    .io_perf_5_value(scheduler_io_perf_5_value),
    .io_perf_6_value(scheduler_io_perf_6_value),
    .io_perf_7_value(scheduler_io_perf_7_value),
    .io_perf_8_value(scheduler_io_perf_8_value),
    .io_perf_9_value(scheduler_io_perf_9_value),
    .io_perf_10_value(scheduler_io_perf_10_value),
    .io_perf_11_value(scheduler_io_perf_11_value),
    .io_perf_12_value(scheduler_io_perf_12_value)
  );
  FUBlock fuBlock ( // @[ExuBlock.scala 62:23]
    .clock(fuBlock_clock),
    .reset(fuBlock_reset),
    .io_redirect_valid(fuBlock_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(fuBlock_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(fuBlock_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(fuBlock_io_redirect_bits_level),
    .io_issue_0_valid(fuBlock_io_issue_0_valid),
    .io_issue_0_bits_uop_cf_pd_isRVC(fuBlock_io_issue_0_bits_uop_cf_pd_isRVC),
    .io_issue_0_bits_uop_cf_pd_brType(fuBlock_io_issue_0_bits_uop_cf_pd_brType),
    .io_issue_0_bits_uop_cf_pd_isCall(fuBlock_io_issue_0_bits_uop_cf_pd_isCall),
    .io_issue_0_bits_uop_cf_pd_isRet(fuBlock_io_issue_0_bits_uop_cf_pd_isRet),
    .io_issue_0_bits_uop_cf_pred_taken(fuBlock_io_issue_0_bits_uop_cf_pred_taken),
    .io_issue_0_bits_uop_cf_ftqPtr_flag(fuBlock_io_issue_0_bits_uop_cf_ftqPtr_flag),
    .io_issue_0_bits_uop_cf_ftqPtr_value(fuBlock_io_issue_0_bits_uop_cf_ftqPtr_value),
    .io_issue_0_bits_uop_cf_ftqOffset(fuBlock_io_issue_0_bits_uop_cf_ftqOffset),
    .io_issue_0_bits_uop_ctrl_fuType(fuBlock_io_issue_0_bits_uop_ctrl_fuType),
    .io_issue_0_bits_uop_ctrl_fuOpType(fuBlock_io_issue_0_bits_uop_ctrl_fuOpType),
    .io_issue_0_bits_uop_ctrl_imm(fuBlock_io_issue_0_bits_uop_ctrl_imm),
    .io_issue_0_bits_uop_robIdx_flag(fuBlock_io_issue_0_bits_uop_robIdx_flag),
    .io_issue_0_bits_uop_robIdx_value(fuBlock_io_issue_0_bits_uop_robIdx_value),
    .io_issue_0_bits_src_0(fuBlock_io_issue_0_bits_src_0),
    .io_issue_0_bits_src_1(fuBlock_io_issue_0_bits_src_1),
    .io_issue_1_valid(fuBlock_io_issue_1_valid),
    .io_issue_1_bits_uop_cf_pd_isRVC(fuBlock_io_issue_1_bits_uop_cf_pd_isRVC),
    .io_issue_1_bits_uop_cf_pd_brType(fuBlock_io_issue_1_bits_uop_cf_pd_brType),
    .io_issue_1_bits_uop_cf_pd_isCall(fuBlock_io_issue_1_bits_uop_cf_pd_isCall),
    .io_issue_1_bits_uop_cf_pd_isRet(fuBlock_io_issue_1_bits_uop_cf_pd_isRet),
    .io_issue_1_bits_uop_cf_pred_taken(fuBlock_io_issue_1_bits_uop_cf_pred_taken),
    .io_issue_1_bits_uop_cf_ftqPtr_flag(fuBlock_io_issue_1_bits_uop_cf_ftqPtr_flag),
    .io_issue_1_bits_uop_cf_ftqPtr_value(fuBlock_io_issue_1_bits_uop_cf_ftqPtr_value),
    .io_issue_1_bits_uop_cf_ftqOffset(fuBlock_io_issue_1_bits_uop_cf_ftqOffset),
    .io_issue_1_bits_uop_ctrl_fuType(fuBlock_io_issue_1_bits_uop_ctrl_fuType),
    .io_issue_1_bits_uop_ctrl_fuOpType(fuBlock_io_issue_1_bits_uop_ctrl_fuOpType),
    .io_issue_1_bits_uop_ctrl_imm(fuBlock_io_issue_1_bits_uop_ctrl_imm),
    .io_issue_1_bits_uop_robIdx_flag(fuBlock_io_issue_1_bits_uop_robIdx_flag),
    .io_issue_1_bits_uop_robIdx_value(fuBlock_io_issue_1_bits_uop_robIdx_value),
    .io_issue_1_bits_src_0(fuBlock_io_issue_1_bits_src_0),
    .io_issue_1_bits_src_1(fuBlock_io_issue_1_bits_src_1),
    .io_issue_2_valid(fuBlock_io_issue_2_valid),
    .io_issue_2_bits_uop_cf_pd_isRVC(fuBlock_io_issue_2_bits_uop_cf_pd_isRVC),
    .io_issue_2_bits_uop_cf_pd_brType(fuBlock_io_issue_2_bits_uop_cf_pd_brType),
    .io_issue_2_bits_uop_cf_pd_isCall(fuBlock_io_issue_2_bits_uop_cf_pd_isCall),
    .io_issue_2_bits_uop_cf_pd_isRet(fuBlock_io_issue_2_bits_uop_cf_pd_isRet),
    .io_issue_2_bits_uop_cf_pred_taken(fuBlock_io_issue_2_bits_uop_cf_pred_taken),
    .io_issue_2_bits_uop_cf_ftqPtr_flag(fuBlock_io_issue_2_bits_uop_cf_ftqPtr_flag),
    .io_issue_2_bits_uop_cf_ftqPtr_value(fuBlock_io_issue_2_bits_uop_cf_ftqPtr_value),
    .io_issue_2_bits_uop_cf_ftqOffset(fuBlock_io_issue_2_bits_uop_cf_ftqOffset),
    .io_issue_2_bits_uop_ctrl_fuType(fuBlock_io_issue_2_bits_uop_ctrl_fuType),
    .io_issue_2_bits_uop_ctrl_fuOpType(fuBlock_io_issue_2_bits_uop_ctrl_fuOpType),
    .io_issue_2_bits_uop_ctrl_imm(fuBlock_io_issue_2_bits_uop_ctrl_imm),
    .io_issue_2_bits_uop_robIdx_flag(fuBlock_io_issue_2_bits_uop_robIdx_flag),
    .io_issue_2_bits_uop_robIdx_value(fuBlock_io_issue_2_bits_uop_robIdx_value),
    .io_issue_2_bits_src_0(fuBlock_io_issue_2_bits_src_0),
    .io_issue_2_bits_src_1(fuBlock_io_issue_2_bits_src_1),
    .io_issue_3_valid(fuBlock_io_issue_3_valid),
    .io_issue_3_bits_uop_cf_pd_isRVC(fuBlock_io_issue_3_bits_uop_cf_pd_isRVC),
    .io_issue_3_bits_uop_cf_pd_brType(fuBlock_io_issue_3_bits_uop_cf_pd_brType),
    .io_issue_3_bits_uop_cf_pd_isCall(fuBlock_io_issue_3_bits_uop_cf_pd_isCall),
    .io_issue_3_bits_uop_cf_pd_isRet(fuBlock_io_issue_3_bits_uop_cf_pd_isRet),
    .io_issue_3_bits_uop_cf_pred_taken(fuBlock_io_issue_3_bits_uop_cf_pred_taken),
    .io_issue_3_bits_uop_cf_ftqPtr_flag(fuBlock_io_issue_3_bits_uop_cf_ftqPtr_flag),
    .io_issue_3_bits_uop_cf_ftqPtr_value(fuBlock_io_issue_3_bits_uop_cf_ftqPtr_value),
    .io_issue_3_bits_uop_cf_ftqOffset(fuBlock_io_issue_3_bits_uop_cf_ftqOffset),
    .io_issue_3_bits_uop_ctrl_fuType(fuBlock_io_issue_3_bits_uop_ctrl_fuType),
    .io_issue_3_bits_uop_ctrl_fuOpType(fuBlock_io_issue_3_bits_uop_ctrl_fuOpType),
    .io_issue_3_bits_uop_ctrl_imm(fuBlock_io_issue_3_bits_uop_ctrl_imm),
    .io_issue_3_bits_uop_robIdx_flag(fuBlock_io_issue_3_bits_uop_robIdx_flag),
    .io_issue_3_bits_uop_robIdx_value(fuBlock_io_issue_3_bits_uop_robIdx_value),
    .io_issue_3_bits_src_0(fuBlock_io_issue_3_bits_src_0),
    .io_issue_3_bits_src_1(fuBlock_io_issue_3_bits_src_1),
    .io_issue_4_ready(fuBlock_io_issue_4_ready),
    .io_issue_4_valid(fuBlock_io_issue_4_valid),
    .io_issue_4_bits_uop_cf_trigger_backendHit_0(fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_0),
    .io_issue_4_bits_uop_cf_trigger_backendHit_1(fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_1),
    .io_issue_4_bits_uop_cf_trigger_backendHit_2(fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_2),
    .io_issue_4_bits_uop_cf_trigger_backendHit_3(fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_3),
    .io_issue_4_bits_uop_cf_trigger_backendHit_4(fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_4),
    .io_issue_4_bits_uop_cf_trigger_backendHit_5(fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_5),
    .io_issue_4_bits_uop_ctrl_fuType(fuBlock_io_issue_4_bits_uop_ctrl_fuType),
    .io_issue_4_bits_uop_ctrl_fuOpType(fuBlock_io_issue_4_bits_uop_ctrl_fuOpType),
    .io_issue_4_bits_uop_ctrl_rfWen(fuBlock_io_issue_4_bits_uop_ctrl_rfWen),
    .io_issue_4_bits_uop_ctrl_fpWen(fuBlock_io_issue_4_bits_uop_ctrl_fpWen),
    .io_issue_4_bits_uop_pdest(fuBlock_io_issue_4_bits_uop_pdest),
    .io_issue_4_bits_uop_robIdx_flag(fuBlock_io_issue_4_bits_uop_robIdx_flag),
    .io_issue_4_bits_uop_robIdx_value(fuBlock_io_issue_4_bits_uop_robIdx_value),
    .io_issue_4_bits_src_0(fuBlock_io_issue_4_bits_src_0),
    .io_issue_4_bits_src_1(fuBlock_io_issue_4_bits_src_1),
    .io_issue_5_ready(fuBlock_io_issue_5_ready),
    .io_issue_5_valid(fuBlock_io_issue_5_valid),
    .io_issue_5_bits_uop_cf_pc(fuBlock_io_issue_5_bits_uop_cf_pc),
    .io_issue_5_bits_uop_cf_trigger_backendHit_0(fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_0),
    .io_issue_5_bits_uop_cf_trigger_backendHit_1(fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_1),
    .io_issue_5_bits_uop_cf_trigger_backendHit_2(fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_2),
    .io_issue_5_bits_uop_cf_trigger_backendHit_3(fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_3),
    .io_issue_5_bits_uop_cf_trigger_backendHit_4(fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_4),
    .io_issue_5_bits_uop_cf_trigger_backendHit_5(fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_5),
    .io_issue_5_bits_uop_cf_pd_isRVC(fuBlock_io_issue_5_bits_uop_cf_pd_isRVC),
    .io_issue_5_bits_uop_cf_pd_brType(fuBlock_io_issue_5_bits_uop_cf_pd_brType),
    .io_issue_5_bits_uop_cf_pd_isCall(fuBlock_io_issue_5_bits_uop_cf_pd_isCall),
    .io_issue_5_bits_uop_cf_pd_isRet(fuBlock_io_issue_5_bits_uop_cf_pd_isRet),
    .io_issue_5_bits_uop_cf_pred_taken(fuBlock_io_issue_5_bits_uop_cf_pred_taken),
    .io_issue_5_bits_uop_cf_ftqPtr_flag(fuBlock_io_issue_5_bits_uop_cf_ftqPtr_flag),
    .io_issue_5_bits_uop_cf_ftqPtr_value(fuBlock_io_issue_5_bits_uop_cf_ftqPtr_value),
    .io_issue_5_bits_uop_cf_ftqOffset(fuBlock_io_issue_5_bits_uop_cf_ftqOffset),
    .io_issue_5_bits_uop_ctrl_fuType(fuBlock_io_issue_5_bits_uop_ctrl_fuType),
    .io_issue_5_bits_uop_ctrl_fuOpType(fuBlock_io_issue_5_bits_uop_ctrl_fuOpType),
    .io_issue_5_bits_uop_ctrl_rfWen(fuBlock_io_issue_5_bits_uop_ctrl_rfWen),
    .io_issue_5_bits_uop_ctrl_fpWen(fuBlock_io_issue_5_bits_uop_ctrl_fpWen),
    .io_issue_5_bits_uop_ctrl_imm(fuBlock_io_issue_5_bits_uop_ctrl_imm),
    .io_issue_5_bits_uop_ctrl_fpu_typeTagOut(fuBlock_io_issue_5_bits_uop_ctrl_fpu_typeTagOut),
    .io_issue_5_bits_uop_ctrl_fpu_fromInt(fuBlock_io_issue_5_bits_uop_ctrl_fpu_fromInt),
    .io_issue_5_bits_uop_ctrl_fpu_wflags(fuBlock_io_issue_5_bits_uop_ctrl_fpu_wflags),
    .io_issue_5_bits_uop_ctrl_fpu_typ(fuBlock_io_issue_5_bits_uop_ctrl_fpu_typ),
    .io_issue_5_bits_uop_ctrl_fpu_rm(fuBlock_io_issue_5_bits_uop_ctrl_fpu_rm),
    .io_issue_5_bits_uop_pdest(fuBlock_io_issue_5_bits_uop_pdest),
    .io_issue_5_bits_uop_robIdx_flag(fuBlock_io_issue_5_bits_uop_robIdx_flag),
    .io_issue_5_bits_uop_robIdx_value(fuBlock_io_issue_5_bits_uop_robIdx_value),
    .io_issue_5_bits_src_0(fuBlock_io_issue_5_bits_src_0),
    .io_issue_5_bits_src_1(fuBlock_io_issue_5_bits_src_1),
    .io_writeback_0_bits_data(fuBlock_io_writeback_0_bits_data),
    .io_writeback_0_bits_redirectValid(fuBlock_io_writeback_0_bits_redirectValid),
    .io_writeback_0_bits_redirect_cfiUpdate_isMisPred(fuBlock_io_writeback_0_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_1_bits_data(fuBlock_io_writeback_1_bits_data),
    .io_writeback_1_bits_redirectValid(fuBlock_io_writeback_1_bits_redirectValid),
    .io_writeback_1_bits_redirect_cfiUpdate_isMisPred(fuBlock_io_writeback_1_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_2_bits_data(fuBlock_io_writeback_2_bits_data),
    .io_writeback_2_bits_redirectValid(fuBlock_io_writeback_2_bits_redirectValid),
    .io_writeback_2_bits_redirect_cfiUpdate_isMisPred(fuBlock_io_writeback_2_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_3_bits_data(fuBlock_io_writeback_3_bits_data),
    .io_writeback_3_bits_redirectValid(fuBlock_io_writeback_3_bits_redirectValid),
    .io_writeback_3_bits_redirect_cfiUpdate_isMisPred(fuBlock_io_writeback_3_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_4_valid(fuBlock_io_writeback_4_valid),
    .io_writeback_4_bits_uop_cf_trigger_backendHit_0(fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_4_bits_uop_cf_trigger_backendHit_1(fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_4_bits_uop_cf_trigger_backendHit_2(fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_4_bits_uop_cf_trigger_backendHit_3(fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_4_bits_uop_cf_trigger_backendHit_4(fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_4_bits_uop_cf_trigger_backendHit_5(fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_4_bits_uop_ctrl_rfWen(fuBlock_io_writeback_4_bits_uop_ctrl_rfWen),
    .io_writeback_4_bits_uop_ctrl_fpWen(fuBlock_io_writeback_4_bits_uop_ctrl_fpWen),
    .io_writeback_4_bits_uop_pdest(fuBlock_io_writeback_4_bits_uop_pdest),
    .io_writeback_4_bits_uop_robIdx_flag(fuBlock_io_writeback_4_bits_uop_robIdx_flag),
    .io_writeback_4_bits_uop_robIdx_value(fuBlock_io_writeback_4_bits_uop_robIdx_value),
    .io_writeback_4_bits_data(fuBlock_io_writeback_4_bits_data),
    .io_writeback_5_ready(fuBlock_io_writeback_5_ready),
    .io_writeback_5_valid(fuBlock_io_writeback_5_valid),
    .io_writeback_5_bits_uop_cf_exceptionVec_2(fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_2),
    .io_writeback_5_bits_uop_cf_exceptionVec_3(fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_3),
    .io_writeback_5_bits_uop_cf_exceptionVec_8(fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_8),
    .io_writeback_5_bits_uop_cf_exceptionVec_9(fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_9),
    .io_writeback_5_bits_uop_cf_exceptionVec_11(fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_11),
    .io_writeback_5_bits_uop_cf_trigger_backendHit_0(fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_5_bits_uop_cf_trigger_backendHit_1(fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_5_bits_uop_cf_trigger_backendHit_2(fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_5_bits_uop_cf_trigger_backendHit_3(fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_5_bits_uop_cf_trigger_backendHit_4(fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_5_bits_uop_cf_trigger_backendHit_5(fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_5_bits_uop_ctrl_rfWen(fuBlock_io_writeback_5_bits_uop_ctrl_rfWen),
    .io_writeback_5_bits_uop_ctrl_fpWen(fuBlock_io_writeback_5_bits_uop_ctrl_fpWen),
    .io_writeback_5_bits_uop_ctrl_flushPipe(fuBlock_io_writeback_5_bits_uop_ctrl_flushPipe),
    .io_writeback_5_bits_uop_pdest(fuBlock_io_writeback_5_bits_uop_pdest),
    .io_writeback_5_bits_uop_robIdx_flag(fuBlock_io_writeback_5_bits_uop_robIdx_flag),
    .io_writeback_5_bits_uop_robIdx_value(fuBlock_io_writeback_5_bits_uop_robIdx_value),
    .io_writeback_5_bits_data(fuBlock_io_writeback_5_bits_data),
    .io_writeback_5_bits_fflags(fuBlock_io_writeback_5_bits_fflags),
    .io_writeback_5_bits_redirectValid(fuBlock_io_writeback_5_bits_redirectValid),
    .io_writeback_5_bits_redirect_cfiUpdate_isMisPred(fuBlock_io_writeback_5_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_5_bits_debug_isPerfCnt(fuBlock_io_writeback_5_bits_debug_isPerfCnt),
    .io_extra_exuRedirect_0_valid(fuBlock_io_extra_exuRedirect_0_valid),
    .io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC(fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC),
    .io_extra_exuRedirect_0_bits_uop_cf_pd_brType(fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_brType),
    .io_extra_exuRedirect_0_bits_uop_cf_pd_isCall(fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isCall),
    .io_extra_exuRedirect_0_bits_uop_cf_pd_isRet(fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRet),
    .io_extra_exuRedirect_0_bits_uop_ctrl_imm(fuBlock_io_extra_exuRedirect_0_bits_uop_ctrl_imm),
    .io_extra_exuRedirect_0_bits_uop_robIdx_flag(fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_flag),
    .io_extra_exuRedirect_0_bits_uop_robIdx_value(fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_value),
    .io_extra_exuRedirect_0_bits_redirectValid(fuBlock_io_extra_exuRedirect_0_bits_redirectValid),
    .io_extra_exuRedirect_0_bits_redirect_robIdx_flag(fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_flag),
    .io_extra_exuRedirect_0_bits_redirect_robIdx_value(fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_value),
    .io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag(fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag),
    .io_extra_exuRedirect_0_bits_redirect_ftqIdx_value(fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_value),
    .io_extra_exuRedirect_0_bits_redirect_ftqOffset(fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqOffset),
    .io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target(fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target
      ),
    .io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred(
      fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred),
    .io_extra_exuRedirect_1_valid(fuBlock_io_extra_exuRedirect_1_valid),
    .io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC(fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC),
    .io_extra_exuRedirect_1_bits_uop_cf_pd_brType(fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_brType),
    .io_extra_exuRedirect_1_bits_uop_cf_pd_isCall(fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isCall),
    .io_extra_exuRedirect_1_bits_uop_cf_pd_isRet(fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRet),
    .io_extra_exuRedirect_1_bits_uop_ctrl_imm(fuBlock_io_extra_exuRedirect_1_bits_uop_ctrl_imm),
    .io_extra_exuRedirect_1_bits_uop_robIdx_flag(fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_flag),
    .io_extra_exuRedirect_1_bits_uop_robIdx_value(fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_value),
    .io_extra_exuRedirect_1_bits_redirectValid(fuBlock_io_extra_exuRedirect_1_bits_redirectValid),
    .io_extra_exuRedirect_1_bits_redirect_robIdx_flag(fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_flag),
    .io_extra_exuRedirect_1_bits_redirect_robIdx_value(fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_value),
    .io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag(fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag),
    .io_extra_exuRedirect_1_bits_redirect_ftqIdx_value(fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_value),
    .io_extra_exuRedirect_1_bits_redirect_ftqOffset(fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqOffset),
    .io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken(fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken),
    .io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred(
      fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred),
    .io_extra_exuRedirect_2_valid(fuBlock_io_extra_exuRedirect_2_valid),
    .io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC(fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC),
    .io_extra_exuRedirect_2_bits_uop_cf_pd_brType(fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_brType),
    .io_extra_exuRedirect_2_bits_uop_cf_pd_isCall(fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isCall),
    .io_extra_exuRedirect_2_bits_uop_cf_pd_isRet(fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRet),
    .io_extra_exuRedirect_2_bits_uop_ctrl_imm(fuBlock_io_extra_exuRedirect_2_bits_uop_ctrl_imm),
    .io_extra_exuRedirect_2_bits_uop_robIdx_flag(fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_flag),
    .io_extra_exuRedirect_2_bits_uop_robIdx_value(fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_value),
    .io_extra_exuRedirect_2_bits_redirectValid(fuBlock_io_extra_exuRedirect_2_bits_redirectValid),
    .io_extra_exuRedirect_2_bits_redirect_robIdx_flag(fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_flag),
    .io_extra_exuRedirect_2_bits_redirect_robIdx_value(fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_value),
    .io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag(fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag),
    .io_extra_exuRedirect_2_bits_redirect_ftqIdx_value(fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_value),
    .io_extra_exuRedirect_2_bits_redirect_ftqOffset(fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqOffset),
    .io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken(fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken),
    .io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred(
      fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred),
    .io_extra_exuRedirect_3_valid(fuBlock_io_extra_exuRedirect_3_valid),
    .io_extra_exuRedirect_3_bits_uop_cf_pd_isRVC(fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_isRVC),
    .io_extra_exuRedirect_3_bits_uop_cf_pd_brType(fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_brType),
    .io_extra_exuRedirect_3_bits_uop_cf_pd_isCall(fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_isCall),
    .io_extra_exuRedirect_3_bits_uop_cf_pd_isRet(fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_isRet),
    .io_extra_exuRedirect_3_bits_uop_ctrl_imm(fuBlock_io_extra_exuRedirect_3_bits_uop_ctrl_imm),
    .io_extra_exuRedirect_3_bits_uop_robIdx_flag(fuBlock_io_extra_exuRedirect_3_bits_uop_robIdx_flag),
    .io_extra_exuRedirect_3_bits_uop_robIdx_value(fuBlock_io_extra_exuRedirect_3_bits_uop_robIdx_value),
    .io_extra_exuRedirect_3_bits_redirectValid(fuBlock_io_extra_exuRedirect_3_bits_redirectValid),
    .io_extra_exuRedirect_3_bits_redirect_robIdx_flag(fuBlock_io_extra_exuRedirect_3_bits_redirect_robIdx_flag),
    .io_extra_exuRedirect_3_bits_redirect_robIdx_value(fuBlock_io_extra_exuRedirect_3_bits_redirect_robIdx_value),
    .io_extra_exuRedirect_3_bits_redirect_ftqIdx_flag(fuBlock_io_extra_exuRedirect_3_bits_redirect_ftqIdx_flag),
    .io_extra_exuRedirect_3_bits_redirect_ftqIdx_value(fuBlock_io_extra_exuRedirect_3_bits_redirect_ftqIdx_value),
    .io_extra_exuRedirect_3_bits_redirect_ftqOffset(fuBlock_io_extra_exuRedirect_3_bits_redirect_ftqOffset),
    .io_extra_exuRedirect_3_bits_redirect_cfiUpdate_taken(fuBlock_io_extra_exuRedirect_3_bits_redirect_cfiUpdate_taken),
    .io_extra_exuRedirect_3_bits_redirect_cfiUpdate_isMisPred(
      fuBlock_io_extra_exuRedirect_3_bits_redirect_cfiUpdate_isMisPred),
    .io_extra_exuRedirect_4_valid(fuBlock_io_extra_exuRedirect_4_valid),
    .io_extra_exuRedirect_4_bits_uop_cf_pd_isRVC(fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_isRVC),
    .io_extra_exuRedirect_4_bits_uop_cf_pd_brType(fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_brType),
    .io_extra_exuRedirect_4_bits_uop_cf_pd_isCall(fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_isCall),
    .io_extra_exuRedirect_4_bits_uop_cf_pd_isRet(fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_isRet),
    .io_extra_exuRedirect_4_bits_uop_ctrl_imm(fuBlock_io_extra_exuRedirect_4_bits_uop_ctrl_imm),
    .io_extra_exuRedirect_4_bits_uop_robIdx_flag(fuBlock_io_extra_exuRedirect_4_bits_uop_robIdx_flag),
    .io_extra_exuRedirect_4_bits_uop_robIdx_value(fuBlock_io_extra_exuRedirect_4_bits_uop_robIdx_value),
    .io_extra_exuRedirect_4_bits_redirectValid(fuBlock_io_extra_exuRedirect_4_bits_redirectValid),
    .io_extra_exuRedirect_4_bits_redirect_robIdx_flag(fuBlock_io_extra_exuRedirect_4_bits_redirect_robIdx_flag),
    .io_extra_exuRedirect_4_bits_redirect_robIdx_value(fuBlock_io_extra_exuRedirect_4_bits_redirect_robIdx_value),
    .io_extra_exuRedirect_4_bits_redirect_ftqIdx_flag(fuBlock_io_extra_exuRedirect_4_bits_redirect_ftqIdx_flag),
    .io_extra_exuRedirect_4_bits_redirect_ftqIdx_value(fuBlock_io_extra_exuRedirect_4_bits_redirect_ftqIdx_value),
    .io_extra_exuRedirect_4_bits_redirect_ftqOffset(fuBlock_io_extra_exuRedirect_4_bits_redirect_ftqOffset),
    .io_extra_exuRedirect_4_bits_redirect_cfiUpdate_taken(fuBlock_io_extra_exuRedirect_4_bits_redirect_cfiUpdate_taken),
    .io_extra_exuRedirect_4_bits_redirect_cfiUpdate_isMisPred(
      fuBlock_io_extra_exuRedirect_4_bits_redirect_cfiUpdate_isMisPred),
    .io_extra_csrio_hartId(fuBlock_io_extra_csrio_hartId),
    .io_extra_csrio_perf_perfEventsFrontend_0_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_0_value),
    .io_extra_csrio_perf_perfEventsFrontend_1_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_1_value),
    .io_extra_csrio_perf_perfEventsFrontend_2_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_2_value),
    .io_extra_csrio_perf_perfEventsFrontend_3_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_3_value),
    .io_extra_csrio_perf_perfEventsFrontend_4_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_4_value),
    .io_extra_csrio_perf_perfEventsFrontend_5_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_5_value),
    .io_extra_csrio_perf_perfEventsFrontend_6_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_6_value),
    .io_extra_csrio_perf_perfEventsFrontend_7_value(fuBlock_io_extra_csrio_perf_perfEventsFrontend_7_value),
    .io_extra_csrio_perf_perfEventsCtrl_0_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_0_value),
    .io_extra_csrio_perf_perfEventsCtrl_1_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_1_value),
    .io_extra_csrio_perf_perfEventsCtrl_2_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_2_value),
    .io_extra_csrio_perf_perfEventsCtrl_3_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_3_value),
    .io_extra_csrio_perf_perfEventsCtrl_4_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_4_value),
    .io_extra_csrio_perf_perfEventsCtrl_5_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_5_value),
    .io_extra_csrio_perf_perfEventsCtrl_6_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_6_value),
    .io_extra_csrio_perf_perfEventsCtrl_7_value(fuBlock_io_extra_csrio_perf_perfEventsCtrl_7_value),
    .io_extra_csrio_perf_perfEventsLsu_0_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_0_value),
    .io_extra_csrio_perf_perfEventsLsu_1_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_1_value),
    .io_extra_csrio_perf_perfEventsLsu_2_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_2_value),
    .io_extra_csrio_perf_perfEventsLsu_3_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_3_value),
    .io_extra_csrio_perf_perfEventsLsu_4_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_4_value),
    .io_extra_csrio_perf_perfEventsLsu_5_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_5_value),
    .io_extra_csrio_perf_perfEventsLsu_6_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_6_value),
    .io_extra_csrio_perf_perfEventsLsu_7_value(fuBlock_io_extra_csrio_perf_perfEventsLsu_7_value),
    .io_extra_csrio_perf_perfEventsHc_0_value(fuBlock_io_extra_csrio_perf_perfEventsHc_0_value),
    .io_extra_csrio_perf_perfEventsHc_1_value(fuBlock_io_extra_csrio_perf_perfEventsHc_1_value),
    .io_extra_csrio_perf_perfEventsHc_2_value(fuBlock_io_extra_csrio_perf_perfEventsHc_2_value),
    .io_extra_csrio_perf_perfEventsHc_3_value(fuBlock_io_extra_csrio_perf_perfEventsHc_3_value),
    .io_extra_csrio_perf_perfEventsHc_4_value(fuBlock_io_extra_csrio_perf_perfEventsHc_4_value),
    .io_extra_csrio_perf_perfEventsHc_5_value(fuBlock_io_extra_csrio_perf_perfEventsHc_5_value),
    .io_extra_csrio_perf_perfEventsHc_6_value(fuBlock_io_extra_csrio_perf_perfEventsHc_6_value),
    .io_extra_csrio_perf_perfEventsHc_7_value(fuBlock_io_extra_csrio_perf_perfEventsHc_7_value),
    .io_extra_csrio_perf_perfEventsHc_8_value(fuBlock_io_extra_csrio_perf_perfEventsHc_8_value),
    .io_extra_csrio_perf_perfEventsHc_9_value(fuBlock_io_extra_csrio_perf_perfEventsHc_9_value),
    .io_extra_csrio_perf_perfEventsHc_10_value(fuBlock_io_extra_csrio_perf_perfEventsHc_10_value),
    .io_extra_csrio_perf_perfEventsHc_11_value(fuBlock_io_extra_csrio_perf_perfEventsHc_11_value),
    .io_extra_csrio_perf_perfEventsHc_12_value(fuBlock_io_extra_csrio_perf_perfEventsHc_12_value),
    .io_extra_csrio_perf_perfEventsHc_13_value(fuBlock_io_extra_csrio_perf_perfEventsHc_13_value),
    .io_extra_csrio_perf_perfEventsHc_14_value(fuBlock_io_extra_csrio_perf_perfEventsHc_14_value),
    .io_extra_csrio_perf_perfEventsHc_15_value(fuBlock_io_extra_csrio_perf_perfEventsHc_15_value),
    .io_extra_csrio_perf_perfEventsHc_16_value(fuBlock_io_extra_csrio_perf_perfEventsHc_16_value),
    .io_extra_csrio_perf_perfEventsHc_17_value(fuBlock_io_extra_csrio_perf_perfEventsHc_17_value),
    .io_extra_csrio_perf_perfEventsHc_18_value(fuBlock_io_extra_csrio_perf_perfEventsHc_18_value),
    .io_extra_csrio_perf_perfEventsHc_19_value(fuBlock_io_extra_csrio_perf_perfEventsHc_19_value),
    .io_extra_csrio_perf_perfEventsHc_20_value(fuBlock_io_extra_csrio_perf_perfEventsHc_20_value),
    .io_extra_csrio_perf_perfEventsHc_21_value(fuBlock_io_extra_csrio_perf_perfEventsHc_21_value),
    .io_extra_csrio_perf_perfEventsHc_22_value(fuBlock_io_extra_csrio_perf_perfEventsHc_22_value),
    .io_extra_csrio_perf_perfEventsHc_23_value(fuBlock_io_extra_csrio_perf_perfEventsHc_23_value),
    .io_extra_csrio_perf_perfEventsHc_24_value(fuBlock_io_extra_csrio_perf_perfEventsHc_24_value),
    .io_extra_csrio_perf_perfEventsHc_25_value(fuBlock_io_extra_csrio_perf_perfEventsHc_25_value),
    .io_extra_csrio_perf_perfEventsHc_26_value(fuBlock_io_extra_csrio_perf_perfEventsHc_26_value),
    .io_extra_csrio_perf_perfEventsHc_27_value(fuBlock_io_extra_csrio_perf_perfEventsHc_27_value),
    .io_extra_csrio_perf_perfEventsHc_28_value(fuBlock_io_extra_csrio_perf_perfEventsHc_28_value),
    .io_extra_csrio_perf_perfEventsHc_29_value(fuBlock_io_extra_csrio_perf_perfEventsHc_29_value),
    .io_extra_csrio_perf_perfEventsHc_30_value(fuBlock_io_extra_csrio_perf_perfEventsHc_30_value),
    .io_extra_csrio_perf_perfEventsHc_31_value(fuBlock_io_extra_csrio_perf_perfEventsHc_31_value),
    .io_extra_csrio_perf_perfEventsHc_32_value(fuBlock_io_extra_csrio_perf_perfEventsHc_32_value),
    .io_extra_csrio_perf_perfEventsHc_33_value(fuBlock_io_extra_csrio_perf_perfEventsHc_33_value),
    .io_extra_csrio_perf_perfEventsHc_34_value(fuBlock_io_extra_csrio_perf_perfEventsHc_34_value),
    .io_extra_csrio_perf_perfEventsHc_35_value(fuBlock_io_extra_csrio_perf_perfEventsHc_35_value),
    .io_extra_csrio_perf_perfEventsHc_36_value(fuBlock_io_extra_csrio_perf_perfEventsHc_36_value),
    .io_extra_csrio_perf_perfEventsHc_37_value(fuBlock_io_extra_csrio_perf_perfEventsHc_37_value),
    .io_extra_csrio_perf_perfEventsHc_38_value(fuBlock_io_extra_csrio_perf_perfEventsHc_38_value),
    .io_extra_csrio_perf_perfEventsHc_39_value(fuBlock_io_extra_csrio_perf_perfEventsHc_39_value),
    .io_extra_csrio_perf_perfEventsHc_40_value(fuBlock_io_extra_csrio_perf_perfEventsHc_40_value),
    .io_extra_csrio_perf_perfEventsHc_41_value(fuBlock_io_extra_csrio_perf_perfEventsHc_41_value),
    .io_extra_csrio_perf_perfEventsHc_42_value(fuBlock_io_extra_csrio_perf_perfEventsHc_42_value),
    .io_extra_csrio_perf_perfEventsHc_43_value(fuBlock_io_extra_csrio_perf_perfEventsHc_43_value),
    .io_extra_csrio_perf_perfEventsHc_44_value(fuBlock_io_extra_csrio_perf_perfEventsHc_44_value),
    .io_extra_csrio_perf_perfEventsHc_45_value(fuBlock_io_extra_csrio_perf_perfEventsHc_45_value),
    .io_extra_csrio_perf_perfEventsHc_46_value(fuBlock_io_extra_csrio_perf_perfEventsHc_46_value),
    .io_extra_csrio_perf_perfEventsHc_47_value(fuBlock_io_extra_csrio_perf_perfEventsHc_47_value),
    .io_extra_csrio_perf_perfEventsHc_48_value(fuBlock_io_extra_csrio_perf_perfEventsHc_48_value),
    .io_extra_csrio_perf_perfEventsHc_49_value(fuBlock_io_extra_csrio_perf_perfEventsHc_49_value),
    .io_extra_csrio_perf_retiredInstr(fuBlock_io_extra_csrio_perf_retiredInstr),
    .io_extra_csrio_fpu_fflags_valid(fuBlock_io_extra_csrio_fpu_fflags_valid),
    .io_extra_csrio_fpu_fflags_bits(fuBlock_io_extra_csrio_fpu_fflags_bits),
    .io_extra_csrio_fpu_dirty_fs(fuBlock_io_extra_csrio_fpu_dirty_fs),
    .io_extra_csrio_fpu_frm(fuBlock_io_extra_csrio_fpu_frm),
    .io_extra_csrio_exception_valid(fuBlock_io_extra_csrio_exception_valid),
    .io_extra_csrio_exception_bits_uop_cf_pc(fuBlock_io_extra_csrio_exception_bits_uop_cf_pc),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_0(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_0),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_1(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_1),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_2(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_2),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_3(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_3),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_4(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_4),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_5(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_5),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_6(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_6),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_7(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_7),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_8(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_8),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_9(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_9),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_11(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_11),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_12(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_12),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_13(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_13),
    .io_extra_csrio_exception_bits_uop_cf_exceptionVec_15(fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_15),
    .io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0),
    .io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1),
    .io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2),
    .io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4),
    .io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5(
      fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5),
    .io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix(fuBlock_io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix),
    .io_extra_csrio_exception_bits_uop_ctrl_singleStep(fuBlock_io_extra_csrio_exception_bits_uop_ctrl_singleStep),
    .io_extra_csrio_exception_bits_isInterrupt(fuBlock_io_extra_csrio_exception_bits_isInterrupt),
    .io_extra_csrio_isXRet(fuBlock_io_extra_csrio_isXRet),
    .io_extra_csrio_trapTarget(fuBlock_io_extra_csrio_trapTarget),
    .io_extra_csrio_interrupt(fuBlock_io_extra_csrio_interrupt),
    .io_extra_csrio_wfi_event(fuBlock_io_extra_csrio_wfi_event),
    .io_extra_csrio_memExceptionVAddr(fuBlock_io_extra_csrio_memExceptionVAddr),
    .io_extra_csrio_externalInterrupt_mtip(fuBlock_io_extra_csrio_externalInterrupt_mtip),
    .io_extra_csrio_externalInterrupt_msip(fuBlock_io_extra_csrio_externalInterrupt_msip),
    .io_extra_csrio_externalInterrupt_meip(fuBlock_io_extra_csrio_externalInterrupt_meip),
    .io_extra_csrio_externalInterrupt_seip(fuBlock_io_extra_csrio_externalInterrupt_seip),
    .io_extra_csrio_externalInterrupt_debug(fuBlock_io_extra_csrio_externalInterrupt_debug),
    .io_extra_csrio_tlb_satp_changed(fuBlock_io_extra_csrio_tlb_satp_changed),
    .io_extra_csrio_tlb_satp_mode(fuBlock_io_extra_csrio_tlb_satp_mode),
    .io_extra_csrio_tlb_satp_asid(fuBlock_io_extra_csrio_tlb_satp_asid),
    .io_extra_csrio_tlb_satp_ppn(fuBlock_io_extra_csrio_tlb_satp_ppn),
    .io_extra_csrio_tlb_priv_mxr(fuBlock_io_extra_csrio_tlb_priv_mxr),
    .io_extra_csrio_tlb_priv_sum(fuBlock_io_extra_csrio_tlb_priv_sum),
    .io_extra_csrio_tlb_priv_imode(fuBlock_io_extra_csrio_tlb_priv_imode),
    .io_extra_csrio_tlb_priv_dmode(fuBlock_io_extra_csrio_tlb_priv_dmode),
    .io_extra_csrio_customCtrl_l1I_pf_enable(fuBlock_io_extra_csrio_customCtrl_l1I_pf_enable),
    .io_extra_csrio_customCtrl_icache_parity_enable(fuBlock_io_extra_csrio_customCtrl_icache_parity_enable),
    .io_extra_csrio_customCtrl_lvpred_disable(fuBlock_io_extra_csrio_customCtrl_lvpred_disable),
    .io_extra_csrio_customCtrl_no_spec_load(fuBlock_io_extra_csrio_customCtrl_no_spec_load),
    .io_extra_csrio_customCtrl_storeset_wait_store(fuBlock_io_extra_csrio_customCtrl_storeset_wait_store),
    .io_extra_csrio_customCtrl_lvpred_timeout(fuBlock_io_extra_csrio_customCtrl_lvpred_timeout),
    .io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable),
    .io_extra_csrio_customCtrl_bp_ctrl_btb_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_btb_enable),
    .io_extra_csrio_customCtrl_bp_ctrl_tage_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_tage_enable),
    .io_extra_csrio_customCtrl_bp_ctrl_sc_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_sc_enable),
    .io_extra_csrio_customCtrl_bp_ctrl_ras_enable(fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ras_enable),
    .io_extra_csrio_customCtrl_sbuffer_threshold(fuBlock_io_extra_csrio_customCtrl_sbuffer_threshold),
    .io_extra_csrio_customCtrl_ldld_vio_check_enable(fuBlock_io_extra_csrio_customCtrl_ldld_vio_check_enable),
    .io_extra_csrio_customCtrl_soft_prefetch_enable(fuBlock_io_extra_csrio_customCtrl_soft_prefetch_enable),
    .io_extra_csrio_customCtrl_cache_error_enable(fuBlock_io_extra_csrio_customCtrl_cache_error_enable),
    .io_extra_csrio_customCtrl_svinval_enable(fuBlock_io_extra_csrio_customCtrl_svinval_enable),
    .io_extra_csrio_customCtrl_distribute_csr_wvalid(fuBlock_io_extra_csrio_customCtrl_distribute_csr_wvalid),
    .io_extra_csrio_customCtrl_distribute_csr_waddr(fuBlock_io_extra_csrio_customCtrl_distribute_csr_waddr),
    .io_extra_csrio_customCtrl_distribute_csr_wdata(fuBlock_io_extra_csrio_customCtrl_distribute_csr_wdata),
    .io_extra_csrio_customCtrl_singlestep(fuBlock_io_extra_csrio_customCtrl_singlestep),
    .io_extra_csrio_customCtrl_frontend_trigger_t_valid(fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_valid),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain),
    .io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2(
      fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2),
    .io_extra_csrio_customCtrl_mem_trigger_t_valid(fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_valid),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_addr(fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_addr),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType(
      fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select(
      fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain(
      fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain),
    .io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2(
      fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2),
    .io_extra_csrio_customCtrl_trigger_enable_0(fuBlock_io_extra_csrio_customCtrl_trigger_enable_0),
    .io_extra_csrio_customCtrl_trigger_enable_1(fuBlock_io_extra_csrio_customCtrl_trigger_enable_1),
    .io_extra_csrio_customCtrl_trigger_enable_2(fuBlock_io_extra_csrio_customCtrl_trigger_enable_2),
    .io_extra_csrio_customCtrl_trigger_enable_3(fuBlock_io_extra_csrio_customCtrl_trigger_enable_3),
    .io_extra_csrio_customCtrl_trigger_enable_4(fuBlock_io_extra_csrio_customCtrl_trigger_enable_4),
    .io_extra_csrio_customCtrl_trigger_enable_5(fuBlock_io_extra_csrio_customCtrl_trigger_enable_5),
    .io_extra_csrio_customCtrl_trigger_enable_6(fuBlock_io_extra_csrio_customCtrl_trigger_enable_6),
    .io_extra_csrio_customCtrl_trigger_enable_7(fuBlock_io_extra_csrio_customCtrl_trigger_enable_7),
    .io_extra_csrio_customCtrl_trigger_enable_8(fuBlock_io_extra_csrio_customCtrl_trigger_enable_8),
    .io_extra_csrio_customCtrl_trigger_enable_9(fuBlock_io_extra_csrio_customCtrl_trigger_enable_9),
    .io_extra_csrio_distributedUpdate_0_wvalid(fuBlock_io_extra_csrio_distributedUpdate_0_wvalid),
    .io_extra_csrio_distributedUpdate_0_waddr(fuBlock_io_extra_csrio_distributedUpdate_0_waddr),
    .io_extra_csrio_distributedUpdate_0_wdata(fuBlock_io_extra_csrio_distributedUpdate_0_wdata),
    .io_extra_csrio_distributedUpdate_1_wvalid(fuBlock_io_extra_csrio_distributedUpdate_1_wvalid),
    .io_extra_csrio_distributedUpdate_1_waddr(fuBlock_io_extra_csrio_distributedUpdate_1_waddr),
    .io_extra_csrio_distributedUpdate_1_wdata(fuBlock_io_extra_csrio_distributedUpdate_1_wdata),
    .io_extra_fenceio_sfence_valid(fuBlock_io_extra_fenceio_sfence_valid),
    .io_extra_fenceio_sfence_bits_rs1(fuBlock_io_extra_fenceio_sfence_bits_rs1),
    .io_extra_fenceio_sfence_bits_rs2(fuBlock_io_extra_fenceio_sfence_bits_rs2),
    .io_extra_fenceio_sfence_bits_addr(fuBlock_io_extra_fenceio_sfence_bits_addr),
    .io_extra_fenceio_sfence_bits_asid(fuBlock_io_extra_fenceio_sfence_bits_asid),
    .io_extra_fenceio_sbuffer_flushSb(fuBlock_io_extra_fenceio_sbuffer_flushSb),
    .io_extra_fenceio_sbuffer_sbIsEmpty(fuBlock_io_extra_fenceio_sbuffer_sbIsEmpty)
  );
  assign io_in_0_ready = scheduler_io_in_0_ready; // @[ExuBlock.scala 89:19]
  assign io_in_1_ready = scheduler_io_in_1_ready; // @[ExuBlock.scala 89:19]
  assign io_in_2_ready = scheduler_io_in_2_ready; // @[ExuBlock.scala 89:19]
  assign io_in_3_ready = scheduler_io_in_3_ready; // @[ExuBlock.scala 89:19]
  assign io_in_4_ready = scheduler_io_in_4_ready; // @[ExuBlock.scala 89:19]
  assign io_in_5_ready = scheduler_io_in_5_ready; // @[ExuBlock.scala 89:19]
  assign io_in_6_ready = scheduler_io_in_6_ready; // @[ExuBlock.scala 89:19]
  assign io_in_7_ready = scheduler_io_in_7_ready; // @[ExuBlock.scala 89:19]
  assign io_issue_0_valid = scheduler_io_issue_6_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_trigger_backendEn_0 = scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_trigger_backendEn_1 = scheduler_io_issue_6_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_0 = scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_1 = scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_2 = scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_3 = scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_4 = scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_trigger_backendHit_5 = scheduler_io_issue_6_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_6_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_ftqPtr_value = scheduler_io_issue_6_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_cf_ftqOffset = scheduler_io_issue_6_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_ctrl_fuOpType = scheduler_io_issue_6_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_ctrl_rfWen = scheduler_io_issue_6_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_ctrl_fpWen = scheduler_io_issue_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_ctrl_imm = scheduler_io_issue_6_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_pdest = scheduler_io_issue_6_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_robIdx_flag = scheduler_io_issue_6_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_robIdx_value = scheduler_io_issue_6_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_lqIdx_flag = scheduler_io_issue_6_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_lqIdx_value = scheduler_io_issue_6_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_sqIdx_flag = scheduler_io_issue_6_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_uop_sqIdx_value = scheduler_io_issue_6_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_0_bits_src_0 = scheduler_io_issue_6_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_1_valid = scheduler_io_issue_7_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_trigger_backendEn_0 = scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_trigger_backendEn_1 = scheduler_io_issue_7_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_0 = scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_1 = scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_2 = scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_3 = scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_4 = scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_trigger_backendHit_5 = scheduler_io_issue_7_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_7_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_ftqPtr_value = scheduler_io_issue_7_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_cf_ftqOffset = scheduler_io_issue_7_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_ctrl_fuOpType = scheduler_io_issue_7_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_ctrl_rfWen = scheduler_io_issue_7_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_ctrl_fpWen = scheduler_io_issue_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_ctrl_imm = scheduler_io_issue_7_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_pdest = scheduler_io_issue_7_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_robIdx_flag = scheduler_io_issue_7_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_robIdx_value = scheduler_io_issue_7_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_lqIdx_flag = scheduler_io_issue_7_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_lqIdx_value = scheduler_io_issue_7_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_sqIdx_flag = scheduler_io_issue_7_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_uop_sqIdx_value = scheduler_io_issue_7_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_1_bits_src_0 = scheduler_io_issue_7_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_2_valid = scheduler_io_issue_8_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendEn_0 = scheduler_io_issue_8_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendEn_1 = scheduler_io_issue_8_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_0 = scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_1 = scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_2 = scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_3 = scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_4 = scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_trigger_backendHit_5 = scheduler_io_issue_8_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_ssid = scheduler_io_issue_8_bits_uop_cf_ssid; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_8_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_ftqPtr_value = scheduler_io_issue_8_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_cf_ftqOffset = scheduler_io_issue_8_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_fuType = scheduler_io_issue_8_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_fuOpType = scheduler_io_issue_8_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_rfWen = scheduler_io_issue_8_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_fpWen = scheduler_io_issue_8_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_ctrl_imm = scheduler_io_issue_8_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_pdest = scheduler_io_issue_8_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_robIdx_flag = scheduler_io_issue_8_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_robIdx_value = scheduler_io_issue_8_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_lqIdx_flag = scheduler_io_issue_8_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_lqIdx_value = scheduler_io_issue_8_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_sqIdx_flag = scheduler_io_issue_8_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_uop_sqIdx_value = scheduler_io_issue_8_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_2_bits_src_0 = scheduler_io_issue_8_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_3_valid = scheduler_io_issue_9_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendEn_0 = scheduler_io_issue_9_bits_uop_cf_trigger_backendEn_0; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendEn_1 = scheduler_io_issue_9_bits_uop_cf_trigger_backendEn_1; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendHit_0 = scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendHit_1 = scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendHit_2 = scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendHit_3 = scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendHit_4 = scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_trigger_backendHit_5 = scheduler_io_issue_9_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_ssid = scheduler_io_issue_9_bits_uop_cf_ssid; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_9_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_ftqPtr_value = scheduler_io_issue_9_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_cf_ftqOffset = scheduler_io_issue_9_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_fuType = scheduler_io_issue_9_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_fuOpType = scheduler_io_issue_9_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_rfWen = scheduler_io_issue_9_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_fpWen = scheduler_io_issue_9_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_ctrl_imm = scheduler_io_issue_9_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_pdest = scheduler_io_issue_9_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_robIdx_flag = scheduler_io_issue_9_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_robIdx_value = scheduler_io_issue_9_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_lqIdx_flag = scheduler_io_issue_9_bits_uop_lqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_lqIdx_value = scheduler_io_issue_9_bits_uop_lqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_sqIdx_flag = scheduler_io_issue_9_bits_uop_sqIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_uop_sqIdx_value = scheduler_io_issue_9_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_3_bits_src_0 = scheduler_io_issue_9_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_4_valid = scheduler_io_issue_10_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_ctrl_fuType = scheduler_io_issue_10_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_ctrl_fuOpType = scheduler_io_issue_10_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_robIdx_flag = scheduler_io_issue_10_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_robIdx_value = scheduler_io_issue_10_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_uop_sqIdx_value = scheduler_io_issue_10_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_4_bits_src_0 = scheduler_io_issue_10_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_issue_5_valid = scheduler_io_issue_11_valid; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_ctrl_fuType = scheduler_io_issue_11_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_ctrl_fuOpType = scheduler_io_issue_11_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_robIdx_flag = scheduler_io_issue_11_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_robIdx_value = scheduler_io_issue_11_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_uop_sqIdx_value = scheduler_io_issue_11_bits_uop_sqIdx_value; // @[ExuBlock.scala 99:22]
  assign io_issue_5_bits_src_0 = scheduler_io_issue_11_bits_src_0; // @[ExuBlock.scala 99:22]
  assign io_fuWriteback_0_valid = io_fuWriteback_0_valid_REG; // @[ExuBlock.scala 169:19]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_0 = io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_1 = io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_2 = io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_3 = io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_4 = io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_uop_cf_trigger_backendHit_5 = io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_uop_ctrl_rfWen = io_fuWriteback_0_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_uop_pdest = io_fuWriteback_0_bits_uop_REG_pdest; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_uop_robIdx_flag = io_fuWriteback_0_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_uop_robIdx_value = io_fuWriteback_0_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_0_bits_data = fuBlock_io_writeback_0_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_redirectValid = fuBlock_io_writeback_0_bits_redirectValid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_0_bits_redirect_cfiUpdate_isMisPred = fuBlock_io_writeback_0_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_valid = io_fuWriteback_1_valid_REG; // @[ExuBlock.scala 169:19]
  assign io_fuWriteback_1_bits_uop_cf_trigger_backendHit_0 = io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_uop_cf_trigger_backendHit_1 = io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_uop_cf_trigger_backendHit_2 = io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_uop_cf_trigger_backendHit_3 = io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_uop_cf_trigger_backendHit_4 = io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_uop_cf_trigger_backendHit_5 = io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_uop_ctrl_rfWen = io_fuWriteback_1_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_uop_pdest = io_fuWriteback_1_bits_uop_REG_pdest; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_uop_robIdx_flag = io_fuWriteback_1_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_uop_robIdx_value = io_fuWriteback_1_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_1_bits_data = fuBlock_io_writeback_1_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_redirectValid = fuBlock_io_writeback_1_bits_redirectValid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_1_bits_redirect_cfiUpdate_isMisPred = fuBlock_io_writeback_1_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_valid = io_fuWriteback_2_valid_REG; // @[ExuBlock.scala 169:19]
  assign io_fuWriteback_2_bits_uop_cf_trigger_backendHit_0 = io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_uop_cf_trigger_backendHit_1 = io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_uop_cf_trigger_backendHit_2 = io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_uop_cf_trigger_backendHit_3 = io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_uop_cf_trigger_backendHit_4 = io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_uop_cf_trigger_backendHit_5 = io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_uop_ctrl_rfWen = io_fuWriteback_2_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_uop_pdest = io_fuWriteback_2_bits_uop_REG_pdest; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_uop_robIdx_flag = io_fuWriteback_2_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_uop_robIdx_value = io_fuWriteback_2_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_2_bits_data = fuBlock_io_writeback_2_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_redirectValid = fuBlock_io_writeback_2_bits_redirectValid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_2_bits_redirect_cfiUpdate_isMisPred = fuBlock_io_writeback_2_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_valid = io_fuWriteback_3_valid_REG; // @[ExuBlock.scala 169:19]
  assign io_fuWriteback_3_bits_uop_cf_trigger_backendHit_0 = io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_uop_cf_trigger_backendHit_1 = io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_uop_cf_trigger_backendHit_2 = io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_uop_cf_trigger_backendHit_3 = io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_uop_cf_trigger_backendHit_4 = io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_uop_cf_trigger_backendHit_5 = io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_uop_ctrl_rfWen = io_fuWriteback_3_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_uop_pdest = io_fuWriteback_3_bits_uop_REG_pdest; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_uop_robIdx_flag = io_fuWriteback_3_bits_uop_REG_robIdx_flag; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_uop_robIdx_value = io_fuWriteback_3_bits_uop_REG_robIdx_value; // @[ExuBlock.scala 170:22]
  assign io_fuWriteback_3_bits_data = fuBlock_io_writeback_3_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_redirectValid = fuBlock_io_writeback_3_bits_redirectValid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_3_bits_redirect_cfiUpdate_isMisPred = fuBlock_io_writeback_3_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_valid = fuBlock_io_writeback_4_valid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_cf_trigger_backendHit_0 = fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_cf_trigger_backendHit_1 = fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_cf_trigger_backendHit_2 = fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_cf_trigger_backendHit_3 = fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_cf_trigger_backendHit_4 = fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_cf_trigger_backendHit_5 = fuBlock_io_writeback_4_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_ctrl_rfWen = fuBlock_io_writeback_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_ctrl_fpWen = fuBlock_io_writeback_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_pdest = fuBlock_io_writeback_4_bits_uop_pdest; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_robIdx_flag = fuBlock_io_writeback_4_bits_uop_robIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_uop_robIdx_value = fuBlock_io_writeback_4_bits_uop_robIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_4_bits_data = fuBlock_io_writeback_4_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_valid = fuBlock_io_writeback_5_valid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_exceptionVec_2 = fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_2; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_exceptionVec_3 = fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_3; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_exceptionVec_8 = fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_8; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_exceptionVec_9 = fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_9; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_exceptionVec_11 = fuBlock_io_writeback_5_bits_uop_cf_exceptionVec_11; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_trigger_backendHit_0 = fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_trigger_backendHit_1 = fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_trigger_backendHit_2 = fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_trigger_backendHit_3 = fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_trigger_backendHit_4 = fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_cf_trigger_backendHit_5 = fuBlock_io_writeback_5_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_ctrl_rfWen = fuBlock_io_writeback_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_ctrl_fpWen = fuBlock_io_writeback_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_ctrl_flushPipe = fuBlock_io_writeback_5_bits_uop_ctrl_flushPipe; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_pdest = fuBlock_io_writeback_5_bits_uop_pdest; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_robIdx_flag = fuBlock_io_writeback_5_bits_uop_robIdx_flag; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_uop_robIdx_value = fuBlock_io_writeback_5_bits_uop_robIdx_value; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_data = fuBlock_io_writeback_5_bits_data; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_fflags = fuBlock_io_writeback_5_bits_fflags; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_redirectValid = fuBlock_io_writeback_5_bits_redirectValid; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_redirect_cfiUpdate_isMisPred = fuBlock_io_writeback_5_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 106:24]
  assign io_fuWriteback_5_bits_debug_isPerfCnt = fuBlock_io_writeback_5_bits_debug_isPerfCnt; // @[ExuBlock.scala 106:24]
  assign io_scheExtra_feedback_0_rsIdx = scheduler_io_extra_feedback_0_rsIdx; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_feedback_1_rsIdx = scheduler_io_extra_feedback_1_rsIdx; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_feedback_2_rsIdx = scheduler_io_extra_feedback_2_rsIdx; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_feedback_3_rsIdx = scheduler_io_extra_feedback_3_rsIdx; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_fpRfReadIn_0_addr = scheduler_io_extra_fpRfReadIn_0_addr; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_fpRfReadIn_1_addr = scheduler_io_extra_fpRfReadIn_1_addr; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_needAlloc_0 = scheduler_io_extra_enqLsq_needAlloc_0; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_needAlloc_1 = scheduler_io_extra_enqLsq_needAlloc_1; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_needAlloc_2 = scheduler_io_extra_enqLsq_needAlloc_2; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_needAlloc_3 = scheduler_io_extra_enqLsq_needAlloc_3; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_0_valid = scheduler_io_extra_enqLsq_req_0_valid; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_0_bits_robIdx_flag = scheduler_io_extra_enqLsq_req_0_bits_robIdx_flag; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_0_bits_robIdx_value = scheduler_io_extra_enqLsq_req_0_bits_robIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_0_bits_lqIdx_value = scheduler_io_extra_enqLsq_req_0_bits_lqIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_0_bits_sqIdx_value = scheduler_io_extra_enqLsq_req_0_bits_sqIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_1_valid = scheduler_io_extra_enqLsq_req_1_valid; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_1_bits_robIdx_flag = scheduler_io_extra_enqLsq_req_1_bits_robIdx_flag; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_1_bits_robIdx_value = scheduler_io_extra_enqLsq_req_1_bits_robIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_1_bits_lqIdx_value = scheduler_io_extra_enqLsq_req_1_bits_lqIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_1_bits_sqIdx_value = scheduler_io_extra_enqLsq_req_1_bits_sqIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_2_valid = scheduler_io_extra_enqLsq_req_2_valid; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_2_bits_robIdx_flag = scheduler_io_extra_enqLsq_req_2_bits_robIdx_flag; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_2_bits_robIdx_value = scheduler_io_extra_enqLsq_req_2_bits_robIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_2_bits_lqIdx_value = scheduler_io_extra_enqLsq_req_2_bits_lqIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_2_bits_sqIdx_value = scheduler_io_extra_enqLsq_req_2_bits_sqIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_3_valid = scheduler_io_extra_enqLsq_req_3_valid; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_3_bits_robIdx_flag = scheduler_io_extra_enqLsq_req_3_bits_robIdx_flag; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_3_bits_robIdx_value = scheduler_io_extra_enqLsq_req_3_bits_robIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_3_bits_lqIdx_value = scheduler_io_extra_enqLsq_req_3_bits_lqIdx_value; // @[ExuBlock.scala 93:22]
  assign io_scheExtra_enqLsq_req_3_bits_sqIdx_value = scheduler_io_extra_enqLsq_req_3_bits_sqIdx_value; // @[ExuBlock.scala 93:22]
  assign io_fuExtra_exuRedirect_0_valid = fuBlock_io_extra_exuRedirect_0_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRVC = fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_cf_pd_brType = fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isCall = fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRet = fuBlock_io_extra_exuRedirect_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_ctrl_imm = fuBlock_io_extra_exuRedirect_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_robIdx_flag = fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_uop_robIdx_value = fuBlock_io_extra_exuRedirect_0_bits_uop_robIdx_value; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirectValid = fuBlock_io_extra_exuRedirect_0_bits_redirectValid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_robIdx_flag = fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_robIdx_value = fuBlock_io_extra_exuRedirect_0_bits_redirect_robIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_flag = fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_value = fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_ftqOffset = fuBlock_io_extra_exuRedirect_0_bits_redirect_ftqOffset; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_target =
    fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_target; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred =
    fuBlock_io_extra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_valid = fuBlock_io_extra_exuRedirect_1_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRVC = fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_cf_pd_brType = fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isCall = fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRet = fuBlock_io_extra_exuRedirect_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_ctrl_imm = fuBlock_io_extra_exuRedirect_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_robIdx_flag = fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_uop_robIdx_value = fuBlock_io_extra_exuRedirect_1_bits_uop_robIdx_value; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirectValid = fuBlock_io_extra_exuRedirect_1_bits_redirectValid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_robIdx_flag = fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_robIdx_value = fuBlock_io_extra_exuRedirect_1_bits_redirect_robIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_flag = fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_value = fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_ftqOffset = fuBlock_io_extra_exuRedirect_1_bits_redirect_ftqOffset; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_taken =
    fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred =
    fuBlock_io_extra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_valid = fuBlock_io_extra_exuRedirect_2_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRVC = fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_cf_pd_brType = fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_brType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isCall = fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRet = fuBlock_io_extra_exuRedirect_2_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_ctrl_imm = fuBlock_io_extra_exuRedirect_2_bits_uop_ctrl_imm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_robIdx_flag = fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_uop_robIdx_value = fuBlock_io_extra_exuRedirect_2_bits_uop_robIdx_value; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirectValid = fuBlock_io_extra_exuRedirect_2_bits_redirectValid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_robIdx_flag = fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_robIdx_value = fuBlock_io_extra_exuRedirect_2_bits_redirect_robIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_flag = fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_value = fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_ftqOffset = fuBlock_io_extra_exuRedirect_2_bits_redirect_ftqOffset; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_taken =
    fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred =
    fuBlock_io_extra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_valid = fuBlock_io_extra_exuRedirect_3_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_uop_cf_pd_isRVC = fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_uop_cf_pd_brType = fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_brType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_uop_cf_pd_isCall = fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_uop_cf_pd_isRet = fuBlock_io_extra_exuRedirect_3_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_uop_ctrl_imm = fuBlock_io_extra_exuRedirect_3_bits_uop_ctrl_imm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_uop_robIdx_flag = fuBlock_io_extra_exuRedirect_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_uop_robIdx_value = fuBlock_io_extra_exuRedirect_3_bits_uop_robIdx_value; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_redirectValid = fuBlock_io_extra_exuRedirect_3_bits_redirectValid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_redirect_robIdx_flag = fuBlock_io_extra_exuRedirect_3_bits_redirect_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_redirect_robIdx_value = fuBlock_io_extra_exuRedirect_3_bits_redirect_robIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_redirect_ftqIdx_flag = fuBlock_io_extra_exuRedirect_3_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_redirect_ftqIdx_value = fuBlock_io_extra_exuRedirect_3_bits_redirect_ftqIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_redirect_ftqOffset = fuBlock_io_extra_exuRedirect_3_bits_redirect_ftqOffset; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_redirect_cfiUpdate_taken =
    fuBlock_io_extra_exuRedirect_3_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_3_bits_redirect_cfiUpdate_isMisPred =
    fuBlock_io_extra_exuRedirect_3_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_valid = fuBlock_io_extra_exuRedirect_4_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_uop_cf_pd_isRVC = fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_uop_cf_pd_brType = fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_brType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_uop_cf_pd_isCall = fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_uop_cf_pd_isRet = fuBlock_io_extra_exuRedirect_4_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_uop_ctrl_imm = fuBlock_io_extra_exuRedirect_4_bits_uop_ctrl_imm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_uop_robIdx_flag = fuBlock_io_extra_exuRedirect_4_bits_uop_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_uop_robIdx_value = fuBlock_io_extra_exuRedirect_4_bits_uop_robIdx_value; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_redirectValid = fuBlock_io_extra_exuRedirect_4_bits_redirectValid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_redirect_robIdx_flag = fuBlock_io_extra_exuRedirect_4_bits_redirect_robIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_redirect_robIdx_value = fuBlock_io_extra_exuRedirect_4_bits_redirect_robIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_redirect_ftqIdx_flag = fuBlock_io_extra_exuRedirect_4_bits_redirect_ftqIdx_flag; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_redirect_ftqIdx_value = fuBlock_io_extra_exuRedirect_4_bits_redirect_ftqIdx_value
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_redirect_ftqOffset = fuBlock_io_extra_exuRedirect_4_bits_redirect_ftqOffset; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_redirect_cfiUpdate_taken =
    fuBlock_io_extra_exuRedirect_4_bits_redirect_cfiUpdate_taken; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_exuRedirect_4_bits_redirect_cfiUpdate_isMisPred =
    fuBlock_io_extra_exuRedirect_4_bits_redirect_cfiUpdate_isMisPred; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_fpu_frm = fuBlock_io_extra_csrio_fpu_frm; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_isXRet = fuBlock_io_extra_csrio_isXRet; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_trapTarget = fuBlock_io_extra_csrio_trapTarget; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_interrupt = fuBlock_io_extra_csrio_interrupt; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_wfi_event = fuBlock_io_extra_csrio_wfi_event; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_satp_changed = fuBlock_io_extra_csrio_tlb_satp_changed; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_satp_mode = fuBlock_io_extra_csrio_tlb_satp_mode; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_satp_asid = fuBlock_io_extra_csrio_tlb_satp_asid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_satp_ppn = fuBlock_io_extra_csrio_tlb_satp_ppn; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_priv_mxr = fuBlock_io_extra_csrio_tlb_priv_mxr; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_priv_sum = fuBlock_io_extra_csrio_tlb_priv_sum; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_priv_imode = fuBlock_io_extra_csrio_tlb_priv_imode; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_tlb_priv_dmode = fuBlock_io_extra_csrio_tlb_priv_dmode; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_l1I_pf_enable = fuBlock_io_extra_csrio_customCtrl_l1I_pf_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_icache_parity_enable = fuBlock_io_extra_csrio_customCtrl_icache_parity_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_lvpred_disable = fuBlock_io_extra_csrio_customCtrl_lvpred_disable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_no_spec_load = fuBlock_io_extra_csrio_customCtrl_no_spec_load; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_storeset_wait_store = fuBlock_io_extra_csrio_customCtrl_storeset_wait_store; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_lvpred_timeout = fuBlock_io_extra_csrio_customCtrl_lvpred_timeout; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_ubtb_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_btb_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_btb_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_tage_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_tage_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_sc_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_sc_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_bp_ctrl_ras_enable = fuBlock_io_extra_csrio_customCtrl_bp_ctrl_ras_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_sbuffer_threshold = fuBlock_io_extra_csrio_customCtrl_sbuffer_threshold; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_ldld_vio_check_enable = fuBlock_io_extra_csrio_customCtrl_ldld_vio_check_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_soft_prefetch_enable = fuBlock_io_extra_csrio_customCtrl_soft_prefetch_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_cache_error_enable = fuBlock_io_extra_csrio_customCtrl_cache_error_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_svinval_enable = fuBlock_io_extra_csrio_customCtrl_svinval_enable; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_distribute_csr_wvalid = fuBlock_io_extra_csrio_customCtrl_distribute_csr_wvalid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_distribute_csr_waddr =
    fuBlock_io_extra_csrio_customCtrl_distribute_csr_waddr; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_distribute_csr_wdata =
    fuBlock_io_extra_csrio_customCtrl_distribute_csr_wdata; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_singlestep = fuBlock_io_extra_csrio_customCtrl_singlestep; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_valid =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_addr =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2 =
    fuBlock_io_extra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_valid = fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_addr = fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_addr
    ; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType =
    fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_select =
    fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain =
    fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2 =
    fuBlock_io_extra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_0 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_0; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_1 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_1; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_2 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_2; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_3 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_3; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_4 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_4; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_5 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_5; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_6 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_6; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_7 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_7; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_8 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_8; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_csrio_customCtrl_trigger_enable_9 = fuBlock_io_extra_csrio_customCtrl_trigger_enable_9; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_valid = fuBlock_io_extra_fenceio_sfence_valid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_bits_rs1 = fuBlock_io_extra_fenceio_sfence_bits_rs1; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_bits_rs2 = fuBlock_io_extra_fenceio_sfence_bits_rs2; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_bits_addr = fuBlock_io_extra_fenceio_sfence_bits_addr; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sfence_bits_asid = fuBlock_io_extra_fenceio_sfence_bits_asid; // @[ExuBlock.scala 107:20]
  assign io_fuExtra_fenceio_sbuffer_flushSb = fuBlock_io_extra_fenceio_sbuffer_flushSb; // @[ExuBlock.scala 107:20]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_1_value = io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_2_value = io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_3_value = io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_4_value = io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_5_value = io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_8_value = io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_9_value = io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_10_value = io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_11_value = io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign io_perf_12_value = io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 189:17]
  assign scheduler_clock = clock;
  assign scheduler_reset = reset;
  assign scheduler_io_hartId = io_hartId; // @[ExuBlock.scala 86:23]
  assign scheduler_io_redirect_valid = io_redirect_valid; // @[ExuBlock.scala 87:25]
  assign scheduler_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 87:25]
  assign scheduler_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[ExuBlock.scala 87:25]
  assign scheduler_io_redirect_bits_level = io_redirect_bits_level; // @[ExuBlock.scala 87:25]
  assign scheduler_io_allocPregs_0_isInt = io_allocPregs_0_isInt; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_0_isFp = io_allocPregs_0_isFp; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_0_preg = io_allocPregs_0_preg; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_1_isInt = io_allocPregs_1_isInt; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_1_isFp = io_allocPregs_1_isFp; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_1_preg = io_allocPregs_1_preg; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_2_isInt = io_allocPregs_2_isInt; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_2_isFp = io_allocPregs_2_isFp; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_2_preg = io_allocPregs_2_preg; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_3_isInt = io_allocPregs_3_isInt; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_3_isFp = io_allocPregs_3_isFp; // @[ExuBlock.scala 88:27]
  assign scheduler_io_allocPregs_3_preg = io_allocPregs_3_preg; // @[ExuBlock.scala 88:27]
  assign scheduler_io_in_0_valid = io_in_0_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendEn_0 = io_in_0_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendEn_1 = io_in_0_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendHit_0 = io_in_0_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendHit_1 = io_in_0_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendHit_2 = io_in_0_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendHit_3 = io_in_0_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendHit_4 = io_in_0_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_trigger_backendHit_5 = io_in_0_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_isRVC = io_in_0_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_brType = io_in_0_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_isCall = io_in_0_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pd_isRet = io_in_0_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_pred_taken = io_in_0_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ssid = io_in_0_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ftqPtr_flag = io_in_0_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ftqPtr_value = io_in_0_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_cf_ftqOffset = io_in_0_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_srcType_0 = io_in_0_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_srcType_1 = io_in_0_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fuType = io_in_0_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fuOpType = io_in_0_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_rfWen = io_in_0_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpWen = io_in_0_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_selImm = io_in_0_bits_ctrl_selImm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_imm = io_in_0_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_isAddSub = io_in_0_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_typeTagIn = io_in_0_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_typeTagOut = io_in_0_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fromInt = io_in_0_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_wflags = io_in_0_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fpWen = io_in_0_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fmaCmd = io_in_0_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_div = io_in_0_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_sqrt = io_in_0_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fcvt = io_in_0_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_typ = io_in_0_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_fmt = io_in_0_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_ren3 = io_in_0_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_ctrl_fpu_rm = io_in_0_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_psrc_0 = io_in_0_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_psrc_1 = io_in_0_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_pdest = io_in_0_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_robIdx_flag = io_in_0_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_robIdx_value = io_in_0_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_lqIdx_flag = io_in_0_bits_lqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_lqIdx_value = io_in_0_bits_lqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_sqIdx_flag = io_in_0_bits_sqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_0_bits_sqIdx_value = io_in_0_bits_sqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_valid = io_in_1_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendEn_0 = io_in_1_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendEn_1 = io_in_1_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendHit_0 = io_in_1_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendHit_1 = io_in_1_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendHit_2 = io_in_1_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendHit_3 = io_in_1_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendHit_4 = io_in_1_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_trigger_backendHit_5 = io_in_1_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pd_isRVC = io_in_1_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pd_brType = io_in_1_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pd_isCall = io_in_1_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pd_isRet = io_in_1_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_pred_taken = io_in_1_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_ssid = io_in_1_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_ftqPtr_flag = io_in_1_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_ftqPtr_value = io_in_1_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_cf_ftqOffset = io_in_1_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_srcType_0 = io_in_1_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_srcType_1 = io_in_1_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fuType = io_in_1_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fuOpType = io_in_1_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_rfWen = io_in_1_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpWen = io_in_1_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_selImm = io_in_1_bits_ctrl_selImm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_imm = io_in_1_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_isAddSub = io_in_1_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_typeTagIn = io_in_1_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_typeTagOut = io_in_1_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_fromInt = io_in_1_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_wflags = io_in_1_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_fpWen = io_in_1_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_fmaCmd = io_in_1_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_div = io_in_1_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_sqrt = io_in_1_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_fcvt = io_in_1_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_typ = io_in_1_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_fmt = io_in_1_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_ren3 = io_in_1_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_ctrl_fpu_rm = io_in_1_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_psrc_0 = io_in_1_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_psrc_1 = io_in_1_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_pdest = io_in_1_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_robIdx_flag = io_in_1_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_robIdx_value = io_in_1_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_lqIdx_flag = io_in_1_bits_lqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_lqIdx_value = io_in_1_bits_lqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_sqIdx_flag = io_in_1_bits_sqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_1_bits_sqIdx_value = io_in_1_bits_sqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_valid = io_in_2_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_trigger_backendEn_0 = io_in_2_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_trigger_backendEn_1 = io_in_2_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_trigger_backendHit_0 = io_in_2_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_trigger_backendHit_1 = io_in_2_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_trigger_backendHit_2 = io_in_2_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_trigger_backendHit_3 = io_in_2_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_trigger_backendHit_4 = io_in_2_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_trigger_backendHit_5 = io_in_2_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_pd_isRVC = io_in_2_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_pd_brType = io_in_2_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_pd_isCall = io_in_2_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_pd_isRet = io_in_2_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_pred_taken = io_in_2_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_ssid = io_in_2_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_ftqPtr_flag = io_in_2_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_ftqPtr_value = io_in_2_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_cf_ftqOffset = io_in_2_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_srcType_0 = io_in_2_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_srcType_1 = io_in_2_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fuType = io_in_2_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fuOpType = io_in_2_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_rfWen = io_in_2_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpWen = io_in_2_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_selImm = io_in_2_bits_ctrl_selImm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_imm = io_in_2_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_isAddSub = io_in_2_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_typeTagIn = io_in_2_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_typeTagOut = io_in_2_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_fromInt = io_in_2_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_wflags = io_in_2_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_fpWen = io_in_2_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_fmaCmd = io_in_2_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_div = io_in_2_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_sqrt = io_in_2_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_fcvt = io_in_2_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_typ = io_in_2_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_fmt = io_in_2_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_ren3 = io_in_2_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_ctrl_fpu_rm = io_in_2_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_psrc_0 = io_in_2_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_psrc_1 = io_in_2_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_pdest = io_in_2_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_robIdx_flag = io_in_2_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_robIdx_value = io_in_2_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_lqIdx_flag = io_in_2_bits_lqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_lqIdx_value = io_in_2_bits_lqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_sqIdx_flag = io_in_2_bits_sqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_2_bits_sqIdx_value = io_in_2_bits_sqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_valid = io_in_3_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_trigger_backendEn_0 = io_in_3_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_trigger_backendEn_1 = io_in_3_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_trigger_backendHit_0 = io_in_3_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_trigger_backendHit_1 = io_in_3_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_trigger_backendHit_2 = io_in_3_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_trigger_backendHit_3 = io_in_3_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_trigger_backendHit_4 = io_in_3_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_trigger_backendHit_5 = io_in_3_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_pd_isRVC = io_in_3_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_pd_brType = io_in_3_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_pd_isCall = io_in_3_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_pd_isRet = io_in_3_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_pred_taken = io_in_3_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_ssid = io_in_3_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_ftqPtr_flag = io_in_3_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_ftqPtr_value = io_in_3_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_cf_ftqOffset = io_in_3_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_srcType_0 = io_in_3_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_srcType_1 = io_in_3_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fuType = io_in_3_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fuOpType = io_in_3_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_rfWen = io_in_3_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpWen = io_in_3_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_selImm = io_in_3_bits_ctrl_selImm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_imm = io_in_3_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_isAddSub = io_in_3_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_typeTagIn = io_in_3_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_typeTagOut = io_in_3_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_fromInt = io_in_3_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_wflags = io_in_3_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_fpWen = io_in_3_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_fmaCmd = io_in_3_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_div = io_in_3_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_sqrt = io_in_3_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_fcvt = io_in_3_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_typ = io_in_3_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_fmt = io_in_3_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_ren3 = io_in_3_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_ctrl_fpu_rm = io_in_3_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_psrc_0 = io_in_3_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_psrc_1 = io_in_3_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_pdest = io_in_3_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_robIdx_flag = io_in_3_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_robIdx_value = io_in_3_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_lqIdx_flag = io_in_3_bits_lqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_lqIdx_value = io_in_3_bits_lqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_sqIdx_flag = io_in_3_bits_sqIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_3_bits_sqIdx_value = io_in_3_bits_sqIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_valid = io_in_4_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendEn_0 = io_in_4_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendEn_1 = io_in_4_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendHit_0 = io_in_4_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendHit_1 = io_in_4_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendHit_2 = io_in_4_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendHit_3 = io_in_4_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendHit_4 = io_in_4_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_trigger_backendHit_5 = io_in_4_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pd_isRVC = io_in_4_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pd_brType = io_in_4_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pd_isCall = io_in_4_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pd_isRet = io_in_4_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_pred_taken = io_in_4_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_waitForRobIdx_value = io_in_4_bits_cf_waitForRobIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_loadWaitBit = io_in_4_bits_cf_loadWaitBit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_loadWaitStrict = io_in_4_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_ssid = io_in_4_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_ftqPtr_flag = io_in_4_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_ftqPtr_value = io_in_4_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_cf_ftqOffset = io_in_4_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_srcType_0 = io_in_4_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_srcType_1 = io_in_4_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fuType = io_in_4_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fuOpType = io_in_4_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_rfWen = io_in_4_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpWen = io_in_4_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_imm = io_in_4_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_isAddSub = io_in_4_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_typeTagIn = io_in_4_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_typeTagOut = io_in_4_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_fromInt = io_in_4_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_wflags = io_in_4_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_fpWen = io_in_4_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_fmaCmd = io_in_4_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_div = io_in_4_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_sqrt = io_in_4_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_fcvt = io_in_4_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_typ = io_in_4_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_fmt = io_in_4_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_ren3 = io_in_4_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_ctrl_fpu_rm = io_in_4_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_psrc_0 = io_in_4_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_psrc_1 = io_in_4_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_pdest = io_in_4_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_robIdx_flag = io_in_4_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_4_bits_robIdx_value = io_in_4_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_valid = io_in_5_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendEn_0 = io_in_5_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendEn_1 = io_in_5_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendHit_0 = io_in_5_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendHit_1 = io_in_5_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendHit_2 = io_in_5_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendHit_3 = io_in_5_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendHit_4 = io_in_5_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_trigger_backendHit_5 = io_in_5_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pd_isRVC = io_in_5_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pd_brType = io_in_5_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pd_isCall = io_in_5_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pd_isRet = io_in_5_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_pred_taken = io_in_5_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_waitForRobIdx_value = io_in_5_bits_cf_waitForRobIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_loadWaitBit = io_in_5_bits_cf_loadWaitBit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_loadWaitStrict = io_in_5_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_ssid = io_in_5_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_ftqPtr_flag = io_in_5_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_ftqPtr_value = io_in_5_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_cf_ftqOffset = io_in_5_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_srcType_0 = io_in_5_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_srcType_1 = io_in_5_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fuType = io_in_5_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fuOpType = io_in_5_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_rfWen = io_in_5_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpWen = io_in_5_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_imm = io_in_5_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_isAddSub = io_in_5_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_typeTagIn = io_in_5_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_typeTagOut = io_in_5_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_fromInt = io_in_5_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_wflags = io_in_5_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_fpWen = io_in_5_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_fmaCmd = io_in_5_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_div = io_in_5_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_sqrt = io_in_5_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_fcvt = io_in_5_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_typ = io_in_5_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_fmt = io_in_5_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_ren3 = io_in_5_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_ctrl_fpu_rm = io_in_5_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_psrc_0 = io_in_5_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_psrc_1 = io_in_5_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_pdest = io_in_5_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_robIdx_flag = io_in_5_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_5_bits_robIdx_value = io_in_5_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_valid = io_in_6_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendEn_0 = io_in_6_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendEn_1 = io_in_6_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendHit_0 = io_in_6_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendHit_1 = io_in_6_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendHit_2 = io_in_6_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendHit_3 = io_in_6_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendHit_4 = io_in_6_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_trigger_backendHit_5 = io_in_6_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pd_isRVC = io_in_6_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pd_brType = io_in_6_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pd_isCall = io_in_6_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pd_isRet = io_in_6_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_pred_taken = io_in_6_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_waitForRobIdx_value = io_in_6_bits_cf_waitForRobIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_loadWaitBit = io_in_6_bits_cf_loadWaitBit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_loadWaitStrict = io_in_6_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_ssid = io_in_6_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_ftqPtr_flag = io_in_6_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_ftqPtr_value = io_in_6_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_cf_ftqOffset = io_in_6_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_srcType_0 = io_in_6_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_srcType_1 = io_in_6_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fuType = io_in_6_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fuOpType = io_in_6_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_rfWen = io_in_6_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpWen = io_in_6_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_imm = io_in_6_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_isAddSub = io_in_6_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_typeTagIn = io_in_6_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_typeTagOut = io_in_6_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_fromInt = io_in_6_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_wflags = io_in_6_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_fpWen = io_in_6_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_fmaCmd = io_in_6_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_div = io_in_6_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_sqrt = io_in_6_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_fcvt = io_in_6_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_typ = io_in_6_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_fmt = io_in_6_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_ren3 = io_in_6_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_ctrl_fpu_rm = io_in_6_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_psrc_0 = io_in_6_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_psrc_1 = io_in_6_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_pdest = io_in_6_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_robIdx_flag = io_in_6_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_6_bits_robIdx_value = io_in_6_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_valid = io_in_7_valid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendEn_0 = io_in_7_bits_cf_trigger_backendEn_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendEn_1 = io_in_7_bits_cf_trigger_backendEn_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendHit_0 = io_in_7_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendHit_1 = io_in_7_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendHit_2 = io_in_7_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendHit_3 = io_in_7_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendHit_4 = io_in_7_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_trigger_backendHit_5 = io_in_7_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pd_isRVC = io_in_7_bits_cf_pd_isRVC; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pd_brType = io_in_7_bits_cf_pd_brType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pd_isCall = io_in_7_bits_cf_pd_isCall; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pd_isRet = io_in_7_bits_cf_pd_isRet; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_pred_taken = io_in_7_bits_cf_pred_taken; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_waitForRobIdx_value = io_in_7_bits_cf_waitForRobIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_loadWaitBit = io_in_7_bits_cf_loadWaitBit; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_loadWaitStrict = io_in_7_bits_cf_loadWaitStrict; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_ssid = io_in_7_bits_cf_ssid; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_ftqPtr_flag = io_in_7_bits_cf_ftqPtr_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_ftqPtr_value = io_in_7_bits_cf_ftqPtr_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_cf_ftqOffset = io_in_7_bits_cf_ftqOffset; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_srcType_0 = io_in_7_bits_ctrl_srcType_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_srcType_1 = io_in_7_bits_ctrl_srcType_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fuType = io_in_7_bits_ctrl_fuType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fuOpType = io_in_7_bits_ctrl_fuOpType; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_rfWen = io_in_7_bits_ctrl_rfWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpWen = io_in_7_bits_ctrl_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_imm = io_in_7_bits_ctrl_imm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_isAddSub = io_in_7_bits_ctrl_fpu_isAddSub; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_typeTagIn = io_in_7_bits_ctrl_fpu_typeTagIn; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_typeTagOut = io_in_7_bits_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_fromInt = io_in_7_bits_ctrl_fpu_fromInt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_wflags = io_in_7_bits_ctrl_fpu_wflags; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_fpWen = io_in_7_bits_ctrl_fpu_fpWen; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_fmaCmd = io_in_7_bits_ctrl_fpu_fmaCmd; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_div = io_in_7_bits_ctrl_fpu_div; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_sqrt = io_in_7_bits_ctrl_fpu_sqrt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_fcvt = io_in_7_bits_ctrl_fpu_fcvt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_typ = io_in_7_bits_ctrl_fpu_typ; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_fmt = io_in_7_bits_ctrl_fpu_fmt; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_ren3 = io_in_7_bits_ctrl_fpu_ren3; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_ctrl_fpu_rm = io_in_7_bits_ctrl_fpu_rm; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_psrc_0 = io_in_7_bits_psrc_0; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_psrc_1 = io_in_7_bits_psrc_1; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_pdest = io_in_7_bits_pdest; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_robIdx_flag = io_in_7_bits_robIdx_flag; // @[ExuBlock.scala 89:19]
  assign scheduler_io_in_7_bits_robIdx_value = io_in_7_bits_robIdx_value; // @[ExuBlock.scala 89:19]
  assign scheduler_io_issue_4_ready = fuBlock_io_issue_4_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_5_ready = fuBlock_io_issue_5_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_6_ready = io_issue_0_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_7_ready = io_issue_1_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_8_ready = io_issue_2_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_9_ready = io_issue_3_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_10_ready = io_issue_4_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_issue_11_ready = io_issue_5_ready; // @[ExuBlock.scala 99:22]
  assign scheduler_io_writeback_0_valid = scheduler_io_writeback_0_valid_REG; // @[ExuBlock.scala 193:20]
  assign scheduler_io_writeback_0_bits_uop_ctrl_rfWen = scheduler_io_writeback_0_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_0_bits_uop_ctrl_fpWen = scheduler_io_writeback_0_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_0_bits_uop_pdest = scheduler_io_writeback_0_bits_uop_REG_pdest; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_0_bits_data = fuBlock_io_writeback_0_bits_data; // @[ExuBlock.scala 136:17]
  assign scheduler_io_writeback_1_valid = scheduler_io_writeback_1_valid_REG; // @[ExuBlock.scala 193:20]
  assign scheduler_io_writeback_1_bits_uop_ctrl_rfWen = scheduler_io_writeback_1_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_1_bits_uop_ctrl_fpWen = scheduler_io_writeback_1_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_1_bits_uop_pdest = scheduler_io_writeback_1_bits_uop_REG_pdest; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_1_bits_data = fuBlock_io_writeback_1_bits_data; // @[ExuBlock.scala 136:17]
  assign scheduler_io_writeback_2_valid = scheduler_io_writeback_2_valid_REG; // @[ExuBlock.scala 193:20]
  assign scheduler_io_writeback_2_bits_uop_ctrl_rfWen = scheduler_io_writeback_2_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_2_bits_uop_ctrl_fpWen = scheduler_io_writeback_2_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_2_bits_uop_pdest = scheduler_io_writeback_2_bits_uop_REG_pdest; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_2_bits_data = fuBlock_io_writeback_2_bits_data; // @[ExuBlock.scala 136:17]
  assign scheduler_io_writeback_3_valid = scheduler_io_writeback_3_valid_REG; // @[ExuBlock.scala 193:20]
  assign scheduler_io_writeback_3_bits_uop_ctrl_rfWen = scheduler_io_writeback_3_bits_uop_REG_ctrl_rfWen; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_3_bits_uop_ctrl_fpWen = scheduler_io_writeback_3_bits_uop_REG_ctrl_fpWen; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_3_bits_uop_pdest = scheduler_io_writeback_3_bits_uop_REG_pdest; // @[ExuBlock.scala 194:23]
  assign scheduler_io_writeback_3_bits_data = fuBlock_io_writeback_3_bits_data; // @[ExuBlock.scala 136:17]
  assign scheduler_io_writeback_4_valid = io_rfWriteback_4_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_4_bits_uop_ctrl_rfWen = io_rfWriteback_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_4_bits_uop_ctrl_fpWen = io_rfWriteback_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_4_bits_uop_pdest = io_rfWriteback_4_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_4_bits_data = io_rfWriteback_4_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_valid = io_rfWriteback_5_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_bits_uop_ctrl_rfWen = io_rfWriteback_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_bits_uop_ctrl_fpWen = io_rfWriteback_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_bits_uop_pdest = io_rfWriteback_5_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_5_bits_data = io_rfWriteback_5_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_valid = io_rfWriteback_6_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_uop_ctrl_rfWen = io_rfWriteback_6_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_uop_ctrl_fpWen = io_rfWriteback_6_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_uop_pdest = io_rfWriteback_6_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_6_bits_data = io_rfWriteback_6_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_valid = io_rfWriteback_7_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_uop_ctrl_rfWen = io_rfWriteback_7_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_uop_ctrl_fpWen = io_rfWriteback_7_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_uop_pdest = io_rfWriteback_7_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_7_bits_data = io_rfWriteback_7_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_valid = io_rfWriteback_8_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_uop_ctrl_rfWen = io_rfWriteback_8_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_uop_ctrl_fpWen = io_rfWriteback_8_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_uop_pdest = io_rfWriteback_8_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_8_bits_data = io_rfWriteback_8_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_9_valid = io_rfWriteback_9_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_9_bits_uop_ctrl_rfWen = io_rfWriteback_9_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_9_bits_uop_ctrl_fpWen = io_rfWriteback_9_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_9_bits_uop_pdest = io_rfWriteback_9_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_9_bits_data = io_rfWriteback_9_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_10_valid = io_rfWriteback_10_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_10_bits_uop_ctrl_rfWen = io_rfWriteback_10_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_10_bits_uop_ctrl_fpWen = io_rfWriteback_10_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_10_bits_uop_pdest = io_rfWriteback_10_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_10_bits_data = io_rfWriteback_10_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_11_valid = io_rfWriteback_11_valid; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_11_bits_uop_ctrl_rfWen = io_rfWriteback_11_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_11_bits_uop_ctrl_fpWen = io_rfWriteback_11_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_11_bits_uop_pdest = io_rfWriteback_11_bits_uop_pdest; // @[ExuBlock.scala 91:26]
  assign scheduler_io_writeback_11_bits_data = io_rfWriteback_11_bits_data; // @[ExuBlock.scala 91:26]
  assign scheduler_io_fastUopIn_4_valid = io_fastUopIn_4_valid; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_4_bits_ctrl_rfWen = io_fastUopIn_4_bits_ctrl_rfWen; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_4_bits_pdest = io_fastUopIn_4_bits_pdest; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_5_valid = io_fastUopIn_5_valid; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_5_bits_ctrl_rfWen = io_fastUopIn_5_bits_ctrl_rfWen; // @[ExuBlock.scala 92:26]
  assign scheduler_io_fastUopIn_5_bits_pdest = io_fastUopIn_5_bits_pdest; // @[ExuBlock.scala 92:26]
  assign scheduler_io_extra_feedback_0_feedbackSlow_valid = io_scheExtra_feedback_0_feedbackSlow_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackSlow_bits_rsIdx = io_scheExtra_feedback_0_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackSlow_bits_hit = io_scheExtra_feedback_0_feedbackSlow_bits_hit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackSlow_bits_sourceType =
    io_scheExtra_feedback_0_feedbackSlow_bits_sourceType; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackSlow_bits_dataInvalidSqIdx_value =
    io_scheExtra_feedback_0_feedbackSlow_bits_dataInvalidSqIdx_value; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackFast_valid = io_scheExtra_feedback_0_feedbackFast_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackFast_bits_rsIdx = io_scheExtra_feedback_0_feedbackFast_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_0_feedbackFast_bits_sourceType =
    io_scheExtra_feedback_0_feedbackFast_bits_sourceType; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackSlow_valid = io_scheExtra_feedback_1_feedbackSlow_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackSlow_bits_rsIdx = io_scheExtra_feedback_1_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackSlow_bits_hit = io_scheExtra_feedback_1_feedbackSlow_bits_hit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackSlow_bits_sourceType =
    io_scheExtra_feedback_1_feedbackSlow_bits_sourceType; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackSlow_bits_dataInvalidSqIdx_value =
    io_scheExtra_feedback_1_feedbackSlow_bits_dataInvalidSqIdx_value; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackFast_valid = io_scheExtra_feedback_1_feedbackFast_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackFast_bits_rsIdx = io_scheExtra_feedback_1_feedbackFast_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_1_feedbackFast_bits_sourceType =
    io_scheExtra_feedback_1_feedbackFast_bits_sourceType; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_2_feedbackSlow_valid = io_scheExtra_feedback_2_feedbackSlow_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_2_feedbackSlow_bits_rsIdx = io_scheExtra_feedback_2_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_2_feedbackSlow_bits_hit = io_scheExtra_feedback_2_feedbackSlow_bits_hit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_3_feedbackSlow_valid = io_scheExtra_feedback_3_feedbackSlow_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_3_feedbackSlow_bits_rsIdx = io_scheExtra_feedback_3_feedbackSlow_bits_rsIdx; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_feedback_3_feedbackSlow_bits_hit = io_scheExtra_feedback_3_feedbackSlow_bits_hit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_fpRfReadIn_0_data = io_scheExtra_fpRfReadIn_0_data; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_fpRfReadIn_1_data = io_scheExtra_fpRfReadIn_1_data; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_jumpPc = io_scheExtra_jumpPc; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_jalr_target = io_scheExtra_jalr_target; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_stIssuePtr_flag = io_scheExtra_stIssuePtr_flag; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_stIssuePtr_value = io_scheExtra_stIssuePtr_value; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_lcommit = io_scheExtra_lcommit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_scommit = io_scheExtra_scommit; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_lqCancelCnt = io_scheExtra_lqCancelCnt; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_sqCancelCnt = io_scheExtra_sqCancelCnt; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_memWaitUpdateReq_staIssue_0_valid = io_scheExtra_memWaitUpdateReq_staIssue_0_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value =
    io_scheExtra_memWaitUpdateReq_staIssue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_memWaitUpdateReq_staIssue_1_valid = io_scheExtra_memWaitUpdateReq_staIssue_1_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value =
    io_scheExtra_memWaitUpdateReq_staIssue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_memWaitUpdateReq_stdIssue_0_valid = io_scheExtra_memWaitUpdateReq_stdIssue_0_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value =
    io_scheExtra_memWaitUpdateReq_stdIssue_0_bits_uop_sqIdx_value; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_memWaitUpdateReq_stdIssue_1_valid = io_scheExtra_memWaitUpdateReq_stdIssue_1_valid; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value =
    io_scheExtra_memWaitUpdateReq_stdIssue_1_bits_uop_sqIdx_value; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_0 = io_scheExtra_debug_int_rat_0; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_1 = io_scheExtra_debug_int_rat_1; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_2 = io_scheExtra_debug_int_rat_2; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_3 = io_scheExtra_debug_int_rat_3; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_4 = io_scheExtra_debug_int_rat_4; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_5 = io_scheExtra_debug_int_rat_5; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_6 = io_scheExtra_debug_int_rat_6; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_7 = io_scheExtra_debug_int_rat_7; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_8 = io_scheExtra_debug_int_rat_8; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_9 = io_scheExtra_debug_int_rat_9; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_10 = io_scheExtra_debug_int_rat_10; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_11 = io_scheExtra_debug_int_rat_11; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_12 = io_scheExtra_debug_int_rat_12; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_13 = io_scheExtra_debug_int_rat_13; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_14 = io_scheExtra_debug_int_rat_14; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_15 = io_scheExtra_debug_int_rat_15; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_16 = io_scheExtra_debug_int_rat_16; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_17 = io_scheExtra_debug_int_rat_17; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_18 = io_scheExtra_debug_int_rat_18; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_19 = io_scheExtra_debug_int_rat_19; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_20 = io_scheExtra_debug_int_rat_20; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_21 = io_scheExtra_debug_int_rat_21; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_22 = io_scheExtra_debug_int_rat_22; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_23 = io_scheExtra_debug_int_rat_23; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_24 = io_scheExtra_debug_int_rat_24; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_25 = io_scheExtra_debug_int_rat_25; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_26 = io_scheExtra_debug_int_rat_26; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_27 = io_scheExtra_debug_int_rat_27; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_28 = io_scheExtra_debug_int_rat_28; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_29 = io_scheExtra_debug_int_rat_29; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_30 = io_scheExtra_debug_int_rat_30; // @[ExuBlock.scala 93:22]
  assign scheduler_io_extra_debug_int_rat_31 = io_scheExtra_debug_int_rat_31; // @[ExuBlock.scala 93:22]
  assign fuBlock_clock = clock;
  assign fuBlock_reset = reset;
  assign fuBlock_io_redirect_valid = io_redirect_valid; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_redirect_bits_level = io_redirect_bits_level; // @[ExuBlock.scala 105:23]
  assign fuBlock_io_issue_0_valid = scheduler_io_issue_0_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pd_isRVC = scheduler_io_issue_0_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pd_brType = scheduler_io_issue_0_bits_uop_cf_pd_brType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pd_isCall = scheduler_io_issue_0_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pd_isRet = scheduler_io_issue_0_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_pred_taken = scheduler_io_issue_0_bits_uop_cf_pred_taken; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_0_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_ftqPtr_value = scheduler_io_issue_0_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_cf_ftqOffset = scheduler_io_issue_0_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fuType = scheduler_io_issue_0_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_fuOpType = scheduler_io_issue_0_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_ctrl_imm = scheduler_io_issue_0_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_robIdx_flag = scheduler_io_issue_0_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_uop_robIdx_value = scheduler_io_issue_0_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_src_0 = scheduler_io_issue_0_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_0_bits_src_1 = scheduler_io_issue_0_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_valid = scheduler_io_issue_1_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pd_isRVC = scheduler_io_issue_1_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pd_brType = scheduler_io_issue_1_bits_uop_cf_pd_brType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pd_isCall = scheduler_io_issue_1_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pd_isRet = scheduler_io_issue_1_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_pred_taken = scheduler_io_issue_1_bits_uop_cf_pred_taken; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_1_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_ftqPtr_value = scheduler_io_issue_1_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_cf_ftqOffset = scheduler_io_issue_1_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fuType = scheduler_io_issue_1_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_fuOpType = scheduler_io_issue_1_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_ctrl_imm = scheduler_io_issue_1_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_robIdx_flag = scheduler_io_issue_1_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_uop_robIdx_value = scheduler_io_issue_1_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_src_0 = scheduler_io_issue_1_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_1_bits_src_1 = scheduler_io_issue_1_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_valid = scheduler_io_issue_2_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_cf_pd_isRVC = scheduler_io_issue_2_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_cf_pd_brType = scheduler_io_issue_2_bits_uop_cf_pd_brType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_cf_pd_isCall = scheduler_io_issue_2_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_cf_pd_isRet = scheduler_io_issue_2_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_cf_pred_taken = scheduler_io_issue_2_bits_uop_cf_pred_taken; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_2_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_cf_ftqPtr_value = scheduler_io_issue_2_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_cf_ftqOffset = scheduler_io_issue_2_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_ctrl_fuType = scheduler_io_issue_2_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_ctrl_fuOpType = scheduler_io_issue_2_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_ctrl_imm = scheduler_io_issue_2_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_robIdx_flag = scheduler_io_issue_2_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_uop_robIdx_value = scheduler_io_issue_2_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_src_0 = scheduler_io_issue_2_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_2_bits_src_1 = scheduler_io_issue_2_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_valid = scheduler_io_issue_3_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pd_isRVC = scheduler_io_issue_3_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pd_brType = scheduler_io_issue_3_bits_uop_cf_pd_brType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pd_isCall = scheduler_io_issue_3_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pd_isRet = scheduler_io_issue_3_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_pred_taken = scheduler_io_issue_3_bits_uop_cf_pred_taken; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_3_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_ftqPtr_value = scheduler_io_issue_3_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_cf_ftqOffset = scheduler_io_issue_3_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fuType = scheduler_io_issue_3_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_fuOpType = scheduler_io_issue_3_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_ctrl_imm = scheduler_io_issue_3_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_robIdx_flag = scheduler_io_issue_3_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_uop_robIdx_value = scheduler_io_issue_3_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_src_0 = scheduler_io_issue_3_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_3_bits_src_1 = scheduler_io_issue_3_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_valid = scheduler_io_issue_4_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_0 = scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_1 = scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_2 = scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_3 = scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_4 = scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_cf_trigger_backendHit_5 = scheduler_io_issue_4_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_ctrl_fuType = scheduler_io_issue_4_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_ctrl_fuOpType = scheduler_io_issue_4_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_ctrl_rfWen = scheduler_io_issue_4_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_ctrl_fpWen = scheduler_io_issue_4_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_pdest = scheduler_io_issue_4_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_robIdx_flag = scheduler_io_issue_4_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_uop_robIdx_value = scheduler_io_issue_4_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_src_0 = scheduler_io_issue_4_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_4_bits_src_1 = scheduler_io_issue_4_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_valid = scheduler_io_issue_5_valid; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_pc = scheduler_io_issue_5_bits_uop_cf_pc; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_0 = scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_1 = scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_2 = scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_3 = scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_4 = scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_trigger_backendHit_5 = scheduler_io_issue_5_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_pd_isRVC = scheduler_io_issue_5_bits_uop_cf_pd_isRVC; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_pd_brType = scheduler_io_issue_5_bits_uop_cf_pd_brType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_pd_isCall = scheduler_io_issue_5_bits_uop_cf_pd_isCall; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_pd_isRet = scheduler_io_issue_5_bits_uop_cf_pd_isRet; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_pred_taken = scheduler_io_issue_5_bits_uop_cf_pred_taken; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_ftqPtr_flag = scheduler_io_issue_5_bits_uop_cf_ftqPtr_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_ftqPtr_value = scheduler_io_issue_5_bits_uop_cf_ftqPtr_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_cf_ftqOffset = scheduler_io_issue_5_bits_uop_cf_ftqOffset; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_fuType = scheduler_io_issue_5_bits_uop_ctrl_fuType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_fuOpType = scheduler_io_issue_5_bits_uop_ctrl_fuOpType; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_rfWen = scheduler_io_issue_5_bits_uop_ctrl_rfWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_fpWen = scheduler_io_issue_5_bits_uop_ctrl_fpWen; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_imm = scheduler_io_issue_5_bits_uop_ctrl_imm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_fpu_typeTagOut = scheduler_io_issue_5_bits_uop_ctrl_fpu_typeTagOut; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_fpu_fromInt = scheduler_io_issue_5_bits_uop_ctrl_fpu_fromInt; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_fpu_wflags = scheduler_io_issue_5_bits_uop_ctrl_fpu_wflags; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_fpu_typ = scheduler_io_issue_5_bits_uop_ctrl_fpu_typ; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_ctrl_fpu_rm = scheduler_io_issue_5_bits_uop_ctrl_fpu_rm; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_pdest = scheduler_io_issue_5_bits_uop_pdest; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_robIdx_flag = scheduler_io_issue_5_bits_uop_robIdx_flag; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_uop_robIdx_value = scheduler_io_issue_5_bits_uop_robIdx_value; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_src_0 = scheduler_io_issue_5_bits_src_0; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_issue_5_bits_src_1 = scheduler_io_issue_5_bits_src_1; // @[ExuBlock.scala 99:22]
  assign fuBlock_io_writeback_5_ready = io_fuWriteback_5_ready; // @[ExuBlock.scala 106:24]
  assign fuBlock_io_extra_csrio_hartId = io_fuExtra_csrio_hartId; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_0_value = io_fuExtra_csrio_perf_perfEventsFrontend_0_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_1_value = io_fuExtra_csrio_perf_perfEventsFrontend_1_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_2_value = io_fuExtra_csrio_perf_perfEventsFrontend_2_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_3_value = io_fuExtra_csrio_perf_perfEventsFrontend_3_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_4_value = io_fuExtra_csrio_perf_perfEventsFrontend_4_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_5_value = io_fuExtra_csrio_perf_perfEventsFrontend_5_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_6_value = io_fuExtra_csrio_perf_perfEventsFrontend_6_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsFrontend_7_value = io_fuExtra_csrio_perf_perfEventsFrontend_7_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_0_value = io_fuExtra_csrio_perf_perfEventsCtrl_0_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_1_value = io_fuExtra_csrio_perf_perfEventsCtrl_1_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_2_value = io_fuExtra_csrio_perf_perfEventsCtrl_2_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_3_value = io_fuExtra_csrio_perf_perfEventsCtrl_3_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_4_value = io_fuExtra_csrio_perf_perfEventsCtrl_4_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_5_value = io_fuExtra_csrio_perf_perfEventsCtrl_5_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_6_value = io_fuExtra_csrio_perf_perfEventsCtrl_6_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsCtrl_7_value = io_fuExtra_csrio_perf_perfEventsCtrl_7_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_0_value = io_fuExtra_csrio_perf_perfEventsLsu_0_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_1_value = io_fuExtra_csrio_perf_perfEventsLsu_1_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_2_value = io_fuExtra_csrio_perf_perfEventsLsu_2_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_3_value = io_fuExtra_csrio_perf_perfEventsLsu_3_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_4_value = io_fuExtra_csrio_perf_perfEventsLsu_4_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_5_value = io_fuExtra_csrio_perf_perfEventsLsu_5_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_6_value = io_fuExtra_csrio_perf_perfEventsLsu_6_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsLsu_7_value = io_fuExtra_csrio_perf_perfEventsLsu_7_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_0_value = io_fuExtra_csrio_perf_perfEventsHc_0_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_1_value = io_fuExtra_csrio_perf_perfEventsHc_1_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_2_value = io_fuExtra_csrio_perf_perfEventsHc_2_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_3_value = io_fuExtra_csrio_perf_perfEventsHc_3_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_4_value = io_fuExtra_csrio_perf_perfEventsHc_4_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_5_value = io_fuExtra_csrio_perf_perfEventsHc_5_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_6_value = io_fuExtra_csrio_perf_perfEventsHc_6_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_7_value = io_fuExtra_csrio_perf_perfEventsHc_7_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_8_value = io_fuExtra_csrio_perf_perfEventsHc_8_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_9_value = io_fuExtra_csrio_perf_perfEventsHc_9_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_10_value = io_fuExtra_csrio_perf_perfEventsHc_10_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_11_value = io_fuExtra_csrio_perf_perfEventsHc_11_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_12_value = io_fuExtra_csrio_perf_perfEventsHc_12_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_13_value = io_fuExtra_csrio_perf_perfEventsHc_13_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_14_value = io_fuExtra_csrio_perf_perfEventsHc_14_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_15_value = io_fuExtra_csrio_perf_perfEventsHc_15_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_16_value = io_fuExtra_csrio_perf_perfEventsHc_16_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_17_value = io_fuExtra_csrio_perf_perfEventsHc_17_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_18_value = io_fuExtra_csrio_perf_perfEventsHc_18_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_19_value = io_fuExtra_csrio_perf_perfEventsHc_19_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_20_value = io_fuExtra_csrio_perf_perfEventsHc_20_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_21_value = io_fuExtra_csrio_perf_perfEventsHc_21_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_22_value = io_fuExtra_csrio_perf_perfEventsHc_22_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_23_value = io_fuExtra_csrio_perf_perfEventsHc_23_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_24_value = io_fuExtra_csrio_perf_perfEventsHc_24_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_25_value = io_fuExtra_csrio_perf_perfEventsHc_25_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_26_value = io_fuExtra_csrio_perf_perfEventsHc_26_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_27_value = io_fuExtra_csrio_perf_perfEventsHc_27_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_28_value = io_fuExtra_csrio_perf_perfEventsHc_28_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_29_value = io_fuExtra_csrio_perf_perfEventsHc_29_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_30_value = io_fuExtra_csrio_perf_perfEventsHc_30_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_31_value = io_fuExtra_csrio_perf_perfEventsHc_31_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_32_value = io_fuExtra_csrio_perf_perfEventsHc_32_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_33_value = io_fuExtra_csrio_perf_perfEventsHc_33_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_34_value = io_fuExtra_csrio_perf_perfEventsHc_34_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_35_value = io_fuExtra_csrio_perf_perfEventsHc_35_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_36_value = io_fuExtra_csrio_perf_perfEventsHc_36_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_37_value = io_fuExtra_csrio_perf_perfEventsHc_37_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_38_value = io_fuExtra_csrio_perf_perfEventsHc_38_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_39_value = io_fuExtra_csrio_perf_perfEventsHc_39_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_40_value = io_fuExtra_csrio_perf_perfEventsHc_40_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_41_value = io_fuExtra_csrio_perf_perfEventsHc_41_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_42_value = io_fuExtra_csrio_perf_perfEventsHc_42_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_43_value = io_fuExtra_csrio_perf_perfEventsHc_43_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_44_value = io_fuExtra_csrio_perf_perfEventsHc_44_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_45_value = io_fuExtra_csrio_perf_perfEventsHc_45_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_46_value = io_fuExtra_csrio_perf_perfEventsHc_46_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_47_value = io_fuExtra_csrio_perf_perfEventsHc_47_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_48_value = io_fuExtra_csrio_perf_perfEventsHc_48_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_perfEventsHc_49_value = io_fuExtra_csrio_perf_perfEventsHc_49_value; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_perf_retiredInstr = io_fuExtra_csrio_perf_retiredInstr; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_fpu_fflags_valid = io_fuExtra_csrio_fpu_fflags_valid; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_fpu_fflags_bits = io_fuExtra_csrio_fpu_fflags_bits; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_fpu_dirty_fs = io_fuExtra_csrio_fpu_dirty_fs; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_valid = io_fuExtra_csrio_exception_valid; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_pc = io_fuExtra_csrio_exception_bits_uop_cf_pc; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_0 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_0; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_1 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_1; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_2 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_2; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_3 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_3; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_4 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_4; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_5 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_5; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_6 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_6; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_7 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_7; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_8 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_8; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_9 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_9; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_11 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_11; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_12 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_12; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_13 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_13; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_exceptionVec_15 =
    io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_15; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_0 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_1 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_2 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_frontendHit_3 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_0 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_1 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_2 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_3 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_4 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_trigger_backendHit_5 =
    io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_cf_crossPageIPFFix =
    io_fuExtra_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_uop_ctrl_singleStep = io_fuExtra_csrio_exception_bits_uop_ctrl_singleStep
    ; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_exception_bits_isInterrupt = io_fuExtra_csrio_exception_bits_isInterrupt; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_memExceptionVAddr = io_fuExtra_csrio_memExceptionVAddr; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_mtip = io_fuExtra_csrio_externalInterrupt_mtip; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_msip = io_fuExtra_csrio_externalInterrupt_msip; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_meip = io_fuExtra_csrio_externalInterrupt_meip; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_seip = io_fuExtra_csrio_externalInterrupt_seip; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_externalInterrupt_debug = io_fuExtra_csrio_externalInterrupt_debug; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_0_wvalid = io_fuExtra_csrio_distributedUpdate_0_wvalid; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_0_waddr = io_fuExtra_csrio_distributedUpdate_0_waddr; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_0_wdata = io_fuExtra_csrio_distributedUpdate_0_wdata; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_1_wvalid = io_fuExtra_csrio_distributedUpdate_1_wvalid; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_1_waddr = io_fuExtra_csrio_distributedUpdate_1_waddr; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_csrio_distributedUpdate_1_wdata = io_fuExtra_csrio_distributedUpdate_1_wdata; // @[ExuBlock.scala 107:20]
  assign fuBlock_io_extra_fenceio_sbuffer_sbIsEmpty = io_fuExtra_fenceio_sbuffer_sbIsEmpty; // @[ExuBlock.scala 107:20]
  always @(posedge clock) begin
    io_perf_0_value_REG <= scheduler_io_perf_0_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_1_value_REG <= scheduler_io_perf_1_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_2_value_REG <= scheduler_io_perf_2_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_3_value_REG <= scheduler_io_perf_3_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_4_value_REG <= scheduler_io_perf_4_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_5_value_REG <= scheduler_io_perf_5_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_6_value_REG <= scheduler_io_perf_6_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_7_value_REG <= scheduler_io_perf_7_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_8_value_REG <= scheduler_io_perf_8_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_9_value_REG <= scheduler_io_perf_9_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_10_value_REG <= scheduler_io_perf_10_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_11_value_REG <= scheduler_io_perf_11_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_perf_12_value_REG <= scheduler_io_perf_12_value; // @[PerfCounterUtils.scala 189:35]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 189:27]
    io_fuWriteback_0_valid_REG <= scheduler_io_fastUopOut_0_valid & ~isFlushed; // @[ExuBlock.scala 169:47]
    io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_0 <= scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:32]
    io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_1 <= scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:32]
    io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_2 <= scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:32]
    io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_3 <= scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:32]
    io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_4 <= scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:32]
    io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_5 <= scheduler_io_fastUopOut_0_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:32]
    io_fuWriteback_0_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_0_bits_ctrl_rfWen; // @[ExuBlock.scala 170:32]
    io_fuWriteback_0_bits_uop_REG_pdest <= scheduler_io_fastUopOut_0_bits_pdest; // @[ExuBlock.scala 170:32]
    io_fuWriteback_0_bits_uop_REG_robIdx_flag <= scheduler_io_fastUopOut_0_bits_robIdx_flag; // @[ExuBlock.scala 170:32]
    io_fuWriteback_0_bits_uop_REG_robIdx_value <= scheduler_io_fastUopOut_0_bits_robIdx_value; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_valid_REG <= scheduler_io_fastUopOut_1_valid & ~isFlushed_1; // @[ExuBlock.scala 169:47]
    io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_0 <= scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_1 <= scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_2 <= scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_3 <= scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_4 <= scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_5 <= scheduler_io_fastUopOut_1_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_1_bits_ctrl_rfWen; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_bits_uop_REG_pdest <= scheduler_io_fastUopOut_1_bits_pdest; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_bits_uop_REG_robIdx_flag <= scheduler_io_fastUopOut_1_bits_robIdx_flag; // @[ExuBlock.scala 170:32]
    io_fuWriteback_1_bits_uop_REG_robIdx_value <= scheduler_io_fastUopOut_1_bits_robIdx_value; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_valid_REG <= scheduler_io_fastUopOut_2_valid & ~isFlushed_2; // @[ExuBlock.scala 169:47]
    io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_0 <= scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_1 <= scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_2 <= scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_3 <= scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_4 <= scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_5 <= scheduler_io_fastUopOut_2_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_2_bits_ctrl_rfWen; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_bits_uop_REG_pdest <= scheduler_io_fastUopOut_2_bits_pdest; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_bits_uop_REG_robIdx_flag <= scheduler_io_fastUopOut_2_bits_robIdx_flag; // @[ExuBlock.scala 170:32]
    io_fuWriteback_2_bits_uop_REG_robIdx_value <= scheduler_io_fastUopOut_2_bits_robIdx_value; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_valid_REG <= scheduler_io_fastUopOut_3_valid & ~isFlushed_3; // @[ExuBlock.scala 169:47]
    io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_0 <= scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_0; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_1 <= scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_1; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_2 <= scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_2; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_3 <= scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_3; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_4 <= scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_4; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_5 <= scheduler_io_fastUopOut_3_bits_cf_trigger_backendHit_5; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_3_bits_ctrl_rfWen; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_bits_uop_REG_pdest <= scheduler_io_fastUopOut_3_bits_pdest; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_bits_uop_REG_robIdx_flag <= scheduler_io_fastUopOut_3_bits_robIdx_flag; // @[ExuBlock.scala 170:32]
    io_fuWriteback_3_bits_uop_REG_robIdx_value <= scheduler_io_fastUopOut_3_bits_robIdx_value; // @[ExuBlock.scala 170:32]
    scheduler_io_writeback_0_valid_REG <= scheduler_io_fastUopOut_0_valid & _io_fuWriteback_0_valid_T; // @[ExuBlock.scala 193:64]
    scheduler_io_writeback_0_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_0_bits_ctrl_rfWen; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_0_bits_uop_REG_ctrl_fpWen <= scheduler_io_fastUopOut_0_bits_ctrl_fpWen; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_0_bits_uop_REG_pdest <= scheduler_io_fastUopOut_0_bits_pdest; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_1_valid_REG <= scheduler_io_fastUopOut_1_valid & _io_fuWriteback_1_valid_T; // @[ExuBlock.scala 193:64]
    scheduler_io_writeback_1_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_1_bits_ctrl_rfWen; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_1_bits_uop_REG_ctrl_fpWen <= scheduler_io_fastUopOut_1_bits_ctrl_fpWen; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_1_bits_uop_REG_pdest <= scheduler_io_fastUopOut_1_bits_pdest; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_2_valid_REG <= scheduler_io_fastUopOut_2_valid & _io_fuWriteback_2_valid_T; // @[ExuBlock.scala 193:64]
    scheduler_io_writeback_2_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_2_bits_ctrl_rfWen; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_2_bits_uop_REG_ctrl_fpWen <= scheduler_io_fastUopOut_2_bits_ctrl_fpWen; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_2_bits_uop_REG_pdest <= scheduler_io_fastUopOut_2_bits_pdest; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_3_valid_REG <= scheduler_io_fastUopOut_3_valid & _io_fuWriteback_3_valid_T; // @[ExuBlock.scala 193:64]
    scheduler_io_writeback_3_bits_uop_REG_ctrl_rfWen <= scheduler_io_fastUopOut_3_bits_ctrl_rfWen; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_3_bits_uop_REG_ctrl_fpWen <= scheduler_io_fastUopOut_3_bits_ctrl_fpWen; // @[ExuBlock.scala 194:33]
    scheduler_io_writeback_3_bits_uop_REG_pdest <= scheduler_io_fastUopOut_3_bits_pdest; // @[ExuBlock.scala 194:33]
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
  io_perf_0_value_REG = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_fuWriteback_0_valid_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_0 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_1 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_2 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_3 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_4 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_cf_trigger_backendHit_5 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_ctrl_rfWen = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_pdest = _RAND_34[6:0];
  _RAND_35 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_robIdx_flag = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_fuWriteback_0_bits_uop_REG_robIdx_value = _RAND_36[6:0];
  _RAND_37 = {1{`RANDOM}};
  io_fuWriteback_1_valid_REG = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_0 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_1 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_2 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_3 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_4 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_cf_trigger_backendHit_5 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_ctrl_rfWen = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_pdest = _RAND_45[6:0];
  _RAND_46 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_robIdx_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  io_fuWriteback_1_bits_uop_REG_robIdx_value = _RAND_47[6:0];
  _RAND_48 = {1{`RANDOM}};
  io_fuWriteback_2_valid_REG = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_1 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_2 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_3 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_4 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_cf_trigger_backendHit_5 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_ctrl_rfWen = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_pdest = _RAND_56[6:0];
  _RAND_57 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_robIdx_flag = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  io_fuWriteback_2_bits_uop_REG_robIdx_value = _RAND_58[6:0];
  _RAND_59 = {1{`RANDOM}};
  io_fuWriteback_3_valid_REG = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_0 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_1 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_2 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_3 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_4 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_cf_trigger_backendHit_5 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_ctrl_rfWen = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_pdest = _RAND_67[6:0];
  _RAND_68 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_robIdx_flag = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  io_fuWriteback_3_bits_uop_REG_robIdx_value = _RAND_69[6:0];
  _RAND_70 = {1{`RANDOM}};
  scheduler_io_writeback_0_valid_REG = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  scheduler_io_writeback_0_bits_uop_REG_ctrl_rfWen = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  scheduler_io_writeback_0_bits_uop_REG_ctrl_fpWen = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  scheduler_io_writeback_0_bits_uop_REG_pdest = _RAND_73[6:0];
  _RAND_74 = {1{`RANDOM}};
  scheduler_io_writeback_1_valid_REG = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  scheduler_io_writeback_1_bits_uop_REG_ctrl_rfWen = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  scheduler_io_writeback_1_bits_uop_REG_ctrl_fpWen = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  scheduler_io_writeback_1_bits_uop_REG_pdest = _RAND_77[6:0];
  _RAND_78 = {1{`RANDOM}};
  scheduler_io_writeback_2_valid_REG = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  scheduler_io_writeback_2_bits_uop_REG_ctrl_rfWen = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  scheduler_io_writeback_2_bits_uop_REG_ctrl_fpWen = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  scheduler_io_writeback_2_bits_uop_REG_pdest = _RAND_81[6:0];
  _RAND_82 = {1{`RANDOM}};
  scheduler_io_writeback_3_valid_REG = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  scheduler_io_writeback_3_bits_uop_REG_ctrl_rfWen = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  scheduler_io_writeback_3_bits_uop_REG_ctrl_fpWen = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  scheduler_io_writeback_3_bits_uop_REG_pdest = _RAND_85[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
