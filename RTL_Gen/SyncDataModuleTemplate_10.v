module SyncDataModuleTemplate_10(
  input         clock,
  input  [3:0]  io_raddr_0,
  input  [3:0]  io_raddr_1,
  input  [3:0]  io_raddr_2,
  input  [3:0]  io_raddr_3,
  output        io_rdata_0_cf_trigger_backendEn_0,
  output        io_rdata_0_cf_trigger_backendEn_1,
  output        io_rdata_0_cf_trigger_backendHit_0,
  output        io_rdata_0_cf_trigger_backendHit_1,
  output        io_rdata_0_cf_trigger_backendHit_2,
  output        io_rdata_0_cf_trigger_backendHit_3,
  output        io_rdata_0_cf_trigger_backendHit_4,
  output        io_rdata_0_cf_trigger_backendHit_5,
  output        io_rdata_0_cf_pd_isRVC,
  output [1:0]  io_rdata_0_cf_pd_brType,
  output        io_rdata_0_cf_pd_isCall,
  output        io_rdata_0_cf_pd_isRet,
  output        io_rdata_0_cf_pred_taken,
  output [6:0]  io_rdata_0_cf_waitForRobIdx_value,
  output        io_rdata_0_cf_loadWaitBit,
  output        io_rdata_0_cf_loadWaitStrict,
  output [4:0]  io_rdata_0_cf_ssid,
  output        io_rdata_0_cf_ftqPtr_flag,
  output [5:0]  io_rdata_0_cf_ftqPtr_value,
  output [2:0]  io_rdata_0_cf_ftqOffset,
  output [1:0]  io_rdata_0_ctrl_srcType_0,
  output [1:0]  io_rdata_0_ctrl_srcType_1,
  output [1:0]  io_rdata_0_ctrl_srcType_2,
  output [3:0]  io_rdata_0_ctrl_fuType,
  output [6:0]  io_rdata_0_ctrl_fuOpType,
  output        io_rdata_0_ctrl_rfWen,
  output        io_rdata_0_ctrl_fpWen,
  output [3:0]  io_rdata_0_ctrl_selImm,
  output [19:0] io_rdata_0_ctrl_imm,
  output        io_rdata_0_ctrl_fpu_isAddSub,
  output        io_rdata_0_ctrl_fpu_typeTagIn,
  output        io_rdata_0_ctrl_fpu_typeTagOut,
  output        io_rdata_0_ctrl_fpu_fromInt,
  output        io_rdata_0_ctrl_fpu_wflags,
  output        io_rdata_0_ctrl_fpu_fpWen,
  output [1:0]  io_rdata_0_ctrl_fpu_fmaCmd,
  output        io_rdata_0_ctrl_fpu_div,
  output        io_rdata_0_ctrl_fpu_sqrt,
  output        io_rdata_0_ctrl_fpu_fcvt,
  output [1:0]  io_rdata_0_ctrl_fpu_typ,
  output [1:0]  io_rdata_0_ctrl_fpu_fmt,
  output        io_rdata_0_ctrl_fpu_ren3,
  output [2:0]  io_rdata_0_ctrl_fpu_rm,
  output [6:0]  io_rdata_0_psrc_0,
  output [6:0]  io_rdata_0_psrc_1,
  output [6:0]  io_rdata_0_psrc_2,
  output [6:0]  io_rdata_0_pdest,
  output        io_rdata_0_lqIdx_flag,
  output [5:0]  io_rdata_0_lqIdx_value,
  output        io_rdata_0_sqIdx_flag,
  output [4:0]  io_rdata_0_sqIdx_value,
  output        io_rdata_1_cf_trigger_backendEn_0,
  output        io_rdata_1_cf_trigger_backendEn_1,
  output        io_rdata_1_cf_trigger_backendHit_0,
  output        io_rdata_1_cf_trigger_backendHit_1,
  output        io_rdata_1_cf_trigger_backendHit_2,
  output        io_rdata_1_cf_trigger_backendHit_3,
  output        io_rdata_1_cf_trigger_backendHit_4,
  output        io_rdata_1_cf_trigger_backendHit_5,
  output        io_rdata_1_cf_pd_isRVC,
  output [1:0]  io_rdata_1_cf_pd_brType,
  output        io_rdata_1_cf_pd_isCall,
  output        io_rdata_1_cf_pd_isRet,
  output        io_rdata_1_cf_pred_taken,
  output [6:0]  io_rdata_1_cf_waitForRobIdx_value,
  output        io_rdata_1_cf_loadWaitBit,
  output        io_rdata_1_cf_loadWaitStrict,
  output [4:0]  io_rdata_1_cf_ssid,
  output        io_rdata_1_cf_ftqPtr_flag,
  output [5:0]  io_rdata_1_cf_ftqPtr_value,
  output [2:0]  io_rdata_1_cf_ftqOffset,
  output [1:0]  io_rdata_1_ctrl_srcType_0,
  output [1:0]  io_rdata_1_ctrl_srcType_1,
  output [1:0]  io_rdata_1_ctrl_srcType_2,
  output [3:0]  io_rdata_1_ctrl_fuType,
  output [6:0]  io_rdata_1_ctrl_fuOpType,
  output        io_rdata_1_ctrl_rfWen,
  output        io_rdata_1_ctrl_fpWen,
  output [3:0]  io_rdata_1_ctrl_selImm,
  output [19:0] io_rdata_1_ctrl_imm,
  output        io_rdata_1_ctrl_fpu_isAddSub,
  output        io_rdata_1_ctrl_fpu_typeTagIn,
  output        io_rdata_1_ctrl_fpu_typeTagOut,
  output        io_rdata_1_ctrl_fpu_fromInt,
  output        io_rdata_1_ctrl_fpu_wflags,
  output        io_rdata_1_ctrl_fpu_fpWen,
  output [1:0]  io_rdata_1_ctrl_fpu_fmaCmd,
  output        io_rdata_1_ctrl_fpu_div,
  output        io_rdata_1_ctrl_fpu_sqrt,
  output        io_rdata_1_ctrl_fpu_fcvt,
  output [1:0]  io_rdata_1_ctrl_fpu_typ,
  output [1:0]  io_rdata_1_ctrl_fpu_fmt,
  output        io_rdata_1_ctrl_fpu_ren3,
  output [2:0]  io_rdata_1_ctrl_fpu_rm,
  output [6:0]  io_rdata_1_psrc_0,
  output [6:0]  io_rdata_1_psrc_1,
  output [6:0]  io_rdata_1_psrc_2,
  output [6:0]  io_rdata_1_pdest,
  output        io_rdata_1_lqIdx_flag,
  output [5:0]  io_rdata_1_lqIdx_value,
  output        io_rdata_1_sqIdx_flag,
  output [4:0]  io_rdata_1_sqIdx_value,
  output        io_rdata_2_cf_trigger_backendEn_0,
  output        io_rdata_2_cf_trigger_backendEn_1,
  output        io_rdata_2_cf_trigger_backendHit_0,
  output        io_rdata_2_cf_trigger_backendHit_1,
  output        io_rdata_2_cf_trigger_backendHit_2,
  output        io_rdata_2_cf_trigger_backendHit_3,
  output        io_rdata_2_cf_trigger_backendHit_4,
  output        io_rdata_2_cf_trigger_backendHit_5,
  output        io_rdata_2_cf_pd_isRVC,
  output [1:0]  io_rdata_2_cf_pd_brType,
  output        io_rdata_2_cf_pd_isCall,
  output        io_rdata_2_cf_pd_isRet,
  output        io_rdata_2_cf_pred_taken,
  output [6:0]  io_rdata_2_cf_waitForRobIdx_value,
  output        io_rdata_2_cf_loadWaitBit,
  output        io_rdata_2_cf_loadWaitStrict,
  output [4:0]  io_rdata_2_cf_ssid,
  output        io_rdata_2_cf_ftqPtr_flag,
  output [5:0]  io_rdata_2_cf_ftqPtr_value,
  output [2:0]  io_rdata_2_cf_ftqOffset,
  output [1:0]  io_rdata_2_ctrl_srcType_0,
  output [1:0]  io_rdata_2_ctrl_srcType_1,
  output [3:0]  io_rdata_2_ctrl_fuType,
  output [6:0]  io_rdata_2_ctrl_fuOpType,
  output        io_rdata_2_ctrl_rfWen,
  output        io_rdata_2_ctrl_fpWen,
  output [3:0]  io_rdata_2_ctrl_selImm,
  output [19:0] io_rdata_2_ctrl_imm,
  output        io_rdata_2_ctrl_fpu_isAddSub,
  output        io_rdata_2_ctrl_fpu_typeTagIn,
  output        io_rdata_2_ctrl_fpu_typeTagOut,
  output        io_rdata_2_ctrl_fpu_fromInt,
  output        io_rdata_2_ctrl_fpu_wflags,
  output        io_rdata_2_ctrl_fpu_fpWen,
  output [1:0]  io_rdata_2_ctrl_fpu_fmaCmd,
  output        io_rdata_2_ctrl_fpu_div,
  output        io_rdata_2_ctrl_fpu_sqrt,
  output        io_rdata_2_ctrl_fpu_fcvt,
  output [1:0]  io_rdata_2_ctrl_fpu_typ,
  output [1:0]  io_rdata_2_ctrl_fpu_fmt,
  output        io_rdata_2_ctrl_fpu_ren3,
  output [2:0]  io_rdata_2_ctrl_fpu_rm,
  output [6:0]  io_rdata_2_psrc_0,
  output [6:0]  io_rdata_2_psrc_1,
  output [6:0]  io_rdata_2_pdest,
  output        io_rdata_2_lqIdx_flag,
  output [5:0]  io_rdata_2_lqIdx_value,
  output        io_rdata_2_sqIdx_flag,
  output [4:0]  io_rdata_2_sqIdx_value,
  output        io_rdata_3_cf_trigger_backendEn_0,
  output        io_rdata_3_cf_trigger_backendEn_1,
  output        io_rdata_3_cf_trigger_backendHit_0,
  output        io_rdata_3_cf_trigger_backendHit_1,
  output        io_rdata_3_cf_trigger_backendHit_2,
  output        io_rdata_3_cf_trigger_backendHit_3,
  output        io_rdata_3_cf_trigger_backendHit_4,
  output        io_rdata_3_cf_trigger_backendHit_5,
  output        io_rdata_3_cf_pd_isRVC,
  output [1:0]  io_rdata_3_cf_pd_brType,
  output        io_rdata_3_cf_pd_isCall,
  output        io_rdata_3_cf_pd_isRet,
  output        io_rdata_3_cf_pred_taken,
  output [6:0]  io_rdata_3_cf_waitForRobIdx_value,
  output        io_rdata_3_cf_loadWaitBit,
  output        io_rdata_3_cf_loadWaitStrict,
  output [4:0]  io_rdata_3_cf_ssid,
  output        io_rdata_3_cf_ftqPtr_flag,
  output [5:0]  io_rdata_3_cf_ftqPtr_value,
  output [2:0]  io_rdata_3_cf_ftqOffset,
  output [1:0]  io_rdata_3_ctrl_srcType_0,
  output [1:0]  io_rdata_3_ctrl_srcType_1,
  output [3:0]  io_rdata_3_ctrl_fuType,
  output [6:0]  io_rdata_3_ctrl_fuOpType,
  output        io_rdata_3_ctrl_rfWen,
  output        io_rdata_3_ctrl_fpWen,
  output [3:0]  io_rdata_3_ctrl_selImm,
  output [19:0] io_rdata_3_ctrl_imm,
  output        io_rdata_3_ctrl_fpu_isAddSub,
  output        io_rdata_3_ctrl_fpu_typeTagIn,
  output        io_rdata_3_ctrl_fpu_typeTagOut,
  output        io_rdata_3_ctrl_fpu_fromInt,
  output        io_rdata_3_ctrl_fpu_wflags,
  output        io_rdata_3_ctrl_fpu_fpWen,
  output [1:0]  io_rdata_3_ctrl_fpu_fmaCmd,
  output        io_rdata_3_ctrl_fpu_div,
  output        io_rdata_3_ctrl_fpu_sqrt,
  output        io_rdata_3_ctrl_fpu_fcvt,
  output [1:0]  io_rdata_3_ctrl_fpu_typ,
  output [1:0]  io_rdata_3_ctrl_fpu_fmt,
  output        io_rdata_3_ctrl_fpu_ren3,
  output [2:0]  io_rdata_3_ctrl_fpu_rm,
  output [6:0]  io_rdata_3_psrc_0,
  output [6:0]  io_rdata_3_psrc_1,
  output [6:0]  io_rdata_3_pdest,
  output        io_rdata_3_lqIdx_flag,
  output [5:0]  io_rdata_3_lqIdx_value,
  output        io_rdata_3_sqIdx_flag,
  output [4:0]  io_rdata_3_sqIdx_value,
  input         io_wen_0,
  input         io_wen_1,
  input         io_wen_2,
  input         io_wen_3,
  input  [3:0]  io_waddr_0,
  input  [3:0]  io_waddr_1,
  input  [3:0]  io_waddr_2,
  input  [3:0]  io_waddr_3,
  input         io_wdata_0_cf_trigger_backendEn_0,
  input         io_wdata_0_cf_trigger_backendEn_1,
  input         io_wdata_0_cf_trigger_backendHit_0,
  input         io_wdata_0_cf_trigger_backendHit_1,
  input         io_wdata_0_cf_trigger_backendHit_2,
  input         io_wdata_0_cf_trigger_backendHit_3,
  input         io_wdata_0_cf_trigger_backendHit_4,
  input         io_wdata_0_cf_trigger_backendHit_5,
  input         io_wdata_0_cf_pd_isRVC,
  input  [1:0]  io_wdata_0_cf_pd_brType,
  input         io_wdata_0_cf_pd_isCall,
  input         io_wdata_0_cf_pd_isRet,
  input         io_wdata_0_cf_pred_taken,
  input  [6:0]  io_wdata_0_cf_waitForRobIdx_value,
  input         io_wdata_0_cf_loadWaitBit,
  input         io_wdata_0_cf_loadWaitStrict,
  input  [4:0]  io_wdata_0_cf_ssid,
  input         io_wdata_0_cf_ftqPtr_flag,
  input  [5:0]  io_wdata_0_cf_ftqPtr_value,
  input  [2:0]  io_wdata_0_cf_ftqOffset,
  input  [1:0]  io_wdata_0_ctrl_srcType_0,
  input  [1:0]  io_wdata_0_ctrl_srcType_1,
  input  [1:0]  io_wdata_0_ctrl_srcType_2,
  input  [3:0]  io_wdata_0_ctrl_fuType,
  input  [6:0]  io_wdata_0_ctrl_fuOpType,
  input         io_wdata_0_ctrl_rfWen,
  input         io_wdata_0_ctrl_fpWen,
  input  [3:0]  io_wdata_0_ctrl_selImm,
  input  [19:0] io_wdata_0_ctrl_imm,
  input         io_wdata_0_ctrl_fpu_isAddSub,
  input         io_wdata_0_ctrl_fpu_typeTagIn,
  input         io_wdata_0_ctrl_fpu_typeTagOut,
  input         io_wdata_0_ctrl_fpu_fromInt,
  input         io_wdata_0_ctrl_fpu_wflags,
  input         io_wdata_0_ctrl_fpu_fpWen,
  input  [1:0]  io_wdata_0_ctrl_fpu_fmaCmd,
  input         io_wdata_0_ctrl_fpu_div,
  input         io_wdata_0_ctrl_fpu_sqrt,
  input         io_wdata_0_ctrl_fpu_fcvt,
  input  [1:0]  io_wdata_0_ctrl_fpu_typ,
  input  [1:0]  io_wdata_0_ctrl_fpu_fmt,
  input         io_wdata_0_ctrl_fpu_ren3,
  input  [2:0]  io_wdata_0_ctrl_fpu_rm,
  input  [6:0]  io_wdata_0_psrc_0,
  input  [6:0]  io_wdata_0_psrc_1,
  input  [6:0]  io_wdata_0_psrc_2,
  input  [6:0]  io_wdata_0_pdest,
  input         io_wdata_1_cf_trigger_backendEn_0,
  input         io_wdata_1_cf_trigger_backendEn_1,
  input         io_wdata_1_cf_trigger_backendHit_0,
  input         io_wdata_1_cf_trigger_backendHit_1,
  input         io_wdata_1_cf_trigger_backendHit_2,
  input         io_wdata_1_cf_trigger_backendHit_3,
  input         io_wdata_1_cf_trigger_backendHit_4,
  input         io_wdata_1_cf_trigger_backendHit_5,
  input         io_wdata_1_cf_pd_isRVC,
  input  [1:0]  io_wdata_1_cf_pd_brType,
  input         io_wdata_1_cf_pd_isCall,
  input         io_wdata_1_cf_pd_isRet,
  input         io_wdata_1_cf_pred_taken,
  input  [6:0]  io_wdata_1_cf_waitForRobIdx_value,
  input         io_wdata_1_cf_loadWaitBit,
  input         io_wdata_1_cf_loadWaitStrict,
  input  [4:0]  io_wdata_1_cf_ssid,
  input         io_wdata_1_cf_ftqPtr_flag,
  input  [5:0]  io_wdata_1_cf_ftqPtr_value,
  input  [2:0]  io_wdata_1_cf_ftqOffset,
  input  [1:0]  io_wdata_1_ctrl_srcType_0,
  input  [1:0]  io_wdata_1_ctrl_srcType_1,
  input  [1:0]  io_wdata_1_ctrl_srcType_2,
  input  [3:0]  io_wdata_1_ctrl_fuType,
  input  [6:0]  io_wdata_1_ctrl_fuOpType,
  input         io_wdata_1_ctrl_rfWen,
  input         io_wdata_1_ctrl_fpWen,
  input  [3:0]  io_wdata_1_ctrl_selImm,
  input  [19:0] io_wdata_1_ctrl_imm,
  input         io_wdata_1_ctrl_fpu_isAddSub,
  input         io_wdata_1_ctrl_fpu_typeTagIn,
  input         io_wdata_1_ctrl_fpu_typeTagOut,
  input         io_wdata_1_ctrl_fpu_fromInt,
  input         io_wdata_1_ctrl_fpu_wflags,
  input         io_wdata_1_ctrl_fpu_fpWen,
  input  [1:0]  io_wdata_1_ctrl_fpu_fmaCmd,
  input         io_wdata_1_ctrl_fpu_div,
  input         io_wdata_1_ctrl_fpu_sqrt,
  input         io_wdata_1_ctrl_fpu_fcvt,
  input  [1:0]  io_wdata_1_ctrl_fpu_typ,
  input  [1:0]  io_wdata_1_ctrl_fpu_fmt,
  input         io_wdata_1_ctrl_fpu_ren3,
  input  [2:0]  io_wdata_1_ctrl_fpu_rm,
  input  [6:0]  io_wdata_1_psrc_0,
  input  [6:0]  io_wdata_1_psrc_1,
  input  [6:0]  io_wdata_1_psrc_2,
  input  [6:0]  io_wdata_1_pdest,
  input         io_wdata_2_cf_trigger_backendEn_0,
  input         io_wdata_2_cf_trigger_backendEn_1,
  input         io_wdata_2_cf_trigger_backendHit_0,
  input         io_wdata_2_cf_trigger_backendHit_1,
  input         io_wdata_2_cf_trigger_backendHit_2,
  input         io_wdata_2_cf_trigger_backendHit_3,
  input         io_wdata_2_cf_trigger_backendHit_4,
  input         io_wdata_2_cf_trigger_backendHit_5,
  input         io_wdata_2_cf_pd_isRVC,
  input  [1:0]  io_wdata_2_cf_pd_brType,
  input         io_wdata_2_cf_pd_isCall,
  input         io_wdata_2_cf_pd_isRet,
  input         io_wdata_2_cf_pred_taken,
  input  [6:0]  io_wdata_2_cf_waitForRobIdx_value,
  input         io_wdata_2_cf_loadWaitBit,
  input         io_wdata_2_cf_loadWaitStrict,
  input  [4:0]  io_wdata_2_cf_ssid,
  input         io_wdata_2_cf_ftqPtr_flag,
  input  [5:0]  io_wdata_2_cf_ftqPtr_value,
  input  [2:0]  io_wdata_2_cf_ftqOffset,
  input  [1:0]  io_wdata_2_ctrl_srcType_0,
  input  [1:0]  io_wdata_2_ctrl_srcType_1,
  input  [1:0]  io_wdata_2_ctrl_srcType_2,
  input  [3:0]  io_wdata_2_ctrl_fuType,
  input  [6:0]  io_wdata_2_ctrl_fuOpType,
  input         io_wdata_2_ctrl_rfWen,
  input         io_wdata_2_ctrl_fpWen,
  input  [3:0]  io_wdata_2_ctrl_selImm,
  input  [19:0] io_wdata_2_ctrl_imm,
  input         io_wdata_2_ctrl_fpu_isAddSub,
  input         io_wdata_2_ctrl_fpu_typeTagIn,
  input         io_wdata_2_ctrl_fpu_typeTagOut,
  input         io_wdata_2_ctrl_fpu_fromInt,
  input         io_wdata_2_ctrl_fpu_wflags,
  input         io_wdata_2_ctrl_fpu_fpWen,
  input  [1:0]  io_wdata_2_ctrl_fpu_fmaCmd,
  input         io_wdata_2_ctrl_fpu_div,
  input         io_wdata_2_ctrl_fpu_sqrt,
  input         io_wdata_2_ctrl_fpu_fcvt,
  input  [1:0]  io_wdata_2_ctrl_fpu_typ,
  input  [1:0]  io_wdata_2_ctrl_fpu_fmt,
  input         io_wdata_2_ctrl_fpu_ren3,
  input  [2:0]  io_wdata_2_ctrl_fpu_rm,
  input  [6:0]  io_wdata_2_psrc_0,
  input  [6:0]  io_wdata_2_psrc_1,
  input  [6:0]  io_wdata_2_psrc_2,
  input  [6:0]  io_wdata_2_pdest,
  input         io_wdata_3_cf_trigger_backendEn_0,
  input         io_wdata_3_cf_trigger_backendEn_1,
  input         io_wdata_3_cf_trigger_backendHit_0,
  input         io_wdata_3_cf_trigger_backendHit_1,
  input         io_wdata_3_cf_trigger_backendHit_2,
  input         io_wdata_3_cf_trigger_backendHit_3,
  input         io_wdata_3_cf_trigger_backendHit_4,
  input         io_wdata_3_cf_trigger_backendHit_5,
  input         io_wdata_3_cf_pd_isRVC,
  input  [1:0]  io_wdata_3_cf_pd_brType,
  input         io_wdata_3_cf_pd_isCall,
  input         io_wdata_3_cf_pd_isRet,
  input         io_wdata_3_cf_pred_taken,
  input  [6:0]  io_wdata_3_cf_waitForRobIdx_value,
  input         io_wdata_3_cf_loadWaitBit,
  input         io_wdata_3_cf_loadWaitStrict,
  input  [4:0]  io_wdata_3_cf_ssid,
  input         io_wdata_3_cf_ftqPtr_flag,
  input  [5:0]  io_wdata_3_cf_ftqPtr_value,
  input  [2:0]  io_wdata_3_cf_ftqOffset,
  input  [1:0]  io_wdata_3_ctrl_srcType_0,
  input  [1:0]  io_wdata_3_ctrl_srcType_1,
  input  [1:0]  io_wdata_3_ctrl_srcType_2,
  input  [3:0]  io_wdata_3_ctrl_fuType,
  input  [6:0]  io_wdata_3_ctrl_fuOpType,
  input         io_wdata_3_ctrl_rfWen,
  input         io_wdata_3_ctrl_fpWen,
  input  [3:0]  io_wdata_3_ctrl_selImm,
  input  [19:0] io_wdata_3_ctrl_imm,
  input         io_wdata_3_ctrl_fpu_isAddSub,
  input         io_wdata_3_ctrl_fpu_typeTagIn,
  input         io_wdata_3_ctrl_fpu_typeTagOut,
  input         io_wdata_3_ctrl_fpu_fromInt,
  input         io_wdata_3_ctrl_fpu_wflags,
  input         io_wdata_3_ctrl_fpu_fpWen,
  input  [1:0]  io_wdata_3_ctrl_fpu_fmaCmd,
  input         io_wdata_3_ctrl_fpu_div,
  input         io_wdata_3_ctrl_fpu_sqrt,
  input         io_wdata_3_ctrl_fpu_fcvt,
  input  [1:0]  io_wdata_3_ctrl_fpu_typ,
  input  [1:0]  io_wdata_3_ctrl_fpu_fmt,
  input         io_wdata_3_ctrl_fpu_ren3,
  input  [2:0]  io_wdata_3_ctrl_fpu_rm,
  input  [6:0]  io_wdata_3_psrc_0,
  input  [6:0]  io_wdata_3_psrc_1,
  input  [6:0]  io_wdata_3_psrc_2,
  input  [6:0]  io_wdata_3_pdest
);
`ifdef RANDOMIZE_MEM_INIT
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
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
`endif // RANDOMIZE_REG_INIT
  reg  data_cf_trigger_backendEn_0 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_0_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_0_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_0_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_0_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_0_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_0_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_0_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_trigger_backendEn_1 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_1_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_1_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_1_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_1_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_1_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendEn_1_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendEn_1_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_trigger_backendHit_0 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_0_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_0_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_0_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_0_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_0_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_0_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_0_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_trigger_backendHit_1 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_1_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_1_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_1_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_1_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_1_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_1_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_1_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_trigger_backendHit_2 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_2_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_2_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_2_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_2_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_2_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_2_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_2_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_trigger_backendHit_3 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_3_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_3_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_3_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_3_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_3_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_3_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_3_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_3_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_trigger_backendHit_4 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_4_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_4_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_4_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_4_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_4_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_4_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_4_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_4_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_4_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_trigger_backendHit_5 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_5_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_5_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_5_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_5_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_5_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_5_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_5_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_trigger_backendHit_5_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_trigger_backendHit_5_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_pd_isRVC [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRVC_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRVC_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRVC_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRVC_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRVC_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRVC_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRVC_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRVC_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRVC_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_cf_pd_brType [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_brType_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_cf_pd_brType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_brType_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_cf_pd_brType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_brType_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_cf_pd_brType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_brType_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_cf_pd_brType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_cf_pd_brType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_brType_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_cf_pd_brType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_brType_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_cf_pd_brType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_brType_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_cf_pd_brType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_brType_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_brType_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_pd_isCall [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isCall_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isCall_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isCall_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isCall_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isCall_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isCall_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isCall_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isCall_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isCall_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_pd_isRet [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRet_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRet_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRet_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRet_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRet_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRet_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRet_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pd_isRet_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pd_isRet_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_pred_taken [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pred_taken_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pred_taken_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pred_taken_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pred_taken_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pred_taken_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pred_taken_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pred_taken_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_pred_taken_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_pred_taken_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [6:0] data_cf_waitForRobIdx_value [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_waitForRobIdx_value_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_cf_waitForRobIdx_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_waitForRobIdx_value_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_cf_waitForRobIdx_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_waitForRobIdx_value_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_cf_waitForRobIdx_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_waitForRobIdx_value_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_cf_waitForRobIdx_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_cf_waitForRobIdx_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_waitForRobIdx_value_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_cf_waitForRobIdx_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_waitForRobIdx_value_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_cf_waitForRobIdx_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_waitForRobIdx_value_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_cf_waitForRobIdx_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_waitForRobIdx_value_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_waitForRobIdx_value_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_loadWaitBit [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitBit_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitBit_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitBit_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitBit_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitBit_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitBit_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitBit_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitBit_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitBit_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_loadWaitStrict [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitStrict_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitStrict_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitStrict_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitStrict_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitStrict_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitStrict_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitStrict_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_loadWaitStrict_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_loadWaitStrict_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [4:0] data_cf_ssid [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ssid_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_cf_ssid_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ssid_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_cf_ssid_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ssid_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_cf_ssid_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ssid_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_cf_ssid_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_cf_ssid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ssid_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_cf_ssid_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ssid_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_cf_ssid_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ssid_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_cf_ssid_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ssid_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ssid_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_cf_ftqPtr_flag [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_flag_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_flag_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_flag_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_flag_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_flag_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_flag_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_flag_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_flag_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_flag_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [5:0] data_cf_ftqPtr_value [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_value_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_cf_ftqPtr_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_value_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_cf_ftqPtr_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_value_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_cf_ftqPtr_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_value_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_cf_ftqPtr_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_cf_ftqPtr_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_value_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_cf_ftqPtr_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_value_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_cf_ftqPtr_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_value_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_cf_ftqPtr_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqPtr_value_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqPtr_value_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [2:0] data_cf_ftqOffset [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqOffset_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_cf_ftqOffset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqOffset_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_cf_ftqOffset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqOffset_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_cf_ftqOffset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqOffset_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_cf_ftqOffset_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_cf_ftqOffset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqOffset_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_cf_ftqOffset_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqOffset_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_cf_ftqOffset_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqOffset_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_cf_ftqOffset_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_cf_ftqOffset_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_cf_ftqOffset_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_ctrl_srcType_0 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_0_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_0_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_0_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_0_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_0_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_0_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_0_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_ctrl_srcType_1 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_1_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_1_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_1_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_1_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_1_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_1_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_1_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_ctrl_srcType_2 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_2_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_2_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_2_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_2_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_2_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_srcType_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_srcType_2_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_srcType_2_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [3:0] data_ctrl_fuType [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuType_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuType_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [6:0] data_ctrl_fuOpType [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuOpType_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ctrl_fuOpType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuOpType_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ctrl_fuOpType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuOpType_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ctrl_fuOpType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuOpType_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ctrl_fuOpType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ctrl_fuOpType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuOpType_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ctrl_fuOpType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuOpType_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ctrl_fuOpType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuOpType_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_ctrl_fuOpType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fuOpType_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fuOpType_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_rfWen [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_rfWen_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_rfWen_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_rfWen_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_rfWen_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_rfWen_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_rfWen_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_rfWen_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_rfWen_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_rfWen_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpWen [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpWen_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpWen_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpWen_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpWen_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpWen_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpWen_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpWen_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpWen_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpWen_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [3:0] data_ctrl_selImm [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_selImm_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_selImm_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [19:0] data_ctrl_imm [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_imm_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_ctrl_imm_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_imm_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_ctrl_imm_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_imm_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_ctrl_imm_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_imm_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_ctrl_imm_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_ctrl_imm_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_imm_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_ctrl_imm_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_imm_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_ctrl_imm_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_imm_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [19:0] data_ctrl_imm_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_imm_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_imm_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_isAddSub [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_isAddSub_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_isAddSub_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_isAddSub_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_isAddSub_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_isAddSub_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_isAddSub_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_isAddSub_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_isAddSub_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_isAddSub_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_typeTagIn [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagIn_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagIn_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagIn_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagIn_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagIn_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagIn_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagIn_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagIn_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagIn_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_typeTagOut [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagOut_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagOut_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagOut_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagOut_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagOut_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagOut_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagOut_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typeTagOut_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typeTagOut_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_fromInt [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fromInt_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fromInt_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fromInt_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fromInt_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fromInt_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fromInt_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fromInt_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fromInt_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fromInt_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_wflags [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_wflags_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_wflags_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_wflags_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_wflags_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_wflags_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_wflags_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_wflags_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_wflags_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_wflags_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_fpWen [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fpWen_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fpWen_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fpWen_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fpWen_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fpWen_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fpWen_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fpWen_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fpWen_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fpWen_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_ctrl_fpu_fmaCmd [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmaCmd_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmaCmd_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmaCmd_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmaCmd_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmaCmd_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmaCmd_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmaCmd_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmaCmd_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmaCmd_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmaCmd_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmaCmd_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmaCmd_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmaCmd_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmaCmd_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmaCmd_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmaCmd_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmaCmd_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_div [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_div_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_div_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_div_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_div_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_div_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_div_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_div_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_div_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_div_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_sqrt [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_sqrt_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_sqrt_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_sqrt_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_sqrt_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_sqrt_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_sqrt_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_sqrt_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_sqrt_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_sqrt_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_fcvt [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fcvt_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fcvt_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fcvt_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fcvt_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fcvt_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fcvt_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fcvt_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fcvt_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fcvt_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_ctrl_fpu_typ [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typ_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_typ_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typ_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_typ_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typ_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_typ_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typ_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_typ_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_typ_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typ_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_typ_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typ_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_typ_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typ_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_typ_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_typ_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_typ_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [1:0] data_ctrl_fpu_fmt [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmt_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmt_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmt_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmt_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmt_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmt_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmt_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmt_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmt_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmt_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmt_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmt_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmt_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmt_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [1:0] data_ctrl_fpu_fmt_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_fmt_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_fmt_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_ctrl_fpu_ren3 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_ren3_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_ren3_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_ren3_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_ren3_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_ren3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_ren3_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_ren3_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_ren3_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_ren3_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [2:0] data_ctrl_fpu_rm [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_rm_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ctrl_fpu_rm_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_rm_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ctrl_fpu_rm_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_rm_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ctrl_fpu_rm_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_rm_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ctrl_fpu_rm_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ctrl_fpu_rm_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_rm_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ctrl_fpu_rm_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_rm_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ctrl_fpu_rm_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_rm_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [2:0] data_ctrl_fpu_rm_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_ctrl_fpu_rm_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_ctrl_fpu_rm_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [6:0] data_psrc_0 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_0_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_0_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_0_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_0_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_0_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_0_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_0_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_0_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [6:0] data_psrc_1 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_1_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_1_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_1_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_1_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_1_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_1_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_1_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_1_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [6:0] data_psrc_2 [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_2_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_2_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_2_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_2_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_2_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_2_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_psrc_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_psrc_2_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_psrc_2_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [6:0] data_pdest [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_pdest_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_pdest_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_pdest_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_pdest_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_pdest_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_pdest_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_pdest_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [6:0] data_pdest_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_pdest_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_pdest_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_lqIdx_flag [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_flag_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_flag_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_flag_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_flag_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_flag_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_flag_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_flag_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_flag_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_flag_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [5:0] data_lqIdx_value [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_value_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_lqIdx_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_value_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_lqIdx_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_value_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_lqIdx_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_value_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_lqIdx_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_lqIdx_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_value_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_lqIdx_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_value_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_lqIdx_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_value_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [5:0] data_lqIdx_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_lqIdx_value_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_lqIdx_value_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg  data_sqIdx_flag [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_flag_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_flag_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_flag_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_flag_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_flag_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_flag_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_flag_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_flag_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_flag_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [4:0] data_sqIdx_value [0:15]; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_io_rdata_0_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_value_io_rdata_0_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_sqIdx_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_io_rdata_1_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_value_io_rdata_1_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_sqIdx_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_io_rdata_2_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_value_io_rdata_2_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_sqIdx_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_io_rdata_3_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_value_io_rdata_3_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_sqIdx_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_sqIdx_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_value_MPORT_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_MPORT_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_MPORT_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_sqIdx_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_value_MPORT_1_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_MPORT_1_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_MPORT_1_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_sqIdx_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_value_MPORT_2_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_MPORT_2_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_MPORT_2_en; // @[DataModuleTemplate.scala 64:17]
  wire [4:0] data_sqIdx_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
  wire [3:0] data_sqIdx_value_MPORT_3_addr; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_MPORT_3_mask; // @[DataModuleTemplate.scala 64:17]
  wire  data_sqIdx_value_MPORT_3_en; // @[DataModuleTemplate.scala 64:17]
  reg [3:0] raddr_0; // @[DataModuleTemplate.scala 67:35]
  reg [3:0] raddr_1; // @[DataModuleTemplate.scala 67:35]
  reg [3:0] raddr_2; // @[DataModuleTemplate.scala 67:35]
  reg [3:0] raddr_3; // @[DataModuleTemplate.scala 67:35]
  assign data_cf_trigger_backendEn_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_trigger_backendEn_0_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_trigger_backendEn_0_io_rdata_0_MPORT_data =
    data_cf_trigger_backendEn_0[data_cf_trigger_backendEn_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendEn_0_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_trigger_backendEn_0_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_trigger_backendEn_0_io_rdata_1_MPORT_data =
    data_cf_trigger_backendEn_0[data_cf_trigger_backendEn_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendEn_0_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_trigger_backendEn_0_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_trigger_backendEn_0_io_rdata_2_MPORT_data =
    data_cf_trigger_backendEn_0[data_cf_trigger_backendEn_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendEn_0_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_trigger_backendEn_0_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_trigger_backendEn_0_io_rdata_3_MPORT_data =
    data_cf_trigger_backendEn_0[data_cf_trigger_backendEn_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendEn_0_MPORT_data = io_wdata_0_cf_trigger_backendEn_0;
  assign data_cf_trigger_backendEn_0_MPORT_addr = io_waddr_0;
  assign data_cf_trigger_backendEn_0_MPORT_mask = 1'h1;
  assign data_cf_trigger_backendEn_0_MPORT_en = io_wen_0;
  assign data_cf_trigger_backendEn_0_MPORT_1_data = io_wdata_1_cf_trigger_backendEn_0;
  assign data_cf_trigger_backendEn_0_MPORT_1_addr = io_waddr_1;
  assign data_cf_trigger_backendEn_0_MPORT_1_mask = 1'h1;
  assign data_cf_trigger_backendEn_0_MPORT_1_en = io_wen_1;
  assign data_cf_trigger_backendEn_0_MPORT_2_data = io_wdata_2_cf_trigger_backendEn_0;
  assign data_cf_trigger_backendEn_0_MPORT_2_addr = io_waddr_2;
  assign data_cf_trigger_backendEn_0_MPORT_2_mask = 1'h1;
  assign data_cf_trigger_backendEn_0_MPORT_2_en = io_wen_2;
  assign data_cf_trigger_backendEn_0_MPORT_3_data = io_wdata_3_cf_trigger_backendEn_0;
  assign data_cf_trigger_backendEn_0_MPORT_3_addr = io_waddr_3;
  assign data_cf_trigger_backendEn_0_MPORT_3_mask = 1'h1;
  assign data_cf_trigger_backendEn_0_MPORT_3_en = io_wen_3;
  assign data_cf_trigger_backendEn_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_trigger_backendEn_1_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_trigger_backendEn_1_io_rdata_0_MPORT_data =
    data_cf_trigger_backendEn_1[data_cf_trigger_backendEn_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendEn_1_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_trigger_backendEn_1_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_trigger_backendEn_1_io_rdata_1_MPORT_data =
    data_cf_trigger_backendEn_1[data_cf_trigger_backendEn_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendEn_1_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_trigger_backendEn_1_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_trigger_backendEn_1_io_rdata_2_MPORT_data =
    data_cf_trigger_backendEn_1[data_cf_trigger_backendEn_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendEn_1_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_trigger_backendEn_1_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_trigger_backendEn_1_io_rdata_3_MPORT_data =
    data_cf_trigger_backendEn_1[data_cf_trigger_backendEn_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendEn_1_MPORT_data = io_wdata_0_cf_trigger_backendEn_1;
  assign data_cf_trigger_backendEn_1_MPORT_addr = io_waddr_0;
  assign data_cf_trigger_backendEn_1_MPORT_mask = 1'h1;
  assign data_cf_trigger_backendEn_1_MPORT_en = io_wen_0;
  assign data_cf_trigger_backendEn_1_MPORT_1_data = io_wdata_1_cf_trigger_backendEn_1;
  assign data_cf_trigger_backendEn_1_MPORT_1_addr = io_waddr_1;
  assign data_cf_trigger_backendEn_1_MPORT_1_mask = 1'h1;
  assign data_cf_trigger_backendEn_1_MPORT_1_en = io_wen_1;
  assign data_cf_trigger_backendEn_1_MPORT_2_data = io_wdata_2_cf_trigger_backendEn_1;
  assign data_cf_trigger_backendEn_1_MPORT_2_addr = io_waddr_2;
  assign data_cf_trigger_backendEn_1_MPORT_2_mask = 1'h1;
  assign data_cf_trigger_backendEn_1_MPORT_2_en = io_wen_2;
  assign data_cf_trigger_backendEn_1_MPORT_3_data = io_wdata_3_cf_trigger_backendEn_1;
  assign data_cf_trigger_backendEn_1_MPORT_3_addr = io_waddr_3;
  assign data_cf_trigger_backendEn_1_MPORT_3_mask = 1'h1;
  assign data_cf_trigger_backendEn_1_MPORT_3_en = io_wen_3;
  assign data_cf_trigger_backendHit_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_0_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_trigger_backendHit_0_io_rdata_0_MPORT_data =
    data_cf_trigger_backendHit_0[data_cf_trigger_backendHit_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_0_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_0_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_trigger_backendHit_0_io_rdata_1_MPORT_data =
    data_cf_trigger_backendHit_0[data_cf_trigger_backendHit_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_0_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_0_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_trigger_backendHit_0_io_rdata_2_MPORT_data =
    data_cf_trigger_backendHit_0[data_cf_trigger_backendHit_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_0_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_0_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_trigger_backendHit_0_io_rdata_3_MPORT_data =
    data_cf_trigger_backendHit_0[data_cf_trigger_backendHit_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_0_MPORT_data = io_wdata_0_cf_trigger_backendHit_0;
  assign data_cf_trigger_backendHit_0_MPORT_addr = io_waddr_0;
  assign data_cf_trigger_backendHit_0_MPORT_mask = 1'h1;
  assign data_cf_trigger_backendHit_0_MPORT_en = io_wen_0;
  assign data_cf_trigger_backendHit_0_MPORT_1_data = io_wdata_1_cf_trigger_backendHit_0;
  assign data_cf_trigger_backendHit_0_MPORT_1_addr = io_waddr_1;
  assign data_cf_trigger_backendHit_0_MPORT_1_mask = 1'h1;
  assign data_cf_trigger_backendHit_0_MPORT_1_en = io_wen_1;
  assign data_cf_trigger_backendHit_0_MPORT_2_data = io_wdata_2_cf_trigger_backendHit_0;
  assign data_cf_trigger_backendHit_0_MPORT_2_addr = io_waddr_2;
  assign data_cf_trigger_backendHit_0_MPORT_2_mask = 1'h1;
  assign data_cf_trigger_backendHit_0_MPORT_2_en = io_wen_2;
  assign data_cf_trigger_backendHit_0_MPORT_3_data = io_wdata_3_cf_trigger_backendHit_0;
  assign data_cf_trigger_backendHit_0_MPORT_3_addr = io_waddr_3;
  assign data_cf_trigger_backendHit_0_MPORT_3_mask = 1'h1;
  assign data_cf_trigger_backendHit_0_MPORT_3_en = io_wen_3;
  assign data_cf_trigger_backendHit_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_1_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_trigger_backendHit_1_io_rdata_0_MPORT_data =
    data_cf_trigger_backendHit_1[data_cf_trigger_backendHit_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_1_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_1_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_trigger_backendHit_1_io_rdata_1_MPORT_data =
    data_cf_trigger_backendHit_1[data_cf_trigger_backendHit_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_1_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_1_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_trigger_backendHit_1_io_rdata_2_MPORT_data =
    data_cf_trigger_backendHit_1[data_cf_trigger_backendHit_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_1_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_1_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_trigger_backendHit_1_io_rdata_3_MPORT_data =
    data_cf_trigger_backendHit_1[data_cf_trigger_backendHit_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_1_MPORT_data = io_wdata_0_cf_trigger_backendHit_1;
  assign data_cf_trigger_backendHit_1_MPORT_addr = io_waddr_0;
  assign data_cf_trigger_backendHit_1_MPORT_mask = 1'h1;
  assign data_cf_trigger_backendHit_1_MPORT_en = io_wen_0;
  assign data_cf_trigger_backendHit_1_MPORT_1_data = io_wdata_1_cf_trigger_backendHit_1;
  assign data_cf_trigger_backendHit_1_MPORT_1_addr = io_waddr_1;
  assign data_cf_trigger_backendHit_1_MPORT_1_mask = 1'h1;
  assign data_cf_trigger_backendHit_1_MPORT_1_en = io_wen_1;
  assign data_cf_trigger_backendHit_1_MPORT_2_data = io_wdata_2_cf_trigger_backendHit_1;
  assign data_cf_trigger_backendHit_1_MPORT_2_addr = io_waddr_2;
  assign data_cf_trigger_backendHit_1_MPORT_2_mask = 1'h1;
  assign data_cf_trigger_backendHit_1_MPORT_2_en = io_wen_2;
  assign data_cf_trigger_backendHit_1_MPORT_3_data = io_wdata_3_cf_trigger_backendHit_1;
  assign data_cf_trigger_backendHit_1_MPORT_3_addr = io_waddr_3;
  assign data_cf_trigger_backendHit_1_MPORT_3_mask = 1'h1;
  assign data_cf_trigger_backendHit_1_MPORT_3_en = io_wen_3;
  assign data_cf_trigger_backendHit_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_2_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_trigger_backendHit_2_io_rdata_0_MPORT_data =
    data_cf_trigger_backendHit_2[data_cf_trigger_backendHit_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_2_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_2_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_trigger_backendHit_2_io_rdata_1_MPORT_data =
    data_cf_trigger_backendHit_2[data_cf_trigger_backendHit_2_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_2_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_2_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_trigger_backendHit_2_io_rdata_2_MPORT_data =
    data_cf_trigger_backendHit_2[data_cf_trigger_backendHit_2_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_2_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_2_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_trigger_backendHit_2_io_rdata_3_MPORT_data =
    data_cf_trigger_backendHit_2[data_cf_trigger_backendHit_2_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_2_MPORT_data = io_wdata_0_cf_trigger_backendHit_2;
  assign data_cf_trigger_backendHit_2_MPORT_addr = io_waddr_0;
  assign data_cf_trigger_backendHit_2_MPORT_mask = 1'h1;
  assign data_cf_trigger_backendHit_2_MPORT_en = io_wen_0;
  assign data_cf_trigger_backendHit_2_MPORT_1_data = io_wdata_1_cf_trigger_backendHit_2;
  assign data_cf_trigger_backendHit_2_MPORT_1_addr = io_waddr_1;
  assign data_cf_trigger_backendHit_2_MPORT_1_mask = 1'h1;
  assign data_cf_trigger_backendHit_2_MPORT_1_en = io_wen_1;
  assign data_cf_trigger_backendHit_2_MPORT_2_data = io_wdata_2_cf_trigger_backendHit_2;
  assign data_cf_trigger_backendHit_2_MPORT_2_addr = io_waddr_2;
  assign data_cf_trigger_backendHit_2_MPORT_2_mask = 1'h1;
  assign data_cf_trigger_backendHit_2_MPORT_2_en = io_wen_2;
  assign data_cf_trigger_backendHit_2_MPORT_3_data = io_wdata_3_cf_trigger_backendHit_2;
  assign data_cf_trigger_backendHit_2_MPORT_3_addr = io_waddr_3;
  assign data_cf_trigger_backendHit_2_MPORT_3_mask = 1'h1;
  assign data_cf_trigger_backendHit_2_MPORT_3_en = io_wen_3;
  assign data_cf_trigger_backendHit_3_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_3_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_trigger_backendHit_3_io_rdata_0_MPORT_data =
    data_cf_trigger_backendHit_3[data_cf_trigger_backendHit_3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_3_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_3_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_trigger_backendHit_3_io_rdata_1_MPORT_data =
    data_cf_trigger_backendHit_3[data_cf_trigger_backendHit_3_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_3_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_3_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_trigger_backendHit_3_io_rdata_2_MPORT_data =
    data_cf_trigger_backendHit_3[data_cf_trigger_backendHit_3_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_3_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_3_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_trigger_backendHit_3_io_rdata_3_MPORT_data =
    data_cf_trigger_backendHit_3[data_cf_trigger_backendHit_3_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_3_MPORT_data = io_wdata_0_cf_trigger_backendHit_3;
  assign data_cf_trigger_backendHit_3_MPORT_addr = io_waddr_0;
  assign data_cf_trigger_backendHit_3_MPORT_mask = 1'h1;
  assign data_cf_trigger_backendHit_3_MPORT_en = io_wen_0;
  assign data_cf_trigger_backendHit_3_MPORT_1_data = io_wdata_1_cf_trigger_backendHit_3;
  assign data_cf_trigger_backendHit_3_MPORT_1_addr = io_waddr_1;
  assign data_cf_trigger_backendHit_3_MPORT_1_mask = 1'h1;
  assign data_cf_trigger_backendHit_3_MPORT_1_en = io_wen_1;
  assign data_cf_trigger_backendHit_3_MPORT_2_data = io_wdata_2_cf_trigger_backendHit_3;
  assign data_cf_trigger_backendHit_3_MPORT_2_addr = io_waddr_2;
  assign data_cf_trigger_backendHit_3_MPORT_2_mask = 1'h1;
  assign data_cf_trigger_backendHit_3_MPORT_2_en = io_wen_2;
  assign data_cf_trigger_backendHit_3_MPORT_3_data = io_wdata_3_cf_trigger_backendHit_3;
  assign data_cf_trigger_backendHit_3_MPORT_3_addr = io_waddr_3;
  assign data_cf_trigger_backendHit_3_MPORT_3_mask = 1'h1;
  assign data_cf_trigger_backendHit_3_MPORT_3_en = io_wen_3;
  assign data_cf_trigger_backendHit_4_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_4_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_trigger_backendHit_4_io_rdata_0_MPORT_data =
    data_cf_trigger_backendHit_4[data_cf_trigger_backendHit_4_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_4_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_4_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_trigger_backendHit_4_io_rdata_1_MPORT_data =
    data_cf_trigger_backendHit_4[data_cf_trigger_backendHit_4_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_4_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_4_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_trigger_backendHit_4_io_rdata_2_MPORT_data =
    data_cf_trigger_backendHit_4[data_cf_trigger_backendHit_4_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_4_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_4_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_trigger_backendHit_4_io_rdata_3_MPORT_data =
    data_cf_trigger_backendHit_4[data_cf_trigger_backendHit_4_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_4_MPORT_data = io_wdata_0_cf_trigger_backendHit_4;
  assign data_cf_trigger_backendHit_4_MPORT_addr = io_waddr_0;
  assign data_cf_trigger_backendHit_4_MPORT_mask = 1'h1;
  assign data_cf_trigger_backendHit_4_MPORT_en = io_wen_0;
  assign data_cf_trigger_backendHit_4_MPORT_1_data = io_wdata_1_cf_trigger_backendHit_4;
  assign data_cf_trigger_backendHit_4_MPORT_1_addr = io_waddr_1;
  assign data_cf_trigger_backendHit_4_MPORT_1_mask = 1'h1;
  assign data_cf_trigger_backendHit_4_MPORT_1_en = io_wen_1;
  assign data_cf_trigger_backendHit_4_MPORT_2_data = io_wdata_2_cf_trigger_backendHit_4;
  assign data_cf_trigger_backendHit_4_MPORT_2_addr = io_waddr_2;
  assign data_cf_trigger_backendHit_4_MPORT_2_mask = 1'h1;
  assign data_cf_trigger_backendHit_4_MPORT_2_en = io_wen_2;
  assign data_cf_trigger_backendHit_4_MPORT_3_data = io_wdata_3_cf_trigger_backendHit_4;
  assign data_cf_trigger_backendHit_4_MPORT_3_addr = io_waddr_3;
  assign data_cf_trigger_backendHit_4_MPORT_3_mask = 1'h1;
  assign data_cf_trigger_backendHit_4_MPORT_3_en = io_wen_3;
  assign data_cf_trigger_backendHit_5_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_5_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_trigger_backendHit_5_io_rdata_0_MPORT_data =
    data_cf_trigger_backendHit_5[data_cf_trigger_backendHit_5_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_5_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_5_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_trigger_backendHit_5_io_rdata_1_MPORT_data =
    data_cf_trigger_backendHit_5[data_cf_trigger_backendHit_5_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_5_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_5_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_trigger_backendHit_5_io_rdata_2_MPORT_data =
    data_cf_trigger_backendHit_5[data_cf_trigger_backendHit_5_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_5_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_trigger_backendHit_5_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_trigger_backendHit_5_io_rdata_3_MPORT_data =
    data_cf_trigger_backendHit_5[data_cf_trigger_backendHit_5_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_trigger_backendHit_5_MPORT_data = io_wdata_0_cf_trigger_backendHit_5;
  assign data_cf_trigger_backendHit_5_MPORT_addr = io_waddr_0;
  assign data_cf_trigger_backendHit_5_MPORT_mask = 1'h1;
  assign data_cf_trigger_backendHit_5_MPORT_en = io_wen_0;
  assign data_cf_trigger_backendHit_5_MPORT_1_data = io_wdata_1_cf_trigger_backendHit_5;
  assign data_cf_trigger_backendHit_5_MPORT_1_addr = io_waddr_1;
  assign data_cf_trigger_backendHit_5_MPORT_1_mask = 1'h1;
  assign data_cf_trigger_backendHit_5_MPORT_1_en = io_wen_1;
  assign data_cf_trigger_backendHit_5_MPORT_2_data = io_wdata_2_cf_trigger_backendHit_5;
  assign data_cf_trigger_backendHit_5_MPORT_2_addr = io_waddr_2;
  assign data_cf_trigger_backendHit_5_MPORT_2_mask = 1'h1;
  assign data_cf_trigger_backendHit_5_MPORT_2_en = io_wen_2;
  assign data_cf_trigger_backendHit_5_MPORT_3_data = io_wdata_3_cf_trigger_backendHit_5;
  assign data_cf_trigger_backendHit_5_MPORT_3_addr = io_waddr_3;
  assign data_cf_trigger_backendHit_5_MPORT_3_mask = 1'h1;
  assign data_cf_trigger_backendHit_5_MPORT_3_en = io_wen_3;
  assign data_cf_pd_isRVC_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_pd_isRVC_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_pd_isRVC_io_rdata_0_MPORT_data = data_cf_pd_isRVC[data_cf_pd_isRVC_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isRVC_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_pd_isRVC_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_pd_isRVC_io_rdata_1_MPORT_data = data_cf_pd_isRVC[data_cf_pd_isRVC_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isRVC_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_pd_isRVC_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_pd_isRVC_io_rdata_2_MPORT_data = data_cf_pd_isRVC[data_cf_pd_isRVC_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isRVC_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_pd_isRVC_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_pd_isRVC_io_rdata_3_MPORT_data = data_cf_pd_isRVC[data_cf_pd_isRVC_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isRVC_MPORT_data = io_wdata_0_cf_pd_isRVC;
  assign data_cf_pd_isRVC_MPORT_addr = io_waddr_0;
  assign data_cf_pd_isRVC_MPORT_mask = 1'h1;
  assign data_cf_pd_isRVC_MPORT_en = io_wen_0;
  assign data_cf_pd_isRVC_MPORT_1_data = io_wdata_1_cf_pd_isRVC;
  assign data_cf_pd_isRVC_MPORT_1_addr = io_waddr_1;
  assign data_cf_pd_isRVC_MPORT_1_mask = 1'h1;
  assign data_cf_pd_isRVC_MPORT_1_en = io_wen_1;
  assign data_cf_pd_isRVC_MPORT_2_data = io_wdata_2_cf_pd_isRVC;
  assign data_cf_pd_isRVC_MPORT_2_addr = io_waddr_2;
  assign data_cf_pd_isRVC_MPORT_2_mask = 1'h1;
  assign data_cf_pd_isRVC_MPORT_2_en = io_wen_2;
  assign data_cf_pd_isRVC_MPORT_3_data = io_wdata_3_cf_pd_isRVC;
  assign data_cf_pd_isRVC_MPORT_3_addr = io_waddr_3;
  assign data_cf_pd_isRVC_MPORT_3_mask = 1'h1;
  assign data_cf_pd_isRVC_MPORT_3_en = io_wen_3;
  assign data_cf_pd_brType_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_pd_brType_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_pd_brType_io_rdata_0_MPORT_data = data_cf_pd_brType[data_cf_pd_brType_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_brType_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_pd_brType_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_pd_brType_io_rdata_1_MPORT_data = data_cf_pd_brType[data_cf_pd_brType_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_brType_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_pd_brType_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_pd_brType_io_rdata_2_MPORT_data = data_cf_pd_brType[data_cf_pd_brType_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_brType_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_pd_brType_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_pd_brType_io_rdata_3_MPORT_data = data_cf_pd_brType[data_cf_pd_brType_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_brType_MPORT_data = io_wdata_0_cf_pd_brType;
  assign data_cf_pd_brType_MPORT_addr = io_waddr_0;
  assign data_cf_pd_brType_MPORT_mask = 1'h1;
  assign data_cf_pd_brType_MPORT_en = io_wen_0;
  assign data_cf_pd_brType_MPORT_1_data = io_wdata_1_cf_pd_brType;
  assign data_cf_pd_brType_MPORT_1_addr = io_waddr_1;
  assign data_cf_pd_brType_MPORT_1_mask = 1'h1;
  assign data_cf_pd_brType_MPORT_1_en = io_wen_1;
  assign data_cf_pd_brType_MPORT_2_data = io_wdata_2_cf_pd_brType;
  assign data_cf_pd_brType_MPORT_2_addr = io_waddr_2;
  assign data_cf_pd_brType_MPORT_2_mask = 1'h1;
  assign data_cf_pd_brType_MPORT_2_en = io_wen_2;
  assign data_cf_pd_brType_MPORT_3_data = io_wdata_3_cf_pd_brType;
  assign data_cf_pd_brType_MPORT_3_addr = io_waddr_3;
  assign data_cf_pd_brType_MPORT_3_mask = 1'h1;
  assign data_cf_pd_brType_MPORT_3_en = io_wen_3;
  assign data_cf_pd_isCall_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_pd_isCall_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_pd_isCall_io_rdata_0_MPORT_data = data_cf_pd_isCall[data_cf_pd_isCall_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isCall_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_pd_isCall_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_pd_isCall_io_rdata_1_MPORT_data = data_cf_pd_isCall[data_cf_pd_isCall_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isCall_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_pd_isCall_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_pd_isCall_io_rdata_2_MPORT_data = data_cf_pd_isCall[data_cf_pd_isCall_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isCall_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_pd_isCall_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_pd_isCall_io_rdata_3_MPORT_data = data_cf_pd_isCall[data_cf_pd_isCall_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isCall_MPORT_data = io_wdata_0_cf_pd_isCall;
  assign data_cf_pd_isCall_MPORT_addr = io_waddr_0;
  assign data_cf_pd_isCall_MPORT_mask = 1'h1;
  assign data_cf_pd_isCall_MPORT_en = io_wen_0;
  assign data_cf_pd_isCall_MPORT_1_data = io_wdata_1_cf_pd_isCall;
  assign data_cf_pd_isCall_MPORT_1_addr = io_waddr_1;
  assign data_cf_pd_isCall_MPORT_1_mask = 1'h1;
  assign data_cf_pd_isCall_MPORT_1_en = io_wen_1;
  assign data_cf_pd_isCall_MPORT_2_data = io_wdata_2_cf_pd_isCall;
  assign data_cf_pd_isCall_MPORT_2_addr = io_waddr_2;
  assign data_cf_pd_isCall_MPORT_2_mask = 1'h1;
  assign data_cf_pd_isCall_MPORT_2_en = io_wen_2;
  assign data_cf_pd_isCall_MPORT_3_data = io_wdata_3_cf_pd_isCall;
  assign data_cf_pd_isCall_MPORT_3_addr = io_waddr_3;
  assign data_cf_pd_isCall_MPORT_3_mask = 1'h1;
  assign data_cf_pd_isCall_MPORT_3_en = io_wen_3;
  assign data_cf_pd_isRet_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_pd_isRet_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_pd_isRet_io_rdata_0_MPORT_data = data_cf_pd_isRet[data_cf_pd_isRet_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isRet_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_pd_isRet_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_pd_isRet_io_rdata_1_MPORT_data = data_cf_pd_isRet[data_cf_pd_isRet_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isRet_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_pd_isRet_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_pd_isRet_io_rdata_2_MPORT_data = data_cf_pd_isRet[data_cf_pd_isRet_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isRet_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_pd_isRet_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_pd_isRet_io_rdata_3_MPORT_data = data_cf_pd_isRet[data_cf_pd_isRet_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pd_isRet_MPORT_data = io_wdata_0_cf_pd_isRet;
  assign data_cf_pd_isRet_MPORT_addr = io_waddr_0;
  assign data_cf_pd_isRet_MPORT_mask = 1'h1;
  assign data_cf_pd_isRet_MPORT_en = io_wen_0;
  assign data_cf_pd_isRet_MPORT_1_data = io_wdata_1_cf_pd_isRet;
  assign data_cf_pd_isRet_MPORT_1_addr = io_waddr_1;
  assign data_cf_pd_isRet_MPORT_1_mask = 1'h1;
  assign data_cf_pd_isRet_MPORT_1_en = io_wen_1;
  assign data_cf_pd_isRet_MPORT_2_data = io_wdata_2_cf_pd_isRet;
  assign data_cf_pd_isRet_MPORT_2_addr = io_waddr_2;
  assign data_cf_pd_isRet_MPORT_2_mask = 1'h1;
  assign data_cf_pd_isRet_MPORT_2_en = io_wen_2;
  assign data_cf_pd_isRet_MPORT_3_data = io_wdata_3_cf_pd_isRet;
  assign data_cf_pd_isRet_MPORT_3_addr = io_waddr_3;
  assign data_cf_pd_isRet_MPORT_3_mask = 1'h1;
  assign data_cf_pd_isRet_MPORT_3_en = io_wen_3;
  assign data_cf_pred_taken_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_pred_taken_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_pred_taken_io_rdata_0_MPORT_data = data_cf_pred_taken[data_cf_pred_taken_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pred_taken_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_pred_taken_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_pred_taken_io_rdata_1_MPORT_data = data_cf_pred_taken[data_cf_pred_taken_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pred_taken_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_pred_taken_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_pred_taken_io_rdata_2_MPORT_data = data_cf_pred_taken[data_cf_pred_taken_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pred_taken_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_pred_taken_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_pred_taken_io_rdata_3_MPORT_data = data_cf_pred_taken[data_cf_pred_taken_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_pred_taken_MPORT_data = io_wdata_0_cf_pred_taken;
  assign data_cf_pred_taken_MPORT_addr = io_waddr_0;
  assign data_cf_pred_taken_MPORT_mask = 1'h1;
  assign data_cf_pred_taken_MPORT_en = io_wen_0;
  assign data_cf_pred_taken_MPORT_1_data = io_wdata_1_cf_pred_taken;
  assign data_cf_pred_taken_MPORT_1_addr = io_waddr_1;
  assign data_cf_pred_taken_MPORT_1_mask = 1'h1;
  assign data_cf_pred_taken_MPORT_1_en = io_wen_1;
  assign data_cf_pred_taken_MPORT_2_data = io_wdata_2_cf_pred_taken;
  assign data_cf_pred_taken_MPORT_2_addr = io_waddr_2;
  assign data_cf_pred_taken_MPORT_2_mask = 1'h1;
  assign data_cf_pred_taken_MPORT_2_en = io_wen_2;
  assign data_cf_pred_taken_MPORT_3_data = io_wdata_3_cf_pred_taken;
  assign data_cf_pred_taken_MPORT_3_addr = io_waddr_3;
  assign data_cf_pred_taken_MPORT_3_mask = 1'h1;
  assign data_cf_pred_taken_MPORT_3_en = io_wen_3;
  assign data_cf_waitForRobIdx_value_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_waitForRobIdx_value_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_waitForRobIdx_value_io_rdata_0_MPORT_data =
    data_cf_waitForRobIdx_value[data_cf_waitForRobIdx_value_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_waitForRobIdx_value_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_waitForRobIdx_value_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_waitForRobIdx_value_io_rdata_1_MPORT_data =
    data_cf_waitForRobIdx_value[data_cf_waitForRobIdx_value_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_waitForRobIdx_value_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_waitForRobIdx_value_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_waitForRobIdx_value_io_rdata_2_MPORT_data =
    data_cf_waitForRobIdx_value[data_cf_waitForRobIdx_value_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_waitForRobIdx_value_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_waitForRobIdx_value_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_waitForRobIdx_value_io_rdata_3_MPORT_data =
    data_cf_waitForRobIdx_value[data_cf_waitForRobIdx_value_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_waitForRobIdx_value_MPORT_data = io_wdata_0_cf_waitForRobIdx_value;
  assign data_cf_waitForRobIdx_value_MPORT_addr = io_waddr_0;
  assign data_cf_waitForRobIdx_value_MPORT_mask = 1'h1;
  assign data_cf_waitForRobIdx_value_MPORT_en = io_wen_0;
  assign data_cf_waitForRobIdx_value_MPORT_1_data = io_wdata_1_cf_waitForRobIdx_value;
  assign data_cf_waitForRobIdx_value_MPORT_1_addr = io_waddr_1;
  assign data_cf_waitForRobIdx_value_MPORT_1_mask = 1'h1;
  assign data_cf_waitForRobIdx_value_MPORT_1_en = io_wen_1;
  assign data_cf_waitForRobIdx_value_MPORT_2_data = io_wdata_2_cf_waitForRobIdx_value;
  assign data_cf_waitForRobIdx_value_MPORT_2_addr = io_waddr_2;
  assign data_cf_waitForRobIdx_value_MPORT_2_mask = 1'h1;
  assign data_cf_waitForRobIdx_value_MPORT_2_en = io_wen_2;
  assign data_cf_waitForRobIdx_value_MPORT_3_data = io_wdata_3_cf_waitForRobIdx_value;
  assign data_cf_waitForRobIdx_value_MPORT_3_addr = io_waddr_3;
  assign data_cf_waitForRobIdx_value_MPORT_3_mask = 1'h1;
  assign data_cf_waitForRobIdx_value_MPORT_3_en = io_wen_3;
  assign data_cf_loadWaitBit_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_loadWaitBit_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_loadWaitBit_io_rdata_0_MPORT_data = data_cf_loadWaitBit[data_cf_loadWaitBit_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_loadWaitBit_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_loadWaitBit_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_loadWaitBit_io_rdata_1_MPORT_data = data_cf_loadWaitBit[data_cf_loadWaitBit_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_loadWaitBit_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_loadWaitBit_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_loadWaitBit_io_rdata_2_MPORT_data = data_cf_loadWaitBit[data_cf_loadWaitBit_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_loadWaitBit_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_loadWaitBit_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_loadWaitBit_io_rdata_3_MPORT_data = data_cf_loadWaitBit[data_cf_loadWaitBit_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_loadWaitBit_MPORT_data = io_wdata_0_cf_loadWaitBit;
  assign data_cf_loadWaitBit_MPORT_addr = io_waddr_0;
  assign data_cf_loadWaitBit_MPORT_mask = 1'h1;
  assign data_cf_loadWaitBit_MPORT_en = io_wen_0;
  assign data_cf_loadWaitBit_MPORT_1_data = io_wdata_1_cf_loadWaitBit;
  assign data_cf_loadWaitBit_MPORT_1_addr = io_waddr_1;
  assign data_cf_loadWaitBit_MPORT_1_mask = 1'h1;
  assign data_cf_loadWaitBit_MPORT_1_en = io_wen_1;
  assign data_cf_loadWaitBit_MPORT_2_data = io_wdata_2_cf_loadWaitBit;
  assign data_cf_loadWaitBit_MPORT_2_addr = io_waddr_2;
  assign data_cf_loadWaitBit_MPORT_2_mask = 1'h1;
  assign data_cf_loadWaitBit_MPORT_2_en = io_wen_2;
  assign data_cf_loadWaitBit_MPORT_3_data = io_wdata_3_cf_loadWaitBit;
  assign data_cf_loadWaitBit_MPORT_3_addr = io_waddr_3;
  assign data_cf_loadWaitBit_MPORT_3_mask = 1'h1;
  assign data_cf_loadWaitBit_MPORT_3_en = io_wen_3;
  assign data_cf_loadWaitStrict_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_loadWaitStrict_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_loadWaitStrict_io_rdata_0_MPORT_data =
    data_cf_loadWaitStrict[data_cf_loadWaitStrict_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_loadWaitStrict_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_loadWaitStrict_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_loadWaitStrict_io_rdata_1_MPORT_data =
    data_cf_loadWaitStrict[data_cf_loadWaitStrict_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_loadWaitStrict_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_loadWaitStrict_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_loadWaitStrict_io_rdata_2_MPORT_data =
    data_cf_loadWaitStrict[data_cf_loadWaitStrict_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_loadWaitStrict_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_loadWaitStrict_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_loadWaitStrict_io_rdata_3_MPORT_data =
    data_cf_loadWaitStrict[data_cf_loadWaitStrict_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_loadWaitStrict_MPORT_data = io_wdata_0_cf_loadWaitStrict;
  assign data_cf_loadWaitStrict_MPORT_addr = io_waddr_0;
  assign data_cf_loadWaitStrict_MPORT_mask = 1'h1;
  assign data_cf_loadWaitStrict_MPORT_en = io_wen_0;
  assign data_cf_loadWaitStrict_MPORT_1_data = io_wdata_1_cf_loadWaitStrict;
  assign data_cf_loadWaitStrict_MPORT_1_addr = io_waddr_1;
  assign data_cf_loadWaitStrict_MPORT_1_mask = 1'h1;
  assign data_cf_loadWaitStrict_MPORT_1_en = io_wen_1;
  assign data_cf_loadWaitStrict_MPORT_2_data = io_wdata_2_cf_loadWaitStrict;
  assign data_cf_loadWaitStrict_MPORT_2_addr = io_waddr_2;
  assign data_cf_loadWaitStrict_MPORT_2_mask = 1'h1;
  assign data_cf_loadWaitStrict_MPORT_2_en = io_wen_2;
  assign data_cf_loadWaitStrict_MPORT_3_data = io_wdata_3_cf_loadWaitStrict;
  assign data_cf_loadWaitStrict_MPORT_3_addr = io_waddr_3;
  assign data_cf_loadWaitStrict_MPORT_3_mask = 1'h1;
  assign data_cf_loadWaitStrict_MPORT_3_en = io_wen_3;
  assign data_cf_ssid_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_ssid_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_ssid_io_rdata_0_MPORT_data = data_cf_ssid[data_cf_ssid_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ssid_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_ssid_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_ssid_io_rdata_1_MPORT_data = data_cf_ssid[data_cf_ssid_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ssid_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_ssid_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_ssid_io_rdata_2_MPORT_data = data_cf_ssid[data_cf_ssid_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ssid_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_ssid_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_ssid_io_rdata_3_MPORT_data = data_cf_ssid[data_cf_ssid_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ssid_MPORT_data = io_wdata_0_cf_ssid;
  assign data_cf_ssid_MPORT_addr = io_waddr_0;
  assign data_cf_ssid_MPORT_mask = 1'h1;
  assign data_cf_ssid_MPORT_en = io_wen_0;
  assign data_cf_ssid_MPORT_1_data = io_wdata_1_cf_ssid;
  assign data_cf_ssid_MPORT_1_addr = io_waddr_1;
  assign data_cf_ssid_MPORT_1_mask = 1'h1;
  assign data_cf_ssid_MPORT_1_en = io_wen_1;
  assign data_cf_ssid_MPORT_2_data = io_wdata_2_cf_ssid;
  assign data_cf_ssid_MPORT_2_addr = io_waddr_2;
  assign data_cf_ssid_MPORT_2_mask = 1'h1;
  assign data_cf_ssid_MPORT_2_en = io_wen_2;
  assign data_cf_ssid_MPORT_3_data = io_wdata_3_cf_ssid;
  assign data_cf_ssid_MPORT_3_addr = io_waddr_3;
  assign data_cf_ssid_MPORT_3_mask = 1'h1;
  assign data_cf_ssid_MPORT_3_en = io_wen_3;
  assign data_cf_ftqPtr_flag_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_ftqPtr_flag_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_ftqPtr_flag_io_rdata_0_MPORT_data = data_cf_ftqPtr_flag[data_cf_ftqPtr_flag_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqPtr_flag_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_ftqPtr_flag_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_ftqPtr_flag_io_rdata_1_MPORT_data = data_cf_ftqPtr_flag[data_cf_ftqPtr_flag_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqPtr_flag_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_ftqPtr_flag_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_ftqPtr_flag_io_rdata_2_MPORT_data = data_cf_ftqPtr_flag[data_cf_ftqPtr_flag_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqPtr_flag_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_ftqPtr_flag_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_ftqPtr_flag_io_rdata_3_MPORT_data = data_cf_ftqPtr_flag[data_cf_ftqPtr_flag_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqPtr_flag_MPORT_data = io_wdata_0_cf_ftqPtr_flag;
  assign data_cf_ftqPtr_flag_MPORT_addr = io_waddr_0;
  assign data_cf_ftqPtr_flag_MPORT_mask = 1'h1;
  assign data_cf_ftqPtr_flag_MPORT_en = io_wen_0;
  assign data_cf_ftqPtr_flag_MPORT_1_data = io_wdata_1_cf_ftqPtr_flag;
  assign data_cf_ftqPtr_flag_MPORT_1_addr = io_waddr_1;
  assign data_cf_ftqPtr_flag_MPORT_1_mask = 1'h1;
  assign data_cf_ftqPtr_flag_MPORT_1_en = io_wen_1;
  assign data_cf_ftqPtr_flag_MPORT_2_data = io_wdata_2_cf_ftqPtr_flag;
  assign data_cf_ftqPtr_flag_MPORT_2_addr = io_waddr_2;
  assign data_cf_ftqPtr_flag_MPORT_2_mask = 1'h1;
  assign data_cf_ftqPtr_flag_MPORT_2_en = io_wen_2;
  assign data_cf_ftqPtr_flag_MPORT_3_data = io_wdata_3_cf_ftqPtr_flag;
  assign data_cf_ftqPtr_flag_MPORT_3_addr = io_waddr_3;
  assign data_cf_ftqPtr_flag_MPORT_3_mask = 1'h1;
  assign data_cf_ftqPtr_flag_MPORT_3_en = io_wen_3;
  assign data_cf_ftqPtr_value_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_ftqPtr_value_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_ftqPtr_value_io_rdata_0_MPORT_data = data_cf_ftqPtr_value[data_cf_ftqPtr_value_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqPtr_value_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_ftqPtr_value_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_ftqPtr_value_io_rdata_1_MPORT_data = data_cf_ftqPtr_value[data_cf_ftqPtr_value_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqPtr_value_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_ftqPtr_value_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_ftqPtr_value_io_rdata_2_MPORT_data = data_cf_ftqPtr_value[data_cf_ftqPtr_value_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqPtr_value_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_ftqPtr_value_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_ftqPtr_value_io_rdata_3_MPORT_data = data_cf_ftqPtr_value[data_cf_ftqPtr_value_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqPtr_value_MPORT_data = io_wdata_0_cf_ftqPtr_value;
  assign data_cf_ftqPtr_value_MPORT_addr = io_waddr_0;
  assign data_cf_ftqPtr_value_MPORT_mask = 1'h1;
  assign data_cf_ftqPtr_value_MPORT_en = io_wen_0;
  assign data_cf_ftqPtr_value_MPORT_1_data = io_wdata_1_cf_ftqPtr_value;
  assign data_cf_ftqPtr_value_MPORT_1_addr = io_waddr_1;
  assign data_cf_ftqPtr_value_MPORT_1_mask = 1'h1;
  assign data_cf_ftqPtr_value_MPORT_1_en = io_wen_1;
  assign data_cf_ftqPtr_value_MPORT_2_data = io_wdata_2_cf_ftqPtr_value;
  assign data_cf_ftqPtr_value_MPORT_2_addr = io_waddr_2;
  assign data_cf_ftqPtr_value_MPORT_2_mask = 1'h1;
  assign data_cf_ftqPtr_value_MPORT_2_en = io_wen_2;
  assign data_cf_ftqPtr_value_MPORT_3_data = io_wdata_3_cf_ftqPtr_value;
  assign data_cf_ftqPtr_value_MPORT_3_addr = io_waddr_3;
  assign data_cf_ftqPtr_value_MPORT_3_mask = 1'h1;
  assign data_cf_ftqPtr_value_MPORT_3_en = io_wen_3;
  assign data_cf_ftqOffset_io_rdata_0_MPORT_en = 1'h1;
  assign data_cf_ftqOffset_io_rdata_0_MPORT_addr = raddr_0;
  assign data_cf_ftqOffset_io_rdata_0_MPORT_data = data_cf_ftqOffset[data_cf_ftqOffset_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqOffset_io_rdata_1_MPORT_en = 1'h1;
  assign data_cf_ftqOffset_io_rdata_1_MPORT_addr = raddr_1;
  assign data_cf_ftqOffset_io_rdata_1_MPORT_data = data_cf_ftqOffset[data_cf_ftqOffset_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqOffset_io_rdata_2_MPORT_en = 1'h1;
  assign data_cf_ftqOffset_io_rdata_2_MPORT_addr = raddr_2;
  assign data_cf_ftqOffset_io_rdata_2_MPORT_data = data_cf_ftqOffset[data_cf_ftqOffset_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqOffset_io_rdata_3_MPORT_en = 1'h1;
  assign data_cf_ftqOffset_io_rdata_3_MPORT_addr = raddr_3;
  assign data_cf_ftqOffset_io_rdata_3_MPORT_data = data_cf_ftqOffset[data_cf_ftqOffset_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_cf_ftqOffset_MPORT_data = io_wdata_0_cf_ftqOffset;
  assign data_cf_ftqOffset_MPORT_addr = io_waddr_0;
  assign data_cf_ftqOffset_MPORT_mask = 1'h1;
  assign data_cf_ftqOffset_MPORT_en = io_wen_0;
  assign data_cf_ftqOffset_MPORT_1_data = io_wdata_1_cf_ftqOffset;
  assign data_cf_ftqOffset_MPORT_1_addr = io_waddr_1;
  assign data_cf_ftqOffset_MPORT_1_mask = 1'h1;
  assign data_cf_ftqOffset_MPORT_1_en = io_wen_1;
  assign data_cf_ftqOffset_MPORT_2_data = io_wdata_2_cf_ftqOffset;
  assign data_cf_ftqOffset_MPORT_2_addr = io_waddr_2;
  assign data_cf_ftqOffset_MPORT_2_mask = 1'h1;
  assign data_cf_ftqOffset_MPORT_2_en = io_wen_2;
  assign data_cf_ftqOffset_MPORT_3_data = io_wdata_3_cf_ftqOffset;
  assign data_cf_ftqOffset_MPORT_3_addr = io_waddr_3;
  assign data_cf_ftqOffset_MPORT_3_mask = 1'h1;
  assign data_cf_ftqOffset_MPORT_3_en = io_wen_3;
  assign data_ctrl_srcType_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_srcType_0_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_srcType_0_io_rdata_0_MPORT_data = data_ctrl_srcType_0[data_ctrl_srcType_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_0_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_srcType_0_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_srcType_0_io_rdata_1_MPORT_data = data_ctrl_srcType_0[data_ctrl_srcType_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_0_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_srcType_0_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_srcType_0_io_rdata_2_MPORT_data = data_ctrl_srcType_0[data_ctrl_srcType_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_0_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_srcType_0_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_srcType_0_io_rdata_3_MPORT_data = data_ctrl_srcType_0[data_ctrl_srcType_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_0_MPORT_data = io_wdata_0_ctrl_srcType_0;
  assign data_ctrl_srcType_0_MPORT_addr = io_waddr_0;
  assign data_ctrl_srcType_0_MPORT_mask = 1'h1;
  assign data_ctrl_srcType_0_MPORT_en = io_wen_0;
  assign data_ctrl_srcType_0_MPORT_1_data = io_wdata_1_ctrl_srcType_0;
  assign data_ctrl_srcType_0_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_srcType_0_MPORT_1_mask = 1'h1;
  assign data_ctrl_srcType_0_MPORT_1_en = io_wen_1;
  assign data_ctrl_srcType_0_MPORT_2_data = io_wdata_2_ctrl_srcType_0;
  assign data_ctrl_srcType_0_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_srcType_0_MPORT_2_mask = 1'h1;
  assign data_ctrl_srcType_0_MPORT_2_en = io_wen_2;
  assign data_ctrl_srcType_0_MPORT_3_data = io_wdata_3_ctrl_srcType_0;
  assign data_ctrl_srcType_0_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_srcType_0_MPORT_3_mask = 1'h1;
  assign data_ctrl_srcType_0_MPORT_3_en = io_wen_3;
  assign data_ctrl_srcType_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_srcType_1_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_srcType_1_io_rdata_0_MPORT_data = data_ctrl_srcType_1[data_ctrl_srcType_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_1_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_srcType_1_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_srcType_1_io_rdata_1_MPORT_data = data_ctrl_srcType_1[data_ctrl_srcType_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_1_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_srcType_1_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_srcType_1_io_rdata_2_MPORT_data = data_ctrl_srcType_1[data_ctrl_srcType_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_1_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_srcType_1_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_srcType_1_io_rdata_3_MPORT_data = data_ctrl_srcType_1[data_ctrl_srcType_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_1_MPORT_data = io_wdata_0_ctrl_srcType_1;
  assign data_ctrl_srcType_1_MPORT_addr = io_waddr_0;
  assign data_ctrl_srcType_1_MPORT_mask = 1'h1;
  assign data_ctrl_srcType_1_MPORT_en = io_wen_0;
  assign data_ctrl_srcType_1_MPORT_1_data = io_wdata_1_ctrl_srcType_1;
  assign data_ctrl_srcType_1_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_srcType_1_MPORT_1_mask = 1'h1;
  assign data_ctrl_srcType_1_MPORT_1_en = io_wen_1;
  assign data_ctrl_srcType_1_MPORT_2_data = io_wdata_2_ctrl_srcType_1;
  assign data_ctrl_srcType_1_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_srcType_1_MPORT_2_mask = 1'h1;
  assign data_ctrl_srcType_1_MPORT_2_en = io_wen_2;
  assign data_ctrl_srcType_1_MPORT_3_data = io_wdata_3_ctrl_srcType_1;
  assign data_ctrl_srcType_1_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_srcType_1_MPORT_3_mask = 1'h1;
  assign data_ctrl_srcType_1_MPORT_3_en = io_wen_3;
  assign data_ctrl_srcType_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_srcType_2_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_srcType_2_io_rdata_0_MPORT_data = data_ctrl_srcType_2[data_ctrl_srcType_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_2_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_srcType_2_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_srcType_2_io_rdata_1_MPORT_data = data_ctrl_srcType_2[data_ctrl_srcType_2_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_2_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_srcType_2_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_srcType_2_io_rdata_2_MPORT_data = data_ctrl_srcType_2[data_ctrl_srcType_2_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_2_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_srcType_2_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_srcType_2_io_rdata_3_MPORT_data = data_ctrl_srcType_2[data_ctrl_srcType_2_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_srcType_2_MPORT_data = io_wdata_0_ctrl_srcType_2;
  assign data_ctrl_srcType_2_MPORT_addr = io_waddr_0;
  assign data_ctrl_srcType_2_MPORT_mask = 1'h1;
  assign data_ctrl_srcType_2_MPORT_en = io_wen_0;
  assign data_ctrl_srcType_2_MPORT_1_data = io_wdata_1_ctrl_srcType_2;
  assign data_ctrl_srcType_2_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_srcType_2_MPORT_1_mask = 1'h1;
  assign data_ctrl_srcType_2_MPORT_1_en = io_wen_1;
  assign data_ctrl_srcType_2_MPORT_2_data = io_wdata_2_ctrl_srcType_2;
  assign data_ctrl_srcType_2_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_srcType_2_MPORT_2_mask = 1'h1;
  assign data_ctrl_srcType_2_MPORT_2_en = io_wen_2;
  assign data_ctrl_srcType_2_MPORT_3_data = io_wdata_3_ctrl_srcType_2;
  assign data_ctrl_srcType_2_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_srcType_2_MPORT_3_mask = 1'h1;
  assign data_ctrl_srcType_2_MPORT_3_en = io_wen_3;
  assign data_ctrl_fuType_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fuType_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fuType_io_rdata_0_MPORT_data = data_ctrl_fuType[data_ctrl_fuType_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fuType_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fuType_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fuType_io_rdata_1_MPORT_data = data_ctrl_fuType[data_ctrl_fuType_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fuType_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fuType_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fuType_io_rdata_2_MPORT_data = data_ctrl_fuType[data_ctrl_fuType_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fuType_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fuType_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fuType_io_rdata_3_MPORT_data = data_ctrl_fuType[data_ctrl_fuType_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fuType_MPORT_data = io_wdata_0_ctrl_fuType;
  assign data_ctrl_fuType_MPORT_addr = io_waddr_0;
  assign data_ctrl_fuType_MPORT_mask = 1'h1;
  assign data_ctrl_fuType_MPORT_en = io_wen_0;
  assign data_ctrl_fuType_MPORT_1_data = io_wdata_1_ctrl_fuType;
  assign data_ctrl_fuType_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fuType_MPORT_1_mask = 1'h1;
  assign data_ctrl_fuType_MPORT_1_en = io_wen_1;
  assign data_ctrl_fuType_MPORT_2_data = io_wdata_2_ctrl_fuType;
  assign data_ctrl_fuType_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fuType_MPORT_2_mask = 1'h1;
  assign data_ctrl_fuType_MPORT_2_en = io_wen_2;
  assign data_ctrl_fuType_MPORT_3_data = io_wdata_3_ctrl_fuType;
  assign data_ctrl_fuType_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fuType_MPORT_3_mask = 1'h1;
  assign data_ctrl_fuType_MPORT_3_en = io_wen_3;
  assign data_ctrl_fuOpType_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fuOpType_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fuOpType_io_rdata_0_MPORT_data = data_ctrl_fuOpType[data_ctrl_fuOpType_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fuOpType_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fuOpType_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fuOpType_io_rdata_1_MPORT_data = data_ctrl_fuOpType[data_ctrl_fuOpType_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fuOpType_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fuOpType_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fuOpType_io_rdata_2_MPORT_data = data_ctrl_fuOpType[data_ctrl_fuOpType_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fuOpType_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fuOpType_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fuOpType_io_rdata_3_MPORT_data = data_ctrl_fuOpType[data_ctrl_fuOpType_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fuOpType_MPORT_data = io_wdata_0_ctrl_fuOpType;
  assign data_ctrl_fuOpType_MPORT_addr = io_waddr_0;
  assign data_ctrl_fuOpType_MPORT_mask = 1'h1;
  assign data_ctrl_fuOpType_MPORT_en = io_wen_0;
  assign data_ctrl_fuOpType_MPORT_1_data = io_wdata_1_ctrl_fuOpType;
  assign data_ctrl_fuOpType_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fuOpType_MPORT_1_mask = 1'h1;
  assign data_ctrl_fuOpType_MPORT_1_en = io_wen_1;
  assign data_ctrl_fuOpType_MPORT_2_data = io_wdata_2_ctrl_fuOpType;
  assign data_ctrl_fuOpType_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fuOpType_MPORT_2_mask = 1'h1;
  assign data_ctrl_fuOpType_MPORT_2_en = io_wen_2;
  assign data_ctrl_fuOpType_MPORT_3_data = io_wdata_3_ctrl_fuOpType;
  assign data_ctrl_fuOpType_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fuOpType_MPORT_3_mask = 1'h1;
  assign data_ctrl_fuOpType_MPORT_3_en = io_wen_3;
  assign data_ctrl_rfWen_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_rfWen_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_rfWen_io_rdata_0_MPORT_data = data_ctrl_rfWen[data_ctrl_rfWen_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_rfWen_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_rfWen_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_rfWen_io_rdata_1_MPORT_data = data_ctrl_rfWen[data_ctrl_rfWen_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_rfWen_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_rfWen_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_rfWen_io_rdata_2_MPORT_data = data_ctrl_rfWen[data_ctrl_rfWen_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_rfWen_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_rfWen_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_rfWen_io_rdata_3_MPORT_data = data_ctrl_rfWen[data_ctrl_rfWen_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_rfWen_MPORT_data = io_wdata_0_ctrl_rfWen;
  assign data_ctrl_rfWen_MPORT_addr = io_waddr_0;
  assign data_ctrl_rfWen_MPORT_mask = 1'h1;
  assign data_ctrl_rfWen_MPORT_en = io_wen_0;
  assign data_ctrl_rfWen_MPORT_1_data = io_wdata_1_ctrl_rfWen;
  assign data_ctrl_rfWen_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_rfWen_MPORT_1_mask = 1'h1;
  assign data_ctrl_rfWen_MPORT_1_en = io_wen_1;
  assign data_ctrl_rfWen_MPORT_2_data = io_wdata_2_ctrl_rfWen;
  assign data_ctrl_rfWen_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_rfWen_MPORT_2_mask = 1'h1;
  assign data_ctrl_rfWen_MPORT_2_en = io_wen_2;
  assign data_ctrl_rfWen_MPORT_3_data = io_wdata_3_ctrl_rfWen;
  assign data_ctrl_rfWen_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_rfWen_MPORT_3_mask = 1'h1;
  assign data_ctrl_rfWen_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpWen_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpWen_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpWen_io_rdata_0_MPORT_data = data_ctrl_fpWen[data_ctrl_fpWen_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpWen_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpWen_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpWen_io_rdata_1_MPORT_data = data_ctrl_fpWen[data_ctrl_fpWen_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpWen_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpWen_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpWen_io_rdata_2_MPORT_data = data_ctrl_fpWen[data_ctrl_fpWen_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpWen_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpWen_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpWen_io_rdata_3_MPORT_data = data_ctrl_fpWen[data_ctrl_fpWen_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpWen_MPORT_data = io_wdata_0_ctrl_fpWen;
  assign data_ctrl_fpWen_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpWen_MPORT_mask = 1'h1;
  assign data_ctrl_fpWen_MPORT_en = io_wen_0;
  assign data_ctrl_fpWen_MPORT_1_data = io_wdata_1_ctrl_fpWen;
  assign data_ctrl_fpWen_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpWen_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpWen_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpWen_MPORT_2_data = io_wdata_2_ctrl_fpWen;
  assign data_ctrl_fpWen_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpWen_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpWen_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpWen_MPORT_3_data = io_wdata_3_ctrl_fpWen;
  assign data_ctrl_fpWen_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpWen_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpWen_MPORT_3_en = io_wen_3;
  assign data_ctrl_selImm_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_selImm_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_selImm_io_rdata_0_MPORT_data = data_ctrl_selImm[data_ctrl_selImm_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_selImm_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_selImm_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_selImm_io_rdata_1_MPORT_data = data_ctrl_selImm[data_ctrl_selImm_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_selImm_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_selImm_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_selImm_io_rdata_2_MPORT_data = data_ctrl_selImm[data_ctrl_selImm_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_selImm_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_selImm_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_selImm_io_rdata_3_MPORT_data = data_ctrl_selImm[data_ctrl_selImm_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_selImm_MPORT_data = io_wdata_0_ctrl_selImm;
  assign data_ctrl_selImm_MPORT_addr = io_waddr_0;
  assign data_ctrl_selImm_MPORT_mask = 1'h1;
  assign data_ctrl_selImm_MPORT_en = io_wen_0;
  assign data_ctrl_selImm_MPORT_1_data = io_wdata_1_ctrl_selImm;
  assign data_ctrl_selImm_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_selImm_MPORT_1_mask = 1'h1;
  assign data_ctrl_selImm_MPORT_1_en = io_wen_1;
  assign data_ctrl_selImm_MPORT_2_data = io_wdata_2_ctrl_selImm;
  assign data_ctrl_selImm_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_selImm_MPORT_2_mask = 1'h1;
  assign data_ctrl_selImm_MPORT_2_en = io_wen_2;
  assign data_ctrl_selImm_MPORT_3_data = io_wdata_3_ctrl_selImm;
  assign data_ctrl_selImm_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_selImm_MPORT_3_mask = 1'h1;
  assign data_ctrl_selImm_MPORT_3_en = io_wen_3;
  assign data_ctrl_imm_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_imm_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_imm_io_rdata_0_MPORT_data = data_ctrl_imm[data_ctrl_imm_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_imm_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_imm_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_imm_io_rdata_1_MPORT_data = data_ctrl_imm[data_ctrl_imm_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_imm_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_imm_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_imm_io_rdata_2_MPORT_data = data_ctrl_imm[data_ctrl_imm_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_imm_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_imm_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_imm_io_rdata_3_MPORT_data = data_ctrl_imm[data_ctrl_imm_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_imm_MPORT_data = io_wdata_0_ctrl_imm;
  assign data_ctrl_imm_MPORT_addr = io_waddr_0;
  assign data_ctrl_imm_MPORT_mask = 1'h1;
  assign data_ctrl_imm_MPORT_en = io_wen_0;
  assign data_ctrl_imm_MPORT_1_data = io_wdata_1_ctrl_imm;
  assign data_ctrl_imm_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_imm_MPORT_1_mask = 1'h1;
  assign data_ctrl_imm_MPORT_1_en = io_wen_1;
  assign data_ctrl_imm_MPORT_2_data = io_wdata_2_ctrl_imm;
  assign data_ctrl_imm_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_imm_MPORT_2_mask = 1'h1;
  assign data_ctrl_imm_MPORT_2_en = io_wen_2;
  assign data_ctrl_imm_MPORT_3_data = io_wdata_3_ctrl_imm;
  assign data_ctrl_imm_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_imm_MPORT_3_mask = 1'h1;
  assign data_ctrl_imm_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_isAddSub_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_isAddSub_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_isAddSub_io_rdata_0_MPORT_data =
    data_ctrl_fpu_isAddSub[data_ctrl_fpu_isAddSub_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_isAddSub_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_isAddSub_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_isAddSub_io_rdata_1_MPORT_data =
    data_ctrl_fpu_isAddSub[data_ctrl_fpu_isAddSub_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_isAddSub_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_isAddSub_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_isAddSub_io_rdata_2_MPORT_data =
    data_ctrl_fpu_isAddSub[data_ctrl_fpu_isAddSub_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_isAddSub_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_isAddSub_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_isAddSub_io_rdata_3_MPORT_data =
    data_ctrl_fpu_isAddSub[data_ctrl_fpu_isAddSub_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_isAddSub_MPORT_data = io_wdata_0_ctrl_fpu_isAddSub;
  assign data_ctrl_fpu_isAddSub_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_isAddSub_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_isAddSub_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_isAddSub_MPORT_1_data = io_wdata_1_ctrl_fpu_isAddSub;
  assign data_ctrl_fpu_isAddSub_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_isAddSub_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_isAddSub_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_isAddSub_MPORT_2_data = io_wdata_2_ctrl_fpu_isAddSub;
  assign data_ctrl_fpu_isAddSub_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_isAddSub_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_isAddSub_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_isAddSub_MPORT_3_data = io_wdata_3_ctrl_fpu_isAddSub;
  assign data_ctrl_fpu_isAddSub_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_isAddSub_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_isAddSub_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_typeTagIn_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typeTagIn_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_typeTagIn_io_rdata_0_MPORT_data =
    data_ctrl_fpu_typeTagIn[data_ctrl_fpu_typeTagIn_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typeTagIn_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typeTagIn_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_typeTagIn_io_rdata_1_MPORT_data =
    data_ctrl_fpu_typeTagIn[data_ctrl_fpu_typeTagIn_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typeTagIn_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typeTagIn_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_typeTagIn_io_rdata_2_MPORT_data =
    data_ctrl_fpu_typeTagIn[data_ctrl_fpu_typeTagIn_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typeTagIn_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typeTagIn_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_typeTagIn_io_rdata_3_MPORT_data =
    data_ctrl_fpu_typeTagIn[data_ctrl_fpu_typeTagIn_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typeTagIn_MPORT_data = io_wdata_0_ctrl_fpu_typeTagIn;
  assign data_ctrl_fpu_typeTagIn_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_typeTagIn_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_typeTagIn_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_typeTagIn_MPORT_1_data = io_wdata_1_ctrl_fpu_typeTagIn;
  assign data_ctrl_fpu_typeTagIn_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_typeTagIn_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_typeTagIn_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_typeTagIn_MPORT_2_data = io_wdata_2_ctrl_fpu_typeTagIn;
  assign data_ctrl_fpu_typeTagIn_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_typeTagIn_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_typeTagIn_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_typeTagIn_MPORT_3_data = io_wdata_3_ctrl_fpu_typeTagIn;
  assign data_ctrl_fpu_typeTagIn_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_typeTagIn_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_typeTagIn_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_typeTagOut_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typeTagOut_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_typeTagOut_io_rdata_0_MPORT_data =
    data_ctrl_fpu_typeTagOut[data_ctrl_fpu_typeTagOut_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typeTagOut_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typeTagOut_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_typeTagOut_io_rdata_1_MPORT_data =
    data_ctrl_fpu_typeTagOut[data_ctrl_fpu_typeTagOut_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typeTagOut_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typeTagOut_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_typeTagOut_io_rdata_2_MPORT_data =
    data_ctrl_fpu_typeTagOut[data_ctrl_fpu_typeTagOut_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typeTagOut_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typeTagOut_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_typeTagOut_io_rdata_3_MPORT_data =
    data_ctrl_fpu_typeTagOut[data_ctrl_fpu_typeTagOut_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typeTagOut_MPORT_data = io_wdata_0_ctrl_fpu_typeTagOut;
  assign data_ctrl_fpu_typeTagOut_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_typeTagOut_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_typeTagOut_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_typeTagOut_MPORT_1_data = io_wdata_1_ctrl_fpu_typeTagOut;
  assign data_ctrl_fpu_typeTagOut_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_typeTagOut_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_typeTagOut_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_typeTagOut_MPORT_2_data = io_wdata_2_ctrl_fpu_typeTagOut;
  assign data_ctrl_fpu_typeTagOut_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_typeTagOut_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_typeTagOut_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_typeTagOut_MPORT_3_data = io_wdata_3_ctrl_fpu_typeTagOut;
  assign data_ctrl_fpu_typeTagOut_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_typeTagOut_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_typeTagOut_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_fromInt_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fromInt_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_fromInt_io_rdata_0_MPORT_data =
    data_ctrl_fpu_fromInt[data_ctrl_fpu_fromInt_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fromInt_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fromInt_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_fromInt_io_rdata_1_MPORT_data =
    data_ctrl_fpu_fromInt[data_ctrl_fpu_fromInt_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fromInt_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fromInt_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_fromInt_io_rdata_2_MPORT_data =
    data_ctrl_fpu_fromInt[data_ctrl_fpu_fromInt_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fromInt_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fromInt_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_fromInt_io_rdata_3_MPORT_data =
    data_ctrl_fpu_fromInt[data_ctrl_fpu_fromInt_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fromInt_MPORT_data = io_wdata_0_ctrl_fpu_fromInt;
  assign data_ctrl_fpu_fromInt_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_fromInt_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_fromInt_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_fromInt_MPORT_1_data = io_wdata_1_ctrl_fpu_fromInt;
  assign data_ctrl_fpu_fromInt_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_fromInt_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_fromInt_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_fromInt_MPORT_2_data = io_wdata_2_ctrl_fpu_fromInt;
  assign data_ctrl_fpu_fromInt_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_fromInt_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_fromInt_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_fromInt_MPORT_3_data = io_wdata_3_ctrl_fpu_fromInt;
  assign data_ctrl_fpu_fromInt_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_fromInt_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_fromInt_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_wflags_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_wflags_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_wflags_io_rdata_0_MPORT_data = data_ctrl_fpu_wflags[data_ctrl_fpu_wflags_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_wflags_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_wflags_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_wflags_io_rdata_1_MPORT_data = data_ctrl_fpu_wflags[data_ctrl_fpu_wflags_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_wflags_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_wflags_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_wflags_io_rdata_2_MPORT_data = data_ctrl_fpu_wflags[data_ctrl_fpu_wflags_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_wflags_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_wflags_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_wflags_io_rdata_3_MPORT_data = data_ctrl_fpu_wflags[data_ctrl_fpu_wflags_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_wflags_MPORT_data = io_wdata_0_ctrl_fpu_wflags;
  assign data_ctrl_fpu_wflags_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_wflags_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_wflags_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_wflags_MPORT_1_data = io_wdata_1_ctrl_fpu_wflags;
  assign data_ctrl_fpu_wflags_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_wflags_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_wflags_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_wflags_MPORT_2_data = io_wdata_2_ctrl_fpu_wflags;
  assign data_ctrl_fpu_wflags_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_wflags_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_wflags_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_wflags_MPORT_3_data = io_wdata_3_ctrl_fpu_wflags;
  assign data_ctrl_fpu_wflags_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_wflags_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_wflags_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_fpWen_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fpWen_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_fpWen_io_rdata_0_MPORT_data = data_ctrl_fpu_fpWen[data_ctrl_fpu_fpWen_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fpWen_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fpWen_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_fpWen_io_rdata_1_MPORT_data = data_ctrl_fpu_fpWen[data_ctrl_fpu_fpWen_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fpWen_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fpWen_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_fpWen_io_rdata_2_MPORT_data = data_ctrl_fpu_fpWen[data_ctrl_fpu_fpWen_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fpWen_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fpWen_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_fpWen_io_rdata_3_MPORT_data = data_ctrl_fpu_fpWen[data_ctrl_fpu_fpWen_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fpWen_MPORT_data = io_wdata_0_ctrl_fpu_fpWen;
  assign data_ctrl_fpu_fpWen_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_fpWen_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_fpWen_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_fpWen_MPORT_1_data = io_wdata_1_ctrl_fpu_fpWen;
  assign data_ctrl_fpu_fpWen_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_fpWen_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_fpWen_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_fpWen_MPORT_2_data = io_wdata_2_ctrl_fpu_fpWen;
  assign data_ctrl_fpu_fpWen_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_fpWen_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_fpWen_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_fpWen_MPORT_3_data = io_wdata_3_ctrl_fpu_fpWen;
  assign data_ctrl_fpu_fpWen_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_fpWen_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_fpWen_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_fmaCmd_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fmaCmd_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_fmaCmd_io_rdata_0_MPORT_data = data_ctrl_fpu_fmaCmd[data_ctrl_fpu_fmaCmd_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fmaCmd_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fmaCmd_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_fmaCmd_io_rdata_1_MPORT_data = data_ctrl_fpu_fmaCmd[data_ctrl_fpu_fmaCmd_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fmaCmd_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fmaCmd_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_fmaCmd_io_rdata_2_MPORT_data = data_ctrl_fpu_fmaCmd[data_ctrl_fpu_fmaCmd_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fmaCmd_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fmaCmd_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_fmaCmd_io_rdata_3_MPORT_data = data_ctrl_fpu_fmaCmd[data_ctrl_fpu_fmaCmd_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fmaCmd_MPORT_data = io_wdata_0_ctrl_fpu_fmaCmd;
  assign data_ctrl_fpu_fmaCmd_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_fmaCmd_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_fmaCmd_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_fmaCmd_MPORT_1_data = io_wdata_1_ctrl_fpu_fmaCmd;
  assign data_ctrl_fpu_fmaCmd_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_fmaCmd_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_fmaCmd_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_fmaCmd_MPORT_2_data = io_wdata_2_ctrl_fpu_fmaCmd;
  assign data_ctrl_fpu_fmaCmd_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_fmaCmd_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_fmaCmd_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_fmaCmd_MPORT_3_data = io_wdata_3_ctrl_fpu_fmaCmd;
  assign data_ctrl_fpu_fmaCmd_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_fmaCmd_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_fmaCmd_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_div_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_div_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_div_io_rdata_0_MPORT_data = data_ctrl_fpu_div[data_ctrl_fpu_div_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_div_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_div_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_div_io_rdata_1_MPORT_data = data_ctrl_fpu_div[data_ctrl_fpu_div_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_div_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_div_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_div_io_rdata_2_MPORT_data = data_ctrl_fpu_div[data_ctrl_fpu_div_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_div_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_div_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_div_io_rdata_3_MPORT_data = data_ctrl_fpu_div[data_ctrl_fpu_div_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_div_MPORT_data = io_wdata_0_ctrl_fpu_div;
  assign data_ctrl_fpu_div_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_div_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_div_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_div_MPORT_1_data = io_wdata_1_ctrl_fpu_div;
  assign data_ctrl_fpu_div_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_div_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_div_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_div_MPORT_2_data = io_wdata_2_ctrl_fpu_div;
  assign data_ctrl_fpu_div_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_div_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_div_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_div_MPORT_3_data = io_wdata_3_ctrl_fpu_div;
  assign data_ctrl_fpu_div_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_div_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_div_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_sqrt_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_sqrt_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_sqrt_io_rdata_0_MPORT_data = data_ctrl_fpu_sqrt[data_ctrl_fpu_sqrt_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_sqrt_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_sqrt_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_sqrt_io_rdata_1_MPORT_data = data_ctrl_fpu_sqrt[data_ctrl_fpu_sqrt_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_sqrt_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_sqrt_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_sqrt_io_rdata_2_MPORT_data = data_ctrl_fpu_sqrt[data_ctrl_fpu_sqrt_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_sqrt_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_sqrt_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_sqrt_io_rdata_3_MPORT_data = data_ctrl_fpu_sqrt[data_ctrl_fpu_sqrt_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_sqrt_MPORT_data = io_wdata_0_ctrl_fpu_sqrt;
  assign data_ctrl_fpu_sqrt_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_sqrt_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_sqrt_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_sqrt_MPORT_1_data = io_wdata_1_ctrl_fpu_sqrt;
  assign data_ctrl_fpu_sqrt_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_sqrt_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_sqrt_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_sqrt_MPORT_2_data = io_wdata_2_ctrl_fpu_sqrt;
  assign data_ctrl_fpu_sqrt_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_sqrt_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_sqrt_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_sqrt_MPORT_3_data = io_wdata_3_ctrl_fpu_sqrt;
  assign data_ctrl_fpu_sqrt_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_sqrt_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_sqrt_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_fcvt_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fcvt_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_fcvt_io_rdata_0_MPORT_data = data_ctrl_fpu_fcvt[data_ctrl_fpu_fcvt_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fcvt_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fcvt_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_fcvt_io_rdata_1_MPORT_data = data_ctrl_fpu_fcvt[data_ctrl_fpu_fcvt_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fcvt_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fcvt_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_fcvt_io_rdata_2_MPORT_data = data_ctrl_fpu_fcvt[data_ctrl_fpu_fcvt_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fcvt_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fcvt_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_fcvt_io_rdata_3_MPORT_data = data_ctrl_fpu_fcvt[data_ctrl_fpu_fcvt_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fcvt_MPORT_data = io_wdata_0_ctrl_fpu_fcvt;
  assign data_ctrl_fpu_fcvt_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_fcvt_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_fcvt_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_fcvt_MPORT_1_data = io_wdata_1_ctrl_fpu_fcvt;
  assign data_ctrl_fpu_fcvt_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_fcvt_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_fcvt_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_fcvt_MPORT_2_data = io_wdata_2_ctrl_fpu_fcvt;
  assign data_ctrl_fpu_fcvt_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_fcvt_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_fcvt_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_fcvt_MPORT_3_data = io_wdata_3_ctrl_fpu_fcvt;
  assign data_ctrl_fpu_fcvt_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_fcvt_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_fcvt_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_typ_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typ_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_typ_io_rdata_0_MPORT_data = data_ctrl_fpu_typ[data_ctrl_fpu_typ_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typ_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typ_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_typ_io_rdata_1_MPORT_data = data_ctrl_fpu_typ[data_ctrl_fpu_typ_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typ_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typ_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_typ_io_rdata_2_MPORT_data = data_ctrl_fpu_typ[data_ctrl_fpu_typ_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typ_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_typ_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_typ_io_rdata_3_MPORT_data = data_ctrl_fpu_typ[data_ctrl_fpu_typ_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_typ_MPORT_data = io_wdata_0_ctrl_fpu_typ;
  assign data_ctrl_fpu_typ_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_typ_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_typ_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_typ_MPORT_1_data = io_wdata_1_ctrl_fpu_typ;
  assign data_ctrl_fpu_typ_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_typ_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_typ_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_typ_MPORT_2_data = io_wdata_2_ctrl_fpu_typ;
  assign data_ctrl_fpu_typ_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_typ_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_typ_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_typ_MPORT_3_data = io_wdata_3_ctrl_fpu_typ;
  assign data_ctrl_fpu_typ_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_typ_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_typ_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_fmt_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fmt_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_fmt_io_rdata_0_MPORT_data = data_ctrl_fpu_fmt[data_ctrl_fpu_fmt_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fmt_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fmt_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_fmt_io_rdata_1_MPORT_data = data_ctrl_fpu_fmt[data_ctrl_fpu_fmt_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fmt_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fmt_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_fmt_io_rdata_2_MPORT_data = data_ctrl_fpu_fmt[data_ctrl_fpu_fmt_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fmt_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_fmt_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_fmt_io_rdata_3_MPORT_data = data_ctrl_fpu_fmt[data_ctrl_fpu_fmt_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_fmt_MPORT_data = io_wdata_0_ctrl_fpu_fmt;
  assign data_ctrl_fpu_fmt_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_fmt_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_fmt_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_fmt_MPORT_1_data = io_wdata_1_ctrl_fpu_fmt;
  assign data_ctrl_fpu_fmt_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_fmt_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_fmt_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_fmt_MPORT_2_data = io_wdata_2_ctrl_fpu_fmt;
  assign data_ctrl_fpu_fmt_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_fmt_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_fmt_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_fmt_MPORT_3_data = io_wdata_3_ctrl_fpu_fmt;
  assign data_ctrl_fpu_fmt_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_fmt_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_fmt_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_ren3_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_ren3_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_ren3_io_rdata_0_MPORT_data = data_ctrl_fpu_ren3[data_ctrl_fpu_ren3_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_ren3_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_ren3_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_ren3_io_rdata_1_MPORT_data = data_ctrl_fpu_ren3[data_ctrl_fpu_ren3_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_ren3_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_ren3_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_ren3_io_rdata_2_MPORT_data = data_ctrl_fpu_ren3[data_ctrl_fpu_ren3_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_ren3_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_ren3_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_ren3_io_rdata_3_MPORT_data = data_ctrl_fpu_ren3[data_ctrl_fpu_ren3_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_ren3_MPORT_data = io_wdata_0_ctrl_fpu_ren3;
  assign data_ctrl_fpu_ren3_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_ren3_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_ren3_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_ren3_MPORT_1_data = io_wdata_1_ctrl_fpu_ren3;
  assign data_ctrl_fpu_ren3_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_ren3_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_ren3_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_ren3_MPORT_2_data = io_wdata_2_ctrl_fpu_ren3;
  assign data_ctrl_fpu_ren3_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_ren3_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_ren3_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_ren3_MPORT_3_data = io_wdata_3_ctrl_fpu_ren3;
  assign data_ctrl_fpu_ren3_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_ren3_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_ren3_MPORT_3_en = io_wen_3;
  assign data_ctrl_fpu_rm_io_rdata_0_MPORT_en = 1'h1;
  assign data_ctrl_fpu_rm_io_rdata_0_MPORT_addr = raddr_0;
  assign data_ctrl_fpu_rm_io_rdata_0_MPORT_data = data_ctrl_fpu_rm[data_ctrl_fpu_rm_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_rm_io_rdata_1_MPORT_en = 1'h1;
  assign data_ctrl_fpu_rm_io_rdata_1_MPORT_addr = raddr_1;
  assign data_ctrl_fpu_rm_io_rdata_1_MPORT_data = data_ctrl_fpu_rm[data_ctrl_fpu_rm_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_rm_io_rdata_2_MPORT_en = 1'h1;
  assign data_ctrl_fpu_rm_io_rdata_2_MPORT_addr = raddr_2;
  assign data_ctrl_fpu_rm_io_rdata_2_MPORT_data = data_ctrl_fpu_rm[data_ctrl_fpu_rm_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_rm_io_rdata_3_MPORT_en = 1'h1;
  assign data_ctrl_fpu_rm_io_rdata_3_MPORT_addr = raddr_3;
  assign data_ctrl_fpu_rm_io_rdata_3_MPORT_data = data_ctrl_fpu_rm[data_ctrl_fpu_rm_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_ctrl_fpu_rm_MPORT_data = io_wdata_0_ctrl_fpu_rm;
  assign data_ctrl_fpu_rm_MPORT_addr = io_waddr_0;
  assign data_ctrl_fpu_rm_MPORT_mask = 1'h1;
  assign data_ctrl_fpu_rm_MPORT_en = io_wen_0;
  assign data_ctrl_fpu_rm_MPORT_1_data = io_wdata_1_ctrl_fpu_rm;
  assign data_ctrl_fpu_rm_MPORT_1_addr = io_waddr_1;
  assign data_ctrl_fpu_rm_MPORT_1_mask = 1'h1;
  assign data_ctrl_fpu_rm_MPORT_1_en = io_wen_1;
  assign data_ctrl_fpu_rm_MPORT_2_data = io_wdata_2_ctrl_fpu_rm;
  assign data_ctrl_fpu_rm_MPORT_2_addr = io_waddr_2;
  assign data_ctrl_fpu_rm_MPORT_2_mask = 1'h1;
  assign data_ctrl_fpu_rm_MPORT_2_en = io_wen_2;
  assign data_ctrl_fpu_rm_MPORT_3_data = io_wdata_3_ctrl_fpu_rm;
  assign data_ctrl_fpu_rm_MPORT_3_addr = io_waddr_3;
  assign data_ctrl_fpu_rm_MPORT_3_mask = 1'h1;
  assign data_ctrl_fpu_rm_MPORT_3_en = io_wen_3;
  assign data_psrc_0_io_rdata_0_MPORT_en = 1'h1;
  assign data_psrc_0_io_rdata_0_MPORT_addr = raddr_0;
  assign data_psrc_0_io_rdata_0_MPORT_data = data_psrc_0[data_psrc_0_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_0_io_rdata_1_MPORT_en = 1'h1;
  assign data_psrc_0_io_rdata_1_MPORT_addr = raddr_1;
  assign data_psrc_0_io_rdata_1_MPORT_data = data_psrc_0[data_psrc_0_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_0_io_rdata_2_MPORT_en = 1'h1;
  assign data_psrc_0_io_rdata_2_MPORT_addr = raddr_2;
  assign data_psrc_0_io_rdata_2_MPORT_data = data_psrc_0[data_psrc_0_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_0_io_rdata_3_MPORT_en = 1'h1;
  assign data_psrc_0_io_rdata_3_MPORT_addr = raddr_3;
  assign data_psrc_0_io_rdata_3_MPORT_data = data_psrc_0[data_psrc_0_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_0_MPORT_data = io_wdata_0_psrc_0;
  assign data_psrc_0_MPORT_addr = io_waddr_0;
  assign data_psrc_0_MPORT_mask = 1'h1;
  assign data_psrc_0_MPORT_en = io_wen_0;
  assign data_psrc_0_MPORT_1_data = io_wdata_1_psrc_0;
  assign data_psrc_0_MPORT_1_addr = io_waddr_1;
  assign data_psrc_0_MPORT_1_mask = 1'h1;
  assign data_psrc_0_MPORT_1_en = io_wen_1;
  assign data_psrc_0_MPORT_2_data = io_wdata_2_psrc_0;
  assign data_psrc_0_MPORT_2_addr = io_waddr_2;
  assign data_psrc_0_MPORT_2_mask = 1'h1;
  assign data_psrc_0_MPORT_2_en = io_wen_2;
  assign data_psrc_0_MPORT_3_data = io_wdata_3_psrc_0;
  assign data_psrc_0_MPORT_3_addr = io_waddr_3;
  assign data_psrc_0_MPORT_3_mask = 1'h1;
  assign data_psrc_0_MPORT_3_en = io_wen_3;
  assign data_psrc_1_io_rdata_0_MPORT_en = 1'h1;
  assign data_psrc_1_io_rdata_0_MPORT_addr = raddr_0;
  assign data_psrc_1_io_rdata_0_MPORT_data = data_psrc_1[data_psrc_1_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_1_io_rdata_1_MPORT_en = 1'h1;
  assign data_psrc_1_io_rdata_1_MPORT_addr = raddr_1;
  assign data_psrc_1_io_rdata_1_MPORT_data = data_psrc_1[data_psrc_1_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_1_io_rdata_2_MPORT_en = 1'h1;
  assign data_psrc_1_io_rdata_2_MPORT_addr = raddr_2;
  assign data_psrc_1_io_rdata_2_MPORT_data = data_psrc_1[data_psrc_1_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_1_io_rdata_3_MPORT_en = 1'h1;
  assign data_psrc_1_io_rdata_3_MPORT_addr = raddr_3;
  assign data_psrc_1_io_rdata_3_MPORT_data = data_psrc_1[data_psrc_1_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_1_MPORT_data = io_wdata_0_psrc_1;
  assign data_psrc_1_MPORT_addr = io_waddr_0;
  assign data_psrc_1_MPORT_mask = 1'h1;
  assign data_psrc_1_MPORT_en = io_wen_0;
  assign data_psrc_1_MPORT_1_data = io_wdata_1_psrc_1;
  assign data_psrc_1_MPORT_1_addr = io_waddr_1;
  assign data_psrc_1_MPORT_1_mask = 1'h1;
  assign data_psrc_1_MPORT_1_en = io_wen_1;
  assign data_psrc_1_MPORT_2_data = io_wdata_2_psrc_1;
  assign data_psrc_1_MPORT_2_addr = io_waddr_2;
  assign data_psrc_1_MPORT_2_mask = 1'h1;
  assign data_psrc_1_MPORT_2_en = io_wen_2;
  assign data_psrc_1_MPORT_3_data = io_wdata_3_psrc_1;
  assign data_psrc_1_MPORT_3_addr = io_waddr_3;
  assign data_psrc_1_MPORT_3_mask = 1'h1;
  assign data_psrc_1_MPORT_3_en = io_wen_3;
  assign data_psrc_2_io_rdata_0_MPORT_en = 1'h1;
  assign data_psrc_2_io_rdata_0_MPORT_addr = raddr_0;
  assign data_psrc_2_io_rdata_0_MPORT_data = data_psrc_2[data_psrc_2_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_2_io_rdata_1_MPORT_en = 1'h1;
  assign data_psrc_2_io_rdata_1_MPORT_addr = raddr_1;
  assign data_psrc_2_io_rdata_1_MPORT_data = data_psrc_2[data_psrc_2_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_2_io_rdata_2_MPORT_en = 1'h1;
  assign data_psrc_2_io_rdata_2_MPORT_addr = raddr_2;
  assign data_psrc_2_io_rdata_2_MPORT_data = data_psrc_2[data_psrc_2_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_2_io_rdata_3_MPORT_en = 1'h1;
  assign data_psrc_2_io_rdata_3_MPORT_addr = raddr_3;
  assign data_psrc_2_io_rdata_3_MPORT_data = data_psrc_2[data_psrc_2_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_psrc_2_MPORT_data = io_wdata_0_psrc_2;
  assign data_psrc_2_MPORT_addr = io_waddr_0;
  assign data_psrc_2_MPORT_mask = 1'h1;
  assign data_psrc_2_MPORT_en = io_wen_0;
  assign data_psrc_2_MPORT_1_data = io_wdata_1_psrc_2;
  assign data_psrc_2_MPORT_1_addr = io_waddr_1;
  assign data_psrc_2_MPORT_1_mask = 1'h1;
  assign data_psrc_2_MPORT_1_en = io_wen_1;
  assign data_psrc_2_MPORT_2_data = io_wdata_2_psrc_2;
  assign data_psrc_2_MPORT_2_addr = io_waddr_2;
  assign data_psrc_2_MPORT_2_mask = 1'h1;
  assign data_psrc_2_MPORT_2_en = io_wen_2;
  assign data_psrc_2_MPORT_3_data = io_wdata_3_psrc_2;
  assign data_psrc_2_MPORT_3_addr = io_waddr_3;
  assign data_psrc_2_MPORT_3_mask = 1'h1;
  assign data_psrc_2_MPORT_3_en = io_wen_3;
  assign data_pdest_io_rdata_0_MPORT_en = 1'h1;
  assign data_pdest_io_rdata_0_MPORT_addr = raddr_0;
  assign data_pdest_io_rdata_0_MPORT_data = data_pdest[data_pdest_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pdest_io_rdata_1_MPORT_en = 1'h1;
  assign data_pdest_io_rdata_1_MPORT_addr = raddr_1;
  assign data_pdest_io_rdata_1_MPORT_data = data_pdest[data_pdest_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pdest_io_rdata_2_MPORT_en = 1'h1;
  assign data_pdest_io_rdata_2_MPORT_addr = raddr_2;
  assign data_pdest_io_rdata_2_MPORT_data = data_pdest[data_pdest_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pdest_io_rdata_3_MPORT_en = 1'h1;
  assign data_pdest_io_rdata_3_MPORT_addr = raddr_3;
  assign data_pdest_io_rdata_3_MPORT_data = data_pdest[data_pdest_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_pdest_MPORT_data = io_wdata_0_pdest;
  assign data_pdest_MPORT_addr = io_waddr_0;
  assign data_pdest_MPORT_mask = 1'h1;
  assign data_pdest_MPORT_en = io_wen_0;
  assign data_pdest_MPORT_1_data = io_wdata_1_pdest;
  assign data_pdest_MPORT_1_addr = io_waddr_1;
  assign data_pdest_MPORT_1_mask = 1'h1;
  assign data_pdest_MPORT_1_en = io_wen_1;
  assign data_pdest_MPORT_2_data = io_wdata_2_pdest;
  assign data_pdest_MPORT_2_addr = io_waddr_2;
  assign data_pdest_MPORT_2_mask = 1'h1;
  assign data_pdest_MPORT_2_en = io_wen_2;
  assign data_pdest_MPORT_3_data = io_wdata_3_pdest;
  assign data_pdest_MPORT_3_addr = io_waddr_3;
  assign data_pdest_MPORT_3_mask = 1'h1;
  assign data_pdest_MPORT_3_en = io_wen_3;
  assign data_lqIdx_flag_io_rdata_0_MPORT_en = 1'h1;
  assign data_lqIdx_flag_io_rdata_0_MPORT_addr = raddr_0;
  assign data_lqIdx_flag_io_rdata_0_MPORT_data = data_lqIdx_flag[data_lqIdx_flag_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_lqIdx_flag_io_rdata_1_MPORT_en = 1'h1;
  assign data_lqIdx_flag_io_rdata_1_MPORT_addr = raddr_1;
  assign data_lqIdx_flag_io_rdata_1_MPORT_data = data_lqIdx_flag[data_lqIdx_flag_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_lqIdx_flag_io_rdata_2_MPORT_en = 1'h1;
  assign data_lqIdx_flag_io_rdata_2_MPORT_addr = raddr_2;
  assign data_lqIdx_flag_io_rdata_2_MPORT_data = data_lqIdx_flag[data_lqIdx_flag_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_lqIdx_flag_io_rdata_3_MPORT_en = 1'h1;
  assign data_lqIdx_flag_io_rdata_3_MPORT_addr = raddr_3;
  assign data_lqIdx_flag_io_rdata_3_MPORT_data = data_lqIdx_flag[data_lqIdx_flag_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_lqIdx_flag_MPORT_data = 1'h0;
  assign data_lqIdx_flag_MPORT_addr = io_waddr_0;
  assign data_lqIdx_flag_MPORT_mask = 1'h1;
  assign data_lqIdx_flag_MPORT_en = io_wen_0;
  assign data_lqIdx_flag_MPORT_1_data = 1'h0;
  assign data_lqIdx_flag_MPORT_1_addr = io_waddr_1;
  assign data_lqIdx_flag_MPORT_1_mask = 1'h1;
  assign data_lqIdx_flag_MPORT_1_en = io_wen_1;
  assign data_lqIdx_flag_MPORT_2_data = 1'h0;
  assign data_lqIdx_flag_MPORT_2_addr = io_waddr_2;
  assign data_lqIdx_flag_MPORT_2_mask = 1'h1;
  assign data_lqIdx_flag_MPORT_2_en = io_wen_2;
  assign data_lqIdx_flag_MPORT_3_data = 1'h0;
  assign data_lqIdx_flag_MPORT_3_addr = io_waddr_3;
  assign data_lqIdx_flag_MPORT_3_mask = 1'h1;
  assign data_lqIdx_flag_MPORT_3_en = io_wen_3;
  assign data_lqIdx_value_io_rdata_0_MPORT_en = 1'h1;
  assign data_lqIdx_value_io_rdata_0_MPORT_addr = raddr_0;
  assign data_lqIdx_value_io_rdata_0_MPORT_data = data_lqIdx_value[data_lqIdx_value_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_lqIdx_value_io_rdata_1_MPORT_en = 1'h1;
  assign data_lqIdx_value_io_rdata_1_MPORT_addr = raddr_1;
  assign data_lqIdx_value_io_rdata_1_MPORT_data = data_lqIdx_value[data_lqIdx_value_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_lqIdx_value_io_rdata_2_MPORT_en = 1'h1;
  assign data_lqIdx_value_io_rdata_2_MPORT_addr = raddr_2;
  assign data_lqIdx_value_io_rdata_2_MPORT_data = data_lqIdx_value[data_lqIdx_value_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_lqIdx_value_io_rdata_3_MPORT_en = 1'h1;
  assign data_lqIdx_value_io_rdata_3_MPORT_addr = raddr_3;
  assign data_lqIdx_value_io_rdata_3_MPORT_data = data_lqIdx_value[data_lqIdx_value_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_lqIdx_value_MPORT_data = 6'h0;
  assign data_lqIdx_value_MPORT_addr = io_waddr_0;
  assign data_lqIdx_value_MPORT_mask = 1'h1;
  assign data_lqIdx_value_MPORT_en = io_wen_0;
  assign data_lqIdx_value_MPORT_1_data = 6'h0;
  assign data_lqIdx_value_MPORT_1_addr = io_waddr_1;
  assign data_lqIdx_value_MPORT_1_mask = 1'h1;
  assign data_lqIdx_value_MPORT_1_en = io_wen_1;
  assign data_lqIdx_value_MPORT_2_data = 6'h0;
  assign data_lqIdx_value_MPORT_2_addr = io_waddr_2;
  assign data_lqIdx_value_MPORT_2_mask = 1'h1;
  assign data_lqIdx_value_MPORT_2_en = io_wen_2;
  assign data_lqIdx_value_MPORT_3_data = 6'h0;
  assign data_lqIdx_value_MPORT_3_addr = io_waddr_3;
  assign data_lqIdx_value_MPORT_3_mask = 1'h1;
  assign data_lqIdx_value_MPORT_3_en = io_wen_3;
  assign data_sqIdx_flag_io_rdata_0_MPORT_en = 1'h1;
  assign data_sqIdx_flag_io_rdata_0_MPORT_addr = raddr_0;
  assign data_sqIdx_flag_io_rdata_0_MPORT_data = data_sqIdx_flag[data_sqIdx_flag_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_sqIdx_flag_io_rdata_1_MPORT_en = 1'h1;
  assign data_sqIdx_flag_io_rdata_1_MPORT_addr = raddr_1;
  assign data_sqIdx_flag_io_rdata_1_MPORT_data = data_sqIdx_flag[data_sqIdx_flag_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_sqIdx_flag_io_rdata_2_MPORT_en = 1'h1;
  assign data_sqIdx_flag_io_rdata_2_MPORT_addr = raddr_2;
  assign data_sqIdx_flag_io_rdata_2_MPORT_data = data_sqIdx_flag[data_sqIdx_flag_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_sqIdx_flag_io_rdata_3_MPORT_en = 1'h1;
  assign data_sqIdx_flag_io_rdata_3_MPORT_addr = raddr_3;
  assign data_sqIdx_flag_io_rdata_3_MPORT_data = data_sqIdx_flag[data_sqIdx_flag_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_sqIdx_flag_MPORT_data = 1'h0;
  assign data_sqIdx_flag_MPORT_addr = io_waddr_0;
  assign data_sqIdx_flag_MPORT_mask = 1'h1;
  assign data_sqIdx_flag_MPORT_en = io_wen_0;
  assign data_sqIdx_flag_MPORT_1_data = 1'h0;
  assign data_sqIdx_flag_MPORT_1_addr = io_waddr_1;
  assign data_sqIdx_flag_MPORT_1_mask = 1'h1;
  assign data_sqIdx_flag_MPORT_1_en = io_wen_1;
  assign data_sqIdx_flag_MPORT_2_data = 1'h0;
  assign data_sqIdx_flag_MPORT_2_addr = io_waddr_2;
  assign data_sqIdx_flag_MPORT_2_mask = 1'h1;
  assign data_sqIdx_flag_MPORT_2_en = io_wen_2;
  assign data_sqIdx_flag_MPORT_3_data = 1'h0;
  assign data_sqIdx_flag_MPORT_3_addr = io_waddr_3;
  assign data_sqIdx_flag_MPORT_3_mask = 1'h1;
  assign data_sqIdx_flag_MPORT_3_en = io_wen_3;
  assign data_sqIdx_value_io_rdata_0_MPORT_en = 1'h1;
  assign data_sqIdx_value_io_rdata_0_MPORT_addr = raddr_0;
  assign data_sqIdx_value_io_rdata_0_MPORT_data = data_sqIdx_value[data_sqIdx_value_io_rdata_0_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_sqIdx_value_io_rdata_1_MPORT_en = 1'h1;
  assign data_sqIdx_value_io_rdata_1_MPORT_addr = raddr_1;
  assign data_sqIdx_value_io_rdata_1_MPORT_data = data_sqIdx_value[data_sqIdx_value_io_rdata_1_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_sqIdx_value_io_rdata_2_MPORT_en = 1'h1;
  assign data_sqIdx_value_io_rdata_2_MPORT_addr = raddr_2;
  assign data_sqIdx_value_io_rdata_2_MPORT_data = data_sqIdx_value[data_sqIdx_value_io_rdata_2_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_sqIdx_value_io_rdata_3_MPORT_en = 1'h1;
  assign data_sqIdx_value_io_rdata_3_MPORT_addr = raddr_3;
  assign data_sqIdx_value_io_rdata_3_MPORT_data = data_sqIdx_value[data_sqIdx_value_io_rdata_3_MPORT_addr]; // @[DataModuleTemplate.scala 64:17]
  assign data_sqIdx_value_MPORT_data = 5'h0;
  assign data_sqIdx_value_MPORT_addr = io_waddr_0;
  assign data_sqIdx_value_MPORT_mask = 1'h1;
  assign data_sqIdx_value_MPORT_en = io_wen_0;
  assign data_sqIdx_value_MPORT_1_data = 5'h0;
  assign data_sqIdx_value_MPORT_1_addr = io_waddr_1;
  assign data_sqIdx_value_MPORT_1_mask = 1'h1;
  assign data_sqIdx_value_MPORT_1_en = io_wen_1;
  assign data_sqIdx_value_MPORT_2_data = 5'h0;
  assign data_sqIdx_value_MPORT_2_addr = io_waddr_2;
  assign data_sqIdx_value_MPORT_2_mask = 1'h1;
  assign data_sqIdx_value_MPORT_2_en = io_wen_2;
  assign data_sqIdx_value_MPORT_3_data = 5'h0;
  assign data_sqIdx_value_MPORT_3_addr = io_waddr_3;
  assign data_sqIdx_value_MPORT_3_mask = 1'h1;
  assign data_sqIdx_value_MPORT_3_en = io_wen_3;
  assign io_rdata_0_cf_trigger_backendEn_0 = data_cf_trigger_backendEn_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_trigger_backendEn_1 = data_cf_trigger_backendEn_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_trigger_backendHit_0 = data_cf_trigger_backendHit_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_trigger_backendHit_1 = data_cf_trigger_backendHit_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_trigger_backendHit_2 = data_cf_trigger_backendHit_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_trigger_backendHit_3 = data_cf_trigger_backendHit_3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_trigger_backendHit_4 = data_cf_trigger_backendHit_4_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_trigger_backendHit_5 = data_cf_trigger_backendHit_5_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_pd_isRVC = data_cf_pd_isRVC_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_pd_brType = data_cf_pd_brType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_pd_isCall = data_cf_pd_isCall_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_pd_isRet = data_cf_pd_isRet_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_pred_taken = data_cf_pred_taken_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_waitForRobIdx_value = data_cf_waitForRobIdx_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_loadWaitBit = data_cf_loadWaitBit_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_loadWaitStrict = data_cf_loadWaitStrict_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_ssid = data_cf_ssid_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_ftqPtr_flag = data_cf_ftqPtr_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_ftqPtr_value = data_cf_ftqPtr_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_cf_ftqOffset = data_cf_ftqOffset_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_srcType_0 = data_ctrl_srcType_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_srcType_1 = data_ctrl_srcType_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_srcType_2 = data_ctrl_srcType_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fuType = data_ctrl_fuType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fuOpType = data_ctrl_fuOpType_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_rfWen = data_ctrl_rfWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpWen = data_ctrl_fpWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_selImm = data_ctrl_selImm_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_imm = data_ctrl_imm_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_isAddSub = data_ctrl_fpu_isAddSub_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_typeTagIn = data_ctrl_fpu_typeTagIn_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_typeTagOut = data_ctrl_fpu_typeTagOut_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_fromInt = data_ctrl_fpu_fromInt_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_wflags = data_ctrl_fpu_wflags_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_fpWen = data_ctrl_fpu_fpWen_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_fmaCmd = data_ctrl_fpu_fmaCmd_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_div = data_ctrl_fpu_div_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_sqrt = data_ctrl_fpu_sqrt_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_fcvt = data_ctrl_fpu_fcvt_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_typ = data_ctrl_fpu_typ_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_fmt = data_ctrl_fpu_fmt_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_ren3 = data_ctrl_fpu_ren3_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_ctrl_fpu_rm = data_ctrl_fpu_rm_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_psrc_0 = data_psrc_0_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_psrc_1 = data_psrc_1_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_psrc_2 = data_psrc_2_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_pdest = data_pdest_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_lqIdx_flag = data_lqIdx_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_lqIdx_value = data_lqIdx_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_sqIdx_flag = data_sqIdx_flag_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_0_sqIdx_value = data_sqIdx_value_io_rdata_0_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_trigger_backendEn_0 = data_cf_trigger_backendEn_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_trigger_backendEn_1 = data_cf_trigger_backendEn_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_trigger_backendHit_0 = data_cf_trigger_backendHit_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_trigger_backendHit_1 = data_cf_trigger_backendHit_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_trigger_backendHit_2 = data_cf_trigger_backendHit_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_trigger_backendHit_3 = data_cf_trigger_backendHit_3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_trigger_backendHit_4 = data_cf_trigger_backendHit_4_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_trigger_backendHit_5 = data_cf_trigger_backendHit_5_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_pd_isRVC = data_cf_pd_isRVC_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_pd_brType = data_cf_pd_brType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_pd_isCall = data_cf_pd_isCall_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_pd_isRet = data_cf_pd_isRet_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_pred_taken = data_cf_pred_taken_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_waitForRobIdx_value = data_cf_waitForRobIdx_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_loadWaitBit = data_cf_loadWaitBit_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_loadWaitStrict = data_cf_loadWaitStrict_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_ssid = data_cf_ssid_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_ftqPtr_flag = data_cf_ftqPtr_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_ftqPtr_value = data_cf_ftqPtr_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_cf_ftqOffset = data_cf_ftqOffset_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_srcType_0 = data_ctrl_srcType_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_srcType_1 = data_ctrl_srcType_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_srcType_2 = data_ctrl_srcType_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fuType = data_ctrl_fuType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fuOpType = data_ctrl_fuOpType_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_rfWen = data_ctrl_rfWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpWen = data_ctrl_fpWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_selImm = data_ctrl_selImm_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_imm = data_ctrl_imm_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_isAddSub = data_ctrl_fpu_isAddSub_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_typeTagIn = data_ctrl_fpu_typeTagIn_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_typeTagOut = data_ctrl_fpu_typeTagOut_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_fromInt = data_ctrl_fpu_fromInt_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_wflags = data_ctrl_fpu_wflags_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_fpWen = data_ctrl_fpu_fpWen_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_fmaCmd = data_ctrl_fpu_fmaCmd_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_div = data_ctrl_fpu_div_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_sqrt = data_ctrl_fpu_sqrt_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_fcvt = data_ctrl_fpu_fcvt_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_typ = data_ctrl_fpu_typ_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_fmt = data_ctrl_fpu_fmt_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_ren3 = data_ctrl_fpu_ren3_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_ctrl_fpu_rm = data_ctrl_fpu_rm_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_psrc_0 = data_psrc_0_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_psrc_1 = data_psrc_1_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_psrc_2 = data_psrc_2_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_pdest = data_pdest_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_lqIdx_flag = data_lqIdx_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_lqIdx_value = data_lqIdx_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_sqIdx_flag = data_sqIdx_flag_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_1_sqIdx_value = data_sqIdx_value_io_rdata_1_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_trigger_backendEn_0 = data_cf_trigger_backendEn_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_trigger_backendEn_1 = data_cf_trigger_backendEn_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_trigger_backendHit_0 = data_cf_trigger_backendHit_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_trigger_backendHit_1 = data_cf_trigger_backendHit_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_trigger_backendHit_2 = data_cf_trigger_backendHit_2_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_trigger_backendHit_3 = data_cf_trigger_backendHit_3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_trigger_backendHit_4 = data_cf_trigger_backendHit_4_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_trigger_backendHit_5 = data_cf_trigger_backendHit_5_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_pd_isRVC = data_cf_pd_isRVC_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_pd_brType = data_cf_pd_brType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_pd_isCall = data_cf_pd_isCall_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_pd_isRet = data_cf_pd_isRet_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_pred_taken = data_cf_pred_taken_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_waitForRobIdx_value = data_cf_waitForRobIdx_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_loadWaitBit = data_cf_loadWaitBit_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_loadWaitStrict = data_cf_loadWaitStrict_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_ssid = data_cf_ssid_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_ftqPtr_flag = data_cf_ftqPtr_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_ftqPtr_value = data_cf_ftqPtr_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_cf_ftqOffset = data_cf_ftqOffset_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_srcType_0 = data_ctrl_srcType_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_srcType_1 = data_ctrl_srcType_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fuType = data_ctrl_fuType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fuOpType = data_ctrl_fuOpType_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_rfWen = data_ctrl_rfWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpWen = data_ctrl_fpWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_selImm = data_ctrl_selImm_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_imm = data_ctrl_imm_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_isAddSub = data_ctrl_fpu_isAddSub_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_typeTagIn = data_ctrl_fpu_typeTagIn_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_typeTagOut = data_ctrl_fpu_typeTagOut_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_fromInt = data_ctrl_fpu_fromInt_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_wflags = data_ctrl_fpu_wflags_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_fpWen = data_ctrl_fpu_fpWen_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_fmaCmd = data_ctrl_fpu_fmaCmd_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_div = data_ctrl_fpu_div_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_sqrt = data_ctrl_fpu_sqrt_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_fcvt = data_ctrl_fpu_fcvt_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_typ = data_ctrl_fpu_typ_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_fmt = data_ctrl_fpu_fmt_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_ren3 = data_ctrl_fpu_ren3_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_ctrl_fpu_rm = data_ctrl_fpu_rm_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_psrc_0 = data_psrc_0_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_psrc_1 = data_psrc_1_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_pdest = data_pdest_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_lqIdx_flag = data_lqIdx_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_lqIdx_value = data_lqIdx_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_sqIdx_flag = data_sqIdx_flag_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_2_sqIdx_value = data_sqIdx_value_io_rdata_2_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_trigger_backendEn_0 = data_cf_trigger_backendEn_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_trigger_backendEn_1 = data_cf_trigger_backendEn_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_trigger_backendHit_0 = data_cf_trigger_backendHit_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_trigger_backendHit_1 = data_cf_trigger_backendHit_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_trigger_backendHit_2 = data_cf_trigger_backendHit_2_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_trigger_backendHit_3 = data_cf_trigger_backendHit_3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_trigger_backendHit_4 = data_cf_trigger_backendHit_4_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_trigger_backendHit_5 = data_cf_trigger_backendHit_5_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_pd_isRVC = data_cf_pd_isRVC_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_pd_brType = data_cf_pd_brType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_pd_isCall = data_cf_pd_isCall_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_pd_isRet = data_cf_pd_isRet_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_pred_taken = data_cf_pred_taken_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_waitForRobIdx_value = data_cf_waitForRobIdx_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_loadWaitBit = data_cf_loadWaitBit_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_loadWaitStrict = data_cf_loadWaitStrict_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_ssid = data_cf_ssid_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_ftqPtr_flag = data_cf_ftqPtr_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_ftqPtr_value = data_cf_ftqPtr_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_cf_ftqOffset = data_cf_ftqOffset_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_srcType_0 = data_ctrl_srcType_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_srcType_1 = data_ctrl_srcType_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fuType = data_ctrl_fuType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fuOpType = data_ctrl_fuOpType_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_rfWen = data_ctrl_rfWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpWen = data_ctrl_fpWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_selImm = data_ctrl_selImm_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_imm = data_ctrl_imm_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_isAddSub = data_ctrl_fpu_isAddSub_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_typeTagIn = data_ctrl_fpu_typeTagIn_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_typeTagOut = data_ctrl_fpu_typeTagOut_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_fromInt = data_ctrl_fpu_fromInt_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_wflags = data_ctrl_fpu_wflags_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_fpWen = data_ctrl_fpu_fpWen_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_fmaCmd = data_ctrl_fpu_fmaCmd_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_div = data_ctrl_fpu_div_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_sqrt = data_ctrl_fpu_sqrt_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_fcvt = data_ctrl_fpu_fcvt_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_typ = data_ctrl_fpu_typ_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_fmt = data_ctrl_fpu_fmt_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_ren3 = data_ctrl_fpu_ren3_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_ctrl_fpu_rm = data_ctrl_fpu_rm_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_psrc_0 = data_psrc_0_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_psrc_1 = data_psrc_1_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_pdest = data_pdest_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_lqIdx_flag = data_lqIdx_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_lqIdx_value = data_lqIdx_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_sqIdx_flag = data_sqIdx_flag_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  assign io_rdata_3_sqIdx_value = data_sqIdx_value_io_rdata_3_MPORT_data; // @[DataModuleTemplate.scala 69:17]
  always @(posedge clock) begin
    if (data_cf_trigger_backendEn_0_MPORT_en & data_cf_trigger_backendEn_0_MPORT_mask) begin
      data_cf_trigger_backendEn_0[data_cf_trigger_backendEn_0_MPORT_addr] <= data_cf_trigger_backendEn_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendEn_0_MPORT_1_en & data_cf_trigger_backendEn_0_MPORT_1_mask) begin
      data_cf_trigger_backendEn_0[data_cf_trigger_backendEn_0_MPORT_1_addr] <= data_cf_trigger_backendEn_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendEn_0_MPORT_2_en & data_cf_trigger_backendEn_0_MPORT_2_mask) begin
      data_cf_trigger_backendEn_0[data_cf_trigger_backendEn_0_MPORT_2_addr] <= data_cf_trigger_backendEn_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendEn_0_MPORT_3_en & data_cf_trigger_backendEn_0_MPORT_3_mask) begin
      data_cf_trigger_backendEn_0[data_cf_trigger_backendEn_0_MPORT_3_addr] <= data_cf_trigger_backendEn_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendEn_1_MPORT_en & data_cf_trigger_backendEn_1_MPORT_mask) begin
      data_cf_trigger_backendEn_1[data_cf_trigger_backendEn_1_MPORT_addr] <= data_cf_trigger_backendEn_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendEn_1_MPORT_1_en & data_cf_trigger_backendEn_1_MPORT_1_mask) begin
      data_cf_trigger_backendEn_1[data_cf_trigger_backendEn_1_MPORT_1_addr] <= data_cf_trigger_backendEn_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendEn_1_MPORT_2_en & data_cf_trigger_backendEn_1_MPORT_2_mask) begin
      data_cf_trigger_backendEn_1[data_cf_trigger_backendEn_1_MPORT_2_addr] <= data_cf_trigger_backendEn_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendEn_1_MPORT_3_en & data_cf_trigger_backendEn_1_MPORT_3_mask) begin
      data_cf_trigger_backendEn_1[data_cf_trigger_backendEn_1_MPORT_3_addr] <= data_cf_trigger_backendEn_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_0_MPORT_en & data_cf_trigger_backendHit_0_MPORT_mask) begin
      data_cf_trigger_backendHit_0[data_cf_trigger_backendHit_0_MPORT_addr] <= data_cf_trigger_backendHit_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_0_MPORT_1_en & data_cf_trigger_backendHit_0_MPORT_1_mask) begin
      data_cf_trigger_backendHit_0[data_cf_trigger_backendHit_0_MPORT_1_addr] <=
        data_cf_trigger_backendHit_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_0_MPORT_2_en & data_cf_trigger_backendHit_0_MPORT_2_mask) begin
      data_cf_trigger_backendHit_0[data_cf_trigger_backendHit_0_MPORT_2_addr] <=
        data_cf_trigger_backendHit_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_0_MPORT_3_en & data_cf_trigger_backendHit_0_MPORT_3_mask) begin
      data_cf_trigger_backendHit_0[data_cf_trigger_backendHit_0_MPORT_3_addr] <=
        data_cf_trigger_backendHit_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_1_MPORT_en & data_cf_trigger_backendHit_1_MPORT_mask) begin
      data_cf_trigger_backendHit_1[data_cf_trigger_backendHit_1_MPORT_addr] <= data_cf_trigger_backendHit_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_1_MPORT_1_en & data_cf_trigger_backendHit_1_MPORT_1_mask) begin
      data_cf_trigger_backendHit_1[data_cf_trigger_backendHit_1_MPORT_1_addr] <=
        data_cf_trigger_backendHit_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_1_MPORT_2_en & data_cf_trigger_backendHit_1_MPORT_2_mask) begin
      data_cf_trigger_backendHit_1[data_cf_trigger_backendHit_1_MPORT_2_addr] <=
        data_cf_trigger_backendHit_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_1_MPORT_3_en & data_cf_trigger_backendHit_1_MPORT_3_mask) begin
      data_cf_trigger_backendHit_1[data_cf_trigger_backendHit_1_MPORT_3_addr] <=
        data_cf_trigger_backendHit_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_2_MPORT_en & data_cf_trigger_backendHit_2_MPORT_mask) begin
      data_cf_trigger_backendHit_2[data_cf_trigger_backendHit_2_MPORT_addr] <= data_cf_trigger_backendHit_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_2_MPORT_1_en & data_cf_trigger_backendHit_2_MPORT_1_mask) begin
      data_cf_trigger_backendHit_2[data_cf_trigger_backendHit_2_MPORT_1_addr] <=
        data_cf_trigger_backendHit_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_2_MPORT_2_en & data_cf_trigger_backendHit_2_MPORT_2_mask) begin
      data_cf_trigger_backendHit_2[data_cf_trigger_backendHit_2_MPORT_2_addr] <=
        data_cf_trigger_backendHit_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_2_MPORT_3_en & data_cf_trigger_backendHit_2_MPORT_3_mask) begin
      data_cf_trigger_backendHit_2[data_cf_trigger_backendHit_2_MPORT_3_addr] <=
        data_cf_trigger_backendHit_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_3_MPORT_en & data_cf_trigger_backendHit_3_MPORT_mask) begin
      data_cf_trigger_backendHit_3[data_cf_trigger_backendHit_3_MPORT_addr] <= data_cf_trigger_backendHit_3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_3_MPORT_1_en & data_cf_trigger_backendHit_3_MPORT_1_mask) begin
      data_cf_trigger_backendHit_3[data_cf_trigger_backendHit_3_MPORT_1_addr] <=
        data_cf_trigger_backendHit_3_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_3_MPORT_2_en & data_cf_trigger_backendHit_3_MPORT_2_mask) begin
      data_cf_trigger_backendHit_3[data_cf_trigger_backendHit_3_MPORT_2_addr] <=
        data_cf_trigger_backendHit_3_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_3_MPORT_3_en & data_cf_trigger_backendHit_3_MPORT_3_mask) begin
      data_cf_trigger_backendHit_3[data_cf_trigger_backendHit_3_MPORT_3_addr] <=
        data_cf_trigger_backendHit_3_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_4_MPORT_en & data_cf_trigger_backendHit_4_MPORT_mask) begin
      data_cf_trigger_backendHit_4[data_cf_trigger_backendHit_4_MPORT_addr] <= data_cf_trigger_backendHit_4_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_4_MPORT_1_en & data_cf_trigger_backendHit_4_MPORT_1_mask) begin
      data_cf_trigger_backendHit_4[data_cf_trigger_backendHit_4_MPORT_1_addr] <=
        data_cf_trigger_backendHit_4_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_4_MPORT_2_en & data_cf_trigger_backendHit_4_MPORT_2_mask) begin
      data_cf_trigger_backendHit_4[data_cf_trigger_backendHit_4_MPORT_2_addr] <=
        data_cf_trigger_backendHit_4_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_4_MPORT_3_en & data_cf_trigger_backendHit_4_MPORT_3_mask) begin
      data_cf_trigger_backendHit_4[data_cf_trigger_backendHit_4_MPORT_3_addr] <=
        data_cf_trigger_backendHit_4_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_5_MPORT_en & data_cf_trigger_backendHit_5_MPORT_mask) begin
      data_cf_trigger_backendHit_5[data_cf_trigger_backendHit_5_MPORT_addr] <= data_cf_trigger_backendHit_5_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_5_MPORT_1_en & data_cf_trigger_backendHit_5_MPORT_1_mask) begin
      data_cf_trigger_backendHit_5[data_cf_trigger_backendHit_5_MPORT_1_addr] <=
        data_cf_trigger_backendHit_5_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_5_MPORT_2_en & data_cf_trigger_backendHit_5_MPORT_2_mask) begin
      data_cf_trigger_backendHit_5[data_cf_trigger_backendHit_5_MPORT_2_addr] <=
        data_cf_trigger_backendHit_5_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_trigger_backendHit_5_MPORT_3_en & data_cf_trigger_backendHit_5_MPORT_3_mask) begin
      data_cf_trigger_backendHit_5[data_cf_trigger_backendHit_5_MPORT_3_addr] <=
        data_cf_trigger_backendHit_5_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isRVC_MPORT_en & data_cf_pd_isRVC_MPORT_mask) begin
      data_cf_pd_isRVC[data_cf_pd_isRVC_MPORT_addr] <= data_cf_pd_isRVC_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isRVC_MPORT_1_en & data_cf_pd_isRVC_MPORT_1_mask) begin
      data_cf_pd_isRVC[data_cf_pd_isRVC_MPORT_1_addr] <= data_cf_pd_isRVC_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isRVC_MPORT_2_en & data_cf_pd_isRVC_MPORT_2_mask) begin
      data_cf_pd_isRVC[data_cf_pd_isRVC_MPORT_2_addr] <= data_cf_pd_isRVC_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isRVC_MPORT_3_en & data_cf_pd_isRVC_MPORT_3_mask) begin
      data_cf_pd_isRVC[data_cf_pd_isRVC_MPORT_3_addr] <= data_cf_pd_isRVC_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_brType_MPORT_en & data_cf_pd_brType_MPORT_mask) begin
      data_cf_pd_brType[data_cf_pd_brType_MPORT_addr] <= data_cf_pd_brType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_brType_MPORT_1_en & data_cf_pd_brType_MPORT_1_mask) begin
      data_cf_pd_brType[data_cf_pd_brType_MPORT_1_addr] <= data_cf_pd_brType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_brType_MPORT_2_en & data_cf_pd_brType_MPORT_2_mask) begin
      data_cf_pd_brType[data_cf_pd_brType_MPORT_2_addr] <= data_cf_pd_brType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_brType_MPORT_3_en & data_cf_pd_brType_MPORT_3_mask) begin
      data_cf_pd_brType[data_cf_pd_brType_MPORT_3_addr] <= data_cf_pd_brType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isCall_MPORT_en & data_cf_pd_isCall_MPORT_mask) begin
      data_cf_pd_isCall[data_cf_pd_isCall_MPORT_addr] <= data_cf_pd_isCall_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isCall_MPORT_1_en & data_cf_pd_isCall_MPORT_1_mask) begin
      data_cf_pd_isCall[data_cf_pd_isCall_MPORT_1_addr] <= data_cf_pd_isCall_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isCall_MPORT_2_en & data_cf_pd_isCall_MPORT_2_mask) begin
      data_cf_pd_isCall[data_cf_pd_isCall_MPORT_2_addr] <= data_cf_pd_isCall_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isCall_MPORT_3_en & data_cf_pd_isCall_MPORT_3_mask) begin
      data_cf_pd_isCall[data_cf_pd_isCall_MPORT_3_addr] <= data_cf_pd_isCall_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isRet_MPORT_en & data_cf_pd_isRet_MPORT_mask) begin
      data_cf_pd_isRet[data_cf_pd_isRet_MPORT_addr] <= data_cf_pd_isRet_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isRet_MPORT_1_en & data_cf_pd_isRet_MPORT_1_mask) begin
      data_cf_pd_isRet[data_cf_pd_isRet_MPORT_1_addr] <= data_cf_pd_isRet_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isRet_MPORT_2_en & data_cf_pd_isRet_MPORT_2_mask) begin
      data_cf_pd_isRet[data_cf_pd_isRet_MPORT_2_addr] <= data_cf_pd_isRet_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pd_isRet_MPORT_3_en & data_cf_pd_isRet_MPORT_3_mask) begin
      data_cf_pd_isRet[data_cf_pd_isRet_MPORT_3_addr] <= data_cf_pd_isRet_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pred_taken_MPORT_en & data_cf_pred_taken_MPORT_mask) begin
      data_cf_pred_taken[data_cf_pred_taken_MPORT_addr] <= data_cf_pred_taken_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pred_taken_MPORT_1_en & data_cf_pred_taken_MPORT_1_mask) begin
      data_cf_pred_taken[data_cf_pred_taken_MPORT_1_addr] <= data_cf_pred_taken_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pred_taken_MPORT_2_en & data_cf_pred_taken_MPORT_2_mask) begin
      data_cf_pred_taken[data_cf_pred_taken_MPORT_2_addr] <= data_cf_pred_taken_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_pred_taken_MPORT_3_en & data_cf_pred_taken_MPORT_3_mask) begin
      data_cf_pred_taken[data_cf_pred_taken_MPORT_3_addr] <= data_cf_pred_taken_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_waitForRobIdx_value_MPORT_en & data_cf_waitForRobIdx_value_MPORT_mask) begin
      data_cf_waitForRobIdx_value[data_cf_waitForRobIdx_value_MPORT_addr] <= data_cf_waitForRobIdx_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_waitForRobIdx_value_MPORT_1_en & data_cf_waitForRobIdx_value_MPORT_1_mask) begin
      data_cf_waitForRobIdx_value[data_cf_waitForRobIdx_value_MPORT_1_addr] <= data_cf_waitForRobIdx_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_waitForRobIdx_value_MPORT_2_en & data_cf_waitForRobIdx_value_MPORT_2_mask) begin
      data_cf_waitForRobIdx_value[data_cf_waitForRobIdx_value_MPORT_2_addr] <= data_cf_waitForRobIdx_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_waitForRobIdx_value_MPORT_3_en & data_cf_waitForRobIdx_value_MPORT_3_mask) begin
      data_cf_waitForRobIdx_value[data_cf_waitForRobIdx_value_MPORT_3_addr] <= data_cf_waitForRobIdx_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_loadWaitBit_MPORT_en & data_cf_loadWaitBit_MPORT_mask) begin
      data_cf_loadWaitBit[data_cf_loadWaitBit_MPORT_addr] <= data_cf_loadWaitBit_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_loadWaitBit_MPORT_1_en & data_cf_loadWaitBit_MPORT_1_mask) begin
      data_cf_loadWaitBit[data_cf_loadWaitBit_MPORT_1_addr] <= data_cf_loadWaitBit_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_loadWaitBit_MPORT_2_en & data_cf_loadWaitBit_MPORT_2_mask) begin
      data_cf_loadWaitBit[data_cf_loadWaitBit_MPORT_2_addr] <= data_cf_loadWaitBit_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_loadWaitBit_MPORT_3_en & data_cf_loadWaitBit_MPORT_3_mask) begin
      data_cf_loadWaitBit[data_cf_loadWaitBit_MPORT_3_addr] <= data_cf_loadWaitBit_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_loadWaitStrict_MPORT_en & data_cf_loadWaitStrict_MPORT_mask) begin
      data_cf_loadWaitStrict[data_cf_loadWaitStrict_MPORT_addr] <= data_cf_loadWaitStrict_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_loadWaitStrict_MPORT_1_en & data_cf_loadWaitStrict_MPORT_1_mask) begin
      data_cf_loadWaitStrict[data_cf_loadWaitStrict_MPORT_1_addr] <= data_cf_loadWaitStrict_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_loadWaitStrict_MPORT_2_en & data_cf_loadWaitStrict_MPORT_2_mask) begin
      data_cf_loadWaitStrict[data_cf_loadWaitStrict_MPORT_2_addr] <= data_cf_loadWaitStrict_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_loadWaitStrict_MPORT_3_en & data_cf_loadWaitStrict_MPORT_3_mask) begin
      data_cf_loadWaitStrict[data_cf_loadWaitStrict_MPORT_3_addr] <= data_cf_loadWaitStrict_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ssid_MPORT_en & data_cf_ssid_MPORT_mask) begin
      data_cf_ssid[data_cf_ssid_MPORT_addr] <= data_cf_ssid_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ssid_MPORT_1_en & data_cf_ssid_MPORT_1_mask) begin
      data_cf_ssid[data_cf_ssid_MPORT_1_addr] <= data_cf_ssid_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ssid_MPORT_2_en & data_cf_ssid_MPORT_2_mask) begin
      data_cf_ssid[data_cf_ssid_MPORT_2_addr] <= data_cf_ssid_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ssid_MPORT_3_en & data_cf_ssid_MPORT_3_mask) begin
      data_cf_ssid[data_cf_ssid_MPORT_3_addr] <= data_cf_ssid_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqPtr_flag_MPORT_en & data_cf_ftqPtr_flag_MPORT_mask) begin
      data_cf_ftqPtr_flag[data_cf_ftqPtr_flag_MPORT_addr] <= data_cf_ftqPtr_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqPtr_flag_MPORT_1_en & data_cf_ftqPtr_flag_MPORT_1_mask) begin
      data_cf_ftqPtr_flag[data_cf_ftqPtr_flag_MPORT_1_addr] <= data_cf_ftqPtr_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqPtr_flag_MPORT_2_en & data_cf_ftqPtr_flag_MPORT_2_mask) begin
      data_cf_ftqPtr_flag[data_cf_ftqPtr_flag_MPORT_2_addr] <= data_cf_ftqPtr_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqPtr_flag_MPORT_3_en & data_cf_ftqPtr_flag_MPORT_3_mask) begin
      data_cf_ftqPtr_flag[data_cf_ftqPtr_flag_MPORT_3_addr] <= data_cf_ftqPtr_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqPtr_value_MPORT_en & data_cf_ftqPtr_value_MPORT_mask) begin
      data_cf_ftqPtr_value[data_cf_ftqPtr_value_MPORT_addr] <= data_cf_ftqPtr_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqPtr_value_MPORT_1_en & data_cf_ftqPtr_value_MPORT_1_mask) begin
      data_cf_ftqPtr_value[data_cf_ftqPtr_value_MPORT_1_addr] <= data_cf_ftqPtr_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqPtr_value_MPORT_2_en & data_cf_ftqPtr_value_MPORT_2_mask) begin
      data_cf_ftqPtr_value[data_cf_ftqPtr_value_MPORT_2_addr] <= data_cf_ftqPtr_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqPtr_value_MPORT_3_en & data_cf_ftqPtr_value_MPORT_3_mask) begin
      data_cf_ftqPtr_value[data_cf_ftqPtr_value_MPORT_3_addr] <= data_cf_ftqPtr_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqOffset_MPORT_en & data_cf_ftqOffset_MPORT_mask) begin
      data_cf_ftqOffset[data_cf_ftqOffset_MPORT_addr] <= data_cf_ftqOffset_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqOffset_MPORT_1_en & data_cf_ftqOffset_MPORT_1_mask) begin
      data_cf_ftqOffset[data_cf_ftqOffset_MPORT_1_addr] <= data_cf_ftqOffset_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqOffset_MPORT_2_en & data_cf_ftqOffset_MPORT_2_mask) begin
      data_cf_ftqOffset[data_cf_ftqOffset_MPORT_2_addr] <= data_cf_ftqOffset_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_cf_ftqOffset_MPORT_3_en & data_cf_ftqOffset_MPORT_3_mask) begin
      data_cf_ftqOffset[data_cf_ftqOffset_MPORT_3_addr] <= data_cf_ftqOffset_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_0_MPORT_en & data_ctrl_srcType_0_MPORT_mask) begin
      data_ctrl_srcType_0[data_ctrl_srcType_0_MPORT_addr] <= data_ctrl_srcType_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_0_MPORT_1_en & data_ctrl_srcType_0_MPORT_1_mask) begin
      data_ctrl_srcType_0[data_ctrl_srcType_0_MPORT_1_addr] <= data_ctrl_srcType_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_0_MPORT_2_en & data_ctrl_srcType_0_MPORT_2_mask) begin
      data_ctrl_srcType_0[data_ctrl_srcType_0_MPORT_2_addr] <= data_ctrl_srcType_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_0_MPORT_3_en & data_ctrl_srcType_0_MPORT_3_mask) begin
      data_ctrl_srcType_0[data_ctrl_srcType_0_MPORT_3_addr] <= data_ctrl_srcType_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_1_MPORT_en & data_ctrl_srcType_1_MPORT_mask) begin
      data_ctrl_srcType_1[data_ctrl_srcType_1_MPORT_addr] <= data_ctrl_srcType_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_1_MPORT_1_en & data_ctrl_srcType_1_MPORT_1_mask) begin
      data_ctrl_srcType_1[data_ctrl_srcType_1_MPORT_1_addr] <= data_ctrl_srcType_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_1_MPORT_2_en & data_ctrl_srcType_1_MPORT_2_mask) begin
      data_ctrl_srcType_1[data_ctrl_srcType_1_MPORT_2_addr] <= data_ctrl_srcType_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_1_MPORT_3_en & data_ctrl_srcType_1_MPORT_3_mask) begin
      data_ctrl_srcType_1[data_ctrl_srcType_1_MPORT_3_addr] <= data_ctrl_srcType_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_2_MPORT_en & data_ctrl_srcType_2_MPORT_mask) begin
      data_ctrl_srcType_2[data_ctrl_srcType_2_MPORT_addr] <= data_ctrl_srcType_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_2_MPORT_1_en & data_ctrl_srcType_2_MPORT_1_mask) begin
      data_ctrl_srcType_2[data_ctrl_srcType_2_MPORT_1_addr] <= data_ctrl_srcType_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_2_MPORT_2_en & data_ctrl_srcType_2_MPORT_2_mask) begin
      data_ctrl_srcType_2[data_ctrl_srcType_2_MPORT_2_addr] <= data_ctrl_srcType_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_srcType_2_MPORT_3_en & data_ctrl_srcType_2_MPORT_3_mask) begin
      data_ctrl_srcType_2[data_ctrl_srcType_2_MPORT_3_addr] <= data_ctrl_srcType_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fuType_MPORT_en & data_ctrl_fuType_MPORT_mask) begin
      data_ctrl_fuType[data_ctrl_fuType_MPORT_addr] <= data_ctrl_fuType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fuType_MPORT_1_en & data_ctrl_fuType_MPORT_1_mask) begin
      data_ctrl_fuType[data_ctrl_fuType_MPORT_1_addr] <= data_ctrl_fuType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fuType_MPORT_2_en & data_ctrl_fuType_MPORT_2_mask) begin
      data_ctrl_fuType[data_ctrl_fuType_MPORT_2_addr] <= data_ctrl_fuType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fuType_MPORT_3_en & data_ctrl_fuType_MPORT_3_mask) begin
      data_ctrl_fuType[data_ctrl_fuType_MPORT_3_addr] <= data_ctrl_fuType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fuOpType_MPORT_en & data_ctrl_fuOpType_MPORT_mask) begin
      data_ctrl_fuOpType[data_ctrl_fuOpType_MPORT_addr] <= data_ctrl_fuOpType_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fuOpType_MPORT_1_en & data_ctrl_fuOpType_MPORT_1_mask) begin
      data_ctrl_fuOpType[data_ctrl_fuOpType_MPORT_1_addr] <= data_ctrl_fuOpType_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fuOpType_MPORT_2_en & data_ctrl_fuOpType_MPORT_2_mask) begin
      data_ctrl_fuOpType[data_ctrl_fuOpType_MPORT_2_addr] <= data_ctrl_fuOpType_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fuOpType_MPORT_3_en & data_ctrl_fuOpType_MPORT_3_mask) begin
      data_ctrl_fuOpType[data_ctrl_fuOpType_MPORT_3_addr] <= data_ctrl_fuOpType_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_rfWen_MPORT_en & data_ctrl_rfWen_MPORT_mask) begin
      data_ctrl_rfWen[data_ctrl_rfWen_MPORT_addr] <= data_ctrl_rfWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_rfWen_MPORT_1_en & data_ctrl_rfWen_MPORT_1_mask) begin
      data_ctrl_rfWen[data_ctrl_rfWen_MPORT_1_addr] <= data_ctrl_rfWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_rfWen_MPORT_2_en & data_ctrl_rfWen_MPORT_2_mask) begin
      data_ctrl_rfWen[data_ctrl_rfWen_MPORT_2_addr] <= data_ctrl_rfWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_rfWen_MPORT_3_en & data_ctrl_rfWen_MPORT_3_mask) begin
      data_ctrl_rfWen[data_ctrl_rfWen_MPORT_3_addr] <= data_ctrl_rfWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpWen_MPORT_en & data_ctrl_fpWen_MPORT_mask) begin
      data_ctrl_fpWen[data_ctrl_fpWen_MPORT_addr] <= data_ctrl_fpWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpWen_MPORT_1_en & data_ctrl_fpWen_MPORT_1_mask) begin
      data_ctrl_fpWen[data_ctrl_fpWen_MPORT_1_addr] <= data_ctrl_fpWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpWen_MPORT_2_en & data_ctrl_fpWen_MPORT_2_mask) begin
      data_ctrl_fpWen[data_ctrl_fpWen_MPORT_2_addr] <= data_ctrl_fpWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpWen_MPORT_3_en & data_ctrl_fpWen_MPORT_3_mask) begin
      data_ctrl_fpWen[data_ctrl_fpWen_MPORT_3_addr] <= data_ctrl_fpWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_selImm_MPORT_en & data_ctrl_selImm_MPORT_mask) begin
      data_ctrl_selImm[data_ctrl_selImm_MPORT_addr] <= data_ctrl_selImm_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_selImm_MPORT_1_en & data_ctrl_selImm_MPORT_1_mask) begin
      data_ctrl_selImm[data_ctrl_selImm_MPORT_1_addr] <= data_ctrl_selImm_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_selImm_MPORT_2_en & data_ctrl_selImm_MPORT_2_mask) begin
      data_ctrl_selImm[data_ctrl_selImm_MPORT_2_addr] <= data_ctrl_selImm_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_selImm_MPORT_3_en & data_ctrl_selImm_MPORT_3_mask) begin
      data_ctrl_selImm[data_ctrl_selImm_MPORT_3_addr] <= data_ctrl_selImm_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_imm_MPORT_en & data_ctrl_imm_MPORT_mask) begin
      data_ctrl_imm[data_ctrl_imm_MPORT_addr] <= data_ctrl_imm_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_imm_MPORT_1_en & data_ctrl_imm_MPORT_1_mask) begin
      data_ctrl_imm[data_ctrl_imm_MPORT_1_addr] <= data_ctrl_imm_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_imm_MPORT_2_en & data_ctrl_imm_MPORT_2_mask) begin
      data_ctrl_imm[data_ctrl_imm_MPORT_2_addr] <= data_ctrl_imm_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_imm_MPORT_3_en & data_ctrl_imm_MPORT_3_mask) begin
      data_ctrl_imm[data_ctrl_imm_MPORT_3_addr] <= data_ctrl_imm_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_isAddSub_MPORT_en & data_ctrl_fpu_isAddSub_MPORT_mask) begin
      data_ctrl_fpu_isAddSub[data_ctrl_fpu_isAddSub_MPORT_addr] <= data_ctrl_fpu_isAddSub_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_isAddSub_MPORT_1_en & data_ctrl_fpu_isAddSub_MPORT_1_mask) begin
      data_ctrl_fpu_isAddSub[data_ctrl_fpu_isAddSub_MPORT_1_addr] <= data_ctrl_fpu_isAddSub_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_isAddSub_MPORT_2_en & data_ctrl_fpu_isAddSub_MPORT_2_mask) begin
      data_ctrl_fpu_isAddSub[data_ctrl_fpu_isAddSub_MPORT_2_addr] <= data_ctrl_fpu_isAddSub_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_isAddSub_MPORT_3_en & data_ctrl_fpu_isAddSub_MPORT_3_mask) begin
      data_ctrl_fpu_isAddSub[data_ctrl_fpu_isAddSub_MPORT_3_addr] <= data_ctrl_fpu_isAddSub_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typeTagIn_MPORT_en & data_ctrl_fpu_typeTagIn_MPORT_mask) begin
      data_ctrl_fpu_typeTagIn[data_ctrl_fpu_typeTagIn_MPORT_addr] <= data_ctrl_fpu_typeTagIn_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typeTagIn_MPORT_1_en & data_ctrl_fpu_typeTagIn_MPORT_1_mask) begin
      data_ctrl_fpu_typeTagIn[data_ctrl_fpu_typeTagIn_MPORT_1_addr] <= data_ctrl_fpu_typeTagIn_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typeTagIn_MPORT_2_en & data_ctrl_fpu_typeTagIn_MPORT_2_mask) begin
      data_ctrl_fpu_typeTagIn[data_ctrl_fpu_typeTagIn_MPORT_2_addr] <= data_ctrl_fpu_typeTagIn_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typeTagIn_MPORT_3_en & data_ctrl_fpu_typeTagIn_MPORT_3_mask) begin
      data_ctrl_fpu_typeTagIn[data_ctrl_fpu_typeTagIn_MPORT_3_addr] <= data_ctrl_fpu_typeTagIn_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typeTagOut_MPORT_en & data_ctrl_fpu_typeTagOut_MPORT_mask) begin
      data_ctrl_fpu_typeTagOut[data_ctrl_fpu_typeTagOut_MPORT_addr] <= data_ctrl_fpu_typeTagOut_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typeTagOut_MPORT_1_en & data_ctrl_fpu_typeTagOut_MPORT_1_mask) begin
      data_ctrl_fpu_typeTagOut[data_ctrl_fpu_typeTagOut_MPORT_1_addr] <= data_ctrl_fpu_typeTagOut_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typeTagOut_MPORT_2_en & data_ctrl_fpu_typeTagOut_MPORT_2_mask) begin
      data_ctrl_fpu_typeTagOut[data_ctrl_fpu_typeTagOut_MPORT_2_addr] <= data_ctrl_fpu_typeTagOut_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typeTagOut_MPORT_3_en & data_ctrl_fpu_typeTagOut_MPORT_3_mask) begin
      data_ctrl_fpu_typeTagOut[data_ctrl_fpu_typeTagOut_MPORT_3_addr] <= data_ctrl_fpu_typeTagOut_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fromInt_MPORT_en & data_ctrl_fpu_fromInt_MPORT_mask) begin
      data_ctrl_fpu_fromInt[data_ctrl_fpu_fromInt_MPORT_addr] <= data_ctrl_fpu_fromInt_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fromInt_MPORT_1_en & data_ctrl_fpu_fromInt_MPORT_1_mask) begin
      data_ctrl_fpu_fromInt[data_ctrl_fpu_fromInt_MPORT_1_addr] <= data_ctrl_fpu_fromInt_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fromInt_MPORT_2_en & data_ctrl_fpu_fromInt_MPORT_2_mask) begin
      data_ctrl_fpu_fromInt[data_ctrl_fpu_fromInt_MPORT_2_addr] <= data_ctrl_fpu_fromInt_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fromInt_MPORT_3_en & data_ctrl_fpu_fromInt_MPORT_3_mask) begin
      data_ctrl_fpu_fromInt[data_ctrl_fpu_fromInt_MPORT_3_addr] <= data_ctrl_fpu_fromInt_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_wflags_MPORT_en & data_ctrl_fpu_wflags_MPORT_mask) begin
      data_ctrl_fpu_wflags[data_ctrl_fpu_wflags_MPORT_addr] <= data_ctrl_fpu_wflags_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_wflags_MPORT_1_en & data_ctrl_fpu_wflags_MPORT_1_mask) begin
      data_ctrl_fpu_wflags[data_ctrl_fpu_wflags_MPORT_1_addr] <= data_ctrl_fpu_wflags_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_wflags_MPORT_2_en & data_ctrl_fpu_wflags_MPORT_2_mask) begin
      data_ctrl_fpu_wflags[data_ctrl_fpu_wflags_MPORT_2_addr] <= data_ctrl_fpu_wflags_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_wflags_MPORT_3_en & data_ctrl_fpu_wflags_MPORT_3_mask) begin
      data_ctrl_fpu_wflags[data_ctrl_fpu_wflags_MPORT_3_addr] <= data_ctrl_fpu_wflags_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fpWen_MPORT_en & data_ctrl_fpu_fpWen_MPORT_mask) begin
      data_ctrl_fpu_fpWen[data_ctrl_fpu_fpWen_MPORT_addr] <= data_ctrl_fpu_fpWen_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fpWen_MPORT_1_en & data_ctrl_fpu_fpWen_MPORT_1_mask) begin
      data_ctrl_fpu_fpWen[data_ctrl_fpu_fpWen_MPORT_1_addr] <= data_ctrl_fpu_fpWen_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fpWen_MPORT_2_en & data_ctrl_fpu_fpWen_MPORT_2_mask) begin
      data_ctrl_fpu_fpWen[data_ctrl_fpu_fpWen_MPORT_2_addr] <= data_ctrl_fpu_fpWen_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fpWen_MPORT_3_en & data_ctrl_fpu_fpWen_MPORT_3_mask) begin
      data_ctrl_fpu_fpWen[data_ctrl_fpu_fpWen_MPORT_3_addr] <= data_ctrl_fpu_fpWen_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fmaCmd_MPORT_en & data_ctrl_fpu_fmaCmd_MPORT_mask) begin
      data_ctrl_fpu_fmaCmd[data_ctrl_fpu_fmaCmd_MPORT_addr] <= data_ctrl_fpu_fmaCmd_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fmaCmd_MPORT_1_en & data_ctrl_fpu_fmaCmd_MPORT_1_mask) begin
      data_ctrl_fpu_fmaCmd[data_ctrl_fpu_fmaCmd_MPORT_1_addr] <= data_ctrl_fpu_fmaCmd_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fmaCmd_MPORT_2_en & data_ctrl_fpu_fmaCmd_MPORT_2_mask) begin
      data_ctrl_fpu_fmaCmd[data_ctrl_fpu_fmaCmd_MPORT_2_addr] <= data_ctrl_fpu_fmaCmd_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fmaCmd_MPORT_3_en & data_ctrl_fpu_fmaCmd_MPORT_3_mask) begin
      data_ctrl_fpu_fmaCmd[data_ctrl_fpu_fmaCmd_MPORT_3_addr] <= data_ctrl_fpu_fmaCmd_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_div_MPORT_en & data_ctrl_fpu_div_MPORT_mask) begin
      data_ctrl_fpu_div[data_ctrl_fpu_div_MPORT_addr] <= data_ctrl_fpu_div_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_div_MPORT_1_en & data_ctrl_fpu_div_MPORT_1_mask) begin
      data_ctrl_fpu_div[data_ctrl_fpu_div_MPORT_1_addr] <= data_ctrl_fpu_div_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_div_MPORT_2_en & data_ctrl_fpu_div_MPORT_2_mask) begin
      data_ctrl_fpu_div[data_ctrl_fpu_div_MPORT_2_addr] <= data_ctrl_fpu_div_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_div_MPORT_3_en & data_ctrl_fpu_div_MPORT_3_mask) begin
      data_ctrl_fpu_div[data_ctrl_fpu_div_MPORT_3_addr] <= data_ctrl_fpu_div_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_sqrt_MPORT_en & data_ctrl_fpu_sqrt_MPORT_mask) begin
      data_ctrl_fpu_sqrt[data_ctrl_fpu_sqrt_MPORT_addr] <= data_ctrl_fpu_sqrt_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_sqrt_MPORT_1_en & data_ctrl_fpu_sqrt_MPORT_1_mask) begin
      data_ctrl_fpu_sqrt[data_ctrl_fpu_sqrt_MPORT_1_addr] <= data_ctrl_fpu_sqrt_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_sqrt_MPORT_2_en & data_ctrl_fpu_sqrt_MPORT_2_mask) begin
      data_ctrl_fpu_sqrt[data_ctrl_fpu_sqrt_MPORT_2_addr] <= data_ctrl_fpu_sqrt_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_sqrt_MPORT_3_en & data_ctrl_fpu_sqrt_MPORT_3_mask) begin
      data_ctrl_fpu_sqrt[data_ctrl_fpu_sqrt_MPORT_3_addr] <= data_ctrl_fpu_sqrt_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fcvt_MPORT_en & data_ctrl_fpu_fcvt_MPORT_mask) begin
      data_ctrl_fpu_fcvt[data_ctrl_fpu_fcvt_MPORT_addr] <= data_ctrl_fpu_fcvt_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fcvt_MPORT_1_en & data_ctrl_fpu_fcvt_MPORT_1_mask) begin
      data_ctrl_fpu_fcvt[data_ctrl_fpu_fcvt_MPORT_1_addr] <= data_ctrl_fpu_fcvt_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fcvt_MPORT_2_en & data_ctrl_fpu_fcvt_MPORT_2_mask) begin
      data_ctrl_fpu_fcvt[data_ctrl_fpu_fcvt_MPORT_2_addr] <= data_ctrl_fpu_fcvt_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fcvt_MPORT_3_en & data_ctrl_fpu_fcvt_MPORT_3_mask) begin
      data_ctrl_fpu_fcvt[data_ctrl_fpu_fcvt_MPORT_3_addr] <= data_ctrl_fpu_fcvt_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typ_MPORT_en & data_ctrl_fpu_typ_MPORT_mask) begin
      data_ctrl_fpu_typ[data_ctrl_fpu_typ_MPORT_addr] <= data_ctrl_fpu_typ_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typ_MPORT_1_en & data_ctrl_fpu_typ_MPORT_1_mask) begin
      data_ctrl_fpu_typ[data_ctrl_fpu_typ_MPORT_1_addr] <= data_ctrl_fpu_typ_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typ_MPORT_2_en & data_ctrl_fpu_typ_MPORT_2_mask) begin
      data_ctrl_fpu_typ[data_ctrl_fpu_typ_MPORT_2_addr] <= data_ctrl_fpu_typ_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_typ_MPORT_3_en & data_ctrl_fpu_typ_MPORT_3_mask) begin
      data_ctrl_fpu_typ[data_ctrl_fpu_typ_MPORT_3_addr] <= data_ctrl_fpu_typ_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fmt_MPORT_en & data_ctrl_fpu_fmt_MPORT_mask) begin
      data_ctrl_fpu_fmt[data_ctrl_fpu_fmt_MPORT_addr] <= data_ctrl_fpu_fmt_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fmt_MPORT_1_en & data_ctrl_fpu_fmt_MPORT_1_mask) begin
      data_ctrl_fpu_fmt[data_ctrl_fpu_fmt_MPORT_1_addr] <= data_ctrl_fpu_fmt_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fmt_MPORT_2_en & data_ctrl_fpu_fmt_MPORT_2_mask) begin
      data_ctrl_fpu_fmt[data_ctrl_fpu_fmt_MPORT_2_addr] <= data_ctrl_fpu_fmt_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_fmt_MPORT_3_en & data_ctrl_fpu_fmt_MPORT_3_mask) begin
      data_ctrl_fpu_fmt[data_ctrl_fpu_fmt_MPORT_3_addr] <= data_ctrl_fpu_fmt_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_ren3_MPORT_en & data_ctrl_fpu_ren3_MPORT_mask) begin
      data_ctrl_fpu_ren3[data_ctrl_fpu_ren3_MPORT_addr] <= data_ctrl_fpu_ren3_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_ren3_MPORT_1_en & data_ctrl_fpu_ren3_MPORT_1_mask) begin
      data_ctrl_fpu_ren3[data_ctrl_fpu_ren3_MPORT_1_addr] <= data_ctrl_fpu_ren3_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_ren3_MPORT_2_en & data_ctrl_fpu_ren3_MPORT_2_mask) begin
      data_ctrl_fpu_ren3[data_ctrl_fpu_ren3_MPORT_2_addr] <= data_ctrl_fpu_ren3_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_ren3_MPORT_3_en & data_ctrl_fpu_ren3_MPORT_3_mask) begin
      data_ctrl_fpu_ren3[data_ctrl_fpu_ren3_MPORT_3_addr] <= data_ctrl_fpu_ren3_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_rm_MPORT_en & data_ctrl_fpu_rm_MPORT_mask) begin
      data_ctrl_fpu_rm[data_ctrl_fpu_rm_MPORT_addr] <= data_ctrl_fpu_rm_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_rm_MPORT_1_en & data_ctrl_fpu_rm_MPORT_1_mask) begin
      data_ctrl_fpu_rm[data_ctrl_fpu_rm_MPORT_1_addr] <= data_ctrl_fpu_rm_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_rm_MPORT_2_en & data_ctrl_fpu_rm_MPORT_2_mask) begin
      data_ctrl_fpu_rm[data_ctrl_fpu_rm_MPORT_2_addr] <= data_ctrl_fpu_rm_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_ctrl_fpu_rm_MPORT_3_en & data_ctrl_fpu_rm_MPORT_3_mask) begin
      data_ctrl_fpu_rm[data_ctrl_fpu_rm_MPORT_3_addr] <= data_ctrl_fpu_rm_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_0_MPORT_en & data_psrc_0_MPORT_mask) begin
      data_psrc_0[data_psrc_0_MPORT_addr] <= data_psrc_0_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_0_MPORT_1_en & data_psrc_0_MPORT_1_mask) begin
      data_psrc_0[data_psrc_0_MPORT_1_addr] <= data_psrc_0_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_0_MPORT_2_en & data_psrc_0_MPORT_2_mask) begin
      data_psrc_0[data_psrc_0_MPORT_2_addr] <= data_psrc_0_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_0_MPORT_3_en & data_psrc_0_MPORT_3_mask) begin
      data_psrc_0[data_psrc_0_MPORT_3_addr] <= data_psrc_0_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_1_MPORT_en & data_psrc_1_MPORT_mask) begin
      data_psrc_1[data_psrc_1_MPORT_addr] <= data_psrc_1_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_1_MPORT_1_en & data_psrc_1_MPORT_1_mask) begin
      data_psrc_1[data_psrc_1_MPORT_1_addr] <= data_psrc_1_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_1_MPORT_2_en & data_psrc_1_MPORT_2_mask) begin
      data_psrc_1[data_psrc_1_MPORT_2_addr] <= data_psrc_1_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_1_MPORT_3_en & data_psrc_1_MPORT_3_mask) begin
      data_psrc_1[data_psrc_1_MPORT_3_addr] <= data_psrc_1_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_2_MPORT_en & data_psrc_2_MPORT_mask) begin
      data_psrc_2[data_psrc_2_MPORT_addr] <= data_psrc_2_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_2_MPORT_1_en & data_psrc_2_MPORT_1_mask) begin
      data_psrc_2[data_psrc_2_MPORT_1_addr] <= data_psrc_2_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_2_MPORT_2_en & data_psrc_2_MPORT_2_mask) begin
      data_psrc_2[data_psrc_2_MPORT_2_addr] <= data_psrc_2_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_psrc_2_MPORT_3_en & data_psrc_2_MPORT_3_mask) begin
      data_psrc_2[data_psrc_2_MPORT_3_addr] <= data_psrc_2_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pdest_MPORT_en & data_pdest_MPORT_mask) begin
      data_pdest[data_pdest_MPORT_addr] <= data_pdest_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pdest_MPORT_1_en & data_pdest_MPORT_1_mask) begin
      data_pdest[data_pdest_MPORT_1_addr] <= data_pdest_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pdest_MPORT_2_en & data_pdest_MPORT_2_mask) begin
      data_pdest[data_pdest_MPORT_2_addr] <= data_pdest_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_pdest_MPORT_3_en & data_pdest_MPORT_3_mask) begin
      data_pdest[data_pdest_MPORT_3_addr] <= data_pdest_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_lqIdx_flag_MPORT_en & data_lqIdx_flag_MPORT_mask) begin
      data_lqIdx_flag[data_lqIdx_flag_MPORT_addr] <= data_lqIdx_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_lqIdx_flag_MPORT_1_en & data_lqIdx_flag_MPORT_1_mask) begin
      data_lqIdx_flag[data_lqIdx_flag_MPORT_1_addr] <= data_lqIdx_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_lqIdx_flag_MPORT_2_en & data_lqIdx_flag_MPORT_2_mask) begin
      data_lqIdx_flag[data_lqIdx_flag_MPORT_2_addr] <= data_lqIdx_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_lqIdx_flag_MPORT_3_en & data_lqIdx_flag_MPORT_3_mask) begin
      data_lqIdx_flag[data_lqIdx_flag_MPORT_3_addr] <= data_lqIdx_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_lqIdx_value_MPORT_en & data_lqIdx_value_MPORT_mask) begin
      data_lqIdx_value[data_lqIdx_value_MPORT_addr] <= data_lqIdx_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_lqIdx_value_MPORT_1_en & data_lqIdx_value_MPORT_1_mask) begin
      data_lqIdx_value[data_lqIdx_value_MPORT_1_addr] <= data_lqIdx_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_lqIdx_value_MPORT_2_en & data_lqIdx_value_MPORT_2_mask) begin
      data_lqIdx_value[data_lqIdx_value_MPORT_2_addr] <= data_lqIdx_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_lqIdx_value_MPORT_3_en & data_lqIdx_value_MPORT_3_mask) begin
      data_lqIdx_value[data_lqIdx_value_MPORT_3_addr] <= data_lqIdx_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_sqIdx_flag_MPORT_en & data_sqIdx_flag_MPORT_mask) begin
      data_sqIdx_flag[data_sqIdx_flag_MPORT_addr] <= data_sqIdx_flag_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_sqIdx_flag_MPORT_1_en & data_sqIdx_flag_MPORT_1_mask) begin
      data_sqIdx_flag[data_sqIdx_flag_MPORT_1_addr] <= data_sqIdx_flag_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_sqIdx_flag_MPORT_2_en & data_sqIdx_flag_MPORT_2_mask) begin
      data_sqIdx_flag[data_sqIdx_flag_MPORT_2_addr] <= data_sqIdx_flag_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_sqIdx_flag_MPORT_3_en & data_sqIdx_flag_MPORT_3_mask) begin
      data_sqIdx_flag[data_sqIdx_flag_MPORT_3_addr] <= data_sqIdx_flag_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_sqIdx_value_MPORT_en & data_sqIdx_value_MPORT_mask) begin
      data_sqIdx_value[data_sqIdx_value_MPORT_addr] <= data_sqIdx_value_MPORT_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_sqIdx_value_MPORT_1_en & data_sqIdx_value_MPORT_1_mask) begin
      data_sqIdx_value[data_sqIdx_value_MPORT_1_addr] <= data_sqIdx_value_MPORT_1_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_sqIdx_value_MPORT_2_en & data_sqIdx_value_MPORT_2_mask) begin
      data_sqIdx_value[data_sqIdx_value_MPORT_2_addr] <= data_sqIdx_value_MPORT_2_data; // @[DataModuleTemplate.scala 64:17]
    end
    if (data_sqIdx_value_MPORT_3_en & data_sqIdx_value_MPORT_3_mask) begin
      data_sqIdx_value[data_sqIdx_value_MPORT_3_addr] <= data_sqIdx_value_MPORT_3_data; // @[DataModuleTemplate.scala 64:17]
    end
    raddr_0 <= io_raddr_0; // @[DataModuleTemplate.scala 67:35]
    raddr_1 <= io_raddr_1; // @[DataModuleTemplate.scala 67:35]
    raddr_2 <= io_raddr_2; // @[DataModuleTemplate.scala 67:35]
    raddr_3 <= io_raddr_3; // @[DataModuleTemplate.scala 67:35]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_trigger_backendEn_0[initvar] = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_trigger_backendEn_1[initvar] = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_trigger_backendHit_0[initvar] = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_trigger_backendHit_1[initvar] = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_trigger_backendHit_2[initvar] = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_trigger_backendHit_3[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_trigger_backendHit_4[initvar] = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_trigger_backendHit_5[initvar] = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_pd_isRVC[initvar] = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_pd_brType[initvar] = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_pd_isCall[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_pd_isRet[initvar] = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_pred_taken[initvar] = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_waitForRobIdx_value[initvar] = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_loadWaitBit[initvar] = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_loadWaitStrict[initvar] = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_ssid[initvar] = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_ftqPtr_flag[initvar] = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_ftqPtr_value[initvar] = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_cf_ftqOffset[initvar] = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_srcType_0[initvar] = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_srcType_1[initvar] = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_srcType_2[initvar] = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fuType[initvar] = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fuOpType[initvar] = _RAND_24[6:0];
  _RAND_25 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_rfWen[initvar] = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpWen[initvar] = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_selImm[initvar] = _RAND_27[3:0];
  _RAND_28 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_imm[initvar] = _RAND_28[19:0];
  _RAND_29 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_isAddSub[initvar] = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_typeTagIn[initvar] = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_typeTagOut[initvar] = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_fromInt[initvar] = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_wflags[initvar] = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_fpWen[initvar] = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_fmaCmd[initvar] = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_div[initvar] = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_sqrt[initvar] = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_fcvt[initvar] = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_typ[initvar] = _RAND_39[1:0];
  _RAND_40 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_fmt[initvar] = _RAND_40[1:0];
  _RAND_41 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_ren3[initvar] = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_ctrl_fpu_rm[initvar] = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_psrc_0[initvar] = _RAND_43[6:0];
  _RAND_44 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_psrc_1[initvar] = _RAND_44[6:0];
  _RAND_45 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_psrc_2[initvar] = _RAND_45[6:0];
  _RAND_46 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_pdest[initvar] = _RAND_46[6:0];
  _RAND_47 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_lqIdx_flag[initvar] = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_lqIdx_value[initvar] = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_sqIdx_flag[initvar] = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_sqIdx_value[initvar] = _RAND_50[4:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  raddr_0 = _RAND_51[3:0];
  _RAND_52 = {1{`RANDOM}};
  raddr_1 = _RAND_52[3:0];
  _RAND_53 = {1{`RANDOM}};
  raddr_2 = _RAND_53[3:0];
  _RAND_54 = {1{`RANDOM}};
  raddr_3 = _RAND_54[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
